; ModuleID = 'drivers/acpi/processor_throttling.c'
source_filename = "drivers/acpi/processor_throttling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.acpi_processor_errata = type { i8, %struct.anon.4 }
%struct.anon.4 = type { i8, i32 }
%struct.cpumask = type { [1 x i64] }
%struct.pcpu_hot = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6, [16 x i8] }
%struct.anon.6 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.lock_class_key = type {}
%struct.acpi_buffer = type { i64, ptr }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.cpuinfo_x86 = type { %union.anon.25, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.27, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.25 = type { i32 }
%union.anon.27 = type { i64, [88 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.28 }
%struct.atomic_t = type { i32 }
%union.anon.28 = type { i64 }
%struct.acpi_processor = type { ptr, i32, i32, i32, i32, i32, i32, %struct.acpi_processor_flags, %struct.acpi_processor_power, ptr, %struct.acpi_processor_throttling, %struct.acpi_processor_limit, ptr, ptr, %struct.freq_qos_request, %struct.freq_qos_request }
%struct.acpi_processor_flags = type { i16 }
%struct.acpi_processor_power = type { i32, %union.anon.3, i32 }
%union.anon.3 = type { [8 x %struct.acpi_lpi_state] }
%struct.acpi_lpi_state = type { i32, i32, i32, i32, i32, i32, i64, i8, i8, [32 x i8] }
%struct.acpi_processor_throttling = type { i32, i32, %struct.acpi_pct_register, %struct.acpi_pct_register, i32, ptr, %struct.acpi_tsd_package, [1 x %struct.cpumask], ptr, ptr, i32, i8, i8, i8, i32, [16 x %struct.acpi_processor_tx] }
%struct.acpi_pct_register = type <{ i8, i16, i8, i8, i8, i8, i64 }>
%struct.acpi_tsd_package = type { i64, i64, i64, i64, i64 }
%struct.acpi_processor_tx = type { i16, i16 }
%struct.acpi_processor_limit = type { %struct.acpi_processor_lx, %struct.acpi_processor_lx, %struct.acpi_processor_lx }
%struct.acpi_processor_lx = type { i32, i32 }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.acpi_processor_throttling_arg = type { ptr, i32, i8 }
%struct.throttling_tstate = type { i32, i32 }
%union.acpi_object = type { %struct.anon.23 }
%struct.anon.23 = type { i32, i32, i64, i32 }
%struct.anon.21 = type { i32, i32, ptr }
%struct.anon.20 = type { i32, i32, ptr }
%struct.acpi_processor_tx_tss = type { i64, i64, i64, i64, i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.7, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.7 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, i64, i64, %struct.list_head, i32, i64, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i64, [16 x i8], %struct.sched_avg }
%struct.load_weight = type { i64, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.restart_block = type { i64, ptr, %union.anon.9 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.posix_cputimers_work = type { %struct.callback_head, %struct.mutex, i32 }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x ptr], i64, i64, i64, i64, i64, ptr, i64, i8, i32, [40 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.fpu = type { i32, i64, ptr, ptr, %struct.fpu_state_perm, %struct.fpu_state_perm, %struct.fpstate }
%struct.fpu_state_perm = type { i64, i32, i32 }
%struct.fpstate = type { i32, i32, i64, i64, i64, i8, [31 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.14, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.17 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { i64, i64 }
%union.anon.17 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.anon.26 = type { i8, i8, i8, i8 }

@__param_str_ignore_tpc = internal constant [21 x i8] c"processor.ignore_tpc\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@ignore_tpc = internal global i32 0, align 4, !dbg !3166
@__param_ignore_tpc = internal constant %struct.kernel_param { ptr @__param_str_ignore_tpc, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.1 { ptr @ignore_tpc } }, section "__param", align 8, !dbg !3154
@__UNIQUE_ID_ignore_tpctype247 = internal constant [34 x i8] c"processor.parmtype=ignore_tpc:int\00", section ".modinfo", align 1, !dbg !3156
@__UNIQUE_ID_ignore_tpc248 = internal constant [70 x i8] c"processor.parm=ignore_tpc:Disable broken BIOS _TPC throttling support\00", section ".modinfo", align 1, !dbg !3161
@errata = external dso_local global %struct.acpi_processor_errata, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@processors = external dso_local global ptr, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@.str = private unnamed_addr constant [5 x i8] c"_TPC\00", align 1, !dbg !3168
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !3173
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@call_on_cpu.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3175
@.str.2 = private unnamed_addr constant [38 x i8] c"\014ACPI: Exceed the limit of T-state \0A\00", align 1, !dbg !3197
@.str.3 = private unnamed_addr constant [47 x i8] c"\014ACPI: Unsupported Throttling notifier event\0A\00", align 1, !dbg !3202
@__const.acpi_processor_get_throttling_control.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"_PTC\00", align 1, !dbg !3207
@.str.5 = private unnamed_addr constant [27 x i8] c"\013ACPI: Invalid _PTC data\0A\00", align 1, !dbg !3209
@.str.6 = private unnamed_addr constant [46 x i8] c"\013ACPI: Invalid _PTC data (control_register)\0A\00", align 1, !dbg !3214
@.str.7 = private unnamed_addr constant [45 x i8] c"\013ACPI: Invalid _PTC data (status_register)\0A\00", align 1, !dbg !3219
@.str.8 = private unnamed_addr constant [39 x i8] c"\013ACPI: Invalid _PTC control register\0A\00", align 1, !dbg !3224
@.str.9 = private unnamed_addr constant [38 x i8] c"\013ACPI: Invalid _PTC status register\0A\00", align 1, !dbg !3229
@__const.acpi_processor_get_throttling_states.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"NNNNN\00", align 1, !dbg !3231
@__const.acpi_processor_get_throttling_states.format = private unnamed_addr constant %struct.acpi_buffer { i64 6, ptr @.str.10 }, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"_TSS\00", align 1, !dbg !3234
@.str.12 = private unnamed_addr constant [27 x i8] c"\013ACPI: Invalid _TSS data\0A\00", align 1, !dbg !3236
@.str.13 = private unnamed_addr constant [3 x i8] c"\014\00", align 1, !dbg !3238
@.str.14 = private unnamed_addr constant [23 x i8] c"Invalid _TSS data: %s\0A\00", align 1, !dbg !3241
@.str.15 = private unnamed_addr constant [41 x i8] c"\013ACPI: Invalid _TSS data: freq is zero\0A\00", align 1, !dbg !3246
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.16 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3251
@ioport_resource = external dso_local global %struct.resource, align 8
@.str.17 = private unnamed_addr constant [18 x i8] c"ACPI CPU throttle\00", align 1, !dbg !3256
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"\014ACPI: duty_cycle spans bit 4\0A\00", align 1, !dbg !3261
@.str.19 = private unnamed_addr constant [31 x i8] c"\013ACPI: Unknown addr space %d\0A\00", align 1, !dbg !3263
@cpu_info = external dso_local global %struct.cpuinfo_x86, section ".data..percpu..read_mostly", align 8
@.str.20 = private unnamed_addr constant [47 x i8] c"\013ACPI: HARDWARE addr space,NOT supported yet\0A\00", align 1, !dbg !3268
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@__const.acpi_processor_get_tsd.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@__const.acpi_processor_get_tsd.format = private unnamed_addr constant %struct.acpi_buffer { i64 6, ptr @.str.10 }, align 8
@.str.21 = private unnamed_addr constant [5 x i8] c"_TSD\00", align 1, !dbg !3270
@.str.22 = private unnamed_addr constant [27 x i8] c"\013ACPI: Invalid _TSD data\0A\00", align 1, !dbg !3272
@.str.23 = private unnamed_addr constant [34 x i8] c"\013ACPI: Unknown _TSD:num_entries\0A\00", align 1, !dbg !3274
@.str.24 = private unnamed_addr constant [31 x i8] c"\013ACPI: Unknown _TSD:revision\0A\00", align 1, !dbg !3277
@llvm.compiler.used = appending global [3 x ptr] [ptr @__param_ignore_tpc, ptr @__UNIQUE_ID_ignore_tpctype247, ptr @__UNIQUE_ID_ignore_tpc248], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_processor_throttling_init() #0 align 16 !dbg !3289 {
entry:
  %tmp = alloca i32, align 4
  %call = call i32 @acpi_processor_update_tsd_coord() #17, !dbg !3290
  %tobool = icmp ne i32 %call, 0, !dbg !3290
  br i1 %tobool, label %if.then, label %if.end, !dbg !3292

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !3293
  %0 = load i32, ptr %tmp, align 4, !dbg !3296
  br label %if.end, !dbg !3297

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3298
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_processor_update_tsd_coord() #0 align 16 !dbg !3299 {
entry:
  %retval = alloca i32, align 4
  %count_target = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %covered_cpus = alloca [1 x %struct.cpumask], align 8
  %pr = alloca ptr, align 8
  %match_pr = alloca ptr, align 8
  %pdomain = alloca ptr, align 8
  %match_pdomain = alloca ptr, align 8
  %pthrottling = alloca ptr, align 8
  %match_pthrottling = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp5 = alloca ptr, align 8
  %__vpp_verify22 = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  %__ptr26 = alloca i64, align 8
  %tmp27 = alloca ptr, align 8
  %__vpp_verify58 = alloca ptr, align 8
  %tmp61 = alloca ptr, align 8
  %__ptr62 = alloca i64, align 8
  %tmp63 = alloca ptr, align 8
  %__vpp_verify106 = alloca ptr, align 8
  %tmp109 = alloca ptr, align 8
  %__ptr110 = alloca i64, align 8
  %tmp111 = alloca ptr, align 8
  %__vpp_verify145 = alloca ptr, align 8
  %tmp148 = alloca ptr, align 8
  %__ptr149 = alloca i64, align 8
  %tmp150 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %count_target) #18, !dbg !3355
  call void @llvm.dbg.declare(metadata ptr %count_target, metadata !3301, metadata !DIExpression()), !dbg !3356
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #18, !dbg !3357
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !3302, metadata !DIExpression()), !dbg !3358
  store i32 0, ptr %retval1, align 4, !dbg !3358
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !3359
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3303, metadata !DIExpression()), !dbg !3360
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #18, !dbg !3359
  call void @llvm.dbg.declare(metadata ptr %j, metadata !3304, metadata !DIExpression()), !dbg !3361
  call void @llvm.lifetime.start.p0(i64 8, ptr %covered_cpus) #18, !dbg !3362
  call void @llvm.dbg.declare(metadata ptr %covered_cpus, metadata !3305, metadata !DIExpression()), !dbg !3363
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #18, !dbg !3364
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !3306, metadata !DIExpression()), !dbg !3365
  call void @llvm.lifetime.start.p0(i64 8, ptr %match_pr) #18, !dbg !3364
  call void @llvm.dbg.declare(metadata ptr %match_pr, metadata !3307, metadata !DIExpression()), !dbg !3366
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdomain) #18, !dbg !3367
  call void @llvm.dbg.declare(metadata ptr %pdomain, metadata !3308, metadata !DIExpression()), !dbg !3368
  call void @llvm.lifetime.start.p0(i64 8, ptr %match_pdomain) #18, !dbg !3367
  call void @llvm.dbg.declare(metadata ptr %match_pdomain, metadata !3310, metadata !DIExpression()), !dbg !3369
  call void @llvm.lifetime.start.p0(i64 8, ptr %pthrottling) #18, !dbg !3370
  call void @llvm.dbg.declare(metadata ptr %pthrottling, metadata !3311, metadata !DIExpression()), !dbg !3371
  call void @llvm.lifetime.start.p0(i64 8, ptr %match_pthrottling) #18, !dbg !3370
  call void @llvm.dbg.declare(metadata ptr %match_pthrottling, metadata !3313, metadata !DIExpression()), !dbg !3372
  %call = call zeroext i1 @zalloc_cpumask_var(ptr noundef %covered_cpus, i32 noundef 3264) #17, !dbg !3373
  br i1 %call, label %if.end, label %if.then, !dbg !3375

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !3376
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3376

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !3377
  br label %for.cond, !dbg !3377

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32, ptr %i, align 4, !dbg !3378
  %conv = zext i32 %0 to i64, !dbg !3378
  %call2 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #17, !dbg !3378
  %conv3 = trunc i64 %call2 to i32, !dbg !3378
  store i32 %conv3, ptr %i, align 4, !dbg !3378
  %1 = load i32, ptr %i, align 4, !dbg !3378
  %cmp = icmp ult i32 %1, 64, !dbg !3378
  br i1 %cmp, label %for.body, label %for.end, !dbg !3377

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !3379

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !3380
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3314, metadata !DIExpression()), !dbg !3380
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3380
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !3380
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !3379
  br label %do.cond, !dbg !3380

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3380

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #18, !dbg !3381
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3320, metadata !DIExpression()), !dbg !3381
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr, align 8, !dbg !3381
  %3 = load i64, ptr %__ptr, align 8, !dbg !3381
  %4 = load i32, ptr %i, align 4, !dbg !3381
  %idxprom = zext i32 %4 to i64, !dbg !3381
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3381
  %5 = load i64, ptr %arrayidx, align 8, !dbg !3381
  %add = add i64 %3, %5, !dbg !3381
  %6 = inttoptr i64 %add to ptr, !dbg !3381
  store ptr %6, ptr %tmp5, align 8, !dbg !3381
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #18, !dbg !3379
  %7 = load ptr, ptr %tmp5, align 8, !dbg !3381
  store ptr %7, ptr %tmp, align 8, !dbg !3380
  %8 = load ptr, ptr %tmp, align 8, !dbg !3379
  %9 = load ptr, ptr %8, align 8, !dbg !3382
  store ptr %9, ptr %pr, align 8, !dbg !3383
  %10 = load ptr, ptr %pr, align 8, !dbg !3384
  %tobool = icmp ne ptr %10, null, !dbg !3384
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !3386

if.then6:                                         ; preds = %do.end
  br label %for.inc, !dbg !3387

if.end7:                                          ; preds = %do.end
  %11 = load ptr, ptr %pr, align 8, !dbg !3388
  %throttling = getelementptr inbounds %struct.acpi_processor, ptr %11, i32 0, i32 10, !dbg !3389
  store ptr %throttling, ptr %pthrottling, align 8, !dbg !3390
  %12 = load ptr, ptr %pthrottling, align 8, !dbg !3391
  %tsd_valid_flag = getelementptr inbounds %struct.acpi_processor_throttling, ptr %12, i32 0, i32 13, !dbg !3393
  %13 = load i8, ptr %tsd_valid_flag, align 2, !dbg !3393
  %tobool8 = icmp ne i8 %13, 0, !dbg !3391
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !3394

if.then9:                                         ; preds = %if.end7
  store i32 -22, ptr %retval1, align 4, !dbg !3395
  br label %for.end, !dbg !3397

if.end10:                                         ; preds = %if.end7
  br label %for.inc, !dbg !3398

for.inc:                                          ; preds = %if.end10, %if.then6
  %14 = load i32, ptr %i, align 4, !dbg !3378
  %inc = add i32 %14, 1, !dbg !3378
  store i32 %inc, ptr %i, align 4, !dbg !3378
  br label %for.cond, !dbg !3378, !llvm.loop !3399

for.end:                                          ; preds = %if.then9, %for.cond
  %15 = load i32, ptr %retval1, align 4, !dbg !3403
  %tobool11 = icmp ne i32 %15, 0, !dbg !3403
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !3405

if.then12:                                        ; preds = %for.end
  br label %err_ret, !dbg !3406

if.end13:                                         ; preds = %for.end
  store i32 0, ptr %i, align 4, !dbg !3407
  br label %for.cond14, !dbg !3407

for.cond14:                                       ; preds = %for.inc133, %if.end13
  %16 = load i32, ptr %i, align 4, !dbg !3408
  %conv15 = zext i32 %16 to i64, !dbg !3408
  %call16 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv15) #17, !dbg !3408
  %conv17 = trunc i64 %call16 to i32, !dbg !3408
  store i32 %conv17, ptr %i, align 4, !dbg !3408
  %17 = load i32, ptr %i, align 4, !dbg !3408
  %cmp18 = icmp ult i32 %17, 64, !dbg !3408
  br i1 %cmp18, label %for.body20, label %for.end135, !dbg !3407

for.body20:                                       ; preds = %for.cond14
  br label %do.body21, !dbg !3409

do.body21:                                        ; preds = %for.body20
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify22) #18, !dbg !3410
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify22, metadata !3322, metadata !DIExpression()), !dbg !3410
  store ptr null, ptr %__vpp_verify22, align 8, !dbg !3410
  %18 = load ptr, ptr %__vpp_verify22, align 8, !dbg !3410
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify22) #18, !dbg !3409
  br label %do.cond23, !dbg !3410

do.cond23:                                        ; preds = %do.body21
  br label %do.end24, !dbg !3410

do.end24:                                         ; preds = %do.cond23
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr26) #18, !dbg !3411
  call void @llvm.dbg.declare(metadata ptr %__ptr26, metadata !3328, metadata !DIExpression()), !dbg !3411
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr26, align 8, !dbg !3411
  %19 = load i64, ptr %__ptr26, align 8, !dbg !3411
  %20 = load i32, ptr %i, align 4, !dbg !3411
  %idxprom28 = zext i32 %20 to i64, !dbg !3411
  %arrayidx29 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom28, !dbg !3411
  %21 = load i64, ptr %arrayidx29, align 8, !dbg !3411
  %add30 = add i64 %19, %21, !dbg !3411
  %22 = inttoptr i64 %add30 to ptr, !dbg !3411
  store ptr %22, ptr %tmp27, align 8, !dbg !3411
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr26) #18, !dbg !3409
  %23 = load ptr, ptr %tmp27, align 8, !dbg !3411
  store ptr %23, ptr %tmp25, align 8, !dbg !3410
  %24 = load ptr, ptr %tmp25, align 8, !dbg !3409
  %25 = load ptr, ptr %24, align 8, !dbg !3412
  store ptr %25, ptr %pr, align 8, !dbg !3413
  %26 = load ptr, ptr %pr, align 8, !dbg !3414
  %tobool31 = icmp ne ptr %26, null, !dbg !3414
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !3416

if.then32:                                        ; preds = %do.end24
  br label %for.inc133, !dbg !3417

if.end33:                                         ; preds = %do.end24
  %27 = load i32, ptr %i, align 4, !dbg !3418
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %covered_cpus, i64 0, i64 0, !dbg !3420
  %call34 = call zeroext i1 @cpumask_test_cpu(i32 noundef %27, ptr noundef %arraydecay) #17, !dbg !3421
  br i1 %call34, label %if.then35, label %if.end36, !dbg !3422

if.then35:                                        ; preds = %if.end33
  br label %for.inc133, !dbg !3423

if.end36:                                         ; preds = %if.end33
  %28 = load ptr, ptr %pr, align 8, !dbg !3424
  %throttling37 = getelementptr inbounds %struct.acpi_processor, ptr %28, i32 0, i32 10, !dbg !3425
  store ptr %throttling37, ptr %pthrottling, align 8, !dbg !3426
  %29 = load ptr, ptr %pthrottling, align 8, !dbg !3427
  %domain_info = getelementptr inbounds %struct.acpi_processor_throttling, ptr %29, i32 0, i32 6, !dbg !3428
  store ptr %domain_info, ptr %pdomain, align 8, !dbg !3429
  %30 = load i32, ptr %i, align 4, !dbg !3430
  %31 = load ptr, ptr %pthrottling, align 8, !dbg !3431
  %shared_cpu_map = getelementptr inbounds %struct.acpi_processor_throttling, ptr %31, i32 0, i32 7, !dbg !3432
  %arraydecay38 = getelementptr inbounds [1 x %struct.cpumask], ptr %shared_cpu_map, i64 0, i64 0, !dbg !3431
  call void @cpumask_set_cpu(i32 noundef %30, ptr noundef %arraydecay38) #17, !dbg !3433
  %32 = load i32, ptr %i, align 4, !dbg !3434
  %arraydecay39 = getelementptr inbounds [1 x %struct.cpumask], ptr %covered_cpus, i64 0, i64 0, !dbg !3435
  call void @cpumask_set_cpu(i32 noundef %32, ptr noundef %arraydecay39) #17, !dbg !3436
  %33 = load ptr, ptr %pdomain, align 8, !dbg !3437
  %num_processors = getelementptr inbounds %struct.acpi_tsd_package, ptr %33, i32 0, i32 4, !dbg !3439
  %34 = load i64, ptr %num_processors, align 1, !dbg !3439
  %cmp40 = icmp ule i64 %34, 1, !dbg !3440
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !3441

if.then42:                                        ; preds = %if.end36
  br label %for.inc133, !dbg !3442

if.end43:                                         ; preds = %if.end36
  %35 = load ptr, ptr %pdomain, align 8, !dbg !3443
  %num_processors44 = getelementptr inbounds %struct.acpi_tsd_package, ptr %35, i32 0, i32 4, !dbg !3444
  %36 = load i64, ptr %num_processors44, align 1, !dbg !3444
  %conv45 = trunc i64 %36 to i32, !dbg !3443
  store i32 %conv45, ptr %count_target, align 4, !dbg !3445
  store i32 0, ptr %j, align 4, !dbg !3446
  br label %for.cond46, !dbg !3446

for.cond46:                                       ; preds = %for.inc91, %if.end43
  %37 = load i32, ptr %j, align 4, !dbg !3447
  %conv47 = zext i32 %37 to i64, !dbg !3447
  %call48 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv47) #17, !dbg !3447
  %conv49 = trunc i64 %call48 to i32, !dbg !3447
  store i32 %conv49, ptr %j, align 4, !dbg !3447
  %38 = load i32, ptr %j, align 4, !dbg !3447
  %cmp50 = icmp ult i32 %38, 64, !dbg !3447
  br i1 %cmp50, label %for.body52, label %for.end93, !dbg !3446

for.body52:                                       ; preds = %for.cond46
  %39 = load i32, ptr %i, align 4, !dbg !3448
  %40 = load i32, ptr %j, align 4, !dbg !3450
  %cmp53 = icmp eq i32 %39, %40, !dbg !3451
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !3452

if.then55:                                        ; preds = %for.body52
  br label %for.inc91, !dbg !3453

if.end56:                                         ; preds = %for.body52
  br label %do.body57, !dbg !3454

do.body57:                                        ; preds = %if.end56
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify58) #18, !dbg !3455
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify58, metadata !3330, metadata !DIExpression()), !dbg !3455
  store ptr null, ptr %__vpp_verify58, align 8, !dbg !3455
  %41 = load ptr, ptr %__vpp_verify58, align 8, !dbg !3455
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify58) #18, !dbg !3454
  br label %do.cond59, !dbg !3455

do.cond59:                                        ; preds = %do.body57
  br label %do.end60, !dbg !3455

do.end60:                                         ; preds = %do.cond59
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr62) #18, !dbg !3456
  call void @llvm.dbg.declare(metadata ptr %__ptr62, metadata !3336, metadata !DIExpression()), !dbg !3456
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr62, align 8, !dbg !3456
  %42 = load i64, ptr %__ptr62, align 8, !dbg !3456
  %43 = load i32, ptr %j, align 4, !dbg !3456
  %idxprom64 = zext i32 %43 to i64, !dbg !3456
  %arrayidx65 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom64, !dbg !3456
  %44 = load i64, ptr %arrayidx65, align 8, !dbg !3456
  %add66 = add i64 %42, %44, !dbg !3456
  %45 = inttoptr i64 %add66 to ptr, !dbg !3456
  store ptr %45, ptr %tmp63, align 8, !dbg !3456
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr62) #18, !dbg !3454
  %46 = load ptr, ptr %tmp63, align 8, !dbg !3456
  store ptr %46, ptr %tmp61, align 8, !dbg !3455
  %47 = load ptr, ptr %tmp61, align 8, !dbg !3454
  %48 = load ptr, ptr %47, align 8, !dbg !3457
  store ptr %48, ptr %match_pr, align 8, !dbg !3458
  %49 = load ptr, ptr %match_pr, align 8, !dbg !3459
  %tobool67 = icmp ne ptr %49, null, !dbg !3459
  br i1 %tobool67, label %if.end69, label %if.then68, !dbg !3461

if.then68:                                        ; preds = %do.end60
  br label %for.inc91, !dbg !3462

if.end69:                                         ; preds = %do.end60
  %50 = load ptr, ptr %match_pr, align 8, !dbg !3463
  %throttling70 = getelementptr inbounds %struct.acpi_processor, ptr %50, i32 0, i32 10, !dbg !3464
  store ptr %throttling70, ptr %match_pthrottling, align 8, !dbg !3465
  %51 = load ptr, ptr %match_pthrottling, align 8, !dbg !3466
  %domain_info71 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %51, i32 0, i32 6, !dbg !3467
  store ptr %domain_info71, ptr %match_pdomain, align 8, !dbg !3468
  %52 = load ptr, ptr %match_pdomain, align 8, !dbg !3469
  %domain = getelementptr inbounds %struct.acpi_tsd_package, ptr %52, i32 0, i32 2, !dbg !3471
  %53 = load i64, ptr %domain, align 1, !dbg !3471
  %54 = load ptr, ptr %pdomain, align 8, !dbg !3472
  %domain72 = getelementptr inbounds %struct.acpi_tsd_package, ptr %54, i32 0, i32 2, !dbg !3473
  %55 = load i64, ptr %domain72, align 1, !dbg !3473
  %cmp73 = icmp ne i64 %53, %55, !dbg !3474
  br i1 %cmp73, label %if.then75, label %if.end76, !dbg !3475

if.then75:                                        ; preds = %if.end69
  br label %for.inc91, !dbg !3476

if.end76:                                         ; preds = %if.end69
  %56 = load ptr, ptr %match_pdomain, align 8, !dbg !3477
  %num_processors77 = getelementptr inbounds %struct.acpi_tsd_package, ptr %56, i32 0, i32 4, !dbg !3479
  %57 = load i64, ptr %num_processors77, align 1, !dbg !3479
  %58 = load i32, ptr %count_target, align 4, !dbg !3480
  %conv78 = sext i32 %58 to i64, !dbg !3480
  %cmp79 = icmp ne i64 %57, %conv78, !dbg !3481
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !3482

if.then81:                                        ; preds = %if.end76
  store i32 -22, ptr %retval1, align 4, !dbg !3483
  br label %err_ret, !dbg !3485

if.end82:                                         ; preds = %if.end76
  %59 = load ptr, ptr %pdomain, align 8, !dbg !3486
  %coord_type = getelementptr inbounds %struct.acpi_tsd_package, ptr %59, i32 0, i32 3, !dbg !3488
  %60 = load i64, ptr %coord_type, align 1, !dbg !3488
  %61 = load ptr, ptr %match_pdomain, align 8, !dbg !3489
  %coord_type83 = getelementptr inbounds %struct.acpi_tsd_package, ptr %61, i32 0, i32 3, !dbg !3490
  %62 = load i64, ptr %coord_type83, align 1, !dbg !3490
  %cmp84 = icmp ne i64 %60, %62, !dbg !3491
  br i1 %cmp84, label %if.then86, label %if.end87, !dbg !3492

if.then86:                                        ; preds = %if.end82
  store i32 -22, ptr %retval1, align 4, !dbg !3493
  br label %err_ret, !dbg !3495

if.end87:                                         ; preds = %if.end82
  %63 = load i32, ptr %j, align 4, !dbg !3496
  %arraydecay88 = getelementptr inbounds [1 x %struct.cpumask], ptr %covered_cpus, i64 0, i64 0, !dbg !3497
  call void @cpumask_set_cpu(i32 noundef %63, ptr noundef %arraydecay88) #17, !dbg !3498
  %64 = load i32, ptr %j, align 4, !dbg !3499
  %65 = load ptr, ptr %pthrottling, align 8, !dbg !3500
  %shared_cpu_map89 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %65, i32 0, i32 7, !dbg !3501
  %arraydecay90 = getelementptr inbounds [1 x %struct.cpumask], ptr %shared_cpu_map89, i64 0, i64 0, !dbg !3500
  call void @cpumask_set_cpu(i32 noundef %64, ptr noundef %arraydecay90) #17, !dbg !3502
  br label %for.inc91, !dbg !3503

for.inc91:                                        ; preds = %if.end87, %if.then75, %if.then68, %if.then55
  %66 = load i32, ptr %j, align 4, !dbg !3447
  %inc92 = add i32 %66, 1, !dbg !3447
  store i32 %inc92, ptr %j, align 4, !dbg !3447
  br label %for.cond46, !dbg !3447, !llvm.loop !3504

for.end93:                                        ; preds = %for.cond46
  store i32 0, ptr %j, align 4, !dbg !3506
  br label %for.cond94, !dbg !3506

for.cond94:                                       ; preds = %for.inc130, %for.end93
  %67 = load i32, ptr %j, align 4, !dbg !3507
  %conv95 = zext i32 %67 to i64, !dbg !3507
  %call96 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv95) #17, !dbg !3507
  %conv97 = trunc i64 %call96 to i32, !dbg !3507
  store i32 %conv97, ptr %j, align 4, !dbg !3507
  %68 = load i32, ptr %j, align 4, !dbg !3507
  %cmp98 = icmp ult i32 %68, 64, !dbg !3507
  br i1 %cmp98, label %for.body100, label %for.end132, !dbg !3506

for.body100:                                      ; preds = %for.cond94
  %69 = load i32, ptr %i, align 4, !dbg !3508
  %70 = load i32, ptr %j, align 4, !dbg !3510
  %cmp101 = icmp eq i32 %69, %70, !dbg !3511
  br i1 %cmp101, label %if.then103, label %if.end104, !dbg !3512

if.then103:                                       ; preds = %for.body100
  br label %for.inc130, !dbg !3513

if.end104:                                        ; preds = %for.body100
  br label %do.body105, !dbg !3514

do.body105:                                       ; preds = %if.end104
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify106) #18, !dbg !3515
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify106, metadata !3338, metadata !DIExpression()), !dbg !3515
  store ptr null, ptr %__vpp_verify106, align 8, !dbg !3515
  %71 = load ptr, ptr %__vpp_verify106, align 8, !dbg !3515
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify106) #18, !dbg !3514
  br label %do.cond107, !dbg !3515

do.cond107:                                       ; preds = %do.body105
  br label %do.end108, !dbg !3515

do.end108:                                        ; preds = %do.cond107
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr110) #18, !dbg !3516
  call void @llvm.dbg.declare(metadata ptr %__ptr110, metadata !3344, metadata !DIExpression()), !dbg !3516
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr110, align 8, !dbg !3516
  %72 = load i64, ptr %__ptr110, align 8, !dbg !3516
  %73 = load i32, ptr %j, align 4, !dbg !3516
  %idxprom112 = zext i32 %73 to i64, !dbg !3516
  %arrayidx113 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom112, !dbg !3516
  %74 = load i64, ptr %arrayidx113, align 8, !dbg !3516
  %add114 = add i64 %72, %74, !dbg !3516
  %75 = inttoptr i64 %add114 to ptr, !dbg !3516
  store ptr %75, ptr %tmp111, align 8, !dbg !3516
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr110) #18, !dbg !3514
  %76 = load ptr, ptr %tmp111, align 8, !dbg !3516
  store ptr %76, ptr %tmp109, align 8, !dbg !3515
  %77 = load ptr, ptr %tmp109, align 8, !dbg !3514
  %78 = load ptr, ptr %77, align 8, !dbg !3517
  store ptr %78, ptr %match_pr, align 8, !dbg !3518
  %79 = load ptr, ptr %match_pr, align 8, !dbg !3519
  %tobool115 = icmp ne ptr %79, null, !dbg !3519
  br i1 %tobool115, label %if.end117, label %if.then116, !dbg !3521

if.then116:                                       ; preds = %do.end108
  br label %for.inc130, !dbg !3522

if.end117:                                        ; preds = %do.end108
  %80 = load ptr, ptr %match_pr, align 8, !dbg !3523
  %throttling118 = getelementptr inbounds %struct.acpi_processor, ptr %80, i32 0, i32 10, !dbg !3524
  store ptr %throttling118, ptr %match_pthrottling, align 8, !dbg !3525
  %81 = load ptr, ptr %match_pthrottling, align 8, !dbg !3526
  %domain_info119 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %81, i32 0, i32 6, !dbg !3527
  store ptr %domain_info119, ptr %match_pdomain, align 8, !dbg !3528
  %82 = load ptr, ptr %match_pdomain, align 8, !dbg !3529
  %domain120 = getelementptr inbounds %struct.acpi_tsd_package, ptr %82, i32 0, i32 2, !dbg !3531
  %83 = load i64, ptr %domain120, align 1, !dbg !3531
  %84 = load ptr, ptr %pdomain, align 8, !dbg !3532
  %domain121 = getelementptr inbounds %struct.acpi_tsd_package, ptr %84, i32 0, i32 2, !dbg !3533
  %85 = load i64, ptr %domain121, align 1, !dbg !3533
  %cmp122 = icmp ne i64 %83, %85, !dbg !3534
  br i1 %cmp122, label %if.then124, label %if.end125, !dbg !3535

if.then124:                                       ; preds = %if.end117
  br label %for.inc130, !dbg !3536

if.end125:                                        ; preds = %if.end117
  %86 = load ptr, ptr %match_pthrottling, align 8, !dbg !3537
  %shared_cpu_map126 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %86, i32 0, i32 7, !dbg !3538
  %arraydecay127 = getelementptr inbounds [1 x %struct.cpumask], ptr %shared_cpu_map126, i64 0, i64 0, !dbg !3537
  %87 = load ptr, ptr %pthrottling, align 8, !dbg !3539
  %shared_cpu_map128 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %87, i32 0, i32 7, !dbg !3540
  %arraydecay129 = getelementptr inbounds [1 x %struct.cpumask], ptr %shared_cpu_map128, i64 0, i64 0, !dbg !3539
  call void @cpumask_copy(ptr noundef %arraydecay127, ptr noundef %arraydecay129) #17, !dbg !3541
  br label %for.inc130, !dbg !3542

for.inc130:                                       ; preds = %if.end125, %if.then124, %if.then116, %if.then103
  %88 = load i32, ptr %j, align 4, !dbg !3507
  %inc131 = add i32 %88, 1, !dbg !3507
  store i32 %inc131, ptr %j, align 4, !dbg !3507
  br label %for.cond94, !dbg !3507, !llvm.loop !3543

for.end132:                                       ; preds = %for.cond94
  br label %for.inc133, !dbg !3545

for.inc133:                                       ; preds = %for.end132, %if.then42, %if.then35, %if.then32
  %89 = load i32, ptr %i, align 4, !dbg !3408
  %inc134 = add i32 %89, 1, !dbg !3408
  store i32 %inc134, ptr %i, align 4, !dbg !3408
  br label %for.cond14, !dbg !3408, !llvm.loop !3546

for.end135:                                       ; preds = %for.cond14
  br label %err_ret, !dbg !3547

err_ret:                                          ; preds = %for.end135, %if.then86, %if.then81, %if.then12
  call void @llvm.dbg.label(metadata !3346), !dbg !3548
  %arraydecay136 = getelementptr inbounds [1 x %struct.cpumask], ptr %covered_cpus, i64 0, i64 0, !dbg !3549
  call void @free_cpumask_var(ptr noundef %arraydecay136) #17, !dbg !3550
  store i32 0, ptr %i, align 4, !dbg !3551
  br label %for.cond137, !dbg !3551

for.cond137:                                      ; preds = %for.inc165, %err_ret
  %90 = load i32, ptr %i, align 4, !dbg !3552
  %conv138 = zext i32 %90 to i64, !dbg !3552
  %call139 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv138) #17, !dbg !3552
  %conv140 = trunc i64 %call139 to i32, !dbg !3552
  store i32 %conv140, ptr %i, align 4, !dbg !3552
  %91 = load i32, ptr %i, align 4, !dbg !3552
  %cmp141 = icmp ult i32 %91, 64, !dbg !3552
  br i1 %cmp141, label %for.body143, label %for.end167, !dbg !3551

for.body143:                                      ; preds = %for.cond137
  br label %do.body144, !dbg !3553

do.body144:                                       ; preds = %for.body143
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify145) #18, !dbg !3554
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify145, metadata !3347, metadata !DIExpression()), !dbg !3554
  store ptr null, ptr %__vpp_verify145, align 8, !dbg !3554
  %92 = load ptr, ptr %__vpp_verify145, align 8, !dbg !3554
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify145) #18, !dbg !3553
  br label %do.cond146, !dbg !3554

do.cond146:                                       ; preds = %do.body144
  br label %do.end147, !dbg !3554

do.end147:                                        ; preds = %do.cond146
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr149) #18, !dbg !3555
  call void @llvm.dbg.declare(metadata ptr %__ptr149, metadata !3353, metadata !DIExpression()), !dbg !3555
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr149, align 8, !dbg !3555
  %93 = load i64, ptr %__ptr149, align 8, !dbg !3555
  %94 = load i32, ptr %i, align 4, !dbg !3555
  %idxprom151 = zext i32 %94 to i64, !dbg !3555
  %arrayidx152 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom151, !dbg !3555
  %95 = load i64, ptr %arrayidx152, align 8, !dbg !3555
  %add153 = add i64 %93, %95, !dbg !3555
  %96 = inttoptr i64 %add153 to ptr, !dbg !3555
  store ptr %96, ptr %tmp150, align 8, !dbg !3555
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr149) #18, !dbg !3553
  %97 = load ptr, ptr %tmp150, align 8, !dbg !3555
  store ptr %97, ptr %tmp148, align 8, !dbg !3554
  %98 = load ptr, ptr %tmp148, align 8, !dbg !3553
  %99 = load ptr, ptr %98, align 8, !dbg !3556
  store ptr %99, ptr %pr, align 8, !dbg !3557
  %100 = load ptr, ptr %pr, align 8, !dbg !3558
  %tobool154 = icmp ne ptr %100, null, !dbg !3558
  br i1 %tobool154, label %if.end156, label %if.then155, !dbg !3560

if.then155:                                       ; preds = %do.end147
  br label %for.inc165, !dbg !3561

if.end156:                                        ; preds = %do.end147
  %101 = load i32, ptr %retval1, align 4, !dbg !3562
  %tobool157 = icmp ne i32 %101, 0, !dbg !3562
  br i1 %tobool157, label %if.then158, label %if.end164, !dbg !3564

if.then158:                                       ; preds = %if.end156
  %102 = load ptr, ptr %pr, align 8, !dbg !3565
  %throttling159 = getelementptr inbounds %struct.acpi_processor, ptr %102, i32 0, i32 10, !dbg !3567
  store ptr %throttling159, ptr %pthrottling, align 8, !dbg !3568
  %103 = load ptr, ptr %pthrottling, align 8, !dbg !3569
  %shared_cpu_map160 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %103, i32 0, i32 7, !dbg !3570
  %arraydecay161 = getelementptr inbounds [1 x %struct.cpumask], ptr %shared_cpu_map160, i64 0, i64 0, !dbg !3569
  call void @cpumask_clear(ptr noundef %arraydecay161) #17, !dbg !3571
  %104 = load i32, ptr %i, align 4, !dbg !3572
  %105 = load ptr, ptr %pthrottling, align 8, !dbg !3573
  %shared_cpu_map162 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %105, i32 0, i32 7, !dbg !3574
  %arraydecay163 = getelementptr inbounds [1 x %struct.cpumask], ptr %shared_cpu_map162, i64 0, i64 0, !dbg !3573
  call void @cpumask_set_cpu(i32 noundef %104, ptr noundef %arraydecay163) #17, !dbg !3575
  %106 = load ptr, ptr %pthrottling, align 8, !dbg !3576
  %shared_type = getelementptr inbounds %struct.acpi_processor_throttling, ptr %106, i32 0, i32 14, !dbg !3577
  store i32 252, ptr %shared_type, align 8, !dbg !3578
  br label %if.end164, !dbg !3579

if.end164:                                        ; preds = %if.then158, %if.end156
  br label %for.inc165, !dbg !3580

for.inc165:                                       ; preds = %if.end164, %if.then155
  %107 = load i32, ptr %i, align 4, !dbg !3552
  %inc166 = add i32 %107, 1, !dbg !3552
  store i32 %inc166, ptr %i, align 4, !dbg !3552
  br label %for.cond137, !dbg !3552, !llvm.loop !3581

for.end167:                                       ; preds = %for.cond137
  %108 = load i32, ptr %retval1, align 4, !dbg !3583
  store i32 %108, ptr %retval, align 4, !dbg !3584
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3584

cleanup:                                          ; preds = %for.end167, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %match_pthrottling) #18, !dbg !3585
  call void @llvm.lifetime.end.p0(i64 8, ptr %pthrottling) #18, !dbg !3585
  call void @llvm.lifetime.end.p0(i64 8, ptr %match_pdomain) #18, !dbg !3585
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdomain) #18, !dbg !3585
  call void @llvm.lifetime.end.p0(i64 8, ptr %match_pr) #18, !dbg !3585
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #18, !dbg !3585
  call void @llvm.lifetime.end.p0(i64 8, ptr %covered_cpus) #18, !dbg !3585
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #18, !dbg !3585
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !3585
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #18, !dbg !3585
  call void @llvm.lifetime.end.p0(i64 4, ptr %count_target) #18, !dbg !3585
  %109 = load i32, ptr %retval, align 4, !dbg !3585
  ret i32 %109, !dbg !3585
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_processor_tstate_has_changed(ptr noundef %pr) #0 align 16 !dbg !3586 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %throttling_limit = alloca i32, align 4
  %current_state = alloca i32, align 4
  %limit = alloca ptr, align 8
  %target_state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !3588, metadata !DIExpression()), !dbg !3595
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #18, !dbg !3596
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3589, metadata !DIExpression()), !dbg !3597
  store i32 0, ptr %result, align 4, !dbg !3597
  call void @llvm.lifetime.start.p0(i64 4, ptr %throttling_limit) #18, !dbg !3598
  call void @llvm.dbg.declare(metadata ptr %throttling_limit, metadata !3590, metadata !DIExpression()), !dbg !3599
  call void @llvm.lifetime.start.p0(i64 4, ptr %current_state) #18, !dbg !3600
  call void @llvm.dbg.declare(metadata ptr %current_state, metadata !3591, metadata !DIExpression()), !dbg !3601
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #18, !dbg !3602
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !3592, metadata !DIExpression()), !dbg !3603
  call void @llvm.lifetime.start.p0(i64 4, ptr %target_state) #18, !dbg !3604
  call void @llvm.dbg.declare(metadata ptr %target_state, metadata !3594, metadata !DIExpression()), !dbg !3605
  %0 = load i32, ptr @ignore_tpc, align 4, !dbg !3606
  %tobool = icmp ne i32 %0, 0, !dbg !3606
  br i1 %tobool, label %if.then, label %if.end, !dbg !3608

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3609
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3609

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pr.addr, align 8, !dbg !3610
  %call = call i32 @acpi_processor_get_platform_limit(ptr noundef %1) #17, !dbg !3611
  store i32 %call, ptr %result, align 4, !dbg !3612
  %2 = load i32, ptr %result, align 4, !dbg !3613
  %tobool1 = icmp ne i32 %2, 0, !dbg !3613
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3615

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %result, align 4, !dbg !3616
  store i32 %3, ptr %retval, align 4, !dbg !3618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3618

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %pr.addr, align 8, !dbg !3619
  %throttling_platform_limit = getelementptr inbounds %struct.acpi_processor, ptr %4, i32 0, i32 6, !dbg !3620
  %5 = load i32, ptr %throttling_platform_limit, align 4, !dbg !3620
  store i32 %5, ptr %throttling_limit, align 4, !dbg !3621
  %6 = load i32, ptr %throttling_limit, align 4, !dbg !3622
  %7 = load ptr, ptr %pr.addr, align 8, !dbg !3624
  %throttling = getelementptr inbounds %struct.acpi_processor, ptr %7, i32 0, i32 10, !dbg !3625
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling, i32 0, i32 4, !dbg !3626
  %8 = load i32, ptr %state_count, align 8, !dbg !3626
  %cmp = icmp uge i32 %6, %8, !dbg !3627
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !3628

if.then4:                                         ; preds = %if.end3
  store i32 -22, ptr %retval, align 4, !dbg !3629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3629

if.end5:                                          ; preds = %if.end3
  %9 = load ptr, ptr %pr.addr, align 8, !dbg !3631
  %throttling6 = getelementptr inbounds %struct.acpi_processor, ptr %9, i32 0, i32 10, !dbg !3632
  %state = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling6, i32 0, i32 0, !dbg !3633
  %10 = load i32, ptr %state, align 8, !dbg !3633
  store i32 %10, ptr %current_state, align 4, !dbg !3634
  %11 = load i32, ptr %current_state, align 4, !dbg !3635
  %12 = load i32, ptr %throttling_limit, align 4, !dbg !3637
  %cmp7 = icmp sgt i32 %11, %12, !dbg !3638
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !3639

if.then8:                                         ; preds = %if.end5
  %13 = load ptr, ptr %pr.addr, align 8, !dbg !3640
  %limit9 = getelementptr inbounds %struct.acpi_processor, ptr %13, i32 0, i32 11, !dbg !3642
  store ptr %limit9, ptr %limit, align 8, !dbg !3643
  %14 = load i32, ptr %throttling_limit, align 4, !dbg !3644
  store i32 %14, ptr %target_state, align 4, !dbg !3645
  %15 = load ptr, ptr %limit, align 8, !dbg !3646
  %thermal = getelementptr inbounds %struct.acpi_processor_limit, ptr %15, i32 0, i32 1, !dbg !3648
  %tx = getelementptr inbounds %struct.acpi_processor_lx, ptr %thermal, i32 0, i32 1, !dbg !3649
  %16 = load i32, ptr %tx, align 4, !dbg !3649
  %17 = load i32, ptr %target_state, align 4, !dbg !3650
  %cmp10 = icmp sgt i32 %16, %17, !dbg !3651
  br i1 %cmp10, label %if.then11, label %if.end14, !dbg !3652

if.then11:                                        ; preds = %if.then8
  %18 = load ptr, ptr %limit, align 8, !dbg !3653
  %thermal12 = getelementptr inbounds %struct.acpi_processor_limit, ptr %18, i32 0, i32 1, !dbg !3654
  %tx13 = getelementptr inbounds %struct.acpi_processor_lx, ptr %thermal12, i32 0, i32 1, !dbg !3655
  %19 = load i32, ptr %tx13, align 4, !dbg !3655
  store i32 %19, ptr %target_state, align 4, !dbg !3656
  br label %if.end14, !dbg !3657

if.end14:                                         ; preds = %if.then11, %if.then8
  %20 = load ptr, ptr %limit, align 8, !dbg !3658
  %user = getelementptr inbounds %struct.acpi_processor_limit, ptr %20, i32 0, i32 2, !dbg !3660
  %tx15 = getelementptr inbounds %struct.acpi_processor_lx, ptr %user, i32 0, i32 1, !dbg !3661
  %21 = load i32, ptr %tx15, align 4, !dbg !3661
  %22 = load i32, ptr %target_state, align 4, !dbg !3662
  %cmp16 = icmp sgt i32 %21, %22, !dbg !3663
  br i1 %cmp16, label %if.then17, label %if.end20, !dbg !3664

if.then17:                                        ; preds = %if.end14
  %23 = load ptr, ptr %limit, align 8, !dbg !3665
  %user18 = getelementptr inbounds %struct.acpi_processor_limit, ptr %23, i32 0, i32 2, !dbg !3666
  %tx19 = getelementptr inbounds %struct.acpi_processor_lx, ptr %user18, i32 0, i32 1, !dbg !3667
  %24 = load i32, ptr %tx19, align 4, !dbg !3667
  store i32 %24, ptr %target_state, align 4, !dbg !3668
  br label %if.end20, !dbg !3669

if.end20:                                         ; preds = %if.then17, %if.end14
  br label %if.end25, !dbg !3670

if.else:                                          ; preds = %if.end5
  %25 = load i32, ptr %current_state, align 4, !dbg !3671
  %26 = load i32, ptr %throttling_limit, align 4, !dbg !3673
  %cmp21 = icmp eq i32 %25, %26, !dbg !3674
  br i1 %cmp21, label %if.then22, label %if.else23, !dbg !3675

if.then22:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !3676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3676

if.else23:                                        ; preds = %if.else
  %27 = load i32, ptr %throttling_limit, align 4, !dbg !3678
  store i32 %27, ptr %target_state, align 4, !dbg !3680
  br label %if.end24

if.end24:                                         ; preds = %if.else23
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end20
  %28 = load ptr, ptr %pr.addr, align 8, !dbg !3681
  %29 = load i32, ptr %target_state, align 4, !dbg !3682
  %call26 = call i32 @acpi_processor_set_throttling(ptr noundef %28, i32 noundef %29, i1 noundef zeroext false) #17, !dbg !3683
  store i32 %call26, ptr %retval, align 4, !dbg !3684
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3684

cleanup:                                          ; preds = %if.end25, %if.then22, %if.then4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %target_state) #18, !dbg !3685
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #18, !dbg !3685
  call void @llvm.lifetime.end.p0(i64 4, ptr %current_state) #18, !dbg !3685
  call void @llvm.lifetime.end.p0(i64 4, ptr %throttling_limit) #18, !dbg !3685
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #18, !dbg !3685
  %30 = load i32, ptr %retval, align 4, !dbg !3685
  ret i32 %30, !dbg !3685
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_processor_get_platform_limit(ptr noundef %pr) #0 align 16 !dbg !3686 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %tpc = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !3688, metadata !DIExpression()), !dbg !3692
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #18, !dbg !3693
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3689, metadata !DIExpression()), !dbg !3694
  store i32 0, ptr %status, align 4, !dbg !3694
  call void @llvm.lifetime.start.p0(i64 8, ptr %tpc) #18, !dbg !3695
  call void @llvm.dbg.declare(metadata ptr %tpc, metadata !3690, metadata !DIExpression()), !dbg !3696
  store i64 0, ptr %tpc, align 8, !dbg !3696
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !3697
  %tobool = icmp ne ptr %0, null, !dbg !3697
  br i1 %tobool, label %if.end, label %if.then, !dbg !3699

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !3700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3700

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @ignore_tpc, align 4, !dbg !3701
  %tobool1 = icmp ne i32 %1, 0, !dbg !3701
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3703

if.then2:                                         ; preds = %if.end
  br label %end, !dbg !3704

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %pr.addr, align 8, !dbg !3705
  %handle = getelementptr inbounds %struct.acpi_processor, ptr %2, i32 0, i32 0, !dbg !3706
  %3 = load ptr, ptr %handle, align 8, !dbg !3706
  %call = call i32 @acpi_evaluate_integer(ptr noundef %3, ptr noundef @.str, ptr noundef null, ptr noundef %tpc) #17, !dbg !3707
  store i32 %call, ptr %status, align 4, !dbg !3708
  %4 = load i32, ptr %status, align 4, !dbg !3709
  %tobool4 = icmp ne i32 %4, 0, !dbg !3709
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !3711

if.then5:                                         ; preds = %if.end3
  %5 = load i32, ptr %status, align 4, !dbg !3712
  %cmp = icmp ne i32 %5, 5, !dbg !3715
  br i1 %cmp, label %if.then6, label %if.end8, !dbg !3716

if.then6:                                         ; preds = %if.then5
  %6 = load ptr, ptr %pr.addr, align 8, !dbg !3717
  %handle7 = getelementptr inbounds %struct.acpi_processor, ptr %6, i32 0, i32 0, !dbg !3718
  %7 = load ptr, ptr %handle7, align 8, !dbg !3718
  %8 = load i32, ptr %status, align 4, !dbg !3719
  call void @acpi_evaluation_failure_warn(ptr noundef %7, ptr noundef @.str, i32 noundef %8) #17, !dbg !3720
  br label %if.end8, !dbg !3720

if.end8:                                          ; preds = %if.then6, %if.then5
  store i32 -19, ptr %retval, align 4, !dbg !3721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3721

if.end9:                                          ; preds = %if.end3
  br label %end, !dbg !3709

end:                                              ; preds = %if.end9, %if.then2
  call void @llvm.dbg.label(metadata !3691), !dbg !3722
  %9 = load i64, ptr %tpc, align 8, !dbg !3723
  %conv = trunc i64 %9 to i32, !dbg !3724
  %10 = load ptr, ptr %pr.addr, align 8, !dbg !3725
  %throttling_platform_limit = getelementptr inbounds %struct.acpi_processor, ptr %10, i32 0, i32 6, !dbg !3726
  store i32 %conv, ptr %throttling_platform_limit, align 4, !dbg !3727
  store i32 0, ptr %retval, align 4, !dbg !3728
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3728

cleanup:                                          ; preds = %end, %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tpc) #18, !dbg !3729
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #18, !dbg !3729
  %11 = load i32, ptr %retval, align 4, !dbg !3729
  ret i32 %11, !dbg !3729
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_processor_set_throttling(ptr noundef %pr, i32 noundef %state, i1 noundef zeroext %force) #0 align 16 !dbg !3730 {
entry:
  %pr.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  %force.addr = alloca i8, align 1
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !3732, metadata !DIExpression()), !dbg !3735
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3733, metadata !DIExpression()), !dbg !3736
  %frombool = zext i1 %force to i8
  store i8 %frombool, ptr %force.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %force.addr, metadata !3734, metadata !DIExpression()), !dbg !3737
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !3738
  %1 = load i32, ptr %state.addr, align 4, !dbg !3739
  %2 = load i8, ptr %force.addr, align 1, !dbg !3740, !range !3741, !noundef !372
  %tobool = trunc i8 %2 to i1, !dbg !3740
  %call = call i32 @__acpi_processor_set_throttling(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %tobool, i1 noundef zeroext false) #17, !dbg !3742
  ret i32 %call, !dbg !3743
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_processor_reevaluate_tstate(ptr noundef %pr, i1 noundef zeroext %is_dead) #0 align 16 !dbg !3744 {
entry:
  %pr.addr = alloca ptr, align 8
  %is_dead.addr = alloca i8, align 1
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !3748, metadata !DIExpression()), !dbg !3752
  %frombool = zext i1 %is_dead to i8
  store i8 %frombool, ptr %is_dead.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_dead.addr, metadata !3749, metadata !DIExpression()), !dbg !3753
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #18, !dbg !3754
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3750, metadata !DIExpression()), !dbg !3755
  store i32 0, ptr %result, align 4, !dbg !3755
  %0 = load i8, ptr %is_dead.addr, align 1, !dbg !3756, !range !3741, !noundef !372
  %tobool = trunc i8 %0 to i1, !dbg !3756
  br i1 %tobool, label %if.then, label %if.end, !dbg !3758

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pr.addr, align 8, !dbg !3759
  %flags = getelementptr inbounds %struct.acpi_processor, ptr %1, i32 0, i32 7, !dbg !3761
  %bf.load = load i16, ptr %flags, align 8, !dbg !3762
  %bf.clear = and i16 %bf.load, -5, !dbg !3762
  %bf.set = or i16 %bf.clear, 0, !dbg !3762
  store i16 %bf.set, ptr %flags, align 8, !dbg !3762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3763

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pr.addr, align 8, !dbg !3764
  %throttling = getelementptr inbounds %struct.acpi_processor, ptr %2, i32 0, i32 10, !dbg !3766
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling, i32 0, i32 4, !dbg !3767
  %3 = load i32, ptr %state_count, align 8, !dbg !3767
  %tobool1 = icmp ne i32 %3, 0, !dbg !3764
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !3768

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %pr.addr, align 8, !dbg !3769
  %flags3 = getelementptr inbounds %struct.acpi_processor, ptr %4, i32 0, i32 7, !dbg !3771
  %bf.load4 = load i16, ptr %flags3, align 8, !dbg !3772
  %bf.clear5 = and i16 %bf.load4, -5, !dbg !3772
  %bf.set6 = or i16 %bf.clear5, 0, !dbg !3772
  store i16 %bf.set6, ptr %flags3, align 8, !dbg !3772
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3773

if.end7:                                          ; preds = %if.end
  %5 = load ptr, ptr %pr.addr, align 8, !dbg !3774
  %flags8 = getelementptr inbounds %struct.acpi_processor, ptr %5, i32 0, i32 7, !dbg !3775
  %bf.load9 = load i16, ptr %flags8, align 8, !dbg !3776
  %bf.clear10 = and i16 %bf.load9, -5, !dbg !3776
  %bf.set11 = or i16 %bf.clear10, 4, !dbg !3776
  store i16 %bf.set11, ptr %flags8, align 8, !dbg !3776
  %6 = load ptr, ptr %pr.addr, align 8, !dbg !3777
  %call = call i32 @acpi_processor_get_throttling(ptr noundef %6) #17, !dbg !3778
  store i32 %call, ptr %result, align 4, !dbg !3779
  %7 = load i32, ptr %result, align 4, !dbg !3780
  %tobool12 = icmp ne i32 %7, 0, !dbg !3780
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !3782

if.then13:                                        ; preds = %if.end7
  br label %end, !dbg !3783

if.end14:                                         ; preds = %if.end7
  %8 = load ptr, ptr %pr.addr, align 8, !dbg !3784
  %throttling15 = getelementptr inbounds %struct.acpi_processor, ptr %8, i32 0, i32 10, !dbg !3786
  %state = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling15, i32 0, i32 0, !dbg !3787
  %9 = load i32, ptr %state, align 8, !dbg !3787
  %tobool16 = icmp ne i32 %9, 0, !dbg !3784
  br i1 %tobool16, label %if.then17, label %if.end22, !dbg !3788

if.then17:                                        ; preds = %if.end14
  %10 = load ptr, ptr %pr.addr, align 8, !dbg !3789
  %call18 = call i32 @acpi_processor_set_throttling(ptr noundef %10, i32 noundef 0, i1 noundef zeroext false) #17, !dbg !3791
  store i32 %call18, ptr %result, align 4, !dbg !3792
  %11 = load i32, ptr %result, align 4, !dbg !3793
  %tobool19 = icmp ne i32 %11, 0, !dbg !3793
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !3795

if.then20:                                        ; preds = %if.then17
  br label %end, !dbg !3796

if.end21:                                         ; preds = %if.then17
  br label %if.end22, !dbg !3797

if.end22:                                         ; preds = %if.end21, %if.end14
  br label %end, !dbg !3787

end:                                              ; preds = %if.end22, %if.then20, %if.then13
  call void @llvm.dbg.label(metadata !3751), !dbg !3798
  %12 = load i32, ptr %result, align 4, !dbg !3799
  %tobool23 = icmp ne i32 %12, 0, !dbg !3799
  br i1 %tobool23, label %if.then24, label %if.end29, !dbg !3801

if.then24:                                        ; preds = %end
  %13 = load ptr, ptr %pr.addr, align 8, !dbg !3802
  %flags25 = getelementptr inbounds %struct.acpi_processor, ptr %13, i32 0, i32 7, !dbg !3803
  %bf.load26 = load i16, ptr %flags25, align 8, !dbg !3804
  %bf.clear27 = and i16 %bf.load26, -5, !dbg !3804
  %bf.set28 = or i16 %bf.clear27, 0, !dbg !3804
  store i16 %bf.set28, ptr %flags25, align 8, !dbg !3804
  br label %if.end29, !dbg !3802

if.end29:                                         ; preds = %if.then24, %end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3805
  br label %cleanup, !dbg !3805

cleanup:                                          ; preds = %if.end29, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #18, !dbg !3805
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3805

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_processor_get_throttling(ptr noundef %pr) #0 align 16 !dbg !3806 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca ptr, align 8
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !3808, metadata !DIExpression()), !dbg !3809
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !3810
  %tobool = icmp ne ptr %0, null, !dbg !3810
  br i1 %tobool, label %if.end, label %if.then, !dbg !3812

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !3813
  br label %return, !dbg !3813

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pr.addr, align 8, !dbg !3814
  %flags = getelementptr inbounds %struct.acpi_processor, ptr %1, i32 0, i32 7, !dbg !3816
  %bf.load = load i16, ptr %flags, align 8, !dbg !3817
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !3817
  %bf.clear = and i16 %bf.lshr, 1, !dbg !3817
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !3817
  %tobool1 = icmp ne i8 %bf.cast, 0, !dbg !3814
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3818

if.then2:                                         ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !3819
  br label %return, !dbg !3819

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %pr.addr, align 8, !dbg !3820
  %id = getelementptr inbounds %struct.acpi_processor, ptr %2, i32 0, i32 3, !dbg !3822
  %3 = load i32, ptr %id, align 8, !dbg !3822
  %call = call zeroext i1 @cpu_online(i32 noundef %3) #17, !dbg !3823
  br i1 %call, label %if.end5, label %if.then4, !dbg !3824

if.then4:                                         ; preds = %if.end3
  store i32 -19, ptr %retval, align 4, !dbg !3825
  br label %return, !dbg !3825

if.end5:                                          ; preds = %if.end3
  %4 = load ptr, ptr %pr.addr, align 8, !dbg !3826
  %id6 = getelementptr inbounds %struct.acpi_processor, ptr %4, i32 0, i32 3, !dbg !3827
  %5 = load i32, ptr %id6, align 8, !dbg !3827
  %6 = load ptr, ptr %pr.addr, align 8, !dbg !3828
  %call7 = call i32 @call_on_cpu(i32 noundef %5, ptr noundef @__acpi_processor_get_throttling, ptr noundef %6, i1 noundef zeroext false) #17, !dbg !3829
  store i32 %call7, ptr %retval, align 4, !dbg !3830
  br label %return, !dbg !3830

return:                                           ; preds = %if.end5, %if.then4, %if.then2, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !3831
  ret i32 %7, !dbg !3831
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__acpi_processor_set_throttling(ptr noundef %pr, i32 noundef %state, i1 noundef zeroext %force, i1 noundef zeroext %direct) #0 align 16 !dbg !3832 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  %force.addr = alloca i8, align 1
  %direct.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %match_pr = alloca ptr, align 8
  %p_throttling = alloca ptr, align 8
  %arg = alloca %struct.acpi_processor_throttling_arg, align 8
  %t_state = alloca %struct.throttling_tstate, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp43 = alloca ptr, align 8
  %tmp46 = alloca i32, align 4
  %tmp55 = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !3836, metadata !DIExpression()), !dbg !3865
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3837, metadata !DIExpression()), !dbg !3866
  %frombool = zext i1 %force to i8
  store i8 %frombool, ptr %force.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %force.addr, metadata !3838, metadata !DIExpression()), !dbg !3867
  %frombool1 = zext i1 %direct to i8
  store i8 %frombool1, ptr %direct.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %direct.addr, metadata !3839, metadata !DIExpression()), !dbg !3868
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !3869
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3840, metadata !DIExpression()), !dbg !3870
  store i32 0, ptr %ret, align 4, !dbg !3870
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !3871
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3841, metadata !DIExpression()), !dbg !3872
  call void @llvm.lifetime.start.p0(i64 8, ptr %match_pr) #18, !dbg !3873
  call void @llvm.dbg.declare(metadata ptr %match_pr, metadata !3842, metadata !DIExpression()), !dbg !3874
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_throttling) #18, !dbg !3875
  call void @llvm.dbg.declare(metadata ptr %p_throttling, metadata !3843, metadata !DIExpression()), !dbg !3876
  call void @llvm.lifetime.start.p0(i64 16, ptr %arg) #18, !dbg !3877
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !3844, metadata !DIExpression()), !dbg !3878
  call void @llvm.lifetime.start.p0(i64 8, ptr %t_state) #18, !dbg !3879
  call void @llvm.dbg.declare(metadata ptr %t_state, metadata !3850, metadata !DIExpression()), !dbg !3880
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !3881
  %tobool = icmp ne ptr %0, null, !dbg !3881
  br i1 %tobool, label %if.end, label %if.then, !dbg !3883

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !3884
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3884

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pr.addr, align 8, !dbg !3885
  %flags = getelementptr inbounds %struct.acpi_processor, ptr %1, i32 0, i32 7, !dbg !3887
  %bf.load = load i16, ptr %flags, align 8, !dbg !3888
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !3888
  %bf.clear = and i16 %bf.lshr, 1, !dbg !3888
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !3888
  %tobool2 = icmp ne i8 %bf.cast, 0, !dbg !3885
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3889

if.then3:                                         ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !3890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3890

if.end4:                                          ; preds = %if.end
  %2 = load i32, ptr %state.addr, align 4, !dbg !3891
  %cmp = icmp slt i32 %2, 0, !dbg !3893
  br i1 %cmp, label %if.then6, label %lor.lhs.false, !dbg !3894

lor.lhs.false:                                    ; preds = %if.end4
  %3 = load i32, ptr %state.addr, align 4, !dbg !3895
  %4 = load ptr, ptr %pr.addr, align 8, !dbg !3896
  %throttling = getelementptr inbounds %struct.acpi_processor, ptr %4, i32 0, i32 10, !dbg !3897
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling, i32 0, i32 4, !dbg !3898
  %5 = load i32, ptr %state_count, align 8, !dbg !3898
  %sub = sub i32 %5, 1, !dbg !3899
  %cmp5 = icmp ugt i32 %3, %sub, !dbg !3900
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !3901

if.then6:                                         ; preds = %lor.lhs.false, %if.end4
  store i32 -22, ptr %retval, align 4, !dbg !3902
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3902

if.end7:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %pr.addr, align 8, !dbg !3903
  %id = getelementptr inbounds %struct.acpi_processor, ptr %6, i32 0, i32 3, !dbg !3903
  %7 = load i32, ptr %id, align 8, !dbg !3903
  %call = call zeroext i1 @cpu_online(i32 noundef %7) #17, !dbg !3903
  %lnot = xor i1 %call, true, !dbg !3903
  %lnot8 = xor i1 %lnot, true, !dbg !3903
  %lnot9 = xor i1 %lnot8, true, !dbg !3903
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !3903
  %conv = sext i32 %lnot.ext to i64, !dbg !3903
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3903
  %tobool10 = icmp ne i64 %expval, 0, !dbg !3903
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !3905

if.then11:                                        ; preds = %if.end7
  store i32 -19, ptr %retval, align 4, !dbg !3906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3906

if.end12:                                         ; preds = %if.end7
  %8 = load i32, ptr %state.addr, align 4, !dbg !3908
  %target_state = getelementptr inbounds %struct.throttling_tstate, ptr %t_state, i32 0, i32 1, !dbg !3909
  store i32 %8, ptr %target_state, align 4, !dbg !3910
  %9 = load ptr, ptr %pr.addr, align 8, !dbg !3911
  %throttling13 = getelementptr inbounds %struct.acpi_processor, ptr %9, i32 0, i32 10, !dbg !3912
  store ptr %throttling13, ptr %p_throttling, align 8, !dbg !3913
  store i32 0, ptr %i, align 4, !dbg !3914
  br label %for.cond, !dbg !3914

for.cond:                                         ; preds = %for.inc, %if.end12
  %10 = load ptr, ptr %p_throttling, align 8, !dbg !3916
  %shared_cpu_map = getelementptr inbounds %struct.acpi_processor_throttling, ptr %10, i32 0, i32 7, !dbg !3916
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %shared_cpu_map, i64 0, i64 0, !dbg !3916
  %bits = getelementptr inbounds %struct.cpumask, ptr %arraydecay, i32 0, i32 0, !dbg !3916
  %arraydecay14 = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3916
  %11 = load i32, ptr %i, align 4, !dbg !3916
  %conv15 = zext i32 %11 to i64, !dbg !3916
  %call16 = call i64 @find_next_and_bit(ptr noundef @__cpu_online_mask, ptr noundef %arraydecay14, i64 noundef 64, i64 noundef %conv15) #17, !dbg !3916
  %conv17 = trunc i64 %call16 to i32, !dbg !3916
  store i32 %conv17, ptr %i, align 4, !dbg !3916
  %12 = load i32, ptr %i, align 4, !dbg !3916
  %cmp18 = icmp ult i32 %12, 64, !dbg !3916
  br i1 %cmp18, label %for.body, label %for.end, !dbg !3914

for.body:                                         ; preds = %for.cond
  %13 = load i32, ptr %i, align 4, !dbg !3918
  %cpu = getelementptr inbounds %struct.throttling_tstate, ptr %t_state, i32 0, i32 0, !dbg !3920
  store i32 %13, ptr %cpu, align 4, !dbg !3921
  %call20 = call i32 @acpi_processor_throttling_notifier(i64 noundef 1, ptr noundef %t_state) #17, !dbg !3922
  br label %for.inc, !dbg !3923

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !dbg !3916
  %inc = add i32 %14, 1, !dbg !3916
  store i32 %inc, ptr %i, align 4, !dbg !3916
  br label %for.cond, !dbg !3916, !llvm.loop !3924

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %p_throttling, align 8, !dbg !3926
  %shared_type = getelementptr inbounds %struct.acpi_processor_throttling, ptr %15, i32 0, i32 14, !dbg !3927
  %16 = load i32, ptr %shared_type, align 8, !dbg !3927
  %cmp21 = icmp eq i32 %16, 253, !dbg !3928
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !3929

if.then23:                                        ; preds = %for.end
  %17 = load ptr, ptr %pr.addr, align 8, !dbg !3930
  %pr24 = getelementptr inbounds %struct.acpi_processor_throttling_arg, ptr %arg, i32 0, i32 0, !dbg !3932
  store ptr %17, ptr %pr24, align 8, !dbg !3933
  %18 = load i32, ptr %state.addr, align 4, !dbg !3934
  %target_state25 = getelementptr inbounds %struct.acpi_processor_throttling_arg, ptr %arg, i32 0, i32 1, !dbg !3935
  store i32 %18, ptr %target_state25, align 8, !dbg !3936
  %19 = load i8, ptr %force.addr, align 1, !dbg !3937, !range !3741, !noundef !372
  %tobool26 = trunc i8 %19 to i1, !dbg !3937
  %force27 = getelementptr inbounds %struct.acpi_processor_throttling_arg, ptr %arg, i32 0, i32 2, !dbg !3938
  %frombool28 = zext i1 %tobool26 to i8, !dbg !3939
  store i8 %frombool28, ptr %force27, align 4, !dbg !3939
  %20 = load ptr, ptr %pr.addr, align 8, !dbg !3940
  %id29 = getelementptr inbounds %struct.acpi_processor, ptr %20, i32 0, i32 3, !dbg !3941
  %21 = load i32, ptr %id29, align 8, !dbg !3941
  %22 = load i8, ptr %direct.addr, align 1, !dbg !3942, !range !3741, !noundef !372
  %tobool30 = trunc i8 %22 to i1, !dbg !3942
  %call31 = call i32 @call_on_cpu(i32 noundef %21, ptr noundef @acpi_processor_throttling_fn, ptr noundef %arg, i1 noundef zeroext %tobool30) #17, !dbg !3943
  store i32 %call31, ptr %ret, align 4, !dbg !3944
  br label %if.end68, !dbg !3945

if.else:                                          ; preds = %for.end
  store i32 0, ptr %i, align 4, !dbg !3946
  br label %for.cond32, !dbg !3946

for.cond32:                                       ; preds = %for.inc65, %if.else
  %23 = load ptr, ptr %p_throttling, align 8, !dbg !3947
  %shared_cpu_map33 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %23, i32 0, i32 7, !dbg !3947
  %arraydecay34 = getelementptr inbounds [1 x %struct.cpumask], ptr %shared_cpu_map33, i64 0, i64 0, !dbg !3947
  %bits35 = getelementptr inbounds %struct.cpumask, ptr %arraydecay34, i32 0, i32 0, !dbg !3947
  %arraydecay36 = getelementptr inbounds [1 x i64], ptr %bits35, i64 0, i64 0, !dbg !3947
  %24 = load i32, ptr %i, align 4, !dbg !3947
  %conv37 = zext i32 %24 to i64, !dbg !3947
  %call38 = call i64 @find_next_and_bit(ptr noundef @__cpu_online_mask, ptr noundef %arraydecay36, i64 noundef 64, i64 noundef %conv37) #17, !dbg !3947
  %conv39 = trunc i64 %call38 to i32, !dbg !3947
  store i32 %conv39, ptr %i, align 4, !dbg !3947
  %25 = load i32, ptr %i, align 4, !dbg !3947
  %cmp40 = icmp ult i32 %25, 64, !dbg !3947
  br i1 %cmp40, label %for.body42, label %for.end67, !dbg !3946

for.body42:                                       ; preds = %for.cond32
  br label %do.body, !dbg !3948

do.body:                                          ; preds = %for.body42
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !3949
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3855, metadata !DIExpression()), !dbg !3949
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3949
  %26 = load ptr, ptr %__vpp_verify, align 8, !dbg !3949
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !3948
  br label %do.cond, !dbg !3949

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3949

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #18, !dbg !3950
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3863, metadata !DIExpression()), !dbg !3950
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr, align 8, !dbg !3950
  %27 = load i64, ptr %__ptr, align 8, !dbg !3950
  %28 = load i32, ptr %i, align 4, !dbg !3950
  %idxprom = zext i32 %28 to i64, !dbg !3950
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3950
  %29 = load i64, ptr %arrayidx, align 8, !dbg !3950
  %add = add i64 %27, %29, !dbg !3950
  %30 = inttoptr i64 %add to ptr, !dbg !3950
  store ptr %30, ptr %tmp43, align 8, !dbg !3950
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #18, !dbg !3948
  %31 = load ptr, ptr %tmp43, align 8, !dbg !3950
  store ptr %31, ptr %tmp, align 8, !dbg !3949
  %32 = load ptr, ptr %tmp, align 8, !dbg !3948
  %33 = load ptr, ptr %32, align 8, !dbg !3951
  store ptr %33, ptr %match_pr, align 8, !dbg !3952
  %34 = load ptr, ptr %match_pr, align 8, !dbg !3953
  %tobool44 = icmp ne ptr %34, null, !dbg !3953
  br i1 %tobool44, label %if.end47, label %if.then45, !dbg !3955

if.then45:                                        ; preds = %do.end
  store i32 0, ptr %tmp46, align 4, !dbg !3956
  %35 = load i32, ptr %tmp46, align 4, !dbg !3960
  br label %for.inc65, !dbg !3961

if.end47:                                         ; preds = %do.end
  %36 = load ptr, ptr %match_pr, align 8, !dbg !3962
  %flags48 = getelementptr inbounds %struct.acpi_processor, ptr %36, i32 0, i32 7, !dbg !3964
  %bf.load49 = load i16, ptr %flags48, align 8, !dbg !3965
  %bf.lshr50 = lshr i16 %bf.load49, 2, !dbg !3965
  %bf.clear51 = and i16 %bf.lshr50, 1, !dbg !3965
  %bf.cast52 = trunc i16 %bf.clear51 to i8, !dbg !3965
  %tobool53 = icmp ne i8 %bf.cast52, 0, !dbg !3962
  br i1 %tobool53, label %if.end56, label %if.then54, !dbg !3966

if.then54:                                        ; preds = %if.end47
  store i32 0, ptr %tmp55, align 4, !dbg !3967
  %37 = load i32, ptr %tmp55, align 4, !dbg !3971
  br label %for.inc65, !dbg !3972

if.end56:                                         ; preds = %if.end47
  %38 = load ptr, ptr %match_pr, align 8, !dbg !3973
  %pr57 = getelementptr inbounds %struct.acpi_processor_throttling_arg, ptr %arg, i32 0, i32 0, !dbg !3974
  store ptr %38, ptr %pr57, align 8, !dbg !3975
  %39 = load i32, ptr %state.addr, align 4, !dbg !3976
  %target_state58 = getelementptr inbounds %struct.acpi_processor_throttling_arg, ptr %arg, i32 0, i32 1, !dbg !3977
  store i32 %39, ptr %target_state58, align 8, !dbg !3978
  %40 = load i8, ptr %force.addr, align 1, !dbg !3979, !range !3741, !noundef !372
  %tobool59 = trunc i8 %40 to i1, !dbg !3979
  %force60 = getelementptr inbounds %struct.acpi_processor_throttling_arg, ptr %arg, i32 0, i32 2, !dbg !3980
  %frombool61 = zext i1 %tobool59 to i8, !dbg !3981
  store i8 %frombool61, ptr %force60, align 4, !dbg !3981
  %41 = load ptr, ptr %pr.addr, align 8, !dbg !3982
  %id62 = getelementptr inbounds %struct.acpi_processor, ptr %41, i32 0, i32 3, !dbg !3983
  %42 = load i32, ptr %id62, align 8, !dbg !3983
  %43 = load i8, ptr %direct.addr, align 1, !dbg !3984, !range !3741, !noundef !372
  %tobool63 = trunc i8 %43 to i1, !dbg !3984
  %call64 = call i32 @call_on_cpu(i32 noundef %42, ptr noundef @acpi_processor_throttling_fn, ptr noundef %arg, i1 noundef zeroext %tobool63) #17, !dbg !3985
  store i32 %call64, ptr %ret, align 4, !dbg !3986
  br label %for.inc65, !dbg !3987

for.inc65:                                        ; preds = %if.end56, %if.then54, %if.then45
  %44 = load i32, ptr %i, align 4, !dbg !3947
  %inc66 = add i32 %44, 1, !dbg !3947
  store i32 %inc66, ptr %i, align 4, !dbg !3947
  br label %for.cond32, !dbg !3947, !llvm.loop !3988

for.end67:                                        ; preds = %for.cond32
  br label %if.end68

if.end68:                                         ; preds = %for.end67, %if.then23
  store i32 0, ptr %i, align 4, !dbg !3990
  br label %for.cond69, !dbg !3990

for.cond69:                                       ; preds = %for.inc82, %if.end68
  %45 = load ptr, ptr %p_throttling, align 8, !dbg !3992
  %shared_cpu_map70 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %45, i32 0, i32 7, !dbg !3992
  %arraydecay71 = getelementptr inbounds [1 x %struct.cpumask], ptr %shared_cpu_map70, i64 0, i64 0, !dbg !3992
  %bits72 = getelementptr inbounds %struct.cpumask, ptr %arraydecay71, i32 0, i32 0, !dbg !3992
  %arraydecay73 = getelementptr inbounds [1 x i64], ptr %bits72, i64 0, i64 0, !dbg !3992
  %46 = load i32, ptr %i, align 4, !dbg !3992
  %conv74 = zext i32 %46 to i64, !dbg !3992
  %call75 = call i64 @find_next_and_bit(ptr noundef @__cpu_online_mask, ptr noundef %arraydecay73, i64 noundef 64, i64 noundef %conv74) #17, !dbg !3992
  %conv76 = trunc i64 %call75 to i32, !dbg !3992
  store i32 %conv76, ptr %i, align 4, !dbg !3992
  %47 = load i32, ptr %i, align 4, !dbg !3992
  %cmp77 = icmp ult i32 %47, 64, !dbg !3992
  br i1 %cmp77, label %for.body79, label %for.end84, !dbg !3990

for.body79:                                       ; preds = %for.cond69
  %48 = load i32, ptr %i, align 4, !dbg !3994
  %cpu80 = getelementptr inbounds %struct.throttling_tstate, ptr %t_state, i32 0, i32 0, !dbg !3996
  store i32 %48, ptr %cpu80, align 4, !dbg !3997
  %call81 = call i32 @acpi_processor_throttling_notifier(i64 noundef 2, ptr noundef %t_state) #17, !dbg !3998
  br label %for.inc82, !dbg !3999

for.inc82:                                        ; preds = %for.body79
  %49 = load i32, ptr %i, align 4, !dbg !3992
  %inc83 = add i32 %49, 1, !dbg !3992
  store i32 %inc83, ptr %i, align 4, !dbg !3992
  br label %for.cond69, !dbg !3992, !llvm.loop !4000

for.end84:                                        ; preds = %for.cond69
  %50 = load i32, ptr %ret, align 4, !dbg !4002
  store i32 %50, ptr %retval, align 4, !dbg !4003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4003

cleanup:                                          ; preds = %for.end84, %if.then11, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %t_state) #18, !dbg !4004
  call void @llvm.lifetime.end.p0(i64 16, ptr %arg) #18, !dbg !4004
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_throttling) #18, !dbg !4004
  call void @llvm.lifetime.end.p0(i64 8, ptr %match_pr) #18, !dbg !4004
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !4004
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !4004
  %51 = load i32, ptr %retval, align 4, !dbg !4004
  ret i32 %51, !dbg !4004
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_processor_get_throttling_info(ptr noundef %pr) #0 align 16 !dbg !4005 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %pthrottling = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !4007, metadata !DIExpression()), !dbg !4011
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #18, !dbg !4012
  call void @llvm.dbg.declare(metadata ptr %result, metadata !4008, metadata !DIExpression()), !dbg !4013
  store i32 0, ptr %result, align 4, !dbg !4013
  call void @llvm.lifetime.start.p0(i64 8, ptr %pthrottling) #18, !dbg !4014
  call void @llvm.dbg.declare(metadata ptr %pthrottling, metadata !4009, metadata !DIExpression()), !dbg !4015
  store i32 0, ptr %tmp, align 4, !dbg !4016
  %0 = load i32, ptr %tmp, align 4, !dbg !4019
  %1 = load ptr, ptr %pr.addr, align 8, !dbg !4020
  %call = call i32 @acpi_processor_get_throttling_control(ptr noundef %1) #17, !dbg !4022
  %tobool = icmp ne i32 %call, 0, !dbg !4022
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !4023

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %pr.addr, align 8, !dbg !4024
  %call1 = call i32 @acpi_processor_get_throttling_states(ptr noundef %2) #17, !dbg !4025
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4025
  br i1 %tobool2, label %if.then, label %lor.lhs.false3, !dbg !4026

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %pr.addr, align 8, !dbg !4027
  %call4 = call i32 @acpi_processor_get_platform_limit(ptr noundef %3) #17, !dbg !4028
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4028
  br i1 %tobool5, label %if.then, label %if.else, !dbg !4029

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %4 = load ptr, ptr %pr.addr, align 8, !dbg !4030
  %throttling = getelementptr inbounds %struct.acpi_processor, ptr %4, i32 0, i32 10, !dbg !4032
  %acpi_processor_get_throttling = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling, i32 0, i32 8, !dbg !4033
  store ptr @acpi_processor_get_throttling_fadt, ptr %acpi_processor_get_throttling, align 8, !dbg !4034
  %5 = load ptr, ptr %pr.addr, align 8, !dbg !4035
  %throttling6 = getelementptr inbounds %struct.acpi_processor, ptr %5, i32 0, i32 10, !dbg !4036
  %acpi_processor_set_throttling = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling6, i32 0, i32 9, !dbg !4037
  store ptr @acpi_processor_set_throttling_fadt, ptr %acpi_processor_set_throttling, align 8, !dbg !4038
  %6 = load ptr, ptr %pr.addr, align 8, !dbg !4039
  %call7 = call i32 @acpi_processor_get_fadt_info(ptr noundef %6) #17, !dbg !4041
  %tobool8 = icmp ne i32 %call7, 0, !dbg !4041
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !4042

if.then9:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !4043
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4043

if.end:                                           ; preds = %if.then
  br label %if.end14, !dbg !4044

if.else:                                          ; preds = %lor.lhs.false3
  %7 = load ptr, ptr %pr.addr, align 8, !dbg !4045
  %throttling10 = getelementptr inbounds %struct.acpi_processor, ptr %7, i32 0, i32 10, !dbg !4047
  %acpi_processor_get_throttling11 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling10, i32 0, i32 8, !dbg !4048
  store ptr @acpi_processor_get_throttling_ptc, ptr %acpi_processor_get_throttling11, align 8, !dbg !4049
  %8 = load ptr, ptr %pr.addr, align 8, !dbg !4050
  %throttling12 = getelementptr inbounds %struct.acpi_processor, ptr %8, i32 0, i32 10, !dbg !4051
  %acpi_processor_set_throttling13 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling12, i32 0, i32 9, !dbg !4052
  store ptr @acpi_processor_set_throttling_ptc, ptr %acpi_processor_set_throttling13, align 8, !dbg !4053
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end
  %9 = load ptr, ptr %pr.addr, align 8, !dbg !4054
  %call15 = call i32 @acpi_processor_get_tsd(ptr noundef %9) #17, !dbg !4056
  %tobool16 = icmp ne i32 %call15, 0, !dbg !4056
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !4057

if.then17:                                        ; preds = %if.end14
  %10 = load ptr, ptr %pr.addr, align 8, !dbg !4058
  %throttling18 = getelementptr inbounds %struct.acpi_processor, ptr %10, i32 0, i32 10, !dbg !4060
  store ptr %throttling18, ptr %pthrottling, align 8, !dbg !4061
  %11 = load ptr, ptr %pthrottling, align 8, !dbg !4062
  %tsd_valid_flag = getelementptr inbounds %struct.acpi_processor_throttling, ptr %11, i32 0, i32 13, !dbg !4063
  store i8 0, ptr %tsd_valid_flag, align 2, !dbg !4064
  %12 = load ptr, ptr %pr.addr, align 8, !dbg !4065
  %id = getelementptr inbounds %struct.acpi_processor, ptr %12, i32 0, i32 3, !dbg !4066
  %13 = load i32, ptr %id, align 8, !dbg !4066
  %14 = load ptr, ptr %pthrottling, align 8, !dbg !4067
  %shared_cpu_map = getelementptr inbounds %struct.acpi_processor_throttling, ptr %14, i32 0, i32 7, !dbg !4068
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %shared_cpu_map, i64 0, i64 0, !dbg !4067
  call void @cpumask_set_cpu(i32 noundef %13, ptr noundef %arraydecay) #17, !dbg !4069
  %15 = load ptr, ptr %pthrottling, align 8, !dbg !4070
  %shared_type = getelementptr inbounds %struct.acpi_processor_throttling, ptr %15, i32 0, i32 14, !dbg !4071
  store i32 252, ptr %shared_type, align 8, !dbg !4072
  br label %if.end19, !dbg !4073

if.end19:                                         ; preds = %if.then17, %if.end14
  %bf.load = load i8, ptr getelementptr inbounds (%struct.acpi_processor_errata, ptr @errata, i32 0, i32 1), align 4, !dbg !4074
  %bf.clear = and i8 %bf.load, 1, !dbg !4074
  %tobool20 = icmp ne i8 %bf.clear, 0, !dbg !4076
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !4077

if.then21:                                        ; preds = %if.end19
  store i32 0, ptr %tmp22, align 4, !dbg !4078
  %16 = load i32, ptr %tmp22, align 4, !dbg !4082
  store i32 0, ptr %retval, align 4, !dbg !4083
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4083

if.end23:                                         ; preds = %if.end19
  store i32 0, ptr %tmp24, align 4, !dbg !4084
  %17 = load i32, ptr %tmp24, align 4, !dbg !4087
  %18 = load ptr, ptr %pr.addr, align 8, !dbg !4088
  %flags = getelementptr inbounds %struct.acpi_processor, ptr %18, i32 0, i32 7, !dbg !4089
  %bf.load25 = load i16, ptr %flags, align 8, !dbg !4090
  %bf.clear26 = and i16 %bf.load25, -5, !dbg !4090
  %bf.set = or i16 %bf.clear26, 4, !dbg !4090
  store i16 %bf.set, ptr %flags, align 8, !dbg !4090
  %19 = load ptr, ptr %pr.addr, align 8, !dbg !4091
  %call27 = call i32 @acpi_processor_get_throttling(ptr noundef %19) #17, !dbg !4092
  store i32 %call27, ptr %result, align 4, !dbg !4093
  %20 = load i32, ptr %result, align 4, !dbg !4094
  %tobool28 = icmp ne i32 %20, 0, !dbg !4094
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !4096

if.then29:                                        ; preds = %if.end23
  br label %end, !dbg !4097

if.end30:                                         ; preds = %if.end23
  %21 = load ptr, ptr %pr.addr, align 8, !dbg !4098
  %throttling31 = getelementptr inbounds %struct.acpi_processor, ptr %21, i32 0, i32 10, !dbg !4100
  %state = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling31, i32 0, i32 0, !dbg !4101
  %22 = load i32, ptr %state, align 8, !dbg !4101
  %tobool32 = icmp ne i32 %22, 0, !dbg !4098
  br i1 %tobool32, label %if.then33, label %if.end39, !dbg !4102

if.then33:                                        ; preds = %if.end30
  store i32 0, ptr %tmp34, align 4, !dbg !4103
  %23 = load i32, ptr %tmp34, align 4, !dbg !4107
  %24 = load ptr, ptr %pr.addr, align 8, !dbg !4108
  %call35 = call i32 @acpi_processor_set_throttling(ptr noundef %24, i32 noundef 0, i1 noundef zeroext false) #17, !dbg !4109
  store i32 %call35, ptr %result, align 4, !dbg !4110
  %25 = load i32, ptr %result, align 4, !dbg !4111
  %tobool36 = icmp ne i32 %25, 0, !dbg !4111
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !4113

if.then37:                                        ; preds = %if.then33
  br label %end, !dbg !4114

if.end38:                                         ; preds = %if.then33
  br label %if.end39, !dbg !4115

if.end39:                                         ; preds = %if.end38, %if.end30
  br label %end, !dbg !4101

end:                                              ; preds = %if.end39, %if.then37, %if.then29
  call void @llvm.dbg.label(metadata !4010), !dbg !4116
  %26 = load i32, ptr %result, align 4, !dbg !4117
  %tobool40 = icmp ne i32 %26, 0, !dbg !4117
  br i1 %tobool40, label %if.then41, label %if.end46, !dbg !4119

if.then41:                                        ; preds = %end
  %27 = load ptr, ptr %pr.addr, align 8, !dbg !4120
  %flags42 = getelementptr inbounds %struct.acpi_processor, ptr %27, i32 0, i32 7, !dbg !4121
  %bf.load43 = load i16, ptr %flags42, align 8, !dbg !4122
  %bf.clear44 = and i16 %bf.load43, -5, !dbg !4122
  %bf.set45 = or i16 %bf.clear44, 0, !dbg !4122
  store i16 %bf.set45, ptr %flags42, align 8, !dbg !4122
  br label %if.end46, !dbg !4120

if.end46:                                         ; preds = %if.then41, %end
  %28 = load i32, ptr %result, align 4, !dbg !4123
  store i32 %28, ptr %retval, align 4, !dbg !4124
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4124

cleanup:                                          ; preds = %if.end46, %if.then21, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %pthrottling) #18, !dbg !4125
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #18, !dbg !4125
  %29 = load i32, ptr %retval, align 4, !dbg !4125
  ret i32 %29, !dbg !4125
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_processor_get_throttling_control(ptr noundef %pr) #0 align 16 !dbg !4126 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %status = alloca i32, align 4
  %buffer = alloca %struct.acpi_buffer, align 8
  %ptc = alloca ptr, align 8
  %obj = alloca %union.acpi_object, align 8
  %throttling = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %tmp77 = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !4128, metadata !DIExpression()), !dbg !4140
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #18, !dbg !4141
  call void @llvm.dbg.declare(metadata ptr %result, metadata !4129, metadata !DIExpression()), !dbg !4142
  store i32 0, ptr %result, align 4, !dbg !4142
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #18, !dbg !4143
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4130, metadata !DIExpression()), !dbg !4144
  store i32 0, ptr %status, align 4, !dbg !4144
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #18, !dbg !4145
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !4131, metadata !DIExpression()), !dbg !4146
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer, ptr align 8 @__const.acpi_processor_get_throttling_control.buffer, i64 16, i1 false), !dbg !4146
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptc) #18, !dbg !4147
  call void @llvm.dbg.declare(metadata ptr %ptc, metadata !4136, metadata !DIExpression()), !dbg !4148
  store ptr null, ptr %ptc, align 8, !dbg !4148
  call void @llvm.lifetime.start.p0(i64 24, ptr %obj) #18, !dbg !4149
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !4137, metadata !DIExpression()), !dbg !4150
  call void @llvm.lifetime.start.p0(i64 8, ptr %throttling) #18, !dbg !4151
  call void @llvm.dbg.declare(metadata ptr %throttling, metadata !4138, metadata !DIExpression()), !dbg !4152
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !4153
  %handle = getelementptr inbounds %struct.acpi_processor, ptr %0, i32 0, i32 0, !dbg !4154
  %1 = load ptr, ptr %handle, align 8, !dbg !4154
  %call = call i32 @acpi_evaluate_object(ptr noundef %1, ptr noundef @.str.4, ptr noundef null, ptr noundef %buffer) #17, !dbg !4155
  store i32 %call, ptr %status, align 4, !dbg !4156
  %2 = load i32, ptr %status, align 4, !dbg !4157
  %tobool = icmp ne i32 %2, 0, !dbg !4157
  br i1 %tobool, label %if.then, label %if.end3, !dbg !4159

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !4160
  %cmp = icmp ne i32 %3, 5, !dbg !4163
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4164

if.then1:                                         ; preds = %if.then
  %4 = load ptr, ptr %pr.addr, align 8, !dbg !4165
  %handle2 = getelementptr inbounds %struct.acpi_processor, ptr %4, i32 0, i32 0, !dbg !4166
  %5 = load ptr, ptr %handle2, align 8, !dbg !4166
  %6 = load i32, ptr %status, align 4, !dbg !4167
  call void @acpi_evaluation_failure_warn(ptr noundef %5, ptr noundef @.str.4, i32 noundef %6) #17, !dbg !4168
  br label %if.end, !dbg !4168

if.end:                                           ; preds = %if.then1, %if.then
  store i32 -19, ptr %retval, align 4, !dbg !4169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4169

if.end3:                                          ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !4170
  %7 = load ptr, ptr %pointer, align 8, !dbg !4170
  store ptr %7, ptr %ptc, align 8, !dbg !4171
  %8 = load ptr, ptr %ptc, align 8, !dbg !4172
  %tobool4 = icmp ne ptr %8, null, !dbg !4172
  br i1 %tobool4, label %lor.lhs.false, label %if.then8, !dbg !4174

lor.lhs.false:                                    ; preds = %if.end3
  %9 = load ptr, ptr %ptc, align 8, !dbg !4175
  %10 = load i32, ptr %9, align 8, !dbg !4176
  %cmp5 = icmp ne i32 %10, 4, !dbg !4177
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6, !dbg !4178

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %11 = load ptr, ptr %ptc, align 8, !dbg !4179
  %count = getelementptr inbounds %struct.anon.21, ptr %11, i32 0, i32 1, !dbg !4180
  %12 = load i32, ptr %count, align 4, !dbg !4180
  %cmp7 = icmp ne i32 %12, 2, !dbg !4181
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !4182

if.then8:                                         ; preds = %lor.lhs.false6, %lor.lhs.false, %if.end3
  br label %do.body, !dbg !4183

do.body:                                          ; preds = %if.then8
  br label %do.cond, !dbg !4186

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4186

do.end:                                           ; preds = %do.cond
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #19, !dbg !4183
  store i32 %call9, ptr %tmp, align 4, !dbg !4186
  %13 = load i32, ptr %tmp, align 4, !dbg !4183
  store i32 -14, ptr %result, align 4, !dbg !4188
  br label %end, !dbg !4189

if.end10:                                         ; preds = %lor.lhs.false6
  %14 = load ptr, ptr %ptc, align 8, !dbg !4190
  %elements = getelementptr inbounds %struct.anon.21, ptr %14, i32 0, i32 2, !dbg !4191
  %15 = load ptr, ptr %elements, align 8, !dbg !4191
  %arrayidx = getelementptr %union.acpi_object, ptr %15, i64 0, !dbg !4190
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %obj, ptr align 8 %arrayidx, i64 24, i1 false), !dbg !4190
  %16 = load i32, ptr %obj, align 8, !dbg !4192
  %cmp11 = icmp ne i32 %16, 3, !dbg !4194
  br i1 %cmp11, label %if.then19, label %lor.lhs.false12, !dbg !4195

lor.lhs.false12:                                  ; preds = %if.end10
  %length = getelementptr inbounds %struct.anon.20, ptr %obj, i32 0, i32 1, !dbg !4196
  %17 = load i32, ptr %length, align 4, !dbg !4196
  %conv = zext i32 %17 to i64, !dbg !4197
  %cmp13 = icmp ult i64 %conv, 15, !dbg !4198
  br i1 %cmp13, label %if.then19, label %lor.lhs.false15, !dbg !4199

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %pointer16 = getelementptr inbounds %struct.anon.20, ptr %obj, i32 0, i32 2, !dbg !4200
  %18 = load ptr, ptr %pointer16, align 8, !dbg !4200
  %cmp17 = icmp eq ptr %18, null, !dbg !4201
  br i1 %cmp17, label %if.then19, label %if.end25, !dbg !4202

if.then19:                                        ; preds = %lor.lhs.false15, %lor.lhs.false12, %if.end10
  br label %do.body20, !dbg !4203

do.body20:                                        ; preds = %if.then19
  br label %do.cond21, !dbg !4206

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !4206

do.end22:                                         ; preds = %do.cond21
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #19, !dbg !4203
  store i32 %call24, ptr %tmp23, align 4, !dbg !4206
  %19 = load i32, ptr %tmp23, align 4, !dbg !4203
  store i32 -14, ptr %result, align 4, !dbg !4208
  br label %end, !dbg !4209

if.end25:                                         ; preds = %lor.lhs.false15
  %20 = load ptr, ptr %pr.addr, align 8, !dbg !4210
  %throttling26 = getelementptr inbounds %struct.acpi_processor, ptr %20, i32 0, i32 10, !dbg !4211
  %control_register = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling26, i32 0, i32 2, !dbg !4212
  %pointer27 = getelementptr inbounds %struct.anon.20, ptr %obj, i32 0, i32 2, !dbg !4213
  %21 = load ptr, ptr %pointer27, align 8, !dbg !4213
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %control_register, ptr align 1 %21, i64 15, i1 false), !dbg !4214
  %22 = load ptr, ptr %ptc, align 8, !dbg !4215
  %elements28 = getelementptr inbounds %struct.anon.21, ptr %22, i32 0, i32 2, !dbg !4216
  %23 = load ptr, ptr %elements28, align 8, !dbg !4216
  %arrayidx29 = getelementptr %union.acpi_object, ptr %23, i64 1, !dbg !4215
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %obj, ptr align 8 %arrayidx29, i64 24, i1 false), !dbg !4215
  %24 = load i32, ptr %obj, align 8, !dbg !4217
  %cmp30 = icmp ne i32 %24, 3, !dbg !4219
  br i1 %cmp30, label %if.then41, label %lor.lhs.false32, !dbg !4220

lor.lhs.false32:                                  ; preds = %if.end25
  %length33 = getelementptr inbounds %struct.anon.20, ptr %obj, i32 0, i32 1, !dbg !4221
  %25 = load i32, ptr %length33, align 4, !dbg !4221
  %conv34 = zext i32 %25 to i64, !dbg !4222
  %cmp35 = icmp ult i64 %conv34, 15, !dbg !4223
  br i1 %cmp35, label %if.then41, label %lor.lhs.false37, !dbg !4224

lor.lhs.false37:                                  ; preds = %lor.lhs.false32
  %pointer38 = getelementptr inbounds %struct.anon.20, ptr %obj, i32 0, i32 2, !dbg !4225
  %26 = load ptr, ptr %pointer38, align 8, !dbg !4225
  %cmp39 = icmp eq ptr %26, null, !dbg !4226
  br i1 %cmp39, label %if.then41, label %if.end47, !dbg !4227

if.then41:                                        ; preds = %lor.lhs.false37, %lor.lhs.false32, %if.end25
  br label %do.body42, !dbg !4228

do.body42:                                        ; preds = %if.then41
  br label %do.cond43, !dbg !4231

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !4231

do.end44:                                         ; preds = %do.cond43
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #19, !dbg !4228
  store i32 %call46, ptr %tmp45, align 4, !dbg !4231
  %27 = load i32, ptr %tmp45, align 4, !dbg !4228
  store i32 -14, ptr %result, align 4, !dbg !4233
  br label %end, !dbg !4234

if.end47:                                         ; preds = %lor.lhs.false37
  %28 = load ptr, ptr %pr.addr, align 8, !dbg !4235
  %throttling48 = getelementptr inbounds %struct.acpi_processor, ptr %28, i32 0, i32 10, !dbg !4236
  %status_register = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling48, i32 0, i32 3, !dbg !4237
  %pointer49 = getelementptr inbounds %struct.anon.20, ptr %obj, i32 0, i32 2, !dbg !4238
  %29 = load ptr, ptr %pointer49, align 8, !dbg !4238
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %status_register, ptr align 1 %29, i64 15, i1 false), !dbg !4239
  %30 = load ptr, ptr %pr.addr, align 8, !dbg !4240
  %throttling50 = getelementptr inbounds %struct.acpi_processor, ptr %30, i32 0, i32 10, !dbg !4241
  store ptr %throttling50, ptr %throttling, align 8, !dbg !4242
  %31 = load ptr, ptr %throttling, align 8, !dbg !4243
  %control_register51 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %31, i32 0, i32 2, !dbg !4245
  %bit_width = getelementptr inbounds %struct.acpi_pct_register, ptr %control_register51, i32 0, i32 3, !dbg !4246
  %32 = load i8, ptr %bit_width, align 4, !dbg !4246
  %conv52 = zext i8 %32 to i32, !dbg !4243
  %33 = load ptr, ptr %throttling, align 8, !dbg !4247
  %control_register53 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %33, i32 0, i32 2, !dbg !4248
  %bit_offset = getelementptr inbounds %struct.acpi_pct_register, ptr %control_register53, i32 0, i32 4, !dbg !4249
  %34 = load i8, ptr %bit_offset, align 1, !dbg !4249
  %conv54 = zext i8 %34 to i32, !dbg !4247
  %add = add i32 %conv52, %conv54, !dbg !4250
  %cmp55 = icmp sgt i32 %add, 32, !dbg !4251
  br i1 %cmp55, label %if.then57, label %if.end63, !dbg !4252

if.then57:                                        ; preds = %if.end47
  br label %do.body58, !dbg !4253

do.body58:                                        ; preds = %if.then57
  br label %do.cond59, !dbg !4256

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !4256

do.end60:                                         ; preds = %do.cond59
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #19, !dbg !4253
  store i32 %call62, ptr %tmp61, align 4, !dbg !4256
  %35 = load i32, ptr %tmp61, align 4, !dbg !4253
  store i32 -14, ptr %result, align 4, !dbg !4258
  br label %end, !dbg !4259

if.end63:                                         ; preds = %if.end47
  %36 = load ptr, ptr %throttling, align 8, !dbg !4260
  %status_register64 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %36, i32 0, i32 3, !dbg !4262
  %bit_width65 = getelementptr inbounds %struct.acpi_pct_register, ptr %status_register64, i32 0, i32 3, !dbg !4263
  %37 = load i8, ptr %bit_width65, align 1, !dbg !4263
  %conv66 = zext i8 %37 to i32, !dbg !4260
  %38 = load ptr, ptr %throttling, align 8, !dbg !4264
  %status_register67 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %38, i32 0, i32 3, !dbg !4265
  %bit_offset68 = getelementptr inbounds %struct.acpi_pct_register, ptr %status_register67, i32 0, i32 4, !dbg !4266
  %39 = load i8, ptr %bit_offset68, align 1, !dbg !4266
  %conv69 = zext i8 %39 to i32, !dbg !4264
  %add70 = add i32 %conv66, %conv69, !dbg !4267
  %cmp71 = icmp sgt i32 %add70, 32, !dbg !4268
  br i1 %cmp71, label %if.then73, label %if.end79, !dbg !4269

if.then73:                                        ; preds = %if.end63
  br label %do.body74, !dbg !4270

do.body74:                                        ; preds = %if.then73
  br label %do.cond75, !dbg !4273

do.cond75:                                        ; preds = %do.body74
  br label %do.end76, !dbg !4273

do.end76:                                         ; preds = %do.cond75
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9) #19, !dbg !4270
  store i32 %call78, ptr %tmp77, align 4, !dbg !4273
  %40 = load i32, ptr %tmp77, align 4, !dbg !4270
  store i32 -14, ptr %result, align 4, !dbg !4275
  br label %end, !dbg !4276

if.end79:                                         ; preds = %if.end63
  br label %end, !dbg !4277

end:                                              ; preds = %if.end79, %do.end76, %do.end60, %do.end44, %do.end22, %do.end
  call void @llvm.dbg.label(metadata !4139), !dbg !4278
  %pointer80 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !4279
  %41 = load ptr, ptr %pointer80, align 8, !dbg !4279
  call void @kfree(ptr noundef %41) #17, !dbg !4280
  %42 = load i32, ptr %result, align 4, !dbg !4281
  store i32 %42, ptr %retval, align 4, !dbg !4282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4282

cleanup:                                          ; preds = %end, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %throttling) #18, !dbg !4283
  call void @llvm.lifetime.end.p0(i64 24, ptr %obj) #18, !dbg !4283
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptc) #18, !dbg !4283
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #18, !dbg !4283
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #18, !dbg !4283
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #18, !dbg !4283
  %43 = load i32, ptr %retval, align 4, !dbg !4283
  ret i32 %43, !dbg !4283
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_processor_get_throttling_states(ptr noundef %pr) #0 align 16 !dbg !4284 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %status = alloca i32, align 4
  %buffer = alloca %struct.acpi_buffer, align 8
  %format = alloca %struct.acpi_buffer, align 8
  %state = alloca %struct.acpi_buffer, align 8
  %tss = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tx = alloca ptr, align 8
  %tmp25 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !4286, metadata !DIExpression()), !dbg !4299
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #18, !dbg !4300
  call void @llvm.dbg.declare(metadata ptr %result, metadata !4287, metadata !DIExpression()), !dbg !4301
  store i32 0, ptr %result, align 4, !dbg !4301
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #18, !dbg !4302
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4288, metadata !DIExpression()), !dbg !4303
  store i32 0, ptr %status, align 4, !dbg !4303
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #18, !dbg !4304
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !4289, metadata !DIExpression()), !dbg !4305
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer, ptr align 8 @__const.acpi_processor_get_throttling_states.buffer, i64 16, i1 false), !dbg !4305
  call void @llvm.lifetime.start.p0(i64 16, ptr %format) #18, !dbg !4306
  call void @llvm.dbg.declare(metadata ptr %format, metadata !4290, metadata !DIExpression()), !dbg !4307
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %format, ptr align 8 @__const.acpi_processor_get_throttling_states.format, i64 16, i1 false), !dbg !4307
  call void @llvm.lifetime.start.p0(i64 16, ptr %state) #18, !dbg !4308
  call void @llvm.dbg.declare(metadata ptr %state, metadata !4291, metadata !DIExpression()), !dbg !4309
  call void @llvm.memset.p0.i64(ptr align 8 %state, i8 0, i64 16, i1 false), !dbg !4309
  call void @llvm.lifetime.start.p0(i64 8, ptr %tss) #18, !dbg !4310
  call void @llvm.dbg.declare(metadata ptr %tss, metadata !4292, metadata !DIExpression()), !dbg !4311
  store ptr null, ptr %tss, align 8, !dbg !4311
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !4312
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4293, metadata !DIExpression()), !dbg !4313
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !4314
  %handle = getelementptr inbounds %struct.acpi_processor, ptr %0, i32 0, i32 0, !dbg !4315
  %1 = load ptr, ptr %handle, align 8, !dbg !4315
  %call = call i32 @acpi_evaluate_object(ptr noundef %1, ptr noundef @.str.11, ptr noundef null, ptr noundef %buffer) #17, !dbg !4316
  store i32 %call, ptr %status, align 4, !dbg !4317
  %2 = load i32, ptr %status, align 4, !dbg !4318
  %tobool = icmp ne i32 %2, 0, !dbg !4318
  br i1 %tobool, label %if.then, label %if.end3, !dbg !4320

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !4321
  %cmp = icmp ne i32 %3, 5, !dbg !4324
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4325

if.then1:                                         ; preds = %if.then
  %4 = load ptr, ptr %pr.addr, align 8, !dbg !4326
  %handle2 = getelementptr inbounds %struct.acpi_processor, ptr %4, i32 0, i32 0, !dbg !4327
  %5 = load ptr, ptr %handle2, align 8, !dbg !4327
  %6 = load i32, ptr %status, align 4, !dbg !4328
  call void @acpi_evaluation_failure_warn(ptr noundef %5, ptr noundef @.str.11, i32 noundef %6) #17, !dbg !4329
  br label %if.end, !dbg !4329

if.end:                                           ; preds = %if.then1, %if.then
  store i32 -19, ptr %retval, align 4, !dbg !4330
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup47, !dbg !4330

if.end3:                                          ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !4331
  %7 = load ptr, ptr %pointer, align 8, !dbg !4331
  store ptr %7, ptr %tss, align 8, !dbg !4332
  %8 = load ptr, ptr %tss, align 8, !dbg !4333
  %tobool4 = icmp ne ptr %8, null, !dbg !4333
  br i1 %tobool4, label %lor.lhs.false, label %if.then6, !dbg !4335

lor.lhs.false:                                    ; preds = %if.end3
  %9 = load ptr, ptr %tss, align 8, !dbg !4336
  %10 = load i32, ptr %9, align 8, !dbg !4337
  %cmp5 = icmp ne i32 %10, 4, !dbg !4338
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !4339

if.then6:                                         ; preds = %lor.lhs.false, %if.end3
  br label %do.body, !dbg !4340

do.body:                                          ; preds = %if.then6
  br label %do.cond, !dbg !4343

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4343

do.end:                                           ; preds = %do.cond
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12) #19, !dbg !4340
  store i32 %call7, ptr %tmp, align 4, !dbg !4343
  %11 = load i32, ptr %tmp, align 4, !dbg !4340
  store i32 -14, ptr %result, align 4, !dbg !4345
  br label %end, !dbg !4346

if.end8:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %tmp9, align 4, !dbg !4347
  %12 = load i32, ptr %tmp9, align 4, !dbg !4350
  %13 = load ptr, ptr %tss, align 8, !dbg !4351
  %count = getelementptr inbounds %struct.anon.21, ptr %13, i32 0, i32 1, !dbg !4352
  %14 = load i32, ptr %count, align 4, !dbg !4352
  %15 = load ptr, ptr %pr.addr, align 8, !dbg !4353
  %throttling = getelementptr inbounds %struct.acpi_processor, ptr %15, i32 0, i32 10, !dbg !4354
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling, i32 0, i32 4, !dbg !4355
  store i32 %14, ptr %state_count, align 8, !dbg !4356
  %16 = load ptr, ptr %tss, align 8, !dbg !4357
  %count10 = getelementptr inbounds %struct.anon.21, ptr %16, i32 0, i32 1, !dbg !4358
  %17 = load i32, ptr %count10, align 4, !dbg !4358
  %conv = zext i32 %17 to i64, !dbg !4357
  %call11 = call noalias ptr @kmalloc_array(i64 noundef %conv, i64 noundef 40, i32 noundef 3264) #20, !dbg !4359
  %18 = load ptr, ptr %pr.addr, align 8, !dbg !4360
  %throttling12 = getelementptr inbounds %struct.acpi_processor, ptr %18, i32 0, i32 10, !dbg !4361
  %states_tss = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling12, i32 0, i32 5, !dbg !4362
  store ptr %call11, ptr %states_tss, align 8, !dbg !4363
  %19 = load ptr, ptr %pr.addr, align 8, !dbg !4364
  %throttling13 = getelementptr inbounds %struct.acpi_processor, ptr %19, i32 0, i32 10, !dbg !4366
  %states_tss14 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling13, i32 0, i32 5, !dbg !4367
  %20 = load ptr, ptr %states_tss14, align 8, !dbg !4367
  %tobool15 = icmp ne ptr %20, null, !dbg !4364
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !4368

if.then16:                                        ; preds = %if.end8
  store i32 -12, ptr %result, align 4, !dbg !4369
  br label %end, !dbg !4371

if.end17:                                         ; preds = %if.end8
  store i32 0, ptr %i, align 4, !dbg !4372
  br label %for.cond, !dbg !4373

for.cond:                                         ; preds = %for.inc, %if.end17
  %21 = load i32, ptr %i, align 4, !dbg !4374
  %22 = load ptr, ptr %pr.addr, align 8, !dbg !4375
  %throttling18 = getelementptr inbounds %struct.acpi_processor, ptr %22, i32 0, i32 10, !dbg !4376
  %state_count19 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling18, i32 0, i32 4, !dbg !4377
  %23 = load i32, ptr %state_count19, align 8, !dbg !4377
  %cmp20 = icmp ult i32 %21, %23, !dbg !4378
  br i1 %cmp20, label %for.body, label %for.end, !dbg !4379

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tx) #18, !dbg !4380
  call void @llvm.dbg.declare(metadata ptr %tx, metadata !4294, metadata !DIExpression()), !dbg !4381
  %24 = load ptr, ptr %pr.addr, align 8, !dbg !4382
  %throttling22 = getelementptr inbounds %struct.acpi_processor, ptr %24, i32 0, i32 10, !dbg !4383
  %states_tss23 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling22, i32 0, i32 5, !dbg !4384
  %25 = load ptr, ptr %states_tss23, align 8, !dbg !4384
  %26 = load i32, ptr %i, align 4, !dbg !4385
  %idxprom = sext i32 %26 to i64, !dbg !4382
  %arrayidx = getelementptr %struct.acpi_processor_tx_tss, ptr %25, i64 %idxprom, !dbg !4382
  store ptr %arrayidx, ptr %tx, align 8, !dbg !4381
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %state, i32 0, i32 0, !dbg !4386
  store i64 40, ptr %length, align 8, !dbg !4387
  %27 = load ptr, ptr %tx, align 8, !dbg !4388
  %pointer24 = getelementptr inbounds %struct.acpi_buffer, ptr %state, i32 0, i32 1, !dbg !4389
  store ptr %27, ptr %pointer24, align 8, !dbg !4390
  store i32 0, ptr %tmp25, align 4, !dbg !4391
  %28 = load i32, ptr %tmp25, align 4, !dbg !4394
  %29 = load ptr, ptr %tss, align 8, !dbg !4395
  %elements = getelementptr inbounds %struct.anon.21, ptr %29, i32 0, i32 2, !dbg !4396
  %30 = load ptr, ptr %elements, align 8, !dbg !4396
  %31 = load i32, ptr %i, align 4, !dbg !4397
  %idxprom26 = sext i32 %31 to i64, !dbg !4395
  %arrayidx27 = getelementptr %union.acpi_object, ptr %30, i64 %idxprom26, !dbg !4395
  %call28 = call i32 @acpi_extract_package(ptr noundef %arrayidx27, ptr noundef %format, ptr noundef %state) #17, !dbg !4398
  store i32 %call28, ptr %status, align 4, !dbg !4399
  %32 = load i32, ptr %status, align 4, !dbg !4400
  %tobool29 = icmp ne i32 %32, 0, !dbg !4400
  br i1 %tobool29, label %if.then30, label %if.end35, !dbg !4402

if.then30:                                        ; preds = %for.body
  %33 = load ptr, ptr %pr.addr, align 8, !dbg !4403
  %handle31 = getelementptr inbounds %struct.acpi_processor, ptr %33, i32 0, i32 0, !dbg !4403
  %34 = load ptr, ptr %handle31, align 8, !dbg !4403
  %35 = load i32, ptr %status, align 4, !dbg !4403
  %call32 = call ptr @acpi_format_exception(i32 noundef %35) #17, !dbg !4403
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.13, ptr noundef %34, ptr noundef @.str.14, ptr noundef %call32) #17, !dbg !4403
  store i32 -14, ptr %result, align 4, !dbg !4405
  %36 = load ptr, ptr %pr.addr, align 8, !dbg !4406
  %throttling33 = getelementptr inbounds %struct.acpi_processor, ptr %36, i32 0, i32 10, !dbg !4407
  %states_tss34 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling33, i32 0, i32 5, !dbg !4408
  %37 = load ptr, ptr %states_tss34, align 8, !dbg !4408
  call void @kfree(ptr noundef %37) #17, !dbg !4409
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4410

if.end35:                                         ; preds = %for.body
  %38 = load ptr, ptr %tx, align 8, !dbg !4411
  %freqpercentage = getelementptr inbounds %struct.acpi_processor_tx_tss, ptr %38, i32 0, i32 0, !dbg !4413
  %39 = load i64, ptr %freqpercentage, align 8, !dbg !4413
  %tobool36 = icmp ne i64 %39, 0, !dbg !4411
  br i1 %tobool36, label %if.end45, label %if.then37, !dbg !4414

if.then37:                                        ; preds = %if.end35
  br label %do.body38, !dbg !4415

do.body38:                                        ; preds = %if.then37
  br label %do.cond39, !dbg !4418

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !4418

do.end40:                                         ; preds = %do.cond39
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef @.str.15) #19, !dbg !4415
  store i32 %call42, ptr %tmp41, align 4, !dbg !4418
  %40 = load i32, ptr %tmp41, align 4, !dbg !4415
  store i32 -14, ptr %result, align 4, !dbg !4420
  %41 = load ptr, ptr %pr.addr, align 8, !dbg !4421
  %throttling43 = getelementptr inbounds %struct.acpi_processor, ptr %41, i32 0, i32 10, !dbg !4422
  %states_tss44 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling43, i32 0, i32 5, !dbg !4423
  %42 = load ptr, ptr %states_tss44, align 8, !dbg !4423
  call void @kfree(ptr noundef %42) #17, !dbg !4424
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4425

if.end45:                                         ; preds = %if.end35
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4426
  br label %cleanup, !dbg !4426

cleanup:                                          ; preds = %do.end40, %if.then30, %if.end45
  call void @llvm.lifetime.end.p0(i64 8, ptr %tx) #18, !dbg !4426
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup47 [
    i32 0, label %cleanup.cont
    i32 4, label %end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4427

for.inc:                                          ; preds = %cleanup.cont
  %43 = load i32, ptr %i, align 4, !dbg !4428
  %inc = add i32 %43, 1, !dbg !4428
  store i32 %inc, ptr %i, align 4, !dbg !4428
  br label %for.cond, !dbg !4429, !llvm.loop !4430

for.end:                                          ; preds = %for.cond
  br label %end, !dbg !4431

end:                                              ; preds = %for.end, %cleanup, %if.then16, %do.end
  call void @llvm.dbg.label(metadata !4298), !dbg !4432
  %pointer46 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !4433
  %44 = load ptr, ptr %pointer46, align 8, !dbg !4433
  call void @kfree(ptr noundef %44) #17, !dbg !4434
  %45 = load i32, ptr %result, align 4, !dbg !4435
  store i32 %45, ptr %retval, align 4, !dbg !4436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup47, !dbg !4436

cleanup47:                                        ; preds = %end, %cleanup, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !4437
  call void @llvm.lifetime.end.p0(i64 8, ptr %tss) #18, !dbg !4437
  call void @llvm.lifetime.end.p0(i64 16, ptr %state) #18, !dbg !4437
  call void @llvm.lifetime.end.p0(i64 16, ptr %format) #18, !dbg !4437
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #18, !dbg !4437
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #18, !dbg !4437
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #18, !dbg !4437
  %46 = load i32, ptr %retval, align 4, !dbg !4437
  ret i32 %46, !dbg !4437
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_processor_get_throttling_fadt(ptr noundef %pr) #0 align 16 !dbg !4438 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca ptr, align 8
  %state = alloca i32, align 4
  %value = alloca i32, align 4
  %duty_mask = alloca i32, align 4
  %duty_value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !4440, metadata !DIExpression()), !dbg !4445
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #18, !dbg !4446
  call void @llvm.dbg.declare(metadata ptr %state, metadata !4441, metadata !DIExpression()), !dbg !4447
  store i32 0, ptr %state, align 4, !dbg !4447
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #18, !dbg !4448
  call void @llvm.dbg.declare(metadata ptr %value, metadata !4442, metadata !DIExpression()), !dbg !4449
  store i32 0, ptr %value, align 4, !dbg !4449
  call void @llvm.lifetime.start.p0(i64 4, ptr %duty_mask) #18, !dbg !4450
  call void @llvm.dbg.declare(metadata ptr %duty_mask, metadata !4443, metadata !DIExpression()), !dbg !4451
  store i32 0, ptr %duty_mask, align 4, !dbg !4451
  call void @llvm.lifetime.start.p0(i64 4, ptr %duty_value) #18, !dbg !4452
  call void @llvm.dbg.declare(metadata ptr %duty_value, metadata !4444, metadata !DIExpression()), !dbg !4453
  store i32 0, ptr %duty_value, align 4, !dbg !4453
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !4454
  %tobool = icmp ne ptr %0, null, !dbg !4454
  br i1 %tobool, label %if.end, label %if.then, !dbg !4456

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4457
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4457

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pr.addr, align 8, !dbg !4458
  %flags = getelementptr inbounds %struct.acpi_processor, ptr %1, i32 0, i32 7, !dbg !4460
  %bf.load = load i16, ptr %flags, align 8, !dbg !4461
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !4461
  %bf.clear = and i16 %bf.lshr, 1, !dbg !4461
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !4461
  %tobool1 = icmp ne i8 %bf.cast, 0, !dbg !4458
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4462

if.then2:                                         ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !4463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4463

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %pr.addr, align 8, !dbg !4464
  %throttling = getelementptr inbounds %struct.acpi_processor, ptr %2, i32 0, i32 10, !dbg !4464
  %address = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling, i32 0, i32 10, !dbg !4464
  %3 = load i32, ptr %address, align 8, !dbg !4464
  %conv = zext i32 %3 to i64, !dbg !4464
  %call = call ptr @__request_region(ptr noundef @ioport_resource, i64 noundef %conv, i64 noundef 6, ptr noundef @.str.17, i32 noundef 0) #17, !dbg !4464
  %4 = load ptr, ptr %pr.addr, align 8, !dbg !4465
  %throttling4 = getelementptr inbounds %struct.acpi_processor, ptr %4, i32 0, i32 10, !dbg !4466
  %state5 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling4, i32 0, i32 0, !dbg !4467
  store i32 0, ptr %state5, align 8, !dbg !4468
  %5 = load ptr, ptr %pr.addr, align 8, !dbg !4469
  %throttling6 = getelementptr inbounds %struct.acpi_processor, ptr %5, i32 0, i32 10, !dbg !4470
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling6, i32 0, i32 4, !dbg !4471
  %6 = load i32, ptr %state_count, align 8, !dbg !4471
  %sub = sub i32 %6, 1, !dbg !4472
  store i32 %sub, ptr %duty_mask, align 4, !dbg !4473
  %7 = load ptr, ptr %pr.addr, align 8, !dbg !4474
  %throttling7 = getelementptr inbounds %struct.acpi_processor, ptr %7, i32 0, i32 10, !dbg !4475
  %duty_offset = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling7, i32 0, i32 11, !dbg !4476
  %8 = load i8, ptr %duty_offset, align 4, !dbg !4476
  %conv8 = zext i8 %8 to i32, !dbg !4474
  %9 = load i32, ptr %duty_mask, align 4, !dbg !4477
  %shl = shl i32 %9, %conv8, !dbg !4477
  store i32 %shl, ptr %duty_mask, align 4, !dbg !4477
  br label %do.body, !dbg !4478

do.body:                                          ; preds = %if.end3
  call void @arch_local_irq_disable() #17, !dbg !4479
  br label %do.cond, !dbg !4479

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4479

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %pr.addr, align 8, !dbg !4481
  %throttling9 = getelementptr inbounds %struct.acpi_processor, ptr %10, i32 0, i32 10, !dbg !4482
  %address10 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling9, i32 0, i32 10, !dbg !4483
  %11 = load i32, ptr %address10, align 8, !dbg !4483
  %conv11 = trunc i32 %11 to i16, !dbg !4481
  %call12 = call i32 @__inl(i16 noundef zeroext %conv11) #17, !dbg !4484
  store i32 %call12, ptr %value, align 4, !dbg !4485
  %12 = load i32, ptr %value, align 4, !dbg !4486
  %and = and i32 %12, 16, !dbg !4488
  %tobool13 = icmp ne i32 %and, 0, !dbg !4488
  br i1 %tobool13, label %if.then14, label %if.end25, !dbg !4489

if.then14:                                        ; preds = %do.end
  %13 = load i32, ptr %value, align 4, !dbg !4490
  %14 = load i32, ptr %duty_mask, align 4, !dbg !4492
  %and15 = and i32 %13, %14, !dbg !4493
  store i32 %and15, ptr %duty_value, align 4, !dbg !4494
  %15 = load ptr, ptr %pr.addr, align 8, !dbg !4495
  %throttling16 = getelementptr inbounds %struct.acpi_processor, ptr %15, i32 0, i32 10, !dbg !4496
  %duty_offset17 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling16, i32 0, i32 11, !dbg !4497
  %16 = load i8, ptr %duty_offset17, align 4, !dbg !4497
  %conv18 = zext i8 %16 to i32, !dbg !4495
  %17 = load i32, ptr %duty_value, align 4, !dbg !4498
  %shr = lshr i32 %17, %conv18, !dbg !4498
  store i32 %shr, ptr %duty_value, align 4, !dbg !4498
  %18 = load i32, ptr %duty_value, align 4, !dbg !4499
  %tobool19 = icmp ne i32 %18, 0, !dbg !4499
  br i1 %tobool19, label %if.then20, label %if.end24, !dbg !4501

if.then20:                                        ; preds = %if.then14
  %19 = load ptr, ptr %pr.addr, align 8, !dbg !4502
  %throttling21 = getelementptr inbounds %struct.acpi_processor, ptr %19, i32 0, i32 10, !dbg !4503
  %state_count22 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling21, i32 0, i32 4, !dbg !4504
  %20 = load i32, ptr %state_count22, align 8, !dbg !4504
  %21 = load i32, ptr %duty_value, align 4, !dbg !4505
  %sub23 = sub i32 %20, %21, !dbg !4506
  store i32 %sub23, ptr %state, align 4, !dbg !4507
  br label %if.end24, !dbg !4508

if.end24:                                         ; preds = %if.then20, %if.then14
  br label %if.end25, !dbg !4509

if.end25:                                         ; preds = %if.end24, %do.end
  %22 = load i32, ptr %state, align 4, !dbg !4510
  %23 = load ptr, ptr %pr.addr, align 8, !dbg !4511
  %throttling26 = getelementptr inbounds %struct.acpi_processor, ptr %23, i32 0, i32 10, !dbg !4512
  %state27 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling26, i32 0, i32 0, !dbg !4513
  store i32 %22, ptr %state27, align 8, !dbg !4514
  br label %do.body28, !dbg !4515

do.body28:                                        ; preds = %if.end25
  call void @arch_local_irq_enable() #17, !dbg !4516
  br label %do.cond29, !dbg !4516

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !4516

do.end30:                                         ; preds = %do.cond29
  store i32 0, ptr %tmp, align 4, !dbg !4518
  %24 = load i32, ptr %tmp, align 4, !dbg !4521
  store i32 0, ptr %retval, align 4, !dbg !4522
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4522

cleanup:                                          ; preds = %do.end30, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %duty_value) #18, !dbg !4523
  call void @llvm.lifetime.end.p0(i64 4, ptr %duty_mask) #18, !dbg !4523
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #18, !dbg !4523
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #18, !dbg !4523
  %25 = load i32, ptr %retval, align 4, !dbg !4523
  ret i32 %25, !dbg !4523
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_processor_set_throttling_fadt(ptr noundef %pr, i32 noundef %state, i1 noundef zeroext %force) #0 align 16 !dbg !4524 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  %force.addr = alloca i8, align 1
  %value = alloca i32, align 4
  %duty_mask = alloca i32, align 4
  %duty_value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !4526, metadata !DIExpression()), !dbg !4532
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4527, metadata !DIExpression()), !dbg !4533
  %frombool = zext i1 %force to i8
  store i8 %frombool, ptr %force.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %force.addr, metadata !4528, metadata !DIExpression()), !dbg !4534
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #18, !dbg !4535
  call void @llvm.dbg.declare(metadata ptr %value, metadata !4529, metadata !DIExpression()), !dbg !4536
  store i32 0, ptr %value, align 4, !dbg !4536
  call void @llvm.lifetime.start.p0(i64 4, ptr %duty_mask) #18, !dbg !4537
  call void @llvm.dbg.declare(metadata ptr %duty_mask, metadata !4530, metadata !DIExpression()), !dbg !4538
  store i32 0, ptr %duty_mask, align 4, !dbg !4538
  call void @llvm.lifetime.start.p0(i64 4, ptr %duty_value) #18, !dbg !4539
  call void @llvm.dbg.declare(metadata ptr %duty_value, metadata !4531, metadata !DIExpression()), !dbg !4540
  store i32 0, ptr %duty_value, align 4, !dbg !4540
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !4541
  %tobool = icmp ne ptr %0, null, !dbg !4541
  br i1 %tobool, label %if.end, label %if.then, !dbg !4543

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4544
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4544

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %state.addr, align 4, !dbg !4545
  %cmp = icmp slt i32 %1, 0, !dbg !4547
  br i1 %cmp, label %if.then2, label %lor.lhs.false, !dbg !4548

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, ptr %state.addr, align 4, !dbg !4549
  %3 = load ptr, ptr %pr.addr, align 8, !dbg !4550
  %throttling = getelementptr inbounds %struct.acpi_processor, ptr %3, i32 0, i32 10, !dbg !4551
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling, i32 0, i32 4, !dbg !4552
  %4 = load i32, ptr %state_count, align 8, !dbg !4552
  %sub = sub i32 %4, 1, !dbg !4553
  %cmp1 = icmp ugt i32 %2, %sub, !dbg !4554
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4555

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !4556
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4556

if.end3:                                          ; preds = %lor.lhs.false
  %5 = load ptr, ptr %pr.addr, align 8, !dbg !4557
  %flags = getelementptr inbounds %struct.acpi_processor, ptr %5, i32 0, i32 7, !dbg !4559
  %bf.load = load i16, ptr %flags, align 8, !dbg !4560
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !4560
  %bf.clear = and i16 %bf.lshr, 1, !dbg !4560
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !4560
  %tobool4 = icmp ne i8 %bf.cast, 0, !dbg !4557
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4561

if.then5:                                         ; preds = %if.end3
  store i32 -19, ptr %retval, align 4, !dbg !4562
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4562

if.end6:                                          ; preds = %if.end3
  %6 = load i8, ptr %force.addr, align 1, !dbg !4563, !range !3741, !noundef !372
  %tobool7 = trunc i8 %6 to i1, !dbg !4563
  br i1 %tobool7, label %if.end12, label %land.lhs.true, !dbg !4565

land.lhs.true:                                    ; preds = %if.end6
  %7 = load i32, ptr %state.addr, align 4, !dbg !4566
  %8 = load ptr, ptr %pr.addr, align 8, !dbg !4567
  %throttling8 = getelementptr inbounds %struct.acpi_processor, ptr %8, i32 0, i32 10, !dbg !4568
  %state9 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling8, i32 0, i32 0, !dbg !4569
  %9 = load i32, ptr %state9, align 8, !dbg !4569
  %cmp10 = icmp eq i32 %7, %9, !dbg !4570
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !4571

if.then11:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !4572
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4572

if.end12:                                         ; preds = %land.lhs.true, %if.end6
  %10 = load i32, ptr %state.addr, align 4, !dbg !4573
  %11 = load ptr, ptr %pr.addr, align 8, !dbg !4575
  %throttling_platform_limit = getelementptr inbounds %struct.acpi_processor, ptr %11, i32 0, i32 6, !dbg !4576
  %12 = load i32, ptr %throttling_platform_limit, align 4, !dbg !4576
  %cmp13 = icmp slt i32 %10, %12, !dbg !4577
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !4578

if.then14:                                        ; preds = %if.end12
  store i32 -1, ptr %retval, align 4, !dbg !4579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4579

if.end15:                                         ; preds = %if.end12
  %13 = load i32, ptr %state.addr, align 4, !dbg !4580
  %tobool16 = icmp ne i32 %13, 0, !dbg !4580
  br i1 %tobool16, label %if.then17, label %if.end27, !dbg !4582

if.then17:                                        ; preds = %if.end15
  %14 = load ptr, ptr %pr.addr, align 8, !dbg !4583
  %throttling18 = getelementptr inbounds %struct.acpi_processor, ptr %14, i32 0, i32 10, !dbg !4585
  %state_count19 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling18, i32 0, i32 4, !dbg !4586
  %15 = load i32, ptr %state_count19, align 8, !dbg !4586
  %16 = load i32, ptr %state.addr, align 4, !dbg !4587
  %sub20 = sub i32 %15, %16, !dbg !4588
  store i32 %sub20, ptr %duty_value, align 4, !dbg !4589
  %17 = load ptr, ptr %pr.addr, align 8, !dbg !4590
  %throttling21 = getelementptr inbounds %struct.acpi_processor, ptr %17, i32 0, i32 10, !dbg !4591
  %duty_offset = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling21, i32 0, i32 11, !dbg !4592
  %18 = load i8, ptr %duty_offset, align 4, !dbg !4592
  %conv = zext i8 %18 to i32, !dbg !4590
  %19 = load i32, ptr %duty_value, align 4, !dbg !4593
  %shl = shl i32 %19, %conv, !dbg !4593
  store i32 %shl, ptr %duty_value, align 4, !dbg !4593
  %20 = load ptr, ptr %pr.addr, align 8, !dbg !4594
  %throttling22 = getelementptr inbounds %struct.acpi_processor, ptr %20, i32 0, i32 10, !dbg !4595
  %state_count23 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling22, i32 0, i32 4, !dbg !4596
  %21 = load i32, ptr %state_count23, align 8, !dbg !4596
  %sub24 = sub i32 %21, 1, !dbg !4597
  store i32 %sub24, ptr %duty_mask, align 4, !dbg !4598
  %22 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 31), align 1, !dbg !4599
  %conv25 = zext i8 %22 to i32, !dbg !4600
  %23 = load i32, ptr %duty_mask, align 4, !dbg !4601
  %shl26 = shl i32 %23, %conv25, !dbg !4601
  store i32 %shl26, ptr %duty_mask, align 4, !dbg !4601
  %24 = load i32, ptr %duty_mask, align 4, !dbg !4602
  %not = xor i32 %24, -1, !dbg !4603
  store i32 %not, ptr %duty_mask, align 4, !dbg !4604
  br label %if.end27, !dbg !4605

if.end27:                                         ; preds = %if.then17, %if.end15
  br label %do.body, !dbg !4606

do.body:                                          ; preds = %if.end27
  call void @arch_local_irq_disable() #17, !dbg !4607
  br label %do.cond, !dbg !4607

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4607

do.end:                                           ; preds = %do.cond
  %25 = load ptr, ptr %pr.addr, align 8, !dbg !4609
  %throttling28 = getelementptr inbounds %struct.acpi_processor, ptr %25, i32 0, i32 10, !dbg !4610
  %address = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling28, i32 0, i32 10, !dbg !4611
  %26 = load i32, ptr %address, align 8, !dbg !4611
  %conv29 = trunc i32 %26 to i16, !dbg !4609
  %call = call i32 @__inl(i16 noundef zeroext %conv29) #17, !dbg !4612
  store i32 %call, ptr %value, align 4, !dbg !4613
  %27 = load i32, ptr %value, align 4, !dbg !4614
  %and = and i32 %27, 16, !dbg !4616
  %tobool30 = icmp ne i32 %and, 0, !dbg !4616
  br i1 %tobool30, label %if.then31, label %if.end36, !dbg !4617

if.then31:                                        ; preds = %do.end
  %28 = load i32, ptr %value, align 4, !dbg !4618
  %and32 = and i32 %28, -17, !dbg !4618
  store i32 %and32, ptr %value, align 4, !dbg !4618
  %29 = load i32, ptr %value, align 4, !dbg !4620
  %30 = load ptr, ptr %pr.addr, align 8, !dbg !4621
  %throttling33 = getelementptr inbounds %struct.acpi_processor, ptr %30, i32 0, i32 10, !dbg !4622
  %address34 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling33, i32 0, i32 10, !dbg !4623
  %31 = load i32, ptr %address34, align 8, !dbg !4623
  %conv35 = trunc i32 %31 to i16, !dbg !4621
  call void @__outl(i32 noundef %29, i16 noundef zeroext %conv35) #17, !dbg !4624
  br label %if.end36, !dbg !4625

if.end36:                                         ; preds = %if.then31, %do.end
  %32 = load i32, ptr %state.addr, align 4, !dbg !4626
  %tobool37 = icmp ne i32 %32, 0, !dbg !4626
  br i1 %tobool37, label %if.then38, label %if.end47, !dbg !4628

if.then38:                                        ; preds = %if.end36
  %33 = load i32, ptr %duty_mask, align 4, !dbg !4629
  %34 = load i32, ptr %value, align 4, !dbg !4631
  %and39 = and i32 %34, %33, !dbg !4631
  store i32 %and39, ptr %value, align 4, !dbg !4631
  %35 = load i32, ptr %duty_value, align 4, !dbg !4632
  %36 = load i32, ptr %value, align 4, !dbg !4633
  %or = or i32 %36, %35, !dbg !4633
  store i32 %or, ptr %value, align 4, !dbg !4633
  %37 = load i32, ptr %value, align 4, !dbg !4634
  %38 = load ptr, ptr %pr.addr, align 8, !dbg !4635
  %throttling40 = getelementptr inbounds %struct.acpi_processor, ptr %38, i32 0, i32 10, !dbg !4636
  %address41 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling40, i32 0, i32 10, !dbg !4637
  %39 = load i32, ptr %address41, align 8, !dbg !4637
  %conv42 = trunc i32 %39 to i16, !dbg !4635
  call void @__outl(i32 noundef %37, i16 noundef zeroext %conv42) #17, !dbg !4638
  %40 = load i32, ptr %value, align 4, !dbg !4639
  %or43 = or i32 %40, 16, !dbg !4639
  store i32 %or43, ptr %value, align 4, !dbg !4639
  %41 = load i32, ptr %value, align 4, !dbg !4640
  %42 = load ptr, ptr %pr.addr, align 8, !dbg !4641
  %throttling44 = getelementptr inbounds %struct.acpi_processor, ptr %42, i32 0, i32 10, !dbg !4642
  %address45 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling44, i32 0, i32 10, !dbg !4643
  %43 = load i32, ptr %address45, align 8, !dbg !4643
  %conv46 = trunc i32 %43 to i16, !dbg !4641
  call void @__outl(i32 noundef %41, i16 noundef zeroext %conv46) #17, !dbg !4644
  br label %if.end47, !dbg !4645

if.end47:                                         ; preds = %if.then38, %if.end36
  %44 = load i32, ptr %state.addr, align 4, !dbg !4646
  %45 = load ptr, ptr %pr.addr, align 8, !dbg !4647
  %throttling48 = getelementptr inbounds %struct.acpi_processor, ptr %45, i32 0, i32 10, !dbg !4648
  %state49 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling48, i32 0, i32 0, !dbg !4649
  store i32 %44, ptr %state49, align 8, !dbg !4650
  br label %do.body50, !dbg !4651

do.body50:                                        ; preds = %if.end47
  call void @arch_local_irq_enable() #17, !dbg !4652
  br label %do.cond51, !dbg !4652

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !4652

do.end52:                                         ; preds = %do.cond51
  store i32 0, ptr %tmp, align 4, !dbg !4654
  %46 = load i32, ptr %tmp, align 4, !dbg !4657
  store i32 0, ptr %retval, align 4, !dbg !4658
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4658

cleanup:                                          ; preds = %do.end52, %if.then14, %if.then11, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %duty_value) #18, !dbg !4659
  call void @llvm.lifetime.end.p0(i64 4, ptr %duty_mask) #18, !dbg !4659
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #18, !dbg !4659
  %47 = load i32, ptr %retval, align 4, !dbg !4659
  ret i32 %47, !dbg !4659
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_processor_get_fadt_info(ptr noundef %pr) #0 align 16 !dbg !4660 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %step = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !4662, metadata !DIExpression()), !dbg !4665
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !4666
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4663, metadata !DIExpression()), !dbg !4667
  call void @llvm.lifetime.start.p0(i64 4, ptr %step) #18, !dbg !4666
  call void @llvm.dbg.declare(metadata ptr %step, metadata !4664, metadata !DIExpression()), !dbg !4668
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !4669
  %throttling = getelementptr inbounds %struct.acpi_processor, ptr %0, i32 0, i32 10, !dbg !4671
  %address = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling, i32 0, i32 10, !dbg !4672
  %1 = load i32, ptr %address, align 8, !dbg !4672
  %tobool = icmp ne i32 %1, 0, !dbg !4669
  br i1 %tobool, label %if.else, label %if.then, !dbg !4673

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !4674
  %2 = load i32, ptr %tmp, align 4, !dbg !4678
  store i32 -22, ptr %retval, align 4, !dbg !4679
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4679

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %pr.addr, align 8, !dbg !4680
  %throttling1 = getelementptr inbounds %struct.acpi_processor, ptr %3, i32 0, i32 10, !dbg !4682
  %duty_width = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling1, i32 0, i32 12, !dbg !4683
  %4 = load i8, ptr %duty_width, align 1, !dbg !4683
  %tobool2 = icmp ne i8 %4, 0, !dbg !4680
  br i1 %tobool2, label %if.else5, label %if.then3, !dbg !4684

if.then3:                                         ; preds = %if.else
  store i32 0, ptr %tmp4, align 4, !dbg !4685
  %5 = load i32, ptr %tmp4, align 4, !dbg !4689
  store i32 -22, ptr %retval, align 4, !dbg !4690
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4690

if.else5:                                         ; preds = %if.else
  %6 = load ptr, ptr %pr.addr, align 8, !dbg !4691
  %throttling6 = getelementptr inbounds %struct.acpi_processor, ptr %6, i32 0, i32 10, !dbg !4693
  %duty_offset = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling6, i32 0, i32 11, !dbg !4694
  %7 = load i8, ptr %duty_offset, align 4, !dbg !4694
  %conv = zext i8 %7 to i32, !dbg !4691
  %8 = load ptr, ptr %pr.addr, align 8, !dbg !4695
  %throttling7 = getelementptr inbounds %struct.acpi_processor, ptr %8, i32 0, i32 10, !dbg !4696
  %duty_width8 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling7, i32 0, i32 12, !dbg !4697
  %9 = load i8, ptr %duty_width8, align 1, !dbg !4697
  %conv9 = zext i8 %9 to i32, !dbg !4695
  %add = add i32 %conv, %conv9, !dbg !4698
  %cmp = icmp sgt i32 %add, 4, !dbg !4699
  br i1 %cmp, label %if.then11, label %if.end, !dbg !4700

if.then11:                                        ; preds = %if.else5
  br label %do.body, !dbg !4701

do.body:                                          ; preds = %if.then11
  br label %do.cond, !dbg !4704

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4704

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.18) #19, !dbg !4701
  store i32 %call, ptr %tmp12, align 4, !dbg !4704
  %10 = load i32, ptr %tmp12, align 4, !dbg !4701
  store i32 -22, ptr %retval, align 4, !dbg !4706
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4706

if.end:                                           ; preds = %if.else5
  br label %if.end13

if.end13:                                         ; preds = %if.end
  br label %if.end14

if.end14:                                         ; preds = %if.end13
  %11 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 32), align 1, !dbg !4707
  %conv15 = zext i8 %11 to i32, !dbg !4708
  %shl = shl i32 1, %conv15, !dbg !4709
  %12 = load ptr, ptr %pr.addr, align 8, !dbg !4710
  %throttling16 = getelementptr inbounds %struct.acpi_processor, ptr %12, i32 0, i32 10, !dbg !4711
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling16, i32 0, i32 4, !dbg !4712
  store i32 %shl, ptr %state_count, align 8, !dbg !4713
  %13 = load ptr, ptr %pr.addr, align 8, !dbg !4714
  %throttling17 = getelementptr inbounds %struct.acpi_processor, ptr %13, i32 0, i32 10, !dbg !4715
  %state_count18 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling17, i32 0, i32 4, !dbg !4716
  %14 = load i32, ptr %state_count18, align 8, !dbg !4716
  %div = udiv i32 1000, %14, !dbg !4717
  store i32 %div, ptr %step, align 4, !dbg !4718
  store i32 0, ptr %i, align 4, !dbg !4719
  br label %for.cond, !dbg !4721

for.cond:                                         ; preds = %for.inc, %if.end14
  %15 = load i32, ptr %i, align 4, !dbg !4722
  %16 = load ptr, ptr %pr.addr, align 8, !dbg !4724
  %throttling19 = getelementptr inbounds %struct.acpi_processor, ptr %16, i32 0, i32 10, !dbg !4725
  %state_count20 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling19, i32 0, i32 4, !dbg !4726
  %17 = load i32, ptr %state_count20, align 8, !dbg !4726
  %cmp21 = icmp ult i32 %15, %17, !dbg !4727
  br i1 %cmp21, label %for.body, label %for.end, !dbg !4728

for.body:                                         ; preds = %for.cond
  %18 = load i32, ptr %step, align 4, !dbg !4729
  %19 = load i32, ptr %i, align 4, !dbg !4731
  %mul = mul i32 %18, %19, !dbg !4732
  %sub = sub i32 1000, %mul, !dbg !4733
  %conv23 = trunc i32 %sub to i16, !dbg !4734
  %20 = load ptr, ptr %pr.addr, align 8, !dbg !4735
  %throttling24 = getelementptr inbounds %struct.acpi_processor, ptr %20, i32 0, i32 10, !dbg !4736
  %states = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling24, i32 0, i32 15, !dbg !4737
  %21 = load i32, ptr %i, align 4, !dbg !4738
  %idxprom = sext i32 %21 to i64, !dbg !4735
  %arrayidx = getelementptr [16 x %struct.acpi_processor_tx], ptr %states, i64 0, i64 %idxprom, !dbg !4735
  %performance = getelementptr inbounds %struct.acpi_processor_tx, ptr %arrayidx, i32 0, i32 1, !dbg !4739
  store i16 %conv23, ptr %performance, align 2, !dbg !4740
  %22 = load i32, ptr %step, align 4, !dbg !4741
  %23 = load i32, ptr %i, align 4, !dbg !4742
  %mul25 = mul i32 %22, %23, !dbg !4743
  %sub26 = sub i32 1000, %mul25, !dbg !4744
  %conv27 = trunc i32 %sub26 to i16, !dbg !4745
  %24 = load ptr, ptr %pr.addr, align 8, !dbg !4746
  %throttling28 = getelementptr inbounds %struct.acpi_processor, ptr %24, i32 0, i32 10, !dbg !4747
  %states29 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling28, i32 0, i32 15, !dbg !4748
  %25 = load i32, ptr %i, align 4, !dbg !4749
  %idxprom30 = sext i32 %25 to i64, !dbg !4746
  %arrayidx31 = getelementptr [16 x %struct.acpi_processor_tx], ptr %states29, i64 0, i64 %idxprom30, !dbg !4746
  %power = getelementptr inbounds %struct.acpi_processor_tx, ptr %arrayidx31, i32 0, i32 0, !dbg !4750
  store i16 %conv27, ptr %power, align 4, !dbg !4751
  br label %for.inc, !dbg !4752

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %i, align 4, !dbg !4753
  %inc = add i32 %26, 1, !dbg !4753
  store i32 %inc, ptr %i, align 4, !dbg !4753
  br label %for.cond, !dbg !4754, !llvm.loop !4755

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4757
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4757

cleanup:                                          ; preds = %for.end, %do.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %step) #18, !dbg !4758
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !4758
  %27 = load i32, ptr %retval, align 4, !dbg !4758
  ret i32 %27, !dbg !4758
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_processor_get_throttling_ptc(ptr noundef %pr) #0 align 16 !dbg !4759 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca ptr, align 8
  %state = alloca i32, align 4
  %ret = alloca i32, align 4
  %value = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !4761, metadata !DIExpression()), !dbg !4765
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #18, !dbg !4766
  call void @llvm.dbg.declare(metadata ptr %state, metadata !4762, metadata !DIExpression()), !dbg !4767
  store i32 0, ptr %state, align 4, !dbg !4767
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !4768
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4763, metadata !DIExpression()), !dbg !4769
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #18, !dbg !4770
  call void @llvm.dbg.declare(metadata ptr %value, metadata !4764, metadata !DIExpression()), !dbg !4771
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !4772
  %tobool = icmp ne ptr %0, null, !dbg !4772
  br i1 %tobool, label %if.end, label %if.then, !dbg !4774

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4775
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4775

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pr.addr, align 8, !dbg !4776
  %flags = getelementptr inbounds %struct.acpi_processor, ptr %1, i32 0, i32 7, !dbg !4778
  %bf.load = load i16, ptr %flags, align 8, !dbg !4779
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !4779
  %bf.clear = and i16 %bf.lshr, 1, !dbg !4779
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !4779
  %tobool1 = icmp ne i8 %bf.cast, 0, !dbg !4776
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4780

if.then2:                                         ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !4781
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4781

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %pr.addr, align 8, !dbg !4782
  %throttling = getelementptr inbounds %struct.acpi_processor, ptr %2, i32 0, i32 10, !dbg !4783
  %state4 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling, i32 0, i32 0, !dbg !4784
  store i32 0, ptr %state4, align 8, !dbg !4785
  store i64 0, ptr %value, align 8, !dbg !4786
  %3 = load ptr, ptr %pr.addr, align 8, !dbg !4787
  %call = call i32 @acpi_read_throttling_status(ptr noundef %3, ptr noundef %value) #17, !dbg !4788
  store i32 %call, ptr %ret, align 4, !dbg !4789
  %4 = load i32, ptr %ret, align 4, !dbg !4790
  %cmp = icmp sge i32 %4, 0, !dbg !4792
  br i1 %cmp, label %if.then5, label %if.end16, !dbg !4793

if.then5:                                         ; preds = %if.end3
  %5 = load ptr, ptr %pr.addr, align 8, !dbg !4794
  %6 = load i64, ptr %value, align 8, !dbg !4796
  %call6 = call i32 @acpi_get_throttling_state(ptr noundef %5, i64 noundef %6) #17, !dbg !4797
  store i32 %call6, ptr %state, align 4, !dbg !4798
  %7 = load i32, ptr %state, align 4, !dbg !4799
  %cmp7 = icmp eq i32 %7, -1, !dbg !4801
  br i1 %cmp7, label %if.then8, label %if.end13, !dbg !4802

if.then8:                                         ; preds = %if.then5
  store i32 0, ptr %tmp, align 4, !dbg !4803
  %8 = load i32, ptr %tmp, align 4, !dbg !4807
  store i32 0, ptr %state, align 4, !dbg !4808
  %9 = load ptr, ptr %pr.addr, align 8, !dbg !4809
  %10 = load i32, ptr %state, align 4, !dbg !4810
  %call9 = call i32 @__acpi_processor_set_throttling(ptr noundef %9, i32 noundef %10, i1 noundef zeroext true, i1 noundef zeroext true) #17, !dbg !4811
  store i32 %call9, ptr %ret, align 4, !dbg !4812
  %11 = load i32, ptr %ret, align 4, !dbg !4813
  %tobool10 = icmp ne i32 %11, 0, !dbg !4813
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4815

if.then11:                                        ; preds = %if.then8
  %12 = load i32, ptr %ret, align 4, !dbg !4816
  store i32 %12, ptr %retval, align 4, !dbg !4817
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4817

if.end12:                                         ; preds = %if.then8
  br label %if.end13, !dbg !4818

if.end13:                                         ; preds = %if.end12, %if.then5
  %13 = load i32, ptr %state, align 4, !dbg !4819
  %14 = load ptr, ptr %pr.addr, align 8, !dbg !4820
  %throttling14 = getelementptr inbounds %struct.acpi_processor, ptr %14, i32 0, i32 10, !dbg !4821
  %state15 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling14, i32 0, i32 0, !dbg !4822
  store i32 %13, ptr %state15, align 8, !dbg !4823
  br label %if.end16, !dbg !4824

if.end16:                                         ; preds = %if.end13, %if.end3
  store i32 0, ptr %retval, align 4, !dbg !4825
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4825

cleanup:                                          ; preds = %if.end16, %if.then11, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #18, !dbg !4826
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !4826
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #18, !dbg !4826
  %15 = load i32, ptr %retval, align 4, !dbg !4826
  ret i32 %15, !dbg !4826
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_processor_set_throttling_ptc(ptr noundef %pr, i32 noundef %state, i1 noundef zeroext %force) #0 align 16 !dbg !4827 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  %force.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %value = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !4829, metadata !DIExpression()), !dbg !4834
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4830, metadata !DIExpression()), !dbg !4835
  %frombool = zext i1 %force to i8
  store i8 %frombool, ptr %force.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %force.addr, metadata !4831, metadata !DIExpression()), !dbg !4836
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !4837
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4832, metadata !DIExpression()), !dbg !4838
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #18, !dbg !4839
  call void @llvm.dbg.declare(metadata ptr %value, metadata !4833, metadata !DIExpression()), !dbg !4840
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !4841
  %tobool = icmp ne ptr %0, null, !dbg !4841
  br i1 %tobool, label %if.end, label %if.then, !dbg !4843

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4844
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4844

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %state.addr, align 4, !dbg !4845
  %cmp = icmp slt i32 %1, 0, !dbg !4847
  br i1 %cmp, label %if.then2, label %lor.lhs.false, !dbg !4848

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, ptr %state.addr, align 4, !dbg !4849
  %3 = load ptr, ptr %pr.addr, align 8, !dbg !4850
  %throttling = getelementptr inbounds %struct.acpi_processor, ptr %3, i32 0, i32 10, !dbg !4851
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling, i32 0, i32 4, !dbg !4852
  %4 = load i32, ptr %state_count, align 8, !dbg !4852
  %sub = sub i32 %4, 1, !dbg !4853
  %cmp1 = icmp ugt i32 %2, %sub, !dbg !4854
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4855

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !4856
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4856

if.end3:                                          ; preds = %lor.lhs.false
  %5 = load ptr, ptr %pr.addr, align 8, !dbg !4857
  %flags = getelementptr inbounds %struct.acpi_processor, ptr %5, i32 0, i32 7, !dbg !4859
  %bf.load = load i16, ptr %flags, align 8, !dbg !4860
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !4860
  %bf.clear = and i16 %bf.lshr, 1, !dbg !4860
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !4860
  %tobool4 = icmp ne i8 %bf.cast, 0, !dbg !4857
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4861

if.then5:                                         ; preds = %if.end3
  store i32 -19, ptr %retval, align 4, !dbg !4862
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4862

if.end6:                                          ; preds = %if.end3
  %6 = load i8, ptr %force.addr, align 1, !dbg !4863, !range !3741, !noundef !372
  %tobool7 = trunc i8 %6 to i1, !dbg !4863
  br i1 %tobool7, label %if.end12, label %land.lhs.true, !dbg !4865

land.lhs.true:                                    ; preds = %if.end6
  %7 = load i32, ptr %state.addr, align 4, !dbg !4866
  %8 = load ptr, ptr %pr.addr, align 8, !dbg !4867
  %throttling8 = getelementptr inbounds %struct.acpi_processor, ptr %8, i32 0, i32 10, !dbg !4868
  %state9 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling8, i32 0, i32 0, !dbg !4869
  %9 = load i32, ptr %state9, align 8, !dbg !4869
  %cmp10 = icmp eq i32 %7, %9, !dbg !4870
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !4871

if.then11:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !4872
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4872

if.end12:                                         ; preds = %land.lhs.true, %if.end6
  %10 = load i32, ptr %state.addr, align 4, !dbg !4873
  %11 = load ptr, ptr %pr.addr, align 8, !dbg !4875
  %throttling_platform_limit = getelementptr inbounds %struct.acpi_processor, ptr %11, i32 0, i32 6, !dbg !4876
  %12 = load i32, ptr %throttling_platform_limit, align 4, !dbg !4876
  %cmp13 = icmp slt i32 %10, %12, !dbg !4877
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !4878

if.then14:                                        ; preds = %if.end12
  store i32 -1, ptr %retval, align 4, !dbg !4879
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4879

if.end15:                                         ; preds = %if.end12
  store i64 0, ptr %value, align 8, !dbg !4880
  %13 = load ptr, ptr %pr.addr, align 8, !dbg !4881
  %14 = load i32, ptr %state.addr, align 4, !dbg !4882
  %call = call i32 @acpi_get_throttling_value(ptr noundef %13, i32 noundef %14, ptr noundef %value) #17, !dbg !4883
  store i32 %call, ptr %ret, align 4, !dbg !4884
  %15 = load i32, ptr %ret, align 4, !dbg !4885
  %cmp16 = icmp sge i32 %15, 0, !dbg !4887
  br i1 %cmp16, label %if.then17, label %if.end21, !dbg !4888

if.then17:                                        ; preds = %if.end15
  %16 = load ptr, ptr %pr.addr, align 8, !dbg !4889
  %17 = load i64, ptr %value, align 8, !dbg !4891
  %call18 = call i32 @acpi_write_throttling_state(ptr noundef %16, i64 noundef %17) #17, !dbg !4892
  %18 = load i32, ptr %state.addr, align 4, !dbg !4893
  %19 = load ptr, ptr %pr.addr, align 8, !dbg !4894
  %throttling19 = getelementptr inbounds %struct.acpi_processor, ptr %19, i32 0, i32 10, !dbg !4895
  %state20 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling19, i32 0, i32 0, !dbg !4896
  store i32 %18, ptr %state20, align 8, !dbg !4897
  br label %if.end21, !dbg !4898

if.end21:                                         ; preds = %if.then17, %if.end15
  store i32 0, ptr %retval, align 4, !dbg !4899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4899

cleanup:                                          ; preds = %if.end21, %if.then14, %if.then11, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #18, !dbg !4900
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !4900
  %20 = load i32, ptr %retval, align 4, !dbg !4900
  ret i32 %20, !dbg !4900
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_processor_get_tsd(ptr noundef %pr) #0 align 16 !dbg !4901 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %status = alloca i32, align 4
  %buffer = alloca %struct.acpi_buffer, align 8
  %format = alloca %struct.acpi_buffer, align 8
  %state = alloca %struct.acpi_buffer, align 8
  %tsd = alloca ptr, align 8
  %pdomain = alloca ptr, align 8
  %pthrottling = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !4903, metadata !DIExpression()), !dbg !4913
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #18, !dbg !4914
  call void @llvm.dbg.declare(metadata ptr %result, metadata !4904, metadata !DIExpression()), !dbg !4915
  store i32 0, ptr %result, align 4, !dbg !4915
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #18, !dbg !4916
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4905, metadata !DIExpression()), !dbg !4917
  store i32 0, ptr %status, align 4, !dbg !4917
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #18, !dbg !4918
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !4906, metadata !DIExpression()), !dbg !4919
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer, ptr align 8 @__const.acpi_processor_get_tsd.buffer, i64 16, i1 false), !dbg !4919
  call void @llvm.lifetime.start.p0(i64 16, ptr %format) #18, !dbg !4920
  call void @llvm.dbg.declare(metadata ptr %format, metadata !4907, metadata !DIExpression()), !dbg !4921
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %format, ptr align 8 @__const.acpi_processor_get_tsd.format, i64 16, i1 false), !dbg !4921
  call void @llvm.lifetime.start.p0(i64 16, ptr %state) #18, !dbg !4922
  call void @llvm.dbg.declare(metadata ptr %state, metadata !4908, metadata !DIExpression()), !dbg !4923
  call void @llvm.memset.p0.i64(ptr align 8 %state, i8 0, i64 16, i1 false), !dbg !4923
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsd) #18, !dbg !4924
  call void @llvm.dbg.declare(metadata ptr %tsd, metadata !4909, metadata !DIExpression()), !dbg !4925
  store ptr null, ptr %tsd, align 8, !dbg !4925
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdomain) #18, !dbg !4926
  call void @llvm.dbg.declare(metadata ptr %pdomain, metadata !4910, metadata !DIExpression()), !dbg !4927
  call void @llvm.lifetime.start.p0(i64 8, ptr %pthrottling) #18, !dbg !4928
  call void @llvm.dbg.declare(metadata ptr %pthrottling, metadata !4911, metadata !DIExpression()), !dbg !4929
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !4930
  %throttling = getelementptr inbounds %struct.acpi_processor, ptr %0, i32 0, i32 10, !dbg !4931
  store ptr %throttling, ptr %pthrottling, align 8, !dbg !4932
  %1 = load ptr, ptr %pthrottling, align 8, !dbg !4933
  %tsd_valid_flag = getelementptr inbounds %struct.acpi_processor_throttling, ptr %1, i32 0, i32 13, !dbg !4934
  store i8 0, ptr %tsd_valid_flag, align 2, !dbg !4935
  %2 = load ptr, ptr %pr.addr, align 8, !dbg !4936
  %handle = getelementptr inbounds %struct.acpi_processor, ptr %2, i32 0, i32 0, !dbg !4937
  %3 = load ptr, ptr %handle, align 8, !dbg !4937
  %call = call i32 @acpi_evaluate_object(ptr noundef %3, ptr noundef @.str.21, ptr noundef null, ptr noundef %buffer) #17, !dbg !4938
  store i32 %call, ptr %status, align 4, !dbg !4939
  %4 = load i32, ptr %status, align 4, !dbg !4940
  %tobool = icmp ne i32 %4, 0, !dbg !4940
  br i1 %tobool, label %if.then, label %if.end3, !dbg !4942

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %status, align 4, !dbg !4943
  %cmp = icmp ne i32 %5, 5, !dbg !4946
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4947

if.then1:                                         ; preds = %if.then
  %6 = load ptr, ptr %pr.addr, align 8, !dbg !4948
  %handle2 = getelementptr inbounds %struct.acpi_processor, ptr %6, i32 0, i32 0, !dbg !4949
  %7 = load ptr, ptr %handle2, align 8, !dbg !4949
  %8 = load i32, ptr %status, align 4, !dbg !4950
  call void @acpi_evaluation_failure_warn(ptr noundef %7, ptr noundef @.str.21, i32 noundef %8) #17, !dbg !4951
  br label %if.end, !dbg !4951

if.end:                                           ; preds = %if.then1, %if.then
  store i32 -19, ptr %retval, align 4, !dbg !4952
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4952

if.end3:                                          ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !4953
  %9 = load ptr, ptr %pointer, align 8, !dbg !4953
  store ptr %9, ptr %tsd, align 8, !dbg !4954
  %10 = load ptr, ptr %tsd, align 8, !dbg !4955
  %tobool4 = icmp ne ptr %10, null, !dbg !4955
  br i1 %tobool4, label %lor.lhs.false, label %if.then6, !dbg !4957

lor.lhs.false:                                    ; preds = %if.end3
  %11 = load ptr, ptr %tsd, align 8, !dbg !4958
  %12 = load i32, ptr %11, align 8, !dbg !4959
  %cmp5 = icmp ne i32 %12, 4, !dbg !4960
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !4961

if.then6:                                         ; preds = %lor.lhs.false, %if.end3
  br label %do.body, !dbg !4962

do.body:                                          ; preds = %if.then6
  br label %do.cond, !dbg !4965

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4965

do.end:                                           ; preds = %do.cond
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef @.str.22) #19, !dbg !4962
  store i32 %call7, ptr %tmp, align 4, !dbg !4965
  %13 = load i32, ptr %tmp, align 4, !dbg !4962
  store i32 -14, ptr %result, align 4, !dbg !4967
  br label %end, !dbg !4968

if.end8:                                          ; preds = %lor.lhs.false
  %14 = load ptr, ptr %tsd, align 8, !dbg !4969
  %count = getelementptr inbounds %struct.anon.21, ptr %14, i32 0, i32 1, !dbg !4971
  %15 = load i32, ptr %count, align 4, !dbg !4971
  %cmp9 = icmp ne i32 %15, 1, !dbg !4972
  br i1 %cmp9, label %if.then10, label %if.end16, !dbg !4973

if.then10:                                        ; preds = %if.end8
  br label %do.body11, !dbg !4974

do.body11:                                        ; preds = %if.then10
  br label %do.cond12, !dbg !4977

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4977

do.end13:                                         ; preds = %do.cond12
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef @.str.22) #19, !dbg !4974
  store i32 %call15, ptr %tmp14, align 4, !dbg !4977
  %16 = load i32, ptr %tmp14, align 4, !dbg !4974
  store i32 -14, ptr %result, align 4, !dbg !4979
  br label %end, !dbg !4980

if.end16:                                         ; preds = %if.end8
  %17 = load ptr, ptr %pr.addr, align 8, !dbg !4981
  %throttling17 = getelementptr inbounds %struct.acpi_processor, ptr %17, i32 0, i32 10, !dbg !4982
  %domain_info = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling17, i32 0, i32 6, !dbg !4983
  store ptr %domain_info, ptr %pdomain, align 8, !dbg !4984
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %state, i32 0, i32 0, !dbg !4985
  store i64 40, ptr %length, align 8, !dbg !4986
  %18 = load ptr, ptr %pdomain, align 8, !dbg !4987
  %pointer18 = getelementptr inbounds %struct.acpi_buffer, ptr %state, i32 0, i32 1, !dbg !4988
  store ptr %18, ptr %pointer18, align 8, !dbg !4989
  %19 = load ptr, ptr %tsd, align 8, !dbg !4990
  %elements = getelementptr inbounds %struct.anon.21, ptr %19, i32 0, i32 2, !dbg !4991
  %20 = load ptr, ptr %elements, align 8, !dbg !4991
  %arrayidx = getelementptr %union.acpi_object, ptr %20, i64 0, !dbg !4990
  %call19 = call i32 @acpi_extract_package(ptr noundef %arrayidx, ptr noundef %format, ptr noundef %state) #17, !dbg !4992
  store i32 %call19, ptr %status, align 4, !dbg !4993
  %21 = load i32, ptr %status, align 4, !dbg !4994
  %tobool20 = icmp ne i32 %21, 0, !dbg !4994
  br i1 %tobool20, label %if.then21, label %if.end27, !dbg !4996

if.then21:                                        ; preds = %if.end16
  br label %do.body22, !dbg !4997

do.body22:                                        ; preds = %if.then21
  br label %do.cond23, !dbg !5000

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !5000

do.end24:                                         ; preds = %do.cond23
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef @.str.22) #19, !dbg !4997
  store i32 %call26, ptr %tmp25, align 4, !dbg !5000
  %22 = load i32, ptr %tmp25, align 4, !dbg !4997
  store i32 -14, ptr %result, align 4, !dbg !5002
  br label %end, !dbg !5003

if.end27:                                         ; preds = %if.end16
  %23 = load ptr, ptr %pdomain, align 8, !dbg !5004
  %num_entries = getelementptr inbounds %struct.acpi_tsd_package, ptr %23, i32 0, i32 0, !dbg !5006
  %24 = load i64, ptr %num_entries, align 1, !dbg !5006
  %cmp28 = icmp ne i64 %24, 5, !dbg !5007
  br i1 %cmp28, label %if.then29, label %if.end35, !dbg !5008

if.then29:                                        ; preds = %if.end27
  br label %do.body30, !dbg !5009

do.body30:                                        ; preds = %if.then29
  br label %do.cond31, !dbg !5012

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !5012

do.end32:                                         ; preds = %do.cond31
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef @.str.23) #19, !dbg !5009
  store i32 %call34, ptr %tmp33, align 4, !dbg !5012
  %25 = load i32, ptr %tmp33, align 4, !dbg !5009
  store i32 -14, ptr %result, align 4, !dbg !5014
  br label %end, !dbg !5015

if.end35:                                         ; preds = %if.end27
  %26 = load ptr, ptr %pdomain, align 8, !dbg !5016
  %revision = getelementptr inbounds %struct.acpi_tsd_package, ptr %26, i32 0, i32 1, !dbg !5018
  %27 = load i64, ptr %revision, align 1, !dbg !5018
  %cmp36 = icmp ne i64 %27, 0, !dbg !5019
  br i1 %cmp36, label %if.then37, label %if.end43, !dbg !5020

if.then37:                                        ; preds = %if.end35
  br label %do.body38, !dbg !5021

do.body38:                                        ; preds = %if.then37
  br label %do.cond39, !dbg !5024

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5024

do.end40:                                         ; preds = %do.cond39
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef @.str.24) #19, !dbg !5021
  store i32 %call42, ptr %tmp41, align 4, !dbg !5024
  %28 = load i32, ptr %tmp41, align 4, !dbg !5021
  store i32 -14, ptr %result, align 4, !dbg !5026
  br label %end, !dbg !5027

if.end43:                                         ; preds = %if.end35
  %29 = load ptr, ptr %pr.addr, align 8, !dbg !5028
  %throttling44 = getelementptr inbounds %struct.acpi_processor, ptr %29, i32 0, i32 10, !dbg !5029
  store ptr %throttling44, ptr %pthrottling, align 8, !dbg !5030
  %30 = load ptr, ptr %pthrottling, align 8, !dbg !5031
  %tsd_valid_flag45 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %30, i32 0, i32 13, !dbg !5032
  store i8 1, ptr %tsd_valid_flag45, align 2, !dbg !5033
  %31 = load ptr, ptr %pdomain, align 8, !dbg !5034
  %coord_type = getelementptr inbounds %struct.acpi_tsd_package, ptr %31, i32 0, i32 3, !dbg !5035
  %32 = load i64, ptr %coord_type, align 1, !dbg !5035
  %conv = trunc i64 %32 to i32, !dbg !5034
  %33 = load ptr, ptr %pthrottling, align 8, !dbg !5036
  %shared_type = getelementptr inbounds %struct.acpi_processor_throttling, ptr %33, i32 0, i32 14, !dbg !5037
  store i32 %conv, ptr %shared_type, align 8, !dbg !5038
  %34 = load ptr, ptr %pr.addr, align 8, !dbg !5039
  %id = getelementptr inbounds %struct.acpi_processor, ptr %34, i32 0, i32 3, !dbg !5040
  %35 = load i32, ptr %id, align 8, !dbg !5040
  %36 = load ptr, ptr %pthrottling, align 8, !dbg !5041
  %shared_cpu_map = getelementptr inbounds %struct.acpi_processor_throttling, ptr %36, i32 0, i32 7, !dbg !5042
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %shared_cpu_map, i64 0, i64 0, !dbg !5041
  call void @cpumask_set_cpu(i32 noundef %35, ptr noundef %arraydecay) #17, !dbg !5043
  %37 = load ptr, ptr %pdomain, align 8, !dbg !5044
  %coord_type46 = getelementptr inbounds %struct.acpi_tsd_package, ptr %37, i32 0, i32 3, !dbg !5046
  %38 = load i64, ptr %coord_type46, align 1, !dbg !5046
  %cmp47 = icmp ne i64 %38, 252, !dbg !5047
  br i1 %cmp47, label %land.lhs.true, label %if.end59, !dbg !5048

land.lhs.true:                                    ; preds = %if.end43
  %39 = load ptr, ptr %pdomain, align 8, !dbg !5049
  %coord_type49 = getelementptr inbounds %struct.acpi_tsd_package, ptr %39, i32 0, i32 3, !dbg !5050
  %40 = load i64, ptr %coord_type49, align 1, !dbg !5050
  %cmp50 = icmp ne i64 %40, 253, !dbg !5051
  br i1 %cmp50, label %land.lhs.true52, label %if.end59, !dbg !5052

land.lhs.true52:                                  ; preds = %land.lhs.true
  %41 = load ptr, ptr %pdomain, align 8, !dbg !5053
  %coord_type53 = getelementptr inbounds %struct.acpi_tsd_package, ptr %41, i32 0, i32 3, !dbg !5054
  %42 = load i64, ptr %coord_type53, align 1, !dbg !5054
  %cmp54 = icmp ne i64 %42, 254, !dbg !5055
  br i1 %cmp54, label %if.then56, label %if.end59, !dbg !5056

if.then56:                                        ; preds = %land.lhs.true52
  %43 = load ptr, ptr %pthrottling, align 8, !dbg !5057
  %tsd_valid_flag57 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %43, i32 0, i32 13, !dbg !5059
  store i8 0, ptr %tsd_valid_flag57, align 2, !dbg !5060
  %44 = load ptr, ptr %pthrottling, align 8, !dbg !5061
  %shared_type58 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %44, i32 0, i32 14, !dbg !5062
  store i32 252, ptr %shared_type58, align 8, !dbg !5063
  br label %if.end59, !dbg !5064

if.end59:                                         ; preds = %if.then56, %land.lhs.true52, %land.lhs.true, %if.end43
  br label %end, !dbg !5065

end:                                              ; preds = %if.end59, %do.end40, %do.end32, %do.end24, %do.end13, %do.end
  call void @llvm.dbg.label(metadata !4912), !dbg !5066
  %pointer60 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !5067
  %45 = load ptr, ptr %pointer60, align 8, !dbg !5067
  call void @kfree(ptr noundef %45) #17, !dbg !5068
  %46 = load i32, ptr %result, align 4, !dbg !5069
  store i32 %46, ptr %retval, align 4, !dbg !5070
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5070

cleanup:                                          ; preds = %end, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %pthrottling) #18, !dbg !5071
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdomain) #18, !dbg !5071
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsd) #18, !dbg !5071
  call void @llvm.lifetime.end.p0(i64 16, ptr %state) #18, !dbg !5071
  call void @llvm.lifetime.end.p0(i64 16, ptr %format) #18, !dbg !5071
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #18, !dbg !5071
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #18, !dbg !5071
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #18, !dbg !5071
  %47 = load i32, ptr %retval, align 4, !dbg !5071
  ret i32 %47, !dbg !5071
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_set_cpu(i32 noundef %cpu, ptr noundef %dstp) #3 align 16 !dbg !5072 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5077, metadata !DIExpression()), !dbg !5079
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !5078, metadata !DIExpression()), !dbg !5080
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5081
  %call = call i32 @cpumask_check(i32 noundef %0) #17, !dbg !5082
  %conv = zext i32 %call to i64, !dbg !5082
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !5083
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !5083
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5083
  call void @set_bit(i64 noundef %conv, ptr noundef %arraydecay) #17, !dbg !5084
  ret void, !dbg !5085
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @zalloc_cpumask_var(ptr noundef %mask, i32 noundef %flags) #4 align 16 !dbg !5086 {
entry:
  %mask.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5091, metadata !DIExpression()), !dbg !5093
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5092, metadata !DIExpression()), !dbg !5094
  %0 = load ptr, ptr %mask.addr, align 8, !dbg !5095
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %0, i64 0, i64 0, !dbg !5096
  call void @cpumask_clear(ptr noundef %arraydecay) #17, !dbg !5097
  ret i1 true, !dbg !5098
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #4 align 16 !dbg !5099 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5106, metadata !DIExpression()), !dbg !5112
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5107, metadata !DIExpression()), !dbg !5113
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5108, metadata !DIExpression()), !dbg !5114
  %0 = load i64, ptr %size.addr, align 8, !dbg !5115
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5115
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !5115

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5115
  %cmp = icmp ule i64 %2, 64, !dbg !5115
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !5115

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !5115
  %cmp2 = icmp ugt i64 %3, 0, !dbg !5115
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !5116

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #18, !dbg !5117
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5109, metadata !DIExpression()), !dbg !5118
  %4 = load i64, ptr %offset.addr, align 8, !dbg !5119
  %5 = load i64, ptr %size.addr, align 8, !dbg !5119
  %cmp3 = icmp uge i64 %4, %5, !dbg !5119
  %lnot = xor i1 %cmp3, true, !dbg !5119
  %lnot4 = xor i1 %lnot, true, !dbg !5119
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5119
  %conv = sext i32 %lnot.ext to i64, !dbg !5119
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5119
  %tobool = icmp ne i64 %expval, 0, !dbg !5119
  br i1 %tobool, label %if.then5, label %if.end, !dbg !5121

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5122
  store i64 %6, ptr %retval, align 8, !dbg !5123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5123

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !5124
  %8 = load i64, ptr %7, align 8, !dbg !5125
  %9 = load i64, ptr %offset.addr, align 8, !dbg !5126
  %shl = shl i64 1, %9, !dbg !5126
  %sub = sub i64 -1, %shl, !dbg !5126
  %add = add i64 %sub, 1, !dbg !5126
  %10 = load i64, ptr %size.addr, align 8, !dbg !5126
  %sub6 = sub i64 %10, 1, !dbg !5126
  %sub7 = sub i64 63, %sub6, !dbg !5126
  %shr = lshr i64 -1, %sub7, !dbg !5126
  %and = and i64 %add, %shr, !dbg !5126
  %add8 = add i64 0, %and, !dbg !5126
  %and9 = and i64 %8, %add8, !dbg !5127
  store i64 %and9, ptr %val, align 8, !dbg !5128
  %11 = load i64, ptr %val, align 8, !dbg !5129
  %tobool10 = icmp ne i64 %11, 0, !dbg !5129
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !5129

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !5130
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !5130
  br i1 %13, label %cond.true11, label %cond.false, !dbg !5130

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !5130
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !5130
  %cast = trunc i64 %15 to i32, !dbg !5130
  %conv12 = sext i32 %cast to i64, !dbg !5130
  br label %cond.end, !dbg !5130

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !5130
  %call = call i64 @variable__ffs(i64 noundef %16) #17, !dbg !5130
  br label %cond.end, !dbg !5130

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !5130
  br label %cond.end14, !dbg !5129

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !5131
  br label %cond.end14, !dbg !5129

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !5129
  store i64 %cond15, ptr %retval, align 8, !dbg !5132
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5132

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #18, !dbg !5133
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !5134
  %19 = load i64, ptr %size.addr, align 8, !dbg !5135
  %20 = load i64, ptr %offset.addr, align 8, !dbg !5136
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #17, !dbg !5137
  store i64 %call17, ptr %retval, align 8, !dbg !5138
  br label %return, !dbg !5138

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !5139
  ret i64 %21, !dbg !5139
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #3 align 16 !dbg !5140 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5144, metadata !DIExpression()), !dbg !5146
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !5145, metadata !DIExpression()), !dbg !5147
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5148
  %call = call i32 @cpumask_check(i32 noundef %0) #17, !dbg !5148
  %conv = zext i32 %call to i64, !dbg !5148
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !5148
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !5148
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5148
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #17, !dbg !5148
  ret i1 %call1, !dbg !5149
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_copy(ptr noundef %dstp, ptr noundef %srcp) #4 align 16 !dbg !5150 {
entry:
  %dstp.addr = alloca ptr, align 8
  %srcp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !5154, metadata !DIExpression()), !dbg !5156
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !5155, metadata !DIExpression()), !dbg !5157
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !5158
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !5158
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5158
  %1 = load ptr, ptr %srcp.addr, align 8, !dbg !5159
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !5159
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !5159
  call void @bitmap_copy(ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef 64) #17, !dbg !5160
  ret void, !dbg !5161
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_cpumask_var(ptr noundef %mask) #4 align 16 !dbg !5162 {
entry:
  %mask.addr = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5166, metadata !DIExpression()), !dbg !5167
  ret void, !dbg !5168
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_clear(ptr noundef %dstp) #4 align 16 !dbg !5169 {
entry:
  %dstp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !5171, metadata !DIExpression()), !dbg !5172
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !5173
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !5173
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5173
  call void @bitmap_zero(ptr noundef %arraydecay, i32 noundef 64) #17, !dbg !5174
  ret void, !dbg !5175
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #3 align 16 !dbg !5176 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !5181, metadata !DIExpression()), !dbg !5182
  %0 = load i64, ptr %word.addr, align 8, !dbg !5183
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #21, !dbg !5184, !srcloc !5185
  store i64 %1, ptr %word.addr, align 8, !dbg !5184
  %2 = load i64, ptr %word.addr, align 8, !dbg !5186
  ret i64 %2, !dbg !5187
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5188 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5189 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5197, metadata !DIExpression()), !dbg !5199
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5198, metadata !DIExpression()), !dbg !5200
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5201
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5202
  %div = udiv i64 %1, 64, !dbg !5202
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5203
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !5204
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5205
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5206
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5207
  ret i1 %call, !dbg !5208
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #3 align 16 !dbg !5209 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5213, metadata !DIExpression()), !dbg !5214
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5215
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #17, !dbg !5216
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !5217
  ret i32 %1, !dbg !5218
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !5219 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5227, metadata !DIExpression()), !dbg !5229
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5228, metadata !DIExpression()), !dbg !5230
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5231
  %1 = load i64, ptr %size.addr, align 8, !dbg !5232
  %conv = trunc i64 %1 to i32, !dbg !5232
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !5233
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5234
  %3 = load i64, ptr %size.addr, align 8, !dbg !5234
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !5234
  ret void, !dbg !5235
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5236 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5238, metadata !DIExpression()), !dbg !5240
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5239, metadata !DIExpression()), !dbg !5241
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5242
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5243
  br i1 %1, label %cond.true, label %cond.false, !dbg !5243

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5244
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5245
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5246
  %conv = zext i1 %call to i32, !dbg !5246
  br label %cond.end, !dbg !5243

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5247
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5248
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !5249
  %conv2 = zext i1 %call1 to i32, !dbg !5249
  br label %cond.end, !dbg !5243

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5243
  %tobool = icmp ne i32 %cond, 0, !dbg !5243
  ret i1 %tobool, !dbg !5250
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !5251 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5256, metadata !DIExpression()), !dbg !5258
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5257, metadata !DIExpression()), !dbg !5259
  ret i1 true, !dbg !5260
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !5261 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5266, metadata !DIExpression()), !dbg !5269
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5267, metadata !DIExpression()), !dbg !5270
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5268, metadata !DIExpression()), !dbg !5271
  ret void, !dbg !5272
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5273 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5277, metadata !DIExpression()), !dbg !5279
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5278, metadata !DIExpression()), !dbg !5280
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5281
  %and = and i64 %0, 63, !dbg !5282
  %shl = shl i64 1, %and, !dbg !5283
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5284
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5285
  %shr = ashr i64 %2, 6, !dbg !5286
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5284
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5284
  %and1 = and i64 %shl, %3, !dbg !5287
  %cmp = icmp ne i64 %and1, 0, !dbg !5288
  ret i1 %cmp, !dbg !5289
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5290 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5292, metadata !DIExpression()), !dbg !5295
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5293, metadata !DIExpression()), !dbg !5296
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #18, !dbg !5297
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5294, metadata !DIExpression()), !dbg !5298
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5299
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5300
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #18, !dbg !5301, !srcloc !5302
  %3 = icmp ult i8 %2, 2, !dbg !5301
  call void @llvm.assume(i1 %3), !dbg !5301
  store i8 %2, ptr %oldbit, align 1, !dbg !5301
  %4 = load i8, ptr %oldbit, align 1, !dbg !5303, !range !3741, !noundef !372
  %tobool = trunc i8 %4 to i1, !dbg !5303
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #18, !dbg !5304
  ret i1 %tobool, !dbg !5305
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #3 align 16 !dbg !5306 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5310, metadata !DIExpression()), !dbg !5312
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !5311, metadata !DIExpression()), !dbg !5313
  ret void, !dbg !5314
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_copy(ptr noundef %dst, ptr noundef %src, i32 noundef %nbits) #4 align 16 !dbg !5315 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5320, metadata !DIExpression()), !dbg !5324
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5321, metadata !DIExpression()), !dbg !5325
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !5322, metadata !DIExpression()), !dbg !5326
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #18, !dbg !5327
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5323, metadata !DIExpression()), !dbg !5328
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !5329
  %add = add i32 %0, 63, !dbg !5329
  %and = and i32 %add, -64, !dbg !5329
  %div = udiv i32 %and, 8, !dbg !5329
  store i32 %div, ptr %len, align 4, !dbg !5328
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !5330
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !5330
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !5330

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !5330
  %cmp = icmp ule i32 %3, 64, !dbg !5330
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !5330

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !5330
  %cmp2 = icmp ugt i32 %4, 0, !dbg !5330
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5332

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %src.addr, align 8, !dbg !5333
  %6 = load i64, ptr %5, align 8, !dbg !5334
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !5335
  store i64 %6, ptr %7, align 8, !dbg !5336
  br label %if.end, !dbg !5337

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !5338
  %9 = load ptr, ptr %src.addr, align 8, !dbg !5339
  %10 = load i32, ptr %len, align 4, !dbg !5340
  %conv = zext i32 %10 to i64, !dbg !5340
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %9, i64 %conv, i1 false), !dbg !5341
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #18, !dbg !5342
  ret void, !dbg !5342
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_zero(ptr noundef %dst, i32 noundef %nbits) #4 align 16 !dbg !5343 {
entry:
  %dst.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5347, metadata !DIExpression()), !dbg !5350
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !5348, metadata !DIExpression()), !dbg !5351
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #18, !dbg !5352
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5349, metadata !DIExpression()), !dbg !5353
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !5354
  %add = add i32 %0, 63, !dbg !5354
  %and = and i32 %add, -64, !dbg !5354
  %div = udiv i32 %and, 8, !dbg !5354
  store i32 %div, ptr %len, align 4, !dbg !5353
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !5355
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !5355
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !5355

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !5355
  %cmp = icmp ule i32 %3, 64, !dbg !5355
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !5355

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !5355
  %cmp2 = icmp ugt i32 %4, 0, !dbg !5355
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5357

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !5358
  store i64 0, ptr %5, align 8, !dbg !5359
  br label %if.end, !dbg !5360

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !5361
  %7 = load i32, ptr %len, align 4, !dbg !5362
  %conv = zext i32 %7 to i64, !dbg !5362
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %conv, i1 false), !dbg !5363
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #18, !dbg !5364
  ret void, !dbg !5364
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5365 dso_local i32 @acpi_evaluate_integer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5376 dso_local void @acpi_evaluation_failure_warn(ptr noundef, ptr noundef, i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #4 align 16 !dbg !5379 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5383, metadata !DIExpression()), !dbg !5384
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5385
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #17, !dbg !5386
  ret i1 %call, !dbg !5387
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @call_on_cpu(i32 noundef %cpu, ptr noundef %fn, ptr noundef %arg, i1 noundef zeroext %direct) #4 align 16 !dbg !3177 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %fn.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %direct.addr = alloca i8, align 1
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %tmp7 = alloca i64, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3184, metadata !DIExpression()), !dbg !5388
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !3185, metadata !DIExpression()), !dbg !5389
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !3186, metadata !DIExpression()), !dbg !5390
  %frombool = zext i1 %direct to i8
  store i8 %frombool, ptr %direct.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %direct.addr, metadata !3187, metadata !DIExpression()), !dbg !5391
  %0 = load i8, ptr %direct.addr, align 1, !dbg !5392, !range !3741, !noundef !372
  %tobool = trunc i8 %0 to i1, !dbg !5392
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !5393

lor.lhs.false:                                    ; preds = %entry
  %call = call zeroext i1 @is_percpu_thread() #17, !dbg !5394
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !5395

land.lhs.true:                                    ; preds = %lor.lhs.false
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !5396
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #17, !dbg !5397
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #18, !dbg !5398
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3188, metadata !DIExpression()), !dbg !5398
  br label %do.body, !dbg !5398

do.body:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !5399
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3192, metadata !DIExpression()), !dbg !5399
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5399
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !5399
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !5398
  br label %do.cond, !dbg !5399

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5399

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #18, !dbg !5400
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3194, metadata !DIExpression()), !dbg !5400
  %3 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.6, ptr @pcpu_hot, i32 0, i32 2)) #21, !dbg !5400, !srcloc !5401
  store i32 %3, ptr %pfo_val__, align 4, !dbg !5400
  %4 = load i32, ptr %pfo_val__, align 4, !dbg !5400
  %conv = zext i32 %4 to i64, !dbg !5400
  %conv2 = trunc i64 %conv to i32, !dbg !5400
  store i32 %conv2, ptr %tmp1, align 4, !dbg !5400
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #18, !dbg !5398
  %5 = load i32, ptr %tmp1, align 4, !dbg !5400
  store i32 %5, ptr %pscr_ret__, align 4, !dbg !5398
  %6 = load i32, ptr %pscr_ret__, align 4, !dbg !5398
  store i32 %6, ptr %tmp3, align 4, !dbg !5398
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #18, !dbg !5397
  %7 = load i32, ptr %tmp3, align 4, !dbg !5398
  store i32 %7, ptr %tmp, align 4, !dbg !5397
  %8 = load i32, ptr %tmp, align 4, !dbg !5397
  %cmp = icmp eq i32 %1, %8, !dbg !5402
  br i1 %cmp, label %if.then, label %if.end, !dbg !5403

if.then:                                          ; preds = %do.end, %entry
  %9 = load ptr, ptr %fn.addr, align 8, !dbg !5404
  %10 = load ptr, ptr %arg.addr, align 8, !dbg !5405
  %call5 = call i64 %9(ptr noundef %10) #17, !dbg !5404
  %conv6 = trunc i64 %call5 to i32, !dbg !5404
  store i32 %conv6, ptr %retval, align 4, !dbg !5406
  br label %return, !dbg !5406

if.end:                                           ; preds = %do.end, %lor.lhs.false
  %11 = load i32, ptr %cpu.addr, align 4, !dbg !5407
  %12 = load ptr, ptr %fn.addr, align 8, !dbg !5407
  %13 = load ptr, ptr %arg.addr, align 8, !dbg !5407
  %call8 = call i64 @work_on_cpu_key(i32 noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef @call_on_cpu.__key) #17, !dbg !5407
  store i64 %call8, ptr %tmp7, align 8, !dbg !5407
  %14 = load i64, ptr %tmp7, align 8, !dbg !5407
  %conv9 = trunc i64 %14 to i32, !dbg !5409
  store i32 %conv9, ptr %retval, align 4, !dbg !5410
  br label %return, !dbg !5410

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, ptr %retval, align 4, !dbg !5411
  ret i32 %15, !dbg !5411
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__acpi_processor_get_throttling(ptr noundef %data) #0 align 16 !dbg !5412 {
entry:
  %data.addr = alloca ptr, align 8
  %pr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5414, metadata !DIExpression()), !dbg !5416
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #18, !dbg !5417
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !5415, metadata !DIExpression()), !dbg !5418
  %0 = load ptr, ptr %data.addr, align 8, !dbg !5419
  store ptr %0, ptr %pr, align 8, !dbg !5418
  %1 = load ptr, ptr %pr, align 8, !dbg !5420
  %throttling = getelementptr inbounds %struct.acpi_processor, ptr %1, i32 0, i32 10, !dbg !5421
  %acpi_processor_get_throttling = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling, i32 0, i32 8, !dbg !5422
  %2 = load ptr, ptr %acpi_processor_get_throttling, align 8, !dbg !5422
  %3 = load ptr, ptr %pr, align 8, !dbg !5423
  %call = call i32 %2(ptr noundef %3) #17, !dbg !5420
  %conv = sext i32 %call to i64, !dbg !5420
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #18, !dbg !5424
  ret i64 %conv, !dbg !5425
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_percpu_thread() #3 align 16 !dbg !5426 {
entry:
  %call = call ptr @get_current() #17, !dbg !5427
  %flags = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 4, !dbg !5428
  %0 = load i32, ptr %flags, align 4, !dbg !5428
  %and = and i32 %0, 67108864, !dbg !5429
  %tobool = icmp ne i32 %and, 0, !dbg !5429
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5430

land.rhs:                                         ; preds = %entry
  %call1 = call ptr @get_current() #17, !dbg !5431
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 27, !dbg !5432
  %1 = load i32, ptr %nr_cpus_allowed, align 8, !dbg !5432
  %cmp = icmp eq i32 %1, 1, !dbg !5433
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !5434
  ret i1 %2, !dbg !5435
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #3 align 16 !dbg !5436 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !5441, metadata !DIExpression()), !dbg !5442
  ret void, !dbg !5443
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5444 dso_local i64 @work_on_cpu_key(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !5448 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #18, !dbg !5459
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5453, metadata !DIExpression()), !dbg !5459
  br label %do.body, !dbg !5459

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !5460
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5455, metadata !DIExpression()), !dbg !5460
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5460
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5460
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !5459
  br label %do.cond, !dbg !5460

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5460

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #18, !dbg !5461
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5457, metadata !DIExpression()), !dbg !5461
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #22, !dbg !5461, !srcloc !5462
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5461
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5461
  %3 = inttoptr i64 %2 to ptr, !dbg !5461
  store ptr %3, ptr %tmp, align 8, !dbg !5461
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #18, !dbg !5459
  %4 = load ptr, ptr %tmp, align 8, !dbg !5461
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5459
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5459
  store ptr %5, ptr %tmp1, align 8, !dbg !5459
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #18, !dbg !5463
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5459
  ret ptr %6, !dbg !5464
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_and_bit(ptr noundef %addr1, ptr noundef %addr2, i64 noundef %size, i64 noundef %offset) #4 align 16 !dbg !5465 {
entry:
  %retval = alloca i64, align 8
  %addr1.addr = alloca ptr, align 8
  %addr2.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr1, ptr %addr1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr1.addr, metadata !5469, metadata !DIExpression()), !dbg !5476
  store ptr %addr2, ptr %addr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr2.addr, metadata !5470, metadata !DIExpression()), !dbg !5477
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5471, metadata !DIExpression()), !dbg !5478
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5472, metadata !DIExpression()), !dbg !5479
  %0 = load i64, ptr %size.addr, align 8, !dbg !5480
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5480
  br i1 %1, label %land.lhs.true, label %if.end17, !dbg !5480

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5480
  %cmp = icmp ule i64 %2, 64, !dbg !5480
  br i1 %cmp, label %land.lhs.true1, label %if.end17, !dbg !5480

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !5480
  %cmp2 = icmp ugt i64 %3, 0, !dbg !5480
  br i1 %cmp2, label %if.then, label %if.end17, !dbg !5481

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #18, !dbg !5482
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5473, metadata !DIExpression()), !dbg !5483
  %4 = load i64, ptr %offset.addr, align 8, !dbg !5484
  %5 = load i64, ptr %size.addr, align 8, !dbg !5484
  %cmp3 = icmp uge i64 %4, %5, !dbg !5484
  %lnot = xor i1 %cmp3, true, !dbg !5484
  %lnot4 = xor i1 %lnot, true, !dbg !5484
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5484
  %conv = sext i32 %lnot.ext to i64, !dbg !5484
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5484
  %tobool = icmp ne i64 %expval, 0, !dbg !5484
  br i1 %tobool, label %if.then5, label %if.end, !dbg !5486

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5487
  store i64 %6, ptr %retval, align 8, !dbg !5488
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5488

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr1.addr, align 8, !dbg !5489
  %8 = load i64, ptr %7, align 8, !dbg !5490
  %9 = load ptr, ptr %addr2.addr, align 8, !dbg !5491
  %10 = load i64, ptr %9, align 8, !dbg !5492
  %and = and i64 %8, %10, !dbg !5493
  %11 = load i64, ptr %offset.addr, align 8, !dbg !5494
  %shl = shl i64 1, %11, !dbg !5494
  %sub = sub i64 -1, %shl, !dbg !5494
  %add = add i64 %sub, 1, !dbg !5494
  %12 = load i64, ptr %size.addr, align 8, !dbg !5494
  %sub6 = sub i64 %12, 1, !dbg !5494
  %sub7 = sub i64 63, %sub6, !dbg !5494
  %shr = lshr i64 -1, %sub7, !dbg !5494
  %and8 = and i64 %add, %shr, !dbg !5494
  %add9 = add i64 0, %and8, !dbg !5494
  %and10 = and i64 %and, %add9, !dbg !5495
  store i64 %and10, ptr %val, align 8, !dbg !5496
  %13 = load i64, ptr %val, align 8, !dbg !5497
  %tobool11 = icmp ne i64 %13, 0, !dbg !5497
  br i1 %tobool11, label %cond.true, label %cond.false14, !dbg !5497

cond.true:                                        ; preds = %if.end
  %14 = load i64, ptr %val, align 8, !dbg !5498
  %15 = call i1 @llvm.is.constant.i64(i64 %14), !dbg !5498
  br i1 %15, label %cond.true12, label %cond.false, !dbg !5498

cond.true12:                                      ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !5498
  %17 = call i64 @llvm.cttz.i64(i64 %16, i1 true), !dbg !5498
  %cast = trunc i64 %17 to i32, !dbg !5498
  %conv13 = sext i32 %cast to i64, !dbg !5498
  br label %cond.end, !dbg !5498

cond.false:                                       ; preds = %cond.true
  %18 = load i64, ptr %val, align 8, !dbg !5498
  %call = call i64 @variable__ffs(i64 noundef %18) #17, !dbg !5498
  br label %cond.end, !dbg !5498

cond.end:                                         ; preds = %cond.false, %cond.true12
  %cond = phi i64 [ %conv13, %cond.true12 ], [ %call, %cond.false ], !dbg !5498
  br label %cond.end15, !dbg !5497

cond.false14:                                     ; preds = %if.end
  %19 = load i64, ptr %size.addr, align 8, !dbg !5499
  br label %cond.end15, !dbg !5497

cond.end15:                                       ; preds = %cond.false14, %cond.end
  %cond16 = phi i64 [ %cond, %cond.end ], [ %19, %cond.false14 ], !dbg !5497
  store i64 %cond16, ptr %retval, align 8, !dbg !5500
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5500

cleanup:                                          ; preds = %cond.end15, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #18, !dbg !5501
  br label %return

if.end17:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %20 = load ptr, ptr %addr1.addr, align 8, !dbg !5502
  %21 = load ptr, ptr %addr2.addr, align 8, !dbg !5503
  %22 = load i64, ptr %size.addr, align 8, !dbg !5504
  %23 = load i64, ptr %offset.addr, align 8, !dbg !5505
  %call18 = call i64 @_find_next_and_bit(ptr noundef %20, ptr noundef %21, i64 noundef %22, i64 noundef %23) #17, !dbg !5506
  store i64 %call18, ptr %retval, align 8, !dbg !5507
  br label %return, !dbg !5507

return:                                           ; preds = %if.end17, %cleanup
  %24 = load i64, ptr %retval, align 8, !dbg !5508
  ret i64 %24, !dbg !5508
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_processor_throttling_notifier(i64 noundef %event, ptr noundef %data) #0 align 16 !dbg !5509 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %p_tstate = alloca ptr, align 8
  %pr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %target_state = alloca i32, align 4
  %p_limit = alloca ptr, align 8
  %p_throttling = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  store i64 %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !5513, metadata !DIExpression()), !dbg !5527
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5514, metadata !DIExpression()), !dbg !5528
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_tstate) #18, !dbg !5529
  call void @llvm.dbg.declare(metadata ptr %p_tstate, metadata !5515, metadata !DIExpression()), !dbg !5530
  %0 = load ptr, ptr %data.addr, align 8, !dbg !5531
  store ptr %0, ptr %p_tstate, align 8, !dbg !5530
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #18, !dbg !5532
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !5517, metadata !DIExpression()), !dbg !5533
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #18, !dbg !5534
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !5518, metadata !DIExpression()), !dbg !5535
  call void @llvm.lifetime.start.p0(i64 4, ptr %target_state) #18, !dbg !5536
  call void @llvm.dbg.declare(metadata ptr %target_state, metadata !5519, metadata !DIExpression()), !dbg !5537
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_limit) #18, !dbg !5538
  call void @llvm.dbg.declare(metadata ptr %p_limit, metadata !5520, metadata !DIExpression()), !dbg !5539
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_throttling) #18, !dbg !5540
  call void @llvm.dbg.declare(metadata ptr %p_throttling, metadata !5521, metadata !DIExpression()), !dbg !5541
  %1 = load ptr, ptr %p_tstate, align 8, !dbg !5542
  %cpu1 = getelementptr inbounds %struct.throttling_tstate, ptr %1, i32 0, i32 0, !dbg !5543
  %2 = load i32, ptr %cpu1, align 4, !dbg !5543
  store i32 %2, ptr %cpu, align 4, !dbg !5544
  br label %do.body, !dbg !5545

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !5546
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5522, metadata !DIExpression()), !dbg !5546
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5546
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !5546
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !5545
  br label %do.cond, !dbg !5546

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5546

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #18, !dbg !5547
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5525, metadata !DIExpression()), !dbg !5547
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr, align 8, !dbg !5547
  %4 = load i64, ptr %__ptr, align 8, !dbg !5547
  %5 = load i32, ptr %cpu, align 4, !dbg !5547
  %idxprom = zext i32 %5 to i64, !dbg !5547
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5547
  %6 = load i64, ptr %arrayidx, align 8, !dbg !5547
  %add = add i64 %4, %6, !dbg !5547
  %7 = inttoptr i64 %add to ptr, !dbg !5547
  store ptr %7, ptr %tmp2, align 8, !dbg !5547
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #18, !dbg !5545
  %8 = load ptr, ptr %tmp2, align 8, !dbg !5547
  store ptr %8, ptr %tmp, align 8, !dbg !5546
  %9 = load ptr, ptr %tmp, align 8, !dbg !5545
  %10 = load ptr, ptr %9, align 8, !dbg !5548
  store ptr %10, ptr %pr, align 8, !dbg !5549
  %11 = load ptr, ptr %pr, align 8, !dbg !5550
  %tobool = icmp ne ptr %11, null, !dbg !5550
  br i1 %tobool, label %if.end, label %if.then, !dbg !5552

if.then:                                          ; preds = %do.end
  store i32 0, ptr %tmp3, align 4, !dbg !5553
  %12 = load i32, ptr %tmp3, align 4, !dbg !5557
  store i32 0, ptr %retval, align 4, !dbg !5558
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5558

if.end:                                           ; preds = %do.end
  %13 = load ptr, ptr %pr, align 8, !dbg !5559
  %flags = getelementptr inbounds %struct.acpi_processor, ptr %13, i32 0, i32 7, !dbg !5561
  %bf.load = load i16, ptr %flags, align 8, !dbg !5562
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !5562
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5562
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !5562
  %tobool4 = icmp ne i8 %bf.cast, 0, !dbg !5559
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !5563

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %tmp6, align 4, !dbg !5564
  %14 = load i32, ptr %tmp6, align 4, !dbg !5568
  store i32 0, ptr %retval, align 4, !dbg !5569
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5569

if.end7:                                          ; preds = %if.end
  %15 = load ptr, ptr %p_tstate, align 8, !dbg !5570
  %target_state8 = getelementptr inbounds %struct.throttling_tstate, ptr %15, i32 0, i32 1, !dbg !5571
  %16 = load i32, ptr %target_state8, align 4, !dbg !5571
  store i32 %16, ptr %target_state, align 4, !dbg !5572
  %17 = load ptr, ptr %pr, align 8, !dbg !5573
  %throttling = getelementptr inbounds %struct.acpi_processor, ptr %17, i32 0, i32 10, !dbg !5574
  store ptr %throttling, ptr %p_throttling, align 8, !dbg !5575
  %18 = load i64, ptr %event.addr, align 8, !dbg !5576
  switch i64 %18, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb33
  ], !dbg !5577

sw.bb:                                            ; preds = %if.end7
  %19 = load ptr, ptr %pr, align 8, !dbg !5578
  %limit = getelementptr inbounds %struct.acpi_processor, ptr %19, i32 0, i32 11, !dbg !5580
  store ptr %limit, ptr %p_limit, align 8, !dbg !5581
  %20 = load ptr, ptr %p_limit, align 8, !dbg !5582
  %thermal = getelementptr inbounds %struct.acpi_processor_limit, ptr %20, i32 0, i32 1, !dbg !5584
  %tx = getelementptr inbounds %struct.acpi_processor_lx, ptr %thermal, i32 0, i32 1, !dbg !5585
  %21 = load i32, ptr %tx, align 4, !dbg !5585
  %22 = load i32, ptr %target_state, align 4, !dbg !5586
  %cmp = icmp sgt i32 %21, %22, !dbg !5587
  br i1 %cmp, label %if.then9, label %if.end12, !dbg !5588

if.then9:                                         ; preds = %sw.bb
  %23 = load ptr, ptr %p_limit, align 8, !dbg !5589
  %thermal10 = getelementptr inbounds %struct.acpi_processor_limit, ptr %23, i32 0, i32 1, !dbg !5590
  %tx11 = getelementptr inbounds %struct.acpi_processor_lx, ptr %thermal10, i32 0, i32 1, !dbg !5591
  %24 = load i32, ptr %tx11, align 4, !dbg !5591
  store i32 %24, ptr %target_state, align 4, !dbg !5592
  br label %if.end12, !dbg !5593

if.end12:                                         ; preds = %if.then9, %sw.bb
  %25 = load ptr, ptr %p_limit, align 8, !dbg !5594
  %user = getelementptr inbounds %struct.acpi_processor_limit, ptr %25, i32 0, i32 2, !dbg !5596
  %tx13 = getelementptr inbounds %struct.acpi_processor_lx, ptr %user, i32 0, i32 1, !dbg !5597
  %26 = load i32, ptr %tx13, align 4, !dbg !5597
  %27 = load i32, ptr %target_state, align 4, !dbg !5598
  %cmp14 = icmp sgt i32 %26, %27, !dbg !5599
  br i1 %cmp14, label %if.then15, label %if.end18, !dbg !5600

if.then15:                                        ; preds = %if.end12
  %28 = load ptr, ptr %p_limit, align 8, !dbg !5601
  %user16 = getelementptr inbounds %struct.acpi_processor_limit, ptr %28, i32 0, i32 2, !dbg !5602
  %tx17 = getelementptr inbounds %struct.acpi_processor_lx, ptr %user16, i32 0, i32 1, !dbg !5603
  %29 = load i32, ptr %tx17, align 4, !dbg !5603
  store i32 %29, ptr %target_state, align 4, !dbg !5604
  br label %if.end18, !dbg !5605

if.end18:                                         ; preds = %if.then15, %if.end12
  %30 = load ptr, ptr %pr, align 8, !dbg !5606
  %throttling_platform_limit = getelementptr inbounds %struct.acpi_processor, ptr %30, i32 0, i32 6, !dbg !5608
  %31 = load i32, ptr %throttling_platform_limit, align 4, !dbg !5608
  %32 = load i32, ptr %target_state, align 4, !dbg !5609
  %cmp19 = icmp sgt i32 %31, %32, !dbg !5610
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !5611

if.then20:                                        ; preds = %if.end18
  %33 = load ptr, ptr %pr, align 8, !dbg !5612
  %throttling_platform_limit21 = getelementptr inbounds %struct.acpi_processor, ptr %33, i32 0, i32 6, !dbg !5613
  %34 = load i32, ptr %throttling_platform_limit21, align 4, !dbg !5613
  store i32 %34, ptr %target_state, align 4, !dbg !5614
  br label %if.end22, !dbg !5615

if.end22:                                         ; preds = %if.then20, %if.end18
  %35 = load i32, ptr %target_state, align 4, !dbg !5616
  %36 = load ptr, ptr %p_throttling, align 8, !dbg !5618
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, ptr %36, i32 0, i32 4, !dbg !5619
  %37 = load i32, ptr %state_count, align 8, !dbg !5619
  %cmp23 = icmp uge i32 %35, %37, !dbg !5620
  br i1 %cmp23, label %if.then24, label %if.end30, !dbg !5621

if.then24:                                        ; preds = %if.end22
  br label %do.body25, !dbg !5622

do.body25:                                        ; preds = %if.then24
  br label %do.cond26, !dbg !5625

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !5625

do.end27:                                         ; preds = %do.cond26
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #19, !dbg !5622
  store i32 %call, ptr %tmp28, align 4, !dbg !5625
  %38 = load i32, ptr %tmp28, align 4, !dbg !5622
  %39 = load ptr, ptr %p_throttling, align 8, !dbg !5627
  %state_count29 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %39, i32 0, i32 4, !dbg !5628
  %40 = load i32, ptr %state_count29, align 8, !dbg !5628
  %sub = sub i32 %40, 1, !dbg !5629
  store i32 %sub, ptr %target_state, align 4, !dbg !5630
  br label %if.end30, !dbg !5631

if.end30:                                         ; preds = %do.end27, %if.end22
  %41 = load i32, ptr %target_state, align 4, !dbg !5632
  %42 = load ptr, ptr %p_tstate, align 8, !dbg !5633
  %target_state31 = getelementptr inbounds %struct.throttling_tstate, ptr %42, i32 0, i32 1, !dbg !5634
  store i32 %41, ptr %target_state31, align 4, !dbg !5635
  store i32 0, ptr %tmp32, align 4, !dbg !5636
  %43 = load i32, ptr %tmp32, align 4, !dbg !5639
  br label %sw.epilog, !dbg !5640

sw.bb33:                                          ; preds = %if.end7
  %44 = load i32, ptr %target_state, align 4, !dbg !5641
  %45 = load ptr, ptr %p_throttling, align 8, !dbg !5642
  %state = getelementptr inbounds %struct.acpi_processor_throttling, ptr %45, i32 0, i32 0, !dbg !5643
  store i32 %44, ptr %state, align 8, !dbg !5644
  store i32 0, ptr %tmp34, align 4, !dbg !5645
  %46 = load i32, ptr %tmp34, align 4, !dbg !5648
  br label %sw.epilog, !dbg !5649

sw.default:                                       ; preds = %if.end7
  br label %do.body35, !dbg !5650

do.body35:                                        ; preds = %sw.default
  br label %do.cond36, !dbg !5652

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !5652

do.end37:                                         ; preds = %do.cond36
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #19, !dbg !5650
  store i32 %call39, ptr %tmp38, align 4, !dbg !5652
  %47 = load i32, ptr %tmp38, align 4, !dbg !5650
  br label %sw.epilog, !dbg !5654

sw.epilog:                                        ; preds = %do.end37, %sw.bb33, %if.end30
  store i32 0, ptr %retval, align 4, !dbg !5655
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5655

cleanup:                                          ; preds = %sw.epilog, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_throttling) #18, !dbg !5656
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_limit) #18, !dbg !5656
  call void @llvm.lifetime.end.p0(i64 4, ptr %target_state) #18, !dbg !5656
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #18, !dbg !5656
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #18, !dbg !5656
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_tstate) #18, !dbg !5656
  %48 = load i32, ptr %retval, align 4, !dbg !5656
  ret i32 %48, !dbg !5656
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @acpi_processor_throttling_fn(ptr noundef %data) #0 align 16 !dbg !5657 {
entry:
  %data.addr = alloca ptr, align 8
  %arg = alloca ptr, align 8
  %pr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5659, metadata !DIExpression()), !dbg !5663
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #18, !dbg !5664
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !5660, metadata !DIExpression()), !dbg !5665
  %0 = load ptr, ptr %data.addr, align 8, !dbg !5666
  store ptr %0, ptr %arg, align 8, !dbg !5665
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #18, !dbg !5667
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !5662, metadata !DIExpression()), !dbg !5668
  %1 = load ptr, ptr %arg, align 8, !dbg !5669
  %pr1 = getelementptr inbounds %struct.acpi_processor_throttling_arg, ptr %1, i32 0, i32 0, !dbg !5670
  %2 = load ptr, ptr %pr1, align 8, !dbg !5670
  store ptr %2, ptr %pr, align 8, !dbg !5668
  %3 = load ptr, ptr %pr, align 8, !dbg !5671
  %throttling = getelementptr inbounds %struct.acpi_processor, ptr %3, i32 0, i32 10, !dbg !5672
  %acpi_processor_set_throttling = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling, i32 0, i32 9, !dbg !5673
  %4 = load ptr, ptr %acpi_processor_set_throttling, align 8, !dbg !5673
  %5 = load ptr, ptr %pr, align 8, !dbg !5674
  %6 = load ptr, ptr %arg, align 8, !dbg !5675
  %target_state = getelementptr inbounds %struct.acpi_processor_throttling_arg, ptr %6, i32 0, i32 1, !dbg !5676
  %7 = load i32, ptr %target_state, align 8, !dbg !5676
  %8 = load ptr, ptr %arg, align 8, !dbg !5677
  %force = getelementptr inbounds %struct.acpi_processor_throttling_arg, ptr %8, i32 0, i32 2, !dbg !5678
  %9 = load i8, ptr %force, align 4, !dbg !5678, !range !3741, !noundef !372
  %tobool = trunc i8 %9 to i1, !dbg !5678
  %call = call i32 %4(ptr noundef %5, i32 noundef %7, i1 noundef zeroext %tobool) #17, !dbg !5671
  %conv = sext i32 %call to i64, !dbg !5671
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #18, !dbg !5679
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #18, !dbg !5679
  ret i64 %conv, !dbg !5680
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5681 dso_local i64 @_find_next_and_bit(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #7

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5682 dso_local i32 @_printk(ptr noundef, ...) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5686 dso_local i32 @acpi_evaluate_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5691 dso_local void @kfree(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !5694 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5698, metadata !DIExpression()), !dbg !5702
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5699, metadata !DIExpression()), !dbg !5703
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5700, metadata !DIExpression()), !dbg !5704
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #18, !dbg !5705
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5701, metadata !DIExpression()), !dbg !5706
  %0 = load i64, ptr %n.addr, align 8, !dbg !5707
  %1 = load i64, ptr %size.addr, align 8, !dbg !5707
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5707
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5707
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5707
  store i64 %4, ptr %bytes, align 8, !dbg !5707
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !5707
  %lnot = xor i1 %call, true, !dbg !5707
  %lnot1 = xor i1 %lnot, true, !dbg !5707
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5707
  %conv = sext i32 %lnot.ext to i64, !dbg !5707
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5707
  %tobool = icmp ne i64 %expval, 0, !dbg !5707
  br i1 %tobool, label %if.then, label %if.end, !dbg !5709

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5710

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5711
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !5713
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !5714

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !5715
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5716
  br i1 %8, label %if.then2, label %if.end4, !dbg !5717

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !5718
  %10 = load i32, ptr %flags.addr, align 4, !dbg !5719
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #23, !dbg !5720
  store ptr %call3, ptr %retval, align 8, !dbg !5721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5721

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !5722
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5723
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #23, !dbg !5724
  store ptr %call5, ptr %retval, align 8, !dbg !5725
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5725

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #18, !dbg !5726
  %13 = load ptr, ptr %retval, align 8, !dbg !5726
  ret ptr %13, !dbg !5726
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5727 dso_local i32 @acpi_extract_package(ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5730 dso_local void @acpi_handle_printk(ptr noundef, ptr noundef, ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5733 dso_local ptr @acpi_format_exception(i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !5736 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !5741, metadata !DIExpression()), !dbg !5742
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !5743, !range !3741, !noundef !372
  %tobool = trunc i8 %0 to i1, !dbg !5743
  %lnot = xor i1 %tobool, true, !dbg !5743
  %lnot1 = xor i1 %lnot, true, !dbg !5743
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5743
  %conv = sext i32 %lnot.ext to i64, !dbg !5743
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5743
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5743
  ret i1 %tobool2, !dbg !5744
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #13 align 16 !dbg !5745 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5749, metadata !DIExpression()), !dbg !5754
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5750, metadata !DIExpression()), !dbg !5755
  %0 = load i64, ptr %size.addr, align 8, !dbg !5756
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5757
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5758

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5759
  %tobool = icmp ne i64 %2, 0, !dbg !5759
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5760

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !5761
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5751, metadata !DIExpression()), !dbg !5762
  %3 = load i64, ptr %size.addr, align 8, !dbg !5763
  %cmp = icmp ugt i64 %3, 8192, !dbg !5765
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5766

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5767
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5768
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #23, !dbg !5769
  store ptr %call, ptr %retval, align 8, !dbg !5770
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5770

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5771
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5771
  store i32 %call2, ptr %index, align 4, !dbg !5772
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5773
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5774
  %9 = ptrtoint ptr %8 to i64, !dbg !5774
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5775
  %idxprom = zext i32 %call3 to i64, !dbg !5776
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5776
  %10 = load i32, ptr %index, align 4, !dbg !5777
  %idxprom4 = zext i32 %10 to i64, !dbg !5776
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5776
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5776
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5778
  %13 = load i64, ptr %size.addr, align 8, !dbg !5779
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #24, !dbg !5780
  store ptr %call6, ptr %retval, align 8, !dbg !5781
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5781

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !5782
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5783
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5784
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #23, !dbg !5785
  store ptr %call8, ptr %retval, align 8, !dbg !5786
  br label %return, !dbg !5786

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5787
  ret ptr %16, !dbg !5787
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5788 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5789 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #3 align 16 !dbg !5790 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5794, metadata !DIExpression()), !dbg !5796
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5795, metadata !DIExpression()), !dbg !5797
  %0 = load i64, ptr %size.addr, align 8, !dbg !5798
  %tobool = icmp ne i64 %0, 0, !dbg !5798
  br i1 %tobool, label %if.end, label %if.then, !dbg !5800

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5801
  br label %return, !dbg !5801

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5802
  %cmp = icmp ule i64 %1, 8, !dbg !5804
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5805

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5806
  br label %return, !dbg !5806

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5807
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5809
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5810

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5811
  %cmp4 = icmp ule i64 %3, 96, !dbg !5812
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5813

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5814
  br label %return, !dbg !5814

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5815
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5817
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5818

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5819
  %cmp9 = icmp ule i64 %5, 192, !dbg !5820
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5821

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5822
  br label %return, !dbg !5822

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5823
  %cmp12 = icmp ule i64 %6, 8, !dbg !5825
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5826

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5827
  br label %return, !dbg !5827

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5828
  %cmp15 = icmp ule i64 %7, 16, !dbg !5830
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5831

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5832
  br label %return, !dbg !5832

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5833
  %cmp18 = icmp ule i64 %8, 32, !dbg !5835
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5836

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5837
  br label %return, !dbg !5837

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5838
  %cmp21 = icmp ule i64 %9, 64, !dbg !5840
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5841

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5842
  br label %return, !dbg !5842

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5843
  %cmp24 = icmp ule i64 %10, 128, !dbg !5845
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5846

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5847
  br label %return, !dbg !5847

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5848
  %cmp27 = icmp ule i64 %11, 256, !dbg !5850
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5851

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5852
  br label %return, !dbg !5852

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5853
  %cmp30 = icmp ule i64 %12, 512, !dbg !5855
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5856

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5857
  br label %return, !dbg !5857

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5858
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5860
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5861

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5862
  br label %return, !dbg !5862

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5863
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5865
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5866

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5867
  br label %return, !dbg !5867

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5868
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5870
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5871

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5872
  br label %return, !dbg !5872

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5873
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5875
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5876

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5877
  br label %return, !dbg !5877

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5878
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5880
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5881

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5882
  br label %return, !dbg !5882

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5883
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5885
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5886

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5887
  br label %return, !dbg !5887

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5888
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5890
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5891

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5892
  br label %return, !dbg !5892

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5893
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5895
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5896

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5897
  br label %return, !dbg !5897

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5898
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5900
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5901

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5902
  br label %return, !dbg !5902

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5903
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5905
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5906

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5907
  br label %return, !dbg !5907

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5908
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5910
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5911

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5912
  br label %return, !dbg !5912

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5913
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5915
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5916

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5917
  br label %return, !dbg !5917

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5918, !range !3741, !noundef !372
  %tobool69 = trunc i8 %25 to i1, !dbg !5918
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5920

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5921

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_196() #25, !dbg !5922, !srcloc !5925
  unreachable, !dbg !5922

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5926

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5927

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5928

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5930

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5928

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.16, i32 480, i32 0, i64 12) #18, !dbg !5932, !srcloc !5934
  br label %do.end75, !dbg !5932

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5928

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5935
  br label %return, !dbg !5935

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5936
  ret i32 %26, !dbg !5936
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5937 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #3 align 16 !dbg !5943 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5947, metadata !DIExpression()), !dbg !5949
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5948, metadata !DIExpression()), !dbg !5950
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5951
  %and = and i32 %0, 17, !dbg !5951
  %cmp = icmp eq i32 %and, 0, !dbg !5951
  %lnot = xor i1 %cmp, true, !dbg !5951
  %lnot1 = xor i1 %lnot, true, !dbg !5951
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5951
  %conv = sext i32 %lnot.ext to i64, !dbg !5951
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5951
  %tobool = icmp ne i64 %expval, 0, !dbg !5951
  br i1 %tobool, label %if.then, label %if.end, !dbg !5953

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5954
  br label %return, !dbg !5954

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5955
  %and2 = and i32 %1, 1, !dbg !5957
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5957
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5958

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5959
  br label %return, !dbg !5959

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5960
  br label %return, !dbg !5960

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5962
  ret i32 %2, !dbg !5962
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5963 dso_local void @__compiletime_assert_196() #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5964 dso_local ptr @__request_region(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #3 align 16 !dbg !5980 {
entry:
  call void @native_irq_disable() #17, !dbg !5982
  ret void, !dbg !5983
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__inl(i16 noundef zeroext %port) #3 align 16 !dbg !5984 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i32, align 4
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5989, metadata !DIExpression()), !dbg !5991
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #18, !dbg !5991
  call void @llvm.dbg.declare(metadata ptr %value, metadata !5990, metadata !DIExpression()), !dbg !5991
  %0 = load i16, ptr %port.addr, align 2, !dbg !5991
  %1 = call i32 asm sideeffect "inl ${1:w}, $0", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #18, !dbg !5991, !srcloc !5992
  store i32 %1, ptr %value, align 4, !dbg !5991
  %2 = load i32, ptr %value, align 4, !dbg !5991
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #18, !dbg !5991
  ret i32 %2, !dbg !5991
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #3 align 16 !dbg !5993 {
entry:
  call void @native_irq_enable() #17, !dbg !5994
  ret void, !dbg !5995
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #3 align 16 !dbg !5996 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !5997, !srcloc !5998
  ret void, !dbg !5999
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #3 align 16 !dbg !6000 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !6001, !srcloc !6002
  ret void, !dbg !6003
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outl(i32 noundef %value, i16 noundef zeroext %port) #3 align 16 !dbg !6004 {
entry:
  %value.addr = alloca i32, align 4
  %port.addr = alloca i16, align 2
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6008, metadata !DIExpression()), !dbg !6010
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6009, metadata !DIExpression()), !dbg !6010
  %0 = load i32, ptr %value.addr, align 4, !dbg !6010
  %1 = load i16, ptr %port.addr, align 2, !dbg !6010
  call void asm sideeffect "outl $0, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0, i16 %1) #18, !dbg !6010, !srcloc !6011
  ret void, !dbg !6010
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_read_throttling_status(ptr noundef %pr, ptr noundef %value) #0 align 16 !dbg !6012 {
entry:
  %pr.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %bit_width = alloca i32, align 4
  %bit_offset = alloca i32, align 4
  %ptc_value = alloca i32, align 4
  %ptc_mask = alloca i64, align 8
  %throttling = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !6016, metadata !DIExpression()), !dbg !6024
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6017, metadata !DIExpression()), !dbg !6025
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit_width) #18, !dbg !6026
  call void @llvm.dbg.declare(metadata ptr %bit_width, metadata !6018, metadata !DIExpression()), !dbg !6027
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit_offset) #18, !dbg !6026
  call void @llvm.dbg.declare(metadata ptr %bit_offset, metadata !6019, metadata !DIExpression()), !dbg !6028
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptc_value) #18, !dbg !6029
  call void @llvm.dbg.declare(metadata ptr %ptc_value, metadata !6020, metadata !DIExpression()), !dbg !6030
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptc_mask) #18, !dbg !6031
  call void @llvm.dbg.declare(metadata ptr %ptc_mask, metadata !6021, metadata !DIExpression()), !dbg !6032
  call void @llvm.lifetime.start.p0(i64 8, ptr %throttling) #18, !dbg !6033
  call void @llvm.dbg.declare(metadata ptr %throttling, metadata !6022, metadata !DIExpression()), !dbg !6034
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !6035
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6023, metadata !DIExpression()), !dbg !6036
  store i32 -1, ptr %ret, align 4, !dbg !6036
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !6037
  %throttling1 = getelementptr inbounds %struct.acpi_processor, ptr %0, i32 0, i32 10, !dbg !6038
  store ptr %throttling1, ptr %throttling, align 8, !dbg !6039
  %1 = load ptr, ptr %throttling, align 8, !dbg !6040
  %status_register = getelementptr inbounds %struct.acpi_processor_throttling, ptr %1, i32 0, i32 3, !dbg !6041
  %space_id = getelementptr inbounds %struct.acpi_pct_register, ptr %status_register, i32 0, i32 2, !dbg !6042
  %2 = load i8, ptr %space_id, align 1, !dbg !6042
  %conv = zext i8 %2 to i32, !dbg !6040
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 127, label %sw.bb11
  ], !dbg !6043

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %throttling, align 8, !dbg !6044
  %status_register2 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %3, i32 0, i32 3, !dbg !6046
  %bit_width3 = getelementptr inbounds %struct.acpi_pct_register, ptr %status_register2, i32 0, i32 3, !dbg !6047
  %4 = load i8, ptr %bit_width3, align 1, !dbg !6047
  %conv4 = zext i8 %4 to i32, !dbg !6044
  store i32 %conv4, ptr %bit_width, align 4, !dbg !6048
  %5 = load ptr, ptr %throttling, align 8, !dbg !6049
  %status_register5 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %5, i32 0, i32 3, !dbg !6050
  %bit_offset6 = getelementptr inbounds %struct.acpi_pct_register, ptr %status_register5, i32 0, i32 4, !dbg !6051
  %6 = load i8, ptr %bit_offset6, align 1, !dbg !6051
  %conv7 = zext i8 %6 to i32, !dbg !6049
  store i32 %conv7, ptr %bit_offset, align 4, !dbg !6052
  %7 = load ptr, ptr %throttling, align 8, !dbg !6053
  %status_register8 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %7, i32 0, i32 3, !dbg !6054
  %address = getelementptr inbounds %struct.acpi_pct_register, ptr %status_register8, i32 0, i32 6, !dbg !6055
  %8 = load i64, ptr %address, align 1, !dbg !6055
  %9 = load i32, ptr %bit_width, align 4, !dbg !6056
  %10 = load i32, ptr %bit_offset, align 4, !dbg !6057
  %add = add i32 %9, %10, !dbg !6058
  %call = call i32 @acpi_os_read_port(i64 noundef %8, ptr noundef %ptc_value, i32 noundef %add) #17, !dbg !6059
  %11 = load i32, ptr %bit_width, align 4, !dbg !6060
  %shl = shl i32 1, %11, !dbg !6061
  %sub = sub i32 %shl, 1, !dbg !6062
  %conv9 = sext i32 %sub to i64, !dbg !6063
  store i64 %conv9, ptr %ptc_mask, align 8, !dbg !6064
  %12 = load i32, ptr %ptc_value, align 4, !dbg !6065
  %13 = load i32, ptr %bit_offset, align 4, !dbg !6066
  %shr = lshr i32 %12, %13, !dbg !6067
  %conv10 = zext i32 %shr to i64, !dbg !6068
  %14 = load i64, ptr %ptc_mask, align 8, !dbg !6069
  %and = and i64 %conv10, %14, !dbg !6070
  %15 = load ptr, ptr %value.addr, align 8, !dbg !6071
  store i64 %and, ptr %15, align 8, !dbg !6072
  store i32 0, ptr %ret, align 4, !dbg !6073
  br label %sw.epilog, !dbg !6074

sw.bb11:                                          ; preds = %entry
  %16 = load ptr, ptr %value.addr, align 8, !dbg !6075
  %call12 = call i32 @acpi_throttling_rdmsr(ptr noundef %16) #17, !dbg !6076
  store i32 %call12, ptr %ret, align 4, !dbg !6077
  br label %sw.epilog, !dbg !6078

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !6079

do.body:                                          ; preds = %sw.default
  br label %do.cond, !dbg !6081

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6081

do.end:                                           ; preds = %do.cond
  %17 = load ptr, ptr %throttling, align 8, !dbg !6079
  %status_register13 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %17, i32 0, i32 3, !dbg !6079
  %space_id14 = getelementptr inbounds %struct.acpi_pct_register, ptr %status_register13, i32 0, i32 2, !dbg !6079
  %18 = load i8, ptr %space_id14, align 1, !dbg !6079
  %conv15 = zext i8 %18 to i32, !dbg !6079
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef @.str.19, i32 noundef %conv15) #19, !dbg !6079
  store i32 %call16, ptr %tmp, align 4, !dbg !6081
  %19 = load i32, ptr %tmp, align 4, !dbg !6079
  br label %sw.epilog, !dbg !6083

sw.epilog:                                        ; preds = %do.end, %sw.bb11, %sw.bb
  %20 = load i32, ptr %ret, align 4, !dbg !6084
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !6085
  call void @llvm.lifetime.end.p0(i64 8, ptr %throttling) #18, !dbg !6085
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptc_mask) #18, !dbg !6085
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptc_value) #18, !dbg !6085
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit_offset) #18, !dbg !6085
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit_width) #18, !dbg !6085
  ret i32 %20, !dbg !6086
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_get_throttling_state(ptr noundef %pr, i64 noundef %value) #0 align 16 !dbg !6087 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %tx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !6091, metadata !DIExpression()), !dbg !6098
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6092, metadata !DIExpression()), !dbg !6099
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !6100
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6093, metadata !DIExpression()), !dbg !6101
  store i32 0, ptr %i, align 4, !dbg !6102
  br label %for.cond, !dbg !6103

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6104
  %1 = load ptr, ptr %pr.addr, align 8, !dbg !6105
  %throttling = getelementptr inbounds %struct.acpi_processor, ptr %1, i32 0, i32 10, !dbg !6106
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling, i32 0, i32 4, !dbg !6107
  %2 = load i32, ptr %state_count, align 8, !dbg !6107
  %cmp = icmp ult i32 %0, %2, !dbg !6108
  br i1 %cmp, label %for.body, label %for.end, !dbg !6109

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tx) #18, !dbg !6110
  call void @llvm.dbg.declare(metadata ptr %tx, metadata !6094, metadata !DIExpression()), !dbg !6111
  %3 = load ptr, ptr %pr.addr, align 8, !dbg !6112
  %throttling1 = getelementptr inbounds %struct.acpi_processor, ptr %3, i32 0, i32 10, !dbg !6113
  %states_tss = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling1, i32 0, i32 5, !dbg !6114
  %4 = load ptr, ptr %states_tss, align 8, !dbg !6114
  %5 = load i32, ptr %i, align 4, !dbg !6115
  %idxprom = sext i32 %5 to i64, !dbg !6112
  %arrayidx = getelementptr %struct.acpi_processor_tx_tss, ptr %4, i64 %idxprom, !dbg !6112
  store ptr %arrayidx, ptr %tx, align 8, !dbg !6111
  %6 = load ptr, ptr %tx, align 8, !dbg !6116
  %control = getelementptr inbounds %struct.acpi_processor_tx_tss, ptr %6, i32 0, i32 3, !dbg !6118
  %7 = load i64, ptr %control, align 8, !dbg !6118
  %8 = load i64, ptr %value.addr, align 8, !dbg !6119
  %cmp2 = icmp eq i64 %7, %8, !dbg !6120
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6121

if.then:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !dbg !6122
  store i32 %9, ptr %retval, align 4, !dbg !6123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6123

if.end:                                           ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6124
  br label %cleanup, !dbg !6124

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tx) #18, !dbg !6124
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup3 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6125

for.inc:                                          ; preds = %cleanup.cont
  %10 = load i32, ptr %i, align 4, !dbg !6126
  %inc = add i32 %10, 1, !dbg !6126
  store i32 %inc, ptr %i, align 4, !dbg !6126
  br label %for.cond, !dbg !6127, !llvm.loop !6128

for.end:                                          ; preds = %for.cond
  store i32 -1, ptr %retval, align 4, !dbg !6130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup3, !dbg !6130

cleanup3:                                         ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !6131
  %11 = load i32, ptr %retval, align 4, !dbg !6131
  ret i32 %11, !dbg !6131
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6132 dso_local i32 @acpi_os_read_port(i64 noundef, ptr noundef, i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_throttling_rdmsr(ptr noundef %value) #0 align 16 !dbg !6136 {
entry:
  %value.addr = alloca ptr, align 8
  %msr_high = alloca i64, align 8
  %msr_low = alloca i64, align 8
  %msr = alloca i64, align 8
  %ret = alloca i32, align 4
  %pscr_ret__ = alloca i8, align 1
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i8, align 1
  %tmp = alloca i8, align 1
  %tmp2 = alloca i8, align 1
  %tmp13 = alloca i32, align 4
  %__err = alloca i32, align 4
  %__val = alloca i64, align 8
  %tmp18 = alloca i32, align 4
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6140, metadata !DIExpression()), !dbg !6156
  call void @llvm.lifetime.start.p0(i64 8, ptr %msr_high) #18, !dbg !6157
  call void @llvm.dbg.declare(metadata ptr %msr_high, metadata !6141, metadata !DIExpression()), !dbg !6158
  call void @llvm.lifetime.start.p0(i64 8, ptr %msr_low) #18, !dbg !6157
  call void @llvm.dbg.declare(metadata ptr %msr_low, metadata !6142, metadata !DIExpression()), !dbg !6159
  call void @llvm.lifetime.start.p0(i64 8, ptr %msr) #18, !dbg !6160
  call void @llvm.dbg.declare(metadata ptr %msr, metadata !6143, metadata !DIExpression()), !dbg !6161
  store i64 0, ptr %msr, align 8, !dbg !6161
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !6162
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6144, metadata !DIExpression()), !dbg !6163
  store i32 -1, ptr %ret, align 4, !dbg !6163
  call void @llvm.lifetime.start.p0(i64 1, ptr %pscr_ret__) #18, !dbg !6164
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6145, metadata !DIExpression()), !dbg !6164
  br label %do.body, !dbg !6164

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !6165
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6148, metadata !DIExpression()), !dbg !6165
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6165
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6165
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !6164
  br label %do.cond, !dbg !6165

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6165

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %pfo_val__) #18, !dbg !6166
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6150, metadata !DIExpression()), !dbg !6166
  %1 = call i8 asm sideeffect "movb %gs:$1, $0", "=q,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) getelementptr inbounds (%struct.anon.26, ptr @cpu_info, i32 0, i32 2)) #18, !dbg !6166, !srcloc !6167
  store i8 %1, ptr %pfo_val__, align 1, !dbg !6166
  %2 = load i8, ptr %pfo_val__, align 1, !dbg !6166
  %conv = zext i8 %2 to i64, !dbg !6166
  %conv1 = trunc i64 %conv to i8, !dbg !6166
  store i8 %conv1, ptr %tmp, align 1, !dbg !6166
  call void @llvm.lifetime.end.p0(i64 1, ptr %pfo_val__) #18, !dbg !6164
  %3 = load i8, ptr %tmp, align 1, !dbg !6166
  store i8 %3, ptr %pscr_ret__, align 1, !dbg !6164
  %4 = load i8, ptr %pscr_ret__, align 1, !dbg !6164
  store i8 %4, ptr %tmp2, align 1, !dbg !6164
  call void @llvm.lifetime.end.p0(i64 1, ptr %pscr_ret__) #18, !dbg !6168
  %5 = load i8, ptr %tmp2, align 1, !dbg !6164
  %conv3 = zext i8 %5 to i32, !dbg !6168
  %cmp = icmp ne i32 %conv3, 0, !dbg !6169
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6170

lor.lhs.false:                                    ; preds = %do.end
  br i1 false, label %cond.true, label %cond.false, !dbg !6171

cond.true:                                        ; preds = %lor.lhs.false
  br i1 true, label %if.else, label %if.then, !dbg !6172

cond.false:                                       ; preds = %lor.lhs.false
  br i1 true, label %cond.true5, label %cond.false7, !dbg !6171

cond.true5:                                       ; preds = %cond.false
  %call = call zeroext i1 @x86_this_cpu_constant_test_bit(i32 noundef 22, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @cpu_info, i32 0, i32 10)) #17, !dbg !6172
  br i1 %call, label %if.else, label %if.then, !dbg !6172

cond.false7:                                      ; preds = %cond.false
  %call8 = call zeroext i1 @x86_this_cpu_variable_test_bit(i32 noundef 22, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @cpu_info, i32 0, i32 10)) #17, !dbg !6172
  br i1 %call8, label %if.else, label %if.then, !dbg !6171

if.then:                                          ; preds = %cond.false7, %cond.true5, %cond.true, %do.end
  br label %do.body10, !dbg !6173

do.body10:                                        ; preds = %if.then
  br label %do.cond11, !dbg !6176

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6176

do.end12:                                         ; preds = %do.cond11
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef @.str.20) #19, !dbg !6173
  store i32 %call14, ptr %tmp13, align 4, !dbg !6176
  %6 = load i32, ptr %tmp13, align 4, !dbg !6173
  br label %if.end, !dbg !6178

if.else:                                          ; preds = %cond.false7, %cond.true5, %cond.true
  store i64 0, ptr %msr_low, align 8, !dbg !6179
  store i64 0, ptr %msr_high, align 8, !dbg !6180
  call void @llvm.lifetime.start.p0(i64 4, ptr %__err) #18, !dbg !6181
  call void @llvm.dbg.declare(metadata ptr %__err, metadata !6152, metadata !DIExpression()), !dbg !6181
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #18, !dbg !6181
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !6155, metadata !DIExpression()), !dbg !6181
  %call15 = call i64 @native_read_msr_safe(i32 noundef 410, ptr noundef %__err) #17, !dbg !6181
  store i64 %call15, ptr %__val, align 8, !dbg !6181
  %7 = load i64, ptr %__val, align 8, !dbg !6181
  %conv16 = trunc i64 %7 to i32, !dbg !6181
  store i32 %conv16, ptr %msr_low, align 8, !dbg !6181
  %8 = load i64, ptr %__val, align 8, !dbg !6181
  %shr = lshr i64 %8, 32, !dbg !6181
  %conv17 = trunc i64 %shr to i32, !dbg !6181
  store i32 %conv17, ptr %msr_high, align 8, !dbg !6181
  %9 = load i32, ptr %__err, align 4, !dbg !6181
  store i32 %9, ptr %tmp18, align 4, !dbg !6181
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #18, !dbg !6182
  call void @llvm.lifetime.end.p0(i64 4, ptr %__err) #18, !dbg !6182
  %10 = load i32, ptr %tmp18, align 4, !dbg !6181
  %11 = load i64, ptr %msr_high, align 8, !dbg !6183
  %shl = shl i64 %11, 32, !dbg !6184
  %12 = load i64, ptr %msr_low, align 8, !dbg !6185
  %or = or i64 %shl, %12, !dbg !6186
  store i64 %or, ptr %msr, align 8, !dbg !6187
  %13 = load i64, ptr %msr, align 8, !dbg !6188
  %14 = load ptr, ptr %value.addr, align 8, !dbg !6189
  store i64 %13, ptr %14, align 8, !dbg !6190
  store i32 0, ptr %ret, align 4, !dbg !6191
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end12
  %15 = load i32, ptr %ret, align 4, !dbg !6192
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !6193
  call void @llvm.lifetime.end.p0(i64 8, ptr %msr) #18, !dbg !6193
  call void @llvm.lifetime.end.p0(i64 8, ptr %msr_low) #18, !dbg !6193
  call void @llvm.lifetime.end.p0(i64 8, ptr %msr_high) #18, !dbg !6193
  ret i32 %15, !dbg !6194
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @x86_this_cpu_constant_test_bit(i32 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6195 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6200, metadata !DIExpression()), !dbg !6205
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6201, metadata !DIExpression()), !dbg !6206
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #18, !dbg !6207
  call void @llvm.dbg.declare(metadata ptr %a, metadata !6202, metadata !DIExpression()), !dbg !6208
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6209
  %1 = load i32, ptr %nr.addr, align 4, !dbg !6210
  %div = udiv i32 %1, 64, !dbg !6211
  %idx.ext = zext i32 %div to i64, !dbg !6212
  %add.ptr = getelementptr i64, ptr %0, i64 %idx.ext, !dbg !6212
  store ptr %add.ptr, ptr %a, align 8, !dbg !6208
  %2 = load i32, ptr %nr.addr, align 4, !dbg !6213
  %rem = urem i32 %2, 64, !dbg !6214
  %sh_prom = zext i32 %rem to i64, !dbg !6215
  %shl = shl i64 1, %sh_prom, !dbg !6215
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #18, !dbg !6216
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6203, metadata !DIExpression()), !dbg !6216
  %3 = load ptr, ptr %a, align 8, !dbg !6216
  %4 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %3) #21, !dbg !6216, !srcloc !6217
  store i64 %4, ptr %pfo_val__, align 8, !dbg !6216
  %5 = load i64, ptr %pfo_val__, align 8, !dbg !6216
  store i64 %5, ptr %tmp, align 8, !dbg !6216
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #18, !dbg !6218
  %6 = load i64, ptr %tmp, align 8, !dbg !6216
  %and = and i64 %shl, %6, !dbg !6219
  %cmp = icmp ne i64 %and, 0, !dbg !6220
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #18, !dbg !6221
  ret i1 %cmp, !dbg !6222
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @x86_this_cpu_variable_test_bit(i32 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6223 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6227, metadata !DIExpression()), !dbg !6230
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6228, metadata !DIExpression()), !dbg !6231
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #18, !dbg !6232
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6229, metadata !DIExpression()), !dbg !6233
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6234
  %1 = load i32, ptr %nr.addr, align 4, !dbg !6235
  %2 = call i8 asm sideeffect "btl %gs:$2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i32 %1) #18, !dbg !6236, !srcloc !6237
  %3 = icmp ult i8 %2, 2, !dbg !6236
  call void @llvm.assume(i1 %3), !dbg !6236
  store i8 %2, ptr %oldbit, align 1, !dbg !6236
  %4 = load i8, ptr %oldbit, align 1, !dbg !6238, !range !3741, !noundef !372
  %tobool = trunc i8 %4 to i1, !dbg !6238
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #18, !dbg !6239
  ret i1 %tobool, !dbg !6240
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr_safe(i32 noundef %msr, ptr noundef %err) #4 align 16 !dbg !6241 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6246, metadata !DIExpression()), !dbg !6250
  store ptr %err, ptr %err.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !6247, metadata !DIExpression()), !dbg !6251
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #18, !dbg !6252
  call void @llvm.dbg.declare(metadata ptr %low, metadata !6248, metadata !DIExpression()), !dbg !6252
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #18, !dbg !6252
  call void @llvm.dbg.declare(metadata ptr %high, metadata !6249, metadata !DIExpression()), !dbg !6252
  %0 = load ptr, ptr %err.addr, align 8, !dbg !6253
  %1 = load i32, ptr %msr.addr, align 4, !dbg !6254
  %2 = call { i32, i64, i64 } asm sideeffect "1: rdmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=11 \0A.purgem extable_type_reg\0A .popsection\0A", "=r,={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %1) #18, !dbg !6255, !srcloc !6256
  %asmresult = extractvalue { i32, i64, i64 } %2, 0, !dbg !6255
  %asmresult1 = extractvalue { i32, i64, i64 } %2, 1, !dbg !6255
  %asmresult2 = extractvalue { i32, i64, i64 } %2, 2, !dbg !6255
  store i32 %asmresult, ptr %0, align 4, !dbg !6255
  store i64 %asmresult1, ptr %low, align 8, !dbg !6255
  store i64 %asmresult2, ptr %high, align 8, !dbg !6255
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #17, !dbg !6257
  br i1 %call, label %if.then, label %if.end, !dbg !6259

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !6260
  %4 = load i64, ptr %low, align 8, !dbg !6261
  %5 = load i64, ptr %high, align 8, !dbg !6261
  %shl = shl i64 %5, 32, !dbg !6261
  %or = or i64 %4, %shl, !dbg !6261
  %6 = load ptr, ptr %err.addr, align 8, !dbg !6262
  %7 = load i32, ptr %6, align 4, !dbg !6263
  call void @do_trace_read_msr(i32 noundef %3, i64 noundef %or, i32 noundef %7) #17, !dbg !6264
  br label %if.end, !dbg !6264

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, ptr %low, align 8, !dbg !6265
  %9 = load i64, ptr %high, align 8, !dbg !6265
  %shl3 = shl i64 %9, 32, !dbg !6265
  %or4 = or i64 %8, %shl3, !dbg !6265
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #18, !dbg !6266
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #18, !dbg !6266
  ret i64 %or4, !dbg !6267
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #3 align 16 !dbg !6268 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6284, metadata !DIExpression()), !dbg !6285
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6286
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #17, !dbg !6287
  ret i1 %call, !dbg !6288
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6289 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #3 align 16 !dbg !6292 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6297, metadata !DIExpression()), !dbg !6300
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6298, metadata !DIExpression()), !dbg !6301
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6302
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6303, !range !3741, !noundef !372
  %tobool = trunc i8 %1 to i1, !dbg !6303
  %conv = zext i1 %tobool to i32, !dbg !6303
  %or = or i32 2, %conv, !dbg !6304
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #18
          to label %asm.fallthrough [label %l_yes], !dbg !6305, !srcloc !6306

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6307
  br label %return, !dbg !6307

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6299), !dbg !6308
  store i1 true, ptr %retval, align 1, !dbg !6309
  br label %return, !dbg !6309

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6310
  ret i1 %2, !dbg !6310
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_get_throttling_value(ptr noundef %pr, i32 noundef %state, ptr noundef %value) #0 align 16 !dbg !6311 {
entry:
  %pr.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tx = alloca ptr, align 8
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !6315, metadata !DIExpression()), !dbg !6322
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6316, metadata !DIExpression()), !dbg !6323
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6317, metadata !DIExpression()), !dbg !6324
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !6325
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6318, metadata !DIExpression()), !dbg !6326
  store i32 -1, ptr %ret, align 4, !dbg !6326
  %0 = load i32, ptr %state.addr, align 4, !dbg !6327
  %cmp = icmp sge i32 %0, 0, !dbg !6328
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6329

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %state.addr, align 4, !dbg !6330
  %2 = load ptr, ptr %pr.addr, align 8, !dbg !6331
  %throttling = getelementptr inbounds %struct.acpi_processor, ptr %2, i32 0, i32 10, !dbg !6332
  %state_count = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling, i32 0, i32 4, !dbg !6333
  %3 = load i32, ptr %state_count, align 8, !dbg !6333
  %cmp1 = icmp ule i32 %1, %3, !dbg !6334
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6335

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %tx) #18, !dbg !6336
  call void @llvm.dbg.declare(metadata ptr %tx, metadata !6319, metadata !DIExpression()), !dbg !6337
  %4 = load ptr, ptr %pr.addr, align 8, !dbg !6338
  %throttling2 = getelementptr inbounds %struct.acpi_processor, ptr %4, i32 0, i32 10, !dbg !6339
  %states_tss = getelementptr inbounds %struct.acpi_processor_throttling, ptr %throttling2, i32 0, i32 5, !dbg !6340
  %5 = load ptr, ptr %states_tss, align 8, !dbg !6340
  %6 = load i32, ptr %state.addr, align 4, !dbg !6341
  %idxprom = sext i32 %6 to i64, !dbg !6338
  %arrayidx = getelementptr %struct.acpi_processor_tx_tss, ptr %5, i64 %idxprom, !dbg !6338
  store ptr %arrayidx, ptr %tx, align 8, !dbg !6337
  %7 = load ptr, ptr %tx, align 8, !dbg !6342
  %control = getelementptr inbounds %struct.acpi_processor_tx_tss, ptr %7, i32 0, i32 3, !dbg !6343
  %8 = load i64, ptr %control, align 8, !dbg !6343
  %9 = load ptr, ptr %value.addr, align 8, !dbg !6344
  store i64 %8, ptr %9, align 8, !dbg !6345
  store i32 0, ptr %ret, align 4, !dbg !6346
  call void @llvm.lifetime.end.p0(i64 8, ptr %tx) #18, !dbg !6347
  br label %if.end, !dbg !6348

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load i32, ptr %ret, align 4, !dbg !6349
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !6350
  ret i32 %10, !dbg !6351
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_write_throttling_state(ptr noundef %pr, i64 noundef %value) #0 align 16 !dbg !6352 {
entry:
  %pr.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  %bit_width = alloca i32, align 4
  %bit_offset = alloca i32, align 4
  %ptc_value = alloca i64, align 8
  %ptc_mask = alloca i64, align 8
  %throttling = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !6354, metadata !DIExpression()), !dbg !6362
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6355, metadata !DIExpression()), !dbg !6363
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit_width) #18, !dbg !6364
  call void @llvm.dbg.declare(metadata ptr %bit_width, metadata !6356, metadata !DIExpression()), !dbg !6365
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit_offset) #18, !dbg !6364
  call void @llvm.dbg.declare(metadata ptr %bit_offset, metadata !6357, metadata !DIExpression()), !dbg !6366
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptc_value) #18, !dbg !6367
  call void @llvm.dbg.declare(metadata ptr %ptc_value, metadata !6358, metadata !DIExpression()), !dbg !6368
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptc_mask) #18, !dbg !6369
  call void @llvm.dbg.declare(metadata ptr %ptc_mask, metadata !6359, metadata !DIExpression()), !dbg !6370
  call void @llvm.lifetime.start.p0(i64 8, ptr %throttling) #18, !dbg !6371
  call void @llvm.dbg.declare(metadata ptr %throttling, metadata !6360, metadata !DIExpression()), !dbg !6372
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !6373
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6361, metadata !DIExpression()), !dbg !6374
  store i32 -1, ptr %ret, align 4, !dbg !6374
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !6375
  %throttling1 = getelementptr inbounds %struct.acpi_processor, ptr %0, i32 0, i32 10, !dbg !6376
  store ptr %throttling1, ptr %throttling, align 8, !dbg !6377
  %1 = load ptr, ptr %throttling, align 8, !dbg !6378
  %control_register = getelementptr inbounds %struct.acpi_processor_throttling, ptr %1, i32 0, i32 2, !dbg !6379
  %space_id = getelementptr inbounds %struct.acpi_pct_register, ptr %control_register, i32 0, i32 2, !dbg !6380
  %2 = load i8, ptr %space_id, align 1, !dbg !6380
  %conv = zext i8 %2 to i32, !dbg !6378
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 127, label %sw.bb12
  ], !dbg !6381

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %throttling, align 8, !dbg !6382
  %control_register2 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %3, i32 0, i32 2, !dbg !6384
  %bit_width3 = getelementptr inbounds %struct.acpi_pct_register, ptr %control_register2, i32 0, i32 3, !dbg !6385
  %4 = load i8, ptr %bit_width3, align 4, !dbg !6385
  %conv4 = zext i8 %4 to i32, !dbg !6382
  store i32 %conv4, ptr %bit_width, align 4, !dbg !6386
  %5 = load ptr, ptr %throttling, align 8, !dbg !6387
  %control_register5 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %5, i32 0, i32 2, !dbg !6388
  %bit_offset6 = getelementptr inbounds %struct.acpi_pct_register, ptr %control_register5, i32 0, i32 4, !dbg !6389
  %6 = load i8, ptr %bit_offset6, align 1, !dbg !6389
  %conv7 = zext i8 %6 to i32, !dbg !6387
  store i32 %conv7, ptr %bit_offset, align 4, !dbg !6390
  %7 = load i32, ptr %bit_width, align 4, !dbg !6391
  %shl = shl i32 1, %7, !dbg !6392
  %sub = sub i32 %shl, 1, !dbg !6393
  %conv8 = sext i32 %sub to i64, !dbg !6394
  store i64 %conv8, ptr %ptc_mask, align 8, !dbg !6395
  %8 = load i64, ptr %value.addr, align 8, !dbg !6396
  %9 = load i64, ptr %ptc_mask, align 8, !dbg !6397
  %and = and i64 %8, %9, !dbg !6398
  store i64 %and, ptr %ptc_value, align 8, !dbg !6399
  %10 = load ptr, ptr %throttling, align 8, !dbg !6400
  %control_register9 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %10, i32 0, i32 2, !dbg !6401
  %address = getelementptr inbounds %struct.acpi_pct_register, ptr %control_register9, i32 0, i32 6, !dbg !6402
  %11 = load i64, ptr %address, align 1, !dbg !6402
  %12 = load i64, ptr %ptc_value, align 8, !dbg !6403
  %13 = load i32, ptr %bit_offset, align 4, !dbg !6404
  %sh_prom = zext i32 %13 to i64, !dbg !6405
  %shl10 = shl i64 %12, %sh_prom, !dbg !6405
  %conv11 = trunc i64 %shl10 to i32, !dbg !6406
  %14 = load i32, ptr %bit_width, align 4, !dbg !6407
  %15 = load i32, ptr %bit_offset, align 4, !dbg !6408
  %add = add i32 %14, %15, !dbg !6409
  %call = call i32 @acpi_os_write_port(i64 noundef %11, i32 noundef %conv11, i32 noundef %add) #17, !dbg !6410
  store i32 0, ptr %ret, align 4, !dbg !6411
  br label %sw.epilog, !dbg !6412

sw.bb12:                                          ; preds = %entry
  %16 = load i64, ptr %value.addr, align 8, !dbg !6413
  %call13 = call i32 @acpi_throttling_wrmsr(i64 noundef %16) #17, !dbg !6414
  store i32 %call13, ptr %ret, align 4, !dbg !6415
  br label %sw.epilog, !dbg !6416

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !6417

do.body:                                          ; preds = %sw.default
  br label %do.cond, !dbg !6419

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6419

do.end:                                           ; preds = %do.cond
  %17 = load ptr, ptr %throttling, align 8, !dbg !6417
  %control_register14 = getelementptr inbounds %struct.acpi_processor_throttling, ptr %17, i32 0, i32 2, !dbg !6417
  %space_id15 = getelementptr inbounds %struct.acpi_pct_register, ptr %control_register14, i32 0, i32 2, !dbg !6417
  %18 = load i8, ptr %space_id15, align 1, !dbg !6417
  %conv16 = zext i8 %18 to i32, !dbg !6417
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef @.str.19, i32 noundef %conv16) #19, !dbg !6417
  store i32 %call17, ptr %tmp, align 4, !dbg !6419
  %19 = load i32, ptr %tmp, align 4, !dbg !6417
  br label %sw.epilog, !dbg !6421

sw.epilog:                                        ; preds = %do.end, %sw.bb12, %sw.bb
  %20 = load i32, ptr %ret, align 4, !dbg !6422
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !6423
  call void @llvm.lifetime.end.p0(i64 8, ptr %throttling) #18, !dbg !6423
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptc_mask) #18, !dbg !6423
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptc_value) #18, !dbg !6423
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit_offset) #18, !dbg !6423
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit_width) #18, !dbg !6423
  ret i32 %20, !dbg !6424
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6425 dso_local i32 @acpi_os_write_port(i64 noundef, i32 noundef, i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_throttling_wrmsr(i64 noundef %value) #0 align 16 !dbg !6428 {
entry:
  %value.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %msr = alloca i64, align 8
  %pscr_ret__ = alloca i8, align 1
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i8, align 1
  %tmp = alloca i8, align 1
  %tmp2 = alloca i8, align 1
  %tmp13 = alloca i32, align 4
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6432, metadata !DIExpression()), !dbg !6442
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !6443
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6433, metadata !DIExpression()), !dbg !6444
  store i32 -1, ptr %ret, align 4, !dbg !6444
  call void @llvm.lifetime.start.p0(i64 8, ptr %msr) #18, !dbg !6445
  call void @llvm.dbg.declare(metadata ptr %msr, metadata !6434, metadata !DIExpression()), !dbg !6446
  call void @llvm.lifetime.start.p0(i64 1, ptr %pscr_ret__) #18, !dbg !6447
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6435, metadata !DIExpression()), !dbg !6447
  br label %do.body, !dbg !6447

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !6448
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6438, metadata !DIExpression()), !dbg !6448
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6448
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6448
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !6447
  br label %do.cond, !dbg !6448

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6448

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %pfo_val__) #18, !dbg !6449
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6440, metadata !DIExpression()), !dbg !6449
  %1 = call i8 asm sideeffect "movb %gs:$1, $0", "=q,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) getelementptr inbounds (%struct.anon.26, ptr @cpu_info, i32 0, i32 2)) #18, !dbg !6449, !srcloc !6450
  store i8 %1, ptr %pfo_val__, align 1, !dbg !6449
  %2 = load i8, ptr %pfo_val__, align 1, !dbg !6449
  %conv = zext i8 %2 to i64, !dbg !6449
  %conv1 = trunc i64 %conv to i8, !dbg !6449
  store i8 %conv1, ptr %tmp, align 1, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 1, ptr %pfo_val__) #18, !dbg !6447
  %3 = load i8, ptr %tmp, align 1, !dbg !6449
  store i8 %3, ptr %pscr_ret__, align 1, !dbg !6447
  %4 = load i8, ptr %pscr_ret__, align 1, !dbg !6447
  store i8 %4, ptr %tmp2, align 1, !dbg !6447
  call void @llvm.lifetime.end.p0(i64 1, ptr %pscr_ret__) #18, !dbg !6451
  %5 = load i8, ptr %tmp2, align 1, !dbg !6447
  %conv3 = zext i8 %5 to i32, !dbg !6451
  %cmp = icmp ne i32 %conv3, 0, !dbg !6452
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6453

lor.lhs.false:                                    ; preds = %do.end
  br i1 false, label %cond.true, label %cond.false, !dbg !6454

cond.true:                                        ; preds = %lor.lhs.false
  br i1 true, label %if.else, label %if.then, !dbg !6455

cond.false:                                       ; preds = %lor.lhs.false
  br i1 true, label %cond.true5, label %cond.false7, !dbg !6454

cond.true5:                                       ; preds = %cond.false
  %call = call zeroext i1 @x86_this_cpu_constant_test_bit(i32 noundef 22, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @cpu_info, i32 0, i32 10)) #17, !dbg !6455
  br i1 %call, label %if.else, label %if.then, !dbg !6455

cond.false7:                                      ; preds = %cond.false
  %call8 = call zeroext i1 @x86_this_cpu_variable_test_bit(i32 noundef 22, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @cpu_info, i32 0, i32 10)) #17, !dbg !6455
  br i1 %call8, label %if.else, label %if.then, !dbg !6454

if.then:                                          ; preds = %cond.false7, %cond.true5, %cond.true, %do.end
  br label %do.body10, !dbg !6456

do.body10:                                        ; preds = %if.then
  br label %do.cond11, !dbg !6459

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6459

do.end12:                                         ; preds = %do.cond11
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef @.str.20) #19, !dbg !6456
  store i32 %call14, ptr %tmp13, align 4, !dbg !6459
  %6 = load i32, ptr %tmp13, align 4, !dbg !6456
  br label %if.end, !dbg !6461

if.else:                                          ; preds = %cond.false7, %cond.true5, %cond.true
  %7 = load i64, ptr %value.addr, align 8, !dbg !6462
  store i64 %7, ptr %msr, align 8, !dbg !6464
  %8 = load i64, ptr %msr, align 8, !dbg !6465
  %and = and i64 %8, 4294967295, !dbg !6466
  %conv15 = trunc i64 %and to i32, !dbg !6465
  %9 = load i64, ptr %msr, align 8, !dbg !6467
  %shr = lshr i64 %9, 32, !dbg !6468
  %conv16 = trunc i64 %shr to i32, !dbg !6467
  %call17 = call i32 @wrmsr_safe(i32 noundef 410, i32 noundef %conv15, i32 noundef %conv16) #17, !dbg !6469
  store i32 0, ptr %ret, align 4, !dbg !6470
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end12
  %10 = load i32, ptr %ret, align 4, !dbg !6471
  call void @llvm.lifetime.end.p0(i64 8, ptr %msr) #18, !dbg !6472
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !6472
  ret i32 %10, !dbg !6473
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @wrmsr_safe(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #4 align 16 !dbg !6474 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6478, metadata !DIExpression()), !dbg !6481
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !6479, metadata !DIExpression()), !dbg !6482
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !6480, metadata !DIExpression()), !dbg !6483
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6484
  %1 = load i32, ptr %low.addr, align 4, !dbg !6485
  %2 = load i32, ptr %high.addr, align 4, !dbg !6486
  %call = call i32 @native_write_msr_safe(i32 noundef %0, i32 noundef %1, i32 noundef %2) #17, !dbg !6487
  ret i32 %call, !dbg !6488
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @native_write_msr_safe(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #4 align 16 !dbg !6489 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %err = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6491, metadata !DIExpression()), !dbg !6495
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !6492, metadata !DIExpression()), !dbg !6496
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !6493, metadata !DIExpression()), !dbg !6497
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !6498
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6494, metadata !DIExpression()), !dbg !6499
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6500
  %1 = load i32, ptr %low.addr, align 4, !dbg !6501
  %2 = load i32, ptr %high.addr, align 4, !dbg !6502
  %3 = call i32 asm sideeffect "1: wrmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=10 \0A.purgem extable_type_reg\0A .popsection\0A", "={ax},{cx},0,{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #18, !dbg !6503, !srcloc !6504
  store i32 %3, ptr %err, align 4, !dbg !6503
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #17, !dbg !6505
  br i1 %call, label %if.then, label %if.end, !dbg !6507

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %msr.addr, align 4, !dbg !6508
  %5 = load i32, ptr %high.addr, align 4, !dbg !6509
  %conv = zext i32 %5 to i64, !dbg !6510
  %shl = shl i64 %conv, 32, !dbg !6511
  %6 = load i32, ptr %low.addr, align 4, !dbg !6512
  %conv1 = zext i32 %6 to i64, !dbg !6512
  %or = or i64 %shl, %conv1, !dbg !6513
  %7 = load i32, ptr %err, align 4, !dbg !6514
  call void @do_trace_write_msr(i32 noundef %4, i64 noundef %or, i32 noundef %7) #17, !dbg !6515
  br label %if.end, !dbg !6515

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %err, align 4, !dbg !6516
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !6517
  ret i32 %8, !dbg !6518
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6519 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6520 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6526, metadata !DIExpression()), !dbg !6528
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6527, metadata !DIExpression()), !dbg !6529
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6530
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6531
  %div = sdiv i64 %1, 64, !dbg !6531
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6532
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !6533
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6534
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6535
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !6536
  ret void, !dbg !6537
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6538 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6540, metadata !DIExpression()), !dbg !6542
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6541, metadata !DIExpression()), !dbg !6543
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6544
  %1 = load i64, ptr %size.addr, align 8, !dbg !6545
  %conv = trunc i64 %1 to i32, !dbg !6545
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6546
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6547
  %3 = load i64, ptr %size.addr, align 8, !dbg !6547
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !6547
  ret void, !dbg !6548
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6549 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6551, metadata !DIExpression()), !dbg !6553
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6552, metadata !DIExpression()), !dbg !6554
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6555
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6557
  br i1 %1, label %if.then, label %if.else, !dbg !6558

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6559
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6559
  %shr = ashr i64 %3, 3, !dbg !6559
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6559
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6561
  %and = and i64 %4, 7, !dbg !6561
  %sh_prom = trunc i64 %and to i32, !dbg !6561
  %shl = shl i32 1, %sh_prom, !dbg !6561
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #18, !dbg !6562, !srcloc !6563
  br label %if.end, !dbg !6564

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6565
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6567
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #18, !dbg !6568, !srcloc !6569
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6570
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6571 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6573, metadata !DIExpression()), !dbg !6575
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6574, metadata !DIExpression()), !dbg !6576
  ret i1 true, !dbg !6577
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone }
attributes #18 = { nounwind }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(0,1) }
attributes #21 = { nounwind memory(read) }
attributes #22 = { nounwind memory(none) }
attributes #23 = { noredzone allocsize(0) }
attributes #24 = { noredzone allocsize(2) }
attributes #25 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287}
!llvm.ident = !{!3288}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_ignore_tpc", scope: !2, file: !3, line: 30, type: !3279, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.processor_throttling.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/processor\22 -D KBUILD_BASENAME=\22processor_throttling\22 -D KBUILD_MODNAME=\22processor\22 -D __KBUILD_MODNAME=kmod_processor -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/processor_throttling.ll drivers/acpi/processor_throttling.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !129, globals: !3153, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/processor_throttling.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8b7a4793b0b4862aee1f58ab69297eb")
!4 = !{!5, !13, !19, !25, !32, !37, !45, !53, !59, !66, !70, !76, !85, !90, !95, !101, !106, !112, !119}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !14, line: 26, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!18 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
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
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !102, line: 10, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!103 = !{!104, !105}
!104 = !DIEnumerator(name: "false", value: 0)
!105 = !DIEnumerator(name: "true", value: 1)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !107, line: 16, baseType: !7, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!108 = !{!109, !110, !111}
!109 = !DIEnumerator(name: "TT_NONE", value: 0)
!110 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!111 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !113, line: 51, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!114 = !{!115, !116, !117, !118}
!115 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!116 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!117 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!118 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !120, line: 364, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!121 = !{!122, !123, !124, !125, !126, !127, !128}
!122 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!123 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!124 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!125 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!126 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!127 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!128 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!129 = !{!130, !1179, !1180, !7, !1189, !307, !285, !46, !1162, !2036, !963, !2037, !2038, !3098, !3099, !1307, !3140, !1081, !399, !3148, !195, !2020, !3149, !3151}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !132)
!132 = !{!133, !134, !141, !146, !827, !853, !854, !855, !856, !860, !863, !864, !865, !918, !919, !920, !921, !922, !923, !924, !925, !933, !937, !957, !975, !976, !977, !978, !987, !1011, !1012, !1015, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1029, !1030, !1137, !1145, !1146, !1147, !1149, !1153, !1154, !1158, !1159, !1160, !1161, !1163, !1164, !1165, !1172, !1173, !1174, !1178}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !131, file: !6, line: 403, baseType: !5, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !131, file: !6, line: 406, baseType: !135, size: 128, offset: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !136, line: 190, size: 128, elements: !137)
!136 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!137 = !{!138, !140}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !135, file: !136, line: 191, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !135, file: !136, line: 191, baseType: !139, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !131, file: !6, line: 409, baseType: !142, size: 448, offset: 192)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 448, elements: !144)
!143 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!144 = !{!145}
!145 = !DISubrange(count: 56)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !131, file: !6, line: 417, baseType: !147, size: 768, offset: 640)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !148)
!148 = !{!149, !810, !811, !812, !815}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !147, file: !6, line: 46, baseType: !150, size: 512)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !151, line: 64, size: 512, elements: !152)
!151 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!152 = !{!153, !156, !157, !159, !248, !680, !795, !805, !806, !807, !808, !809}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !150, file: !151, line: 65, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !150, file: !151, line: 66, baseType: !135, size: 128, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !150, file: !151, line: 67, baseType: !158, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !150, file: !151, line: 68, baseType: !160, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !151, line: 168, size: 768, elements: !162)
!162 = !{!163, !164, !207, !208}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !161, file: !151, line: 169, baseType: !135, size: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !161, file: !151, line: 170, baseType: !165, size: 32, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !166, line: 29, baseType: !167)
!166 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !166, line: 17, size: 32, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, scope: !167, file: !166, line: 18, baseType: !170, size: 32)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !166, line: 18, size: 32, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !170, file: !166, line: 19, baseType: !173, size: 32)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !174, line: 14, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!175 = !{!176}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !173, file: !174, line: 15, baseType: !177, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !178, line: 44, baseType: !179)
!178 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !178, line: 14, size: 32, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !178, line: 15, baseType: !182, size: 32)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !178, line: 15, size: 32, elements: !183)
!183 = !{!184, !189, !199}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !182, file: !178, line: 16, baseType: !185, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !136, line: 174, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 172, size: 32, elements: !187)
!187 = !{!188}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !186, file: !136, line: 173, baseType: !46, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, scope: !182, file: !178, line: 24, baseType: !190, size: 16)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !182, file: !178, line: 24, size: 16, elements: !191)
!191 = !{!192, !198}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !190, file: !178, line: 25, baseType: !193, size: 8)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !194, line: 17, baseType: !195)
!194 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !196, line: 21, baseType: !197)
!196 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!197 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !190, file: !178, line: 26, baseType: !193, size: 8, offset: 8)
!199 = !DIDerivedType(tag: DW_TAG_member, scope: !182, file: !178, line: 28, baseType: !200, size: 32)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !182, file: !178, line: 28, size: 32, elements: !201)
!201 = !{!202, !206}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !200, file: !178, line: 29, baseType: !203, size: 16)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !194, line: 19, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !196, line: 24, baseType: !205)
!205 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !200, file: !178, line: 30, baseType: !203, size: 16, offset: 16)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !161, file: !151, line: 171, baseType: !150, size: 512, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !161, file: !151, line: 172, baseType: !209, size: 64, offset: 704)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !151, line: 133, size: 192, elements: !212)
!212 = !{!213, !220, !225}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !211, file: !151, line: 134, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!46, !218}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !211, file: !151, line: 135, baseType: !221, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!154, !218}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !211, file: !151, line: 136, baseType: !226, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!46, !218, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !151, line: 125, size: 20736, elements: !232)
!232 = !{!233, !238, !242, !243, !247}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !231, file: !151, line: 126, baseType: !234, size: 192)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 192, elements: !236)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!236 = !{!237}
!237 = !DISubrange(count: 3)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !231, file: !151, line: 127, baseType: !239, size: 4096, offset: 192)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 4096, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !231, file: !151, line: 128, baseType: !46, size: 32, offset: 4288)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !231, file: !151, line: 129, baseType: !244, size: 16384, offset: 4320)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 16384, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 2048)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !231, file: !151, line: 130, baseType: !46, size: 32, offset: 20704)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !150, file: !151, line: 69, baseType: !249, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !151, line: 116, size: 384, elements: !252)
!252 = !{!253, !257, !286, !627, !658, !662}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !251, file: !151, line: 117, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !158}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !251, file: !151, line: 118, baseType: !258, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !261, line: 254, size: 128, elements: !262)
!261 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!262 = !{!263, !278}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !260, file: !261, line: 255, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!267, !158, !272, !235}
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !136, line: 66, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !269, line: 73, baseType: !270)
!269 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !269, line: 15, baseType: !271)
!271 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !261, line: 30, size: 128, elements: !274)
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !273, file: !261, line: 31, baseType: !154, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !273, file: !261, line: 32, baseType: !277, size: 16, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !136, line: 24, baseType: !205)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !260, file: !261, line: 256, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!267, !158, !272, !154, !282}
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !136, line: 61, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !269, line: 72, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !269, line: 16, baseType: !285)
!285 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !251, file: !151, line: 119, baseType: !287, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !261, line: 84, size: 320, elements: !291)
!291 = !{!292, !293, !297, !623, !625}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !261, line: 85, baseType: !154, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !290, file: !261, line: 86, baseType: !294, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!277, !158, !272, !46}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !290, file: !261, line: 88, baseType: !298, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!277, !158, !301, !46}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !261, line: 175, size: 512, elements: !303)
!303 = !{!304, !305, !306, !308, !315, !325, !326}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !302, file: !261, line: 176, baseType: !273, size: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !302, file: !261, line: 177, baseType: !282, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !302, file: !261, line: 178, baseType: !307, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !302, file: !261, line: 179, baseType: !309, size: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !314, line: 32, flags: DIFlagFwdDecl)
!314 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!315 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !302, file: !261, line: 180, baseType: !316, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!267, !319, !158, !301, !235, !322, !282}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !321, line: 537, flags: DIFlagFwdDecl)
!321 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !136, line: 52, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !269, line: 88, baseType: !324)
!324 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !302, file: !261, line: 182, baseType: !316, size: 64, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !302, file: !261, line: 184, baseType: !327, size: 64, offset: 448)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!46, !319, !158, !301, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !314, line: 625, size: 1344, elements: !332)
!332 = !{!333, !350, !572, !578, !585, !586, !591, !594, !606, !607, !610, !614, !615, !616, !617, !618, !621}
!333 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !314, line: 628, baseType: !334, size: 128)
!334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !314, line: 628, size: 128, elements: !335)
!335 = !{!336, !341}
!336 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !314, line: 629, baseType: !337, size: 128)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !334, file: !314, line: 629, size: 128, elements: !338)
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !337, file: !314, line: 631, baseType: !285, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !337, file: !314, line: 632, baseType: !285, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !334, file: !314, line: 635, baseType: !342, size: 128, align: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !136, line: 232, size: 128, align: 64, elements: !343)
!343 = !{!344, !346}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !136, line: 233, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !342, file: !136, line: 234, baseType: !347, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !345}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !331, file: !314, line: 639, baseType: !351, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !314, line: 733, size: 10240, elements: !353)
!353 = !{!354, !568}
!354 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !314, line: 734, baseType: !355, size: 10240)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !352, file: !314, line: 734, size: 10240, elements: !356)
!356 = !{!357, !361, !375, !379, !380, !381, !382, !383, !384, !392, !393, !394, !403, !404, !413, !414, !415, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !462, !476, !479, !534, !535, !536, !539, !543, !544, !547, !548, !549, !555, !556}
!357 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !314, line: 739, baseType: !358, size: 512, align: 512)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !355, file: !314, line: 739, size: 512, align: 512, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !358, file: !314, line: 747, baseType: !185, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !355, file: !314, line: 750, baseType: !362, size: 128, offset: 512)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !363, line: 218, size: 128, elements: !364)
!363 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!364 = !{!365, !373, !374}
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !362, file: !363, line: 219, baseType: !366, size: 32)
!366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !362, file: !363, line: 219, size: 32, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !366, file: !363, line: 220, baseType: !165, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !366, file: !363, line: 221, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !363, line: 197, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 197, elements: !372)
!372 = !{}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !362, file: !363, line: 223, baseType: !7, size: 32, offset: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !362, file: !363, line: 224, baseType: !307, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !355, file: !314, line: 752, baseType: !376, size: 64, offset: 640)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!285, !319, !285, !285, !285, !285}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !355, file: !314, line: 756, baseType: !285, size: 64, offset: 704)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !355, file: !314, line: 757, baseType: !285, size: 64, offset: 768)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !355, file: !314, line: 760, baseType: !285, size: 64, offset: 832)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !355, file: !314, line: 761, baseType: !285, size: 64, offset: 896)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !355, file: !314, line: 763, baseType: !285, size: 64, offset: 960)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !355, file: !314, line: 764, baseType: !385, size: 64, offset: 1024)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !321, line: 299, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !321, line: 299, size: 64, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !387, file: !321, line: 299, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !391, line: 18, baseType: !285)
!391 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!392 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !355, file: !314, line: 773, baseType: !185, size: 32, offset: 1088)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !355, file: !314, line: 785, baseType: !185, size: 32, offset: 1120)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !355, file: !314, line: 795, baseType: !395, size: 64, offset: 1152)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !314, line: 726, size: 128, elements: !397)
!397 = !{!398, !402}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !396, file: !314, line: 727, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !194, line: 23, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !196, line: 31, baseType: !401)
!401 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !396, file: !314, line: 728, baseType: !46, size: 32, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !355, file: !314, line: 801, baseType: !285, size: 64, offset: 1216)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !355, file: !314, line: 804, baseType: !405, size: 64, offset: 1280)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !406, line: 13, baseType: !407)
!406 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !136, line: 181, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 179, size: 64, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !408, file: !136, line: 180, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !194, line: 22, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !196, line: 30, baseType: !324)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !355, file: !314, line: 806, baseType: !46, size: 32, offset: 1344)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !355, file: !314, line: 808, baseType: !165, size: 32, offset: 1376)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !355, file: !314, line: 823, baseType: !416, size: 320, offset: 1408)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !417, line: 48, size: 320, elements: !418)
!417 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!418 = !{!419, !420, !421, !426, !428}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !416, file: !417, line: 49, baseType: !405, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !416, file: !417, line: 55, baseType: !405, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !416, file: !417, line: 57, baseType: !422, size: 32, offset: 128)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !423, line: 15, size: 32, elements: !424)
!423 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!424 = !{!425}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !422, file: !423, line: 20, baseType: !185, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !416, file: !417, line: 59, baseType: !427, size: 32, offset: 160)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !174, line: 23, baseType: !173)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !416, file: !417, line: 60, baseType: !135, size: 128, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !355, file: !314, line: 825, baseType: !135, size: 128, offset: 1728)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !355, file: !314, line: 845, baseType: !46, size: 32, offset: 1856)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !355, file: !314, line: 849, baseType: !285, size: 64, offset: 1920)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !355, file: !314, line: 850, baseType: !285, size: 64, offset: 1984)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !355, file: !314, line: 852, baseType: !285, size: 64, offset: 2048)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !355, file: !314, line: 853, baseType: !285, size: 64, offset: 2112)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !355, file: !314, line: 854, baseType: !407, size: 64, offset: 2176)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !355, file: !314, line: 855, baseType: !285, size: 64, offset: 2240)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !355, file: !314, line: 856, baseType: !285, size: 64, offset: 2304)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !355, file: !314, line: 857, baseType: !285, size: 64, offset: 2368)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !355, file: !314, line: 858, baseType: !285, size: 64, offset: 2432)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !355, file: !314, line: 865, baseType: !441, size: 32, offset: 2496)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !442, line: 69, baseType: !443)
!442 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !442, line: 64, size: 32, elements: !444)
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !443, file: !442, line: 65, baseType: !7, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !355, file: !314, line: 867, baseType: !165, size: 32, offset: 2528)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !355, file: !314, line: 869, baseType: !285, size: 64, offset: 2560)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !355, file: !314, line: 869, baseType: !285, size: 64, offset: 2624)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !355, file: !314, line: 869, baseType: !285, size: 64, offset: 2688)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !355, file: !314, line: 869, baseType: !285, size: 64, offset: 2752)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !355, file: !314, line: 870, baseType: !285, size: 64, offset: 2816)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !355, file: !314, line: 870, baseType: !285, size: 64, offset: 2880)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !355, file: !314, line: 870, baseType: !285, size: 64, offset: 2944)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !355, file: !314, line: 871, baseType: !285, size: 64, offset: 3008)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !355, file: !314, line: 871, baseType: !285, size: 64, offset: 3072)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !355, file: !314, line: 871, baseType: !285, size: 64, offset: 3136)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !355, file: !314, line: 871, baseType: !285, size: 64, offset: 3200)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !355, file: !314, line: 873, baseType: !459, size: 3328, offset: 3264)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 3328, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 52)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !355, file: !314, line: 875, baseType: !463, size: 1280, offset: 6592)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 1280, elements: !474)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !465, line: 22, size: 320, elements: !466)
!465 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!466 = !{!467, !468, !469, !470}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !464, file: !465, line: 23, baseType: !427, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !464, file: !465, line: 24, baseType: !411, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !464, file: !465, line: 26, baseType: !135, size: 128, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !464, file: !465, line: 28, baseType: !471, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !194, line: 20, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !196, line: 26, baseType: !46)
!474 = !{!475}
!475 = !DISubrange(count: 4)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !355, file: !314, line: 877, baseType: !477, size: 64, offset: 7872)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !314, line: 877, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !355, file: !314, line: 880, baseType: !480, size: 1088, offset: 7936)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !481, line: 72, baseType: !482)
!481 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !481, line: 23, size: 1088, elements: !483)
!483 = !{!484, !485, !486, !487, !488, !491, !492, !500, !501, !528, !529, !530}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !482, file: !481, line: 28, baseType: !399, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !482, file: !481, line: 38, baseType: !407, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !482, file: !481, line: 40, baseType: !285, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !482, file: !481, line: 43, baseType: !416, size: 320, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !482, file: !481, line: 44, baseType: !489, size: 64, offset: 512)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !481, line: 44, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !482, file: !481, line: 48, baseType: !285, size: 64, offset: 576)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !482, file: !481, line: 59, baseType: !493, size: 256, offset: 640)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !494, line: 66, size: 256, elements: !495)
!494 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!495 = !{!496, !497, !498, !499}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !493, file: !494, line: 67, baseType: !405, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !493, file: !494, line: 68, baseType: !427, size: 32, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !493, file: !494, line: 70, baseType: !422, size: 32, offset: 96)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !493, file: !494, line: 72, baseType: !135, size: 128, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !482, file: !481, line: 60, baseType: !307, size: 64, offset: 896)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !482, file: !481, line: 61, baseType: !502, size: 64, offset: 960)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !505, line: 13, size: 1216, elements: !506)
!505 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!506 = !{!507, !508, !509, !510, !511, !512, !513, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !504, file: !505, line: 14, baseType: !307, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !504, file: !505, line: 15, baseType: !285, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !504, file: !505, line: 17, baseType: !285, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !504, file: !505, line: 17, baseType: !285, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !504, file: !505, line: 18, baseType: !285, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !504, file: !505, line: 18, baseType: !285, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !504, file: !505, line: 19, baseType: !514, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !504, file: !505, line: 21, baseType: !271, size: 64, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !504, file: !505, line: 23, baseType: !271, size: 64, offset: 512)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !504, file: !505, line: 24, baseType: !271, size: 64, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !504, file: !505, line: 25, baseType: !271, size: 64, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !504, file: !505, line: 26, baseType: !271, size: 64, offset: 704)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !504, file: !505, line: 27, baseType: !271, size: 64, offset: 768)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !504, file: !505, line: 28, baseType: !271, size: 64, offset: 832)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !504, file: !505, line: 29, baseType: !271, size: 64, offset: 896)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !504, file: !505, line: 30, baseType: !271, size: 64, offset: 960)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !504, file: !505, line: 31, baseType: !271, size: 64, offset: 1024)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !504, file: !505, line: 32, baseType: !271, size: 64, offset: 1088)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !504, file: !505, line: 33, baseType: !271, size: 64, offset: 1152)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !482, file: !481, line: 63, baseType: !185, size: 32, offset: 1024)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !482, file: !481, line: 69, baseType: !203, size: 16, offset: 1056)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !482, file: !481, line: 70, baseType: !531, size: 16, offset: 1072)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !194, line: 18, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !196, line: 23, baseType: !533)
!533 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !355, file: !314, line: 882, baseType: !285, size: 64, offset: 9024)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !355, file: !314, line: 885, baseType: !165, size: 32, offset: 9088)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !355, file: !314, line: 886, baseType: !537, size: 64, offset: 9152)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !314, line: 732, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !355, file: !314, line: 901, baseType: !540, size: 64, offset: 9216)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !542, line: 18, flags: DIFlagFwdDecl)
!542 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!543 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !355, file: !314, line: 904, baseType: !319, size: 64, offset: 9280)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !355, file: !314, line: 906, baseType: !545, size: 64, offset: 9344)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !314, line: 906, flags: DIFlagFwdDecl)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !355, file: !314, line: 930, baseType: !185, size: 32, offset: 9408)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !355, file: !314, line: 933, baseType: !185, size: 32, offset: 9440)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !355, file: !314, line: 935, baseType: !550, size: 64, offset: 9472)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !113, line: 103, size: 64, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !550, file: !113, line: 104, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !113, line: 101, flags: DIFlagFwdDecl)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !355, file: !314, line: 940, baseType: !405, size: 64, offset: 9536)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !355, file: !314, line: 942, baseType: !557, size: 256, offset: 9600)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !558, line: 98, size: 256, elements: !559)
!558 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!559 = !{!560, !561, !562}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !557, file: !558, line: 99, baseType: !405, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !557, file: !558, line: 100, baseType: !135, size: 128, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !557, file: !558, line: 101, baseType: !563, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !558, line: 21, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !567}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !352, file: !314, line: 986, baseType: !569, offset: 10240)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: -1)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !331, file: !314, line: 640, baseType: !573, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !321, line: 297, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !321, line: 297, size: 64, elements: !575)
!575 = !{!576}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !574, file: !321, line: 297, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !391, line: 19, baseType: !285)
!578 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !314, line: 646, baseType: !579, size: 64, offset: 256)
!579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !314, line: 646, size: 64, elements: !580)
!580 = !{!581, !584}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !579, file: !314, line: 647, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !314, line: 542, baseType: !285)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !579, file: !314, line: 648, baseType: !583, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !331, file: !314, line: 666, baseType: !46, size: 32, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !331, file: !314, line: 667, baseType: !587, size: 64, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !314, line: 579, size: 320, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !588, file: !314, line: 580, baseType: !416, size: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !331, file: !314, line: 670, baseType: !592, size: 8, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !136, line: 35, baseType: !593)
!593 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !331, file: !314, line: 681, baseType: !595, size: 256, offset: 512)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !331, file: !314, line: 678, size: 256, elements: !596)
!596 = !{!597, !605}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !595, file: !314, line: 679, baseType: !598, size: 192, align: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !599, line: 5, size: 192, align: 64, elements: !600)
!599 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!600 = !{!601, !602, !604}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !598, file: !599, line: 6, baseType: !285, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !598, file: !599, line: 7, baseType: !603, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !598, file: !599, line: 8, baseType: !603, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !595, file: !314, line: 680, baseType: !285, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !331, file: !314, line: 689, baseType: !135, size: 128, offset: 768)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !331, file: !314, line: 691, baseType: !608, size: 64, offset: 896)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !314, line: 691, flags: DIFlagFwdDecl)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !331, file: !314, line: 694, baseType: !611, size: 64, offset: 960)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !613)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !314, line: 694, flags: DIFlagFwdDecl)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !331, file: !314, line: 697, baseType: !285, size: 64, offset: 1024)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !331, file: !314, line: 699, baseType: !319, size: 64, offset: 1088)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !331, file: !314, line: 700, baseType: !307, size: 64, offset: 1152)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !331, file: !314, line: 711, baseType: !405, size: 64, offset: 1216)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !331, file: !314, line: 717, baseType: !619, size: 64, offset: 1280)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !314, line: 717, flags: DIFlagFwdDecl)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !331, file: !314, line: 722, baseType: !622, offset: 1344)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !314, line: 570, elements: !372)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !290, file: !261, line: 90, baseType: !624, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !290, file: !261, line: 91, baseType: !626, size: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !251, file: !151, line: 120, baseType: !628, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!631, !218}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !634)
!634 = !{!635, !636, !640, !644, !650, !654}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !14, line: 40, baseType: !13, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !633, file: !14, line: 41, baseType: !637, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!592}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !633, file: !14, line: 42, baseType: !641, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!307}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !633, file: !14, line: 43, baseType: !645, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!514, !648}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !633, file: !14, line: 44, baseType: !651, size: 64, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!514}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !633, file: !14, line: 45, baseType: !655, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !307}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !251, file: !151, line: 121, baseType: !659, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!514, !218}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !251, file: !151, line: 122, baseType: !663, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !218, !666, !673}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !542, line: 23, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !542, line: 21, size: 32, elements: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !668, file: !542, line: 22, baseType: !671, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !136, line: 37, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !269, line: 49, baseType: !7)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !542, line: 28, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !542, line: 26, size: 32, elements: !676)
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !675, file: !542, line: 27, baseType: !678, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !136, line: 38, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !269, line: 50, baseType: !7)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !150, file: !151, line: 70, baseType: !681, size: 64, offset: 384)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !683, line: 190, size: 1152, elements: !684)
!683 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692, !787, !788, !789, !790, !791, !794}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !682, file: !683, line: 191, baseType: !185, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !682, file: !683, line: 192, baseType: !185, size: 32, offset: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !682, file: !683, line: 202, baseType: !681, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !682, file: !683, line: 203, baseType: !154, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !682, file: !683, line: 205, baseType: !598, size: 192, align: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !682, file: !683, line: 207, baseType: !514, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !682, file: !683, line: 208, baseType: !7, size: 32, offset: 448)
!692 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !683, line: 209, baseType: !693, size: 256, offset: 512)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !682, file: !683, line: 209, size: 256, elements: !694)
!694 = !{!695, !707, !711}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !693, file: !683, line: 210, baseType: !696, size: 256)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !683, line: 153, size: 256, elements: !697)
!697 = !{!698, !699, !703, !706}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !696, file: !683, line: 154, baseType: !285, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !696, file: !683, line: 156, baseType: !700, size: 64, offset: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !599, line: 12, size: 64, elements: !701)
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !700, file: !599, line: 13, baseType: !603, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !696, file: !683, line: 162, baseType: !704, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !683, line: 162, flags: DIFlagFwdDecl)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !696, file: !683, line: 167, baseType: !285, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !693, file: !683, line: 211, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !683, line: 170, size: 64, elements: !709)
!709 = !{!710}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !708, file: !683, line: 171, baseType: !681, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !693, file: !683, line: 212, baseType: !712, size: 256)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !683, line: 174, size: 256, elements: !713)
!713 = !{!714, !782, !785, !786}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !712, file: !683, line: 175, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !683, line: 271, size: 768, elements: !718)
!718 = !{!719, !742, !746, !750, !755, !759, !763, !767, !768, !769, !770, !778}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !717, file: !683, line: 276, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!46, !723}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !683, line: 251, size: 1216, elements: !725)
!725 = !{!726, !727, !728, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !724, file: !683, line: 253, baseType: !681, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !724, file: !683, line: 254, baseType: !319, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !724, file: !683, line: 255, baseType: !729, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !731, line: 66, flags: DIFlagFwdDecl)
!731 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!732 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !724, file: !683, line: 256, baseType: !307, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !724, file: !683, line: 259, baseType: !493, size: 256, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !724, file: !683, line: 260, baseType: !493, size: 256, offset: 512)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !724, file: !683, line: 261, baseType: !46, size: 32, offset: 768)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !724, file: !683, line: 262, baseType: !135, size: 128, offset: 832)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !724, file: !683, line: 263, baseType: !235, size: 64, offset: 960)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !724, file: !683, line: 265, baseType: !282, size: 64, offset: 1024)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !724, file: !683, line: 266, baseType: !592, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !724, file: !683, line: 267, baseType: !592, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !724, file: !683, line: 268, baseType: !611, size: 64, offset: 1152)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !717, file: !683, line: 277, baseType: !743, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !723}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !717, file: !683, line: 290, baseType: !747, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!46, !729, !307}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !717, file: !683, line: 292, baseType: !751, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!307, !729, !754}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !717, file: !683, line: 293, baseType: !756, size: 64, offset: 256)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!307, !729, !307, !754}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !717, file: !683, line: 294, baseType: !760, size: 64, offset: 320)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{null, !729, !307}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !717, file: !683, line: 296, baseType: !764, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!267, !723, !235, !282, !322}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !717, file: !683, line: 306, baseType: !282, size: 64, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !717, file: !683, line: 313, baseType: !592, size: 8, offset: 512)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !717, file: !683, line: 314, baseType: !764, size: 64, offset: 576)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !717, file: !683, line: 317, baseType: !771, size: 64, offset: 640)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!774, !723, !776}
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !775, line: 59, baseType: !7)
!775 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !683, line: 31, flags: DIFlagFwdDecl)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !717, file: !683, line: 320, baseType: !779, size: 64, offset: 704)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!46, !723, !330}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !712, file: !683, line: 176, baseType: !783, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !683, line: 35, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !712, file: !683, line: 177, baseType: !322, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !712, file: !683, line: 178, baseType: !681, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !682, file: !683, line: 215, baseType: !307, size: 64, offset: 768)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !682, file: !683, line: 221, baseType: !399, size: 64, offset: 832)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !682, file: !683, line: 223, baseType: !205, size: 16, offset: 896)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !682, file: !683, line: 224, baseType: !277, size: 16, offset: 912)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !682, file: !683, line: 225, baseType: !792, size: 64, offset: 960)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !683, line: 36, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !682, file: !683, line: 227, baseType: !342, size: 128, align: 64, offset: 1024)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !150, file: !151, line: 71, baseType: !796, size: 32, offset: 448)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !797, line: 19, size: 32, elements: !798)
!797 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!798 = !{!799}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !796, file: !797, line: 20, baseType: !800, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !801, line: 113, baseType: !802)
!801 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !801, line: 111, size: 32, elements: !803)
!803 = !{!804}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !802, file: !801, line: 112, baseType: !185, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !150, file: !151, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !150, file: !151, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !150, file: !151, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !150, file: !151, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !150, file: !151, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !147, file: !6, line: 47, baseType: !130, size: 64, offset: 512)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !147, file: !6, line: 48, baseType: !158, size: 64, offset: 576)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !147, file: !6, line: 49, baseType: !813, size: 64, offset: 640)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !147, file: !6, line: 50, baseType: !816, size: 64, offset: 704)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !818, line: 26, size: 256, elements: !819)
!818 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !817, file: !818, line: 27, baseType: !7, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !817, file: !818, line: 28, baseType: !822, size: 192, offset: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !823, line: 43, size: 192, elements: !824)
!823 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !822, file: !823, line: 44, baseType: !427, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !822, file: !823, line: 45, baseType: !135, size: 128, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !131, file: !6, line: 418, baseType: !828, size: 64, offset: 1408)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !830)
!830 = !{!831, !832, !837, !841, !845, !849}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !829, file: !6, line: 54, baseType: !273, size: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !829, file: !6, line: 55, baseType: !833, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!267, !828, !836, !235}
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !829, file: !6, line: 57, baseType: !838, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!267, !828, !836, !154, !282}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !829, file: !6, line: 59, baseType: !842, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !130, !154}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !829, file: !6, line: 60, baseType: !846, size: 64, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!46, !130}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !829, file: !6, line: 61, baseType: !850, size: 64, offset: 384)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !130}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !131, file: !6, line: 419, baseType: !154, size: 64, offset: 1472)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !131, file: !6, line: 420, baseType: !154, size: 64, offset: 1536)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !131, file: !6, line: 421, baseType: !158, size: 64, offset: 1600)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !131, file: !6, line: 424, baseType: !857, size: 64, offset: 1664)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !859)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !131, file: !6, line: 425, baseType: !861, size: 64, offset: 1728)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !131, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !131, file: !6, line: 435, baseType: !493, size: 256, offset: 1856)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !131, file: !6, line: 437, baseType: !866, size: 64, offset: 2112)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !868, line: 69, size: 320, elements: !869)
!868 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!869 = !{!870, !871, !872, !889, !891, !895, !896}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !867, file: !868, line: 70, baseType: !154, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !867, file: !868, line: 71, baseType: !130, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !867, file: !868, line: 72, baseType: !873, size: 64, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !875)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !868, line: 47, size: 256, elements: !876)
!876 = !{!877, !878, !884, !888}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !875, file: !868, line: 49, baseType: !7, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !875, file: !868, line: 51, baseType: !879, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!46, !154, !882}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !867)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !875, file: !868, line: 53, baseType: !885, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!46, !235, !882}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !875, file: !868, line: 55, baseType: !655, size: 64, offset: 192)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !867, file: !868, line: 73, baseType: !890, size: 16, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !867, file: !868, line: 74, baseType: !892, size: 8, offset: 208)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !194, line: 16, baseType: !893)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !196, line: 20, baseType: !894)
!894 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !867, file: !868, line: 75, baseType: !193, size: 8, offset: 216)
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !867, file: !868, line: 76, baseType: !897, size: 64, offset: 256)
!897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !867, file: !868, line: 76, size: 64, elements: !898)
!898 = !{!899, !900, !907}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !897, file: !868, line: 77, baseType: !307, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !897, file: !868, line: 78, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !903)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !868, line: 86, size: 128, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !903, file: !868, line: 87, baseType: !7, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !903, file: !868, line: 88, baseType: !235, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !897, file: !868, line: 79, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !910)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !868, line: 92, size: 256, elements: !911)
!911 = !{!912, !913, !914, !916, !917}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !910, file: !868, line: 94, baseType: !7, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !910, file: !868, line: 95, baseType: !7, size: 32, offset: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !910, file: !868, line: 96, baseType: !915, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !910, file: !868, line: 97, baseType: !873, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !910, file: !868, line: 98, baseType: !307, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !131, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !131, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !131, file: !6, line: 442, baseType: !857, size: 64, offset: 2240)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !131, file: !6, line: 443, baseType: !861, size: 64, offset: 2304)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !131, file: !6, line: 444, baseType: !592, size: 8, offset: 2368)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !131, file: !6, line: 451, baseType: !592, size: 8, offset: 2376)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !131, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !131, file: !6, line: 455, baseType: !926, size: 64, offset: 2432)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !928, line: 23, size: 96, elements: !929)
!928 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!929 = !{!930, !931, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !927, file: !928, line: 24, baseType: !46, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !927, file: !928, line: 24, baseType: !46, size: 32, offset: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !927, file: !928, line: 24, baseType: !46, size: 32, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !131, file: !6, line: 458, baseType: !934, size: 64, offset: 2496)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!46}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !131, file: !6, line: 460, baseType: !938, size: 4032, align: 512, offset: 2560)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !939, size: 4032, elements: !955)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !940)
!940 = !{!941, !942, !943}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !939, file: !6, line: 363, baseType: !307, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !939, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !939, file: !6, line: 367, baseType: !944, size: 448, offset: 128)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !944, file: !6, line: 320, baseType: !130, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !944, file: !6, line: 321, baseType: !948, size: 384, offset: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !949, line: 40, size: 384, elements: !950)
!949 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!950 = !{!951}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !948, file: !949, line: 41, baseType: !952, size: 384, align: 64)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 384, align: 64, elements: !953)
!953 = !{!954}
!954 = !DISubrange(count: 2)
!955 = !{!956}
!956 = !DISubrange(count: 7)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !131, file: !6, line: 463, baseType: !958, size: 192, offset: 6592)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !959, line: 8, size: 192, elements: !960)
!959 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!960 = !{!961, !962, !964}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !958, file: !959, line: 10, baseType: !7, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !958, file: !959, line: 11, baseType: !963, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !958, file: !959, line: 12, baseType: !965, size: 64, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !967, line: 59, size: 48, elements: !968)
!967 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!968 = !{!969, !970, !971, !972, !973, !974}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !966, file: !967, line: 60, baseType: !531, size: 16)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !966, file: !967, line: 61, baseType: !531, size: 16, offset: 16)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !966, file: !967, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !966, file: !967, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !966, file: !967, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !966, file: !967, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !131, file: !6, line: 465, baseType: !285, size: 64, offset: 6784)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !131, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !131, file: !6, line: 470, baseType: !135, size: 128, offset: 6912)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !131, file: !6, line: 471, baseType: !979, size: 64, offset: 7040)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !981, line: 33, size: 96, elements: !982)
!981 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!982 = !{!983, !984, !985, !986}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !980, file: !981, line: 37, baseType: !46, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !980, file: !981, line: 43, baseType: !46, size: 32, offset: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !980, file: !981, line: 45, baseType: !205, size: 16, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !980, file: !981, line: 47, baseType: !205, size: 16, offset: 80)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !131, file: !6, line: 476, baseType: !988, size: 64, offset: 7104)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !990)
!990 = !{!991, !1008, !1009, !1010}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !989, file: !6, line: 379, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !994, line: 204, baseType: !995)
!994 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !994, line: 197, size: 192, elements: !996)
!996 = !{!997, !1000, !1001, !1002, !1004, !1006}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !995, file: !994, line: 198, baseType: !998, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !994, line: 21, baseType: !999)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !196, line: 27, baseType: !7)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !995, file: !994, line: 199, baseType: !197, size: 8, offset: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !995, file: !994, line: 200, baseType: !197, size: 8, offset: 40)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !995, file: !994, line: 201, baseType: !1003, size: 16, offset: 48)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !994, line: 17, baseType: !204)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !995, file: !994, line: 202, baseType: !1005, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !994, line: 16, baseType: !400)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !995, file: !994, line: 203, baseType: !1007, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !994, line: 22, baseType: !400)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !989, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !989, file: !6, line: 381, baseType: !235, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !989, file: !6, line: 382, baseType: !235, size: 64, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !131, file: !6, line: 477, baseType: !989, size: 256, offset: 7168)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !131, file: !6, line: 480, baseType: !1013, size: 64, offset: 7424)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !131, file: !6, line: 483, baseType: !1016, size: 64, offset: 7488)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !131, file: !6, line: 488, baseType: !235, size: 64, offset: 7552)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !131, file: !6, line: 492, baseType: !307, size: 64, offset: 7616)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !131, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !131, file: !6, line: 495, baseType: !307, size: 64, offset: 7744)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !131, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !131, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !131, file: !6, line: 500, baseType: !1025, size: 64, offset: 7872)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1027, line: 45, baseType: !1028)
!1027 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !131, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !131, file: !6, line: 504, baseType: !1031, size: 64, offset: 8000)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1034, line: 96, size: 192, elements: !1035)
!1034 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1035 = !{!1036, !1037, !1098, !1101}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1033, file: !1034, line: 97, baseType: !7, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1033, file: !1034, line: 98, baseType: !1038, size: 64, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1034, line: 24, size: 3072, elements: !1040)
!1040 = !{!1041, !1043, !1044, !1045, !1046, !1060, !1061, !1062, !1063, !1082, !1083, !1084, !1095, !1096, !1097}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1039, file: !1034, line: 26, baseType: !1042, size: 128)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 128, elements: !953)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1039, file: !1034, line: 27, baseType: !1042, size: 128, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1039, file: !1034, line: 28, baseType: !46, size: 32, offset: 256)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1039, file: !1034, line: 31, baseType: !165, size: 32, align: 512, offset: 512)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1039, file: !1034, line: 32, baseType: !1047, size: 960, offset: 576)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1048, line: 206, size: 960, elements: !1049)
!1048 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1049 = !{!1050, !1051, !1054, !1056, !1057, !1059}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1047, file: !1048, line: 207, baseType: !345, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1047, file: !1048, line: 208, baseType: !1052, size: 256, offset: 64)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1053, size: 256, elements: !474)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1047, file: !1048, line: 209, baseType: !1055, size: 256, offset: 320)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 256, elements: !474)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1047, file: !1048, line: 213, baseType: !271, size: 64, offset: 576)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1047, file: !1048, line: 215, baseType: !1058, size: 256, offset: 640)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 256, elements: !474)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1047, file: !1048, line: 216, baseType: !193, size: 8, offset: 896)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1039, file: !1034, line: 33, baseType: !285, size: 64, offset: 1536)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1039, file: !1034, line: 34, baseType: !285, size: 64, offset: 1600)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1039, file: !1034, line: 35, baseType: !592, size: 8, offset: 1664)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1039, file: !1034, line: 36, baseType: !1064, size: 320, offset: 1728)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1065, line: 11, size: 320, elements: !1066)
!1065 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1066 = !{!1067, !1074, !1075, !1080}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1064, file: !1065, line: 16, baseType: !1068, size: 128)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !136, line: 198, size: 128, elements: !1069)
!1069 = !{!1070, !1072}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1068, file: !136, line: 199, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1068, file: !136, line: 199, baseType: !1073, size: 64, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1064, file: !1065, line: 17, baseType: !285, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1064, file: !1065, line: 18, baseType: !1076, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{null, !1079}
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1064, file: !1065, line: 19, baseType: !1081, size: 32, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !194, line: 21, baseType: !999)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1039, file: !1034, line: 37, baseType: !557, size: 256, offset: 2048)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1039, file: !1034, line: 38, baseType: !342, size: 128, align: 64, offset: 2304)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1039, file: !1034, line: 39, baseType: !1085, size: 64, offset: 2432)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1034, line: 49, size: 768, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1094}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1086, file: !1034, line: 50, baseType: !165, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1086, file: !1034, line: 51, baseType: !1055, size: 256, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1086, file: !1034, line: 53, baseType: !1055, size: 256, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1086, file: !1034, line: 54, baseType: !285, size: 64, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1086, file: !1034, line: 55, baseType: !1085, size: 64, offset: 640)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1086, file: !1034, line: 56, baseType: !46, size: 32, offset: 704)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1086, file: !1034, line: 57, baseType: !46, size: 32, offset: 736)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1039, file: !1034, line: 40, baseType: !285, size: 64, offset: 2496)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1039, file: !1034, line: 42, baseType: !46, size: 32, offset: 2560)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1039, file: !1034, line: 43, baseType: !1032, size: 64, offset: 2624)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1033, file: !1034, line: 99, baseType: !1099, offset: 128)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1100, line: 211, elements: !372)
!1100 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1033, file: !1034, line: 100, baseType: !1102, size: 64, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1034, line: 63, size: 3008, elements: !1104)
!1104 = !{!1105, !1106, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1136}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1103, file: !1034, line: 64, baseType: !1085, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1103, file: !1034, line: 65, baseType: !1107, size: 192, offset: 64)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1085, size: 192, elements: !236)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1103, file: !1034, line: 67, baseType: !46, size: 32, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1103, file: !1034, line: 68, baseType: !493, size: 256, offset: 320)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1103, file: !1034, line: 69, baseType: !165, size: 32, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1103, file: !1034, line: 70, baseType: !493, size: 256, offset: 640)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1103, file: !1034, line: 71, baseType: !285, size: 64, offset: 896)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1103, file: !1034, line: 72, baseType: !285, size: 64, offset: 960)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1103, file: !1034, line: 73, baseType: !285, size: 64, offset: 1024)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1103, file: !1034, line: 74, baseType: !285, size: 64, offset: 1088)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1103, file: !1034, line: 75, baseType: !285, size: 64, offset: 1152)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1103, file: !1034, line: 76, baseType: !285, size: 64, offset: 1216)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1103, file: !1034, line: 77, baseType: !285, size: 64, offset: 1280)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1103, file: !1034, line: 78, baseType: !285, size: 64, offset: 1344)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1103, file: !1034, line: 79, baseType: !592, size: 8, offset: 1408)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1103, file: !1034, line: 80, baseType: !285, size: 64, offset: 1472)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1103, file: !1034, line: 81, baseType: !493, size: 256, offset: 1536)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1103, file: !1034, line: 82, baseType: !817, size: 256, offset: 1792)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1103, file: !1034, line: 84, baseType: !185, size: 32, offset: 2048)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1103, file: !1034, line: 87, baseType: !285, size: 64, offset: 2112)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1103, file: !1034, line: 88, baseType: !285, size: 64, offset: 2176)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1103, file: !1034, line: 89, baseType: !1128, size: 704, offset: 2240)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !558, line: 111, size: 704, elements: !1129)
!1129 = !{!1130, !1131, !1132, !1135}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1128, file: !558, line: 112, baseType: !557, size: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1128, file: !558, line: 113, baseType: !1064, size: 320, offset: 256)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1128, file: !558, line: 116, baseType: !1133, size: 64, offset: 576)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !558, line: 18, flags: DIFlagFwdDecl)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1128, file: !558, line: 117, baseType: !46, size: 32, offset: 640)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1103, file: !1034, line: 90, baseType: !1032, size: 64, offset: 2944)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !131, file: !6, line: 515, baseType: !1138, size: 64, offset: 8064)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1140, line: 117, size: 128, elements: !1141)
!1140 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1141 = !{!1142, !1143, !1144}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1139, file: !1140, line: 118, baseType: !472, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1139, file: !1140, line: 119, baseType: !472, size: 32, offset: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1139, file: !1140, line: 120, baseType: !271, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !131, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !131, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !131, file: !6, line: 520, baseType: !1148, size: 64, offset: 8192)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !131, file: !6, line: 523, baseType: !1150, size: 64, offset: 8256)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !131, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !131, file: !6, line: 525, baseType: !1155, size: 64, offset: 8384)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !131, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !131, file: !6, line: 533, baseType: !307, size: 64, offset: 8512)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !131, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !131, file: !6, line: 535, baseType: !1162, size: 64, offset: 8640)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !131, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !131, file: !6, line: 539, baseType: !46, size: 32, offset: 8736)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !131, file: !6, line: 540, baseType: !1166, size: 64, offset: 8768)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1168, line: 32, size: 64, elements: !1169)
!1168 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1169 = !{!1170, !1171}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1167, file: !1168, line: 33, baseType: !472, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1167, file: !1168, line: 34, baseType: !472, size: 32, offset: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !131, file: !6, line: 563, baseType: !135, size: 128, offset: 8832)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !131, file: !6, line: 565, baseType: !135, size: 128, offset: 8960)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !131, file: !6, line: 568, baseType: !1175, size: 64, offset: 9088)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !131, file: !6, line: 570, baseType: !185, size: 32, offset: 9152)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !136, line: 154, baseType: !7)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1182)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1183, line: 19, size: 64, elements: !1184)
!1183 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1184 = !{!1185}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1182, file: !1183, line: 19, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 64, elements: !1187)
!1187 = !{!1188}
!1188 = !DISubrange(count: 1)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor", file: !1192, line: 223, size: 7936, elements: !1193)
!1192 = !DIFile(filename: "./include/acpi/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5439c2680e180b2809cf646c46c358d2")
!1193 = !{!1194, !1197, !1198, !1201, !1202, !1203, !1204, !1205, !1219, !1258, !1298, !1345, !1355, !2033, !2034, !2035}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1191, file: !1192, line: 224, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !1196, line: 424, baseType: !307)
!1196 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_id", scope: !1191, file: !1192, line: 225, baseType: !1081, size: 32, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "phys_id", scope: !1191, file: !1192, line: 226, baseType: !1199, size: 32, offset: 96)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_cpuid_t", file: !1200, line: 287, baseType: !1081)
!1200 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1191, file: !1192, line: 227, baseType: !1081, size: 32, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "pblk", scope: !1191, file: !1192, line: 228, baseType: !1081, size: 32, offset: 160)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "performance_platform_limit", scope: !1191, file: !1192, line: 229, baseType: !46, size: 32, offset: 192)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "throttling_platform_limit", scope: !1191, file: !1192, line: 230, baseType: !46, size: 32, offset: 224)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1191, file: !1192, line: 233, baseType: !1206, size: 16, offset: 256)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_flags", file: !1192, line: 209, size: 16, elements: !1207)
!1207 = !{!1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1206, file: !1192, line: 210, baseType: !193, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1206, file: !1192, line: 211, baseType: !193, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "throttling", scope: !1206, file: !1192, line: 212, baseType: !193, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1206, file: !1192, line: 213, baseType: !193, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "bm_control", scope: !1206, file: !1192, line: 214, baseType: !193, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "bm_check", scope: !1206, file: !1192, line: 215, baseType: !193, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "has_cst", scope: !1206, file: !1192, line: 216, baseType: !193, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "has_lpi", scope: !1206, file: !1192, line: 217, baseType: !193, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "power_setup_done", scope: !1206, file: !1192, line: 218, baseType: !193, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "bm_rld_set", scope: !1206, file: !1192, line: 219, baseType: !193, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "need_hotplug_init", scope: !1206, file: !1192, line: 220, baseType: !193, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1191, file: !1192, line: 234, baseType: !1220, size: 4736, offset: 320)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_power", file: !1192, line: 92, size: 4736, elements: !1221)
!1221 = !{!1222, !1223, !1257}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1220, file: !1192, line: 93, baseType: !46, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !1192, line: 94, baseType: !1224, size: 4608, offset: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1220, file: !1192, line: 94, size: 4608, elements: !1225)
!1225 = !{!1226, !1243}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1224, file: !1192, line: 95, baseType: !1227, size: 3328)
!1227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1228, size: 3328, elements: !1241)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_cx", file: !1192, line: 68, size: 416, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1228, file: !1192, line: 69, baseType: !193, size: 8)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1228, file: !1192, line: 70, baseType: !193, size: 8, offset: 8)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1228, file: !1192, line: 71, baseType: !1081, size: 32, offset: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "entry_method", scope: !1228, file: !1192, line: 72, baseType: !193, size: 8, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1228, file: !1192, line: 73, baseType: !193, size: 8, offset: 72)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1228, file: !1192, line: 74, baseType: !1081, size: 32, offset: 96)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "bm_sts_skip", scope: !1228, file: !1192, line: 75, baseType: !193, size: 8, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1228, file: !1192, line: 76, baseType: !1238, size: 256, offset: 136)
!1238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 256, elements: !1239)
!1239 = !{!1240}
!1240 = !DISubrange(count: 32)
!1241 = !{!1242}
!1242 = !DISubrange(count: 8)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "lpi_states", scope: !1224, file: !1192, line: 96, baseType: !1244, size: 4608)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1245, size: 4608, elements: !1241)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpi_state", file: !1192, line: 79, size: 576, elements: !1246)
!1246 = !{!1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "min_residency", scope: !1245, file: !1192, line: 80, baseType: !1081, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "wake_latency", scope: !1245, file: !1192, line: 81, baseType: !1081, size: 32, offset: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1245, file: !1192, line: 82, baseType: !1081, size: 32, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "arch_flags", scope: !1245, file: !1192, line: 83, baseType: !1081, size: 32, offset: 96)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "res_cnt_freq", scope: !1245, file: !1192, line: 84, baseType: !1081, size: 32, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "enable_parent_state", scope: !1245, file: !1192, line: 85, baseType: !1081, size: 32, offset: 160)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1245, file: !1192, line: 86, baseType: !399, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1245, file: !1192, line: 87, baseType: !193, size: 8, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "entry_method", scope: !1245, file: !1192, line: 88, baseType: !193, size: 8, offset: 264)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1245, file: !1192, line: 89, baseType: !1238, size: 256, offset: 272)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "timer_broadcast_on_state", scope: !1220, file: !1192, line: 98, baseType: !46, size: 32, offset: 4672)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1191, file: !1192, line: 235, baseType: !1259, size: 64, offset: 5056)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_performance", file: !1192, line: 130, size: 896, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1274, !1275, !1276, !1286, !1294, !1297}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1260, file: !1192, line: 131, baseType: !7, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "platform_limit", scope: !1260, file: !1192, line: 132, baseType: !7, size: 32, offset: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "control_register", scope: !1260, file: !1192, line: 133, baseType: !1265, size: 120, offset: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pct_register", file: !1192, line: 111, size: 120, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270, !1271, !1272, !1273}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !1265, file: !1192, line: 112, baseType: !193, size: 8)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1265, file: !1192, line: 113, baseType: !203, size: 16, offset: 8)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1265, file: !1192, line: 114, baseType: !193, size: 8, offset: 24)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !1265, file: !1192, line: 115, baseType: !193, size: 8, offset: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1265, file: !1192, line: 116, baseType: !193, size: 8, offset: 40)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1265, file: !1192, line: 117, baseType: !193, size: 8, offset: 48)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1265, file: !1192, line: 118, baseType: !399, size: 64, offset: 56)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "status_register", scope: !1260, file: !1192, line: 134, baseType: !1265, size: 120, offset: 184)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1260, file: !1192, line: 135, baseType: !7, size: 32, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1260, file: !1192, line: 136, baseType: !1277, size: 64, offset: 384)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_px", file: !1192, line: 121, size: 384, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1285}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "core_frequency", scope: !1278, file: !1192, line: 122, baseType: !399, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1278, file: !1192, line: 123, baseType: !399, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !1278, file: !1192, line: 124, baseType: !399, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master_latency", scope: !1278, file: !1192, line: 125, baseType: !399, size: 64, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1278, file: !1192, line: 126, baseType: !399, size: 64, offset: 256)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1278, file: !1192, line: 127, baseType: !399, size: 64, offset: 320)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "domain_info", scope: !1260, file: !1192, line: 137, baseType: !1287, size: 320, offset: 448)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_psd_package", file: !1192, line: 103, size: 320, elements: !1288)
!1288 = !{!1289, !1290, !1291, !1292, !1293}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !1287, file: !1192, line: 104, baseType: !399, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !1287, file: !1192, line: 105, baseType: !399, size: 64, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1287, file: !1192, line: 106, baseType: !399, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !1287, file: !1192, line: 107, baseType: !399, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "num_processors", scope: !1287, file: !1192, line: 108, baseType: !399, size: 64, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "shared_cpu_map", scope: !1260, file: !1192, line: 138, baseType: !1295, size: 64, offset: 768)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1183, line: 913, baseType: !1296)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1182, size: 64, elements: !1187)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !1260, file: !1192, line: 139, baseType: !7, size: 32, offset: 832)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "throttling", scope: !1191, file: !1192, line: 236, baseType: !1299, size: 1600, offset: 5120)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_throttling", file: !1192, line: 175, size: 1600, elements: !1300)
!1300 = !{!1301, !1302, !1303, !1304, !1305, !1306, !1315, !1323, !1324, !1328, !1332, !1333, !1334, !1335, !1336, !1337}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1299, file: !1192, line: 176, baseType: !7, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "platform_limit", scope: !1299, file: !1192, line: 177, baseType: !7, size: 32, offset: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "control_register", scope: !1299, file: !1192, line: 178, baseType: !1265, size: 120, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "status_register", scope: !1299, file: !1192, line: 179, baseType: !1265, size: 120, offset: 184)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1299, file: !1192, line: 180, baseType: !7, size: 32, offset: 320)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "states_tss", scope: !1299, file: !1192, line: 181, baseType: !1307, size: 64, offset: 384)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_tx_tss", file: !1192, line: 162, size: 320, elements: !1309)
!1309 = !{!1310, !1311, !1312, !1313, !1314}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "freqpercentage", scope: !1308, file: !1192, line: 163, baseType: !399, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1308, file: !1192, line: 164, baseType: !399, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !1308, file: !1192, line: 165, baseType: !399, size: 64, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1308, file: !1192, line: 166, baseType: !399, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1308, file: !1192, line: 167, baseType: !399, size: 64, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "domain_info", scope: !1299, file: !1192, line: 182, baseType: !1316, size: 320, offset: 448)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_tsd_package", file: !1192, line: 144, size: 320, elements: !1317)
!1317 = !{!1318, !1319, !1320, !1321, !1322}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !1316, file: !1192, line: 145, baseType: !399, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !1316, file: !1192, line: 146, baseType: !399, size: 64, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1316, file: !1192, line: 147, baseType: !399, size: 64, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !1316, file: !1192, line: 148, baseType: !399, size: 64, offset: 192)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "num_processors", scope: !1316, file: !1192, line: 149, baseType: !399, size: 64, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "shared_cpu_map", scope: !1299, file: !1192, line: 183, baseType: !1295, size: 64, offset: 768)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_processor_get_throttling", scope: !1299, file: !1192, line: 184, baseType: !1325, size: 64, offset: 832)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!46, !1190}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_processor_set_throttling", scope: !1299, file: !1192, line: 185, baseType: !1329, size: 64, offset: 896)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!46, !1190, !46, !592}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1299, file: !1192, line: 188, baseType: !1081, size: 32, offset: 960)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "duty_offset", scope: !1299, file: !1192, line: 189, baseType: !193, size: 8, offset: 992)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "duty_width", scope: !1299, file: !1192, line: 190, baseType: !193, size: 8, offset: 1000)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "tsd_valid_flag", scope: !1299, file: !1192, line: 191, baseType: !193, size: 8, offset: 1008)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !1299, file: !1192, line: 192, baseType: !7, size: 32, offset: 1024)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1299, file: !1192, line: 193, baseType: !1338, size: 512, offset: 1056)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1339, size: 512, elements: !1343)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_tx", file: !1192, line: 169, size: 32, elements: !1340)
!1340 = !{!1341, !1342}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1339, file: !1192, line: 170, baseType: !203, size: 16)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1339, file: !1192, line: 171, baseType: !203, size: 16, offset: 16)
!1343 = !{!1344}
!1344 = !DISubrange(count: 16)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1191, file: !1192, line: 237, baseType: !1346, size: 192, offset: 6720)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_limit", file: !1192, line: 203, size: 192, elements: !1347)
!1347 = !{!1348, !1353, !1354}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1346, file: !1192, line: 204, baseType: !1349, size: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_lx", file: !1192, line: 198, size: 64, elements: !1350)
!1350 = !{!1351, !1352}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "px", scope: !1349, file: !1192, line: 199, baseType: !46, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !1349, file: !1192, line: 200, baseType: !46, size: 32, offset: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "thermal", scope: !1346, file: !1192, line: 205, baseType: !1349, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1346, file: !1192, line: 206, baseType: !1349, size: 64, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !1191, file: !1192, line: 238, baseType: !1356, size: 64, offset: 6912)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !1358, line: 98, size: 6848, elements: !1359)
!1358 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0720786b938087c9219e0058826384af")
!1359 = !{!1360, !1361, !1362, !1363, !1999, !2000, !2001, !2002, !2029, !2030, !2031, !2032}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1357, file: !1358, line: 99, baseType: !46, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1357, file: !1358, line: 100, baseType: !235, size: 64, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "max_state", scope: !1357, file: !1358, line: 101, baseType: !285, size: 64, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1357, file: !1358, line: 102, baseType: !1364, size: 5824, offset: 192)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !1365)
!1365 = !{!1366, !1367, !1369, !1372, !1373, !1426, !1512, !1513, !1514, !1515, !1516, !1523, !1763, !1776, !1786, !1790, !1792, !1793, !1794, !1798, !1805, !1806, !1809, !1812, !1938, !1939, !1940, !1943, !1944, !1945, !1946, !1976, !1977, !1978, !1981, !1984, !1993, !1994, !1995, !1996, !1997, !1998}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1364, file: !26, line: 706, baseType: !150, size: 512)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1364, file: !26, line: 707, baseType: !1368, size: 64, offset: 512)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1364, file: !26, line: 709, baseType: !1370, size: 64, offset: 576)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1364, file: !26, line: 711, baseType: !154, size: 64, offset: 640)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1364, file: !26, line: 712, baseType: !1374, size: 64, offset: 704)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1376)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !1377)
!1377 = !{!1378, !1379, !1380, !1386, !1391, !1395}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1376, file: !26, line: 90, baseType: !154, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1376, file: !26, line: 91, baseType: !287, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1376, file: !26, line: 92, baseType: !1381, size: 64, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!46, !1384, !230}
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1364)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1376, file: !26, line: 93, baseType: !1387, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!235, !1384, !1390, !666, !673}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1376, file: !26, line: 95, baseType: !1392, size: 64, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{null, !1368}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1376, file: !26, line: 97, baseType: !1396, size: 64, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1398)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !1399)
!1399 = !{!1400, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1398, file: !38, line: 287, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!46, !1368}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1398, file: !38, line: 288, baseType: !1392, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1398, file: !38, line: 289, baseType: !1401, size: 64, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1398, file: !38, line: 290, baseType: !1401, size: 64, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1398, file: !38, line: 291, baseType: !1401, size: 64, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1398, file: !38, line: 292, baseType: !1401, size: 64, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1398, file: !38, line: 293, baseType: !1401, size: 64, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1398, file: !38, line: 294, baseType: !1401, size: 64, offset: 448)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1398, file: !38, line: 295, baseType: !1401, size: 64, offset: 512)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1398, file: !38, line: 296, baseType: !1401, size: 64, offset: 576)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1398, file: !38, line: 297, baseType: !1401, size: 64, offset: 640)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1398, file: !38, line: 298, baseType: !1401, size: 64, offset: 704)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1398, file: !38, line: 299, baseType: !1401, size: 64, offset: 768)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1398, file: !38, line: 300, baseType: !1401, size: 64, offset: 832)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1398, file: !38, line: 301, baseType: !1401, size: 64, offset: 896)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1398, file: !38, line: 302, baseType: !1401, size: 64, offset: 960)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1398, file: !38, line: 303, baseType: !1401, size: 64, offset: 1024)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1398, file: !38, line: 304, baseType: !1401, size: 64, offset: 1088)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1398, file: !38, line: 305, baseType: !1401, size: 64, offset: 1152)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1398, file: !38, line: 306, baseType: !1401, size: 64, offset: 1216)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1398, file: !38, line: 307, baseType: !1401, size: 64, offset: 1280)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1398, file: !38, line: 308, baseType: !1401, size: 64, offset: 1344)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1398, file: !38, line: 309, baseType: !1401, size: 64, offset: 1408)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1364, file: !26, line: 714, baseType: !1427, size: 64, offset: 768)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1429)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1430, line: 80, size: 1344, elements: !1431)
!1430 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1431 = !{!1432, !1433, !1434, !1435, !1436, !1437, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1511}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1429, file: !1430, line: 81, baseType: !154, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1429, file: !1430, line: 82, baseType: !154, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1429, file: !1430, line: 83, baseType: !287, size: 64, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1429, file: !1430, line: 84, baseType: !287, size: 64, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1429, file: !1430, line: 85, baseType: !287, size: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1429, file: !1430, line: 87, baseType: !1438, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!46, !1368, !1441}
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !1443)
!1443 = !{!1444, !1445, !1446, !1447, !1448, !1449, !1450, !1463, !1474, !1475, !1476, !1477, !1478, !1486, !1487, !1488, !1489, !1490, !1491}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1442, file: !20, line: 97, baseType: !154, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1442, file: !20, line: 98, baseType: !1427, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1442, file: !20, line: 100, baseType: !130, size: 64, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1442, file: !20, line: 101, baseType: !154, size: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1442, file: !20, line: 103, baseType: !592, size: 8, offset: 256)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1442, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1442, file: !20, line: 106, baseType: !1451, size: 64, offset: 320)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1453)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1454, line: 282, size: 1600, elements: !1455)
!1454 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1455 = !{!1456, !1457, !1458, !1462}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1453, file: !1454, line: 283, baseType: !1238, size: 256)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1453, file: !1454, line: 284, baseType: !1238, size: 256, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1453, file: !1454, line: 285, baseType: !1459, size: 1024, offset: 512)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 1024, elements: !1460)
!1460 = !{!1461}
!1461 = !DISubrange(count: 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1453, file: !1454, line: 286, baseType: !514, size: 64, offset: 1536)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1442, file: !20, line: 107, baseType: !1464, size: 64, offset: 384)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1466)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1454, line: 217, size: 256, elements: !1467)
!1467 = !{!1468, !1470, !1472, !1473}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1466, file: !1454, line: 218, baseType: !1469, size: 128)
!1469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 128, elements: !1343)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1466, file: !1454, line: 219, baseType: !1471, size: 64, offset: 128)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1454, line: 15, baseType: !285)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1466, file: !1454, line: 220, baseType: !999, size: 32, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1466, file: !1454, line: 221, baseType: !999, size: 32, offset: 224)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1442, file: !20, line: 109, baseType: !1401, size: 64, offset: 448)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1442, file: !20, line: 110, baseType: !1392, size: 64, offset: 512)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1442, file: !20, line: 111, baseType: !1401, size: 64, offset: 576)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1442, file: !20, line: 112, baseType: !1392, size: 64, offset: 640)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1442, file: !20, line: 113, baseType: !1479, size: 64, offset: 704)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!46, !1368, !1482}
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1483)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1484)
!1484 = !{!1485}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1483, file: !38, line: 59, baseType: !46, size: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1442, file: !20, line: 114, baseType: !1401, size: 64, offset: 768)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1442, file: !20, line: 115, baseType: !287, size: 64, offset: 832)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1442, file: !20, line: 116, baseType: !287, size: 64, offset: 896)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1442, file: !20, line: 118, baseType: !1396, size: 64, offset: 960)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1442, file: !20, line: 119, baseType: !1392, size: 64, offset: 1024)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1442, file: !20, line: 121, baseType: !1492, size: 64, offset: 1088)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1429, file: !1430, line: 88, baseType: !1381, size: 64, offset: 384)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1429, file: !1430, line: 89, baseType: !1401, size: 64, offset: 448)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1429, file: !1430, line: 90, baseType: !1392, size: 64, offset: 512)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1429, file: !1430, line: 91, baseType: !1392, size: 64, offset: 576)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1429, file: !1430, line: 92, baseType: !1392, size: 64, offset: 640)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1429, file: !1430, line: 94, baseType: !1401, size: 64, offset: 704)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1429, file: !1430, line: 95, baseType: !1401, size: 64, offset: 768)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1429, file: !1430, line: 97, baseType: !1479, size: 64, offset: 832)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1429, file: !1430, line: 98, baseType: !1401, size: 64, offset: 896)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1429, file: !1430, line: 100, baseType: !1401, size: 64, offset: 960)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1429, file: !1430, line: 102, baseType: !1401, size: 64, offset: 1024)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1429, file: !1430, line: 103, baseType: !1392, size: 64, offset: 1088)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1429, file: !1430, line: 105, baseType: !1396, size: 64, offset: 1152)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1429, file: !1430, line: 107, baseType: !1508, size: 64, offset: 1216)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1510)
!1510 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1430, line: 107, flags: DIFlagFwdDecl)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1429, file: !1430, line: 109, baseType: !592, size: 8, offset: 1280)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1364, file: !26, line: 715, baseType: !1441, size: 64, offset: 832)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1364, file: !26, line: 717, baseType: !307, size: 64, offset: 896)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1364, file: !26, line: 719, baseType: !307, size: 64, offset: 960)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1364, file: !26, line: 721, baseType: !493, size: 256, offset: 1024)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1364, file: !26, line: 725, baseType: !1517, size: 448, offset: 1280)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1518)
!1518 = !{!1519, !1520, !1521, !1522}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1517, file: !26, line: 518, baseType: !135, size: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1517, file: !26, line: 519, baseType: !135, size: 128, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1517, file: !26, line: 520, baseType: !135, size: 128, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1517, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1364, file: !26, line: 726, baseType: !1524, size: 2496, offset: 1728)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1525)
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1570, !1571, !1572, !1573, !1574, !1575, !1644, !1645, !1646, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1684, !1688}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1524, file: !38, line: 664, baseType: !1482, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1524, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1524, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1524, file: !38, line: 667, baseType: !592, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1524, file: !38, line: 668, baseType: !592, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1524, file: !38, line: 669, baseType: !592, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1524, file: !38, line: 670, baseType: !592, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1524, file: !38, line: 671, baseType: !592, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1524, file: !38, line: 672, baseType: !592, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1524, file: !38, line: 673, baseType: !592, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1524, file: !38, line: 674, baseType: !592, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1524, file: !38, line: 675, baseType: !1081, size: 32, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1524, file: !38, line: 676, baseType: !165, size: 32, offset: 96)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1524, file: !38, line: 678, baseType: !135, size: 128, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1524, file: !38, line: 679, baseType: !817, size: 256, offset: 256)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1524, file: !38, line: 680, baseType: !1542, size: 64, offset: 512)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1544, line: 43, size: 1536, elements: !1545)
!1544 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1545 = !{!1546, !1547, !1548, !1549, !1550, !1553, !1554, !1555, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1543, file: !1544, line: 44, baseType: !154, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1543, file: !1544, line: 45, baseType: !46, size: 32, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1543, file: !1544, line: 46, baseType: !135, size: 128, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1543, file: !1544, line: 47, baseType: !165, size: 32, offset: 256)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1543, file: !1544, line: 48, baseType: !1551, size: 64, offset: 320)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1543, file: !1544, line: 49, baseType: !1064, size: 320, offset: 384)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1543, file: !1544, line: 50, baseType: !285, size: 64, offset: 704)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1543, file: !1544, line: 51, baseType: !1556, size: 64, offset: 768)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1557, line: 29, baseType: !411)
!1557 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1543, file: !1544, line: 52, baseType: !1556, size: 64, offset: 832)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1543, file: !1544, line: 53, baseType: !1556, size: 64, offset: 896)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1543, file: !1544, line: 54, baseType: !1556, size: 64, offset: 960)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1543, file: !1544, line: 55, baseType: !1556, size: 64, offset: 1024)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1543, file: !1544, line: 56, baseType: !285, size: 64, offset: 1088)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1543, file: !1544, line: 57, baseType: !285, size: 64, offset: 1152)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1543, file: !1544, line: 58, baseType: !285, size: 64, offset: 1216)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1543, file: !1544, line: 59, baseType: !285, size: 64, offset: 1280)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1543, file: !1544, line: 60, baseType: !285, size: 64, offset: 1344)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1543, file: !1544, line: 61, baseType: !1368, size: 64, offset: 1408)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1543, file: !1544, line: 62, baseType: !592, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1543, file: !1544, line: 63, baseType: !592, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1524, file: !38, line: 681, baseType: !592, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1524, file: !38, line: 682, baseType: !592, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1524, file: !38, line: 683, baseType: !592, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1524, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1524, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1524, file: !38, line: 690, baseType: !1576, size: 512, offset: 640)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1577)
!1577 = !{!1578, !1584, !1585, !1590, !1640, !1641, !1642, !1643}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1576, file: !33, line: 119, baseType: !1579, size: 256)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1580, line: 9, size: 256, elements: !1581)
!1580 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1581 = !{!1582, !1583}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1579, file: !1580, line: 10, baseType: !598, size: 192, align: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1579, file: !1580, line: 11, baseType: !1556, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1576, file: !33, line: 120, baseType: !1556, size: 64, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1576, file: !33, line: 121, baseType: !1586, size: 64, offset: 320)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!32, !1589}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1576, file: !33, line: 122, baseType: !1591, size: 64, offset: 384)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1593)
!1593 = !{!1594, !1617, !1618, !1621, !1626, !1627, !1635, !1639}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1592, file: !33, line: 160, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1597)
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1596, file: !33, line: 216, baseType: !427, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1596, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1596, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1596, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1596, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1596, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1596, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1596, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1596, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1596, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1596, file: !33, line: 227, baseType: !205, size: 16, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1596, file: !33, line: 228, baseType: !205, size: 16, offset: 208)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1596, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1596, file: !33, line: 235, baseType: !1556, size: 64, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1596, file: !33, line: 236, baseType: !1589, size: 64, offset: 320)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1596, file: !33, line: 237, baseType: !1556, size: 64, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1596, file: !33, line: 238, baseType: !1589, size: 64, offset: 448)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1596, file: !33, line: 239, baseType: !1616, size: 4096, align: 512, offset: 512)
!1616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1592, size: 4096, align: 512, elements: !1241)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1592, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1592, file: !33, line: 162, baseType: !1619, size: 32, offset: 96)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !136, line: 32, baseType: !1620)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !269, line: 96, baseType: !46)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1592, file: !33, line: 163, baseType: !1622, size: 32, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !442, line: 274, baseType: !1623)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !442, line: 274, size: 32, elements: !1624)
!1624 = !{!1625}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1623, file: !442, line: 274, baseType: !441, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1592, file: !33, line: 164, baseType: !1589, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1592, file: !33, line: 165, baseType: !1628, size: 128, offset: 256)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1580, line: 14, size: 128, elements: !1629)
!1629 = !{!1630}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1628, file: !1580, line: 15, baseType: !1631, size: 128)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !599, line: 26, size: 128, elements: !1632)
!1632 = !{!1633, !1634}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1631, file: !599, line: 27, baseType: !700, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1631, file: !599, line: 28, baseType: !603, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1592, file: !33, line: 166, baseType: !1636, size: 64, offset: 384)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!1556}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1592, file: !33, line: 167, baseType: !1556, size: 64, offset: 448)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1576, file: !33, line: 123, baseType: !193, size: 8, offset: 448)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1576, file: !33, line: 124, baseType: !193, size: 8, offset: 456)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1576, file: !33, line: 125, baseType: !193, size: 8, offset: 464)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1576, file: !33, line: 126, baseType: !193, size: 8, offset: 472)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1524, file: !38, line: 691, baseType: !399, size: 64, offset: 1152)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1524, file: !38, line: 692, baseType: !557, size: 256, offset: 1216)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1524, file: !38, line: 693, baseType: !1647, size: 192, offset: 1472)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1648, line: 41, baseType: !1649)
!1648 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1648, line: 37, size: 192, elements: !1650)
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1649, file: !1648, line: 38, baseType: !165, size: 32)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1649, file: !1648, line: 39, baseType: !135, size: 128, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1524, file: !38, line: 694, baseType: !1551, size: 64, offset: 1664)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1524, file: !38, line: 695, baseType: !185, size: 32, offset: 1728)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1524, file: !38, line: 696, baseType: !185, size: 32, offset: 1760)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1524, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1524, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1524, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1524, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1524, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1524, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1524, file: !38, line: 703, baseType: !592, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1524, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1524, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1524, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1524, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1524, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1524, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1524, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1524, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1524, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1524, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1524, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1524, file: !38, line: 715, baseType: !399, size: 64, offset: 2048)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1524, file: !38, line: 716, baseType: !399, size: 64, offset: 2112)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1524, file: !38, line: 717, baseType: !399, size: 64, offset: 2176)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1524, file: !38, line: 718, baseType: !399, size: 64, offset: 2240)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1524, file: !38, line: 720, baseType: !1679, size: 64, offset: 2304)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1681)
!1681 = !{!1682, !1683}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1680, file: !38, line: 633, baseType: !165, size: 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1680, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1524, file: !38, line: 721, baseType: !1685, size: 64, offset: 2368)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{null, !1368, !472}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1524, file: !38, line: 722, baseType: !1689, size: 64, offset: 2432)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !54, line: 117, size: 2432, elements: !1691)
!1691 = !{!1692, !1721, !1722, !1729, !1734, !1761, !1762}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !1690, file: !54, line: 118, baseType: !1693, size: 320)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !54, line: 52, size: 320, elements: !1694)
!1694 = !{!1695, !1700, !1701, !1702, !1703, !1704}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1693, file: !54, line: 53, baseType: !1696, size: 128)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1697, line: 82, size: 128, elements: !1698)
!1697 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1698 = !{!1699}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1696, file: !1697, line: 83, baseType: !135, size: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1693, file: !54, line: 54, baseType: !472, size: 32, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1693, file: !54, line: 55, baseType: !472, size: 32, offset: 160)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1693, file: !54, line: 56, baseType: !472, size: 32, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1693, file: !54, line: 57, baseType: !53, size: 32, offset: 224)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1693, file: !54, line: 58, baseType: !1705, size: 64, offset: 256)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1707, line: 65, size: 384, elements: !1708)
!1707 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!1708 = !{!1709, !1710}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1706, file: !1707, line: 66, baseType: !416, size: 320)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1706, file: !1707, line: 67, baseType: !1711, size: 64, offset: 320)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1707, line: 54, size: 192, elements: !1713)
!1713 = !{!1714, !1719, !1720}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1712, file: !1707, line: 55, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1707, line: 51, baseType: !1716)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!46, !1711, !285, !307}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1712, file: !1707, line: 56, baseType: !1711, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1712, file: !1707, line: 57, baseType: !46, size: 32, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !1690, file: !54, line: 119, baseType: !1693, size: 320, offset: 320)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1690, file: !54, line: 120, baseType: !1723, size: 1408, offset: 640)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !54, line: 85, size: 1408, elements: !1724)
!1724 = !{!1725, !1726, !1727, !1728}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1723, file: !54, line: 86, baseType: !1693, size: 320)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1723, file: !54, line: 87, baseType: !1706, size: 384, offset: 320)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1723, file: !54, line: 88, baseType: !1693, size: 320, offset: 704)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1723, file: !54, line: 89, baseType: !1706, size: 384, offset: 1024)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1690, file: !54, line: 121, baseType: !1730, size: 192, offset: 2048)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !54, line: 71, size: 192, elements: !1731)
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1730, file: !54, line: 72, baseType: !135, size: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !1730, file: !54, line: 73, baseType: !472, size: 32, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !1690, file: !54, line: 122, baseType: !1735, size: 64, offset: 2240)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !54, line: 107, size: 576, elements: !1737)
!1737 = !{!1738, !1739, !1760}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1736, file: !54, line: 108, baseType: !59, size: 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1736, file: !54, line: 113, baseType: !1740, size: 448, offset: 64)
!1740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1736, file: !54, line: 109, size: 448, elements: !1741)
!1741 = !{!1742, !1748, !1753}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1740, file: !54, line: 110, baseType: !1743, size: 320)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1697, line: 86, size: 320, elements: !1744)
!1744 = !{!1745, !1746, !1747}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1743, file: !1697, line: 87, baseType: !46, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1743, file: !1697, line: 88, baseType: !135, size: 128, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1743, file: !1697, line: 89, baseType: !135, size: 128, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !1740, file: !54, line: 111, baseType: !1749, size: 192)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !54, line: 66, size: 192, elements: !1750)
!1750 = !{!1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1749, file: !54, line: 67, baseType: !135, size: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1749, file: !54, line: 68, baseType: !472, size: 32, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1740, file: !54, line: 112, baseType: !1754, size: 448)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !54, line: 92, size: 448, elements: !1755)
!1755 = !{!1756, !1757, !1758}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1754, file: !54, line: 93, baseType: !66, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1754, file: !54, line: 94, baseType: !1743, size: 320, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1754, file: !54, line: 95, baseType: !1759, size: 64, offset: 384)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1736, file: !54, line: 114, baseType: !1368, size: 64, offset: 512)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !1690, file: !54, line: 123, baseType: !1735, size: 64, offset: 2304)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !1690, file: !54, line: 124, baseType: !1735, size: 64, offset: 2368)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1364, file: !26, line: 727, baseType: !1764, size: 64, offset: 4224)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1766)
!1766 = !{!1767, !1768, !1769, !1773, !1774, !1775}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1765, file: !38, line: 743, baseType: !1398, size: 1472)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1765, file: !38, line: 744, baseType: !1401, size: 64, offset: 1472)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1765, file: !38, line: 745, baseType: !1770, size: 64, offset: 1536)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{null, !1368, !592}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1765, file: !38, line: 746, baseType: !1401, size: 64, offset: 1600)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1765, file: !38, line: 747, baseType: !1392, size: 64, offset: 1664)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1765, file: !38, line: 748, baseType: !1392, size: 64, offset: 1728)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1364, file: !26, line: 736, baseType: !1777, size: 128, offset: 4288)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1778)
!1778 = !{!1779, !1783}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1777, file: !26, line: 531, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1782, line: 13, flags: DIFlagFwdDecl)
!1782 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1777, file: !26, line: 532, baseType: !1784, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1364, file: !26, line: 738, baseType: !1787, size: 64, offset: 4416)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1789)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1364, file: !26, line: 740, baseType: !1791, size: 64, offset: 4480)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1364, file: !26, line: 741, baseType: !399, size: 64, offset: 4544)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1364, file: !26, line: 746, baseType: !399, size: 64, offset: 4608)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1364, file: !26, line: 747, baseType: !1795, size: 64, offset: 4672)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1797)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1364, file: !26, line: 749, baseType: !1799, size: 64, offset: 4736)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1801)
!1801 = !{!1802, !1803, !1804}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1800, file: !26, line: 433, baseType: !7, size: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1800, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1800, file: !26, line: 435, baseType: !285, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1364, file: !26, line: 751, baseType: !135, size: 128, offset: 4800)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1364, file: !26, line: 762, baseType: !1807, size: 64, offset: 4928)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1364, file: !26, line: 770, baseType: !1810, offset: 4992)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1811, line: 5, elements: !372)
!1811 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1364, file: !26, line: 772, baseType: !1813, size: 64, offset: 4992)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1815, line: 48, size: 1152, elements: !1816)
!1815 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1816 = !{!1817, !1818, !1820, !1821, !1924, !1932, !1933, !1934, !1935, !1936, !1937}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1814, file: !1815, line: 49, baseType: !154, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1814, file: !1815, line: 50, baseType: !1819, size: 32, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1815, line: 25, baseType: !1081)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1814, file: !1815, line: 51, baseType: !154, size: 64, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1814, file: !1815, line: 52, baseType: !1822, size: 512, offset: 192)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1823, line: 41, size: 512, elements: !1824)
!1823 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1824 = !{!1825, !1827, !1920, !1921, !1922, !1923}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1822, file: !1823, line: 42, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1822, file: !1823, line: 43, baseType: !1828, size: 64, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1830)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1823, line: 125, size: 1408, elements: !1831)
!1831 = !{!1832, !1836, !1840, !1846, !1850, !1851, !1855, !1859, !1863, !1867, !1871, !1872, !1876, !1880, !1884, !1895, !1896, !1897, !1898, !1908, !1912, !1916}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1830, file: !1823, line: 126, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!1826, !1826}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1830, file: !1823, line: 127, baseType: !1837, size: 64, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{null, !1826}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1830, file: !1823, line: 128, baseType: !1841, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!592, !1844}
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1822)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1830, file: !1823, line: 129, baseType: !1847, size: 64, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!514, !1844, !1384}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1830, file: !1823, line: 131, baseType: !1841, size: 64, offset: 256)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1830, file: !1823, line: 133, baseType: !1852, size: 64, offset: 320)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!70, !1844}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1830, file: !1823, line: 134, baseType: !1856, size: 64, offset: 384)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!592, !1844, !154}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1830, file: !1823, line: 136, baseType: !1860, size: 64, offset: 448)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!46, !1844, !154, !7, !307, !282}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1830, file: !1823, line: 141, baseType: !1864, size: 64, offset: 512)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!46, !1844, !154, !1148, !282}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1830, file: !1823, line: 144, baseType: !1868, size: 64, offset: 576)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!154, !1844}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1830, file: !1823, line: 145, baseType: !1868, size: 64, offset: 640)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1830, file: !1823, line: 146, baseType: !1873, size: 64, offset: 704)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!1826, !1844}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1830, file: !1823, line: 148, baseType: !1877, size: 64, offset: 768)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!1826, !1844, !1826}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1830, file: !1823, line: 151, baseType: !1881, size: 64, offset: 832)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!1826, !1844, !154}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1830, file: !1823, line: 153, baseType: !1885, size: 64, offset: 896)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!46, !1844, !154, !154, !7, !7, !1888}
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1823, line: 94, size: 640, elements: !1890)
!1890 = !{!1891, !1892, !1893}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1889, file: !1823, line: 95, baseType: !1826, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1889, file: !1823, line: 96, baseType: !7, size: 32, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1889, file: !1823, line: 97, baseType: !1894, size: 512, offset: 128)
!1894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 512, elements: !1241)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1830, file: !1823, line: 158, baseType: !1877, size: 64, offset: 960)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1830, file: !1823, line: 161, baseType: !1873, size: 64, offset: 1024)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1830, file: !1823, line: 163, baseType: !1833, size: 64, offset: 1088)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1830, file: !1823, line: 164, baseType: !1899, size: 64, offset: 1152)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!46, !1844, !1902}
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1823, line: 73, size: 128, elements: !1904)
!1904 = !{!1905, !1906, !1907}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1903, file: !1823, line: 74, baseType: !7, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1903, file: !1823, line: 75, baseType: !7, size: 32, offset: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1903, file: !1823, line: 76, baseType: !1844, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1830, file: !1823, line: 166, baseType: !1909, size: 64, offset: 1216)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!307, !1826, !46}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1830, file: !1823, line: 167, baseType: !1913, size: 64, offset: 1280)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!46, !1844, !7}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1830, file: !1823, line: 168, baseType: !1917, size: 64, offset: 1344)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!46, !1826}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1822, file: !1823, line: 44, baseType: !1368, size: 64, offset: 128)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1822, file: !1823, line: 45, baseType: !135, size: 128, offset: 192)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1822, file: !1823, line: 46, baseType: !135, size: 128, offset: 320)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1822, file: !1823, line: 47, baseType: !193, size: 8, offset: 448)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1814, file: !1815, line: 54, baseType: !1925, size: 64, offset: 704)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1815, line: 28, size: 256, elements: !1927)
!1927 = !{!1928, !1929, !1930, !1931}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1926, file: !1815, line: 29, baseType: !235, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1926, file: !1815, line: 30, baseType: !46, size: 32, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1926, file: !1815, line: 31, baseType: !307, size: 64, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1926, file: !1815, line: 32, baseType: !1925, size: 64, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1814, file: !1815, line: 55, baseType: !1925, size: 64, offset: 768)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1814, file: !1815, line: 56, baseType: !1813, size: 64, offset: 832)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1814, file: !1815, line: 57, baseType: !1813, size: 64, offset: 896)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1814, file: !1815, line: 58, baseType: !1813, size: 64, offset: 960)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1814, file: !1815, line: 62, baseType: !285, size: 64, offset: 1024)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1814, file: !1815, line: 63, baseType: !307, size: 64, offset: 1088)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1364, file: !26, line: 773, baseType: !1826, size: 64, offset: 5056)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1364, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1364, file: !26, line: 778, baseType: !1941, size: 32, offset: 5152)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !136, line: 21, baseType: !1942)
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !136, line: 18, baseType: !1081)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1364, file: !26, line: 779, baseType: !1081, size: 32, offset: 5184)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1364, file: !26, line: 781, baseType: !165, size: 32, offset: 5216)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1364, file: !26, line: 782, baseType: !135, size: 128, offset: 5248)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1364, file: !26, line: 784, baseType: !1947, size: 64, offset: 5376)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1949)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1950, line: 52, size: 768, elements: !1951)
!1950 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1951 = !{!1952, !1953, !1954, !1955, !1956, !1960, !1964, !1965, !1966, !1967, !1971, !1975}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1949, file: !1950, line: 53, baseType: !154, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1949, file: !1950, line: 55, baseType: !287, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1949, file: !1950, line: 56, baseType: !287, size: 64, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1949, file: !1950, line: 58, baseType: !1381, size: 64, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1949, file: !1950, line: 59, baseType: !1957, size: 64, offset: 256)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!235, !1384, !1390}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1949, file: !1950, line: 61, baseType: !1961, size: 64, offset: 320)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null, !1947}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1949, file: !1950, line: 62, baseType: !1392, size: 64, offset: 384)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1949, file: !1950, line: 64, baseType: !1401, size: 64, offset: 448)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1949, file: !1950, line: 66, baseType: !631, size: 64, offset: 512)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1949, file: !1950, line: 67, baseType: !1968, size: 64, offset: 576)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!514, !1384}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1949, file: !1950, line: 69, baseType: !1972, size: 64, offset: 640)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !1384, !666, !673}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1949, file: !1950, line: 71, baseType: !1396, size: 64, offset: 704)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1364, file: !26, line: 785, baseType: !287, size: 64, offset: 5440)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1364, file: !26, line: 787, baseType: !1392, size: 64, offset: 5504)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1364, file: !26, line: 788, baseType: !1979, size: 64, offset: 5568)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1364, file: !26, line: 789, baseType: !1982, size: 64, offset: 5632)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1364, file: !26, line: 791, baseType: !1985, size: 64, offset: 5696)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1987)
!1987 = !{!1988, !1989, !1990, !1991, !1992}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1986, file: !26, line: 598, baseType: !76, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1986, file: !26, line: 599, baseType: !85, size: 32, offset: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1986, file: !26, line: 600, baseType: !90, size: 32, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1986, file: !26, line: 601, baseType: !592, size: 8, offset: 96)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1986, file: !26, line: 602, baseType: !592, size: 8, offset: 104)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1364, file: !26, line: 793, baseType: !95, size: 32, offset: 5760)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1364, file: !26, line: 795, baseType: !592, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1364, file: !26, line: 796, baseType: !592, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1364, file: !26, line: 797, baseType: !592, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1364, file: !26, line: 798, baseType: !592, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1364, file: !26, line: 799, baseType: !592, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !1357, file: !1358, line: 103, baseType: !1813, size: 64, offset: 6016)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !1357, file: !1358, line: 104, baseType: !307, size: 64, offset: 6080)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1357, file: !1358, line: 105, baseType: !307, size: 64, offset: 6144)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1357, file: !1358, line: 106, baseType: !2003, size: 64, offset: 6208)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2005)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !1358, line: 89, size: 384, elements: !2006)
!2006 = !{!2007, !2011, !2012, !2016, !2021, !2025}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2005, file: !1358, line: 90, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!46, !1356, !1162}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2005, file: !1358, line: 91, baseType: !2008, size: 64, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2005, file: !1358, line: 92, baseType: !2013, size: 64, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!46, !1356, !285}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2005, file: !1358, line: 93, baseType: !2017, size: 64, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!46, !1356, !2020}
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2005, file: !1358, line: 94, baseType: !2022, size: 64, offset: 256)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!46, !1356, !285, !2020}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2005, file: !1358, line: 95, baseType: !2026, size: 64, offset: 320)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!46, !1356, !1081, !1162}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !1357, file: !1358, line: 107, baseType: !592, size: 8, offset: 6272)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1357, file: !1358, line: 108, baseType: !493, size: 256, offset: 6336)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !1357, file: !1358, line: 109, baseType: !135, size: 128, offset: 6592)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1357, file: !1358, line: 110, baseType: !135, size: 128, offset: 6720)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1191, file: !1192, line: 239, baseType: !1368, size: 64, offset: 6976)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "perflib_req", scope: !1191, file: !1192, line: 240, baseType: !1754, size: 448, offset: 7040)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_req", scope: !1191, file: !1192, line: 241, baseType: !1754, size: 448, offset: 7488)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !1196, line: 421, baseType: !1081)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !731, line: 746, size: 58368, elements: !2040)
!2040 = !{!2041, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2126, !2137, !2157, !2161, !2164, !2195, !2196, !2197, !2198, !2202, !2204, !2205, !2206, !2207, !2208, !2209, !2220, !2221, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2320, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2356, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2391, !2397, !2402, !2403, !2404, !2407, !2409, !2412, !2419, !2424, !2427, !2430, !2433, !2437, !2440, !2443, !2449, !2450, !2451, !2457, !2458, !2459, !2460, !2461, !2464, !2465, !2466, !2475, !2483, !2484, !2485, !2486, !2487, !2492, !2493, !2494, !2497, !2498, !2501, !2504, !2507, !2510, !2513, !2514, !2600, !2611, !2612, !2613, !2614, !2620, !2625, !2626, !2627, !2630, !2631, !2634, !2637, !2638, !2641, !2642, !2643, !2646, !2647, !2648, !2649, !2650, !2651, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2683, !2686, !2752, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2764, !2836, !2838, !2839, !2840, !2841, !2842, !2843, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2873, !2874, !2875}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2039, file: !731, line: 752, baseType: !2042, size: 192)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2043, line: 56, size: 192, elements: !2044)
!2043 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2044 = !{!2045, !2046, !2047, !2048}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2042, file: !2043, line: 57, baseType: !285, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2042, file: !2043, line: 58, baseType: !285, size: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2042, file: !2043, line: 59, baseType: !1081, size: 32, offset: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2042, file: !2043, line: 61, baseType: !1081, size: 32, offset: 160)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2039, file: !731, line: 754, baseType: !7, size: 32, offset: 192)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2039, file: !731, line: 767, baseType: !307, size: 64, offset: 256)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2039, file: !731, line: 768, baseType: !800, size: 32, offset: 320)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2039, file: !731, line: 770, baseType: !7, size: 32, offset: 352)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2039, file: !731, line: 771, baseType: !7, size: 32, offset: 384)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2039, file: !731, line: 774, baseType: !46, size: 32, offset: 416)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2039, file: !731, line: 775, baseType: !2056, size: 128, offset: 448)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2057, line: 58, size: 128, elements: !2058)
!2057 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2058 = !{!2059, !2065, !2070, !2071}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2056, file: !2057, line: 59, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !2061, line: 60, size: 64, elements: !2062)
!2061 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!2062 = !{!2063}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2060, file: !2061, line: 61, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, scope: !2056, file: !2057, line: 60, baseType: !2066, size: 32, offset: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2056, file: !2057, line: 60, size: 32, elements: !2067)
!2067 = !{!2068, !2069}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2066, file: !2057, line: 61, baseType: !7, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2066, file: !2057, line: 62, baseType: !185, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2056, file: !2057, line: 65, baseType: !203, size: 16, offset: 96)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2056, file: !2057, line: 65, baseType: !203, size: 16, offset: 112)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2039, file: !731, line: 776, baseType: !7, size: 32, offset: 576)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2039, file: !731, line: 777, baseType: !285, size: 64, offset: 640)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2039, file: !731, line: 778, baseType: !2038, size: 64, offset: 704)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2039, file: !731, line: 787, baseType: !46, size: 32, offset: 768)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2039, file: !731, line: 788, baseType: !46, size: 32, offset: 800)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2039, file: !731, line: 790, baseType: !46, size: 32, offset: 832)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2039, file: !731, line: 792, baseType: !46, size: 32, offset: 864)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2039, file: !731, line: 793, baseType: !46, size: 32, offset: 896)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2039, file: !731, line: 794, baseType: !46, size: 32, offset: 928)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2039, file: !731, line: 795, baseType: !7, size: 32, offset: 960)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2039, file: !731, line: 797, baseType: !2083, size: 2048, offset: 1024)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !731, line: 551, size: 2048, elements: !2084)
!2084 = !{!2085, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2105, !2108, !2109, !2110}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2083, file: !731, line: 553, baseType: !2086, size: 128)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !731, line: 411, size: 128, elements: !2087)
!2087 = !{!2088, !2089}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2086, file: !731, line: 412, baseType: !285, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2086, file: !731, line: 413, baseType: !1081, size: 32, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2083, file: !731, line: 554, baseType: !598, size: 192, align: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2083, file: !731, line: 555, baseType: !399, size: 64, offset: 320)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2083, file: !731, line: 556, baseType: !399, size: 64, offset: 384)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2083, file: !731, line: 558, baseType: !135, size: 128, offset: 448)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2083, file: !731, line: 559, baseType: !7, size: 32, offset: 576)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2083, file: !731, line: 561, baseType: !399, size: 64, offset: 640)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2083, file: !731, line: 562, baseType: !399, size: 64, offset: 704)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2083, file: !731, line: 563, baseType: !399, size: 64, offset: 768)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2083, file: !731, line: 564, baseType: !399, size: 64, offset: 832)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2083, file: !731, line: 565, baseType: !411, size: 64, offset: 896)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2083, file: !731, line: 566, baseType: !399, size: 64, offset: 960)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2083, file: !731, line: 568, baseType: !399, size: 64, offset: 1024)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2083, file: !731, line: 571, baseType: !46, size: 32, offset: 1088)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2083, file: !731, line: 572, baseType: !2104, size: 64, offset: 1152)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2083, file: !731, line: 574, baseType: !2106, size: 64, offset: 1216)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !731, line: 49, flags: DIFlagFwdDecl)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2083, file: !731, line: 576, baseType: !2106, size: 64, offset: 1280)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2083, file: !731, line: 578, baseType: !285, size: 64, offset: 1344)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2083, file: !731, line: 588, baseType: !2111, size: 512, align: 512, offset: 1536)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !731, line: 497, size: 512, align: 512, elements: !2112)
!2112 = !{!2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2111, file: !731, line: 498, baseType: !399, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2111, file: !731, line: 499, baseType: !399, size: 64, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2111, file: !731, line: 500, baseType: !399, size: 64, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2111, file: !731, line: 501, baseType: !1081, size: 32, offset: 192)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2111, file: !731, line: 502, baseType: !1081, size: 32, offset: 224)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2111, file: !731, line: 503, baseType: !285, size: 64, offset: 256)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2111, file: !731, line: 504, baseType: !285, size: 64, offset: 320)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2111, file: !731, line: 505, baseType: !285, size: 64, offset: 384)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2111, file: !731, line: 506, baseType: !2122, size: 64, align: 64, offset: 448)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !731, line: 445, size: 64, align: 64, elements: !2123)
!2123 = !{!2124, !2125}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2122, file: !731, line: 446, baseType: !7, size: 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2122, file: !731, line: 447, baseType: !7, size: 32, offset: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2039, file: !731, line: 798, baseType: !2127, size: 384, offset: 3072)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !731, line: 592, size: 384, elements: !2128)
!2128 = !{!2129, !2130, !2131, !2132, !2133, !2134, !2135}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2127, file: !731, line: 593, baseType: !135, size: 128)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2127, file: !731, line: 594, baseType: !285, size: 64, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2127, file: !731, line: 595, baseType: !285, size: 64, offset: 192)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2127, file: !731, line: 596, baseType: !7, size: 32, offset: 256)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2127, file: !731, line: 597, baseType: !205, size: 16, offset: 288)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2127, file: !731, line: 598, baseType: !205, size: 16, offset: 304)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2127, file: !731, line: 600, baseType: !2136, size: 64, offset: 320)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2039, file: !731, line: 799, baseType: !2138, size: 1792, offset: 3456)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !731, line: 610, size: 1792, elements: !2139)
!2139 = !{!2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2138, file: !731, line: 611, baseType: !598, size: 192, align: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2138, file: !731, line: 618, baseType: !399, size: 64, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2138, file: !731, line: 619, baseType: !399, size: 64, offset: 256)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2138, file: !731, line: 620, baseType: !399, size: 64, offset: 320)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2138, file: !731, line: 621, baseType: !399, size: 64, offset: 384)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2138, file: !731, line: 622, baseType: !399, size: 64, offset: 448)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2138, file: !731, line: 629, baseType: !411, size: 64, offset: 512)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2138, file: !731, line: 630, baseType: !399, size: 64, offset: 576)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2138, file: !731, line: 631, baseType: !7, size: 32, offset: 640)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2138, file: !731, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2138, file: !731, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2138, file: !731, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2138, file: !731, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2138, file: !731, line: 662, baseType: !1576, size: 512, offset: 704)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2138, file: !731, line: 671, baseType: !1576, size: 512, offset: 1216)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2138, file: !731, line: 679, baseType: !2156, size: 64, offset: 1728)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2039, file: !731, line: 800, baseType: !2158, size: 64, offset: 5248)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2160)
!2160 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !731, line: 800, flags: DIFlagFwdDecl)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2039, file: !731, line: 809, baseType: !2162, size: 64, offset: 5312)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !731, line: 70, flags: DIFlagFwdDecl)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2039, file: !731, line: 825, baseType: !2165, size: 2048, align: 512, offset: 5632)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !731, line: 509, size: 2048, align: 512, elements: !2166)
!2166 = !{!2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2165, file: !731, line: 511, baseType: !399, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2165, file: !731, line: 512, baseType: !399, size: 64, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2165, file: !731, line: 513, baseType: !399, size: 64, offset: 128)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2165, file: !731, line: 514, baseType: !399, size: 64, offset: 192)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2165, file: !731, line: 515, baseType: !399, size: 64, offset: 256)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2165, file: !731, line: 516, baseType: !399, size: 64, offset: 320)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2165, file: !731, line: 518, baseType: !399, size: 64, offset: 384)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2165, file: !731, line: 519, baseType: !399, size: 64, offset: 448)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2165, file: !731, line: 520, baseType: !411, size: 64, offset: 512)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2165, file: !731, line: 522, baseType: !399, size: 64, offset: 576)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2165, file: !731, line: 523, baseType: !399, size: 64, offset: 640)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2165, file: !731, line: 524, baseType: !411, size: 64, offset: 704)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2165, file: !731, line: 526, baseType: !411, size: 64, offset: 768)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2165, file: !731, line: 527, baseType: !399, size: 64, offset: 832)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2165, file: !731, line: 529, baseType: !399, size: 64, offset: 896)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2165, file: !731, line: 530, baseType: !399, size: 64, offset: 960)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2165, file: !731, line: 531, baseType: !399, size: 64, offset: 1024)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2165, file: !731, line: 532, baseType: !399, size: 64, offset: 1088)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2165, file: !731, line: 533, baseType: !399, size: 64, offset: 1152)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2165, file: !731, line: 535, baseType: !399, size: 64, offset: 1216)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2165, file: !731, line: 536, baseType: !399, size: 64, offset: 1280)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2165, file: !731, line: 537, baseType: !399, size: 64, offset: 1344)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2165, file: !731, line: 538, baseType: !399, size: 64, offset: 1408)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2165, file: !731, line: 539, baseType: !399, size: 64, offset: 1472)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2165, file: !731, line: 540, baseType: !399, size: 64, offset: 1536)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2165, file: !731, line: 541, baseType: !399, size: 64, offset: 1600)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2165, file: !731, line: 542, baseType: !399, size: 64, offset: 1664)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2165, file: !731, line: 543, baseType: !399, size: 64, offset: 1728)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2039, file: !731, line: 833, baseType: !7, size: 32, offset: 7680)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2039, file: !731, line: 836, baseType: !7, size: 32, offset: 7712)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2039, file: !731, line: 837, baseType: !46, size: 32, offset: 7744)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2039, file: !731, line: 838, baseType: !2199, size: 64, offset: 7808)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2201)
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1183, line: 19, baseType: !1182)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2039, file: !731, line: 839, baseType: !2203, size: 64, offset: 7872)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2039, file: !731, line: 840, baseType: !2201, size: 64, offset: 7936)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2039, file: !731, line: 841, baseType: !307, size: 64, offset: 8000)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2039, file: !731, line: 843, baseType: !205, size: 16, offset: 8064)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2039, file: !731, line: 845, baseType: !205, size: 16, offset: 8080)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2039, file: !731, line: 848, baseType: !46, size: 32, offset: 8096)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2039, file: !731, line: 849, baseType: !2210, size: 32, offset: 8128)
!2210 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !731, line: 718, size: 32, elements: !2211)
!2211 = !{!2212, !2219}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2210, file: !731, line: 724, baseType: !2213, size: 32)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2210, file: !731, line: 719, size: 32, elements: !2214)
!2214 = !{!2215, !2216, !2217, !2218}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2213, file: !731, line: 720, baseType: !193, size: 8)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2213, file: !731, line: 721, baseType: !193, size: 8, offset: 8)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2213, file: !731, line: 722, baseType: !193, size: 8, offset: 16)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2213, file: !731, line: 723, baseType: !193, size: 8, offset: 24)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2210, file: !731, line: 725, baseType: !1081, size: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2039, file: !731, line: 850, baseType: !135, size: 128, offset: 8192)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2039, file: !731, line: 851, baseType: !2222, size: 64, offset: 8320)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !731, line: 60, flags: DIFlagFwdDecl)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2039, file: !731, line: 855, baseType: !285, size: 64, offset: 8384)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2039, file: !731, line: 856, baseType: !193, size: 8, offset: 8448)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2039, file: !731, line: 857, baseType: !193, size: 8, offset: 8456)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2039, file: !731, line: 858, baseType: !46, size: 32, offset: 8480)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2039, file: !731, line: 859, baseType: !135, size: 128, offset: 8512)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2039, file: !731, line: 860, baseType: !46, size: 32, offset: 8640)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2039, file: !731, line: 861, baseType: !135, size: 128, offset: 8704)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2039, file: !731, line: 873, baseType: !2232, size: 256, offset: 8832)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !731, line: 376, size: 256, elements: !2233)
!2233 = !{!2234, !2235, !2236, !2237}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2232, file: !731, line: 381, baseType: !285, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2232, file: !731, line: 384, baseType: !401, size: 64, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2232, file: !731, line: 389, baseType: !401, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2232, file: !731, line: 392, baseType: !401, size: 64, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2039, file: !731, line: 875, baseType: !135, size: 128, offset: 9088)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2039, file: !731, line: 877, baseType: !1743, size: 320, offset: 9216)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2039, file: !731, line: 878, baseType: !598, size: 192, align: 64, offset: 9536)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2039, file: !731, line: 881, baseType: !351, size: 64, offset: 9728)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2039, file: !731, line: 882, baseType: !351, size: 64, offset: 9792)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2039, file: !731, line: 884, baseType: !46, size: 32, offset: 9856)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2039, file: !731, line: 885, baseType: !46, size: 32, offset: 9888)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2039, file: !731, line: 886, baseType: !46, size: 32, offset: 9920)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2039, file: !731, line: 888, baseType: !46, size: 32, offset: 9952)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2039, file: !731, line: 890, baseType: !285, size: 64, offset: 9984)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2039, file: !731, line: 893, baseType: !7, size: 32, offset: 10048)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2039, file: !731, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2039, file: !731, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2039, file: !731, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2039, file: !731, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2039, file: !731, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2039, file: !731, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2039, file: !731, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2039, file: !731, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2039, file: !731, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2039, file: !731, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2039, file: !731, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2039, file: !731, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2039, file: !731, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2039, file: !731, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2039, file: !731, line: 969, baseType: !285, size: 64, offset: 10176)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2039, file: !731, line: 971, baseType: !2265, size: 448, offset: 10240)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !107, line: 25, size: 448, elements: !2266)
!2266 = !{!2267, !2268, !2273}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2265, file: !107, line: 26, baseType: !285, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2265, file: !107, line: 27, baseType: !2269, size: 64, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!271, !2272}
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, scope: !2265, file: !107, line: 28, baseType: !2274, size: 320, offset: 128)
!2274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2265, file: !107, line: 28, size: 320, elements: !2275)
!2275 = !{!2276, !2285, !2310}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2274, file: !107, line: 37, baseType: !2277, size: 320)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2274, file: !107, line: 30, size: 320, elements: !2278)
!2278 = !{!2279, !2280, !2281, !2282, !2283, !2284}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2277, file: !107, line: 31, baseType: !2020, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2277, file: !107, line: 32, baseType: !1081, size: 32, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2277, file: !107, line: 33, baseType: !1081, size: 32, offset: 96)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2277, file: !107, line: 34, baseType: !1081, size: 32, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2277, file: !107, line: 35, baseType: !399, size: 64, offset: 192)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2277, file: !107, line: 36, baseType: !2020, size: 64, offset: 256)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2274, file: !107, line: 47, baseType: !2286, size: 192)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2274, file: !107, line: 39, size: 192, elements: !2287)
!2287 = !{!2288, !2289, !2290, !2309}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2286, file: !107, line: 40, baseType: !1619, size: 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2286, file: !107, line: 41, baseType: !106, size: 32, offset: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, scope: !2286, file: !107, line: 42, baseType: !2291, size: 64, offset: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2286, file: !107, line: 42, size: 64, elements: !2292)
!2292 = !{!2293, !2301}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2291, file: !107, line: 43, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2296, line: 7, size: 128, elements: !2297)
!2296 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2297 = !{!2298, !2300}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2295, file: !2296, line: 8, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !269, line: 93, baseType: !324)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2295, file: !2296, line: 9, baseType: !324, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2291, file: !107, line: 44, baseType: !2302, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2304, line: 7, size: 64, elements: !2305)
!2304 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2305 = !{!2306, !2308}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2303, file: !2304, line: 8, baseType: !2307, size: 32)
!2307 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2304, line: 5, baseType: !472)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2303, file: !2304, line: 9, baseType: !472, size: 32, offset: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2286, file: !107, line: 46, baseType: !399, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2274, file: !107, line: 55, baseType: !2311, size: 256)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2274, file: !107, line: 49, size: 256, elements: !2312)
!2312 = !{!2313, !2316, !2317, !2318, !2319}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2311, file: !107, line: 50, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !107, line: 14, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2311, file: !107, line: 51, baseType: !46, size: 32, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2311, file: !107, line: 52, baseType: !46, size: 32, offset: 96)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2311, file: !107, line: 53, baseType: !285, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2311, file: !107, line: 54, baseType: !285, size: 64, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2039, file: !731, line: 973, baseType: !2321, size: 32, offset: 10688)
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !136, line: 27, baseType: !2322)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !269, line: 28, baseType: !46)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2039, file: !731, line: 974, baseType: !2321, size: 32, offset: 10720)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2039, file: !731, line: 978, baseType: !285, size: 64, offset: 10752)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2039, file: !731, line: 987, baseType: !2038, size: 64, offset: 10816)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2039, file: !731, line: 990, baseType: !2038, size: 64, offset: 10880)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2039, file: !731, line: 995, baseType: !135, size: 128, offset: 10944)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2039, file: !731, line: 996, baseType: !135, size: 128, offset: 11072)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2039, file: !731, line: 997, baseType: !2038, size: 64, offset: 11200)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2039, file: !731, line: 1005, baseType: !135, size: 128, offset: 11264)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2039, file: !731, line: 1006, baseType: !135, size: 128, offset: 11392)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2039, file: !731, line: 1009, baseType: !2333, size: 64, offset: 11520)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !2335, line: 59, size: 768, elements: !2336)
!2335 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!2336 = !{!2337, !2338, !2339, !2340, !2345, !2346, !2347, !2348}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2334, file: !2335, line: 61, baseType: !800, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2334, file: !2335, line: 62, baseType: !7, size: 32, offset: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2334, file: !2335, line: 63, baseType: !165, size: 32, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2334, file: !2335, line: 65, baseType: !2341, size: 256, offset: 128)
!2341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2342, size: 256, elements: !474)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !136, line: 194, size: 64, elements: !2343)
!2343 = !{!2344}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2342, file: !136, line: 195, baseType: !1071, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2334, file: !2335, line: 66, baseType: !2342, size: 64, offset: 384)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2334, file: !2335, line: 68, baseType: !1647, size: 192, offset: 448)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2334, file: !2335, line: 69, baseType: !342, size: 128, align: 64, offset: 640)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2334, file: !2335, line: 70, baseType: !2349, offset: 768)
!2349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2350, elements: !570)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !2335, line: 54, size: 128, elements: !2351)
!2351 = !{!2352, !2353}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2350, file: !2335, line: 55, baseType: !46, size: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2350, file: !2335, line: 56, baseType: !2354, size: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !2335, line: 56, flags: DIFlagFwdDecl)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2039, file: !731, line: 1010, baseType: !2357, size: 512, offset: 11584)
!2357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1068, size: 512, elements: !474)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2039, file: !731, line: 1011, baseType: !135, size: 128, offset: 12096)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2039, file: !731, line: 1012, baseType: !135, size: 128, offset: 12224)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2039, file: !731, line: 1014, baseType: !816, size: 64, offset: 12352)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2039, file: !731, line: 1017, baseType: !963, size: 64, offset: 12416)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2039, file: !731, line: 1020, baseType: !963, size: 64, offset: 12480)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2039, file: !731, line: 1023, baseType: !307, size: 64, offset: 12544)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2039, file: !731, line: 1025, baseType: !399, size: 64, offset: 12608)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2039, file: !731, line: 1026, baseType: !399, size: 64, offset: 12672)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2039, file: !731, line: 1031, baseType: !399, size: 64, offset: 12736)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2039, file: !731, line: 1032, baseType: !2368, size: 192, offset: 12800)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !731, line: 324, size: 192, elements: !2369)
!2369 = !{!2370, !2371, !2372}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2368, file: !731, line: 326, baseType: !399, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2368, file: !731, line: 327, baseType: !399, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2368, file: !731, line: 328, baseType: !427, size: 32, offset: 128)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2039, file: !731, line: 1041, baseType: !285, size: 64, offset: 12992)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2039, file: !731, line: 1042, baseType: !285, size: 64, offset: 13056)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2039, file: !731, line: 1045, baseType: !399, size: 64, offset: 13120)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2039, file: !731, line: 1048, baseType: !399, size: 64, offset: 13184)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2039, file: !731, line: 1051, baseType: !285, size: 64, offset: 13248)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2039, file: !731, line: 1052, baseType: !285, size: 64, offset: 13312)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2039, file: !731, line: 1055, baseType: !2380, size: 640, offset: 13376)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2381, line: 132, size: 640, elements: !2382)
!2381 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2382 = !{!2383, !2389, !2390}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2380, file: !2381, line: 133, baseType: !2384, size: 576)
!2384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2385, size: 576, elements: !236)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2381, line: 117, size: 192, elements: !2386)
!2386 = !{!2387, !2388}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2385, file: !2381, line: 118, baseType: !399, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2385, file: !2381, line: 119, baseType: !1628, size: 128, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2380, file: !2381, line: 134, baseType: !7, size: 32, offset: 576)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2380, file: !2381, line: 135, baseType: !7, size: 32, offset: 608)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2039, file: !731, line: 1058, baseType: !2392, size: 448, offset: 14016)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2381, line: 144, size: 448, elements: !2393)
!2393 = !{!2394, !2395, !2396}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2392, file: !2381, line: 145, baseType: !342, size: 128, align: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2392, file: !2381, line: 146, baseType: !493, size: 256, offset: 128)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2392, file: !2381, line: 147, baseType: !7, size: 32, offset: 384)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2039, file: !731, line: 1064, baseType: !2398, size: 64, offset: 14464)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2400)
!2400 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2401, line: 11, flags: DIFlagFwdDecl)
!2401 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9ecec28201063d5e3b04c190bc92649")
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2039, file: !731, line: 1067, baseType: !2398, size: 64, offset: 14528)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2039, file: !731, line: 1070, baseType: !2398, size: 64, offset: 14592)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2039, file: !731, line: 1074, baseType: !2405, size: 64, offset: 14656)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !731, line: 1074, flags: DIFlagFwdDecl)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2039, file: !731, line: 1084, baseType: !2408, size: 128, offset: 14720)
!2408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 128, elements: !1343)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2039, file: !731, line: 1086, baseType: !2410, size: 64, offset: 14848)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !731, line: 55, flags: DIFlagFwdDecl)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2039, file: !731, line: 1089, baseType: !2413, size: 64, offset: 14912)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2414, line: 12, size: 64, elements: !2415)
!2414 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2415 = !{!2416}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2413, file: !2414, line: 13, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2414, line: 8, flags: DIFlagFwdDecl)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2039, file: !731, line: 1090, baseType: !2420, size: 128, offset: 14976)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2421, line: 13, size: 128, elements: !2422)
!2421 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2422 = !{!2423}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2420, file: !2421, line: 14, baseType: !135, size: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2039, file: !731, line: 1097, baseType: !2425, size: 64, offset: 15104)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !731, line: 50, flags: DIFlagFwdDecl)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2039, file: !731, line: 1100, baseType: !2428, size: 64, offset: 15168)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !731, line: 1100, flags: DIFlagFwdDecl)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2039, file: !731, line: 1103, baseType: !2431, size: 64, offset: 15232)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !731, line: 53, flags: DIFlagFwdDecl)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2039, file: !731, line: 1107, baseType: !2434, size: 64, offset: 15296)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2436, line: 35, flags: DIFlagFwdDecl)
!2436 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2039, file: !731, line: 1110, baseType: !2438, size: 64, offset: 15360)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2381, line: 236, flags: DIFlagFwdDecl)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2039, file: !731, line: 1111, baseType: !2441, size: 64, offset: 15424)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !731, line: 67, flags: DIFlagFwdDecl)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2039, file: !731, line: 1112, baseType: !2444, size: 64, offset: 15488)
!2444 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2445, line: 25, baseType: !2446)
!2445 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2445, line: 23, size: 64, elements: !2447)
!2447 = !{!2448}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2446, file: !2445, line: 24, baseType: !1186, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2039, file: !731, line: 1113, baseType: !2444, size: 64, offset: 15552)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2039, file: !731, line: 1115, baseType: !2444, size: 64, offset: 15616)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2039, file: !731, line: 1116, baseType: !2452, size: 192, offset: 15680)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2453, line: 32, size: 192, elements: !2454)
!2453 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2454 = !{!2455, !2456}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2452, file: !2453, line: 33, baseType: !135, size: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2452, file: !2453, line: 34, baseType: !2444, size: 64, offset: 128)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2039, file: !731, line: 1117, baseType: !285, size: 64, offset: 15872)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2039, file: !731, line: 1118, baseType: !282, size: 64, offset: 15936)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2039, file: !731, line: 1119, baseType: !7, size: 32, offset: 16000)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2039, file: !731, line: 1121, baseType: !345, size: 64, offset: 16064)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2039, file: !731, line: 1125, baseType: !2462, size: 64, offset: 16128)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !731, line: 43, flags: DIFlagFwdDecl)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2039, file: !731, line: 1127, baseType: !667, size: 32, offset: 16192)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2039, file: !731, line: 1128, baseType: !7, size: 32, offset: 16224)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2039, file: !731, line: 1130, baseType: !2467, size: 128, offset: 16256)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2468, line: 37, size: 128, elements: !2469)
!2468 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2469 = !{!2470, !2471, !2472}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2467, file: !2468, line: 38, baseType: !46, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2467, file: !2468, line: 39, baseType: !185, size: 32, offset: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2467, file: !2468, line: 40, baseType: !2473, size: 64, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2468, line: 24, flags: DIFlagFwdDecl)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2039, file: !731, line: 1131, baseType: !2476, size: 256, offset: 16384)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2477, line: 12, size: 256, elements: !2478)
!2477 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2478 = !{!2479, !2480, !2481, !2482}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2476, file: !2477, line: 13, baseType: !235, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2476, file: !2477, line: 14, baseType: !285, size: 64, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2476, file: !2477, line: 15, baseType: !285, size: 64, offset: 128)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2476, file: !2477, line: 16, baseType: !592, size: 8, offset: 192)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2039, file: !731, line: 1134, baseType: !399, size: 64, offset: 16640)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2039, file: !731, line: 1135, baseType: !399, size: 64, offset: 16704)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2039, file: !731, line: 1138, baseType: !165, size: 32, offset: 16768)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2039, file: !731, line: 1141, baseType: !427, size: 32, offset: 16800)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2039, file: !731, line: 1143, baseType: !2488, size: 64, offset: 16832)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !731, line: 735, size: 64, elements: !2489)
!2489 = !{!2490}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2488, file: !731, line: 736, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2039, file: !731, line: 1147, baseType: !1631, size: 128, offset: 16896)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2039, file: !731, line: 1149, baseType: !2038, size: 64, offset: 17024)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2039, file: !731, line: 1151, baseType: !2495, size: 64, offset: 17088)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !731, line: 1151, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2039, file: !731, line: 1188, baseType: !307, size: 64, offset: 17152)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2039, file: !731, line: 1191, baseType: !2499, size: 64, offset: 17216)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !731, line: 44, flags: DIFlagFwdDecl)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2039, file: !731, line: 1194, baseType: !2502, size: 64, offset: 17280)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !731, line: 45, flags: DIFlagFwdDecl)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2039, file: !731, line: 1197, baseType: !2505, size: 64, offset: 17344)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !731, line: 61, flags: DIFlagFwdDecl)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2039, file: !731, line: 1199, baseType: !2508, size: 64, offset: 17408)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !731, line: 52, flags: DIFlagFwdDecl)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2039, file: !731, line: 1202, baseType: !2511, size: 64, offset: 17472)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !731, line: 48, flags: DIFlagFwdDecl)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2039, file: !731, line: 1205, baseType: !285, size: 64, offset: 17536)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2039, file: !731, line: 1206, baseType: !2515, size: 64, offset: 17600)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2453, line: 14, baseType: !2517)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2453, line: 12, size: 384, elements: !2518)
!2518 = !{!2519}
!2519 = !DIDerivedType(tag: DW_TAG_member, scope: !2517, file: !2453, line: 13, baseType: !2520, size: 384)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2517, file: !2453, line: 13, size: 384, elements: !2521)
!2521 = !{!2522, !2523, !2524, !2525}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2520, file: !2453, line: 13, baseType: !46, size: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2520, file: !2453, line: 13, baseType: !46, size: 32, offset: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2520, file: !2453, line: 13, baseType: !46, size: 32, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2520, file: !2453, line: 13, baseType: !2526, size: 256, offset: 128)
!2526 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2527, line: 37, size: 256, elements: !2528)
!2527 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2528 = !{!2529, !2534, !2547, !2553, !2562, !2589, !2594}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2526, file: !2527, line: 42, baseType: !2530, size: 64)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2526, file: !2527, line: 39, size: 64, elements: !2531)
!2531 = !{!2532, !2533}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2530, file: !2527, line: 40, baseType: !2322, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2530, file: !2527, line: 41, baseType: !672, size: 32, offset: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2526, file: !2527, line: 50, baseType: !2535, size: 192)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2526, file: !2527, line: 45, size: 192, elements: !2536)
!2536 = !{!2537, !2539, !2540, !2546}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2535, file: !2527, line: 46, baseType: !2538, size: 32)
!2538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !269, line: 95, baseType: !46)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2535, file: !2527, line: 47, baseType: !46, size: 32, offset: 32)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2535, file: !2527, line: 48, baseType: !2541, size: 64, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2527, line: 11, baseType: !2542)
!2542 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2527, line: 8, size: 64, elements: !2543)
!2543 = !{!2544, !2545}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2542, file: !2527, line: 9, baseType: !46, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2542, file: !2527, line: 10, baseType: !307, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2535, file: !2527, line: 49, baseType: !46, size: 32, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2526, file: !2527, line: 57, baseType: !2548, size: 128)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2526, file: !2527, line: 53, size: 128, elements: !2549)
!2549 = !{!2550, !2551, !2552}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2548, file: !2527, line: 54, baseType: !2322, size: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2548, file: !2527, line: 55, baseType: !672, size: 32, offset: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2548, file: !2527, line: 56, baseType: !2541, size: 64, offset: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2526, file: !2527, line: 66, baseType: !2554, size: 256)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2526, file: !2527, line: 60, size: 256, elements: !2555)
!2555 = !{!2556, !2557, !2558, !2559, !2561}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2554, file: !2527, line: 61, baseType: !2322, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2554, file: !2527, line: 62, baseType: !672, size: 32, offset: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2554, file: !2527, line: 63, baseType: !46, size: 32, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2554, file: !2527, line: 64, baseType: !2560, size: 64, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !269, line: 94, baseType: !270)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2554, file: !2527, line: 65, baseType: !2560, size: 64, offset: 192)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2526, file: !2527, line: 105, baseType: !2563, size: 256)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2526, file: !2527, line: 69, size: 256, elements: !2564)
!2564 = !{!2565, !2566}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2563, file: !2527, line: 70, baseType: !307, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, scope: !2563, file: !2527, line: 79, baseType: !2567, size: 192, offset: 64)
!2567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2563, file: !2527, line: 79, size: 192, elements: !2568)
!2568 = !{!2569, !2570, !2571, !2578, !2583}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2567, file: !2527, line: 81, baseType: !46, size: 32)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2567, file: !2527, line: 86, baseType: !533, size: 16)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2567, file: !2527, line: 92, baseType: !2572, size: 192)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2567, file: !2527, line: 88, size: 192, elements: !2573)
!2573 = !{!2574, !2576, !2577}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2572, file: !2527, line: 89, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 64, elements: !1241)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2572, file: !2527, line: 90, baseType: !307, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2572, file: !2527, line: 91, baseType: !307, size: 64, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2567, file: !2527, line: 97, baseType: !2579, size: 96)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2567, file: !2527, line: 94, size: 96, elements: !2580)
!2580 = !{!2581, !2582}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2579, file: !2527, line: 95, baseType: !2575, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2579, file: !2527, line: 96, baseType: !999, size: 32, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2567, file: !2527, line: 103, baseType: !2584, size: 128)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2567, file: !2527, line: 99, size: 128, elements: !2585)
!2585 = !{!2586, !2587, !2588}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2584, file: !2527, line: 100, baseType: !285, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2584, file: !2527, line: 101, baseType: !999, size: 32, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2584, file: !2527, line: 102, baseType: !999, size: 32, offset: 96)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2526, file: !2527, line: 111, baseType: !2590, size: 128)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2526, file: !2527, line: 108, size: 128, elements: !2591)
!2591 = !{!2592, !2593}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2590, file: !2527, line: 109, baseType: !271, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2590, file: !2527, line: 110, baseType: !46, size: 32, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2526, file: !2527, line: 118, baseType: !2595, size: 128)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2526, file: !2527, line: 114, size: 128, elements: !2596)
!2596 = !{!2597, !2598, !2599}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2595, file: !2527, line: 115, baseType: !307, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2595, file: !2527, line: 116, baseType: !46, size: 32, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2595, file: !2527, line: 117, baseType: !7, size: 32, offset: 96)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2039, file: !731, line: 1208, baseType: !2601, size: 448, offset: 17664)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2602, line: 12, size: 448, elements: !2603)
!2602 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2603 = !{!2604, !2605, !2606, !2607, !2608, !2609, !2610}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2601, file: !2602, line: 15, baseType: !399, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2601, file: !2602, line: 17, baseType: !399, size: 64, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2601, file: !2602, line: 19, baseType: !399, size: 64, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2601, file: !2602, line: 21, baseType: !399, size: 64, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2601, file: !2602, line: 29, baseType: !399, size: 64, offset: 256)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2601, file: !2602, line: 35, baseType: !399, size: 64, offset: 320)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2601, file: !2602, line: 44, baseType: !399, size: 64, offset: 384)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2039, file: !731, line: 1215, baseType: !399, size: 64, offset: 18112)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2039, file: !731, line: 1217, baseType: !399, size: 64, offset: 18176)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2039, file: !731, line: 1219, baseType: !399, size: 64, offset: 18240)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2039, file: !731, line: 1223, baseType: !2615, size: 64, offset: 18304)
!2615 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2616, line: 99, baseType: !2617)
!2616 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2616, line: 99, size: 64, elements: !2618)
!2618 = !{!2619}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2617, file: !2616, line: 99, baseType: !1186, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2039, file: !731, line: 1225, baseType: !2621, size: 32, offset: 18368)
!2621 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !442, line: 275, baseType: !2622)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !442, line: 275, size: 32, elements: !2623)
!2623 = !{!2624}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2622, file: !442, line: 275, baseType: !441, size: 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2039, file: !731, line: 1226, baseType: !46, size: 32, offset: 18400)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2039, file: !731, line: 1227, baseType: !46, size: 32, offset: 18432)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2039, file: !731, line: 1231, baseType: !2628, size: 64, offset: 18496)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !731, line: 1231, flags: DIFlagFwdDecl)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2039, file: !731, line: 1233, baseType: !135, size: 128, offset: 18560)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2039, file: !731, line: 1240, baseType: !2632, size: 64, offset: 18688)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !731, line: 62, flags: DIFlagFwdDecl)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2039, file: !731, line: 1242, baseType: !2635, size: 64, offset: 18752)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !731, line: 1242, flags: DIFlagFwdDecl)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2039, file: !731, line: 1244, baseType: !135, size: 128, offset: 18816)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2039, file: !731, line: 1245, baseType: !2639, size: 64, offset: 18944)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !731, line: 51, flags: DIFlagFwdDecl)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2039, file: !731, line: 1246, baseType: !493, size: 256, offset: 19008)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2039, file: !731, line: 1247, baseType: !7, size: 32, offset: 19264)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2039, file: !731, line: 1250, baseType: !2644, size: 64, offset: 19328)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !731, line: 57, flags: DIFlagFwdDecl)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2039, file: !731, line: 1251, baseType: !493, size: 256, offset: 19392)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2039, file: !731, line: 1252, baseType: !135, size: 128, offset: 19648)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2039, file: !731, line: 1259, baseType: !619, size: 64, offset: 19776)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2039, file: !731, line: 1260, baseType: !533, size: 16, offset: 19840)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2039, file: !731, line: 1261, baseType: !533, size: 16, offset: 19856)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2039, file: !731, line: 1314, baseType: !2652, size: 64, offset: 19904)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2654, line: 62, size: 256, align: 256, elements: !2655)
!2654 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2655 = !{!2656, !2657, !2658, !2659, !2660, !2661, !2662}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2653, file: !2654, line: 75, baseType: !999, size: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2653, file: !2654, line: 90, baseType: !999, size: 32, offset: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2653, file: !2654, line: 112, baseType: !400, size: 64, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2653, file: !2654, line: 132, baseType: !999, size: 32, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2653, file: !2654, line: 140, baseType: !999, size: 32, offset: 160)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2653, file: !2654, line: 149, baseType: !999, size: 32, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2653, file: !2654, line: 154, baseType: !2663, offset: 224)
!2663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, elements: !570)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2039, file: !731, line: 1315, baseType: !1081, size: 32, offset: 19968)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2039, file: !731, line: 1316, baseType: !1081, size: 32, offset: 20000)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2039, file: !731, line: 1321, baseType: !285, size: 64, offset: 20032)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2039, file: !731, line: 1325, baseType: !46, size: 32, offset: 20096)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2039, file: !731, line: 1326, baseType: !46, size: 32, offset: 20128)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2039, file: !731, line: 1327, baseType: !46, size: 32, offset: 20160)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2039, file: !731, line: 1328, baseType: !46, size: 32, offset: 20192)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2039, file: !731, line: 1329, baseType: !342, size: 128, align: 64, offset: 20224)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2039, file: !731, line: 1332, baseType: !2673, size: 128, offset: 20352)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2674, line: 51, size: 128, elements: !2675)
!2674 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2675 = !{!2676, !2681, !2682}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2673, file: !2674, line: 60, baseType: !2677, size: 64)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2678, line: 7, size: 64, elements: !2679)
!2678 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2679 = !{!2680}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2677, file: !2678, line: 12, baseType: !1182, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2673, file: !2674, line: 63, baseType: !592, size: 8, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2673, file: !2674, line: 70, baseType: !592, size: 8, offset: 72)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2039, file: !731, line: 1335, baseType: !2684, size: 64, offset: 20480)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !731, line: 59, flags: DIFlagFwdDecl)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2039, file: !731, line: 1337, baseType: !2687, size: 128, offset: 20544)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2674, line: 39, size: 128, elements: !2688)
!2688 = !{!2689, !2750, !2751}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2687, file: !2674, line: 40, baseType: !2690, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !314, line: 74, size: 512, align: 128, elements: !2692)
!2692 = !{!2693, !2694, !2744, !2749}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2691, file: !314, line: 75, baseType: !285, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, scope: !2691, file: !314, line: 83, baseType: !2695, size: 320, offset: 64)
!2695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2691, file: !314, line: 83, size: 320, elements: !2696)
!2696 = !{!2697, !2718, !2732, !2736, !2743}
!2697 = !DIDerivedType(tag: DW_TAG_member, scope: !2695, file: !314, line: 84, baseType: !2698, size: 320)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2695, file: !314, line: 84, size: 320, elements: !2699)
!2699 = !{!2700, !2711, !2712, !2717}
!2700 = !DIDerivedType(tag: DW_TAG_member, scope: !2698, file: !314, line: 90, baseType: !2701, size: 128)
!2701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2698, file: !314, line: 90, size: 128, elements: !2702)
!2702 = !{!2703, !2704, !2709, !2710}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2701, file: !314, line: 91, baseType: !135, size: 128)
!2704 = !DIDerivedType(tag: DW_TAG_member, scope: !2701, file: !314, line: 94, baseType: !2705, size: 128)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2701, file: !314, line: 94, size: 128, elements: !2706)
!2706 = !{!2707, !2708}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2705, file: !314, line: 96, baseType: !307, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2705, file: !314, line: 98, baseType: !7, size: 32, offset: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2701, file: !314, line: 102, baseType: !135, size: 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2701, file: !314, line: 103, baseType: !135, size: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2698, file: !314, line: 106, baseType: !312, size: 64, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_member, scope: !2698, file: !314, line: 107, baseType: !2713, size: 64, offset: 192)
!2713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2698, file: !314, line: 107, size: 64, elements: !2714)
!2714 = !{!2715, !2716}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2713, file: !314, line: 108, baseType: !285, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2713, file: !314, line: 109, baseType: !285, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2698, file: !314, line: 117, baseType: !285, size: 64, offset: 256)
!2718 = !DIDerivedType(tag: DW_TAG_member, scope: !2695, file: !314, line: 119, baseType: !2719, size: 320)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2695, file: !314, line: 119, size: 320, elements: !2720)
!2720 = !{!2721, !2722, !2725, !2726, !2727}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2719, file: !314, line: 124, baseType: !285, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2719, file: !314, line: 125, baseType: !2723, size: 64, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !314, line: 125, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2719, file: !314, line: 126, baseType: !285, size: 64, offset: 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2719, file: !314, line: 127, baseType: !285, size: 64, offset: 192)
!2727 = !DIDerivedType(tag: DW_TAG_member, scope: !2719, file: !314, line: 128, baseType: !2728, size: 64, offset: 256)
!2728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2719, file: !314, line: 128, size: 64, elements: !2729)
!2729 = !{!2730, !2731}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2728, file: !314, line: 133, baseType: !285, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2728, file: !314, line: 138, baseType: !405, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, scope: !2695, file: !314, line: 141, baseType: !2733, size: 64)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2695, file: !314, line: 141, size: 64, elements: !2734)
!2734 = !{!2735}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2733, file: !314, line: 142, baseType: !285, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, scope: !2695, file: !314, line: 144, baseType: !2737, size: 128)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2695, file: !314, line: 144, size: 128, elements: !2738)
!2738 = !{!2739, !2742}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2737, file: !314, line: 146, baseType: !2740, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !314, line: 146, flags: DIFlagFwdDecl)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2737, file: !314, line: 147, baseType: !307, size: 64, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2695, file: !314, line: 161, baseType: !342, size: 128, align: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, scope: !2691, file: !314, line: 164, baseType: !2745, size: 32, offset: 384)
!2745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2691, file: !314, line: 164, size: 32, elements: !2746)
!2746 = !{!2747, !2748}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2745, file: !314, line: 169, baseType: !185, size: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2745, file: !314, line: 177, baseType: !7, size: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2691, file: !314, line: 181, baseType: !185, size: 32, offset: 416)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2687, file: !2674, line: 42, baseType: !999, size: 32, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2687, file: !2674, line: 43, baseType: !999, size: 32, offset: 96)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2039, file: !731, line: 1340, baseType: !2753, size: 64, offset: 20672)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !731, line: 69, flags: DIFlagFwdDecl)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2039, file: !731, line: 1351, baseType: !46, size: 32, offset: 20736)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2039, file: !731, line: 1352, baseType: !46, size: 32, offset: 20768)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2039, file: !731, line: 1354, baseType: !285, size: 64, offset: 20800)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2039, file: !731, line: 1364, baseType: !399, size: 64, offset: 20864)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2039, file: !731, line: 1365, baseType: !399, size: 64, offset: 20928)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2039, file: !731, line: 1412, baseType: !285, size: 64, offset: 20992)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2039, file: !731, line: 1453, baseType: !2762, size: 64, offset: 21056)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !731, line: 1453, flags: DIFlagFwdDecl)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2039, file: !731, line: 1457, baseType: !2765, size: 64, offset: 21120)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !113, line: 61, size: 576, elements: !2767)
!2767 = !{!2768, !2769, !2788, !2791, !2792, !2825, !2835}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2766, file: !113, line: 62, baseType: !112, size: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, scope: !2766, file: !113, line: 64, baseType: !2770, size: 192, offset: 64)
!2770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2766, file: !113, line: 64, size: 192, elements: !2771)
!2771 = !{!2772, !2783}
!2772 = !DIDerivedType(tag: DW_TAG_member, scope: !2770, file: !113, line: 65, baseType: !2773, size: 192)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2770, file: !113, line: 65, size: 192, elements: !2774)
!2774 = !{!2775, !2782}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2773, file: !113, line: 66, baseType: !2776, size: 128)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2777, line: 50, size: 128, elements: !2778)
!2777 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2778 = !{!2779, !2780, !2781}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2776, file: !2777, line: 52, baseType: !285, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2776, file: !2777, line: 54, baseType: !7, size: 32, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2776, file: !2777, line: 55, baseType: !7, size: 32, offset: 96)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2773, file: !113, line: 67, baseType: !285, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, scope: !2770, file: !113, line: 70, baseType: !2784, size: 192)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2770, file: !113, line: 70, size: 192, elements: !2785)
!2785 = !{!2786, !2787}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2784, file: !113, line: 71, baseType: !342, size: 128, align: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2784, file: !113, line: 72, baseType: !285, size: 64, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2766, file: !113, line: 76, baseType: !2789, size: 64, offset: 256)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !113, line: 76, flags: DIFlagFwdDecl)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2766, file: !113, line: 77, baseType: !285, size: 64, offset: 320)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2766, file: !113, line: 79, baseType: !2793, size: 64, offset: 384)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2777, line: 25, size: 256, elements: !2795)
!2795 = !{!2796, !2802, !2806}
!2796 = !DIDerivedType(tag: DW_TAG_member, scope: !2794, file: !2777, line: 26, baseType: !2797, size: 128)
!2797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2794, file: !2777, line: 26, size: 128, elements: !2798)
!2798 = !{!2799, !2801}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2797, file: !2777, line: 27, baseType: !2800, size: 128)
!2800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 128, elements: !1343)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2797, file: !2777, line: 28, baseType: !2800, size: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2794, file: !2777, line: 31, baseType: !2803, size: 64, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2805)
!2805 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2777, line: 23, flags: DIFlagFwdDecl)
!2806 = !DIDerivedType(tag: DW_TAG_member, scope: !2794, file: !2777, line: 33, baseType: !2807, size: 64, offset: 192)
!2807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2794, file: !2777, line: 33, size: 64, elements: !2808)
!2808 = !{!2809, !2815, !2820}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2807, file: !2777, line: 38, baseType: !2810, size: 64)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2807, file: !2777, line: 34, size: 64, elements: !2811)
!2811 = !{!2812, !2813, !2814}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2810, file: !2777, line: 35, baseType: !472, size: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2810, file: !2777, line: 36, baseType: !193, size: 8, offset: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2810, file: !2777, line: 37, baseType: !193, size: 8, offset: 40)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2807, file: !2777, line: 42, baseType: !2816, size: 16)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2807, file: !2777, line: 39, size: 16, elements: !2817)
!2817 = !{!2818, !2819}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2816, file: !2777, line: 40, baseType: !193, size: 8)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2816, file: !2777, line: 41, baseType: !193, size: 8, offset: 8)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2807, file: !2777, line: 46, baseType: !2821, size: 16)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2807, file: !2777, line: 43, size: 16, elements: !2822)
!2822 = !{!2823, !2824}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2821, file: !2777, line: 44, baseType: !193, size: 8)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2821, file: !2777, line: 45, baseType: !193, size: 8, offset: 8)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2766, file: !113, line: 81, baseType: !2826, size: 64, offset: 448)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !113, line: 85, size: 384, elements: !2828)
!2828 = !{!2829, !2830, !2831, !2832, !2833, !2834}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2827, file: !113, line: 86, baseType: !2789, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2827, file: !113, line: 87, baseType: !285, size: 64, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2827, file: !113, line: 88, baseType: !285, size: 64, offset: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2827, file: !113, line: 89, baseType: !285, size: 64, offset: 192)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2827, file: !113, line: 90, baseType: !592, size: 8, offset: 256)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2827, file: !113, line: 92, baseType: !2826, size: 64, offset: 320)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2766, file: !113, line: 82, baseType: !7, size: 32, offset: 512)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2039, file: !731, line: 1463, baseType: !2837, offset: 21184)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !731, line: 739, elements: !372)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2039, file: !731, line: 1470, baseType: !342, size: 128, align: 64, offset: 21184)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2039, file: !731, line: 1471, baseType: !800, size: 32, offset: 21312)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2039, file: !731, line: 1472, baseType: !46, size: 32, offset: 21344)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2039, file: !731, line: 1474, baseType: !2038, size: 64, offset: 21376)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2039, file: !731, line: 1475, baseType: !1064, size: 320, offset: 21440)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2039, file: !731, line: 1478, baseType: !2844, size: 64, offset: 21760)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2846, line: 49, size: 512, elements: !2847)
!2846 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2847 = !{!2848, !2849, !2850, !2851, !2852, !2854, !2855, !2856, !2858}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2845, file: !2846, line: 50, baseType: !2844, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2845, file: !2846, line: 51, baseType: !307, size: 64, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2845, file: !2846, line: 52, baseType: !285, size: 64, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2845, file: !2846, line: 53, baseType: !285, size: 64, offset: 192)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2845, file: !2846, line: 54, baseType: !2853, size: 64, offset: 256)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2845, file: !2846, line: 56, baseType: !7, size: 32, offset: 320)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2845, file: !2846, line: 58, baseType: !7, size: 32, offset: 352)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2845, file: !2846, line: 59, baseType: !2857, size: 64, offset: 384)
!2857 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !136, line: 159, baseType: !399)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2845, file: !2846, line: 60, baseType: !514, size: 64, offset: 448)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2039, file: !731, line: 1482, baseType: !800, size: 32, offset: 21824)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2039, file: !731, line: 1489, baseType: !307, size: 64, offset: 21888)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2039, file: !731, line: 1504, baseType: !307, size: 64, offset: 21952)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2039, file: !731, line: 1505, baseType: !400, size: 64, offset: 22016)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2039, file: !731, line: 1506, baseType: !399, size: 64, offset: 22080)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2039, file: !731, line: 1507, baseType: !400, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2039, file: !731, line: 1508, baseType: !400, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2039, file: !731, line: 1509, baseType: !400, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2039, file: !731, line: 1510, baseType: !342, size: 128, align: 64, offset: 22208)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2039, file: !731, line: 1511, baseType: !46, size: 32, offset: 22336)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2039, file: !731, line: 1515, baseType: !2870, size: 64, offset: 22400)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !2061, line: 56, size: 64, elements: !2871)
!2871 = !{!2872}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2870, file: !2061, line: 57, baseType: !2064, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2039, file: !731, line: 1518, baseType: !2870, size: 64, offset: 22464)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2039, file: !731, line: 1528, baseType: !342, size: 128, align: 64, offset: 22528)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2039, file: !731, line: 1552, baseType: !2876, size: 35328, offset: 23040)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2877, line: 430, size: 35328, elements: !2878)
!2877 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2878 = !{!2879, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2908, !2909, !2910, !2911, !2912, !2913, !2916, !2917, !2918, !2919}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2876, file: !2877, line: 432, baseType: !2880, size: 192)
!2880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2881, size: 192, elements: !236)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2882, line: 16, size: 64, elements: !2883)
!2882 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2883 = !{!2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2881, file: !2882, line: 17, baseType: !203, size: 16)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2881, file: !2882, line: 18, baseType: !203, size: 16, offset: 16)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2881, file: !2882, line: 19, baseType: !203, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2881, file: !2882, line: 19, baseType: !203, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2881, file: !2882, line: 19, baseType: !203, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2881, file: !2882, line: 19, baseType: !203, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2881, file: !2882, line: 19, baseType: !203, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2881, file: !2882, line: 20, baseType: !203, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2881, file: !2882, line: 20, baseType: !203, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2881, file: !2882, line: 20, baseType: !203, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2881, file: !2882, line: 20, baseType: !203, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2881, file: !2882, line: 20, baseType: !203, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2881, file: !2882, line: 20, baseType: !203, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2876, file: !2877, line: 436, baseType: !285, size: 64, offset: 192)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2876, file: !2877, line: 440, baseType: !205, size: 16, offset: 256)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2876, file: !2877, line: 441, baseType: !205, size: 16, offset: 272)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2876, file: !2877, line: 442, baseType: !205, size: 16, offset: 288)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2876, file: !2877, line: 443, baseType: !205, size: 16, offset: 304)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2876, file: !2877, line: 447, baseType: !285, size: 64, offset: 320)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2876, file: !2877, line: 448, baseType: !285, size: 64, offset: 384)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2876, file: !2877, line: 459, baseType: !2905, size: 256, offset: 448)
!2905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2906, size: 256, elements: !474)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2877, line: 428, flags: DIFlagFwdDecl)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2876, file: !2877, line: 461, baseType: !285, size: 64, offset: 704)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2876, file: !2877, line: 463, baseType: !285, size: 64, offset: 768)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2876, file: !2877, line: 465, baseType: !285, size: 64, offset: 832)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2876, file: !2877, line: 466, baseType: !285, size: 64, offset: 896)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2876, file: !2877, line: 467, baseType: !285, size: 64, offset: 960)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2876, file: !2877, line: 473, baseType: !2914, size: 64, offset: 1024)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2877, line: 10, flags: DIFlagFwdDecl)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2876, file: !2877, line: 480, baseType: !285, size: 64, offset: 1088)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2876, file: !2877, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2876, file: !2877, line: 491, baseType: !1081, size: 32, offset: 1184)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2876, file: !2877, line: 501, baseType: !2920, size: 33792, offset: 1536)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2921, line: 448, size: 33792, elements: !2922)
!2921 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2922 = !{!2923, !2924, !2925, !3089, !3090, !3096, !3097}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2920, file: !2921, line: 461, baseType: !7, size: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2920, file: !2921, line: 468, baseType: !285, size: 64, offset: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2920, file: !2921, line: 476, baseType: !2926, size: 64, offset: 128)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2921, line: 356, size: 33280, align: 512, elements: !2928)
!2928 = !{!2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2927, file: !2921, line: 358, baseType: !7, size: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2927, file: !2921, line: 361, baseType: !7, size: 32, offset: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2927, file: !2921, line: 364, baseType: !399, size: 64, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2927, file: !2921, line: 367, baseType: !399, size: 64, offset: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2927, file: !2921, line: 370, baseType: !399, size: 64, offset: 192)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2927, file: !2921, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2927, file: !2921, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2927, file: !2921, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2927, file: !2921, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2927, file: !2921, line: 397, baseType: !2939, size: 32768, offset: 512)
!2939 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2921, line: 348, size: 32768, elements: !2940)
!2940 = !{!2941, !2956, !2993, !3070, !3085}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2939, file: !2921, line: 349, baseType: !2942, size: 896)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2921, line: 12, size: 896, elements: !2943)
!2943 = !{!2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2955}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2942, file: !2921, line: 13, baseType: !1081, size: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2942, file: !2921, line: 14, baseType: !1081, size: 32, offset: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2942, file: !2921, line: 15, baseType: !1081, size: 32, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2942, file: !2921, line: 16, baseType: !1081, size: 32, offset: 96)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2942, file: !2921, line: 17, baseType: !1081, size: 32, offset: 128)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2942, file: !2921, line: 18, baseType: !1081, size: 32, offset: 160)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2942, file: !2921, line: 19, baseType: !1081, size: 32, offset: 192)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2942, file: !2921, line: 22, baseType: !2952, size: 640, offset: 224)
!2952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1081, size: 640, elements: !2953)
!2953 = !{!2954}
!2954 = !DISubrange(count: 20)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2942, file: !2921, line: 25, baseType: !1081, size: 32, offset: 864)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2939, file: !2921, line: 350, baseType: !2957, size: 4096, align: 128)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2921, line: 34, size: 4096, align: 128, elements: !2958)
!2958 = !{!2959, !2960, !2961, !2962, !2963, !2978, !2979, !2980, !2982, !2984, !2988}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2957, file: !2921, line: 35, baseType: !203, size: 16)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2957, file: !2921, line: 36, baseType: !203, size: 16, offset: 16)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2957, file: !2921, line: 37, baseType: !203, size: 16, offset: 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2957, file: !2921, line: 38, baseType: !203, size: 16, offset: 48)
!2963 = !DIDerivedType(tag: DW_TAG_member, scope: !2957, file: !2921, line: 39, baseType: !2964, size: 128, offset: 64)
!2964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2957, file: !2921, line: 39, size: 128, elements: !2965)
!2965 = !{!2966, !2971}
!2966 = !DIDerivedType(tag: DW_TAG_member, scope: !2964, file: !2921, line: 40, baseType: !2967, size: 128)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2964, file: !2921, line: 40, size: 128, elements: !2968)
!2968 = !{!2969, !2970}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2967, file: !2921, line: 41, baseType: !399, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2967, file: !2921, line: 42, baseType: !399, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, scope: !2964, file: !2921, line: 44, baseType: !2972, size: 128)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2964, file: !2921, line: 44, size: 128, elements: !2973)
!2973 = !{!2974, !2975, !2976, !2977}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2972, file: !2921, line: 45, baseType: !1081, size: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2972, file: !2921, line: 46, baseType: !1081, size: 32, offset: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2972, file: !2921, line: 47, baseType: !1081, size: 32, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2972, file: !2921, line: 48, baseType: !1081, size: 32, offset: 96)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2957, file: !2921, line: 51, baseType: !1081, size: 32, offset: 192)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2957, file: !2921, line: 52, baseType: !1081, size: 32, offset: 224)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2957, file: !2921, line: 55, baseType: !2981, size: 1024, offset: 256)
!2981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1081, size: 1024, elements: !1239)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2957, file: !2921, line: 58, baseType: !2983, size: 2048, offset: 1280)
!2983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1081, size: 2048, elements: !240)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2957, file: !2921, line: 60, baseType: !2985, size: 384, offset: 3328)
!2985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1081, size: 384, elements: !2986)
!2986 = !{!2987}
!2987 = !DISubrange(count: 12)
!2988 = !DIDerivedType(tag: DW_TAG_member, scope: !2957, file: !2921, line: 62, baseType: !2989, size: 384, offset: 3712)
!2989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2957, file: !2921, line: 62, size: 384, elements: !2990)
!2990 = !{!2991, !2992}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2989, file: !2921, line: 63, baseType: !2985, size: 384)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2989, file: !2921, line: 64, baseType: !2985, size: 384)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2939, file: !2921, line: 351, baseType: !2994, size: 1088)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2921, line: 79, size: 1088, elements: !2995)
!2995 = !{!2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3069}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2994, file: !2921, line: 80, baseType: !1081, size: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2994, file: !2921, line: 81, baseType: !1081, size: 32, offset: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2994, file: !2921, line: 82, baseType: !1081, size: 32, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2994, file: !2921, line: 83, baseType: !1081, size: 32, offset: 96)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2994, file: !2921, line: 84, baseType: !1081, size: 32, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2994, file: !2921, line: 85, baseType: !1081, size: 32, offset: 160)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2994, file: !2921, line: 86, baseType: !1081, size: 32, offset: 192)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2994, file: !2921, line: 88, baseType: !2952, size: 640, offset: 224)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2994, file: !2921, line: 89, baseType: !193, size: 8, offset: 864)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2994, file: !2921, line: 90, baseType: !193, size: 8, offset: 872)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2994, file: !2921, line: 91, baseType: !193, size: 8, offset: 880)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2994, file: !2921, line: 92, baseType: !193, size: 8, offset: 888)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2994, file: !2921, line: 93, baseType: !193, size: 8, offset: 896)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2994, file: !2921, line: 94, baseType: !193, size: 8, offset: 904)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2994, file: !2921, line: 95, baseType: !3011, size: 64, offset: 960)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3013, line: 11, size: 128, elements: !3014)
!3013 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3014 = !{!3015, !3016}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3012, file: !3013, line: 12, baseType: !271, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3012, file: !3013, line: 13, baseType: !3017, size: 64, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3019, line: 103, size: 1344, elements: !3020)
!3019 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3020 = !{!3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3049, !3050, !3051}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3018, file: !3019, line: 109, baseType: !285, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3018, file: !3019, line: 110, baseType: !285, size: 64, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3018, file: !3019, line: 111, baseType: !285, size: 64, offset: 128)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3018, file: !3019, line: 112, baseType: !285, size: 64, offset: 192)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3018, file: !3019, line: 113, baseType: !285, size: 64, offset: 256)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3018, file: !3019, line: 114, baseType: !285, size: 64, offset: 320)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3018, file: !3019, line: 117, baseType: !285, size: 64, offset: 384)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3018, file: !3019, line: 118, baseType: !285, size: 64, offset: 448)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3018, file: !3019, line: 119, baseType: !285, size: 64, offset: 512)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3018, file: !3019, line: 120, baseType: !285, size: 64, offset: 576)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3018, file: !3019, line: 121, baseType: !285, size: 64, offset: 640)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3018, file: !3019, line: 122, baseType: !285, size: 64, offset: 704)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3018, file: !3019, line: 123, baseType: !285, size: 64, offset: 768)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3018, file: !3019, line: 124, baseType: !285, size: 64, offset: 832)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3018, file: !3019, line: 125, baseType: !285, size: 64, offset: 896)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3018, file: !3019, line: 139, baseType: !285, size: 64, offset: 960)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3018, file: !3019, line: 142, baseType: !285, size: 64, offset: 1024)
!3038 = !DIDerivedType(tag: DW_TAG_member, scope: !3018, file: !3019, line: 144, baseType: !3039, size: 64, offset: 1088)
!3039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3018, file: !3019, line: 144, size: 64, elements: !3040)
!3040 = !{!3041, !3042, !3043}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3039, file: !3019, line: 146, baseType: !203, size: 16)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3039, file: !3019, line: 148, baseType: !399, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3039, file: !3019, line: 150, baseType: !3044, size: 64)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3019, line: 59, size: 64, elements: !3045)
!3045 = !{!3046, !3047, !3048}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3044, file: !3019, line: 61, baseType: !399, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3044, file: !3019, line: 63, baseType: !399, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3044, file: !3019, line: 65, baseType: !399, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3018, file: !3019, line: 153, baseType: !285, size: 64, offset: 1152)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3018, file: !3019, line: 154, baseType: !285, size: 64, offset: 1216)
!3051 = !DIDerivedType(tag: DW_TAG_member, scope: !3018, file: !3019, line: 156, baseType: !3052, size: 64, offset: 1280)
!3052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3018, file: !3019, line: 156, size: 64, elements: !3053)
!3053 = !{!3054, !3055, !3056}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3052, file: !3019, line: 158, baseType: !203, size: 16)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3052, file: !3019, line: 160, baseType: !399, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3052, file: !3019, line: 162, baseType: !3057, size: 64)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3019, line: 69, size: 64, elements: !3058)
!3058 = !{!3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3057, file: !3019, line: 71, baseType: !399, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3057, file: !3019, line: 73, baseType: !399, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3057, file: !3019, line: 75, baseType: !399, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3057, file: !3019, line: 77, baseType: !399, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3057, file: !3019, line: 80, baseType: !399, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3057, file: !3019, line: 83, baseType: !399, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3057, file: !3019, line: 86, baseType: !399, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3057, file: !3019, line: 88, baseType: !399, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3057, file: !3019, line: 93, baseType: !399, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3057, file: !3019, line: 100, baseType: !399, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2994, file: !2921, line: 96, baseType: !1081, size: 32, offset: 1024)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2939, file: !2921, line: 352, baseType: !3071, size: 4608, align: 512)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2921, line: 333, size: 4608, align: 512, elements: !3072)
!3072 = !{!3073, !3074, !3083}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3071, file: !2921, line: 334, baseType: !2957, size: 4096, align: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3071, file: !2921, line: 335, baseType: !3075, size: 512, offset: 4096)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2921, line: 312, size: 512, elements: !3076)
!3076 = !{!3077, !3078, !3079}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3075, file: !2921, line: 313, baseType: !399, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3075, file: !2921, line: 314, baseType: !399, size: 64, offset: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3075, file: !2921, line: 315, baseType: !3080, size: 384, offset: 128)
!3080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 384, elements: !3081)
!3081 = !{!3082}
!3082 = !DISubrange(count: 6)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3071, file: !2921, line: 336, baseType: !3084, offset: 4608)
!3084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, elements: !570)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2939, file: !2921, line: 353, baseType: !3086, size: 32768)
!3086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 32768, elements: !3087)
!3087 = !{!3088}
!3088 = !DISubrange(count: 4096)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2920, file: !2921, line: 484, baseType: !2926, size: 64, offset: 192)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2920, file: !2921, line: 491, baseType: !3091, size: 128, offset: 256)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2921, line: 404, size: 128, elements: !3092)
!3092 = !{!3093, !3094, !3095}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3091, file: !2921, line: 424, baseType: !399, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3091, file: !2921, line: 432, baseType: !7, size: 32, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3091, file: !2921, line: 440, baseType: !7, size: 32, offset: 96)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2920, file: !2921, line: 498, baseType: !3091, size: 128, offset: 384)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2920, file: !2921, line: 508, baseType: !2927, size: 33280, align: 512, offset: 512)
!3098 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !1196, line: 127, baseType: !399)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !1196, line: 908, size: 192, elements: !3101)
!3101 = !{!3102, !3104, !3109, !3115, !3122, !3128, !3134, !3142}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3100, file: !1196, line: 909, baseType: !3103, size: 32)
!3103 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !1196, line: 644, baseType: !1081)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !3100, file: !1196, line: 913, baseType: !3105, size: 128)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3100, file: !1196, line: 910, size: 128, elements: !3106)
!3106 = !{!3107, !3108}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3105, file: !1196, line: 911, baseType: !3103, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3105, file: !1196, line: 912, baseType: !399, size: 64, offset: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3100, file: !1196, line: 919, baseType: !3110, size: 128)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3100, file: !1196, line: 915, size: 128, elements: !3111)
!3111 = !{!3112, !3113, !3114}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3110, file: !1196, line: 916, baseType: !3103, size: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3110, file: !1196, line: 917, baseType: !1081, size: 32, offset: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3110, file: !1196, line: 918, baseType: !235, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3100, file: !1196, line: 925, baseType: !3116, size: 128)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3100, file: !1196, line: 921, size: 128, elements: !3117)
!3117 = !{!3118, !3119, !3120}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3116, file: !1196, line: 922, baseType: !3103, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3116, file: !1196, line: 923, baseType: !1081, size: 32, offset: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3116, file: !1196, line: 924, baseType: !3121, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !3100, file: !1196, line: 931, baseType: !3123, size: 128)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3100, file: !1196, line: 927, size: 128, elements: !3124)
!3124 = !{!3125, !3126, !3127}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3123, file: !1196, line: 928, baseType: !3103, size: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3123, file: !1196, line: 929, baseType: !1081, size: 32, offset: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !3123, file: !1196, line: 930, baseType: !3099, size: 64, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !3100, file: !1196, line: 937, baseType: !3129, size: 128)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3100, file: !1196, line: 933, size: 128, elements: !3130)
!3130 = !{!3131, !3132, !3133}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3129, file: !1196, line: 934, baseType: !3103, size: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !3129, file: !1196, line: 935, baseType: !3103, size: 32, offset: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !3129, file: !1196, line: 936, baseType: !1195, size: 64, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !3100, file: !1196, line: 944, baseType: !3135, size: 192)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3100, file: !1196, line: 939, size: 192, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3141}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3135, file: !1196, line: 940, baseType: !3103, size: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !3135, file: !1196, line: 941, baseType: !1081, size: 32, offset: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !3135, file: !1196, line: 942, baseType: !3140, size: 64, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !1196, line: 128, baseType: !399)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !3135, file: !1196, line: 943, baseType: !1081, size: 32, offset: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !3100, file: !1196, line: 950, baseType: !3143, size: 96)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3100, file: !1196, line: 946, size: 96, elements: !3144)
!3144 = !{!3145, !3146, !3147}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3143, file: !1196, line: 947, baseType: !3103, size: 32)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !3143, file: !1196, line: 948, baseType: !1081, size: 32, offset: 32)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !3143, file: !1196, line: 949, baseType: !1081, size: 32, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !143)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !271)
!3153 = !{!3154, !3156, !3161, !3166, !0, !3168, !3173, !3175, !3197, !3202, !3207, !3209, !3214, !3219, !3224, !3229, !3231, !3234, !3236, !3238, !3241, !3246, !3251, !3256, !3261, !3263, !3268, !3270, !3272, !3274, !3277}
!3154 = !DIGlobalVariableExpression(var: !3155, expr: !DIExpression())
!3155 = distinct !DIGlobalVariable(name: "__param_ignore_tpc", scope: !2, file: !3, line: 30, type: !883, isLocal: true, isDefinition: true, align: 64)
!3156 = !DIGlobalVariableExpression(var: !3157, expr: !DIExpression())
!3157 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_ignore_tpctype247", scope: !2, file: !3, line: 30, type: !3158, isLocal: true, isDefinition: true, align: 8)
!3158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 272, elements: !3159)
!3159 = !{!3160}
!3160 = !DISubrange(count: 34)
!3161 = !DIGlobalVariableExpression(var: !3162, expr: !DIExpression())
!3162 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_ignore_tpc248", scope: !2, file: !3, line: 31, type: !3163, isLocal: true, isDefinition: true, align: 8)
!3163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 560, elements: !3164)
!3164 = !{!3165}
!3165 = !DISubrange(count: 70)
!3166 = !DIGlobalVariableExpression(var: !3167, expr: !DIExpression())
!3167 = distinct !DIGlobalVariable(name: "ignore_tpc", scope: !2, file: !3, line: 29, type: !46, isLocal: true, isDefinition: true)
!3168 = !DIGlobalVariableExpression(var: !3169, expr: !DIExpression())
!3169 = distinct !DIGlobalVariable(scope: null, file: !3, line: 275, type: !3170, isLocal: true, isDefinition: true)
!3170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 40, elements: !3171)
!3171 = !{!3172}
!3172 = !DISubrange(count: 5)
!3173 = !DIGlobalVariableExpression(var: !3174, expr: !DIExpression())
!3174 = distinct !DIGlobalVariable(scope: null, file: !1192, line: 308, type: !3170, isLocal: true, isDefinition: true)
!3175 = !DIGlobalVariableExpression(var: !3176, expr: !DIExpression())
!3176 = distinct !DIGlobalVariable(name: "__key", scope: !3177, file: !1192, line: 310, type: !3196, isLocal: true, isDefinition: true)
!3177 = distinct !DISubprogram(name: "call_on_cpu", scope: !1192, file: !1192, line: 305, type: !3178, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3183)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!46, !46, !3180, !307, !592}
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!271, !307}
!3183 = !{!3184, !3185, !3186, !3187, !3188, !3192, !3194}
!3184 = !DILocalVariable(name: "cpu", arg: 1, scope: !3177, file: !1192, line: 305, type: !46)
!3185 = !DILocalVariable(name: "fn", arg: 2, scope: !3177, file: !1192, line: 305, type: !3180)
!3186 = !DILocalVariable(name: "arg", arg: 3, scope: !3177, file: !1192, line: 305, type: !307)
!3187 = !DILocalVariable(name: "direct", arg: 4, scope: !3177, file: !1192, line: 306, type: !592)
!3188 = !DILocalVariable(name: "pscr_ret__", scope: !3189, file: !1192, line: 308, type: !46)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !1192, line: 308, column: 46)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !1192, line: 308, column: 46)
!3191 = distinct !DILexicalBlock(scope: !3177, file: !1192, line: 308, column: 6)
!3192 = !DILocalVariable(name: "__vpp_verify", scope: !3193, file: !1192, line: 308, type: !514)
!3193 = distinct !DILexicalBlock(scope: !3189, file: !1192, line: 308, column: 46)
!3194 = !DILocalVariable(name: "pfo_val__", scope: !3195, file: !1192, line: 308, type: !1081)
!3195 = distinct !DILexicalBlock(scope: !3189, file: !1192, line: 308, column: 46)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1100, line: 206, elements: !372)
!3197 = !DIGlobalVariableExpression(var: !3198, expr: !DIExpression())
!3198 = distinct !DIGlobalVariable(scope: null, file: !3, line: 235, type: !3199, isLocal: true, isDefinition: true)
!3199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 304, elements: !3200)
!3200 = !{!3201}
!3201 = !DISubrange(count: 38)
!3202 = !DIGlobalVariableExpression(var: !3203, expr: !DIExpression())
!3203 = distinct !DIGlobalVariable(scope: null, file: !3, line: 254, type: !3204, isLocal: true, isDefinition: true)
!3204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 376, elements: !3205)
!3205 = !{!3206}
!3206 = !DISubrange(count: 47)
!3207 = !DIGlobalVariableExpression(var: !3208, expr: !DIExpression())
!3208 = distinct !DIGlobalVariable(scope: null, file: !3, line: 408, type: !3170, isLocal: true, isDefinition: true)
!3209 = !DIGlobalVariableExpression(var: !3210, expr: !DIExpression())
!3210 = distinct !DIGlobalVariable(scope: null, file: !3, line: 419, type: !3211, isLocal: true, isDefinition: true)
!3211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 216, elements: !3212)
!3212 = !{!3213}
!3213 = !DISubrange(count: 27)
!3214 = !DIGlobalVariableExpression(var: !3215, expr: !DIExpression())
!3215 = distinct !DIGlobalVariable(scope: null, file: !3, line: 433, type: !3216, isLocal: true, isDefinition: true)
!3216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 368, elements: !3217)
!3217 = !{!3218}
!3218 = !DISubrange(count: 46)
!3219 = !DIGlobalVariableExpression(var: !3220, expr: !DIExpression())
!3220 = distinct !DIGlobalVariable(scope: null, file: !3, line: 449, type: !3221, isLocal: true, isDefinition: true)
!3221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 360, elements: !3222)
!3222 = !{!3223}
!3223 = !DISubrange(count: 45)
!3224 = !DIGlobalVariableExpression(var: !3225, expr: !DIExpression())
!3225 = distinct !DIGlobalVariable(scope: null, file: !3, line: 461, type: !3226, isLocal: true, isDefinition: true)
!3226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 312, elements: !3227)
!3227 = !{!3228}
!3228 = !DISubrange(count: 39)
!3229 = !DIGlobalVariableExpression(var: !3230, expr: !DIExpression())
!3230 = distinct !DIGlobalVariable(scope: null, file: !3, line: 468, type: !3199, isLocal: true, isDefinition: true)
!3231 = !DIGlobalVariableExpression(var: !3232, expr: !DIExpression())
!3232 = distinct !DIGlobalVariable(scope: null, file: !3, line: 487, type: !3233, isLocal: true, isDefinition: true)
!3233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 48, elements: !3081)
!3234 = !DIGlobalVariableExpression(var: !3235, expr: !DIExpression())
!3235 = distinct !DIGlobalVariable(scope: null, file: !3, line: 492, type: !3170, isLocal: true, isDefinition: true)
!3236 = !DIGlobalVariableExpression(var: !3237, expr: !DIExpression())
!3237 = distinct !DIGlobalVariable(scope: null, file: !3, line: 502, type: !3211, isLocal: true, isDefinition: true)
!3238 = !DIGlobalVariableExpression(var: !3239, expr: !DIExpression())
!3239 = distinct !DIGlobalVariable(scope: null, file: !3, line: 534, type: !3240, isLocal: true, isDefinition: true)
!3240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 24, elements: !236)
!3241 = !DIGlobalVariableExpression(var: !3242, expr: !DIExpression())
!3242 = distinct !DIGlobalVariable(scope: null, file: !3, line: 534, type: !3243, isLocal: true, isDefinition: true)
!3243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 184, elements: !3244)
!3244 = !{!3245}
!3245 = !DISubrange(count: 23)
!3246 = !DIGlobalVariableExpression(var: !3247, expr: !DIExpression())
!3247 = distinct !DIGlobalVariable(scope: null, file: !3, line: 542, type: !3248, isLocal: true, isDefinition: true)
!3248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 328, elements: !3249)
!3249 = !{!3250}
!3250 = !DISubrange(count: 41)
!3251 = !DIGlobalVariableExpression(var: !3252, expr: !DIExpression())
!3252 = distinct !DIGlobalVariable(scope: null, file: !120, line: 480, type: !3253, isLocal: true, isDefinition: true)
!3253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 168, elements: !3254)
!3254 = !{!3255}
!3255 = !DISubrange(count: 21)
!3256 = !DIGlobalVariableExpression(var: !3257, expr: !DIExpression())
!3257 = distinct !DIGlobalVariable(scope: null, file: !3, line: 662, type: !3258, isLocal: true, isDefinition: true)
!3258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 144, elements: !3259)
!3259 = !{!3260}
!3260 = !DISubrange(count: 18)
!3261 = !DIGlobalVariableExpression(var: !3262, expr: !DIExpression())
!3262 = distinct !DIGlobalVariable(scope: null, file: !3, line: 917, type: !1238, isLocal: true, isDefinition: true)
!3263 = !DIGlobalVariableExpression(var: !3264, expr: !DIExpression())
!3264 = distinct !DIGlobalVariable(scope: null, file: !3, line: 775, type: !3265, isLocal: true, isDefinition: true)
!3265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 248, elements: !3266)
!3266 = !{!3267}
!3267 = !DISubrange(count: 31)
!3268 = !DIGlobalVariableExpression(var: !3269, expr: !DIExpression())
!3269 = distinct !DIGlobalVariable(scope: null, file: !3, line: 706, type: !3204, isLocal: true, isDefinition: true)
!3270 = !DIGlobalVariableExpression(var: !3271, expr: !DIExpression())
!3271 = distinct !DIGlobalVariable(scope: null, file: !3, line: 572, type: !3170, isLocal: true, isDefinition: true)
!3272 = !DIGlobalVariableExpression(var: !3273, expr: !DIExpression())
!3273 = distinct !DIGlobalVariable(scope: null, file: !3, line: 582, type: !3211, isLocal: true, isDefinition: true)
!3274 = !DIGlobalVariableExpression(var: !3275, expr: !DIExpression())
!3275 = distinct !DIGlobalVariable(scope: null, file: !3, line: 607, type: !3276, isLocal: true, isDefinition: true)
!3276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 272, elements: !3159)
!3277 = !DIGlobalVariableExpression(var: !3278, expr: !DIExpression())
!3278 = distinct !DIGlobalVariable(scope: null, file: !3, line: 613, type: !3265, isLocal: true, isDefinition: true)
!3279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 168, elements: !3254)
!3280 = !{i32 7, !"Dwarf Version", i32 5}
!3281 = !{i32 2, !"Debug Info Version", i32 3}
!3282 = !{i32 1, !"wchar_size", i32 2}
!3283 = !{i32 8, !"cf-protection-branch", i32 1}
!3284 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3285 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3286 = !{i32 1, !"Code Model", i32 2}
!3287 = !{i32 1, !"override-stack-alignment", i32 8}
!3288 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3289 = distinct !DISubprogram(name: "acpi_processor_throttling_init", scope: !3, file: !3, line: 192, type: !1176, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3290 = !DILocation(line: 194, column: 6, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 194, column: 6)
!3292 = !DILocation(line: 194, column: 6, scope: !3289)
!3293 = !DILocation(line: 195, column: 3, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !3, line: 195, column: 3)
!3295 = distinct !DILexicalBlock(scope: !3291, file: !3, line: 195, column: 3)
!3296 = !DILocation(line: 195, column: 3, scope: !3295)
!3297 = !DILocation(line: 195, column: 3, scope: !3291)
!3298 = !DILocation(line: 196, column: 1, scope: !3289)
!3299 = distinct !DISubprogram(name: "acpi_processor_update_tsd_coord", scope: !3, file: !3, line: 51, type: !935, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3300)
!3300 = !{!3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3310, !3311, !3313, !3314, !3320, !3322, !3328, !3330, !3336, !3338, !3344, !3346, !3347, !3353}
!3301 = !DILocalVariable(name: "count_target", scope: !3299, file: !3, line: 53, type: !46)
!3302 = !DILocalVariable(name: "retval", scope: !3299, file: !3, line: 54, type: !46)
!3303 = !DILocalVariable(name: "i", scope: !3299, file: !3, line: 55, type: !7)
!3304 = !DILocalVariable(name: "j", scope: !3299, file: !3, line: 55, type: !7)
!3305 = !DILocalVariable(name: "covered_cpus", scope: !3299, file: !3, line: 56, type: !1295)
!3306 = !DILocalVariable(name: "pr", scope: !3299, file: !3, line: 57, type: !1190)
!3307 = !DILocalVariable(name: "match_pr", scope: !3299, file: !3, line: 57, type: !1190)
!3308 = !DILocalVariable(name: "pdomain", scope: !3299, file: !3, line: 58, type: !3309)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!3310 = !DILocalVariable(name: "match_pdomain", scope: !3299, file: !3, line: 58, type: !3309)
!3311 = !DILocalVariable(name: "pthrottling", scope: !3299, file: !3, line: 59, type: !3312)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!3313 = !DILocalVariable(name: "match_pthrottling", scope: !3299, file: !3, line: 59, type: !3312)
!3314 = !DILocalVariable(name: "__vpp_verify", scope: !3315, file: !3, line: 69, type: !514)
!3315 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 69, column: 8)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !3, line: 69, column: 8)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !3, line: 68, column: 27)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !3, line: 68, column: 2)
!3319 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 68, column: 2)
!3320 = !DILocalVariable(name: "__ptr", scope: !3321, file: !3, line: 69, type: !285)
!3321 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 69, column: 8)
!3322 = !DILocalVariable(name: "__vpp_verify", scope: !3323, file: !3, line: 90, type: !514)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !3, line: 90, column: 8)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 90, column: 8)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 89, column: 27)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !3, line: 89, column: 2)
!3327 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 89, column: 2)
!3328 = !DILocalVariable(name: "__ptr", scope: !3329, file: !3, line: 90, type: !285)
!3329 = distinct !DILexicalBlock(scope: !3324, file: !3, line: 90, column: 8)
!3330 = !DILocalVariable(name: "__vpp_verify", scope: !3331, file: !3, line: 115, type: !514)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !3, line: 115, column: 15)
!3332 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 115, column: 15)
!3333 = distinct !DILexicalBlock(scope: !3334, file: !3, line: 111, column: 28)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !3, line: 111, column: 3)
!3335 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 111, column: 3)
!3336 = !DILocalVariable(name: "__ptr", scope: !3337, file: !3, line: 115, type: !285)
!3337 = distinct !DILexicalBlock(scope: !3332, file: !3, line: 115, column: 15)
!3338 = !DILocalVariable(name: "__vpp_verify", scope: !3339, file: !3, line: 147, type: !514)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 147, column: 15)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 147, column: 15)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !3, line: 143, column: 28)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !3, line: 143, column: 3)
!3343 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 143, column: 3)
!3344 = !DILocalVariable(name: "__ptr", scope: !3345, file: !3, line: 147, type: !285)
!3345 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 147, column: 15)
!3346 = !DILabel(scope: !3299, name: "err_ret", file: !3, line: 165)
!3347 = !DILocalVariable(name: "__vpp_verify", scope: !3348, file: !3, line: 169, type: !514)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !3, line: 169, column: 8)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 169, column: 8)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !3, line: 168, column: 27)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 168, column: 2)
!3352 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 168, column: 2)
!3353 = !DILocalVariable(name: "__ptr", scope: !3354, file: !3, line: 169, type: !285)
!3354 = distinct !DILexicalBlock(scope: !3349, file: !3, line: 169, column: 8)
!3355 = !DILocation(line: 53, column: 2, scope: !3299)
!3356 = !DILocation(line: 53, column: 6, scope: !3299)
!3357 = !DILocation(line: 54, column: 2, scope: !3299)
!3358 = !DILocation(line: 54, column: 6, scope: !3299)
!3359 = !DILocation(line: 55, column: 2, scope: !3299)
!3360 = !DILocation(line: 55, column: 15, scope: !3299)
!3361 = !DILocation(line: 55, column: 18, scope: !3299)
!3362 = !DILocation(line: 56, column: 2, scope: !3299)
!3363 = !DILocation(line: 56, column: 16, scope: !3299)
!3364 = !DILocation(line: 57, column: 2, scope: !3299)
!3365 = !DILocation(line: 57, column: 25, scope: !3299)
!3366 = !DILocation(line: 57, column: 30, scope: !3299)
!3367 = !DILocation(line: 58, column: 2, scope: !3299)
!3368 = !DILocation(line: 58, column: 27, scope: !3299)
!3369 = !DILocation(line: 58, column: 37, scope: !3299)
!3370 = !DILocation(line: 59, column: 2, scope: !3299)
!3371 = !DILocation(line: 59, column: 36, scope: !3299)
!3372 = !DILocation(line: 59, column: 50, scope: !3299)
!3373 = !DILocation(line: 61, column: 7, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 61, column: 6)
!3375 = !DILocation(line: 61, column: 6, scope: !3299)
!3376 = !DILocation(line: 62, column: 3, scope: !3374)
!3377 = !DILocation(line: 68, column: 2, scope: !3319)
!3378 = !DILocation(line: 68, column: 2, scope: !3318)
!3379 = !DILocation(line: 69, column: 8, scope: !3316)
!3380 = !DILocation(line: 69, column: 8, scope: !3315)
!3381 = !DILocation(line: 69, column: 8, scope: !3321)
!3382 = !DILocation(line: 69, column: 8, scope: !3317)
!3383 = !DILocation(line: 69, column: 6, scope: !3317)
!3384 = !DILocation(line: 70, column: 8, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3317, file: !3, line: 70, column: 7)
!3386 = !DILocation(line: 70, column: 7, scope: !3317)
!3387 = !DILocation(line: 71, column: 4, scope: !3385)
!3388 = !DILocation(line: 74, column: 19, scope: !3317)
!3389 = !DILocation(line: 74, column: 23, scope: !3317)
!3390 = !DILocation(line: 74, column: 15, scope: !3317)
!3391 = !DILocation(line: 81, column: 8, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3317, file: !3, line: 81, column: 7)
!3393 = !DILocation(line: 81, column: 21, scope: !3392)
!3394 = !DILocation(line: 81, column: 7, scope: !3317)
!3395 = !DILocation(line: 82, column: 11, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 81, column: 37)
!3397 = !DILocation(line: 83, column: 4, scope: !3396)
!3398 = !DILocation(line: 85, column: 2, scope: !3317)
!3399 = distinct !{!3399, !3377, !3400, !3401, !3402}
!3400 = !DILocation(line: 85, column: 2, scope: !3319)
!3401 = !{!"llvm.loop.mustprogress"}
!3402 = !{!"llvm.loop.unroll.disable"}
!3403 = !DILocation(line: 86, column: 6, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 86, column: 6)
!3405 = !DILocation(line: 86, column: 6, scope: !3299)
!3406 = !DILocation(line: 87, column: 3, scope: !3404)
!3407 = !DILocation(line: 89, column: 2, scope: !3327)
!3408 = !DILocation(line: 89, column: 2, scope: !3326)
!3409 = !DILocation(line: 90, column: 8, scope: !3324)
!3410 = !DILocation(line: 90, column: 8, scope: !3323)
!3411 = !DILocation(line: 90, column: 8, scope: !3329)
!3412 = !DILocation(line: 90, column: 8, scope: !3325)
!3413 = !DILocation(line: 90, column: 6, scope: !3325)
!3414 = !DILocation(line: 91, column: 8, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 91, column: 7)
!3416 = !DILocation(line: 91, column: 7, scope: !3325)
!3417 = !DILocation(line: 92, column: 4, scope: !3415)
!3418 = !DILocation(line: 94, column: 24, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 94, column: 7)
!3420 = !DILocation(line: 94, column: 27, scope: !3419)
!3421 = !DILocation(line: 94, column: 7, scope: !3419)
!3422 = !DILocation(line: 94, column: 7, scope: !3325)
!3423 = !DILocation(line: 95, column: 4, scope: !3419)
!3424 = !DILocation(line: 96, column: 18, scope: !3325)
!3425 = !DILocation(line: 96, column: 22, scope: !3325)
!3426 = !DILocation(line: 96, column: 15, scope: !3325)
!3427 = !DILocation(line: 98, column: 15, scope: !3325)
!3428 = !DILocation(line: 98, column: 28, scope: !3325)
!3429 = !DILocation(line: 98, column: 11, scope: !3325)
!3430 = !DILocation(line: 99, column: 19, scope: !3325)
!3431 = !DILocation(line: 99, column: 22, scope: !3325)
!3432 = !DILocation(line: 99, column: 35, scope: !3325)
!3433 = !DILocation(line: 99, column: 3, scope: !3325)
!3434 = !DILocation(line: 100, column: 19, scope: !3325)
!3435 = !DILocation(line: 100, column: 22, scope: !3325)
!3436 = !DILocation(line: 100, column: 3, scope: !3325)
!3437 = !DILocation(line: 105, column: 7, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 105, column: 7)
!3439 = !DILocation(line: 105, column: 16, scope: !3438)
!3440 = !DILocation(line: 105, column: 31, scope: !3438)
!3441 = !DILocation(line: 105, column: 7, scope: !3325)
!3442 = !DILocation(line: 106, column: 4, scope: !3438)
!3443 = !DILocation(line: 109, column: 18, scope: !3325)
!3444 = !DILocation(line: 109, column: 27, scope: !3325)
!3445 = !DILocation(line: 109, column: 16, scope: !3325)
!3446 = !DILocation(line: 111, column: 3, scope: !3335)
!3447 = !DILocation(line: 111, column: 3, scope: !3334)
!3448 = !DILocation(line: 112, column: 8, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 112, column: 8)
!3450 = !DILocation(line: 112, column: 13, scope: !3449)
!3451 = !DILocation(line: 112, column: 10, scope: !3449)
!3452 = !DILocation(line: 112, column: 8, scope: !3333)
!3453 = !DILocation(line: 113, column: 5, scope: !3449)
!3454 = !DILocation(line: 115, column: 15, scope: !3332)
!3455 = !DILocation(line: 115, column: 15, scope: !3331)
!3456 = !DILocation(line: 115, column: 15, scope: !3337)
!3457 = !DILocation(line: 115, column: 15, scope: !3333)
!3458 = !DILocation(line: 115, column: 13, scope: !3333)
!3459 = !DILocation(line: 116, column: 9, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 116, column: 8)
!3461 = !DILocation(line: 116, column: 8, scope: !3333)
!3462 = !DILocation(line: 117, column: 5, scope: !3460)
!3463 = !DILocation(line: 119, column: 26, scope: !3333)
!3464 = !DILocation(line: 119, column: 36, scope: !3333)
!3465 = !DILocation(line: 119, column: 22, scope: !3333)
!3466 = !DILocation(line: 120, column: 22, scope: !3333)
!3467 = !DILocation(line: 120, column: 41, scope: !3333)
!3468 = !DILocation(line: 120, column: 18, scope: !3333)
!3469 = !DILocation(line: 121, column: 8, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 121, column: 8)
!3471 = !DILocation(line: 121, column: 23, scope: !3470)
!3472 = !DILocation(line: 121, column: 33, scope: !3470)
!3473 = !DILocation(line: 121, column: 42, scope: !3470)
!3474 = !DILocation(line: 121, column: 30, scope: !3470)
!3475 = !DILocation(line: 121, column: 8, scope: !3333)
!3476 = !DILocation(line: 122, column: 5, scope: !3470)
!3477 = !DILocation(line: 130, column: 8, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 130, column: 8)
!3479 = !DILocation(line: 130, column: 23, scope: !3478)
!3480 = !DILocation(line: 130, column: 41, scope: !3478)
!3481 = !DILocation(line: 130, column: 38, scope: !3478)
!3482 = !DILocation(line: 130, column: 8, scope: !3333)
!3483 = !DILocation(line: 131, column: 12, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3478, file: !3, line: 130, column: 55)
!3485 = !DILocation(line: 132, column: 5, scope: !3484)
!3486 = !DILocation(line: 135, column: 8, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 135, column: 8)
!3488 = !DILocation(line: 135, column: 17, scope: !3487)
!3489 = !DILocation(line: 135, column: 31, scope: !3487)
!3490 = !DILocation(line: 135, column: 46, scope: !3487)
!3491 = !DILocation(line: 135, column: 28, scope: !3487)
!3492 = !DILocation(line: 135, column: 8, scope: !3333)
!3493 = !DILocation(line: 136, column: 12, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 135, column: 58)
!3495 = !DILocation(line: 137, column: 5, scope: !3494)
!3496 = !DILocation(line: 140, column: 20, scope: !3333)
!3497 = !DILocation(line: 140, column: 23, scope: !3333)
!3498 = !DILocation(line: 140, column: 4, scope: !3333)
!3499 = !DILocation(line: 141, column: 20, scope: !3333)
!3500 = !DILocation(line: 141, column: 23, scope: !3333)
!3501 = !DILocation(line: 141, column: 36, scope: !3333)
!3502 = !DILocation(line: 141, column: 4, scope: !3333)
!3503 = !DILocation(line: 142, column: 3, scope: !3333)
!3504 = distinct !{!3504, !3446, !3505, !3401, !3402}
!3505 = !DILocation(line: 142, column: 3, scope: !3335)
!3506 = !DILocation(line: 143, column: 3, scope: !3343)
!3507 = !DILocation(line: 143, column: 3, scope: !3342)
!3508 = !DILocation(line: 144, column: 8, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 144, column: 8)
!3510 = !DILocation(line: 144, column: 13, scope: !3509)
!3511 = !DILocation(line: 144, column: 10, scope: !3509)
!3512 = !DILocation(line: 144, column: 8, scope: !3341)
!3513 = !DILocation(line: 145, column: 5, scope: !3509)
!3514 = !DILocation(line: 147, column: 15, scope: !3340)
!3515 = !DILocation(line: 147, column: 15, scope: !3339)
!3516 = !DILocation(line: 147, column: 15, scope: !3345)
!3517 = !DILocation(line: 147, column: 15, scope: !3341)
!3518 = !DILocation(line: 147, column: 13, scope: !3341)
!3519 = !DILocation(line: 148, column: 9, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 148, column: 8)
!3521 = !DILocation(line: 148, column: 8, scope: !3341)
!3522 = !DILocation(line: 149, column: 5, scope: !3520)
!3523 = !DILocation(line: 151, column: 26, scope: !3341)
!3524 = !DILocation(line: 151, column: 36, scope: !3341)
!3525 = !DILocation(line: 151, column: 22, scope: !3341)
!3526 = !DILocation(line: 152, column: 22, scope: !3341)
!3527 = !DILocation(line: 152, column: 41, scope: !3341)
!3528 = !DILocation(line: 152, column: 18, scope: !3341)
!3529 = !DILocation(line: 153, column: 8, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 153, column: 8)
!3531 = !DILocation(line: 153, column: 23, scope: !3530)
!3532 = !DILocation(line: 153, column: 33, scope: !3530)
!3533 = !DILocation(line: 153, column: 42, scope: !3530)
!3534 = !DILocation(line: 153, column: 30, scope: !3530)
!3535 = !DILocation(line: 153, column: 8, scope: !3341)
!3536 = !DILocation(line: 154, column: 5, scope: !3530)
!3537 = !DILocation(line: 160, column: 17, scope: !3341)
!3538 = !DILocation(line: 160, column: 36, scope: !3341)
!3539 = !DILocation(line: 161, column: 10, scope: !3341)
!3540 = !DILocation(line: 161, column: 23, scope: !3341)
!3541 = !DILocation(line: 160, column: 4, scope: !3341)
!3542 = !DILocation(line: 162, column: 3, scope: !3341)
!3543 = distinct !{!3543, !3506, !3544, !3401, !3402}
!3544 = !DILocation(line: 162, column: 3, scope: !3343)
!3545 = !DILocation(line: 163, column: 2, scope: !3325)
!3546 = distinct !{!3546, !3407, !3547, !3401, !3402}
!3547 = !DILocation(line: 163, column: 2, scope: !3327)
!3548 = !DILocation(line: 165, column: 1, scope: !3299)
!3549 = !DILocation(line: 166, column: 19, scope: !3299)
!3550 = !DILocation(line: 166, column: 2, scope: !3299)
!3551 = !DILocation(line: 168, column: 2, scope: !3352)
!3552 = !DILocation(line: 168, column: 2, scope: !3351)
!3553 = !DILocation(line: 169, column: 8, scope: !3349)
!3554 = !DILocation(line: 169, column: 8, scope: !3348)
!3555 = !DILocation(line: 169, column: 8, scope: !3354)
!3556 = !DILocation(line: 169, column: 8, scope: !3350)
!3557 = !DILocation(line: 169, column: 6, scope: !3350)
!3558 = !DILocation(line: 170, column: 8, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 170, column: 7)
!3560 = !DILocation(line: 170, column: 7, scope: !3350)
!3561 = !DILocation(line: 171, column: 4, scope: !3559)
!3562 = !DILocation(line: 177, column: 7, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 177, column: 7)
!3564 = !DILocation(line: 177, column: 7, scope: !3350)
!3565 = !DILocation(line: 178, column: 20, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 177, column: 15)
!3567 = !DILocation(line: 178, column: 24, scope: !3566)
!3568 = !DILocation(line: 178, column: 16, scope: !3566)
!3569 = !DILocation(line: 179, column: 18, scope: !3566)
!3570 = !DILocation(line: 179, column: 31, scope: !3566)
!3571 = !DILocation(line: 179, column: 4, scope: !3566)
!3572 = !DILocation(line: 180, column: 20, scope: !3566)
!3573 = !DILocation(line: 180, column: 23, scope: !3566)
!3574 = !DILocation(line: 180, column: 36, scope: !3566)
!3575 = !DILocation(line: 180, column: 4, scope: !3566)
!3576 = !DILocation(line: 181, column: 4, scope: !3566)
!3577 = !DILocation(line: 181, column: 17, scope: !3566)
!3578 = !DILocation(line: 181, column: 29, scope: !3566)
!3579 = !DILocation(line: 182, column: 3, scope: !3566)
!3580 = !DILocation(line: 183, column: 2, scope: !3350)
!3581 = distinct !{!3581, !3551, !3582, !3401, !3402}
!3582 = !DILocation(line: 183, column: 2, scope: !3352)
!3583 = !DILocation(line: 185, column: 9, scope: !3299)
!3584 = !DILocation(line: 185, column: 2, scope: !3299)
!3585 = !DILocation(line: 186, column: 1, scope: !3299)
!3586 = distinct !DISubprogram(name: "acpi_processor_tstate_has_changed", scope: !3, file: !3, line: 288, type: !1326, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3587)
!3587 = !{!3588, !3589, !3590, !3591, !3592, !3594}
!3588 = !DILocalVariable(name: "pr", arg: 1, scope: !3586, file: !3, line: 288, type: !1190)
!3589 = !DILocalVariable(name: "result", scope: !3586, file: !3, line: 290, type: !46)
!3590 = !DILocalVariable(name: "throttling_limit", scope: !3586, file: !3, line: 291, type: !46)
!3591 = !DILocalVariable(name: "current_state", scope: !3586, file: !3, line: 292, type: !46)
!3592 = !DILocalVariable(name: "limit", scope: !3586, file: !3, line: 293, type: !3593)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!3594 = !DILocalVariable(name: "target_state", scope: !3586, file: !3, line: 294, type: !46)
!3595 = !DILocation(line: 288, column: 62, scope: !3586)
!3596 = !DILocation(line: 290, column: 2, scope: !3586)
!3597 = !DILocation(line: 290, column: 6, scope: !3586)
!3598 = !DILocation(line: 291, column: 2, scope: !3586)
!3599 = !DILocation(line: 291, column: 6, scope: !3586)
!3600 = !DILocation(line: 292, column: 2, scope: !3586)
!3601 = !DILocation(line: 292, column: 6, scope: !3586)
!3602 = !DILocation(line: 293, column: 2, scope: !3586)
!3603 = !DILocation(line: 293, column: 31, scope: !3586)
!3604 = !DILocation(line: 294, column: 2, scope: !3586)
!3605 = !DILocation(line: 294, column: 6, scope: !3586)
!3606 = !DILocation(line: 296, column: 6, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 296, column: 6)
!3608 = !DILocation(line: 296, column: 6, scope: !3586)
!3609 = !DILocation(line: 297, column: 3, scope: !3607)
!3610 = !DILocation(line: 299, column: 45, scope: !3586)
!3611 = !DILocation(line: 299, column: 11, scope: !3586)
!3612 = !DILocation(line: 299, column: 9, scope: !3586)
!3613 = !DILocation(line: 300, column: 6, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 300, column: 6)
!3615 = !DILocation(line: 300, column: 6, scope: !3586)
!3616 = !DILocation(line: 302, column: 10, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3614, file: !3, line: 300, column: 14)
!3618 = !DILocation(line: 302, column: 3, scope: !3617)
!3619 = !DILocation(line: 305, column: 21, scope: !3586)
!3620 = !DILocation(line: 305, column: 25, scope: !3586)
!3621 = !DILocation(line: 305, column: 19, scope: !3586)
!3622 = !DILocation(line: 306, column: 6, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 306, column: 6)
!3624 = !DILocation(line: 306, column: 26, scope: !3623)
!3625 = !DILocation(line: 306, column: 30, scope: !3623)
!3626 = !DILocation(line: 306, column: 41, scope: !3623)
!3627 = !DILocation(line: 306, column: 23, scope: !3623)
!3628 = !DILocation(line: 306, column: 6, scope: !3586)
!3629 = !DILocation(line: 308, column: 3, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 306, column: 54)
!3631 = !DILocation(line: 311, column: 18, scope: !3586)
!3632 = !DILocation(line: 311, column: 22, scope: !3586)
!3633 = !DILocation(line: 311, column: 33, scope: !3586)
!3634 = !DILocation(line: 311, column: 16, scope: !3586)
!3635 = !DILocation(line: 312, column: 6, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 312, column: 6)
!3637 = !DILocation(line: 312, column: 22, scope: !3636)
!3638 = !DILocation(line: 312, column: 20, scope: !3636)
!3639 = !DILocation(line: 312, column: 6, scope: !3586)
!3640 = !DILocation(line: 320, column: 12, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3636, file: !3, line: 312, column: 40)
!3642 = !DILocation(line: 320, column: 16, scope: !3641)
!3643 = !DILocation(line: 320, column: 9, scope: !3641)
!3644 = !DILocation(line: 321, column: 18, scope: !3641)
!3645 = !DILocation(line: 321, column: 16, scope: !3641)
!3646 = !DILocation(line: 322, column: 7, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3641, file: !3, line: 322, column: 7)
!3648 = !DILocation(line: 322, column: 14, scope: !3647)
!3649 = !DILocation(line: 322, column: 22, scope: !3647)
!3650 = !DILocation(line: 322, column: 27, scope: !3647)
!3651 = !DILocation(line: 322, column: 25, scope: !3647)
!3652 = !DILocation(line: 322, column: 7, scope: !3641)
!3653 = !DILocation(line: 323, column: 19, scope: !3647)
!3654 = !DILocation(line: 323, column: 26, scope: !3647)
!3655 = !DILocation(line: 323, column: 34, scope: !3647)
!3656 = !DILocation(line: 323, column: 17, scope: !3647)
!3657 = !DILocation(line: 323, column: 4, scope: !3647)
!3658 = !DILocation(line: 324, column: 7, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3641, file: !3, line: 324, column: 7)
!3660 = !DILocation(line: 324, column: 14, scope: !3659)
!3661 = !DILocation(line: 324, column: 19, scope: !3659)
!3662 = !DILocation(line: 324, column: 24, scope: !3659)
!3663 = !DILocation(line: 324, column: 22, scope: !3659)
!3664 = !DILocation(line: 324, column: 7, scope: !3641)
!3665 = !DILocation(line: 325, column: 19, scope: !3659)
!3666 = !DILocation(line: 325, column: 26, scope: !3659)
!3667 = !DILocation(line: 325, column: 31, scope: !3659)
!3668 = !DILocation(line: 325, column: 17, scope: !3659)
!3669 = !DILocation(line: 325, column: 4, scope: !3659)
!3670 = !DILocation(line: 326, column: 2, scope: !3641)
!3671 = !DILocation(line: 326, column: 13, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3636, file: !3, line: 326, column: 13)
!3673 = !DILocation(line: 326, column: 30, scope: !3672)
!3674 = !DILocation(line: 326, column: 27, scope: !3672)
!3675 = !DILocation(line: 326, column: 13, scope: !3636)
!3676 = !DILocation(line: 330, column: 3, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 326, column: 48)
!3678 = !DILocation(line: 339, column: 18, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 331, column: 9)
!3680 = !DILocation(line: 339, column: 16, scope: !3679)
!3681 = !DILocation(line: 341, column: 39, scope: !3586)
!3682 = !DILocation(line: 341, column: 43, scope: !3586)
!3683 = !DILocation(line: 341, column: 9, scope: !3586)
!3684 = !DILocation(line: 341, column: 2, scope: !3586)
!3685 = !DILocation(line: 342, column: 1, scope: !3586)
!3686 = distinct !DISubprogram(name: "acpi_processor_get_platform_limit", scope: !3, file: !3, line: 264, type: !1326, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3687)
!3687 = !{!3688, !3689, !3690, !3691}
!3688 = !DILocalVariable(name: "pr", arg: 1, scope: !3686, file: !3, line: 264, type: !1190)
!3689 = !DILocalVariable(name: "status", scope: !3686, file: !3, line: 266, type: !2036)
!3690 = !DILocalVariable(name: "tpc", scope: !3686, file: !3, line: 267, type: !401)
!3691 = !DILabel(scope: !3686, name: "end", file: !3, line: 283)
!3692 = !DILocation(line: 264, column: 69, scope: !3686)
!3693 = !DILocation(line: 266, column: 2, scope: !3686)
!3694 = !DILocation(line: 266, column: 14, scope: !3686)
!3695 = !DILocation(line: 267, column: 2, scope: !3686)
!3696 = !DILocation(line: 267, column: 21, scope: !3686)
!3697 = !DILocation(line: 269, column: 7, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 269, column: 6)
!3699 = !DILocation(line: 269, column: 6, scope: !3686)
!3700 = !DILocation(line: 270, column: 3, scope: !3698)
!3701 = !DILocation(line: 272, column: 6, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 272, column: 6)
!3703 = !DILocation(line: 272, column: 6, scope: !3686)
!3704 = !DILocation(line: 273, column: 3, scope: !3702)
!3705 = !DILocation(line: 275, column: 33, scope: !3686)
!3706 = !DILocation(line: 275, column: 37, scope: !3686)
!3707 = !DILocation(line: 275, column: 11, scope: !3686)
!3708 = !DILocation(line: 275, column: 9, scope: !3686)
!3709 = !DILocation(line: 276, column: 6, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 276, column: 6)
!3711 = !DILocation(line: 276, column: 6, scope: !3686)
!3712 = !DILocation(line: 277, column: 7, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 277, column: 7)
!3714 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 276, column: 28)
!3715 = !DILocation(line: 277, column: 14, scope: !3713)
!3716 = !DILocation(line: 277, column: 7, scope: !3714)
!3717 = !DILocation(line: 278, column: 33, scope: !3713)
!3718 = !DILocation(line: 278, column: 37, scope: !3713)
!3719 = !DILocation(line: 278, column: 53, scope: !3713)
!3720 = !DILocation(line: 278, column: 4, scope: !3713)
!3721 = !DILocation(line: 280, column: 3, scope: !3714)
!3722 = !DILocation(line: 283, column: 1, scope: !3686)
!3723 = !DILocation(line: 284, column: 39, scope: !3686)
!3724 = !DILocation(line: 284, column: 34, scope: !3686)
!3725 = !DILocation(line: 284, column: 2, scope: !3686)
!3726 = !DILocation(line: 284, column: 6, scope: !3686)
!3727 = !DILocation(line: 284, column: 32, scope: !3686)
!3728 = !DILocation(line: 285, column: 2, scope: !3686)
!3729 = !DILocation(line: 286, column: 1, scope: !3686)
!3730 = distinct !DISubprogram(name: "acpi_processor_set_throttling", scope: !3, file: !3, line: 1153, type: !1330, scopeLine: 1155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3731)
!3731 = !{!3732, !3733, !3734}
!3732 = !DILocalVariable(name: "pr", arg: 1, scope: !3730, file: !3, line: 1153, type: !1190)
!3733 = !DILocalVariable(name: "state", arg: 2, scope: !3730, file: !3, line: 1153, type: !46)
!3734 = !DILocalVariable(name: "force", arg: 3, scope: !3730, file: !3, line: 1154, type: !592)
!3735 = !DILocation(line: 1153, column: 58, scope: !3730)
!3736 = !DILocation(line: 1153, column: 66, scope: !3730)
!3737 = !DILocation(line: 1154, column: 12, scope: !3730)
!3738 = !DILocation(line: 1156, column: 41, scope: !3730)
!3739 = !DILocation(line: 1156, column: 45, scope: !3730)
!3740 = !DILocation(line: 1156, column: 52, scope: !3730)
!3741 = !{i8 0, i8 2}
!3742 = !DILocation(line: 1156, column: 9, scope: !3730)
!3743 = !DILocation(line: 1156, column: 2, scope: !3730)
!3744 = distinct !DISubprogram(name: "acpi_processor_reevaluate_tstate", scope: !3, file: !3, line: 353, type: !3745, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3747)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{null, !1190, !592}
!3747 = !{!3748, !3749, !3750, !3751}
!3748 = !DILocalVariable(name: "pr", arg: 1, scope: !3744, file: !3, line: 353, type: !1190)
!3749 = !DILocalVariable(name: "is_dead", arg: 2, scope: !3744, file: !3, line: 354, type: !592)
!3750 = !DILocalVariable(name: "result", scope: !3744, file: !3, line: 356, type: !46)
!3751 = !DILabel(scope: !3744, name: "end", file: !3, line: 392)
!3752 = !DILocation(line: 353, column: 62, scope: !3744)
!3753 = !DILocation(line: 354, column: 11, scope: !3744)
!3754 = !DILocation(line: 356, column: 2, scope: !3744)
!3755 = !DILocation(line: 356, column: 6, scope: !3744)
!3756 = !DILocation(line: 358, column: 6, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3744, file: !3, line: 358, column: 6)
!3758 = !DILocation(line: 358, column: 6, scope: !3744)
!3759 = !DILocation(line: 362, column: 3, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3757, file: !3, line: 358, column: 15)
!3761 = !DILocation(line: 362, column: 7, scope: !3760)
!3762 = !DILocation(line: 362, column: 24, scope: !3760)
!3763 = !DILocation(line: 363, column: 3, scope: !3760)
!3764 = !DILocation(line: 368, column: 7, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3744, file: !3, line: 368, column: 6)
!3766 = !DILocation(line: 368, column: 11, scope: !3765)
!3767 = !DILocation(line: 368, column: 22, scope: !3765)
!3768 = !DILocation(line: 368, column: 6, scope: !3744)
!3769 = !DILocation(line: 372, column: 3, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3765, file: !3, line: 368, column: 35)
!3771 = !DILocation(line: 372, column: 7, scope: !3770)
!3772 = !DILocation(line: 372, column: 24, scope: !3770)
!3773 = !DILocation(line: 373, column: 3, scope: !3770)
!3774 = !DILocation(line: 375, column: 2, scope: !3744)
!3775 = !DILocation(line: 375, column: 6, scope: !3744)
!3776 = !DILocation(line: 375, column: 23, scope: !3744)
!3777 = !DILocation(line: 382, column: 41, scope: !3744)
!3778 = !DILocation(line: 382, column: 11, scope: !3744)
!3779 = !DILocation(line: 382, column: 9, scope: !3744)
!3780 = !DILocation(line: 383, column: 6, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3744, file: !3, line: 383, column: 6)
!3782 = !DILocation(line: 383, column: 6, scope: !3744)
!3783 = !DILocation(line: 384, column: 3, scope: !3781)
!3784 = !DILocation(line: 386, column: 6, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3744, file: !3, line: 386, column: 6)
!3786 = !DILocation(line: 386, column: 10, scope: !3785)
!3787 = !DILocation(line: 386, column: 21, scope: !3785)
!3788 = !DILocation(line: 386, column: 6, scope: !3744)
!3789 = !DILocation(line: 387, column: 42, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3785, file: !3, line: 386, column: 28)
!3791 = !DILocation(line: 387, column: 12, scope: !3790)
!3792 = !DILocation(line: 387, column: 10, scope: !3790)
!3793 = !DILocation(line: 388, column: 7, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3790, file: !3, line: 388, column: 7)
!3795 = !DILocation(line: 388, column: 7, scope: !3790)
!3796 = !DILocation(line: 389, column: 4, scope: !3794)
!3797 = !DILocation(line: 390, column: 2, scope: !3790)
!3798 = !DILocation(line: 392, column: 1, scope: !3744)
!3799 = !DILocation(line: 393, column: 6, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3744, file: !3, line: 393, column: 6)
!3801 = !DILocation(line: 393, column: 6, scope: !3744)
!3802 = !DILocation(line: 394, column: 3, scope: !3800)
!3803 = !DILocation(line: 394, column: 7, scope: !3800)
!3804 = !DILocation(line: 394, column: 24, scope: !3800)
!3805 = !DILocation(line: 395, column: 1, scope: !3744)
!3806 = distinct !DISubprogram(name: "acpi_processor_get_throttling", scope: !3, file: !3, line: 884, type: !1326, scopeLine: 885, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3807)
!3807 = !{!3808}
!3808 = !DILocalVariable(name: "pr", arg: 1, scope: !3806, file: !3, line: 884, type: !1190)
!3809 = !DILocation(line: 884, column: 65, scope: !3806)
!3810 = !DILocation(line: 886, column: 7, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 886, column: 6)
!3812 = !DILocation(line: 886, column: 6, scope: !3806)
!3813 = !DILocation(line: 887, column: 3, scope: !3811)
!3814 = !DILocation(line: 889, column: 7, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 889, column: 6)
!3816 = !DILocation(line: 889, column: 11, scope: !3815)
!3817 = !DILocation(line: 889, column: 17, scope: !3815)
!3818 = !DILocation(line: 889, column: 6, scope: !3806)
!3819 = !DILocation(line: 890, column: 3, scope: !3815)
!3820 = !DILocation(line: 898, column: 18, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 898, column: 6)
!3822 = !DILocation(line: 898, column: 22, scope: !3821)
!3823 = !DILocation(line: 898, column: 7, scope: !3821)
!3824 = !DILocation(line: 898, column: 6, scope: !3806)
!3825 = !DILocation(line: 899, column: 3, scope: !3821)
!3826 = !DILocation(line: 901, column: 21, scope: !3806)
!3827 = !DILocation(line: 901, column: 25, scope: !3806)
!3828 = !DILocation(line: 901, column: 62, scope: !3806)
!3829 = !DILocation(line: 901, column: 9, scope: !3806)
!3830 = !DILocation(line: 901, column: 2, scope: !3806)
!3831 = !DILocation(line: 902, column: 1, scope: !3806)
!3832 = distinct !DISubprogram(name: "__acpi_processor_set_throttling", scope: !3, file: !3, line: 1051, type: !3833, scopeLine: 1053, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3835)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!46, !1190, !46, !592, !592}
!3835 = !{!3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3850, !3855, !3863}
!3836 = !DILocalVariable(name: "pr", arg: 1, scope: !3832, file: !3, line: 1051, type: !1190)
!3837 = !DILocalVariable(name: "state", arg: 2, scope: !3832, file: !3, line: 1052, type: !46)
!3838 = !DILocalVariable(name: "force", arg: 3, scope: !3832, file: !3, line: 1052, type: !592)
!3839 = !DILocalVariable(name: "direct", arg: 4, scope: !3832, file: !3, line: 1052, type: !592)
!3840 = !DILocalVariable(name: "ret", scope: !3832, file: !3, line: 1054, type: !46)
!3841 = !DILocalVariable(name: "i", scope: !3832, file: !3, line: 1055, type: !7)
!3842 = !DILocalVariable(name: "match_pr", scope: !3832, file: !3, line: 1056, type: !1190)
!3843 = !DILocalVariable(name: "p_throttling", scope: !3832, file: !3, line: 1057, type: !3312)
!3844 = !DILocalVariable(name: "arg", scope: !3832, file: !3, line: 1058, type: !3845)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_throttling_arg", file: !3, line: 38, size: 128, elements: !3846)
!3846 = !{!3847, !3848, !3849}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "pr", scope: !3845, file: !3, line: 39, baseType: !1190, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "target_state", scope: !3845, file: !3, line: 40, baseType: !46, size: 32, offset: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !3845, file: !3, line: 41, baseType: !592, size: 8, offset: 96)
!3850 = !DILocalVariable(name: "t_state", scope: !3832, file: !3, line: 1059, type: !3851)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "throttling_tstate", file: !3, line: 33, size: 64, elements: !3852)
!3852 = !{!3853, !3854}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3851, file: !3, line: 34, baseType: !7, size: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "target_state", scope: !3851, file: !3, line: 35, baseType: !46, size: 32, offset: 32)
!3855 = !DILocalVariable(name: "__vpp_verify", scope: !3856, file: !3, line: 1111, type: !514)
!3856 = distinct !DILexicalBlock(scope: !3857, file: !3, line: 1111, column: 15)
!3857 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 1111, column: 15)
!3858 = distinct !DILexicalBlock(scope: !3859, file: !3, line: 1110, column: 37)
!3859 = distinct !DILexicalBlock(scope: !3860, file: !3, line: 1109, column: 3)
!3860 = distinct !DILexicalBlock(scope: !3861, file: !3, line: 1109, column: 3)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !3, line: 1103, column: 9)
!3862 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1097, column: 6)
!3863 = !DILocalVariable(name: "__ptr", scope: !3864, file: !3, line: 1111, type: !285)
!3864 = distinct !DILexicalBlock(scope: !3857, file: !3, line: 1111, column: 15)
!3865 = !DILocation(line: 1051, column: 67, scope: !3832)
!3866 = !DILocation(line: 1052, column: 13, scope: !3832)
!3867 = !DILocation(line: 1052, column: 25, scope: !3832)
!3868 = !DILocation(line: 1052, column: 37, scope: !3832)
!3869 = !DILocation(line: 1054, column: 2, scope: !3832)
!3870 = !DILocation(line: 1054, column: 6, scope: !3832)
!3871 = !DILocation(line: 1055, column: 2, scope: !3832)
!3872 = !DILocation(line: 1055, column: 15, scope: !3832)
!3873 = !DILocation(line: 1056, column: 2, scope: !3832)
!3874 = !DILocation(line: 1056, column: 25, scope: !3832)
!3875 = !DILocation(line: 1057, column: 2, scope: !3832)
!3876 = !DILocation(line: 1057, column: 36, scope: !3832)
!3877 = !DILocation(line: 1058, column: 2, scope: !3832)
!3878 = !DILocation(line: 1058, column: 39, scope: !3832)
!3879 = !DILocation(line: 1059, column: 2, scope: !3832)
!3880 = !DILocation(line: 1059, column: 27, scope: !3832)
!3881 = !DILocation(line: 1061, column: 7, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1061, column: 6)
!3883 = !DILocation(line: 1061, column: 6, scope: !3832)
!3884 = !DILocation(line: 1062, column: 3, scope: !3882)
!3885 = !DILocation(line: 1064, column: 7, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1064, column: 6)
!3887 = !DILocation(line: 1064, column: 11, scope: !3886)
!3888 = !DILocation(line: 1064, column: 17, scope: !3886)
!3889 = !DILocation(line: 1064, column: 6, scope: !3832)
!3890 = !DILocation(line: 1065, column: 3, scope: !3886)
!3891 = !DILocation(line: 1067, column: 7, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1067, column: 6)
!3893 = !DILocation(line: 1067, column: 13, scope: !3892)
!3894 = !DILocation(line: 1067, column: 18, scope: !3892)
!3895 = !DILocation(line: 1067, column: 22, scope: !3892)
!3896 = !DILocation(line: 1067, column: 31, scope: !3892)
!3897 = !DILocation(line: 1067, column: 35, scope: !3892)
!3898 = !DILocation(line: 1067, column: 46, scope: !3892)
!3899 = !DILocation(line: 1067, column: 58, scope: !3892)
!3900 = !DILocation(line: 1067, column: 28, scope: !3892)
!3901 = !DILocation(line: 1067, column: 6, scope: !3832)
!3902 = !DILocation(line: 1068, column: 3, scope: !3892)
!3903 = !DILocation(line: 1070, column: 6, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1070, column: 6)
!3905 = !DILocation(line: 1070, column: 6, scope: !3832)
!3906 = !DILocation(line: 1075, column: 3, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 1070, column: 30)
!3908 = !DILocation(line: 1078, column: 25, scope: !3832)
!3909 = !DILocation(line: 1078, column: 10, scope: !3832)
!3910 = !DILocation(line: 1078, column: 23, scope: !3832)
!3911 = !DILocation(line: 1079, column: 19, scope: !3832)
!3912 = !DILocation(line: 1079, column: 23, scope: !3832)
!3913 = !DILocation(line: 1079, column: 15, scope: !3832)
!3914 = !DILocation(line: 1086, column: 2, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1086, column: 2)
!3916 = !DILocation(line: 1086, column: 2, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3915, file: !3, line: 1086, column: 2)
!3918 = !DILocation(line: 1087, column: 17, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 1086, column: 69)
!3920 = !DILocation(line: 1087, column: 11, scope: !3919)
!3921 = !DILocation(line: 1087, column: 15, scope: !3919)
!3922 = !DILocation(line: 1088, column: 3, scope: !3919)
!3923 = !DILocation(line: 1090, column: 2, scope: !3919)
!3924 = distinct !{!3924, !3914, !3925, !3401, !3402}
!3925 = !DILocation(line: 1090, column: 2, scope: !3915)
!3926 = !DILocation(line: 1097, column: 6, scope: !3862)
!3927 = !DILocation(line: 1097, column: 20, scope: !3862)
!3928 = !DILocation(line: 1097, column: 32, scope: !3862)
!3929 = !DILocation(line: 1097, column: 6, scope: !3832)
!3930 = !DILocation(line: 1098, column: 12, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3862, file: !3, line: 1097, column: 61)
!3932 = !DILocation(line: 1098, column: 7, scope: !3931)
!3933 = !DILocation(line: 1098, column: 10, scope: !3931)
!3934 = !DILocation(line: 1099, column: 22, scope: !3931)
!3935 = !DILocation(line: 1099, column: 7, scope: !3931)
!3936 = !DILocation(line: 1099, column: 20, scope: !3931)
!3937 = !DILocation(line: 1100, column: 15, scope: !3931)
!3938 = !DILocation(line: 1100, column: 7, scope: !3931)
!3939 = !DILocation(line: 1100, column: 13, scope: !3931)
!3940 = !DILocation(line: 1101, column: 21, scope: !3931)
!3941 = !DILocation(line: 1101, column: 25, scope: !3931)
!3942 = !DILocation(line: 1102, column: 7, scope: !3931)
!3943 = !DILocation(line: 1101, column: 9, scope: !3931)
!3944 = !DILocation(line: 1101, column: 7, scope: !3931)
!3945 = !DILocation(line: 1103, column: 2, scope: !3931)
!3946 = !DILocation(line: 1109, column: 3, scope: !3860)
!3947 = !DILocation(line: 1109, column: 3, scope: !3859)
!3948 = !DILocation(line: 1111, column: 15, scope: !3857)
!3949 = !DILocation(line: 1111, column: 15, scope: !3856)
!3950 = !DILocation(line: 1111, column: 15, scope: !3864)
!3951 = !DILocation(line: 1111, column: 15, scope: !3858)
!3952 = !DILocation(line: 1111, column: 13, scope: !3858)
!3953 = !DILocation(line: 1116, column: 9, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 1116, column: 8)
!3955 = !DILocation(line: 1116, column: 8, scope: !3858)
!3956 = !DILocation(line: 1117, column: 5, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3958, file: !3, line: 1117, column: 5)
!3958 = distinct !DILexicalBlock(scope: !3959, file: !3, line: 1117, column: 5)
!3959 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 1116, column: 19)
!3960 = !DILocation(line: 1117, column: 5, scope: !3958)
!3961 = !DILocation(line: 1119, column: 5, scope: !3959)
!3962 = !DILocation(line: 1125, column: 9, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 1125, column: 8)
!3964 = !DILocation(line: 1125, column: 19, scope: !3963)
!3965 = !DILocation(line: 1125, column: 25, scope: !3963)
!3966 = !DILocation(line: 1125, column: 8, scope: !3858)
!3967 = !DILocation(line: 1126, column: 5, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 1126, column: 5)
!3969 = distinct !DILexicalBlock(scope: !3970, file: !3, line: 1126, column: 5)
!3970 = distinct !DILexicalBlock(scope: !3963, file: !3, line: 1125, column: 37)
!3971 = !DILocation(line: 1126, column: 5, scope: !3969)
!3972 = !DILocation(line: 1128, column: 5, scope: !3970)
!3973 = !DILocation(line: 1131, column: 13, scope: !3858)
!3974 = !DILocation(line: 1131, column: 8, scope: !3858)
!3975 = !DILocation(line: 1131, column: 11, scope: !3858)
!3976 = !DILocation(line: 1132, column: 23, scope: !3858)
!3977 = !DILocation(line: 1132, column: 8, scope: !3858)
!3978 = !DILocation(line: 1132, column: 21, scope: !3858)
!3979 = !DILocation(line: 1133, column: 16, scope: !3858)
!3980 = !DILocation(line: 1133, column: 8, scope: !3858)
!3981 = !DILocation(line: 1133, column: 14, scope: !3858)
!3982 = !DILocation(line: 1134, column: 22, scope: !3858)
!3983 = !DILocation(line: 1134, column: 26, scope: !3858)
!3984 = !DILocation(line: 1135, column: 14, scope: !3858)
!3985 = !DILocation(line: 1134, column: 10, scope: !3858)
!3986 = !DILocation(line: 1134, column: 8, scope: !3858)
!3987 = !DILocation(line: 1136, column: 3, scope: !3858)
!3988 = distinct !{!3988, !3946, !3989, !3401, !3402}
!3989 = !DILocation(line: 1136, column: 3, scope: !3860)
!3990 = !DILocation(line: 1144, column: 2, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1144, column: 2)
!3992 = !DILocation(line: 1144, column: 2, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3991, file: !3, line: 1144, column: 2)
!3994 = !DILocation(line: 1145, column: 17, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3993, file: !3, line: 1144, column: 69)
!3996 = !DILocation(line: 1145, column: 11, scope: !3995)
!3997 = !DILocation(line: 1145, column: 15, scope: !3995)
!3998 = !DILocation(line: 1146, column: 3, scope: !3995)
!3999 = !DILocation(line: 1148, column: 2, scope: !3995)
!4000 = distinct !{!4000, !3990, !4001, !3401, !3402}
!4001 = !DILocation(line: 1148, column: 2, scope: !3991)
!4002 = !DILocation(line: 1150, column: 9, scope: !3832)
!4003 = !DILocation(line: 1150, column: 2, scope: !3832)
!4004 = !DILocation(line: 1151, column: 1, scope: !3832)
!4005 = distinct !DISubprogram(name: "acpi_processor_get_throttling_info", scope: !3, file: !3, line: 1159, type: !1326, scopeLine: 1160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4006)
!4006 = !{!4007, !4008, !4009, !4010}
!4007 = !DILocalVariable(name: "pr", arg: 1, scope: !4005, file: !3, line: 1159, type: !1190)
!4008 = !DILocalVariable(name: "result", scope: !4005, file: !3, line: 1161, type: !46)
!4009 = !DILocalVariable(name: "pthrottling", scope: !4005, file: !3, line: 1162, type: !3312)
!4010 = !DILabel(scope: !4005, name: "end", file: !3, line: 1236)
!4011 = !DILocation(line: 1159, column: 63, scope: !4005)
!4012 = !DILocation(line: 1161, column: 2, scope: !4005)
!4013 = !DILocation(line: 1161, column: 6, scope: !4005)
!4014 = !DILocation(line: 1162, column: 2, scope: !4005)
!4015 = !DILocation(line: 1162, column: 36, scope: !4005)
!4016 = !DILocation(line: 1164, column: 2, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 1164, column: 2)
!4018 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 1164, column: 2)
!4019 = !DILocation(line: 1164, column: 2, scope: !4018)
!4020 = !DILocation(line: 1174, column: 44, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 1174, column: 6)
!4022 = !DILocation(line: 1174, column: 6, scope: !4021)
!4023 = !DILocation(line: 1174, column: 48, scope: !4021)
!4024 = !DILocation(line: 1175, column: 40, scope: !4021)
!4025 = !DILocation(line: 1175, column: 3, scope: !4021)
!4026 = !DILocation(line: 1175, column: 44, scope: !4021)
!4027 = !DILocation(line: 1176, column: 37, scope: !4021)
!4028 = !DILocation(line: 1176, column: 3, scope: !4021)
!4029 = !DILocation(line: 1174, column: 6, scope: !4005)
!4030 = !DILocation(line: 1177, column: 3, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4021, file: !3, line: 1176, column: 42)
!4032 = !DILocation(line: 1177, column: 7, scope: !4031)
!4033 = !DILocation(line: 1177, column: 18, scope: !4031)
!4034 = !DILocation(line: 1177, column: 48, scope: !4031)
!4035 = !DILocation(line: 1179, column: 3, scope: !4031)
!4036 = !DILocation(line: 1179, column: 7, scope: !4031)
!4037 = !DILocation(line: 1179, column: 18, scope: !4031)
!4038 = !DILocation(line: 1179, column: 48, scope: !4031)
!4039 = !DILocation(line: 1181, column: 36, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 1181, column: 7)
!4041 = !DILocation(line: 1181, column: 7, scope: !4040)
!4042 = !DILocation(line: 1181, column: 7, scope: !4031)
!4043 = !DILocation(line: 1182, column: 4, scope: !4040)
!4044 = !DILocation(line: 1183, column: 2, scope: !4031)
!4045 = !DILocation(line: 1184, column: 3, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4021, file: !3, line: 1183, column: 9)
!4047 = !DILocation(line: 1184, column: 7, scope: !4046)
!4048 = !DILocation(line: 1184, column: 18, scope: !4046)
!4049 = !DILocation(line: 1184, column: 48, scope: !4046)
!4050 = !DILocation(line: 1186, column: 3, scope: !4046)
!4051 = !DILocation(line: 1186, column: 7, scope: !4046)
!4052 = !DILocation(line: 1186, column: 18, scope: !4046)
!4053 = !DILocation(line: 1186, column: 48, scope: !4046)
!4054 = !DILocation(line: 1194, column: 29, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 1194, column: 6)
!4056 = !DILocation(line: 1194, column: 6, scope: !4055)
!4057 = !DILocation(line: 1194, column: 6, scope: !4005)
!4058 = !DILocation(line: 1195, column: 18, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4055, file: !3, line: 1194, column: 34)
!4060 = !DILocation(line: 1195, column: 22, scope: !4059)
!4061 = !DILocation(line: 1195, column: 15, scope: !4059)
!4062 = !DILocation(line: 1196, column: 3, scope: !4059)
!4063 = !DILocation(line: 1196, column: 16, scope: !4059)
!4064 = !DILocation(line: 1196, column: 31, scope: !4059)
!4065 = !DILocation(line: 1197, column: 19, scope: !4059)
!4066 = !DILocation(line: 1197, column: 23, scope: !4059)
!4067 = !DILocation(line: 1197, column: 27, scope: !4059)
!4068 = !DILocation(line: 1197, column: 40, scope: !4059)
!4069 = !DILocation(line: 1197, column: 3, scope: !4059)
!4070 = !DILocation(line: 1198, column: 3, scope: !4059)
!4071 = !DILocation(line: 1198, column: 16, scope: !4059)
!4072 = !DILocation(line: 1198, column: 28, scope: !4059)
!4073 = !DILocation(line: 1199, column: 2, scope: !4059)
!4074 = !DILocation(line: 1206, column: 19, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 1206, column: 6)
!4076 = !DILocation(line: 1206, column: 6, scope: !4075)
!4077 = !DILocation(line: 1206, column: 6, scope: !4005)
!4078 = !DILocation(line: 1207, column: 3, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4080, file: !3, line: 1207, column: 3)
!4080 = distinct !DILexicalBlock(scope: !4081, file: !3, line: 1207, column: 3)
!4081 = distinct !DILexicalBlock(scope: !4075, file: !3, line: 1206, column: 29)
!4082 = !DILocation(line: 1207, column: 3, scope: !4080)
!4083 = !DILocation(line: 1209, column: 3, scope: !4081)
!4084 = !DILocation(line: 1212, column: 2, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4086, file: !3, line: 1212, column: 2)
!4086 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 1212, column: 2)
!4087 = !DILocation(line: 1212, column: 2, scope: !4086)
!4088 = !DILocation(line: 1215, column: 2, scope: !4005)
!4089 = !DILocation(line: 1215, column: 6, scope: !4005)
!4090 = !DILocation(line: 1215, column: 23, scope: !4005)
!4091 = !DILocation(line: 1223, column: 41, scope: !4005)
!4092 = !DILocation(line: 1223, column: 11, scope: !4005)
!4093 = !DILocation(line: 1223, column: 9, scope: !4005)
!4094 = !DILocation(line: 1224, column: 6, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 1224, column: 6)
!4096 = !DILocation(line: 1224, column: 6, scope: !4005)
!4097 = !DILocation(line: 1225, column: 3, scope: !4095)
!4098 = !DILocation(line: 1227, column: 6, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 1227, column: 6)
!4100 = !DILocation(line: 1227, column: 10, scope: !4099)
!4101 = !DILocation(line: 1227, column: 21, scope: !4099)
!4102 = !DILocation(line: 1227, column: 6, scope: !4005)
!4103 = !DILocation(line: 1228, column: 3, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4105, file: !3, line: 1228, column: 3)
!4105 = distinct !DILexicalBlock(scope: !4106, file: !3, line: 1228, column: 3)
!4106 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 1227, column: 28)
!4107 = !DILocation(line: 1228, column: 3, scope: !4105)
!4108 = !DILocation(line: 1231, column: 42, scope: !4106)
!4109 = !DILocation(line: 1231, column: 12, scope: !4106)
!4110 = !DILocation(line: 1231, column: 10, scope: !4106)
!4111 = !DILocation(line: 1232, column: 7, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4106, file: !3, line: 1232, column: 7)
!4113 = !DILocation(line: 1232, column: 7, scope: !4106)
!4114 = !DILocation(line: 1233, column: 4, scope: !4112)
!4115 = !DILocation(line: 1234, column: 2, scope: !4106)
!4116 = !DILocation(line: 1236, column: 1, scope: !4005)
!4117 = !DILocation(line: 1237, column: 6, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 1237, column: 6)
!4119 = !DILocation(line: 1237, column: 6, scope: !4005)
!4120 = !DILocation(line: 1238, column: 3, scope: !4118)
!4121 = !DILocation(line: 1238, column: 7, scope: !4118)
!4122 = !DILocation(line: 1238, column: 24, scope: !4118)
!4123 = !DILocation(line: 1240, column: 9, scope: !4005)
!4124 = !DILocation(line: 1240, column: 2, scope: !4005)
!4125 = !DILocation(line: 1241, column: 1, scope: !4005)
!4126 = distinct !DISubprogram(name: "acpi_processor_get_throttling_control", scope: !3, file: !3, line: 399, type: !1326, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4127)
!4127 = !{!4128, !4129, !4130, !4131, !4136, !4137, !4138, !4139}
!4128 = !DILocalVariable(name: "pr", arg: 1, scope: !4126, file: !3, line: 399, type: !1190)
!4129 = !DILocalVariable(name: "result", scope: !4126, file: !3, line: 401, type: !46)
!4130 = !DILocalVariable(name: "status", scope: !4126, file: !3, line: 402, type: !2036)
!4131 = !DILocalVariable(name: "buffer", scope: !4126, file: !3, line: 403, type: !4132)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !1196, line: 978, size: 128, elements: !4133)
!4133 = !{!4134, !4135}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4132, file: !1196, line: 979, baseType: !3098, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4132, file: !1196, line: 980, baseType: !307, size: 64, offset: 64)
!4136 = !DILocalVariable(name: "ptc", scope: !4126, file: !3, line: 404, type: !3099)
!4137 = !DILocalVariable(name: "obj", scope: !4126, file: !3, line: 405, type: !3100)
!4138 = !DILocalVariable(name: "throttling", scope: !4126, file: !3, line: 406, type: !3312)
!4139 = !DILabel(scope: !4126, name: "end", file: !3, line: 473)
!4140 = !DILocation(line: 399, column: 73, scope: !4126)
!4141 = !DILocation(line: 401, column: 2, scope: !4126)
!4142 = !DILocation(line: 401, column: 6, scope: !4126)
!4143 = !DILocation(line: 402, column: 2, scope: !4126)
!4144 = !DILocation(line: 402, column: 14, scope: !4126)
!4145 = !DILocation(line: 403, column: 2, scope: !4126)
!4146 = !DILocation(line: 403, column: 21, scope: !4126)
!4147 = !DILocation(line: 404, column: 2, scope: !4126)
!4148 = !DILocation(line: 404, column: 21, scope: !4126)
!4149 = !DILocation(line: 405, column: 2, scope: !4126)
!4150 = !DILocation(line: 405, column: 20, scope: !4126)
!4151 = !DILocation(line: 406, column: 2, scope: !4126)
!4152 = !DILocation(line: 406, column: 36, scope: !4126)
!4153 = !DILocation(line: 408, column: 32, scope: !4126)
!4154 = !DILocation(line: 408, column: 36, scope: !4126)
!4155 = !DILocation(line: 408, column: 11, scope: !4126)
!4156 = !DILocation(line: 408, column: 9, scope: !4126)
!4157 = !DILocation(line: 409, column: 6, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 409, column: 6)
!4159 = !DILocation(line: 409, column: 6, scope: !4126)
!4160 = !DILocation(line: 410, column: 7, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 410, column: 7)
!4162 = distinct !DILexicalBlock(scope: !4158, file: !3, line: 409, column: 28)
!4163 = !DILocation(line: 410, column: 14, scope: !4161)
!4164 = !DILocation(line: 410, column: 7, scope: !4162)
!4165 = !DILocation(line: 411, column: 33, scope: !4161)
!4166 = !DILocation(line: 411, column: 37, scope: !4161)
!4167 = !DILocation(line: 411, column: 53, scope: !4161)
!4168 = !DILocation(line: 411, column: 4, scope: !4161)
!4169 = !DILocation(line: 413, column: 3, scope: !4162)
!4170 = !DILocation(line: 416, column: 36, scope: !4126)
!4171 = !DILocation(line: 416, column: 6, scope: !4126)
!4172 = !DILocation(line: 417, column: 7, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 417, column: 6)
!4174 = !DILocation(line: 417, column: 11, scope: !4173)
!4175 = !DILocation(line: 417, column: 15, scope: !4173)
!4176 = !DILocation(line: 417, column: 20, scope: !4173)
!4177 = !DILocation(line: 417, column: 25, scope: !4173)
!4178 = !DILocation(line: 418, column: 6, scope: !4173)
!4179 = !DILocation(line: 418, column: 10, scope: !4173)
!4180 = !DILocation(line: 418, column: 23, scope: !4173)
!4181 = !DILocation(line: 418, column: 29, scope: !4173)
!4182 = !DILocation(line: 417, column: 6, scope: !4126)
!4183 = !DILocation(line: 419, column: 3, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 419, column: 3)
!4185 = distinct !DILexicalBlock(scope: !4173, file: !3, line: 418, column: 36)
!4186 = !DILocation(line: 419, column: 3, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 419, column: 3)
!4188 = !DILocation(line: 420, column: 10, scope: !4185)
!4189 = !DILocation(line: 421, column: 3, scope: !4185)
!4190 = !DILocation(line: 428, column: 8, scope: !4126)
!4191 = !DILocation(line: 428, column: 21, scope: !4126)
!4192 = !DILocation(line: 430, column: 11, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 430, column: 6)
!4194 = !DILocation(line: 430, column: 16, scope: !4193)
!4195 = !DILocation(line: 431, column: 6, scope: !4193)
!4196 = !DILocation(line: 431, column: 21, scope: !4193)
!4197 = !DILocation(line: 431, column: 10, scope: !4193)
!4198 = !DILocation(line: 431, column: 28, scope: !4193)
!4199 = !DILocation(line: 432, column: 6, scope: !4193)
!4200 = !DILocation(line: 432, column: 21, scope: !4193)
!4201 = !DILocation(line: 432, column: 29, scope: !4193)
!4202 = !DILocation(line: 430, column: 6, scope: !4126)
!4203 = !DILocation(line: 433, column: 3, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !3, line: 433, column: 3)
!4205 = distinct !DILexicalBlock(scope: !4193, file: !3, line: 432, column: 39)
!4206 = !DILocation(line: 433, column: 3, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 433, column: 3)
!4208 = !DILocation(line: 434, column: 10, scope: !4205)
!4209 = !DILocation(line: 435, column: 3, scope: !4205)
!4210 = !DILocation(line: 437, column: 10, scope: !4126)
!4211 = !DILocation(line: 437, column: 14, scope: !4126)
!4212 = !DILocation(line: 437, column: 25, scope: !4126)
!4213 = !DILocation(line: 437, column: 54, scope: !4126)
!4214 = !DILocation(line: 437, column: 2, scope: !4126)
!4215 = !DILocation(line: 444, column: 8, scope: !4126)
!4216 = !DILocation(line: 444, column: 21, scope: !4126)
!4217 = !DILocation(line: 446, column: 11, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 446, column: 6)
!4219 = !DILocation(line: 446, column: 16, scope: !4218)
!4220 = !DILocation(line: 447, column: 6, scope: !4218)
!4221 = !DILocation(line: 447, column: 21, scope: !4218)
!4222 = !DILocation(line: 447, column: 10, scope: !4218)
!4223 = !DILocation(line: 447, column: 28, scope: !4218)
!4224 = !DILocation(line: 448, column: 6, scope: !4218)
!4225 = !DILocation(line: 448, column: 21, scope: !4218)
!4226 = !DILocation(line: 448, column: 29, scope: !4218)
!4227 = !DILocation(line: 446, column: 6, scope: !4126)
!4228 = !DILocation(line: 449, column: 3, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4230, file: !3, line: 449, column: 3)
!4230 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 448, column: 39)
!4231 = !DILocation(line: 449, column: 3, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4229, file: !3, line: 449, column: 3)
!4233 = !DILocation(line: 450, column: 10, scope: !4230)
!4234 = !DILocation(line: 451, column: 3, scope: !4230)
!4235 = !DILocation(line: 454, column: 10, scope: !4126)
!4236 = !DILocation(line: 454, column: 14, scope: !4126)
!4237 = !DILocation(line: 454, column: 25, scope: !4126)
!4238 = !DILocation(line: 454, column: 53, scope: !4126)
!4239 = !DILocation(line: 454, column: 2, scope: !4126)
!4240 = !DILocation(line: 457, column: 16, scope: !4126)
!4241 = !DILocation(line: 457, column: 20, scope: !4126)
!4242 = !DILocation(line: 457, column: 13, scope: !4126)
!4243 = !DILocation(line: 459, column: 7, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 459, column: 6)
!4245 = !DILocation(line: 459, column: 19, scope: !4244)
!4246 = !DILocation(line: 459, column: 36, scope: !4244)
!4247 = !DILocation(line: 460, column: 3, scope: !4244)
!4248 = !DILocation(line: 460, column: 15, scope: !4244)
!4249 = !DILocation(line: 460, column: 32, scope: !4244)
!4250 = !DILocation(line: 459, column: 46, scope: !4244)
!4251 = !DILocation(line: 460, column: 44, scope: !4244)
!4252 = !DILocation(line: 459, column: 6, scope: !4126)
!4253 = !DILocation(line: 461, column: 3, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 461, column: 3)
!4255 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 460, column: 50)
!4256 = !DILocation(line: 461, column: 3, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 461, column: 3)
!4258 = !DILocation(line: 462, column: 10, scope: !4255)
!4259 = !DILocation(line: 463, column: 3, scope: !4255)
!4260 = !DILocation(line: 466, column: 7, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 466, column: 6)
!4262 = !DILocation(line: 466, column: 19, scope: !4261)
!4263 = !DILocation(line: 466, column: 35, scope: !4261)
!4264 = !DILocation(line: 467, column: 3, scope: !4261)
!4265 = !DILocation(line: 467, column: 15, scope: !4261)
!4266 = !DILocation(line: 467, column: 31, scope: !4261)
!4267 = !DILocation(line: 466, column: 45, scope: !4261)
!4268 = !DILocation(line: 467, column: 43, scope: !4261)
!4269 = !DILocation(line: 466, column: 6, scope: !4126)
!4270 = !DILocation(line: 468, column: 3, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 468, column: 3)
!4272 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 467, column: 49)
!4273 = !DILocation(line: 468, column: 3, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4271, file: !3, line: 468, column: 3)
!4275 = !DILocation(line: 469, column: 10, scope: !4272)
!4276 = !DILocation(line: 470, column: 3, scope: !4272)
!4277 = !DILocation(line: 467, column: 45, scope: !4261)
!4278 = !DILocation(line: 473, column: 1, scope: !4126)
!4279 = !DILocation(line: 474, column: 15, scope: !4126)
!4280 = !DILocation(line: 474, column: 2, scope: !4126)
!4281 = !DILocation(line: 476, column: 9, scope: !4126)
!4282 = !DILocation(line: 476, column: 2, scope: !4126)
!4283 = !DILocation(line: 477, column: 1, scope: !4126)
!4284 = distinct !DISubprogram(name: "acpi_processor_get_throttling_states", scope: !3, file: !3, line: 482, type: !1326, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4285)
!4285 = !{!4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4298}
!4286 = !DILocalVariable(name: "pr", arg: 1, scope: !4284, file: !3, line: 482, type: !1190)
!4287 = !DILocalVariable(name: "result", scope: !4284, file: !3, line: 484, type: !46)
!4288 = !DILocalVariable(name: "status", scope: !4284, file: !3, line: 485, type: !2036)
!4289 = !DILocalVariable(name: "buffer", scope: !4284, file: !3, line: 486, type: !4132)
!4290 = !DILocalVariable(name: "format", scope: !4284, file: !3, line: 487, type: !4132)
!4291 = !DILocalVariable(name: "state", scope: !4284, file: !3, line: 488, type: !4132)
!4292 = !DILocalVariable(name: "tss", scope: !4284, file: !3, line: 489, type: !3099)
!4293 = !DILocalVariable(name: "i", scope: !4284, file: !3, line: 490, type: !46)
!4294 = !DILocalVariable(name: "tx", scope: !4295, file: !3, line: 522, type: !1307)
!4295 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 520, column: 51)
!4296 = distinct !DILexicalBlock(scope: !4297, file: !3, line: 520, column: 2)
!4297 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 520, column: 2)
!4298 = !DILabel(scope: !4284, name: "end", file: !3, line: 549)
!4299 = !DILocation(line: 482, column: 72, scope: !4284)
!4300 = !DILocation(line: 484, column: 2, scope: !4284)
!4301 = !DILocation(line: 484, column: 6, scope: !4284)
!4302 = !DILocation(line: 485, column: 2, scope: !4284)
!4303 = !DILocation(line: 485, column: 14, scope: !4284)
!4304 = !DILocation(line: 486, column: 2, scope: !4284)
!4305 = !DILocation(line: 486, column: 21, scope: !4284)
!4306 = !DILocation(line: 487, column: 2, scope: !4284)
!4307 = !DILocation(line: 487, column: 21, scope: !4284)
!4308 = !DILocation(line: 488, column: 2, scope: !4284)
!4309 = !DILocation(line: 488, column: 21, scope: !4284)
!4310 = !DILocation(line: 489, column: 2, scope: !4284)
!4311 = !DILocation(line: 489, column: 21, scope: !4284)
!4312 = !DILocation(line: 490, column: 2, scope: !4284)
!4313 = !DILocation(line: 490, column: 6, scope: !4284)
!4314 = !DILocation(line: 492, column: 32, scope: !4284)
!4315 = !DILocation(line: 492, column: 36, scope: !4284)
!4316 = !DILocation(line: 492, column: 11, scope: !4284)
!4317 = !DILocation(line: 492, column: 9, scope: !4284)
!4318 = !DILocation(line: 493, column: 6, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 493, column: 6)
!4320 = !DILocation(line: 493, column: 6, scope: !4284)
!4321 = !DILocation(line: 494, column: 7, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 494, column: 7)
!4323 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 493, column: 28)
!4324 = !DILocation(line: 494, column: 14, scope: !4322)
!4325 = !DILocation(line: 494, column: 7, scope: !4323)
!4326 = !DILocation(line: 495, column: 33, scope: !4322)
!4327 = !DILocation(line: 495, column: 37, scope: !4322)
!4328 = !DILocation(line: 495, column: 53, scope: !4322)
!4329 = !DILocation(line: 495, column: 4, scope: !4322)
!4330 = !DILocation(line: 497, column: 3, scope: !4323)
!4331 = !DILocation(line: 500, column: 15, scope: !4284)
!4332 = !DILocation(line: 500, column: 6, scope: !4284)
!4333 = !DILocation(line: 501, column: 7, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 501, column: 6)
!4335 = !DILocation(line: 501, column: 11, scope: !4334)
!4336 = !DILocation(line: 501, column: 15, scope: !4334)
!4337 = !DILocation(line: 501, column: 20, scope: !4334)
!4338 = !DILocation(line: 501, column: 25, scope: !4334)
!4339 = !DILocation(line: 501, column: 6, scope: !4284)
!4340 = !DILocation(line: 502, column: 3, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 502, column: 3)
!4342 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 501, column: 48)
!4343 = !DILocation(line: 502, column: 3, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4341, file: !3, line: 502, column: 3)
!4345 = !DILocation(line: 503, column: 10, scope: !4342)
!4346 = !DILocation(line: 504, column: 3, scope: !4342)
!4347 = !DILocation(line: 507, column: 2, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4349, file: !3, line: 507, column: 2)
!4349 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 507, column: 2)
!4350 = !DILocation(line: 507, column: 2, scope: !4349)
!4351 = !DILocation(line: 510, column: 31, scope: !4284)
!4352 = !DILocation(line: 510, column: 44, scope: !4284)
!4353 = !DILocation(line: 510, column: 2, scope: !4284)
!4354 = !DILocation(line: 510, column: 6, scope: !4284)
!4355 = !DILocation(line: 510, column: 17, scope: !4284)
!4356 = !DILocation(line: 510, column: 29, scope: !4284)
!4357 = !DILocation(line: 512, column: 20, scope: !4284)
!4358 = !DILocation(line: 512, column: 33, scope: !4284)
!4359 = !DILocation(line: 512, column: 6, scope: !4284)
!4360 = !DILocation(line: 511, column: 2, scope: !4284)
!4361 = !DILocation(line: 511, column: 6, scope: !4284)
!4362 = !DILocation(line: 511, column: 17, scope: !4284)
!4363 = !DILocation(line: 511, column: 28, scope: !4284)
!4364 = !DILocation(line: 515, column: 7, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 515, column: 6)
!4366 = !DILocation(line: 515, column: 11, scope: !4365)
!4367 = !DILocation(line: 515, column: 22, scope: !4365)
!4368 = !DILocation(line: 515, column: 6, scope: !4284)
!4369 = !DILocation(line: 516, column: 10, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 515, column: 34)
!4371 = !DILocation(line: 517, column: 3, scope: !4370)
!4372 = !DILocation(line: 520, column: 9, scope: !4297)
!4373 = !DILocation(line: 520, column: 7, scope: !4297)
!4374 = !DILocation(line: 520, column: 14, scope: !4296)
!4375 = !DILocation(line: 520, column: 18, scope: !4296)
!4376 = !DILocation(line: 520, column: 22, scope: !4296)
!4377 = !DILocation(line: 520, column: 33, scope: !4296)
!4378 = !DILocation(line: 520, column: 16, scope: !4296)
!4379 = !DILocation(line: 520, column: 2, scope: !4297)
!4380 = !DILocation(line: 522, column: 3, scope: !4295)
!4381 = !DILocation(line: 522, column: 33, scope: !4295)
!4382 = !DILocation(line: 523, column: 41, scope: !4295)
!4383 = !DILocation(line: 523, column: 45, scope: !4295)
!4384 = !DILocation(line: 524, column: 13, scope: !4295)
!4385 = !DILocation(line: 524, column: 24, scope: !4295)
!4386 = !DILocation(line: 526, column: 9, scope: !4295)
!4387 = !DILocation(line: 526, column: 16, scope: !4295)
!4388 = !DILocation(line: 527, column: 19, scope: !4295)
!4389 = !DILocation(line: 527, column: 9, scope: !4295)
!4390 = !DILocation(line: 527, column: 17, scope: !4295)
!4391 = !DILocation(line: 529, column: 3, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 529, column: 3)
!4393 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 529, column: 3)
!4394 = !DILocation(line: 529, column: 3, scope: !4393)
!4395 = !DILocation(line: 531, column: 35, scope: !4295)
!4396 = !DILocation(line: 531, column: 48, scope: !4295)
!4397 = !DILocation(line: 531, column: 57, scope: !4295)
!4398 = !DILocation(line: 531, column: 12, scope: !4295)
!4399 = !DILocation(line: 531, column: 10, scope: !4295)
!4400 = !DILocation(line: 533, column: 7, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 533, column: 7)
!4402 = !DILocation(line: 533, column: 7, scope: !4295)
!4403 = !DILocation(line: 534, column: 4, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 533, column: 29)
!4405 = !DILocation(line: 536, column: 11, scope: !4404)
!4406 = !DILocation(line: 537, column: 10, scope: !4404)
!4407 = !DILocation(line: 537, column: 14, scope: !4404)
!4408 = !DILocation(line: 537, column: 25, scope: !4404)
!4409 = !DILocation(line: 537, column: 4, scope: !4404)
!4410 = !DILocation(line: 538, column: 4, scope: !4404)
!4411 = !DILocation(line: 541, column: 8, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 541, column: 7)
!4413 = !DILocation(line: 541, column: 12, scope: !4412)
!4414 = !DILocation(line: 541, column: 7, scope: !4295)
!4415 = !DILocation(line: 542, column: 4, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4417, file: !3, line: 542, column: 4)
!4417 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 541, column: 28)
!4418 = !DILocation(line: 542, column: 4, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4416, file: !3, line: 542, column: 4)
!4420 = !DILocation(line: 543, column: 11, scope: !4417)
!4421 = !DILocation(line: 544, column: 10, scope: !4417)
!4422 = !DILocation(line: 544, column: 14, scope: !4417)
!4423 = !DILocation(line: 544, column: 25, scope: !4417)
!4424 = !DILocation(line: 544, column: 4, scope: !4417)
!4425 = !DILocation(line: 545, column: 4, scope: !4417)
!4426 = !DILocation(line: 547, column: 2, scope: !4296)
!4427 = !DILocation(line: 547, column: 2, scope: !4295)
!4428 = !DILocation(line: 520, column: 47, scope: !4296)
!4429 = !DILocation(line: 520, column: 2, scope: !4296)
!4430 = distinct !{!4430, !4379, !4431, !3401, !3402}
!4431 = !DILocation(line: 547, column: 2, scope: !4297)
!4432 = !DILocation(line: 549, column: 1, scope: !4284)
!4433 = !DILocation(line: 550, column: 15, scope: !4284)
!4434 = !DILocation(line: 550, column: 2, scope: !4284)
!4435 = !DILocation(line: 552, column: 9, scope: !4284)
!4436 = !DILocation(line: 552, column: 2, scope: !4284)
!4437 = !DILocation(line: 553, column: 1, scope: !4284)
!4438 = distinct !DISubprogram(name: "acpi_processor_get_throttling_fadt", scope: !3, file: !3, line: 642, type: !1326, scopeLine: 643, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4439)
!4439 = !{!4440, !4441, !4442, !4443, !4444}
!4440 = !DILocalVariable(name: "pr", arg: 1, scope: !4438, file: !3, line: 642, type: !1190)
!4441 = !DILocalVariable(name: "state", scope: !4438, file: !3, line: 644, type: !46)
!4442 = !DILocalVariable(name: "value", scope: !4438, file: !3, line: 645, type: !1081)
!4443 = !DILocalVariable(name: "duty_mask", scope: !4438, file: !3, line: 646, type: !1081)
!4444 = !DILocalVariable(name: "duty_value", scope: !4438, file: !3, line: 647, type: !1081)
!4445 = !DILocation(line: 642, column: 70, scope: !4438)
!4446 = !DILocation(line: 644, column: 2, scope: !4438)
!4447 = !DILocation(line: 644, column: 6, scope: !4438)
!4448 = !DILocation(line: 645, column: 2, scope: !4438)
!4449 = !DILocation(line: 645, column: 6, scope: !4438)
!4450 = !DILocation(line: 646, column: 2, scope: !4438)
!4451 = !DILocation(line: 646, column: 6, scope: !4438)
!4452 = !DILocation(line: 647, column: 2, scope: !4438)
!4453 = !DILocation(line: 647, column: 6, scope: !4438)
!4454 = !DILocation(line: 649, column: 7, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 649, column: 6)
!4456 = !DILocation(line: 649, column: 6, scope: !4438)
!4457 = !DILocation(line: 650, column: 3, scope: !4455)
!4458 = !DILocation(line: 652, column: 7, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 652, column: 6)
!4460 = !DILocation(line: 652, column: 11, scope: !4459)
!4461 = !DILocation(line: 652, column: 17, scope: !4459)
!4462 = !DILocation(line: 652, column: 6, scope: !4438)
!4463 = !DILocation(line: 653, column: 3, scope: !4459)
!4464 = !DILocation(line: 662, column: 2, scope: !4438)
!4465 = !DILocation(line: 664, column: 2, scope: !4438)
!4466 = !DILocation(line: 664, column: 6, scope: !4438)
!4467 = !DILocation(line: 664, column: 17, scope: !4438)
!4468 = !DILocation(line: 664, column: 23, scope: !4438)
!4469 = !DILocation(line: 666, column: 14, scope: !4438)
!4470 = !DILocation(line: 666, column: 18, scope: !4438)
!4471 = !DILocation(line: 666, column: 29, scope: !4438)
!4472 = !DILocation(line: 666, column: 41, scope: !4438)
!4473 = !DILocation(line: 666, column: 12, scope: !4438)
!4474 = !DILocation(line: 668, column: 16, scope: !4438)
!4475 = !DILocation(line: 668, column: 20, scope: !4438)
!4476 = !DILocation(line: 668, column: 31, scope: !4438)
!4477 = !DILocation(line: 668, column: 12, scope: !4438)
!4478 = !DILocation(line: 670, column: 2, scope: !4438)
!4479 = !DILocation(line: 670, column: 2, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 670, column: 2)
!4481 = !DILocation(line: 672, column: 14, scope: !4438)
!4482 = !DILocation(line: 672, column: 18, scope: !4438)
!4483 = !DILocation(line: 672, column: 29, scope: !4438)
!4484 = !DILocation(line: 672, column: 10, scope: !4438)
!4485 = !DILocation(line: 672, column: 8, scope: !4438)
!4486 = !DILocation(line: 678, column: 6, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 678, column: 6)
!4488 = !DILocation(line: 678, column: 12, scope: !4487)
!4489 = !DILocation(line: 678, column: 6, scope: !4438)
!4490 = !DILocation(line: 679, column: 16, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 678, column: 20)
!4492 = !DILocation(line: 679, column: 24, scope: !4491)
!4493 = !DILocation(line: 679, column: 22, scope: !4491)
!4494 = !DILocation(line: 679, column: 14, scope: !4491)
!4495 = !DILocation(line: 680, column: 18, scope: !4491)
!4496 = !DILocation(line: 680, column: 22, scope: !4491)
!4497 = !DILocation(line: 680, column: 33, scope: !4491)
!4498 = !DILocation(line: 680, column: 14, scope: !4491)
!4499 = !DILocation(line: 682, column: 7, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 682, column: 7)
!4501 = !DILocation(line: 682, column: 7, scope: !4491)
!4502 = !DILocation(line: 683, column: 12, scope: !4500)
!4503 = !DILocation(line: 683, column: 16, scope: !4500)
!4504 = !DILocation(line: 683, column: 27, scope: !4500)
!4505 = !DILocation(line: 683, column: 41, scope: !4500)
!4506 = !DILocation(line: 683, column: 39, scope: !4500)
!4507 = !DILocation(line: 683, column: 10, scope: !4500)
!4508 = !DILocation(line: 683, column: 4, scope: !4500)
!4509 = !DILocation(line: 684, column: 2, scope: !4491)
!4510 = !DILocation(line: 686, column: 25, scope: !4438)
!4511 = !DILocation(line: 686, column: 2, scope: !4438)
!4512 = !DILocation(line: 686, column: 6, scope: !4438)
!4513 = !DILocation(line: 686, column: 17, scope: !4438)
!4514 = !DILocation(line: 686, column: 23, scope: !4438)
!4515 = !DILocation(line: 688, column: 2, scope: !4438)
!4516 = !DILocation(line: 688, column: 2, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 688, column: 2)
!4518 = !DILocation(line: 690, column: 2, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 690, column: 2)
!4520 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 690, column: 2)
!4521 = !DILocation(line: 690, column: 2, scope: !4520)
!4522 = !DILocation(line: 694, column: 2, scope: !4438)
!4523 = !DILocation(line: 695, column: 1, scope: !4438)
!4524 = distinct !DISubprogram(name: "acpi_processor_set_throttling_fadt", scope: !3, file: !3, line: 938, type: !1330, scopeLine: 940, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4525)
!4525 = !{!4526, !4527, !4528, !4529, !4530, !4531}
!4526 = !DILocalVariable(name: "pr", arg: 1, scope: !4524, file: !3, line: 938, type: !1190)
!4527 = !DILocalVariable(name: "state", arg: 2, scope: !4524, file: !3, line: 939, type: !46)
!4528 = !DILocalVariable(name: "force", arg: 3, scope: !4524, file: !3, line: 939, type: !592)
!4529 = !DILocalVariable(name: "value", scope: !4524, file: !3, line: 941, type: !1081)
!4530 = !DILocalVariable(name: "duty_mask", scope: !4524, file: !3, line: 942, type: !1081)
!4531 = !DILocalVariable(name: "duty_value", scope: !4524, file: !3, line: 943, type: !1081)
!4532 = !DILocation(line: 938, column: 70, scope: !4524)
!4533 = !DILocation(line: 939, column: 16, scope: !4524)
!4534 = !DILocation(line: 939, column: 28, scope: !4524)
!4535 = !DILocation(line: 941, column: 2, scope: !4524)
!4536 = !DILocation(line: 941, column: 6, scope: !4524)
!4537 = !DILocation(line: 942, column: 2, scope: !4524)
!4538 = !DILocation(line: 942, column: 6, scope: !4524)
!4539 = !DILocation(line: 943, column: 2, scope: !4524)
!4540 = !DILocation(line: 943, column: 6, scope: !4524)
!4541 = !DILocation(line: 945, column: 7, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 945, column: 6)
!4543 = !DILocation(line: 945, column: 6, scope: !4524)
!4544 = !DILocation(line: 946, column: 3, scope: !4542)
!4545 = !DILocation(line: 948, column: 7, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 948, column: 6)
!4547 = !DILocation(line: 948, column: 13, scope: !4546)
!4548 = !DILocation(line: 948, column: 18, scope: !4546)
!4549 = !DILocation(line: 948, column: 22, scope: !4546)
!4550 = !DILocation(line: 948, column: 31, scope: !4546)
!4551 = !DILocation(line: 948, column: 35, scope: !4546)
!4552 = !DILocation(line: 948, column: 46, scope: !4546)
!4553 = !DILocation(line: 948, column: 58, scope: !4546)
!4554 = !DILocation(line: 948, column: 28, scope: !4546)
!4555 = !DILocation(line: 948, column: 6, scope: !4524)
!4556 = !DILocation(line: 949, column: 3, scope: !4546)
!4557 = !DILocation(line: 951, column: 7, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 951, column: 6)
!4559 = !DILocation(line: 951, column: 11, scope: !4558)
!4560 = !DILocation(line: 951, column: 17, scope: !4558)
!4561 = !DILocation(line: 951, column: 6, scope: !4524)
!4562 = !DILocation(line: 952, column: 3, scope: !4558)
!4563 = !DILocation(line: 954, column: 7, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 954, column: 6)
!4565 = !DILocation(line: 954, column: 13, scope: !4564)
!4566 = !DILocation(line: 954, column: 17, scope: !4564)
!4567 = !DILocation(line: 954, column: 26, scope: !4564)
!4568 = !DILocation(line: 954, column: 30, scope: !4564)
!4569 = !DILocation(line: 954, column: 41, scope: !4564)
!4570 = !DILocation(line: 954, column: 23, scope: !4564)
!4571 = !DILocation(line: 954, column: 6, scope: !4524)
!4572 = !DILocation(line: 955, column: 3, scope: !4564)
!4573 = !DILocation(line: 957, column: 6, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 957, column: 6)
!4575 = !DILocation(line: 957, column: 14, scope: !4574)
!4576 = !DILocation(line: 957, column: 18, scope: !4574)
!4577 = !DILocation(line: 957, column: 12, scope: !4574)
!4578 = !DILocation(line: 957, column: 6, scope: !4524)
!4579 = !DILocation(line: 958, column: 3, scope: !4574)
!4580 = !DILocation(line: 962, column: 6, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 962, column: 6)
!4582 = !DILocation(line: 962, column: 6, scope: !4524)
!4583 = !DILocation(line: 963, column: 16, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 962, column: 13)
!4585 = !DILocation(line: 963, column: 20, scope: !4584)
!4586 = !DILocation(line: 963, column: 31, scope: !4584)
!4587 = !DILocation(line: 963, column: 45, scope: !4584)
!4588 = !DILocation(line: 963, column: 43, scope: !4584)
!4589 = !DILocation(line: 963, column: 14, scope: !4584)
!4590 = !DILocation(line: 965, column: 18, scope: !4584)
!4591 = !DILocation(line: 965, column: 22, scope: !4584)
!4592 = !DILocation(line: 965, column: 33, scope: !4584)
!4593 = !DILocation(line: 965, column: 14, scope: !4584)
!4594 = !DILocation(line: 968, column: 15, scope: !4584)
!4595 = !DILocation(line: 968, column: 19, scope: !4584)
!4596 = !DILocation(line: 968, column: 30, scope: !4584)
!4597 = !DILocation(line: 968, column: 42, scope: !4584)
!4598 = !DILocation(line: 968, column: 13, scope: !4584)
!4599 = !DILocation(line: 970, column: 31, scope: !4584)
!4600 = !DILocation(line: 970, column: 17, scope: !4584)
!4601 = !DILocation(line: 970, column: 13, scope: !4584)
!4602 = !DILocation(line: 971, column: 16, scope: !4584)
!4603 = !DILocation(line: 971, column: 15, scope: !4584)
!4604 = !DILocation(line: 971, column: 13, scope: !4584)
!4605 = !DILocation(line: 972, column: 2, scope: !4584)
!4606 = !DILocation(line: 974, column: 2, scope: !4524)
!4607 = !DILocation(line: 974, column: 2, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 974, column: 2)
!4609 = !DILocation(line: 980, column: 14, scope: !4524)
!4610 = !DILocation(line: 980, column: 18, scope: !4524)
!4611 = !DILocation(line: 980, column: 29, scope: !4524)
!4612 = !DILocation(line: 980, column: 10, scope: !4524)
!4613 = !DILocation(line: 980, column: 8, scope: !4524)
!4614 = !DILocation(line: 981, column: 6, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 981, column: 6)
!4616 = !DILocation(line: 981, column: 12, scope: !4615)
!4617 = !DILocation(line: 981, column: 6, scope: !4524)
!4618 = !DILocation(line: 982, column: 9, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 981, column: 20)
!4620 = !DILocation(line: 983, column: 8, scope: !4619)
!4621 = !DILocation(line: 983, column: 15, scope: !4619)
!4622 = !DILocation(line: 983, column: 19, scope: !4619)
!4623 = !DILocation(line: 983, column: 30, scope: !4619)
!4624 = !DILocation(line: 983, column: 3, scope: !4619)
!4625 = !DILocation(line: 984, column: 2, scope: !4619)
!4626 = !DILocation(line: 990, column: 6, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 990, column: 6)
!4628 = !DILocation(line: 990, column: 6, scope: !4524)
!4629 = !DILocation(line: 991, column: 12, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 990, column: 13)
!4631 = !DILocation(line: 991, column: 9, scope: !4630)
!4632 = !DILocation(line: 992, column: 12, scope: !4630)
!4633 = !DILocation(line: 992, column: 9, scope: !4630)
!4634 = !DILocation(line: 993, column: 8, scope: !4630)
!4635 = !DILocation(line: 993, column: 15, scope: !4630)
!4636 = !DILocation(line: 993, column: 19, scope: !4630)
!4637 = !DILocation(line: 993, column: 30, scope: !4630)
!4638 = !DILocation(line: 993, column: 3, scope: !4630)
!4639 = !DILocation(line: 995, column: 9, scope: !4630)
!4640 = !DILocation(line: 996, column: 8, scope: !4630)
!4641 = !DILocation(line: 996, column: 15, scope: !4630)
!4642 = !DILocation(line: 996, column: 19, scope: !4630)
!4643 = !DILocation(line: 996, column: 30, scope: !4630)
!4644 = !DILocation(line: 996, column: 3, scope: !4630)
!4645 = !DILocation(line: 997, column: 2, scope: !4630)
!4646 = !DILocation(line: 999, column: 25, scope: !4524)
!4647 = !DILocation(line: 999, column: 2, scope: !4524)
!4648 = !DILocation(line: 999, column: 6, scope: !4524)
!4649 = !DILocation(line: 999, column: 17, scope: !4524)
!4650 = !DILocation(line: 999, column: 23, scope: !4524)
!4651 = !DILocation(line: 1001, column: 2, scope: !4524)
!4652 = !DILocation(line: 1001, column: 2, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 1001, column: 2)
!4654 = !DILocation(line: 1003, column: 2, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4656, file: !3, line: 1003, column: 2)
!4656 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 1003, column: 2)
!4657 = !DILocation(line: 1003, column: 2, scope: !4656)
!4658 = !DILocation(line: 1008, column: 2, scope: !4524)
!4659 = !DILocation(line: 1009, column: 1, scope: !4524)
!4660 = distinct !DISubprogram(name: "acpi_processor_get_fadt_info", scope: !3, file: !3, line: 904, type: !1326, scopeLine: 905, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4661)
!4661 = !{!4662, !4663, !4664}
!4662 = !DILocalVariable(name: "pr", arg: 1, scope: !4660, file: !3, line: 904, type: !1190)
!4663 = !DILocalVariable(name: "i", scope: !4660, file: !3, line: 906, type: !46)
!4664 = !DILocalVariable(name: "step", scope: !4660, file: !3, line: 906, type: !46)
!4665 = !DILocation(line: 904, column: 64, scope: !4660)
!4666 = !DILocation(line: 906, column: 2, scope: !4660)
!4667 = !DILocation(line: 906, column: 6, scope: !4660)
!4668 = !DILocation(line: 906, column: 9, scope: !4660)
!4669 = !DILocation(line: 908, column: 7, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4660, file: !3, line: 908, column: 6)
!4671 = !DILocation(line: 908, column: 11, scope: !4670)
!4672 = !DILocation(line: 908, column: 22, scope: !4670)
!4673 = !DILocation(line: 908, column: 6, scope: !4660)
!4674 = !DILocation(line: 909, column: 3, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 909, column: 3)
!4676 = distinct !DILexicalBlock(scope: !4677, file: !3, line: 909, column: 3)
!4677 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 908, column: 31)
!4678 = !DILocation(line: 909, column: 3, scope: !4676)
!4679 = !DILocation(line: 910, column: 3, scope: !4677)
!4680 = !DILocation(line: 911, column: 14, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 911, column: 13)
!4682 = !DILocation(line: 911, column: 18, scope: !4681)
!4683 = !DILocation(line: 911, column: 29, scope: !4681)
!4684 = !DILocation(line: 911, column: 13, scope: !4670)
!4685 = !DILocation(line: 912, column: 3, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 912, column: 3)
!4687 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 912, column: 3)
!4688 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 911, column: 41)
!4689 = !DILocation(line: 912, column: 3, scope: !4687)
!4690 = !DILocation(line: 913, column: 3, scope: !4688)
!4691 = !DILocation(line: 916, column: 12, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 916, column: 11)
!4693 = !DILocation(line: 916, column: 16, scope: !4692)
!4694 = !DILocation(line: 916, column: 27, scope: !4692)
!4695 = !DILocation(line: 916, column: 41, scope: !4692)
!4696 = !DILocation(line: 916, column: 45, scope: !4692)
!4697 = !DILocation(line: 916, column: 56, scope: !4692)
!4698 = !DILocation(line: 916, column: 39, scope: !4692)
!4699 = !DILocation(line: 916, column: 68, scope: !4692)
!4700 = !DILocation(line: 916, column: 11, scope: !4681)
!4701 = !DILocation(line: 917, column: 3, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 917, column: 3)
!4703 = distinct !DILexicalBlock(scope: !4692, file: !3, line: 916, column: 73)
!4704 = !DILocation(line: 917, column: 3, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 917, column: 3)
!4706 = !DILocation(line: 918, column: 3, scope: !4703)
!4707 = !DILocation(line: 921, column: 50, scope: !4660)
!4708 = !DILocation(line: 921, column: 36, scope: !4660)
!4709 = !DILocation(line: 921, column: 33, scope: !4660)
!4710 = !DILocation(line: 921, column: 2, scope: !4660)
!4711 = !DILocation(line: 921, column: 6, scope: !4660)
!4712 = !DILocation(line: 921, column: 17, scope: !4660)
!4713 = !DILocation(line: 921, column: 29, scope: !4660)
!4714 = !DILocation(line: 929, column: 17, scope: !4660)
!4715 = !DILocation(line: 929, column: 21, scope: !4660)
!4716 = !DILocation(line: 929, column: 32, scope: !4660)
!4717 = !DILocation(line: 929, column: 15, scope: !4660)
!4718 = !DILocation(line: 929, column: 7, scope: !4660)
!4719 = !DILocation(line: 931, column: 9, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4660, file: !3, line: 931, column: 2)
!4721 = !DILocation(line: 931, column: 7, scope: !4720)
!4722 = !DILocation(line: 931, column: 14, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4720, file: !3, line: 931, column: 2)
!4724 = !DILocation(line: 931, column: 18, scope: !4723)
!4725 = !DILocation(line: 931, column: 22, scope: !4723)
!4726 = !DILocation(line: 931, column: 33, scope: !4723)
!4727 = !DILocation(line: 931, column: 16, scope: !4723)
!4728 = !DILocation(line: 931, column: 2, scope: !4720)
!4729 = !DILocation(line: 932, column: 49, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 931, column: 51)
!4731 = !DILocation(line: 932, column: 56, scope: !4730)
!4732 = !DILocation(line: 932, column: 54, scope: !4730)
!4733 = !DILocation(line: 932, column: 47, scope: !4730)
!4734 = !DILocation(line: 932, column: 42, scope: !4730)
!4735 = !DILocation(line: 932, column: 3, scope: !4730)
!4736 = !DILocation(line: 932, column: 7, scope: !4730)
!4737 = !DILocation(line: 932, column: 18, scope: !4730)
!4738 = !DILocation(line: 932, column: 25, scope: !4730)
!4739 = !DILocation(line: 932, column: 28, scope: !4730)
!4740 = !DILocation(line: 932, column: 40, scope: !4730)
!4741 = !DILocation(line: 933, column: 43, scope: !4730)
!4742 = !DILocation(line: 933, column: 50, scope: !4730)
!4743 = !DILocation(line: 933, column: 48, scope: !4730)
!4744 = !DILocation(line: 933, column: 41, scope: !4730)
!4745 = !DILocation(line: 933, column: 36, scope: !4730)
!4746 = !DILocation(line: 933, column: 3, scope: !4730)
!4747 = !DILocation(line: 933, column: 7, scope: !4730)
!4748 = !DILocation(line: 933, column: 18, scope: !4730)
!4749 = !DILocation(line: 933, column: 25, scope: !4730)
!4750 = !DILocation(line: 933, column: 28, scope: !4730)
!4751 = !DILocation(line: 933, column: 34, scope: !4730)
!4752 = !DILocation(line: 934, column: 2, scope: !4730)
!4753 = !DILocation(line: 931, column: 47, scope: !4723)
!4754 = !DILocation(line: 931, column: 2, scope: !4723)
!4755 = distinct !{!4755, !4728, !4756, !3401, !3402}
!4756 = !DILocation(line: 934, column: 2, scope: !4720)
!4757 = !DILocation(line: 935, column: 2, scope: !4660)
!4758 = !DILocation(line: 936, column: 1, scope: !4660)
!4759 = distinct !DISubprogram(name: "acpi_processor_get_throttling_ptc", scope: !3, file: !3, line: 844, type: !1326, scopeLine: 845, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4760)
!4760 = !{!4761, !4762, !4763, !4764}
!4761 = !DILocalVariable(name: "pr", arg: 1, scope: !4759, file: !3, line: 844, type: !1190)
!4762 = !DILocalVariable(name: "state", scope: !4759, file: !3, line: 846, type: !46)
!4763 = !DILocalVariable(name: "ret", scope: !4759, file: !3, line: 847, type: !46)
!4764 = !DILocalVariable(name: "value", scope: !4759, file: !3, line: 848, type: !399)
!4765 = !DILocation(line: 844, column: 69, scope: !4759)
!4766 = !DILocation(line: 846, column: 2, scope: !4759)
!4767 = !DILocation(line: 846, column: 6, scope: !4759)
!4768 = !DILocation(line: 847, column: 2, scope: !4759)
!4769 = !DILocation(line: 847, column: 6, scope: !4759)
!4770 = !DILocation(line: 848, column: 2, scope: !4759)
!4771 = !DILocation(line: 848, column: 6, scope: !4759)
!4772 = !DILocation(line: 850, column: 7, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 850, column: 6)
!4774 = !DILocation(line: 850, column: 6, scope: !4759)
!4775 = !DILocation(line: 851, column: 3, scope: !4773)
!4776 = !DILocation(line: 853, column: 7, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 853, column: 6)
!4778 = !DILocation(line: 853, column: 11, scope: !4777)
!4779 = !DILocation(line: 853, column: 17, scope: !4777)
!4780 = !DILocation(line: 853, column: 6, scope: !4759)
!4781 = !DILocation(line: 854, column: 3, scope: !4777)
!4782 = !DILocation(line: 856, column: 2, scope: !4759)
!4783 = !DILocation(line: 856, column: 6, scope: !4759)
!4784 = !DILocation(line: 856, column: 17, scope: !4759)
!4785 = !DILocation(line: 856, column: 23, scope: !4759)
!4786 = !DILocation(line: 858, column: 8, scope: !4759)
!4787 = !DILocation(line: 859, column: 36, scope: !4759)
!4788 = !DILocation(line: 859, column: 8, scope: !4759)
!4789 = !DILocation(line: 859, column: 6, scope: !4759)
!4790 = !DILocation(line: 860, column: 6, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 860, column: 6)
!4792 = !DILocation(line: 860, column: 10, scope: !4791)
!4793 = !DILocation(line: 860, column: 6, scope: !4759)
!4794 = !DILocation(line: 861, column: 37, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4791, file: !3, line: 860, column: 16)
!4796 = !DILocation(line: 861, column: 41, scope: !4795)
!4797 = !DILocation(line: 861, column: 11, scope: !4795)
!4798 = !DILocation(line: 861, column: 9, scope: !4795)
!4799 = !DILocation(line: 862, column: 7, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 862, column: 7)
!4801 = !DILocation(line: 862, column: 13, scope: !4800)
!4802 = !DILocation(line: 862, column: 7, scope: !4795)
!4803 = !DILocation(line: 863, column: 4, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 863, column: 4)
!4805 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 863, column: 4)
!4806 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 862, column: 20)
!4807 = !DILocation(line: 863, column: 4, scope: !4805)
!4808 = !DILocation(line: 865, column: 10, scope: !4806)
!4809 = !DILocation(line: 866, column: 42, scope: !4806)
!4810 = !DILocation(line: 866, column: 46, scope: !4806)
!4811 = !DILocation(line: 866, column: 10, scope: !4806)
!4812 = !DILocation(line: 866, column: 8, scope: !4806)
!4813 = !DILocation(line: 868, column: 8, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 868, column: 8)
!4815 = !DILocation(line: 868, column: 8, scope: !4806)
!4816 = !DILocation(line: 869, column: 12, scope: !4814)
!4817 = !DILocation(line: 869, column: 5, scope: !4814)
!4818 = !DILocation(line: 870, column: 3, scope: !4806)
!4819 = !DILocation(line: 871, column: 26, scope: !4795)
!4820 = !DILocation(line: 871, column: 3, scope: !4795)
!4821 = !DILocation(line: 871, column: 7, scope: !4795)
!4822 = !DILocation(line: 871, column: 18, scope: !4795)
!4823 = !DILocation(line: 871, column: 24, scope: !4795)
!4824 = !DILocation(line: 872, column: 2, scope: !4795)
!4825 = !DILocation(line: 874, column: 2, scope: !4759)
!4826 = !DILocation(line: 875, column: 1, scope: !4759)
!4827 = distinct !DISubprogram(name: "acpi_processor_set_throttling_ptc", scope: !3, file: !3, line: 1011, type: !1330, scopeLine: 1013, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4828)
!4828 = !{!4829, !4830, !4831, !4832, !4833}
!4829 = !DILocalVariable(name: "pr", arg: 1, scope: !4827, file: !3, line: 1011, type: !1190)
!4830 = !DILocalVariable(name: "state", arg: 2, scope: !4827, file: !3, line: 1012, type: !46)
!4831 = !DILocalVariable(name: "force", arg: 3, scope: !4827, file: !3, line: 1012, type: !592)
!4832 = !DILocalVariable(name: "ret", scope: !4827, file: !3, line: 1014, type: !46)
!4833 = !DILocalVariable(name: "value", scope: !4827, file: !3, line: 1015, type: !399)
!4834 = !DILocation(line: 1011, column: 69, scope: !4827)
!4835 = !DILocation(line: 1012, column: 15, scope: !4827)
!4836 = !DILocation(line: 1012, column: 27, scope: !4827)
!4837 = !DILocation(line: 1014, column: 2, scope: !4827)
!4838 = !DILocation(line: 1014, column: 6, scope: !4827)
!4839 = !DILocation(line: 1015, column: 2, scope: !4827)
!4840 = !DILocation(line: 1015, column: 6, scope: !4827)
!4841 = !DILocation(line: 1017, column: 7, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 1017, column: 6)
!4843 = !DILocation(line: 1017, column: 6, scope: !4827)
!4844 = !DILocation(line: 1018, column: 3, scope: !4842)
!4845 = !DILocation(line: 1020, column: 7, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 1020, column: 6)
!4847 = !DILocation(line: 1020, column: 13, scope: !4846)
!4848 = !DILocation(line: 1020, column: 18, scope: !4846)
!4849 = !DILocation(line: 1020, column: 22, scope: !4846)
!4850 = !DILocation(line: 1020, column: 31, scope: !4846)
!4851 = !DILocation(line: 1020, column: 35, scope: !4846)
!4852 = !DILocation(line: 1020, column: 46, scope: !4846)
!4853 = !DILocation(line: 1020, column: 58, scope: !4846)
!4854 = !DILocation(line: 1020, column: 28, scope: !4846)
!4855 = !DILocation(line: 1020, column: 6, scope: !4827)
!4856 = !DILocation(line: 1021, column: 3, scope: !4846)
!4857 = !DILocation(line: 1023, column: 7, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 1023, column: 6)
!4859 = !DILocation(line: 1023, column: 11, scope: !4858)
!4860 = !DILocation(line: 1023, column: 17, scope: !4858)
!4861 = !DILocation(line: 1023, column: 6, scope: !4827)
!4862 = !DILocation(line: 1024, column: 3, scope: !4858)
!4863 = !DILocation(line: 1026, column: 7, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 1026, column: 6)
!4865 = !DILocation(line: 1026, column: 13, scope: !4864)
!4866 = !DILocation(line: 1026, column: 17, scope: !4864)
!4867 = !DILocation(line: 1026, column: 26, scope: !4864)
!4868 = !DILocation(line: 1026, column: 30, scope: !4864)
!4869 = !DILocation(line: 1026, column: 41, scope: !4864)
!4870 = !DILocation(line: 1026, column: 23, scope: !4864)
!4871 = !DILocation(line: 1026, column: 6, scope: !4827)
!4872 = !DILocation(line: 1027, column: 3, scope: !4864)
!4873 = !DILocation(line: 1029, column: 6, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 1029, column: 6)
!4875 = !DILocation(line: 1029, column: 14, scope: !4874)
!4876 = !DILocation(line: 1029, column: 18, scope: !4874)
!4877 = !DILocation(line: 1029, column: 12, scope: !4874)
!4878 = !DILocation(line: 1029, column: 6, scope: !4827)
!4879 = !DILocation(line: 1030, column: 3, scope: !4874)
!4880 = !DILocation(line: 1032, column: 8, scope: !4827)
!4881 = !DILocation(line: 1033, column: 34, scope: !4827)
!4882 = !DILocation(line: 1033, column: 38, scope: !4827)
!4883 = !DILocation(line: 1033, column: 8, scope: !4827)
!4884 = !DILocation(line: 1033, column: 6, scope: !4827)
!4885 = !DILocation(line: 1034, column: 6, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 1034, column: 6)
!4887 = !DILocation(line: 1034, column: 10, scope: !4886)
!4888 = !DILocation(line: 1034, column: 6, scope: !4827)
!4889 = !DILocation(line: 1035, column: 31, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 1034, column: 16)
!4891 = !DILocation(line: 1035, column: 35, scope: !4890)
!4892 = !DILocation(line: 1035, column: 3, scope: !4890)
!4893 = !DILocation(line: 1036, column: 26, scope: !4890)
!4894 = !DILocation(line: 1036, column: 3, scope: !4890)
!4895 = !DILocation(line: 1036, column: 7, scope: !4890)
!4896 = !DILocation(line: 1036, column: 18, scope: !4890)
!4897 = !DILocation(line: 1036, column: 24, scope: !4890)
!4898 = !DILocation(line: 1037, column: 2, scope: !4890)
!4899 = !DILocation(line: 1039, column: 2, scope: !4827)
!4900 = !DILocation(line: 1040, column: 1, scope: !4827)
!4901 = distinct !DISubprogram(name: "acpi_processor_get_tsd", scope: !3, file: !3, line: 558, type: !1326, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4902)
!4902 = !{!4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912}
!4903 = !DILocalVariable(name: "pr", arg: 1, scope: !4901, file: !3, line: 558, type: !1190)
!4904 = !DILocalVariable(name: "result", scope: !4901, file: !3, line: 560, type: !46)
!4905 = !DILocalVariable(name: "status", scope: !4901, file: !3, line: 561, type: !2036)
!4906 = !DILocalVariable(name: "buffer", scope: !4901, file: !3, line: 562, type: !4132)
!4907 = !DILocalVariable(name: "format", scope: !4901, file: !3, line: 563, type: !4132)
!4908 = !DILocalVariable(name: "state", scope: !4901, file: !3, line: 564, type: !4132)
!4909 = !DILocalVariable(name: "tsd", scope: !4901, file: !3, line: 565, type: !3099)
!4910 = !DILocalVariable(name: "pdomain", scope: !4901, file: !3, line: 566, type: !3309)
!4911 = !DILocalVariable(name: "pthrottling", scope: !4901, file: !3, line: 567, type: !3312)
!4912 = !DILabel(scope: !4901, name: "end", file: !3, line: 634)
!4913 = !DILocation(line: 558, column: 58, scope: !4901)
!4914 = !DILocation(line: 560, column: 2, scope: !4901)
!4915 = !DILocation(line: 560, column: 6, scope: !4901)
!4916 = !DILocation(line: 561, column: 2, scope: !4901)
!4917 = !DILocation(line: 561, column: 14, scope: !4901)
!4918 = !DILocation(line: 562, column: 2, scope: !4901)
!4919 = !DILocation(line: 562, column: 21, scope: !4901)
!4920 = !DILocation(line: 563, column: 2, scope: !4901)
!4921 = !DILocation(line: 563, column: 21, scope: !4901)
!4922 = !DILocation(line: 564, column: 2, scope: !4901)
!4923 = !DILocation(line: 564, column: 21, scope: !4901)
!4924 = !DILocation(line: 565, column: 2, scope: !4901)
!4925 = !DILocation(line: 565, column: 21, scope: !4901)
!4926 = !DILocation(line: 566, column: 2, scope: !4901)
!4927 = !DILocation(line: 566, column: 27, scope: !4901)
!4928 = !DILocation(line: 567, column: 2, scope: !4901)
!4929 = !DILocation(line: 567, column: 36, scope: !4901)
!4930 = !DILocation(line: 569, column: 17, scope: !4901)
!4931 = !DILocation(line: 569, column: 21, scope: !4901)
!4932 = !DILocation(line: 569, column: 14, scope: !4901)
!4933 = !DILocation(line: 570, column: 2, scope: !4901)
!4934 = !DILocation(line: 570, column: 15, scope: !4901)
!4935 = !DILocation(line: 570, column: 30, scope: !4901)
!4936 = !DILocation(line: 572, column: 32, scope: !4901)
!4937 = !DILocation(line: 572, column: 36, scope: !4901)
!4938 = !DILocation(line: 572, column: 11, scope: !4901)
!4939 = !DILocation(line: 572, column: 9, scope: !4901)
!4940 = !DILocation(line: 573, column: 6, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 573, column: 6)
!4942 = !DILocation(line: 573, column: 6, scope: !4901)
!4943 = !DILocation(line: 574, column: 7, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 574, column: 7)
!4945 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 573, column: 28)
!4946 = !DILocation(line: 574, column: 14, scope: !4944)
!4947 = !DILocation(line: 574, column: 7, scope: !4945)
!4948 = !DILocation(line: 575, column: 33, scope: !4944)
!4949 = !DILocation(line: 575, column: 37, scope: !4944)
!4950 = !DILocation(line: 575, column: 53, scope: !4944)
!4951 = !DILocation(line: 575, column: 4, scope: !4944)
!4952 = !DILocation(line: 577, column: 3, scope: !4945)
!4953 = !DILocation(line: 580, column: 15, scope: !4901)
!4954 = !DILocation(line: 580, column: 6, scope: !4901)
!4955 = !DILocation(line: 581, column: 7, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 581, column: 6)
!4957 = !DILocation(line: 581, column: 11, scope: !4956)
!4958 = !DILocation(line: 581, column: 15, scope: !4956)
!4959 = !DILocation(line: 581, column: 20, scope: !4956)
!4960 = !DILocation(line: 581, column: 25, scope: !4956)
!4961 = !DILocation(line: 581, column: 6, scope: !4901)
!4962 = !DILocation(line: 582, column: 3, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 582, column: 3)
!4964 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 581, column: 48)
!4965 = !DILocation(line: 582, column: 3, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4963, file: !3, line: 582, column: 3)
!4967 = !DILocation(line: 583, column: 10, scope: !4964)
!4968 = !DILocation(line: 584, column: 3, scope: !4964)
!4969 = !DILocation(line: 587, column: 6, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 587, column: 6)
!4971 = !DILocation(line: 587, column: 19, scope: !4970)
!4972 = !DILocation(line: 587, column: 25, scope: !4970)
!4973 = !DILocation(line: 587, column: 6, scope: !4901)
!4974 = !DILocation(line: 588, column: 3, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 588, column: 3)
!4976 = distinct !DILexicalBlock(scope: !4970, file: !3, line: 587, column: 31)
!4977 = !DILocation(line: 588, column: 3, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4975, file: !3, line: 588, column: 3)
!4979 = !DILocation(line: 589, column: 10, scope: !4976)
!4980 = !DILocation(line: 590, column: 3, scope: !4976)
!4981 = !DILocation(line: 593, column: 14, scope: !4901)
!4982 = !DILocation(line: 593, column: 18, scope: !4901)
!4983 = !DILocation(line: 593, column: 29, scope: !4901)
!4984 = !DILocation(line: 593, column: 10, scope: !4901)
!4985 = !DILocation(line: 595, column: 8, scope: !4901)
!4986 = !DILocation(line: 595, column: 15, scope: !4901)
!4987 = !DILocation(line: 596, column: 18, scope: !4901)
!4988 = !DILocation(line: 596, column: 8, scope: !4901)
!4989 = !DILocation(line: 596, column: 16, scope: !4901)
!4990 = !DILocation(line: 598, column: 34, scope: !4901)
!4991 = !DILocation(line: 598, column: 47, scope: !4901)
!4992 = !DILocation(line: 598, column: 11, scope: !4901)
!4993 = !DILocation(line: 598, column: 9, scope: !4901)
!4994 = !DILocation(line: 600, column: 6, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 600, column: 6)
!4996 = !DILocation(line: 600, column: 6, scope: !4901)
!4997 = !DILocation(line: 601, column: 3, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4999, file: !3, line: 601, column: 3)
!4999 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 600, column: 28)
!5000 = !DILocation(line: 601, column: 3, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4998, file: !3, line: 601, column: 3)
!5002 = !DILocation(line: 602, column: 10, scope: !4999)
!5003 = !DILocation(line: 603, column: 3, scope: !4999)
!5004 = !DILocation(line: 606, column: 6, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 606, column: 6)
!5006 = !DILocation(line: 606, column: 15, scope: !5005)
!5007 = !DILocation(line: 606, column: 27, scope: !5005)
!5008 = !DILocation(line: 606, column: 6, scope: !4901)
!5009 = !DILocation(line: 607, column: 3, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5011, file: !3, line: 607, column: 3)
!5011 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 606, column: 53)
!5012 = !DILocation(line: 607, column: 3, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5010, file: !3, line: 607, column: 3)
!5014 = !DILocation(line: 608, column: 10, scope: !5011)
!5015 = !DILocation(line: 609, column: 3, scope: !5011)
!5016 = !DILocation(line: 612, column: 6, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 612, column: 6)
!5018 = !DILocation(line: 612, column: 15, scope: !5017)
!5019 = !DILocation(line: 612, column: 24, scope: !5017)
!5020 = !DILocation(line: 612, column: 6, scope: !4901)
!5021 = !DILocation(line: 613, column: 3, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 613, column: 3)
!5023 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 612, column: 51)
!5024 = !DILocation(line: 613, column: 3, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5022, file: !3, line: 613, column: 3)
!5026 = !DILocation(line: 614, column: 10, scope: !5023)
!5027 = !DILocation(line: 615, column: 3, scope: !5023)
!5028 = !DILocation(line: 618, column: 17, scope: !4901)
!5029 = !DILocation(line: 618, column: 21, scope: !4901)
!5030 = !DILocation(line: 618, column: 14, scope: !4901)
!5031 = !DILocation(line: 619, column: 2, scope: !4901)
!5032 = !DILocation(line: 619, column: 15, scope: !4901)
!5033 = !DILocation(line: 619, column: 30, scope: !4901)
!5034 = !DILocation(line: 620, column: 29, scope: !4901)
!5035 = !DILocation(line: 620, column: 38, scope: !4901)
!5036 = !DILocation(line: 620, column: 2, scope: !4901)
!5037 = !DILocation(line: 620, column: 15, scope: !4901)
!5038 = !DILocation(line: 620, column: 27, scope: !4901)
!5039 = !DILocation(line: 621, column: 18, scope: !4901)
!5040 = !DILocation(line: 621, column: 22, scope: !4901)
!5041 = !DILocation(line: 621, column: 26, scope: !4901)
!5042 = !DILocation(line: 621, column: 39, scope: !4901)
!5043 = !DILocation(line: 621, column: 2, scope: !4901)
!5044 = !DILocation(line: 627, column: 6, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 627, column: 6)
!5046 = !DILocation(line: 627, column: 15, scope: !5045)
!5047 = !DILocation(line: 627, column: 26, scope: !5045)
!5048 = !DILocation(line: 627, column: 54, scope: !5045)
!5049 = !DILocation(line: 628, column: 3, scope: !5045)
!5050 = !DILocation(line: 628, column: 12, scope: !5045)
!5051 = !DILocation(line: 628, column: 23, scope: !5045)
!5052 = !DILocation(line: 628, column: 51, scope: !5045)
!5053 = !DILocation(line: 629, column: 3, scope: !5045)
!5054 = !DILocation(line: 629, column: 12, scope: !5045)
!5055 = !DILocation(line: 629, column: 23, scope: !5045)
!5056 = !DILocation(line: 627, column: 6, scope: !4901)
!5057 = !DILocation(line: 630, column: 3, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 629, column: 52)
!5059 = !DILocation(line: 630, column: 16, scope: !5058)
!5060 = !DILocation(line: 630, column: 31, scope: !5058)
!5061 = !DILocation(line: 631, column: 3, scope: !5058)
!5062 = !DILocation(line: 631, column: 16, scope: !5058)
!5063 = !DILocation(line: 631, column: 28, scope: !5058)
!5064 = !DILocation(line: 632, column: 2, scope: !5058)
!5065 = !DILocation(line: 629, column: 26, scope: !5045)
!5066 = !DILocation(line: 634, column: 1, scope: !4901)
!5067 = !DILocation(line: 635, column: 15, scope: !4901)
!5068 = !DILocation(line: 635, column: 2, scope: !4901)
!5069 = !DILocation(line: 636, column: 9, scope: !4901)
!5070 = !DILocation(line: 636, column: 2, scope: !4901)
!5071 = !DILocation(line: 637, column: 1, scope: !4901)
!5072 = distinct !DISubprogram(name: "cpumask_set_cpu", scope: !1183, file: !1183, line: 469, type: !5073, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5076)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{null, !7, !5075}
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!5076 = !{!5077, !5078}
!5077 = !DILocalVariable(name: "cpu", arg: 1, scope: !5072, file: !1183, line: 469, type: !7)
!5078 = !DILocalVariable(name: "dstp", arg: 2, scope: !5072, file: !1183, line: 469, type: !5075)
!5079 = !DILocation(line: 469, column: 58, scope: !5072)
!5080 = !DILocation(line: 469, column: 79, scope: !5072)
!5081 = !DILocation(line: 471, column: 24, scope: !5072)
!5082 = !DILocation(line: 471, column: 10, scope: !5072)
!5083 = !DILocation(line: 471, column: 30, scope: !5072)
!5084 = !DILocation(line: 471, column: 2, scope: !5072)
!5085 = !DILocation(line: 472, column: 1, scope: !5072)
!5086 = distinct !DISubprogram(name: "zalloc_cpumask_var", scope: !1183, file: !1183, line: 929, type: !5087, scopeLine: 930, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5090)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!592, !5089, !1179}
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!5090 = !{!5091, !5092}
!5091 = !DILocalVariable(name: "mask", arg: 1, scope: !5086, file: !1183, line: 929, type: !5089)
!5092 = !DILocalVariable(name: "flags", arg: 2, scope: !5086, file: !1183, line: 929, type: !1179)
!5093 = !DILocation(line: 929, column: 54, scope: !5086)
!5094 = !DILocation(line: 929, column: 66, scope: !5086)
!5095 = !DILocation(line: 931, column: 17, scope: !5086)
!5096 = !DILocation(line: 931, column: 16, scope: !5086)
!5097 = !DILocation(line: 931, column: 2, scope: !5086)
!5098 = !DILocation(line: 932, column: 2, scope: !5086)
!5099 = distinct !DISubprogram(name: "find_next_bit", scope: !5100, file: !5100, line: 54, type: !5101, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5105)
!5100 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!5101 = !DISubroutineType(types: !5102)
!5102 = !{!285, !5103, !285, !285}
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!5105 = !{!5106, !5107, !5108, !5109}
!5106 = !DILocalVariable(name: "addr", arg: 1, scope: !5099, file: !5100, line: 54, type: !5103)
!5107 = !DILocalVariable(name: "size", arg: 2, scope: !5099, file: !5100, line: 54, type: !285)
!5108 = !DILocalVariable(name: "offset", arg: 3, scope: !5099, file: !5100, line: 55, type: !285)
!5109 = !DILocalVariable(name: "val", scope: !5110, file: !5100, line: 58, type: !285)
!5110 = distinct !DILexicalBlock(scope: !5111, file: !5100, line: 57, column: 31)
!5111 = distinct !DILexicalBlock(scope: !5099, file: !5100, line: 57, column: 6)
!5112 = !DILocation(line: 54, column: 50, scope: !5099)
!5113 = !DILocation(line: 54, column: 70, scope: !5099)
!5114 = !DILocation(line: 55, column: 22, scope: !5099)
!5115 = !DILocation(line: 57, column: 6, scope: !5111)
!5116 = !DILocation(line: 57, column: 6, scope: !5099)
!5117 = !DILocation(line: 58, column: 3, scope: !5110)
!5118 = !DILocation(line: 58, column: 17, scope: !5110)
!5119 = !DILocation(line: 60, column: 7, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5110, file: !5100, line: 60, column: 7)
!5121 = !DILocation(line: 60, column: 7, scope: !5110)
!5122 = !DILocation(line: 61, column: 11, scope: !5120)
!5123 = !DILocation(line: 61, column: 4, scope: !5120)
!5124 = !DILocation(line: 63, column: 10, scope: !5110)
!5125 = !DILocation(line: 63, column: 9, scope: !5110)
!5126 = !DILocation(line: 63, column: 17, scope: !5110)
!5127 = !DILocation(line: 63, column: 15, scope: !5110)
!5128 = !DILocation(line: 63, column: 7, scope: !5110)
!5129 = !DILocation(line: 64, column: 10, scope: !5110)
!5130 = !DILocation(line: 64, column: 16, scope: !5110)
!5131 = !DILocation(line: 64, column: 29, scope: !5110)
!5132 = !DILocation(line: 64, column: 3, scope: !5110)
!5133 = !DILocation(line: 65, column: 2, scope: !5111)
!5134 = !DILocation(line: 67, column: 24, scope: !5099)
!5135 = !DILocation(line: 67, column: 30, scope: !5099)
!5136 = !DILocation(line: 67, column: 36, scope: !5099)
!5137 = !DILocation(line: 67, column: 9, scope: !5099)
!5138 = !DILocation(line: 67, column: 2, scope: !5099)
!5139 = !DILocation(line: 68, column: 1, scope: !5099)
!5140 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !1183, file: !1183, line: 502, type: !5141, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5143)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{!592, !46, !1180}
!5143 = !{!5144, !5145}
!5144 = !DILocalVariable(name: "cpu", arg: 1, scope: !5140, file: !1183, line: 502, type: !46)
!5145 = !DILocalVariable(name: "cpumask", arg: 2, scope: !5140, file: !1183, line: 502, type: !1180)
!5146 = !DILocation(line: 502, column: 50, scope: !5140)
!5147 = !DILocation(line: 502, column: 77, scope: !5140)
!5148 = !DILocation(line: 504, column: 9, scope: !5140)
!5149 = !DILocation(line: 504, column: 2, scope: !5140)
!5150 = distinct !DISubprogram(name: "cpumask_copy", scope: !1183, file: !1183, line: 737, type: !5151, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5153)
!5151 = !DISubroutineType(types: !5152)
!5152 = !{null, !5075, !1180}
!5153 = !{!5154, !5155}
!5154 = !DILocalVariable(name: "dstp", arg: 1, scope: !5150, file: !1183, line: 737, type: !5075)
!5155 = !DILocalVariable(name: "srcp", arg: 2, scope: !5150, file: !1183, line: 738, type: !1180)
!5156 = !DILocation(line: 737, column: 49, scope: !5150)
!5157 = !DILocation(line: 738, column: 27, scope: !5150)
!5158 = !DILocation(line: 740, column: 14, scope: !5150)
!5159 = !DILocation(line: 740, column: 34, scope: !5150)
!5160 = !DILocation(line: 740, column: 2, scope: !5150)
!5161 = !DILocation(line: 741, column: 1, scope: !5150)
!5162 = distinct !DISubprogram(name: "free_cpumask_var", scope: !1183, file: !1183, line: 946, type: !5163, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5165)
!5163 = !DISubroutineType(types: !5164)
!5164 = !{null, !5075}
!5165 = !{!5166}
!5166 = !DILocalVariable(name: "mask", arg: 1, scope: !5162, file: !1183, line: 946, type: !5075)
!5167 = !DILocation(line: 946, column: 51, scope: !5162)
!5168 = !DILocation(line: 948, column: 1, scope: !5162)
!5169 = distinct !DISubprogram(name: "cpumask_clear", scope: !1183, file: !1183, line: 552, type: !5163, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5170)
!5170 = !{!5171}
!5171 = !DILocalVariable(name: "dstp", arg: 1, scope: !5169, file: !1183, line: 552, type: !5075)
!5172 = !DILocation(line: 552, column: 50, scope: !5169)
!5173 = !DILocation(line: 554, column: 14, scope: !5169)
!5174 = !DILocation(line: 554, column: 2, scope: !5169)
!5175 = !DILocation(line: 555, column: 1, scope: !5169)
!5176 = distinct !DISubprogram(name: "variable__ffs", scope: !5177, file: !5177, line: 250, type: !5178, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5180)
!5177 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!285, !285}
!5180 = !{!5181}
!5181 = !DILocalVariable(name: "word", arg: 1, scope: !5176, file: !5177, line: 250, type: !285)
!5182 = !DILocation(line: 250, column: 66, scope: !5176)
!5183 = !DILocation(line: 254, column: 11, scope: !5176)
!5184 = !DILocation(line: 252, column: 2, scope: !5176)
!5185 = !{i64 323938}
!5186 = !DILocation(line: 255, column: 9, scope: !5176)
!5187 = !DILocation(line: 255, column: 2, scope: !5176)
!5188 = !DISubprogram(name: "_find_next_bit", scope: !5100, file: !5100, line: 11, type: !5101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5189 = distinct !DISubprogram(name: "_test_bit", scope: !5190, file: !5190, line: 139, type: !5191, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5196)
!5190 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5191 = !DISubroutineType(types: !5192)
!5192 = !{!592, !285, !5193}
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5195)
!5195 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !285)
!5196 = !{!5197, !5198}
!5197 = !DILocalVariable(name: "nr", arg: 1, scope: !5189, file: !5190, line: 139, type: !285)
!5198 = !DILocalVariable(name: "addr", arg: 2, scope: !5189, file: !5190, line: 139, type: !5193)
!5199 = !DILocation(line: 139, column: 25, scope: !5189)
!5200 = !DILocation(line: 139, column: 59, scope: !5189)
!5201 = !DILocation(line: 141, column: 25, scope: !5189)
!5202 = !DILocation(line: 141, column: 32, scope: !5189)
!5203 = !DILocation(line: 141, column: 30, scope: !5189)
!5204 = !DILocation(line: 141, column: 2, scope: !5189)
!5205 = !DILocation(line: 142, column: 23, scope: !5189)
!5206 = !DILocation(line: 142, column: 27, scope: !5189)
!5207 = !DILocation(line: 142, column: 9, scope: !5189)
!5208 = !DILocation(line: 142, column: 2, scope: !5189)
!5209 = distinct !DISubprogram(name: "cpumask_check", scope: !1183, file: !1183, line: 148, type: !5210, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5212)
!5210 = !DISubroutineType(types: !5211)
!5211 = !{!7, !7}
!5212 = !{!5213}
!5213 = !DILocalVariable(name: "cpu", arg: 1, scope: !5209, file: !1183, line: 148, type: !7)
!5214 = !DILocation(line: 148, column: 64, scope: !5209)
!5215 = !DILocation(line: 150, column: 20, scope: !5209)
!5216 = !DILocation(line: 150, column: 2, scope: !5209)
!5217 = !DILocation(line: 151, column: 9, scope: !5209)
!5218 = !DILocation(line: 151, column: 2, scope: !5209)
!5219 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5220, file: !5220, line: 66, type: !5221, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5226)
!5220 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5221 = !DISubroutineType(types: !5222)
!5222 = !{null, !5223, !282}
!5223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5224, size: 64)
!5224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5225)
!5225 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5226 = !{!5227, !5228}
!5227 = !DILocalVariable(name: "v", arg: 1, scope: !5219, file: !5220, line: 66, type: !5223)
!5228 = !DILocalVariable(name: "size", arg: 2, scope: !5219, file: !5220, line: 66, type: !282)
!5229 = !DILocation(line: 66, column: 73, scope: !5219)
!5230 = !DILocation(line: 66, column: 83, scope: !5219)
!5231 = !DILocation(line: 68, column: 19, scope: !5219)
!5232 = !DILocation(line: 68, column: 22, scope: !5219)
!5233 = !DILocation(line: 68, column: 2, scope: !5219)
!5234 = !DILocation(line: 69, column: 2, scope: !5219)
!5235 = !DILocation(line: 70, column: 1, scope: !5219)
!5236 = distinct !DISubprogram(name: "arch_test_bit", scope: !5177, file: !5177, line: 237, type: !5191, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5237)
!5237 = !{!5238, !5239}
!5238 = !DILocalVariable(name: "nr", arg: 1, scope: !5236, file: !5177, line: 237, type: !285)
!5239 = !DILocalVariable(name: "addr", arg: 2, scope: !5236, file: !5177, line: 237, type: !5193)
!5240 = !DILocation(line: 237, column: 29, scope: !5236)
!5241 = !DILocation(line: 237, column: 63, scope: !5236)
!5242 = !DILocation(line: 239, column: 30, scope: !5236)
!5243 = !DILocation(line: 239, column: 9, scope: !5236)
!5244 = !DILocation(line: 239, column: 54, scope: !5236)
!5245 = !DILocation(line: 239, column: 58, scope: !5236)
!5246 = !DILocation(line: 239, column: 36, scope: !5236)
!5247 = !DILocation(line: 240, column: 26, scope: !5236)
!5248 = !DILocation(line: 240, column: 30, scope: !5236)
!5249 = !DILocation(line: 240, column: 8, scope: !5236)
!5250 = !DILocation(line: 239, column: 2, scope: !5236)
!5251 = distinct !DISubprogram(name: "kasan_check_read", scope: !5252, file: !5252, line: 40, type: !5253, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5255)
!5252 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5253 = !DISubroutineType(types: !5254)
!5254 = !{!592, !5223, !7}
!5255 = !{!5256, !5257}
!5256 = !DILocalVariable(name: "p", arg: 1, scope: !5251, file: !5252, line: 40, type: !5223)
!5257 = !DILocalVariable(name: "size", arg: 2, scope: !5251, file: !5252, line: 40, type: !7)
!5258 = !DILocation(line: 40, column: 58, scope: !5251)
!5259 = !DILocation(line: 40, column: 74, scope: !5251)
!5260 = !DILocation(line: 42, column: 2, scope: !5251)
!5261 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5262, file: !5262, line: 229, type: !5263, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5265)
!5262 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5263 = !DISubroutineType(types: !5264)
!5264 = !{null, !5223, !282, !46}
!5265 = !{!5266, !5267, !5268}
!5266 = !DILocalVariable(name: "ptr", arg: 1, scope: !5261, file: !5262, line: 229, type: !5223)
!5267 = !DILocalVariable(name: "size", arg: 2, scope: !5261, file: !5262, line: 229, type: !282)
!5268 = !DILocalVariable(name: "type", arg: 3, scope: !5261, file: !5262, line: 230, type: !46)
!5269 = !DILocation(line: 229, column: 60, scope: !5261)
!5270 = !DILocation(line: 229, column: 72, scope: !5261)
!5271 = !DILocation(line: 230, column: 15, scope: !5261)
!5272 = !DILocation(line: 230, column: 23, scope: !5261)
!5273 = distinct !DISubprogram(name: "constant_test_bit", scope: !5177, file: !5177, line: 204, type: !5274, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5276)
!5274 = !DISubroutineType(types: !5275)
!5275 = !{!592, !271, !5193}
!5276 = !{!5277, !5278}
!5277 = !DILocalVariable(name: "nr", arg: 1, scope: !5273, file: !5177, line: 204, type: !271)
!5278 = !DILocalVariable(name: "addr", arg: 2, scope: !5273, file: !5177, line: 204, type: !5193)
!5279 = !DILocation(line: 204, column: 52, scope: !5273)
!5280 = !DILocation(line: 204, column: 86, scope: !5273)
!5281 = !DILocation(line: 206, column: 19, scope: !5273)
!5282 = !DILocation(line: 206, column: 22, scope: !5273)
!5283 = !DILocation(line: 206, column: 15, scope: !5273)
!5284 = !DILocation(line: 207, column: 4, scope: !5273)
!5285 = !DILocation(line: 207, column: 9, scope: !5273)
!5286 = !DILocation(line: 207, column: 12, scope: !5273)
!5287 = !DILocation(line: 206, column: 44, scope: !5273)
!5288 = !DILocation(line: 207, column: 37, scope: !5273)
!5289 = !DILocation(line: 206, column: 2, scope: !5273)
!5290 = distinct !DISubprogram(name: "variable_test_bit", scope: !5177, file: !5177, line: 224, type: !5274, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5291)
!5291 = !{!5292, !5293, !5294}
!5292 = !DILocalVariable(name: "nr", arg: 1, scope: !5290, file: !5177, line: 224, type: !271)
!5293 = !DILocalVariable(name: "addr", arg: 2, scope: !5290, file: !5177, line: 224, type: !5193)
!5294 = !DILocalVariable(name: "oldbit", scope: !5290, file: !5177, line: 226, type: !592)
!5295 = !DILocation(line: 224, column: 52, scope: !5290)
!5296 = !DILocation(line: 224, column: 86, scope: !5290)
!5297 = !DILocation(line: 226, column: 2, scope: !5290)
!5298 = !DILocation(line: 226, column: 7, scope: !5290)
!5299 = !DILocation(line: 231, column: 33, scope: !5290)
!5300 = !DILocation(line: 231, column: 46, scope: !5290)
!5301 = !DILocation(line: 228, column: 2, scope: !5290)
!5302 = !{i64 2147828863, i64 2147828937}
!5303 = !DILocation(line: 233, column: 9, scope: !5290)
!5304 = !DILocation(line: 234, column: 1, scope: !5290)
!5305 = !DILocation(line: 233, column: 2, scope: !5290)
!5306 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !1183, file: !1183, line: 140, type: !5307, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5309)
!5307 = !DISubroutineType(types: !5308)
!5308 = !{null, !7, !7}
!5309 = !{!5310, !5311}
!5310 = !DILocalVariable(name: "cpu", arg: 1, scope: !5306, file: !1183, line: 140, type: !7)
!5311 = !DILocalVariable(name: "bits", arg: 2, scope: !5306, file: !1183, line: 140, type: !7)
!5312 = !DILocation(line: 140, column: 60, scope: !5306)
!5313 = !DILocation(line: 140, column: 78, scope: !5306)
!5314 = !DILocation(line: 145, column: 1, scope: !5306)
!5315 = distinct !DISubprogram(name: "bitmap_copy", scope: !5316, file: !5316, line: 266, type: !5317, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5319)
!5316 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!5317 = !DISubroutineType(types: !5318)
!5318 = !{null, !1162, !5103, !7}
!5319 = !{!5320, !5321, !5322, !5323}
!5320 = !DILocalVariable(name: "dst", arg: 1, scope: !5315, file: !5316, line: 266, type: !1162)
!5321 = !DILocalVariable(name: "src", arg: 2, scope: !5315, file: !5316, line: 266, type: !5103)
!5322 = !DILocalVariable(name: "nbits", arg: 3, scope: !5315, file: !5316, line: 267, type: !7)
!5323 = !DILocalVariable(name: "len", scope: !5315, file: !5316, line: 269, type: !7)
!5324 = !DILocation(line: 266, column: 47, scope: !5315)
!5325 = !DILocation(line: 266, column: 73, scope: !5315)
!5326 = !DILocation(line: 267, column: 17, scope: !5315)
!5327 = !DILocation(line: 269, column: 2, scope: !5315)
!5328 = !DILocation(line: 269, column: 15, scope: !5315)
!5329 = !DILocation(line: 269, column: 21, scope: !5315)
!5330 = !DILocation(line: 271, column: 6, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5315, file: !5316, line: 271, column: 6)
!5332 = !DILocation(line: 271, column: 6, scope: !5315)
!5333 = !DILocation(line: 272, column: 11, scope: !5331)
!5334 = !DILocation(line: 272, column: 10, scope: !5331)
!5335 = !DILocation(line: 272, column: 4, scope: !5331)
!5336 = !DILocation(line: 272, column: 8, scope: !5331)
!5337 = !DILocation(line: 272, column: 3, scope: !5331)
!5338 = !DILocation(line: 274, column: 10, scope: !5331)
!5339 = !DILocation(line: 274, column: 15, scope: !5331)
!5340 = !DILocation(line: 274, column: 20, scope: !5331)
!5341 = !DILocation(line: 274, column: 3, scope: !5331)
!5342 = !DILocation(line: 275, column: 1, scope: !5315)
!5343 = distinct !DISubprogram(name: "bitmap_zero", scope: !5316, file: !5316, line: 246, type: !5344, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5346)
!5344 = !DISubroutineType(types: !5345)
!5345 = !{null, !1162, !7}
!5346 = !{!5347, !5348, !5349}
!5347 = !DILocalVariable(name: "dst", arg: 1, scope: !5343, file: !5316, line: 246, type: !1162)
!5348 = !DILocalVariable(name: "nbits", arg: 2, scope: !5343, file: !5316, line: 246, type: !7)
!5349 = !DILocalVariable(name: "len", scope: !5343, file: !5316, line: 248, type: !7)
!5350 = !DILocation(line: 246, column: 47, scope: !5343)
!5351 = !DILocation(line: 246, column: 65, scope: !5343)
!5352 = !DILocation(line: 248, column: 2, scope: !5343)
!5353 = !DILocation(line: 248, column: 15, scope: !5343)
!5354 = !DILocation(line: 248, column: 21, scope: !5343)
!5355 = !DILocation(line: 250, column: 6, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5343, file: !5316, line: 250, column: 6)
!5357 = !DILocation(line: 250, column: 6, scope: !5343)
!5358 = !DILocation(line: 251, column: 4, scope: !5356)
!5359 = !DILocation(line: 251, column: 8, scope: !5356)
!5360 = !DILocation(line: 251, column: 3, scope: !5356)
!5361 = !DILocation(line: 253, column: 10, scope: !5356)
!5362 = !DILocation(line: 253, column: 18, scope: !5356)
!5363 = !DILocation(line: 253, column: 3, scope: !5356)
!5364 = !DILocation(line: 254, column: 1, scope: !5343)
!5365 = !DISubprogram(name: "acpi_evaluate_integer", scope: !5366, file: !5366, line: 27, type: !5367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5366 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!5367 = !DISubroutineType(types: !5368)
!5368 = !{!2036, !1195, !5369, !5370, !5375}
!5369 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !1196, line: 423, baseType: !235)
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !1196, line: 956, size: 128, elements: !5372)
!5372 = !{!5373, !5374}
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5371, file: !1196, line: 957, baseType: !1081, size: 32)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5371, file: !1196, line: 958, baseType: !3099, size: 64, offset: 64)
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!5376 = !DISubprogram(name: "acpi_evaluation_failure_warn", scope: !1200, file: !1200, line: 1182, type: !5377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5377 = !DISubroutineType(types: !5378)
!5378 = !{null, !1195, !154, !2036}
!5379 = distinct !DISubprogram(name: "cpu_online", scope: !1183, file: !1183, line: 1080, type: !5380, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5382)
!5380 = !DISubroutineType(types: !5381)
!5381 = !{!592, !7}
!5382 = !{!5383}
!5383 = !DILocalVariable(name: "cpu", arg: 1, scope: !5379, file: !1183, line: 1080, type: !7)
!5384 = !DILocation(line: 1080, column: 44, scope: !5379)
!5385 = !DILocation(line: 1082, column: 26, scope: !5379)
!5386 = !DILocation(line: 1082, column: 9, scope: !5379)
!5387 = !DILocation(line: 1082, column: 2, scope: !5379)
!5388 = !DILocation(line: 305, column: 35, scope: !3177)
!5389 = !DILocation(line: 305, column: 47, scope: !3177)
!5390 = !DILocation(line: 305, column: 66, scope: !3177)
!5391 = !DILocation(line: 306, column: 15, scope: !3177)
!5392 = !DILocation(line: 308, column: 6, scope: !3191)
!5393 = !DILocation(line: 308, column: 13, scope: !3191)
!5394 = !DILocation(line: 308, column: 17, scope: !3191)
!5395 = !DILocation(line: 308, column: 36, scope: !3191)
!5396 = !DILocation(line: 308, column: 39, scope: !3191)
!5397 = !DILocation(line: 308, column: 46, scope: !3190)
!5398 = !DILocation(line: 308, column: 46, scope: !3189)
!5399 = !DILocation(line: 308, column: 46, scope: !3193)
!5400 = !DILocation(line: 308, column: 46, scope: !3195)
!5401 = !{i64 2153905488}
!5402 = !DILocation(line: 308, column: 43, scope: !3191)
!5403 = !DILocation(line: 308, column: 6, scope: !3177)
!5404 = !DILocation(line: 309, column: 10, scope: !3191)
!5405 = !DILocation(line: 309, column: 13, scope: !3191)
!5406 = !DILocation(line: 309, column: 3, scope: !3191)
!5407 = !DILocation(line: 310, column: 9, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !3177, file: !1192, line: 310, column: 9)
!5409 = !DILocation(line: 310, column: 9, scope: !3177)
!5410 = !DILocation(line: 310, column: 2, scope: !3177)
!5411 = !DILocation(line: 311, column: 1, scope: !3177)
!5412 = distinct !DISubprogram(name: "__acpi_processor_get_throttling", scope: !3, file: !3, line: 877, type: !3181, scopeLine: 878, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5413)
!5413 = !{!5414, !5415}
!5414 = !DILocalVariable(name: "data", arg: 1, scope: !5412, file: !3, line: 877, type: !307)
!5415 = !DILocalVariable(name: "pr", scope: !5412, file: !3, line: 879, type: !1190)
!5416 = !DILocation(line: 877, column: 51, scope: !5412)
!5417 = !DILocation(line: 879, column: 2, scope: !5412)
!5418 = !DILocation(line: 879, column: 25, scope: !5412)
!5419 = !DILocation(line: 879, column: 30, scope: !5412)
!5420 = !DILocation(line: 881, column: 9, scope: !5412)
!5421 = !DILocation(line: 881, column: 13, scope: !5412)
!5422 = !DILocation(line: 881, column: 24, scope: !5412)
!5423 = !DILocation(line: 881, column: 54, scope: !5412)
!5424 = !DILocation(line: 882, column: 1, scope: !5412)
!5425 = !DILocation(line: 881, column: 2, scope: !5412)
!5426 = distinct !DISubprogram(name: "is_percpu_thread", scope: !731, file: !731, line: 1795, type: !638, scopeLine: 1796, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5427 = !DILocation(line: 1798, column: 10, scope: !5426)
!5428 = !DILocation(line: 1798, column: 19, scope: !5426)
!5429 = !DILocation(line: 1798, column: 25, scope: !5426)
!5430 = !DILocation(line: 1798, column: 46, scope: !5426)
!5431 = !DILocation(line: 1799, column: 4, scope: !5426)
!5432 = !DILocation(line: 1799, column: 13, scope: !5426)
!5433 = !DILocation(line: 1799, column: 30, scope: !5426)
!5434 = !DILocation(line: 0, scope: !5426)
!5435 = !DILocation(line: 1798, column: 2, scope: !5426)
!5436 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !5437, file: !5437, line: 313, type: !5438, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5440)
!5437 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!5438 = !DISubroutineType(types: !5439)
!5439 = !{null, !154}
!5440 = !{!5441}
!5441 = !DILocalVariable(name: "op", arg: 1, scope: !5436, file: !5437, line: 313, type: !154)
!5442 = !DILocation(line: 313, column: 66, scope: !5436)
!5443 = !DILocation(line: 313, column: 72, scope: !5436)
!5444 = !DISubprogram(name: "work_on_cpu_key", scope: !558, file: !558, line: 704, type: !5445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5445 = !DISubroutineType(types: !5446)
!5446 = !{!271, !46, !3180, !307, !5447}
!5447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!5448 = distinct !DISubprogram(name: "get_current", scope: !5449, file: !5449, line: 39, type: !5450, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5452)
!5449 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5450 = !DISubroutineType(types: !5451)
!5451 = !{!2038}
!5452 = !{!5453, !5455, !5457}
!5453 = !DILocalVariable(name: "pscr_ret__", scope: !5454, file: !5449, line: 41, type: !2038)
!5454 = distinct !DILexicalBlock(scope: !5448, file: !5449, line: 41, column: 9)
!5455 = !DILocalVariable(name: "__vpp_verify", scope: !5456, file: !5449, line: 41, type: !514)
!5456 = distinct !DILexicalBlock(scope: !5454, file: !5449, line: 41, column: 9)
!5457 = !DILocalVariable(name: "pfo_val__", scope: !5458, file: !5449, line: 41, type: !399)
!5458 = distinct !DILexicalBlock(scope: !5454, file: !5449, line: 41, column: 9)
!5459 = !DILocation(line: 41, column: 9, scope: !5454)
!5460 = !DILocation(line: 41, column: 9, scope: !5456)
!5461 = !DILocation(line: 41, column: 9, scope: !5458)
!5462 = !{i64 2148561600}
!5463 = !DILocation(line: 41, column: 9, scope: !5448)
!5464 = !DILocation(line: 41, column: 2, scope: !5448)
!5465 = distinct !DISubprogram(name: "find_next_and_bit", scope: !5100, file: !5100, line: 83, type: !5466, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5468)
!5466 = !DISubroutineType(types: !5467)
!5467 = !{!285, !5103, !5103, !285, !285}
!5468 = !{!5469, !5470, !5471, !5472, !5473}
!5469 = !DILocalVariable(name: "addr1", arg: 1, scope: !5465, file: !5100, line: 83, type: !5103)
!5470 = !DILocalVariable(name: "addr2", arg: 2, scope: !5465, file: !5100, line: 84, type: !5103)
!5471 = !DILocalVariable(name: "size", arg: 3, scope: !5465, file: !5100, line: 84, type: !285)
!5472 = !DILocalVariable(name: "offset", arg: 4, scope: !5465, file: !5100, line: 85, type: !285)
!5473 = !DILocalVariable(name: "val", scope: !5474, file: !5100, line: 88, type: !285)
!5474 = distinct !DILexicalBlock(scope: !5475, file: !5100, line: 87, column: 31)
!5475 = distinct !DILexicalBlock(scope: !5465, file: !5100, line: 87, column: 6)
!5476 = !DILocation(line: 83, column: 54, scope: !5465)
!5477 = !DILocation(line: 84, column: 24, scope: !5465)
!5478 = !DILocation(line: 84, column: 45, scope: !5465)
!5479 = !DILocation(line: 85, column: 17, scope: !5465)
!5480 = !DILocation(line: 87, column: 6, scope: !5475)
!5481 = !DILocation(line: 87, column: 6, scope: !5465)
!5482 = !DILocation(line: 88, column: 3, scope: !5474)
!5483 = !DILocation(line: 88, column: 17, scope: !5474)
!5484 = !DILocation(line: 90, column: 7, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5474, file: !5100, line: 90, column: 7)
!5486 = !DILocation(line: 90, column: 7, scope: !5474)
!5487 = !DILocation(line: 91, column: 11, scope: !5485)
!5488 = !DILocation(line: 91, column: 4, scope: !5485)
!5489 = !DILocation(line: 93, column: 10, scope: !5474)
!5490 = !DILocation(line: 93, column: 9, scope: !5474)
!5491 = !DILocation(line: 93, column: 19, scope: !5474)
!5492 = !DILocation(line: 93, column: 18, scope: !5474)
!5493 = !DILocation(line: 93, column: 16, scope: !5474)
!5494 = !DILocation(line: 93, column: 27, scope: !5474)
!5495 = !DILocation(line: 93, column: 25, scope: !5474)
!5496 = !DILocation(line: 93, column: 7, scope: !5474)
!5497 = !DILocation(line: 94, column: 10, scope: !5474)
!5498 = !DILocation(line: 94, column: 16, scope: !5474)
!5499 = !DILocation(line: 94, column: 29, scope: !5474)
!5500 = !DILocation(line: 94, column: 3, scope: !5474)
!5501 = !DILocation(line: 95, column: 2, scope: !5475)
!5502 = !DILocation(line: 97, column: 28, scope: !5465)
!5503 = !DILocation(line: 97, column: 35, scope: !5465)
!5504 = !DILocation(line: 97, column: 42, scope: !5465)
!5505 = !DILocation(line: 97, column: 48, scope: !5465)
!5506 = !DILocation(line: 97, column: 9, scope: !5465)
!5507 = !DILocation(line: 97, column: 2, scope: !5465)
!5508 = !DILocation(line: 98, column: 1, scope: !5465)
!5509 = distinct !DISubprogram(name: "acpi_processor_throttling_notifier", scope: !3, file: !3, line: 198, type: !5510, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5512)
!5510 = !DISubroutineType(types: !5511)
!5511 = !{!46, !285, !307}
!5512 = !{!5513, !5514, !5515, !5517, !5518, !5519, !5520, !5521, !5522, !5525}
!5513 = !DILocalVariable(name: "event", arg: 1, scope: !5509, file: !3, line: 198, type: !285)
!5514 = !DILocalVariable(name: "data", arg: 2, scope: !5509, file: !3, line: 198, type: !307)
!5515 = !DILocalVariable(name: "p_tstate", scope: !5509, file: !3, line: 200, type: !5516)
!5516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!5517 = !DILocalVariable(name: "pr", scope: !5509, file: !3, line: 201, type: !1190)
!5518 = !DILocalVariable(name: "cpu", scope: !5509, file: !3, line: 202, type: !7)
!5519 = !DILocalVariable(name: "target_state", scope: !5509, file: !3, line: 203, type: !46)
!5520 = !DILocalVariable(name: "p_limit", scope: !5509, file: !3, line: 204, type: !3593)
!5521 = !DILocalVariable(name: "p_throttling", scope: !5509, file: !3, line: 205, type: !3312)
!5522 = !DILocalVariable(name: "__vpp_verify", scope: !5523, file: !3, line: 208, type: !514)
!5523 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 208, column: 7)
!5524 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 208, column: 7)
!5525 = !DILocalVariable(name: "__ptr", scope: !5526, file: !3, line: 208, type: !285)
!5526 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 208, column: 7)
!5527 = !DILocation(line: 198, column: 61, scope: !5509)
!5528 = !DILocation(line: 198, column: 74, scope: !5509)
!5529 = !DILocation(line: 200, column: 2, scope: !5509)
!5530 = !DILocation(line: 200, column: 28, scope: !5509)
!5531 = !DILocation(line: 200, column: 39, scope: !5509)
!5532 = !DILocation(line: 201, column: 2, scope: !5509)
!5533 = !DILocation(line: 201, column: 25, scope: !5509)
!5534 = !DILocation(line: 202, column: 2, scope: !5509)
!5535 = !DILocation(line: 202, column: 15, scope: !5509)
!5536 = !DILocation(line: 203, column: 2, scope: !5509)
!5537 = !DILocation(line: 203, column: 6, scope: !5509)
!5538 = !DILocation(line: 204, column: 2, scope: !5509)
!5539 = !DILocation(line: 204, column: 31, scope: !5509)
!5540 = !DILocation(line: 205, column: 2, scope: !5509)
!5541 = !DILocation(line: 205, column: 36, scope: !5509)
!5542 = !DILocation(line: 207, column: 8, scope: !5509)
!5543 = !DILocation(line: 207, column: 18, scope: !5509)
!5544 = !DILocation(line: 207, column: 6, scope: !5509)
!5545 = !DILocation(line: 208, column: 7, scope: !5524)
!5546 = !DILocation(line: 208, column: 7, scope: !5523)
!5547 = !DILocation(line: 208, column: 7, scope: !5526)
!5548 = !DILocation(line: 208, column: 7, scope: !5509)
!5549 = !DILocation(line: 208, column: 5, scope: !5509)
!5550 = !DILocation(line: 209, column: 7, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 209, column: 6)
!5552 = !DILocation(line: 209, column: 6, scope: !5509)
!5553 = !DILocation(line: 210, column: 3, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 210, column: 3)
!5555 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 210, column: 3)
!5556 = distinct !DILexicalBlock(scope: !5551, file: !3, line: 209, column: 11)
!5557 = !DILocation(line: 210, column: 3, scope: !5555)
!5558 = !DILocation(line: 211, column: 3, scope: !5556)
!5559 = !DILocation(line: 213, column: 7, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 213, column: 6)
!5561 = !DILocation(line: 213, column: 11, scope: !5560)
!5562 = !DILocation(line: 213, column: 17, scope: !5560)
!5563 = !DILocation(line: 213, column: 6, scope: !5509)
!5564 = !DILocation(line: 214, column: 3, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 214, column: 3)
!5566 = distinct !DILexicalBlock(scope: !5567, file: !3, line: 214, column: 3)
!5567 = distinct !DILexicalBlock(scope: !5560, file: !3, line: 213, column: 29)
!5568 = !DILocation(line: 214, column: 3, scope: !5566)
!5569 = !DILocation(line: 217, column: 3, scope: !5567)
!5570 = !DILocation(line: 219, column: 17, scope: !5509)
!5571 = !DILocation(line: 219, column: 27, scope: !5509)
!5572 = !DILocation(line: 219, column: 15, scope: !5509)
!5573 = !DILocation(line: 220, column: 19, scope: !5509)
!5574 = !DILocation(line: 220, column: 23, scope: !5509)
!5575 = !DILocation(line: 220, column: 15, scope: !5509)
!5576 = !DILocation(line: 221, column: 10, scope: !5509)
!5577 = !DILocation(line: 221, column: 2, scope: !5509)
!5578 = !DILocation(line: 227, column: 14, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 221, column: 17)
!5580 = !DILocation(line: 227, column: 18, scope: !5579)
!5581 = !DILocation(line: 227, column: 11, scope: !5579)
!5582 = !DILocation(line: 228, column: 7, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 228, column: 7)
!5584 = !DILocation(line: 228, column: 16, scope: !5583)
!5585 = !DILocation(line: 228, column: 24, scope: !5583)
!5586 = !DILocation(line: 228, column: 29, scope: !5583)
!5587 = !DILocation(line: 228, column: 27, scope: !5583)
!5588 = !DILocation(line: 228, column: 7, scope: !5579)
!5589 = !DILocation(line: 229, column: 19, scope: !5583)
!5590 = !DILocation(line: 229, column: 28, scope: !5583)
!5591 = !DILocation(line: 229, column: 36, scope: !5583)
!5592 = !DILocation(line: 229, column: 17, scope: !5583)
!5593 = !DILocation(line: 229, column: 4, scope: !5583)
!5594 = !DILocation(line: 230, column: 7, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 230, column: 7)
!5596 = !DILocation(line: 230, column: 16, scope: !5595)
!5597 = !DILocation(line: 230, column: 21, scope: !5595)
!5598 = !DILocation(line: 230, column: 26, scope: !5595)
!5599 = !DILocation(line: 230, column: 24, scope: !5595)
!5600 = !DILocation(line: 230, column: 7, scope: !5579)
!5601 = !DILocation(line: 231, column: 19, scope: !5595)
!5602 = !DILocation(line: 231, column: 28, scope: !5595)
!5603 = !DILocation(line: 231, column: 33, scope: !5595)
!5604 = !DILocation(line: 231, column: 17, scope: !5595)
!5605 = !DILocation(line: 231, column: 4, scope: !5595)
!5606 = !DILocation(line: 232, column: 7, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 232, column: 7)
!5608 = !DILocation(line: 232, column: 11, scope: !5607)
!5609 = !DILocation(line: 232, column: 39, scope: !5607)
!5610 = !DILocation(line: 232, column: 37, scope: !5607)
!5611 = !DILocation(line: 232, column: 7, scope: !5579)
!5612 = !DILocation(line: 233, column: 19, scope: !5607)
!5613 = !DILocation(line: 233, column: 23, scope: !5607)
!5614 = !DILocation(line: 233, column: 17, scope: !5607)
!5615 = !DILocation(line: 233, column: 4, scope: !5607)
!5616 = !DILocation(line: 234, column: 7, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 234, column: 7)
!5618 = !DILocation(line: 234, column: 23, scope: !5617)
!5619 = !DILocation(line: 234, column: 37, scope: !5617)
!5620 = !DILocation(line: 234, column: 20, scope: !5617)
!5621 = !DILocation(line: 234, column: 7, scope: !5579)
!5622 = !DILocation(line: 235, column: 4, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 235, column: 4)
!5624 = distinct !DILexicalBlock(scope: !5617, file: !3, line: 234, column: 50)
!5625 = !DILocation(line: 235, column: 4, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5623, file: !3, line: 235, column: 4)
!5627 = !DILocation(line: 236, column: 19, scope: !5624)
!5628 = !DILocation(line: 236, column: 33, scope: !5624)
!5629 = !DILocation(line: 236, column: 45, scope: !5624)
!5630 = !DILocation(line: 236, column: 17, scope: !5624)
!5631 = !DILocation(line: 237, column: 3, scope: !5624)
!5632 = !DILocation(line: 238, column: 28, scope: !5579)
!5633 = !DILocation(line: 238, column: 3, scope: !5579)
!5634 = !DILocation(line: 238, column: 13, scope: !5579)
!5635 = !DILocation(line: 238, column: 26, scope: !5579)
!5636 = !DILocation(line: 239, column: 3, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5638, file: !3, line: 239, column: 3)
!5638 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 239, column: 3)
!5639 = !DILocation(line: 239, column: 3, scope: !5638)
!5640 = !DILocation(line: 242, column: 3, scope: !5579)
!5641 = !DILocation(line: 248, column: 25, scope: !5579)
!5642 = !DILocation(line: 248, column: 3, scope: !5579)
!5643 = !DILocation(line: 248, column: 17, scope: !5579)
!5644 = !DILocation(line: 248, column: 23, scope: !5579)
!5645 = !DILocation(line: 249, column: 3, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5647, file: !3, line: 249, column: 3)
!5647 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 249, column: 3)
!5648 = !DILocation(line: 249, column: 3, scope: !5647)
!5649 = !DILocation(line: 252, column: 3, scope: !5579)
!5650 = !DILocation(line: 254, column: 3, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 254, column: 3)
!5652 = !DILocation(line: 254, column: 3, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5651, file: !3, line: 254, column: 3)
!5654 = !DILocation(line: 255, column: 3, scope: !5579)
!5655 = !DILocation(line: 258, column: 2, scope: !5509)
!5656 = !DILocation(line: 259, column: 1, scope: !5509)
!5657 = distinct !DISubprogram(name: "acpi_processor_throttling_fn", scope: !3, file: !3, line: 1042, type: !3181, scopeLine: 1043, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5658)
!5658 = !{!5659, !5660, !5662}
!5659 = !DILocalVariable(name: "data", arg: 1, scope: !5657, file: !3, line: 1042, type: !307)
!5660 = !DILocalVariable(name: "arg", scope: !5657, file: !3, line: 1044, type: !5661)
!5661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!5662 = !DILocalVariable(name: "pr", scope: !5657, file: !3, line: 1045, type: !1190)
!5663 = !DILocation(line: 1042, column: 48, scope: !5657)
!5664 = !DILocation(line: 1044, column: 2, scope: !5657)
!5665 = !DILocation(line: 1044, column: 40, scope: !5657)
!5666 = !DILocation(line: 1044, column: 46, scope: !5657)
!5667 = !DILocation(line: 1045, column: 2, scope: !5657)
!5668 = !DILocation(line: 1045, column: 25, scope: !5657)
!5669 = !DILocation(line: 1045, column: 30, scope: !5657)
!5670 = !DILocation(line: 1045, column: 35, scope: !5657)
!5671 = !DILocation(line: 1047, column: 9, scope: !5657)
!5672 = !DILocation(line: 1047, column: 13, scope: !5657)
!5673 = !DILocation(line: 1047, column: 24, scope: !5657)
!5674 = !DILocation(line: 1047, column: 54, scope: !5657)
!5675 = !DILocation(line: 1048, column: 4, scope: !5657)
!5676 = !DILocation(line: 1048, column: 9, scope: !5657)
!5677 = !DILocation(line: 1048, column: 23, scope: !5657)
!5678 = !DILocation(line: 1048, column: 28, scope: !5657)
!5679 = !DILocation(line: 1049, column: 1, scope: !5657)
!5680 = !DILocation(line: 1047, column: 2, scope: !5657)
!5681 = !DISubprogram(name: "_find_next_and_bit", scope: !5100, file: !5100, line: 13, type: !5466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5682 = !DISubprogram(name: "_printk", scope: !5683, file: !5683, line: 153, type: !5684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5683 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5684 = !DISubroutineType(types: !5685)
!5685 = !{!46, !154, null}
!5686 = !DISubprogram(name: "acpi_evaluate_object", scope: !5687, file: !5687, line: 549, type: !5688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5687 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!5688 = !DISubroutineType(types: !5689)
!5689 = !{!2036, !1195, !5369, !5370, !5690}
!5690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!5691 = !DISubprogram(name: "kfree", scope: !120, file: !120, line: 227, type: !5692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5692 = !DISubroutineType(types: !5693)
!5693 = !{null, !514}
!5694 = distinct !DISubprogram(name: "kmalloc_array", scope: !120, file: !120, line: 629, type: !5695, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5697)
!5695 = !DISubroutineType(types: !5696)
!5696 = !{!307, !282, !282, !1179}
!5697 = !{!5698, !5699, !5700, !5701}
!5698 = !DILocalVariable(name: "n", arg: 1, scope: !5694, file: !120, line: 629, type: !282)
!5699 = !DILocalVariable(name: "size", arg: 2, scope: !5694, file: !120, line: 629, type: !282)
!5700 = !DILocalVariable(name: "flags", arg: 3, scope: !5694, file: !120, line: 629, type: !1179)
!5701 = !DILocalVariable(name: "bytes", scope: !5694, file: !120, line: 631, type: !282)
!5702 = !DILocation(line: 629, column: 61, scope: !5694)
!5703 = !DILocation(line: 629, column: 71, scope: !5694)
!5704 = !DILocation(line: 629, column: 83, scope: !5694)
!5705 = !DILocation(line: 631, column: 2, scope: !5694)
!5706 = !DILocation(line: 631, column: 9, scope: !5694)
!5707 = !DILocation(line: 633, column: 6, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5694, file: !120, line: 633, column: 6)
!5709 = !DILocation(line: 633, column: 6, scope: !5694)
!5710 = !DILocation(line: 634, column: 3, scope: !5708)
!5711 = !DILocation(line: 635, column: 27, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5694, file: !120, line: 635, column: 6)
!5713 = !DILocation(line: 635, column: 6, scope: !5712)
!5714 = !DILocation(line: 635, column: 30, scope: !5712)
!5715 = !DILocation(line: 635, column: 54, scope: !5712)
!5716 = !DILocation(line: 635, column: 33, scope: !5712)
!5717 = !DILocation(line: 635, column: 6, scope: !5694)
!5718 = !DILocation(line: 636, column: 18, scope: !5712)
!5719 = !DILocation(line: 636, column: 25, scope: !5712)
!5720 = !DILocation(line: 636, column: 10, scope: !5712)
!5721 = !DILocation(line: 636, column: 3, scope: !5712)
!5722 = !DILocation(line: 637, column: 19, scope: !5694)
!5723 = !DILocation(line: 637, column: 26, scope: !5694)
!5724 = !DILocation(line: 637, column: 9, scope: !5694)
!5725 = !DILocation(line: 637, column: 2, scope: !5694)
!5726 = !DILocation(line: 638, column: 1, scope: !5694)
!5727 = !DISubprogram(name: "acpi_extract_package", scope: !5366, file: !5366, line: 24, type: !5728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5728 = !DISubroutineType(types: !5729)
!5729 = !{!2036, !3099, !5690, !5690}
!5730 = !DISubprogram(name: "acpi_handle_printk", scope: !1200, file: !1200, line: 1180, type: !5731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5731 = !DISubroutineType(types: !5732)
!5732 = !{null, !154, !1195, !154, null}
!5733 = !DISubprogram(name: "acpi_format_exception", scope: !5687, file: !5687, line: 430, type: !5734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5734 = !DISubroutineType(types: !5735)
!5735 = !{!154, !2036}
!5736 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5737, file: !5737, line: 51, type: !5738, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5740)
!5737 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!5738 = !DISubroutineType(types: !5739)
!5739 = !{!592, !592}
!5740 = !{!5741}
!5741 = !DILocalVariable(name: "overflow", arg: 1, scope: !5736, file: !5737, line: 51, type: !592)
!5742 = !DILocation(line: 51, column: 60, scope: !5736)
!5743 = !DILocation(line: 53, column: 9, scope: !5736)
!5744 = !DILocation(line: 53, column: 2, scope: !5736)
!5745 = distinct !DISubprogram(name: "kmalloc", scope: !120, file: !120, line: 591, type: !5746, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5748)
!5746 = !DISubroutineType(types: !5747)
!5747 = !{!307, !282, !1179}
!5748 = !{!5749, !5750, !5751}
!5749 = !DILocalVariable(name: "size", arg: 1, scope: !5745, file: !120, line: 591, type: !282)
!5750 = !DILocalVariable(name: "flags", arg: 2, scope: !5745, file: !120, line: 591, type: !1179)
!5751 = !DILocalVariable(name: "index", scope: !5752, file: !120, line: 594, type: !7)
!5752 = distinct !DILexicalBlock(scope: !5753, file: !120, line: 593, column: 42)
!5753 = distinct !DILexicalBlock(scope: !5745, file: !120, line: 593, column: 6)
!5754 = !DILocation(line: 591, column: 61, scope: !5745)
!5755 = !DILocation(line: 591, column: 73, scope: !5745)
!5756 = !DILocation(line: 593, column: 27, scope: !5753)
!5757 = !DILocation(line: 593, column: 6, scope: !5753)
!5758 = !DILocation(line: 593, column: 33, scope: !5753)
!5759 = !DILocation(line: 593, column: 36, scope: !5753)
!5760 = !DILocation(line: 593, column: 6, scope: !5745)
!5761 = !DILocation(line: 594, column: 3, scope: !5752)
!5762 = !DILocation(line: 594, column: 16, scope: !5752)
!5763 = !DILocation(line: 596, column: 7, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5752, file: !120, line: 596, column: 7)
!5765 = !DILocation(line: 596, column: 12, scope: !5764)
!5766 = !DILocation(line: 596, column: 7, scope: !5752)
!5767 = !DILocation(line: 597, column: 25, scope: !5764)
!5768 = !DILocation(line: 597, column: 31, scope: !5764)
!5769 = !DILocation(line: 597, column: 11, scope: !5764)
!5770 = !DILocation(line: 597, column: 4, scope: !5764)
!5771 = !DILocation(line: 599, column: 11, scope: !5752)
!5772 = !DILocation(line: 599, column: 9, scope: !5752)
!5773 = !DILocation(line: 601, column: 33, scope: !5752)
!5774 = !DILocation(line: 601, column: 40, scope: !5752)
!5775 = !DILocation(line: 601, column: 20, scope: !5752)
!5776 = !DILocation(line: 601, column: 5, scope: !5752)
!5777 = !DILocation(line: 601, column: 51, scope: !5752)
!5778 = !DILocation(line: 602, column: 5, scope: !5752)
!5779 = !DILocation(line: 602, column: 12, scope: !5752)
!5780 = !DILocation(line: 600, column: 10, scope: !5752)
!5781 = !DILocation(line: 600, column: 3, scope: !5752)
!5782 = !DILocation(line: 603, column: 2, scope: !5753)
!5783 = !DILocation(line: 604, column: 19, scope: !5745)
!5784 = !DILocation(line: 604, column: 25, scope: !5745)
!5785 = !DILocation(line: 604, column: 9, scope: !5745)
!5786 = !DILocation(line: 604, column: 2, scope: !5745)
!5787 = !DILocation(line: 605, column: 1, scope: !5745)
!5788 = !DISubprogram(name: "__kmalloc", scope: !120, file: !120, line: 488, type: !5746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5789 = !DISubprogram(name: "kmalloc_large", scope: !120, file: !120, line: 531, type: !5746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5790 = distinct !DISubprogram(name: "__kmalloc_index", scope: !120, file: !120, line: 444, type: !5791, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5793)
!5791 = !DISubroutineType(types: !5792)
!5792 = !{!7, !282, !592}
!5793 = !{!5794, !5795}
!5794 = !DILocalVariable(name: "size", arg: 1, scope: !5790, file: !120, line: 444, type: !282)
!5795 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5790, file: !120, line: 445, type: !592)
!5796 = !DILocation(line: 444, column: 60, scope: !5790)
!5797 = !DILocation(line: 445, column: 16, scope: !5790)
!5798 = !DILocation(line: 447, column: 7, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 447, column: 6)
!5800 = !DILocation(line: 447, column: 6, scope: !5790)
!5801 = !DILocation(line: 448, column: 3, scope: !5799)
!5802 = !DILocation(line: 450, column: 6, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 450, column: 6)
!5804 = !DILocation(line: 450, column: 11, scope: !5803)
!5805 = !DILocation(line: 450, column: 6, scope: !5790)
!5806 = !DILocation(line: 451, column: 3, scope: !5803)
!5807 = !DILocation(line: 453, column: 32, scope: !5808)
!5808 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 453, column: 6)
!5809 = !DILocation(line: 453, column: 37, scope: !5808)
!5810 = !DILocation(line: 453, column: 42, scope: !5808)
!5811 = !DILocation(line: 453, column: 45, scope: !5808)
!5812 = !DILocation(line: 453, column: 50, scope: !5808)
!5813 = !DILocation(line: 453, column: 6, scope: !5790)
!5814 = !DILocation(line: 454, column: 3, scope: !5808)
!5815 = !DILocation(line: 455, column: 32, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 455, column: 6)
!5817 = !DILocation(line: 455, column: 37, scope: !5816)
!5818 = !DILocation(line: 455, column: 43, scope: !5816)
!5819 = !DILocation(line: 455, column: 46, scope: !5816)
!5820 = !DILocation(line: 455, column: 51, scope: !5816)
!5821 = !DILocation(line: 455, column: 6, scope: !5790)
!5822 = !DILocation(line: 456, column: 3, scope: !5816)
!5823 = !DILocation(line: 457, column: 6, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 457, column: 6)
!5825 = !DILocation(line: 457, column: 11, scope: !5824)
!5826 = !DILocation(line: 457, column: 6, scope: !5790)
!5827 = !DILocation(line: 457, column: 26, scope: !5824)
!5828 = !DILocation(line: 458, column: 6, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 458, column: 6)
!5830 = !DILocation(line: 458, column: 11, scope: !5829)
!5831 = !DILocation(line: 458, column: 6, scope: !5790)
!5832 = !DILocation(line: 458, column: 26, scope: !5829)
!5833 = !DILocation(line: 459, column: 6, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 459, column: 6)
!5835 = !DILocation(line: 459, column: 11, scope: !5834)
!5836 = !DILocation(line: 459, column: 6, scope: !5790)
!5837 = !DILocation(line: 459, column: 26, scope: !5834)
!5838 = !DILocation(line: 460, column: 6, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 460, column: 6)
!5840 = !DILocation(line: 460, column: 11, scope: !5839)
!5841 = !DILocation(line: 460, column: 6, scope: !5790)
!5842 = !DILocation(line: 460, column: 26, scope: !5839)
!5843 = !DILocation(line: 461, column: 6, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 461, column: 6)
!5845 = !DILocation(line: 461, column: 11, scope: !5844)
!5846 = !DILocation(line: 461, column: 6, scope: !5790)
!5847 = !DILocation(line: 461, column: 26, scope: !5844)
!5848 = !DILocation(line: 462, column: 6, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 462, column: 6)
!5850 = !DILocation(line: 462, column: 11, scope: !5849)
!5851 = !DILocation(line: 462, column: 6, scope: !5790)
!5852 = !DILocation(line: 462, column: 26, scope: !5849)
!5853 = !DILocation(line: 463, column: 6, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 463, column: 6)
!5855 = !DILocation(line: 463, column: 11, scope: !5854)
!5856 = !DILocation(line: 463, column: 6, scope: !5790)
!5857 = !DILocation(line: 463, column: 26, scope: !5854)
!5858 = !DILocation(line: 464, column: 6, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 464, column: 6)
!5860 = !DILocation(line: 464, column: 11, scope: !5859)
!5861 = !DILocation(line: 464, column: 6, scope: !5790)
!5862 = !DILocation(line: 464, column: 26, scope: !5859)
!5863 = !DILocation(line: 465, column: 6, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 465, column: 6)
!5865 = !DILocation(line: 465, column: 11, scope: !5864)
!5866 = !DILocation(line: 465, column: 6, scope: !5790)
!5867 = !DILocation(line: 465, column: 26, scope: !5864)
!5868 = !DILocation(line: 466, column: 6, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 466, column: 6)
!5870 = !DILocation(line: 466, column: 11, scope: !5869)
!5871 = !DILocation(line: 466, column: 6, scope: !5790)
!5872 = !DILocation(line: 466, column: 26, scope: !5869)
!5873 = !DILocation(line: 467, column: 6, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 467, column: 6)
!5875 = !DILocation(line: 467, column: 11, scope: !5874)
!5876 = !DILocation(line: 467, column: 6, scope: !5790)
!5877 = !DILocation(line: 467, column: 26, scope: !5874)
!5878 = !DILocation(line: 468, column: 6, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 468, column: 6)
!5880 = !DILocation(line: 468, column: 11, scope: !5879)
!5881 = !DILocation(line: 468, column: 6, scope: !5790)
!5882 = !DILocation(line: 468, column: 26, scope: !5879)
!5883 = !DILocation(line: 469, column: 6, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 469, column: 6)
!5885 = !DILocation(line: 469, column: 11, scope: !5884)
!5886 = !DILocation(line: 469, column: 6, scope: !5790)
!5887 = !DILocation(line: 469, column: 26, scope: !5884)
!5888 = !DILocation(line: 470, column: 6, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 470, column: 6)
!5890 = !DILocation(line: 470, column: 11, scope: !5889)
!5891 = !DILocation(line: 470, column: 6, scope: !5790)
!5892 = !DILocation(line: 470, column: 26, scope: !5889)
!5893 = !DILocation(line: 471, column: 6, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 471, column: 6)
!5895 = !DILocation(line: 471, column: 11, scope: !5894)
!5896 = !DILocation(line: 471, column: 6, scope: !5790)
!5897 = !DILocation(line: 471, column: 26, scope: !5894)
!5898 = !DILocation(line: 472, column: 6, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 472, column: 6)
!5900 = !DILocation(line: 472, column: 11, scope: !5899)
!5901 = !DILocation(line: 472, column: 6, scope: !5790)
!5902 = !DILocation(line: 472, column: 26, scope: !5899)
!5903 = !DILocation(line: 473, column: 6, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 473, column: 6)
!5905 = !DILocation(line: 473, column: 11, scope: !5904)
!5906 = !DILocation(line: 473, column: 6, scope: !5790)
!5907 = !DILocation(line: 473, column: 26, scope: !5904)
!5908 = !DILocation(line: 474, column: 6, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 474, column: 6)
!5910 = !DILocation(line: 474, column: 11, scope: !5909)
!5911 = !DILocation(line: 474, column: 6, scope: !5790)
!5912 = !DILocation(line: 474, column: 27, scope: !5909)
!5913 = !DILocation(line: 475, column: 6, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 475, column: 6)
!5915 = !DILocation(line: 475, column: 11, scope: !5914)
!5916 = !DILocation(line: 475, column: 6, scope: !5790)
!5917 = !DILocation(line: 475, column: 32, scope: !5914)
!5918 = !DILocation(line: 477, column: 50, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5790, file: !120, line: 477, column: 6)
!5920 = !DILocation(line: 477, column: 6, scope: !5790)
!5921 = !DILocation(line: 478, column: 3, scope: !5919)
!5922 = !DILocation(line: 478, column: 3, scope: !5923)
!5923 = distinct !DILexicalBlock(scope: !5924, file: !120, line: 478, column: 3)
!5924 = distinct !DILexicalBlock(scope: !5919, file: !120, line: 478, column: 3)
!5925 = !{i32 -2142574200}
!5926 = !DILocation(line: 478, column: 3, scope: !5924)
!5927 = !DILocation(line: 480, column: 3, scope: !5919)
!5928 = !DILocation(line: 480, column: 3, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5919, file: !120, line: 480, column: 3)
!5930 = !DILocation(line: 480, column: 3, scope: !5931)
!5931 = distinct !DILexicalBlock(scope: !5929, file: !120, line: 480, column: 3)
!5932 = !DILocation(line: 480, column: 3, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5929, file: !120, line: 480, column: 3)
!5934 = !{i64 2152393299, i64 2152393328, i64 2152393374, i64 2152393432, i64 2152393486, i64 2152393540, i64 2152393595, i64 2152393626}
!5935 = !DILocation(line: 483, column: 2, scope: !5790)
!5936 = !DILocation(line: 484, column: 1, scope: !5790)
!5937 = !DISubprogram(name: "kmalloc_trace", scope: !120, file: !120, line: 525, type: !5938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5938 = !DISubroutineType(types: !5939)
!5939 = !{!307, !5940, !1179, !282}
!5940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5941, size: 64)
!5941 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5942, line: 11, flags: DIFlagFwdDecl)
!5942 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5943 = distinct !DISubprogram(name: "kmalloc_type", scope: !120, file: !120, line: 401, type: !5944, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5946)
!5944 = !DISubroutineType(types: !5945)
!5945 = !{!119, !1179, !285}
!5946 = !{!5947, !5948}
!5947 = !DILocalVariable(name: "flags", arg: 1, scope: !5943, file: !120, line: 401, type: !1179)
!5948 = !DILocalVariable(name: "caller", arg: 2, scope: !5943, file: !120, line: 401, type: !285)
!5949 = !DILocation(line: 401, column: 67, scope: !5943)
!5950 = !DILocation(line: 401, column: 88, scope: !5943)
!5951 = !DILocation(line: 407, column: 6, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5943, file: !120, line: 407, column: 6)
!5953 = !DILocation(line: 407, column: 6, scope: !5943)
!5954 = !DILocation(line: 413, column: 3, scope: !5952)
!5955 = !DILocation(line: 423, column: 38, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5943, file: !120, line: 423, column: 6)
!5957 = !DILocation(line: 423, column: 44, scope: !5956)
!5958 = !DILocation(line: 423, column: 6, scope: !5943)
!5959 = !DILocation(line: 424, column: 3, scope: !5956)
!5960 = !DILocation(line: 426, column: 3, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !5943, file: !120, line: 425, column: 6)
!5962 = !DILocation(line: 429, column: 1, scope: !5943)
!5963 = !DISubprogram(name: "__compiletime_assert_196", scope: !120, file: !120, line: 478, type: !1176, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5964 = !DISubprogram(name: "__request_region", scope: !5965, file: !5965, line: 278, type: !5966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5965 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!5966 = !DISubroutineType(types: !5967)
!5967 = !{!5968, !5968, !5972, !5972, !154, !46}
!5968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5969, size: 64)
!5969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !5965, line: 21, size: 512, elements: !5970)
!5970 = !{!5971, !5973, !5974, !5975, !5976, !5977, !5978, !5979}
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5969, file: !5965, line: 22, baseType: !5972, size: 64)
!5972 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !136, line: 164, baseType: !2857)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5969, file: !5965, line: 23, baseType: !5972, size: 64, offset: 64)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5969, file: !5965, line: 24, baseType: !154, size: 64, offset: 128)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5969, file: !5965, line: 25, baseType: !285, size: 64, offset: 192)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5969, file: !5965, line: 26, baseType: !285, size: 64, offset: 256)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5969, file: !5965, line: 27, baseType: !5968, size: 64, offset: 320)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !5969, file: !5965, line: 27, baseType: !5968, size: 64, offset: 384)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !5969, file: !5965, line: 27, baseType: !5968, size: 64, offset: 448)
!5980 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5981, file: !5981, line: 70, type: !1176, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5981 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!5982 = !DILocation(line: 72, column: 2, scope: !5980)
!5983 = !DILocation(line: 73, column: 1, scope: !5980)
!5984 = distinct !DISubprogram(name: "__inl", scope: !5985, file: !5985, line: 24, type: !5986, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5988)
!5985 = !DIFile(filename: "./arch/x86/include/asm/shared/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d5fb8fb51b7511acb38d36f1b825226")
!5986 = !DISubroutineType(types: !5987)
!5987 = !{!1081, !203}
!5988 = !{!5989, !5990}
!5989 = !DILocalVariable(name: "port", arg: 1, scope: !5984, file: !5985, line: 24, type: !203)
!5990 = !DILocalVariable(name: "value", scope: !5984, file: !5985, line: 24, type: !1081)
!5991 = !DILocation(line: 24, column: 1, scope: !5984)
!5992 = !{i64 2153638098}
!5993 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !5981, file: !5981, line: 75, type: !1176, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5994 = !DILocation(line: 77, column: 2, scope: !5993)
!5995 = !DILocation(line: 78, column: 1, scope: !5993)
!5996 = distinct !DISubprogram(name: "native_irq_disable", scope: !5981, file: !5981, line: 35, type: !1176, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5997 = !DILocation(line: 37, column: 2, scope: !5996)
!5998 = !{i64 1908905}
!5999 = !DILocation(line: 38, column: 1, scope: !5996)
!6000 = distinct !DISubprogram(name: "native_irq_enable", scope: !5981, file: !5981, line: 40, type: !1176, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6001 = !DILocation(line: 42, column: 2, scope: !6000)
!6002 = !{i64 1908997}
!6003 = !DILocation(line: 43, column: 1, scope: !6000)
!6004 = distinct !DISubprogram(name: "__outl", scope: !5985, file: !5985, line: 24, type: !6005, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6007)
!6005 = !DISubroutineType(types: !6006)
!6006 = !{null, !1081, !203}
!6007 = !{!6008, !6009}
!6008 = !DILocalVariable(name: "value", arg: 1, scope: !6004, file: !5985, line: 24, type: !1081)
!6009 = !DILocalVariable(name: "port", arg: 2, scope: !6004, file: !5985, line: 24, type: !203)
!6010 = !DILocation(line: 24, column: 1, scope: !6004)
!6011 = !{i64 2153637902}
!6012 = distinct !DISubprogram(name: "acpi_read_throttling_status", scope: !3, file: !3, line: 749, type: !6013, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6015)
!6013 = !DISubroutineType(types: !6014)
!6014 = !{!46, !1190, !1791}
!6015 = !{!6016, !6017, !6018, !6019, !6020, !6021, !6022, !6023}
!6016 = !DILocalVariable(name: "pr", arg: 1, scope: !6012, file: !3, line: 749, type: !1190)
!6017 = !DILocalVariable(name: "value", arg: 2, scope: !6012, file: !3, line: 750, type: !1791)
!6018 = !DILocalVariable(name: "bit_width", scope: !6012, file: !3, line: 752, type: !1081)
!6019 = !DILocalVariable(name: "bit_offset", scope: !6012, file: !3, line: 752, type: !1081)
!6020 = !DILocalVariable(name: "ptc_value", scope: !6012, file: !3, line: 753, type: !1081)
!6021 = !DILocalVariable(name: "ptc_mask", scope: !6012, file: !3, line: 754, type: !399)
!6022 = !DILocalVariable(name: "throttling", scope: !6012, file: !3, line: 755, type: !3312)
!6023 = !DILocalVariable(name: "ret", scope: !6012, file: !3, line: 756, type: !46)
!6024 = !DILocation(line: 749, column: 63, scope: !6012)
!6025 = !DILocation(line: 750, column: 11, scope: !6012)
!6026 = !DILocation(line: 752, column: 2, scope: !6012)
!6027 = !DILocation(line: 752, column: 6, scope: !6012)
!6028 = !DILocation(line: 752, column: 17, scope: !6012)
!6029 = !DILocation(line: 753, column: 2, scope: !6012)
!6030 = !DILocation(line: 753, column: 6, scope: !6012)
!6031 = !DILocation(line: 754, column: 2, scope: !6012)
!6032 = !DILocation(line: 754, column: 6, scope: !6012)
!6033 = !DILocation(line: 755, column: 2, scope: !6012)
!6034 = !DILocation(line: 755, column: 36, scope: !6012)
!6035 = !DILocation(line: 756, column: 2, scope: !6012)
!6036 = !DILocation(line: 756, column: 6, scope: !6012)
!6037 = !DILocation(line: 758, column: 16, scope: !6012)
!6038 = !DILocation(line: 758, column: 20, scope: !6012)
!6039 = !DILocation(line: 758, column: 13, scope: !6012)
!6040 = !DILocation(line: 759, column: 10, scope: !6012)
!6041 = !DILocation(line: 759, column: 22, scope: !6012)
!6042 = !DILocation(line: 759, column: 38, scope: !6012)
!6043 = !DILocation(line: 759, column: 2, scope: !6012)
!6044 = !DILocation(line: 761, column: 15, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !6012, file: !3, line: 759, column: 48)
!6046 = !DILocation(line: 761, column: 27, scope: !6045)
!6047 = !DILocation(line: 761, column: 43, scope: !6045)
!6048 = !DILocation(line: 761, column: 13, scope: !6045)
!6049 = !DILocation(line: 762, column: 16, scope: !6045)
!6050 = !DILocation(line: 762, column: 28, scope: !6045)
!6051 = !DILocation(line: 762, column: 44, scope: !6045)
!6052 = !DILocation(line: 762, column: 14, scope: !6045)
!6053 = !DILocation(line: 764, column: 39, scope: !6045)
!6054 = !DILocation(line: 764, column: 51, scope: !6045)
!6055 = !DILocation(line: 765, column: 7, scope: !6045)
!6056 = !DILocation(line: 766, column: 14, scope: !6045)
!6057 = !DILocation(line: 766, column: 26, scope: !6045)
!6058 = !DILocation(line: 766, column: 24, scope: !6045)
!6059 = !DILocation(line: 764, column: 3, scope: !6045)
!6060 = !DILocation(line: 767, column: 20, scope: !6045)
!6061 = !DILocation(line: 767, column: 17, scope: !6045)
!6062 = !DILocation(line: 767, column: 31, scope: !6045)
!6063 = !DILocation(line: 767, column: 14, scope: !6045)
!6064 = !DILocation(line: 767, column: 12, scope: !6045)
!6065 = !DILocation(line: 768, column: 20, scope: !6045)
!6066 = !DILocation(line: 768, column: 33, scope: !6045)
!6067 = !DILocation(line: 768, column: 30, scope: !6045)
!6068 = !DILocation(line: 768, column: 19, scope: !6045)
!6069 = !DILocation(line: 768, column: 47, scope: !6045)
!6070 = !DILocation(line: 768, column: 45, scope: !6045)
!6071 = !DILocation(line: 768, column: 4, scope: !6045)
!6072 = !DILocation(line: 768, column: 10, scope: !6045)
!6073 = !DILocation(line: 769, column: 7, scope: !6045)
!6074 = !DILocation(line: 770, column: 3, scope: !6045)
!6075 = !DILocation(line: 772, column: 31, scope: !6045)
!6076 = !DILocation(line: 772, column: 9, scope: !6045)
!6077 = !DILocation(line: 772, column: 7, scope: !6045)
!6078 = !DILocation(line: 773, column: 3, scope: !6045)
!6079 = !DILocation(line: 775, column: 3, scope: !6080)
!6080 = distinct !DILexicalBlock(scope: !6045, file: !3, line: 775, column: 3)
!6081 = !DILocation(line: 775, column: 3, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !6080, file: !3, line: 775, column: 3)
!6083 = !DILocation(line: 777, column: 2, scope: !6045)
!6084 = !DILocation(line: 778, column: 9, scope: !6012)
!6085 = !DILocation(line: 779, column: 1, scope: !6012)
!6086 = !DILocation(line: 778, column: 2, scope: !6012)
!6087 = distinct !DISubprogram(name: "acpi_get_throttling_state", scope: !3, file: !3, line: 814, type: !6088, scopeLine: 816, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6090)
!6088 = !DISubroutineType(types: !6089)
!6089 = !{!46, !1190, !399}
!6090 = !{!6091, !6092, !6093, !6094}
!6091 = !DILocalVariable(name: "pr", arg: 1, scope: !6087, file: !3, line: 814, type: !1190)
!6092 = !DILocalVariable(name: "value", arg: 2, scope: !6087, file: !3, line: 815, type: !399)
!6093 = !DILocalVariable(name: "i", scope: !6087, file: !3, line: 817, type: !46)
!6094 = !DILocalVariable(name: "tx", scope: !6095, file: !3, line: 820, type: !1307)
!6095 = distinct !DILexicalBlock(scope: !6096, file: !3, line: 819, column: 51)
!6096 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 819, column: 2)
!6097 = distinct !DILexicalBlock(scope: !6087, file: !3, line: 819, column: 2)
!6098 = !DILocation(line: 814, column: 61, scope: !6087)
!6099 = !DILocation(line: 815, column: 9, scope: !6087)
!6100 = !DILocation(line: 817, column: 2, scope: !6087)
!6101 = !DILocation(line: 817, column: 6, scope: !6087)
!6102 = !DILocation(line: 819, column: 9, scope: !6097)
!6103 = !DILocation(line: 819, column: 7, scope: !6097)
!6104 = !DILocation(line: 819, column: 14, scope: !6096)
!6105 = !DILocation(line: 819, column: 18, scope: !6096)
!6106 = !DILocation(line: 819, column: 22, scope: !6096)
!6107 = !DILocation(line: 819, column: 33, scope: !6096)
!6108 = !DILocation(line: 819, column: 16, scope: !6096)
!6109 = !DILocation(line: 819, column: 2, scope: !6097)
!6110 = !DILocation(line: 820, column: 3, scope: !6095)
!6111 = !DILocation(line: 820, column: 33, scope: !6095)
!6112 = !DILocation(line: 821, column: 41, scope: !6095)
!6113 = !DILocation(line: 821, column: 45, scope: !6095)
!6114 = !DILocation(line: 822, column: 13, scope: !6095)
!6115 = !DILocation(line: 822, column: 24, scope: !6095)
!6116 = !DILocation(line: 823, column: 7, scope: !6117)
!6117 = distinct !DILexicalBlock(scope: !6095, file: !3, line: 823, column: 7)
!6118 = !DILocation(line: 823, column: 11, scope: !6117)
!6119 = !DILocation(line: 823, column: 22, scope: !6117)
!6120 = !DILocation(line: 823, column: 19, scope: !6117)
!6121 = !DILocation(line: 823, column: 7, scope: !6095)
!6122 = !DILocation(line: 824, column: 11, scope: !6117)
!6123 = !DILocation(line: 824, column: 4, scope: !6117)
!6124 = !DILocation(line: 825, column: 2, scope: !6096)
!6125 = !DILocation(line: 825, column: 2, scope: !6095)
!6126 = !DILocation(line: 819, column: 47, scope: !6096)
!6127 = !DILocation(line: 819, column: 2, scope: !6096)
!6128 = distinct !{!6128, !6109, !6129, !3401, !3402}
!6129 = !DILocation(line: 825, column: 2, scope: !6097)
!6130 = !DILocation(line: 826, column: 2, scope: !6087)
!6131 = !DILocation(line: 827, column: 1, scope: !6087)
!6132 = !DISubprogram(name: "acpi_os_read_port", scope: !6133, file: !6133, line: 267, type: !6134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6133 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!6134 = !DISubroutineType(types: !6135)
!6135 = !{!2036, !3140, !2020, !1081}
!6136 = distinct !DISubprogram(name: "acpi_throttling_rdmsr", scope: !3, file: !3, line: 698, type: !6137, scopeLine: 699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6139)
!6137 = !DISubroutineType(types: !6138)
!6138 = !{!46, !1791}
!6139 = !{!6140, !6141, !6142, !6143, !6144, !6145, !6148, !6150, !6152, !6155}
!6140 = !DILocalVariable(name: "value", arg: 1, scope: !6136, file: !3, line: 698, type: !1791)
!6141 = !DILocalVariable(name: "msr_high", scope: !6136, file: !3, line: 700, type: !399)
!6142 = !DILocalVariable(name: "msr_low", scope: !6136, file: !3, line: 700, type: !399)
!6143 = !DILocalVariable(name: "msr", scope: !6136, file: !3, line: 701, type: !399)
!6144 = !DILocalVariable(name: "ret", scope: !6136, file: !3, line: 702, type: !46)
!6145 = !DILocalVariable(name: "pscr_ret__", scope: !6146, file: !3, line: 704, type: !195)
!6146 = distinct !DILexicalBlock(scope: !6147, file: !3, line: 704, column: 7)
!6147 = distinct !DILexicalBlock(scope: !6136, file: !3, line: 704, column: 6)
!6148 = !DILocalVariable(name: "__vpp_verify", scope: !6149, file: !3, line: 704, type: !514)
!6149 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 704, column: 7)
!6150 = !DILocalVariable(name: "pfo_val__", scope: !6151, file: !3, line: 704, type: !193)
!6151 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 704, column: 7)
!6152 = !DILocalVariable(name: "__err", scope: !6153, file: !3, line: 710, type: !46)
!6153 = distinct !DILexicalBlock(scope: !6154, file: !3, line: 710, column: 3)
!6154 = distinct !DILexicalBlock(scope: !6147, file: !3, line: 707, column: 9)
!6155 = !DILocalVariable(name: "__val", scope: !6153, file: !3, line: 710, type: !399)
!6156 = !DILocation(line: 698, column: 39, scope: !6136)
!6157 = !DILocation(line: 700, column: 2, scope: !6136)
!6158 = !DILocation(line: 700, column: 6, scope: !6136)
!6159 = !DILocation(line: 700, column: 16, scope: !6136)
!6160 = !DILocation(line: 701, column: 2, scope: !6136)
!6161 = !DILocation(line: 701, column: 6, scope: !6136)
!6162 = !DILocation(line: 702, column: 2, scope: !6136)
!6163 = !DILocation(line: 702, column: 6, scope: !6136)
!6164 = !DILocation(line: 704, column: 7, scope: !6146)
!6165 = !DILocation(line: 704, column: 7, scope: !6149)
!6166 = !DILocation(line: 704, column: 7, scope: !6151)
!6167 = !{i64 2154499240}
!6168 = !DILocation(line: 704, column: 7, scope: !6147)
!6169 = !DILocation(line: 704, column: 42, scope: !6147)
!6170 = !DILocation(line: 704, column: 63, scope: !6147)
!6171 = !DILocation(line: 704, column: 6, scope: !6136)
!6172 = !DILocation(line: 705, column: 4, scope: !6147)
!6173 = !DILocation(line: 706, column: 3, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6175, file: !3, line: 706, column: 3)
!6175 = distinct !DILexicalBlock(scope: !6147, file: !3, line: 705, column: 36)
!6176 = !DILocation(line: 706, column: 3, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !6174, file: !3, line: 706, column: 3)
!6178 = !DILocation(line: 707, column: 2, scope: !6175)
!6179 = !DILocation(line: 708, column: 11, scope: !6154)
!6180 = !DILocation(line: 709, column: 12, scope: !6154)
!6181 = !DILocation(line: 710, column: 3, scope: !6153)
!6182 = !DILocation(line: 710, column: 3, scope: !6154)
!6183 = !DILocation(line: 712, column: 10, scope: !6154)
!6184 = !DILocation(line: 712, column: 19, scope: !6154)
!6185 = !DILocation(line: 712, column: 28, scope: !6154)
!6186 = !DILocation(line: 712, column: 26, scope: !6154)
!6187 = !DILocation(line: 712, column: 7, scope: !6154)
!6188 = !DILocation(line: 713, column: 18, scope: !6154)
!6189 = !DILocation(line: 713, column: 4, scope: !6154)
!6190 = !DILocation(line: 713, column: 10, scope: !6154)
!6191 = !DILocation(line: 714, column: 7, scope: !6154)
!6192 = !DILocation(line: 716, column: 9, scope: !6136)
!6193 = !DILocation(line: 717, column: 1, scope: !6136)
!6194 = !DILocation(line: 716, column: 2, scope: !6136)
!6195 = distinct !DISubprogram(name: "x86_this_cpu_constant_test_bit", scope: !6196, file: !6196, line: 378, type: !6197, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6199)
!6196 = !DIFile(filename: "./arch/x86/include/asm/percpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fdb54efdb90d23b1175ebcfb5328a9e")
!6197 = !DISubroutineType(types: !6198)
!6198 = !{!592, !7, !5103}
!6199 = !{!6200, !6201, !6202, !6203}
!6200 = !DILocalVariable(name: "nr", arg: 1, scope: !6195, file: !6196, line: 378, type: !7)
!6201 = !DILocalVariable(name: "addr", arg: 2, scope: !6195, file: !6196, line: 379, type: !5103)
!6202 = !DILocalVariable(name: "a", scope: !6195, file: !6196, line: 381, type: !1162)
!6203 = !DILocalVariable(name: "pfo_val__", scope: !6204, file: !6196, line: 385, type: !399)
!6204 = distinct !DILexicalBlock(scope: !6195, file: !6196, line: 385, column: 42)
!6205 = !DILocation(line: 378, column: 73, scope: !6195)
!6206 = !DILocation(line: 379, column: 55, scope: !6195)
!6207 = !DILocation(line: 381, column: 2, scope: !6195)
!6208 = !DILocation(line: 381, column: 26, scope: !6195)
!6209 = !DILocation(line: 382, column: 29, scope: !6195)
!6210 = !DILocation(line: 382, column: 36, scope: !6195)
!6211 = !DILocation(line: 382, column: 39, scope: !6195)
!6212 = !DILocation(line: 382, column: 34, scope: !6195)
!6213 = !DILocation(line: 385, column: 19, scope: !6195)
!6214 = !DILocation(line: 385, column: 22, scope: !6195)
!6215 = !DILocation(line: 385, column: 15, scope: !6195)
!6216 = !DILocation(line: 385, column: 42, scope: !6204)
!6217 = !{i64 2148521042}
!6218 = !DILocation(line: 385, column: 42, scope: !6195)
!6219 = !DILocation(line: 385, column: 40, scope: !6195)
!6220 = !DILocation(line: 385, column: 62, scope: !6195)
!6221 = !DILocation(line: 389, column: 1, scope: !6195)
!6222 = !DILocation(line: 385, column: 2, scope: !6195)
!6223 = distinct !DISubprogram(name: "x86_this_cpu_variable_test_bit", scope: !6196, file: !6196, line: 391, type: !6224, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6226)
!6224 = !DISubroutineType(types: !6225)
!6225 = !{!592, !46, !5103}
!6226 = !{!6227, !6228, !6229}
!6227 = !DILocalVariable(name: "nr", arg: 1, scope: !6223, file: !6196, line: 391, type: !46)
!6228 = !DILocalVariable(name: "addr", arg: 2, scope: !6223, file: !6196, line: 392, type: !5103)
!6229 = !DILocalVariable(name: "oldbit", scope: !6223, file: !6196, line: 394, type: !592)
!6230 = !DILocation(line: 391, column: 55, scope: !6223)
!6231 = !DILocation(line: 392, column: 55, scope: !6223)
!6232 = !DILocation(line: 394, column: 2, scope: !6223)
!6233 = !DILocation(line: 394, column: 7, scope: !6223)
!6234 = !DILocation(line: 399, column: 38, scope: !6223)
!6235 = !DILocation(line: 399, column: 51, scope: !6223)
!6236 = !DILocation(line: 396, column: 2, scope: !6223)
!6237 = !{i64 1034083, i64 2148521497}
!6238 = !DILocation(line: 401, column: 9, scope: !6223)
!6239 = !DILocation(line: 402, column: 1, scope: !6223)
!6240 = !DILocation(line: 401, column: 2, scope: !6223)
!6241 = distinct !DISubprogram(name: "native_read_msr_safe", scope: !6242, file: !6242, line: 126, type: !6243, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6245)
!6242 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!6243 = !DISubroutineType(types: !6244)
!6244 = !{!401, !7, !963}
!6245 = !{!6246, !6247, !6248, !6249}
!6246 = !DILocalVariable(name: "msr", arg: 1, scope: !6241, file: !6242, line: 126, type: !7)
!6247 = !DILocalVariable(name: "err", arg: 2, scope: !6241, file: !6242, line: 127, type: !963)
!6248 = !DILocalVariable(name: "low", scope: !6241, file: !6242, line: 129, type: !285)
!6249 = !DILocalVariable(name: "high", scope: !6241, file: !6242, line: 129, type: !285)
!6250 = !DILocation(line: 126, column: 68, scope: !6241)
!6251 = !DILocation(line: 127, column: 18, scope: !6241)
!6252 = !DILocation(line: 129, column: 2, scope: !6241)
!6253 = !DILocation(line: 134, column: 23, scope: !6241)
!6254 = !DILocation(line: 135, column: 15, scope: !6241)
!6255 = !DILocation(line: 131, column: 2, scope: !6241)
!6256 = !{i64 1139953, i64 1139994, i64 1139998, i64 2149360410, i64 2149360435, i64 2149360470, i64 2149360687, i64 2149360740, i64 2149360771, i64 2149360802, i64 2149360880, i64 2149360914, i64 2149360952, i64 2149360995, i64 2149361018, i64 2149361056, i64 2149361078, i64 2149361109, i64 2149361194, i64 2149361228, i64 2149361266, i64 2149361309, i64 2149361332, i64 2149361370, i64 2149361392, i64 2149361426, i64 2149361488, i64 2149361511, i64 2149360536, i64 2149361585, i64 2149360647}
!6257 = !DILocation(line: 136, column: 6, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !6241, file: !6242, line: 136, column: 6)
!6259 = !DILocation(line: 136, column: 6, scope: !6241)
!6260 = !DILocation(line: 137, column: 21, scope: !6258)
!6261 = !DILocation(line: 137, column: 26, scope: !6258)
!6262 = !DILocation(line: 137, column: 56, scope: !6258)
!6263 = !DILocation(line: 137, column: 55, scope: !6258)
!6264 = !DILocation(line: 137, column: 3, scope: !6258)
!6265 = !DILocation(line: 138, column: 9, scope: !6241)
!6266 = !DILocation(line: 139, column: 1, scope: !6241)
!6267 = !DILocation(line: 138, column: 2, scope: !6241)
!6268 = distinct !DISubprogram(name: "static_key_false", scope: !1140, file: !1140, line: 205, type: !6269, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6283)
!6269 = !DISubroutineType(types: !6270)
!6270 = !{!592, !6271}
!6271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6272, size: 64)
!6272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1140, line: 85, size: 128, elements: !6273)
!6273 = !{!6274, !6275}
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6272, file: !1140, line: 86, baseType: !185, size: 32)
!6275 = !DIDerivedType(tag: DW_TAG_member, scope: !6272, file: !1140, line: 101, baseType: !6276, size: 64, offset: 64)
!6276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6272, file: !1140, line: 101, size: 64, elements: !6277)
!6277 = !{!6278, !6279, !6280}
!6278 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6276, file: !1140, line: 102, baseType: !285, size: 64)
!6279 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6276, file: !1140, line: 103, baseType: !1138, size: 64)
!6280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6276, file: !1140, line: 104, baseType: !6281, size: 64)
!6281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6282, size: 64)
!6282 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1140, line: 104, flags: DIFlagFwdDecl)
!6283 = !{!6284}
!6284 = !DILocalVariable(name: "key", arg: 1, scope: !6268, file: !1140, line: 205, type: !6271)
!6285 = !DILocation(line: 205, column: 65, scope: !6268)
!6286 = !DILocation(line: 207, column: 28, scope: !6268)
!6287 = !DILocation(line: 207, column: 9, scope: !6268)
!6288 = !DILocation(line: 207, column: 2, scope: !6268)
!6289 = !DISubprogram(name: "do_trace_read_msr", scope: !6242, file: !6242, line: 65, type: !6290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6290 = !DISubroutineType(types: !6291)
!6291 = !{null, !7, !399, !46}
!6292 = distinct !DISubprogram(name: "arch_static_branch", scope: !6293, file: !6293, line: 25, type: !6294, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6296)
!6293 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6294 = !DISubroutineType(types: !6295)
!6295 = !{!592, !6271, !592}
!6296 = !{!6297, !6298, !6299}
!6297 = !DILocalVariable(name: "key", arg: 1, scope: !6292, file: !6293, line: 25, type: !6271)
!6298 = !DILocalVariable(name: "branch", arg: 2, scope: !6292, file: !6293, line: 25, type: !592)
!6299 = !DILabel(scope: !6292, name: "l_yes", file: !6293, line: 33)
!6300 = !DILocation(line: 25, column: 67, scope: !6292)
!6301 = !DILocation(line: 25, column: 77, scope: !6292)
!6302 = !DILocation(line: 30, column: 13, scope: !6292)
!6303 = !DILocation(line: 30, column: 28, scope: !6292)
!6304 = !DILocation(line: 30, column: 26, scope: !6292)
!6305 = !DILocation(line: 27, column: 2, scope: !6292)
!6306 = !{i64 960212, i64 960256, i64 2148444939, i64 2148444960, i64 2148444986, i64 2148445019, i64 2148445053, i64 2148445077}
!6307 = !DILocation(line: 32, column: 2, scope: !6292)
!6308 = !DILocation(line: 33, column: 1, scope: !6292)
!6309 = !DILocation(line: 34, column: 2, scope: !6292)
!6310 = !DILocation(line: 35, column: 1, scope: !6292)
!6311 = distinct !DISubprogram(name: "acpi_get_throttling_value", scope: !3, file: !3, line: 829, type: !6312, scopeLine: 831, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6314)
!6312 = !DISubroutineType(types: !6313)
!6313 = !{!46, !1190, !46, !1791}
!6314 = !{!6315, !6316, !6317, !6318, !6319}
!6315 = !DILocalVariable(name: "pr", arg: 1, scope: !6311, file: !3, line: 829, type: !1190)
!6316 = !DILocalVariable(name: "state", arg: 2, scope: !6311, file: !3, line: 830, type: !46)
!6317 = !DILocalVariable(name: "value", arg: 3, scope: !6311, file: !3, line: 830, type: !1791)
!6318 = !DILocalVariable(name: "ret", scope: !6311, file: !3, line: 832, type: !46)
!6319 = !DILocalVariable(name: "tx", scope: !6320, file: !3, line: 835, type: !1307)
!6320 = distinct !DILexicalBlock(scope: !6321, file: !3, line: 834, column: 57)
!6321 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 834, column: 6)
!6322 = !DILocation(line: 829, column: 61, scope: !6311)
!6323 = !DILocation(line: 830, column: 8, scope: !6311)
!6324 = !DILocation(line: 830, column: 20, scope: !6311)
!6325 = !DILocation(line: 832, column: 2, scope: !6311)
!6326 = !DILocation(line: 832, column: 6, scope: !6311)
!6327 = !DILocation(line: 834, column: 6, scope: !6321)
!6328 = !DILocation(line: 834, column: 12, scope: !6321)
!6329 = !DILocation(line: 834, column: 17, scope: !6321)
!6330 = !DILocation(line: 834, column: 20, scope: !6321)
!6331 = !DILocation(line: 834, column: 29, scope: !6321)
!6332 = !DILocation(line: 834, column: 33, scope: !6321)
!6333 = !DILocation(line: 834, column: 44, scope: !6321)
!6334 = !DILocation(line: 834, column: 26, scope: !6321)
!6335 = !DILocation(line: 834, column: 6, scope: !6311)
!6336 = !DILocation(line: 835, column: 3, scope: !6320)
!6337 = !DILocation(line: 835, column: 33, scope: !6320)
!6338 = !DILocation(line: 836, column: 41, scope: !6320)
!6339 = !DILocation(line: 836, column: 45, scope: !6320)
!6340 = !DILocation(line: 837, column: 13, scope: !6320)
!6341 = !DILocation(line: 837, column: 24, scope: !6320)
!6342 = !DILocation(line: 838, column: 12, scope: !6320)
!6343 = !DILocation(line: 838, column: 16, scope: !6320)
!6344 = !DILocation(line: 838, column: 4, scope: !6320)
!6345 = !DILocation(line: 838, column: 10, scope: !6320)
!6346 = !DILocation(line: 839, column: 7, scope: !6320)
!6347 = !DILocation(line: 840, column: 2, scope: !6321)
!6348 = !DILocation(line: 840, column: 2, scope: !6320)
!6349 = !DILocation(line: 841, column: 9, scope: !6311)
!6350 = !DILocation(line: 842, column: 1, scope: !6311)
!6351 = !DILocation(line: 841, column: 2, scope: !6311)
!6352 = distinct !DISubprogram(name: "acpi_write_throttling_state", scope: !3, file: !3, line: 781, type: !6088, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6353)
!6353 = !{!6354, !6355, !6356, !6357, !6358, !6359, !6360, !6361}
!6354 = !DILocalVariable(name: "pr", arg: 1, scope: !6352, file: !3, line: 781, type: !1190)
!6355 = !DILocalVariable(name: "value", arg: 2, scope: !6352, file: !3, line: 782, type: !399)
!6356 = !DILocalVariable(name: "bit_width", scope: !6352, file: !3, line: 784, type: !1081)
!6357 = !DILocalVariable(name: "bit_offset", scope: !6352, file: !3, line: 784, type: !1081)
!6358 = !DILocalVariable(name: "ptc_value", scope: !6352, file: !3, line: 785, type: !399)
!6359 = !DILocalVariable(name: "ptc_mask", scope: !6352, file: !3, line: 786, type: !399)
!6360 = !DILocalVariable(name: "throttling", scope: !6352, file: !3, line: 787, type: !3312)
!6361 = !DILocalVariable(name: "ret", scope: !6352, file: !3, line: 788, type: !46)
!6362 = !DILocation(line: 781, column: 63, scope: !6352)
!6363 = !DILocation(line: 782, column: 9, scope: !6352)
!6364 = !DILocation(line: 784, column: 2, scope: !6352)
!6365 = !DILocation(line: 784, column: 6, scope: !6352)
!6366 = !DILocation(line: 784, column: 17, scope: !6352)
!6367 = !DILocation(line: 785, column: 2, scope: !6352)
!6368 = !DILocation(line: 785, column: 6, scope: !6352)
!6369 = !DILocation(line: 786, column: 2, scope: !6352)
!6370 = !DILocation(line: 786, column: 6, scope: !6352)
!6371 = !DILocation(line: 787, column: 2, scope: !6352)
!6372 = !DILocation(line: 787, column: 36, scope: !6352)
!6373 = !DILocation(line: 788, column: 2, scope: !6352)
!6374 = !DILocation(line: 788, column: 6, scope: !6352)
!6375 = !DILocation(line: 790, column: 16, scope: !6352)
!6376 = !DILocation(line: 790, column: 20, scope: !6352)
!6377 = !DILocation(line: 790, column: 13, scope: !6352)
!6378 = !DILocation(line: 791, column: 10, scope: !6352)
!6379 = !DILocation(line: 791, column: 22, scope: !6352)
!6380 = !DILocation(line: 791, column: 39, scope: !6352)
!6381 = !DILocation(line: 791, column: 2, scope: !6352)
!6382 = !DILocation(line: 793, column: 15, scope: !6383)
!6383 = distinct !DILexicalBlock(scope: !6352, file: !3, line: 791, column: 49)
!6384 = !DILocation(line: 793, column: 27, scope: !6383)
!6385 = !DILocation(line: 793, column: 44, scope: !6383)
!6386 = !DILocation(line: 793, column: 13, scope: !6383)
!6387 = !DILocation(line: 794, column: 16, scope: !6383)
!6388 = !DILocation(line: 794, column: 28, scope: !6383)
!6389 = !DILocation(line: 794, column: 45, scope: !6383)
!6390 = !DILocation(line: 794, column: 14, scope: !6383)
!6391 = !DILocation(line: 795, column: 20, scope: !6383)
!6392 = !DILocation(line: 795, column: 17, scope: !6383)
!6393 = !DILocation(line: 795, column: 31, scope: !6383)
!6394 = !DILocation(line: 795, column: 14, scope: !6383)
!6395 = !DILocation(line: 795, column: 12, scope: !6383)
!6396 = !DILocation(line: 796, column: 15, scope: !6383)
!6397 = !DILocation(line: 796, column: 23, scope: !6383)
!6398 = !DILocation(line: 796, column: 21, scope: !6383)
!6399 = !DILocation(line: 796, column: 13, scope: !6383)
!6400 = !DILocation(line: 798, column: 40, scope: !6383)
!6401 = !DILocation(line: 799, column: 6, scope: !6383)
!6402 = !DILocation(line: 799, column: 23, scope: !6383)
!6403 = !DILocation(line: 800, column: 13, scope: !6383)
!6404 = !DILocation(line: 800, column: 26, scope: !6383)
!6405 = !DILocation(line: 800, column: 23, scope: !6383)
!6406 = !DILocation(line: 800, column: 6, scope: !6383)
!6407 = !DILocation(line: 801, column: 13, scope: !6383)
!6408 = !DILocation(line: 801, column: 25, scope: !6383)
!6409 = !DILocation(line: 801, column: 23, scope: !6383)
!6410 = !DILocation(line: 798, column: 3, scope: !6383)
!6411 = !DILocation(line: 802, column: 7, scope: !6383)
!6412 = !DILocation(line: 803, column: 3, scope: !6383)
!6413 = !DILocation(line: 805, column: 31, scope: !6383)
!6414 = !DILocation(line: 805, column: 9, scope: !6383)
!6415 = !DILocation(line: 805, column: 7, scope: !6383)
!6416 = !DILocation(line: 806, column: 3, scope: !6383)
!6417 = !DILocation(line: 808, column: 3, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6383, file: !3, line: 808, column: 3)
!6419 = !DILocation(line: 808, column: 3, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !6418, file: !3, line: 808, column: 3)
!6421 = !DILocation(line: 810, column: 2, scope: !6383)
!6422 = !DILocation(line: 811, column: 9, scope: !6352)
!6423 = !DILocation(line: 812, column: 1, scope: !6352)
!6424 = !DILocation(line: 811, column: 2, scope: !6352)
!6425 = !DISubprogram(name: "acpi_os_write_port", scope: !6133, file: !6133, line: 271, type: !6426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6426 = !DISubroutineType(types: !6427)
!6427 = !{!2036, !3140, !1081, !1081}
!6428 = distinct !DISubprogram(name: "acpi_throttling_wrmsr", scope: !3, file: !3, line: 719, type: !6429, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6431)
!6429 = !DISubroutineType(types: !6430)
!6430 = !{!46, !399}
!6431 = !{!6432, !6433, !6434, !6435, !6438, !6440}
!6432 = !DILocalVariable(name: "value", arg: 1, scope: !6428, file: !3, line: 719, type: !399)
!6433 = !DILocalVariable(name: "ret", scope: !6428, file: !3, line: 721, type: !46)
!6434 = !DILocalVariable(name: "msr", scope: !6428, file: !3, line: 722, type: !399)
!6435 = !DILocalVariable(name: "pscr_ret__", scope: !6436, file: !3, line: 724, type: !195)
!6436 = distinct !DILexicalBlock(scope: !6437, file: !3, line: 724, column: 7)
!6437 = distinct !DILexicalBlock(scope: !6428, file: !3, line: 724, column: 6)
!6438 = !DILocalVariable(name: "__vpp_verify", scope: !6439, file: !3, line: 724, type: !514)
!6439 = distinct !DILexicalBlock(scope: !6436, file: !3, line: 724, column: 7)
!6440 = !DILocalVariable(name: "pfo_val__", scope: !6441, file: !3, line: 724, type: !193)
!6441 = distinct !DILexicalBlock(scope: !6436, file: !3, line: 724, column: 7)
!6442 = !DILocation(line: 719, column: 38, scope: !6428)
!6443 = !DILocation(line: 721, column: 2, scope: !6428)
!6444 = !DILocation(line: 721, column: 6, scope: !6428)
!6445 = !DILocation(line: 722, column: 2, scope: !6428)
!6446 = !DILocation(line: 722, column: 6, scope: !6428)
!6447 = !DILocation(line: 724, column: 7, scope: !6436)
!6448 = !DILocation(line: 724, column: 7, scope: !6439)
!6449 = !DILocation(line: 724, column: 7, scope: !6441)
!6450 = !{i64 2154512952}
!6451 = !DILocation(line: 724, column: 7, scope: !6437)
!6452 = !DILocation(line: 724, column: 42, scope: !6437)
!6453 = !DILocation(line: 724, column: 63, scope: !6437)
!6454 = !DILocation(line: 724, column: 6, scope: !6428)
!6455 = !DILocation(line: 725, column: 4, scope: !6437)
!6456 = !DILocation(line: 726, column: 3, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !6458, file: !3, line: 726, column: 3)
!6458 = distinct !DILexicalBlock(scope: !6437, file: !3, line: 725, column: 36)
!6459 = !DILocation(line: 726, column: 3, scope: !6460)
!6460 = distinct !DILexicalBlock(scope: !6457, file: !3, line: 726, column: 3)
!6461 = !DILocation(line: 727, column: 2, scope: !6458)
!6462 = !DILocation(line: 728, column: 9, scope: !6463)
!6463 = distinct !DILexicalBlock(scope: !6437, file: !3, line: 727, column: 9)
!6464 = !DILocation(line: 728, column: 7, scope: !6463)
!6465 = !DILocation(line: 730, column: 4, scope: !6463)
!6466 = !DILocation(line: 730, column: 8, scope: !6463)
!6467 = !DILocation(line: 730, column: 22, scope: !6463)
!6468 = !DILocation(line: 730, column: 26, scope: !6463)
!6469 = !DILocation(line: 729, column: 3, scope: !6463)
!6470 = !DILocation(line: 731, column: 7, scope: !6463)
!6471 = !DILocation(line: 733, column: 9, scope: !6428)
!6472 = !DILocation(line: 734, column: 1, scope: !6428)
!6473 = !DILocation(line: 733, column: 2, scope: !6428)
!6474 = distinct !DISubprogram(name: "wrmsr_safe", scope: !6242, file: !6242, line: 266, type: !6475, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6477)
!6475 = !DISubroutineType(types: !6476)
!6476 = !{!46, !7, !1081, !1081}
!6477 = !{!6478, !6479, !6480}
!6478 = !DILocalVariable(name: "msr", arg: 1, scope: !6474, file: !6242, line: 266, type: !7)
!6479 = !DILocalVariable(name: "low", arg: 2, scope: !6474, file: !6242, line: 266, type: !1081)
!6480 = !DILocalVariable(name: "high", arg: 3, scope: !6474, file: !6242, line: 266, type: !1081)
!6481 = !DILocation(line: 266, column: 43, scope: !6474)
!6482 = !DILocation(line: 266, column: 52, scope: !6474)
!6483 = !DILocation(line: 266, column: 61, scope: !6474)
!6484 = !DILocation(line: 268, column: 31, scope: !6474)
!6485 = !DILocation(line: 268, column: 36, scope: !6474)
!6486 = !DILocation(line: 268, column: 41, scope: !6474)
!6487 = !DILocation(line: 268, column: 9, scope: !6474)
!6488 = !DILocation(line: 268, column: 2, scope: !6474)
!6489 = distinct !DISubprogram(name: "native_write_msr_safe", scope: !6242, file: !6242, line: 153, type: !6475, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6490)
!6490 = !{!6491, !6492, !6493, !6494}
!6491 = !DILocalVariable(name: "msr", arg: 1, scope: !6489, file: !6242, line: 153, type: !7)
!6492 = !DILocalVariable(name: "low", arg: 2, scope: !6489, file: !6242, line: 153, type: !1081)
!6493 = !DILocalVariable(name: "high", arg: 3, scope: !6489, file: !6242, line: 153, type: !1081)
!6494 = !DILocalVariable(name: "err", scope: !6489, file: !6242, line: 155, type: !46)
!6495 = !DILocation(line: 153, column: 36, scope: !6489)
!6496 = !DILocation(line: 153, column: 45, scope: !6489)
!6497 = !DILocation(line: 153, column: 54, scope: !6489)
!6498 = !DILocation(line: 155, column: 2, scope: !6489)
!6499 = !DILocation(line: 155, column: 6, scope: !6489)
!6500 = !DILocation(line: 161, column: 15, scope: !6489)
!6501 = !DILocation(line: 161, column: 26, scope: !6489)
!6502 = !DILocation(line: 161, column: 37, scope: !6489)
!6503 = !DILocation(line: 157, column: 2, scope: !6489)
!6504 = !{i64 1140704, i64 1140745, i64 1140749, i64 2149362317, i64 2149362342, i64 2149362377, i64 2149362594, i64 2149362647, i64 2149362678, i64 2149362709, i64 2149362787, i64 2149362821, i64 2149362859, i64 2149362902, i64 2149362925, i64 2149362963, i64 2149362985, i64 2149363016, i64 2149363101, i64 2149363135, i64 2149363173, i64 2149363216, i64 2149363239, i64 2149363277, i64 2149363299, i64 2149363333, i64 2149363395, i64 2149363418, i64 2149362443, i64 2149363492, i64 2149362554}
!6505 = !DILocation(line: 163, column: 6, scope: !6506)
!6506 = distinct !DILexicalBlock(scope: !6489, file: !6242, line: 163, column: 6)
!6507 = !DILocation(line: 163, column: 6, scope: !6489)
!6508 = !DILocation(line: 164, column: 22, scope: !6506)
!6509 = !DILocation(line: 164, column: 33, scope: !6506)
!6510 = !DILocation(line: 164, column: 28, scope: !6506)
!6511 = !DILocation(line: 164, column: 38, scope: !6506)
!6512 = !DILocation(line: 164, column: 46, scope: !6506)
!6513 = !DILocation(line: 164, column: 44, scope: !6506)
!6514 = !DILocation(line: 164, column: 52, scope: !6506)
!6515 = !DILocation(line: 164, column: 3, scope: !6506)
!6516 = !DILocation(line: 165, column: 9, scope: !6489)
!6517 = !DILocation(line: 166, column: 1, scope: !6489)
!6518 = !DILocation(line: 165, column: 2, scope: !6489)
!6519 = !DISubprogram(name: "do_trace_write_msr", scope: !6242, file: !6242, line: 64, type: !6290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6520 = distinct !DISubprogram(name: "set_bit", scope: !6521, file: !6521, line: 26, type: !6522, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6525)
!6521 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!6522 = !DISubroutineType(types: !6523)
!6523 = !{null, !271, !6524}
!6524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5195, size: 64)
!6525 = !{!6526, !6527}
!6526 = !DILocalVariable(name: "nr", arg: 1, scope: !6520, file: !6521, line: 26, type: !271)
!6527 = !DILocalVariable(name: "addr", arg: 2, scope: !6520, file: !6521, line: 26, type: !6524)
!6528 = !DILocation(line: 26, column: 42, scope: !6520)
!6529 = !DILocation(line: 26, column: 70, scope: !6520)
!6530 = !DILocation(line: 28, column: 26, scope: !6520)
!6531 = !DILocation(line: 28, column: 33, scope: !6520)
!6532 = !DILocation(line: 28, column: 31, scope: !6520)
!6533 = !DILocation(line: 28, column: 2, scope: !6520)
!6534 = !DILocation(line: 29, column: 15, scope: !6520)
!6535 = !DILocation(line: 29, column: 19, scope: !6520)
!6536 = !DILocation(line: 29, column: 2, scope: !6520)
!6537 = !DILocation(line: 30, column: 1, scope: !6520)
!6538 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5220, file: !5220, line: 80, type: !5221, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6539)
!6539 = !{!6540, !6541}
!6540 = !DILocalVariable(name: "v", arg: 1, scope: !6538, file: !5220, line: 80, type: !5223)
!6541 = !DILocalVariable(name: "size", arg: 2, scope: !6538, file: !5220, line: 80, type: !282)
!6542 = !DILocation(line: 80, column: 74, scope: !6538)
!6543 = !DILocation(line: 80, column: 84, scope: !6538)
!6544 = !DILocation(line: 82, column: 20, scope: !6538)
!6545 = !DILocation(line: 82, column: 23, scope: !6538)
!6546 = !DILocation(line: 82, column: 2, scope: !6538)
!6547 = !DILocation(line: 83, column: 2, scope: !6538)
!6548 = !DILocation(line: 84, column: 1, scope: !6538)
!6549 = distinct !DISubprogram(name: "arch_set_bit", scope: !5177, file: !5177, line: 52, type: !6522, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6550)
!6550 = !{!6551, !6552}
!6551 = !DILocalVariable(name: "nr", arg: 1, scope: !6549, file: !5177, line: 52, type: !271)
!6552 = !DILocalVariable(name: "addr", arg: 2, scope: !6549, file: !5177, line: 52, type: !6524)
!6553 = !DILocation(line: 52, column: 19, scope: !6549)
!6554 = !DILocation(line: 52, column: 47, scope: !6549)
!6555 = !DILocation(line: 54, column: 27, scope: !6556)
!6556 = distinct !DILexicalBlock(scope: !6549, file: !5177, line: 54, column: 6)
!6557 = !DILocation(line: 54, column: 6, scope: !6556)
!6558 = !DILocation(line: 54, column: 6, scope: !6549)
!6559 = !DILocation(line: 56, column: 6, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6556, file: !5177, line: 54, column: 32)
!6561 = !DILocation(line: 57, column: 12, scope: !6560)
!6562 = !DILocation(line: 55, column: 3, scope: !6560)
!6563 = !{i64 2147815251, i64 2147815290, i64 2147815311, i64 2147815348, i64 2147815371, i64 2147815241}
!6564 = !DILocation(line: 59, column: 2, scope: !6560)
!6565 = !DILocation(line: 61, column: 8, scope: !6566)
!6566 = distinct !DILexicalBlock(scope: !6556, file: !5177, line: 59, column: 9)
!6567 = !DILocation(line: 61, column: 32, scope: !6566)
!6568 = !DILocation(line: 60, column: 3, scope: !6566)
!6569 = !{i64 2147815536, i64 2147815575, i64 2147815596, i64 2147815633, i64 2147815656, i64 2147815526}
!6570 = !DILocation(line: 63, column: 1, scope: !6549)
!6571 = distinct !DISubprogram(name: "kasan_check_write", scope: !5252, file: !5252, line: 44, type: !5253, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6572)
!6572 = !{!6573, !6574}
!6573 = !DILocalVariable(name: "p", arg: 1, scope: !6571, file: !5252, line: 44, type: !5223)
!6574 = !DILocalVariable(name: "size", arg: 2, scope: !6571, file: !5252, line: 44, type: !7)
!6575 = !DILocation(line: 44, column: 59, scope: !6571)
!6576 = !DILocation(line: 44, column: 75, scope: !6571)
!6577 = !DILocation(line: 46, column: 2, scope: !6571)
