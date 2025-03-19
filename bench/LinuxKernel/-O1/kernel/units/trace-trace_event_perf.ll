; ModuleID = 'kernel/trace/trace_event_perf.c'
source_filename = "kernel/trace/trace_event_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_perf_trace_buf_alloc: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad perf_trace_buf_alloc ; .previous"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.31, i64, i64, %union.anon.32 }
%union.anon.31 = type { i64 }
%union.anon.32 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.srcu_struct = type { i32, ptr, %struct.lockdep_map, ptr }
%struct.lockdep_map = type {}
%struct.pcpu_hot = type { %union.anon.33 }
%union.anon.33 = type { %struct.anon.34, [16 x i8] }
%struct.anon.34 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, ptr, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i64, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, i64, %struct.irq_work, %struct.callback_head, i32, %struct.rcuwait, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i64, ptr, ptr, %struct.callback_head, ptr, i64, %struct.atomic64_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.local64_t = type { %struct.local_t }
%struct.local_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.14, i64, i64, i64, %union.anon.15, i32, %union.anon.16, %union.anon.17, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64, i64 }
%union.anon.14 = type { i64 }
%union.anon.15 = type { i32 }
%union.anon.16 = type { i64 }
%union.anon.17 = type { i64 }
%struct.hw_perf_event = type { %union.anon.19, ptr, ptr, i64, i32, %struct.local64_t, i64, %union.anon.26, i64, i64, i64, i64 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { i64, i64, i64, i64, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { i64, %struct.local64_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.29, %struct.trace_event, ptr, ptr, %union.anon.30, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.29 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, i32, ptr }
%union.anon.30 = type { ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
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
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.restart_block = type { i64, ptr, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x ptr], i64, i64, i64, i64, i64, ptr, i64, i8, i32, [40 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.fpu = type { i32, i64, ptr, ptr, %struct.fpu_state_perm, %struct.fpu_state_perm, %struct.fpstate }
%struct.fpu_state_perm = type { i64, i32, i32 }
%struct.fpstate = type { i32, i32, i64, i64, i64, i8, [31 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.9, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.12 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, i64 }
%union.anon.12 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }

@event_mutex = external dso_local global %struct.mutex, align 8
@ftrace_events = external dso_local global %struct.list_head, align 8
@.str = private unnamed_addr constant [32 x i8] c"kernel/trace/trace_event_perf.c\00", align 1, !dbg !0
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@perf_trace_buf_alloc.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [49 x i8] c"perf buffer not large enough, wanted %d, have %d\00", align 1, !dbg !6214
@__perf_regs = external dso_local global [4 x %struct.pt_regs], section ".data..percpu", align 16
@perf_trace_buf = internal global [4 x ptr] zeroinitializer, align 16, !dbg !6225
@__UNIQUE_ID___addressable_perf_trace_buf_alloc329 = internal global ptr @perf_trace_buf_alloc, section ".discard.addressable", align 8, !dbg !6219
@_kbl_addr_perf_trace_buf_alloc = internal global i64 ptrtoint (ptr @perf_trace_buf_alloc to i64), section "_kprobe_blacklist", align 8, !dbg !6221
@_kbl_addr_perf_trace_buf_update = internal global i64 ptrtoint (ptr @perf_trace_buf_update to i64), section "_kprobe_blacklist", align 8, !dbg !6223
@sysctl_perf_event_paranoid = external dso_local global i32, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@total_ref_count = internal global i32 0, align 4, !dbg !6228
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_perf_trace_buf_alloc329, ptr @_kbl_addr_perf_trace_buf_alloc, ptr @_kbl_addr_perf_trace_buf_update], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @perf_trace_init(ptr noundef %p_event) #0 align 16 !dbg !6269 {
entry:
  %p_event.addr = alloca ptr, align 8
  %tp_event = alloca ptr, align 8
  %event_id = alloca i64, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr12 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  store ptr %p_event, ptr %p_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p_event.addr, metadata !6271, metadata !DIExpression()), !dbg !6281
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp_event) #10, !dbg !6282
  call void @llvm.dbg.declare(metadata ptr %tp_event, metadata !6272, metadata !DIExpression()), !dbg !6283
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_id) #10, !dbg !6284
  call void @llvm.dbg.declare(metadata ptr %event_id, metadata !6273, metadata !DIExpression()), !dbg !6285
  %0 = load ptr, ptr %p_event.addr, align 8, !dbg !6286
  %attr = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 22, !dbg !6287
  %config = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 2, !dbg !6288
  %1 = load i64, ptr %config, align 8, !dbg !6288
  store i64 %1, ptr %event_id, align 8, !dbg !6285
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !6289
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6274, metadata !DIExpression()), !dbg !6290
  store i32 -22, ptr %ret, align 4, !dbg !6290
  call void @mutex_lock(ptr noundef @event_mutex) #11, !dbg !6291
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6292
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6275, metadata !DIExpression()), !dbg !6292
  %2 = load ptr, ptr @ftrace_events, align 8, !dbg !6292
  store ptr %2, ptr %__mptr, align 8, !dbg !6292
  %3 = load ptr, ptr %__mptr, align 8, !dbg !6292
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !6292
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6292
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6293
  %4 = load ptr, ptr %tmp, align 8, !dbg !6292
  store ptr %4, ptr %tp_event, align 8, !dbg !6293
  br label %for.cond, !dbg !6293

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %tp_event, align 8, !dbg !6294
  %list = getelementptr inbounds %struct.trace_event_call, ptr %5, i32 0, i32 0, !dbg !6294
  %cmp = icmp eq ptr %list, @ftrace_events, !dbg !6294
  %lnot = xor i1 %cmp, true, !dbg !6294
  br i1 %lnot, label %for.body, label %for.end, !dbg !6293

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %tp_event, align 8, !dbg !6295
  %event = getelementptr inbounds %struct.trace_event_call, ptr %6, i32 0, i32 3, !dbg !6298
  %type = getelementptr inbounds %struct.trace_event, ptr %event, i32 0, i32 1, !dbg !6299
  %7 = load i32, ptr %type, align 8, !dbg !6299
  %conv = sext i32 %7 to i64, !dbg !6295
  %8 = load i64, ptr %event_id, align 8, !dbg !6300
  %cmp1 = icmp eq i64 %conv, %8, !dbg !6301
  br i1 %cmp1, label %land.lhs.true, label %if.end11, !dbg !6302

land.lhs.true:                                    ; preds = %for.body
  %9 = load ptr, ptr %tp_event, align 8, !dbg !6303
  %class = getelementptr inbounds %struct.trace_event_call, ptr %9, i32 0, i32 1, !dbg !6304
  %10 = load ptr, ptr %class, align 8, !dbg !6304
  %tobool = icmp ne ptr %10, null, !dbg !6303
  br i1 %tobool, label %land.lhs.true3, label %if.end11, !dbg !6305

land.lhs.true3:                                   ; preds = %land.lhs.true
  %11 = load ptr, ptr %tp_event, align 8, !dbg !6306
  %class4 = getelementptr inbounds %struct.trace_event_call, ptr %11, i32 0, i32 1, !dbg !6307
  %12 = load ptr, ptr %class4, align 8, !dbg !6307
  %reg = getelementptr inbounds %struct.trace_event_class, ptr %12, i32 0, i32 3, !dbg !6308
  %13 = load ptr, ptr %reg, align 8, !dbg !6308
  %tobool5 = icmp ne ptr %13, null, !dbg !6306
  br i1 %tobool5, label %land.lhs.true6, label %if.end11, !dbg !6309

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %14 = load ptr, ptr %tp_event, align 8, !dbg !6310
  %call = call zeroext i1 @trace_event_try_get_ref(ptr noundef %14) #11, !dbg !6311
  br i1 %call, label %if.then, label %if.end11, !dbg !6312

if.then:                                          ; preds = %land.lhs.true6
  %15 = load ptr, ptr %tp_event, align 8, !dbg !6313
  %16 = load ptr, ptr %p_event.addr, align 8, !dbg !6315
  %call8 = call i32 @perf_trace_event_init(ptr noundef %15, ptr noundef %16) #11, !dbg !6316
  store i32 %call8, ptr %ret, align 4, !dbg !6317
  %17 = load i32, ptr %ret, align 4, !dbg !6318
  %tobool9 = icmp ne i32 %17, 0, !dbg !6318
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !6320

if.then10:                                        ; preds = %if.then
  %18 = load ptr, ptr %tp_event, align 8, !dbg !6321
  call void @trace_event_put_ref(ptr noundef %18) #11, !dbg !6322
  br label %if.end, !dbg !6322

if.end:                                           ; preds = %if.then10, %if.then
  br label %for.end, !dbg !6323

if.end11:                                         ; preds = %land.lhs.true6, %land.lhs.true3, %land.lhs.true, %for.body
  br label %for.inc, !dbg !6324

for.inc:                                          ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr12) #10, !dbg !6325
  call void @llvm.dbg.declare(metadata ptr %__mptr12, metadata !6278, metadata !DIExpression()), !dbg !6325
  %19 = load ptr, ptr %tp_event, align 8, !dbg !6325
  %list13 = getelementptr inbounds %struct.trace_event_call, ptr %19, i32 0, i32 0, !dbg !6325
  %next = getelementptr inbounds %struct.list_head, ptr %list13, i32 0, i32 0, !dbg !6325
  %20 = load ptr, ptr %next, align 8, !dbg !6325
  store ptr %20, ptr %__mptr12, align 8, !dbg !6325
  %21 = load ptr, ptr %__mptr12, align 8, !dbg !6325
  %add.ptr15 = getelementptr i8, ptr %21, i64 0, !dbg !6325
  store ptr %add.ptr15, ptr %tmp14, align 8, !dbg !6325
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr12) #10, !dbg !6294
  %22 = load ptr, ptr %tmp14, align 8, !dbg !6325
  store ptr %22, ptr %tp_event, align 8, !dbg !6294
  br label %for.cond, !dbg !6294, !llvm.loop !6326

for.end:                                          ; preds = %if.end, %for.cond
  call void @mutex_unlock(ptr noundef @event_mutex) #11, !dbg !6330
  %23 = load i32, ptr %ret, align 4, !dbg !6331
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !6332
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_id) #10, !dbg !6332
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp_event) #10, !dbg !6332
  ret i32 %23, !dbg !6333
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6334 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @trace_event_try_get_ref(ptr noundef %call) #4 align 16 !dbg !6338 {
entry:
  %retval = alloca i1, align 1
  %call.addr = alloca ptr, align 8
  store ptr %call, ptr %call.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %call.addr, metadata !6342, metadata !DIExpression()), !dbg !6343
  %0 = load ptr, ptr %call.addr, align 8, !dbg !6344
  %flags = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 8, !dbg !6346
  %1 = load i32, ptr %flags, align 8, !dbg !6346
  %and = and i32 %1, 32, !dbg !6347
  %tobool = icmp ne i32 %and, 0, !dbg !6347
  br i1 %tobool, label %if.then, label %if.else, !dbg !6348

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %call.addr, align 8, !dbg !6349
  %call1 = call zeroext i1 @trace_event_dyn_try_get_ref(ptr noundef %2) #11, !dbg !6350
  store i1 %call1, ptr %retval, align 1, !dbg !6351
  br label %return, !dbg !6351

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %call.addr, align 8, !dbg !6352
  %4 = getelementptr inbounds %struct.trace_event_call, ptr %3, i32 0, i32 6, !dbg !6353
  %5 = load ptr, ptr %4, align 8, !dbg !6353
  %call2 = call zeroext i1 @try_module_get(ptr noundef %5) #11, !dbg !6354
  store i1 %call2, ptr %retval, align 1, !dbg !6355
  br label %return, !dbg !6355

return:                                           ; preds = %if.else, %if.then
  %6 = load i1, ptr %retval, align 1, !dbg !6356
  ret i1 %6, !dbg !6356
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @perf_trace_event_init(ptr noundef %tp_event, ptr noundef %p_event) #0 align 16 !dbg !6357 {
entry:
  %retval = alloca i32, align 4
  %tp_event.addr = alloca ptr, align 8
  %p_event.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tp_event, ptr %tp_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp_event.addr, metadata !6359, metadata !DIExpression()), !dbg !6362
  store ptr %p_event, ptr %p_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p_event.addr, metadata !6360, metadata !DIExpression()), !dbg !6363
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !6364
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6361, metadata !DIExpression()), !dbg !6365
  %0 = load ptr, ptr %tp_event.addr, align 8, !dbg !6366
  %1 = load ptr, ptr %p_event.addr, align 8, !dbg !6367
  %call = call i32 @perf_trace_event_perm(ptr noundef %0, ptr noundef %1) #11, !dbg !6368
  store i32 %call, ptr %ret, align 4, !dbg !6369
  %2 = load i32, ptr %ret, align 4, !dbg !6370
  %tobool = icmp ne i32 %2, 0, !dbg !6370
  br i1 %tobool, label %if.then, label %if.end, !dbg !6372

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !dbg !6373
  store i32 %3, ptr %retval, align 4, !dbg !6374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6374

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %tp_event.addr, align 8, !dbg !6375
  %5 = load ptr, ptr %p_event.addr, align 8, !dbg !6376
  %call1 = call i32 @perf_trace_event_reg(ptr noundef %4, ptr noundef %5) #11, !dbg !6377
  store i32 %call1, ptr %ret, align 4, !dbg !6378
  %6 = load i32, ptr %ret, align 4, !dbg !6379
  %tobool2 = icmp ne i32 %6, 0, !dbg !6379
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6381

if.then3:                                         ; preds = %if.end
  %7 = load i32, ptr %ret, align 4, !dbg !6382
  store i32 %7, ptr %retval, align 4, !dbg !6383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6383

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %p_event.addr, align 8, !dbg !6384
  %call5 = call i32 @perf_trace_event_open(ptr noundef %8) #11, !dbg !6385
  store i32 %call5, ptr %ret, align 4, !dbg !6386
  %9 = load i32, ptr %ret, align 4, !dbg !6387
  %tobool6 = icmp ne i32 %9, 0, !dbg !6387
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6389

if.then7:                                         ; preds = %if.end4
  %10 = load ptr, ptr %p_event.addr, align 8, !dbg !6390
  call void @perf_trace_event_unreg(ptr noundef %10) #11, !dbg !6392
  %11 = load i32, ptr %ret, align 4, !dbg !6393
  store i32 %11, ptr %retval, align 4, !dbg !6394
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6394

if.end8:                                          ; preds = %if.end4
  store i32 0, ptr %retval, align 4, !dbg !6395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6395

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !6396
  %12 = load i32, ptr %retval, align 4, !dbg !6396
  ret i32 %12, !dbg !6396
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_event_put_ref(ptr noundef %call) #4 align 16 !dbg !6397 {
entry:
  %call.addr = alloca ptr, align 8
  store ptr %call, ptr %call.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %call.addr, metadata !6401, metadata !DIExpression()), !dbg !6402
  %0 = load ptr, ptr %call.addr, align 8, !dbg !6403
  %flags = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 8, !dbg !6405
  %1 = load i32, ptr %flags, align 8, !dbg !6405
  %and = and i32 %1, 32, !dbg !6406
  %tobool = icmp ne i32 %and, 0, !dbg !6406
  br i1 %tobool, label %if.then, label %if.else, !dbg !6407

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %call.addr, align 8, !dbg !6408
  call void @trace_event_dyn_put_ref(ptr noundef %2) #11, !dbg !6409
  br label %if.end, !dbg !6409

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %call.addr, align 8, !dbg !6410
  %4 = getelementptr inbounds %struct.trace_event_call, ptr %3, i32 0, i32 6, !dbg !6411
  %5 = load ptr, ptr %4, align 8, !dbg !6411
  call void @module_put(ptr noundef %5) #11, !dbg !6412
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6413
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6414 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @perf_trace_destroy(ptr noundef %p_event) #0 align 16 !dbg !6415 {
entry:
  %p_event.addr = alloca ptr, align 8
  store ptr %p_event, ptr %p_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p_event.addr, metadata !6417, metadata !DIExpression()), !dbg !6418
  call void @mutex_lock(ptr noundef @event_mutex) #11, !dbg !6419
  %0 = load ptr, ptr %p_event.addr, align 8, !dbg !6420
  call void @perf_trace_event_close(ptr noundef %0) #11, !dbg !6421
  %1 = load ptr, ptr %p_event.addr, align 8, !dbg !6422
  call void @perf_trace_event_unreg(ptr noundef %1) #11, !dbg !6423
  %2 = load ptr, ptr %p_event.addr, align 8, !dbg !6424
  %tp_event = getelementptr inbounds %struct.perf_event, ptr %2, i32 0, i32 69, !dbg !6425
  %3 = load ptr, ptr %tp_event, align 8, !dbg !6425
  call void @trace_event_put_ref(ptr noundef %3) #11, !dbg !6426
  call void @mutex_unlock(ptr noundef @event_mutex) #11, !dbg !6427
  ret void, !dbg !6428
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_trace_event_close(ptr noundef %p_event) #0 align 16 !dbg !6429 {
entry:
  %p_event.addr = alloca ptr, align 8
  %tp_event = alloca ptr, align 8
  store ptr %p_event, ptr %p_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p_event.addr, metadata !6431, metadata !DIExpression()), !dbg !6433
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp_event) #10, !dbg !6434
  call void @llvm.dbg.declare(metadata ptr %tp_event, metadata !6432, metadata !DIExpression()), !dbg !6435
  %0 = load ptr, ptr %p_event.addr, align 8, !dbg !6436
  %tp_event1 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 69, !dbg !6437
  %1 = load ptr, ptr %tp_event1, align 8, !dbg !6437
  store ptr %1, ptr %tp_event, align 8, !dbg !6435
  %2 = load ptr, ptr %tp_event, align 8, !dbg !6438
  %class = getelementptr inbounds %struct.trace_event_call, ptr %2, i32 0, i32 1, !dbg !6439
  %3 = load ptr, ptr %class, align 8, !dbg !6439
  %reg = getelementptr inbounds %struct.trace_event_class, ptr %3, i32 0, i32 3, !dbg !6440
  %4 = load ptr, ptr %reg, align 8, !dbg !6440
  %5 = load ptr, ptr %tp_event, align 8, !dbg !6441
  %6 = load ptr, ptr %p_event.addr, align 8, !dbg !6442
  %call = call i32 %4(ptr noundef %5, i32 noundef 5, ptr noundef %6) #11, !dbg !6438
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp_event) #10, !dbg !6443
  ret void, !dbg !6443
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @perf_trace_event_unreg(ptr noundef %p_event) #0 align 16 !dbg !6444 {
entry:
  %p_event.addr = alloca ptr, align 8
  %tp_event = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p_event, ptr %p_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p_event.addr, metadata !6446, metadata !DIExpression()), !dbg !6449
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp_event) #10, !dbg !6450
  call void @llvm.dbg.declare(metadata ptr %tp_event, metadata !6447, metadata !DIExpression()), !dbg !6451
  %0 = load ptr, ptr %p_event.addr, align 8, !dbg !6452
  %tp_event1 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 69, !dbg !6453
  %1 = load ptr, ptr %tp_event1, align 8, !dbg !6453
  store ptr %1, ptr %tp_event, align 8, !dbg !6451
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !6454
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6448, metadata !DIExpression()), !dbg !6455
  %2 = load ptr, ptr %tp_event, align 8, !dbg !6456
  %perf_refcount = getelementptr inbounds %struct.trace_event_call, ptr %2, i32 0, i32 9, !dbg !6458
  %3 = load i32, ptr %perf_refcount, align 4, !dbg !6459
  %dec = add i32 %3, -1, !dbg !6459
  store i32 %dec, ptr %perf_refcount, align 4, !dbg !6459
  %cmp = icmp sgt i32 %dec, 0, !dbg !6460
  br i1 %cmp, label %if.then, label %if.end, !dbg !6461

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6462

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %tp_event, align 8, !dbg !6463
  %class = getelementptr inbounds %struct.trace_event_call, ptr %4, i32 0, i32 1, !dbg !6464
  %5 = load ptr, ptr %class, align 8, !dbg !6464
  %reg = getelementptr inbounds %struct.trace_event_class, ptr %5, i32 0, i32 3, !dbg !6465
  %6 = load ptr, ptr %reg, align 8, !dbg !6465
  %7 = load ptr, ptr %tp_event, align 8, !dbg !6466
  %call = call i32 %6(ptr noundef %7, i32 noundef 3, ptr noundef null) #11, !dbg !6463
  call void @tracepoint_synchronize_unregister() #11, !dbg !6467
  %8 = load ptr, ptr %tp_event, align 8, !dbg !6468
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %8, i32 0, i32 10, !dbg !6469
  %9 = load ptr, ptr %perf_events, align 8, !dbg !6469
  call void @free_percpu(ptr noundef %9) #11, !dbg !6470
  %10 = load ptr, ptr %tp_event, align 8, !dbg !6471
  %perf_events2 = getelementptr inbounds %struct.trace_event_call, ptr %10, i32 0, i32 10, !dbg !6472
  store ptr null, ptr %perf_events2, align 8, !dbg !6473
  %11 = load i32, ptr @total_ref_count, align 4, !dbg !6474
  %dec3 = add i32 %11, -1, !dbg !6474
  store i32 %dec3, ptr @total_ref_count, align 4, !dbg !6474
  %tobool = icmp ne i32 %dec3, 0, !dbg !6474
  br i1 %tobool, label %if.end8, label %if.then4, !dbg !6476

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !6477
  br label %for.cond, !dbg !6480

for.cond:                                         ; preds = %for.inc, %if.then4
  %12 = load i32, ptr %i, align 4, !dbg !6481
  %cmp5 = icmp slt i32 %12, 4, !dbg !6483
  br i1 %cmp5, label %for.body, label %for.end, !dbg !6484

for.body:                                         ; preds = %for.cond
  %13 = load i32, ptr %i, align 4, !dbg !6485
  %idxprom = sext i32 %13 to i64, !dbg !6487
  %arrayidx = getelementptr [4 x ptr], ptr @perf_trace_buf, i64 0, i64 %idxprom, !dbg !6487
  %14 = load ptr, ptr %arrayidx, align 8, !dbg !6487
  call void @free_percpu(ptr noundef %14) #11, !dbg !6488
  %15 = load i32, ptr %i, align 4, !dbg !6489
  %idxprom6 = sext i32 %15 to i64, !dbg !6490
  %arrayidx7 = getelementptr [4 x ptr], ptr @perf_trace_buf, i64 0, i64 %idxprom6, !dbg !6490
  store ptr null, ptr %arrayidx7, align 8, !dbg !6491
  br label %for.inc, !dbg !6492

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !dbg !6493
  %inc = add i32 %16, 1, !dbg !6493
  store i32 %inc, ptr %i, align 4, !dbg !6493
  br label %for.cond, !dbg !6494, !llvm.loop !6495

for.end:                                          ; preds = %for.cond
  br label %if.end8, !dbg !6497

if.end8:                                          ; preds = %for.end, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6498
  br label %cleanup, !dbg !6498

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !6498
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp_event) #10, !dbg !6498
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6498

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @perf_kprobe_init(ptr noundef %p_event, i1 noundef zeroext %is_retprobe) #0 align 16 !dbg !6499 {
entry:
  %retval = alloca i32, align 4
  %p_event.addr = alloca ptr, align 8
  %is_retprobe.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %func = alloca ptr, align 8
  %tp_event = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p_event, ptr %p_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p_event.addr, metadata !6503, metadata !DIExpression()), !dbg !6515
  %frombool = zext i1 %is_retprobe to i8
  store i8 %frombool, ptr %is_retprobe.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_retprobe.addr, metadata !6504, metadata !DIExpression()), !dbg !6516
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !6517
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6505, metadata !DIExpression()), !dbg !6518
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #10, !dbg !6519
  call void @llvm.dbg.declare(metadata ptr %func, metadata !6506, metadata !DIExpression()), !dbg !6520
  store ptr null, ptr %func, align 8, !dbg !6520
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp_event) #10, !dbg !6521
  call void @llvm.dbg.declare(metadata ptr %tp_event, metadata !6507, metadata !DIExpression()), !dbg !6522
  %0 = load ptr, ptr %p_event.addr, align 8, !dbg !6523
  %attr = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 22, !dbg !6524
  %1 = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 9, !dbg !6525
  %2 = load i64, ptr %1, align 8, !dbg !6525
  %tobool = icmp ne i64 %2, 0, !dbg !6523
  br i1 %tobool, label %if.then, label %if.end14, !dbg !6526

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !6527
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6508, metadata !DIExpression()), !dbg !6527
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !6527
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6513, metadata !DIExpression()), !dbg !6527
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6527
  %conv = zext i1 %cmp to i32, !dbg !6527
  store i32 1, ptr %tmp, align 4, !dbg !6527
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !6528
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !6528
  %3 = load i32, ptr %tmp, align 4, !dbg !6527
  %4 = load ptr, ptr %p_event.addr, align 8, !dbg !6528
  %attr2 = getelementptr inbounds %struct.perf_event, ptr %4, i32 0, i32 22, !dbg !6528
  %5 = getelementptr inbounds %struct.perf_event_attr, ptr %attr2, i32 0, i32 9, !dbg !6528
  %6 = load i64, ptr %5, align 8, !dbg !6528
  %7 = inttoptr i64 %6 to ptr, !dbg !6528
  store ptr %7, ptr %tmp1, align 8, !dbg !6528
  %8 = load ptr, ptr %tmp1, align 8, !dbg !6528
  %call = call ptr @strndup_user(ptr noundef %8, i64 noundef 512) #11, !dbg !6529
  store ptr %call, ptr %func, align 8, !dbg !6530
  %9 = load ptr, ptr %func, align 8, !dbg !6531
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %9) #11, !dbg !6533
  br i1 %call3, label %if.then4, label %if.end, !dbg !6534

if.then4:                                         ; preds = %if.then
  %10 = load ptr, ptr %func, align 8, !dbg !6535
  %call5 = call i64 @PTR_ERR(ptr noundef %10) #11, !dbg !6537
  %conv6 = trunc i64 %call5 to i32, !dbg !6537
  store i32 %conv6, ptr %ret, align 4, !dbg !6538
  %11 = load i32, ptr %ret, align 4, !dbg !6539
  %cmp7 = icmp eq i32 %11, -22, !dbg !6540
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !6541

cond.true:                                        ; preds = %if.then4
  br label %cond.end, !dbg !6541

cond.false:                                       ; preds = %if.then4
  %12 = load i32, ptr %ret, align 4, !dbg !6542
  br label %cond.end, !dbg !6541

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -7, %cond.true ], [ %12, %cond.false ], !dbg !6541
  store i32 %cond, ptr %retval, align 4, !dbg !6543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6543

if.end:                                           ; preds = %if.then
  %13 = load ptr, ptr %func, align 8, !dbg !6544
  %arrayidx = getelementptr i8, ptr %13, i64 0, !dbg !6544
  %14 = load i8, ptr %arrayidx, align 1, !dbg !6544
  %conv9 = zext i8 %14 to i32, !dbg !6544
  %cmp10 = icmp eq i32 %conv9, 0, !dbg !6546
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !6547

if.then12:                                        ; preds = %if.end
  %15 = load ptr, ptr %func, align 8, !dbg !6548
  call void @kfree(ptr noundef %15) #11, !dbg !6550
  store ptr null, ptr %func, align 8, !dbg !6551
  br label %if.end13, !dbg !6552

if.end13:                                         ; preds = %if.then12, %if.end
  br label %if.end14, !dbg !6553

if.end14:                                         ; preds = %if.end13, %entry
  %16 = load ptr, ptr %func, align 8, !dbg !6554
  %17 = load ptr, ptr %p_event.addr, align 8, !dbg !6555
  %attr15 = getelementptr inbounds %struct.perf_event, ptr %17, i32 0, i32 22, !dbg !6556
  %18 = getelementptr inbounds %struct.perf_event_attr, ptr %attr15, i32 0, i32 10, !dbg !6557
  %19 = load i64, ptr %18, align 8, !dbg !6557
  %20 = inttoptr i64 %19 to ptr, !dbg !6558
  %21 = load ptr, ptr %p_event.addr, align 8, !dbg !6559
  %attr16 = getelementptr inbounds %struct.perf_event, ptr %21, i32 0, i32 22, !dbg !6560
  %22 = getelementptr inbounds %struct.perf_event_attr, ptr %attr16, i32 0, i32 10, !dbg !6561
  %23 = load i64, ptr %22, align 8, !dbg !6561
  %24 = load i8, ptr %is_retprobe.addr, align 1, !dbg !6562, !range !6563, !noundef !809
  %tobool17 = trunc i8 %24 to i1, !dbg !6562
  %call18 = call ptr @create_local_trace_kprobe(ptr noundef %16, ptr noundef %20, i64 noundef %23, i1 noundef zeroext %tobool17) #11, !dbg !6564
  store ptr %call18, ptr %tp_event, align 8, !dbg !6565
  %25 = load ptr, ptr %tp_event, align 8, !dbg !6566
  %call19 = call zeroext i1 @IS_ERR(ptr noundef %25) #11, !dbg !6568
  br i1 %call19, label %if.then20, label %if.end23, !dbg !6569

if.then20:                                        ; preds = %if.end14
  %26 = load ptr, ptr %tp_event, align 8, !dbg !6570
  %call21 = call i64 @PTR_ERR(ptr noundef %26) #11, !dbg !6572
  %conv22 = trunc i64 %call21 to i32, !dbg !6572
  store i32 %conv22, ptr %ret, align 4, !dbg !6573
  br label %out, !dbg !6574

if.end23:                                         ; preds = %if.end14
  call void @mutex_lock(ptr noundef @event_mutex) #11, !dbg !6575
  %27 = load ptr, ptr %tp_event, align 8, !dbg !6576
  %28 = load ptr, ptr %p_event.addr, align 8, !dbg !6577
  %call24 = call i32 @perf_trace_event_init(ptr noundef %27, ptr noundef %28) #11, !dbg !6578
  store i32 %call24, ptr %ret, align 4, !dbg !6579
  %29 = load i32, ptr %ret, align 4, !dbg !6580
  %tobool25 = icmp ne i32 %29, 0, !dbg !6580
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !6582

if.then26:                                        ; preds = %if.end23
  %30 = load ptr, ptr %tp_event, align 8, !dbg !6583
  call void @destroy_local_trace_kprobe(ptr noundef %30) #11, !dbg !6584
  br label %if.end27, !dbg !6584

if.end27:                                         ; preds = %if.then26, %if.end23
  call void @mutex_unlock(ptr noundef @event_mutex) #11, !dbg !6585
  br label %out, !dbg !6585

out:                                              ; preds = %if.end27, %if.then20
  call void @llvm.dbg.label(metadata !6514), !dbg !6586
  %31 = load ptr, ptr %func, align 8, !dbg !6587
  call void @kfree(ptr noundef %31) #11, !dbg !6588
  %32 = load i32, ptr %ret, align 4, !dbg !6589
  store i32 %32, ptr %retval, align 4, !dbg !6590
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6590

cleanup:                                          ; preds = %out, %cond.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp_event) #10, !dbg !6591
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #10, !dbg !6591
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !6591
  %33 = load i32, ptr %retval, align 4, !dbg !6591
  ret i32 %33, !dbg !6591
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6592 dso_local ptr @strndup_user(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !6596 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6601, metadata !DIExpression()), !dbg !6602
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6603
  %1 = ptrtoint ptr %0 to i64, !dbg !6603
  %2 = inttoptr i64 %1 to ptr, !dbg !6603
  %3 = ptrtoint ptr %2 to i64, !dbg !6603
  %cmp = icmp uge i64 %3, -4095, !dbg !6603
  %lnot = xor i1 %cmp, true, !dbg !6603
  %lnot1 = xor i1 %lnot, true, !dbg !6603
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6603
  %conv = sext i32 %lnot.ext to i64, !dbg !6603
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6603
  %tobool = icmp ne i64 %expval, 0, !dbg !6603
  ret i1 %tobool, !dbg !6604
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !6605 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6609, metadata !DIExpression()), !dbg !6610
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6611
  %1 = ptrtoint ptr %0 to i64, !dbg !6612
  ret i64 %1, !dbg !6613
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6614 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6618 dso_local ptr @create_local_trace_kprobe(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6622 dso_local void @destroy_local_trace_kprobe(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @perf_kprobe_destroy(ptr noundef %p_event) #0 align 16 !dbg !6623 {
entry:
  %p_event.addr = alloca ptr, align 8
  store ptr %p_event, ptr %p_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p_event.addr, metadata !6625, metadata !DIExpression()), !dbg !6626
  call void @mutex_lock(ptr noundef @event_mutex) #11, !dbg !6627
  %0 = load ptr, ptr %p_event.addr, align 8, !dbg !6628
  call void @perf_trace_event_close(ptr noundef %0) #11, !dbg !6629
  %1 = load ptr, ptr %p_event.addr, align 8, !dbg !6630
  call void @perf_trace_event_unreg(ptr noundef %1) #11, !dbg !6631
  %2 = load ptr, ptr %p_event.addr, align 8, !dbg !6632
  %tp_event = getelementptr inbounds %struct.perf_event, ptr %2, i32 0, i32 69, !dbg !6633
  %3 = load ptr, ptr %tp_event, align 8, !dbg !6633
  call void @trace_event_put_ref(ptr noundef %3) #11, !dbg !6634
  call void @mutex_unlock(ptr noundef @event_mutex) #11, !dbg !6635
  %4 = load ptr, ptr %p_event.addr, align 8, !dbg !6636
  %tp_event1 = getelementptr inbounds %struct.perf_event, ptr %4, i32 0, i32 69, !dbg !6637
  %5 = load ptr, ptr %tp_event1, align 8, !dbg !6637
  call void @destroy_local_trace_kprobe(ptr noundef %5) #11, !dbg !6638
  ret void, !dbg !6639
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @perf_uprobe_init(ptr noundef %p_event, i64 noundef %ref_ctr_offset, i1 noundef zeroext %is_retprobe) #0 align 16 !dbg !6640 {
entry:
  %retval = alloca i32, align 4
  %p_event.addr = alloca ptr, align 8
  %ref_ctr_offset.addr = alloca i64, align 8
  %is_retprobe.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %path = alloca ptr, align 8
  %tp_event = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca ptr, align 8
  store ptr %p_event, ptr %p_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p_event.addr, metadata !6644, metadata !DIExpression()), !dbg !6655
  store i64 %ref_ctr_offset, ptr %ref_ctr_offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref_ctr_offset.addr, metadata !6645, metadata !DIExpression()), !dbg !6656
  %frombool = zext i1 %is_retprobe to i8
  store i8 %frombool, ptr %is_retprobe.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_retprobe.addr, metadata !6646, metadata !DIExpression()), !dbg !6657
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !6658
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6647, metadata !DIExpression()), !dbg !6659
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #10, !dbg !6660
  call void @llvm.dbg.declare(metadata ptr %path, metadata !6648, metadata !DIExpression()), !dbg !6661
  store ptr null, ptr %path, align 8, !dbg !6661
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp_event) #10, !dbg !6662
  call void @llvm.dbg.declare(metadata ptr %tp_event, metadata !6649, metadata !DIExpression()), !dbg !6663
  %0 = load ptr, ptr %p_event.addr, align 8, !dbg !6664
  %attr = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 22, !dbg !6666
  %1 = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 9, !dbg !6667
  %2 = load i64, ptr %1, align 8, !dbg !6667
  %tobool = icmp ne i64 %2, 0, !dbg !6664
  br i1 %tobool, label %if.end, label %if.then, !dbg !6668

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6669

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !6670
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6650, metadata !DIExpression()), !dbg !6670
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !6670
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6653, metadata !DIExpression()), !dbg !6670
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6670
  %conv = zext i1 %cmp to i32, !dbg !6670
  store i32 1, ptr %tmp, align 4, !dbg !6670
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !6671
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !6671
  %3 = load i32, ptr %tmp, align 4, !dbg !6670
  %4 = load ptr, ptr %p_event.addr, align 8, !dbg !6671
  %attr2 = getelementptr inbounds %struct.perf_event, ptr %4, i32 0, i32 22, !dbg !6671
  %5 = getelementptr inbounds %struct.perf_event_attr, ptr %attr2, i32 0, i32 9, !dbg !6671
  %6 = load i64, ptr %5, align 8, !dbg !6671
  %7 = inttoptr i64 %6 to ptr, !dbg !6671
  store ptr %7, ptr %tmp1, align 8, !dbg !6671
  %8 = load ptr, ptr %tmp1, align 8, !dbg !6671
  %call = call ptr @strndup_user(ptr noundef %8, i64 noundef 4096) #11, !dbg !6672
  store ptr %call, ptr %path, align 8, !dbg !6673
  %9 = load ptr, ptr %path, align 8, !dbg !6674
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %9) #11, !dbg !6676
  br i1 %call3, label %if.then4, label %if.end9, !dbg !6677

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %path, align 8, !dbg !6678
  %call5 = call i64 @PTR_ERR(ptr noundef %10) #11, !dbg !6680
  %conv6 = trunc i64 %call5 to i32, !dbg !6680
  store i32 %conv6, ptr %ret, align 4, !dbg !6681
  %11 = load i32, ptr %ret, align 4, !dbg !6682
  %cmp7 = icmp eq i32 %11, -22, !dbg !6683
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !6684

cond.true:                                        ; preds = %if.then4
  br label %cond.end, !dbg !6684

cond.false:                                       ; preds = %if.then4
  %12 = load i32, ptr %ret, align 4, !dbg !6685
  br label %cond.end, !dbg !6684

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -7, %cond.true ], [ %12, %cond.false ], !dbg !6684
  store i32 %cond, ptr %retval, align 4, !dbg !6686
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6686

if.end9:                                          ; preds = %if.end
  %13 = load ptr, ptr %path, align 8, !dbg !6687
  %arrayidx = getelementptr i8, ptr %13, i64 0, !dbg !6687
  %14 = load i8, ptr %arrayidx, align 1, !dbg !6687
  %conv10 = zext i8 %14 to i32, !dbg !6687
  %cmp11 = icmp eq i32 %conv10, 0, !dbg !6689
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !6690

if.then13:                                        ; preds = %if.end9
  store i32 -22, ptr %ret, align 4, !dbg !6691
  br label %out, !dbg !6693

if.end14:                                         ; preds = %if.end9
  %15 = load ptr, ptr %path, align 8, !dbg !6694
  %16 = load ptr, ptr %p_event.addr, align 8, !dbg !6695
  %attr15 = getelementptr inbounds %struct.perf_event, ptr %16, i32 0, i32 22, !dbg !6696
  %17 = getelementptr inbounds %struct.perf_event_attr, ptr %attr15, i32 0, i32 10, !dbg !6697
  %18 = load i64, ptr %17, align 8, !dbg !6697
  %19 = load i64, ptr %ref_ctr_offset.addr, align 8, !dbg !6698
  %20 = load i8, ptr %is_retprobe.addr, align 1, !dbg !6699, !range !6563, !noundef !809
  %tobool16 = trunc i8 %20 to i1, !dbg !6699
  %call17 = call ptr @create_local_trace_uprobe(ptr noundef %15, i64 noundef %18, i64 noundef %19, i1 noundef zeroext %tobool16) #11, !dbg !6700
  store ptr %call17, ptr %tp_event, align 8, !dbg !6701
  %21 = load ptr, ptr %tp_event, align 8, !dbg !6702
  %call18 = call zeroext i1 @IS_ERR(ptr noundef %21) #11, !dbg !6704
  br i1 %call18, label %if.then19, label %if.end22, !dbg !6705

if.then19:                                        ; preds = %if.end14
  %22 = load ptr, ptr %tp_event, align 8, !dbg !6706
  %call20 = call i64 @PTR_ERR(ptr noundef %22) #11, !dbg !6708
  %conv21 = trunc i64 %call20 to i32, !dbg !6708
  store i32 %conv21, ptr %ret, align 4, !dbg !6709
  br label %out, !dbg !6710

if.end22:                                         ; preds = %if.end14
  call void @mutex_lock(ptr noundef @event_mutex) #11, !dbg !6711
  %23 = load ptr, ptr %tp_event, align 8, !dbg !6712
  %24 = load ptr, ptr %p_event.addr, align 8, !dbg !6713
  %call23 = call i32 @perf_trace_event_init(ptr noundef %23, ptr noundef %24) #11, !dbg !6714
  store i32 %call23, ptr %ret, align 4, !dbg !6715
  %25 = load i32, ptr %ret, align 4, !dbg !6716
  %tobool24 = icmp ne i32 %25, 0, !dbg !6716
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !6718

if.then25:                                        ; preds = %if.end22
  %26 = load ptr, ptr %tp_event, align 8, !dbg !6719
  call void @destroy_local_trace_uprobe(ptr noundef %26) #11, !dbg !6720
  br label %if.end26, !dbg !6720

if.end26:                                         ; preds = %if.then25, %if.end22
  call void @mutex_unlock(ptr noundef @event_mutex) #11, !dbg !6721
  br label %out, !dbg !6721

out:                                              ; preds = %if.end26, %if.then19, %if.then13
  call void @llvm.dbg.label(metadata !6654), !dbg !6722
  %27 = load ptr, ptr %path, align 8, !dbg !6723
  call void @kfree(ptr noundef %27) #11, !dbg !6724
  %28 = load i32, ptr %ret, align 4, !dbg !6725
  store i32 %28, ptr %retval, align 4, !dbg !6726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6726

cleanup:                                          ; preds = %out, %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp_event) #10, !dbg !6727
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #10, !dbg !6727
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !6727
  %29 = load i32, ptr %retval, align 4, !dbg !6727
  ret i32 %29, !dbg !6727
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6728 dso_local ptr @create_local_trace_uprobe(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6731 dso_local void @destroy_local_trace_uprobe(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @perf_uprobe_destroy(ptr noundef %p_event) #0 align 16 !dbg !6732 {
entry:
  %p_event.addr = alloca ptr, align 8
  store ptr %p_event, ptr %p_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p_event.addr, metadata !6734, metadata !DIExpression()), !dbg !6735
  call void @mutex_lock(ptr noundef @event_mutex) #11, !dbg !6736
  %0 = load ptr, ptr %p_event.addr, align 8, !dbg !6737
  call void @perf_trace_event_close(ptr noundef %0) #11, !dbg !6738
  %1 = load ptr, ptr %p_event.addr, align 8, !dbg !6739
  call void @perf_trace_event_unreg(ptr noundef %1) #11, !dbg !6740
  %2 = load ptr, ptr %p_event.addr, align 8, !dbg !6741
  %tp_event = getelementptr inbounds %struct.perf_event, ptr %2, i32 0, i32 69, !dbg !6742
  %3 = load ptr, ptr %tp_event, align 8, !dbg !6742
  call void @trace_event_put_ref(ptr noundef %3) #11, !dbg !6743
  call void @mutex_unlock(ptr noundef @event_mutex) #11, !dbg !6744
  %4 = load ptr, ptr %p_event.addr, align 8, !dbg !6745
  %tp_event1 = getelementptr inbounds %struct.perf_event, ptr %4, i32 0, i32 69, !dbg !6746
  %5 = load ptr, ptr %tp_event1, align 8, !dbg !6746
  call void @destroy_local_trace_uprobe(ptr noundef %5) #11, !dbg !6747
  ret void, !dbg !6748
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @perf_trace_add(ptr noundef %p_event, i32 noundef %flags) #0 align 16 !dbg !6749 {
entry:
  %retval = alloca i32, align 4
  %p_event.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %tp_event = alloca ptr, align 8
  %hwc = alloca ptr, align 8
  %pcpu_list = alloca ptr, align 8
  %list = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp43 = alloca ptr, align 8
  store ptr %p_event, ptr %p_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p_event.addr, metadata !6751, metadata !DIExpression()), !dbg !6771
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6752, metadata !DIExpression()), !dbg !6772
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp_event) #10, !dbg !6773
  call void @llvm.dbg.declare(metadata ptr %tp_event, metadata !6753, metadata !DIExpression()), !dbg !6774
  %0 = load ptr, ptr %p_event.addr, align 8, !dbg !6775
  %tp_event1 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 69, !dbg !6776
  %1 = load ptr, ptr %tp_event1, align 8, !dbg !6776
  store ptr %1, ptr %tp_event, align 8, !dbg !6774
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwc) #10, !dbg !6777
  call void @llvm.dbg.declare(metadata ptr %hwc, metadata !6754, metadata !DIExpression()), !dbg !6778
  %2 = load ptr, ptr %p_event.addr, align 8, !dbg !6779
  %hw = getelementptr inbounds %struct.perf_event, ptr %2, i32 0, i32 26, !dbg !6780
  store ptr %hw, ptr %hwc, align 8, !dbg !6778
  %3 = load i32, ptr %flags.addr, align 4, !dbg !6781
  %and = and i32 %3, 1, !dbg !6783
  %tobool = icmp ne i32 %and, 0, !dbg !6783
  br i1 %tobool, label %if.end, label %if.then, !dbg !6784

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %p_event.addr, align 8, !dbg !6785
  %hw2 = getelementptr inbounds %struct.perf_event, ptr %4, i32 0, i32 26, !dbg !6786
  %state = getelementptr inbounds %struct.hw_perf_event, ptr %hw2, i32 0, i32 4, !dbg !6787
  store i32 1, ptr %state, align 8, !dbg !6788
  br label %if.end, !dbg !6785

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %p_event.addr, align 8, !dbg !6789
  %call = call zeroext i1 @is_sampling_event(ptr noundef %5) #11, !dbg !6791
  br i1 %call, label %if.then3, label %if.end5, !dbg !6792

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %hwc, align 8, !dbg !6793
  %sample_period = getelementptr inbounds %struct.hw_perf_event, ptr %6, i32 0, i32 6, !dbg !6795
  %7 = load i64, ptr %sample_period, align 8, !dbg !6795
  %8 = load ptr, ptr %hwc, align 8, !dbg !6796
  %9 = getelementptr inbounds %struct.hw_perf_event, ptr %8, i32 0, i32 7, !dbg !6797
  %last_period = getelementptr inbounds %struct.anon.27, ptr %9, i32 0, i32 0, !dbg !6797
  store i64 %7, ptr %last_period, align 8, !dbg !6798
  %10 = load ptr, ptr %p_event.addr, align 8, !dbg !6799
  %call4 = call i64 @perf_swevent_set_period(ptr noundef %10) #11, !dbg !6800
  br label %if.end5, !dbg !6801

if.end5:                                          ; preds = %if.then3, %if.end
  %11 = load ptr, ptr %tp_event, align 8, !dbg !6802
  %class = getelementptr inbounds %struct.trace_event_call, ptr %11, i32 0, i32 1, !dbg !6803
  %12 = load ptr, ptr %class, align 8, !dbg !6803
  %reg = getelementptr inbounds %struct.trace_event_class, ptr %12, i32 0, i32 3, !dbg !6804
  %13 = load ptr, ptr %reg, align 8, !dbg !6804
  %14 = load ptr, ptr %tp_event, align 8, !dbg !6805
  %15 = load ptr, ptr %p_event.addr, align 8, !dbg !6806
  %call6 = call i32 %13(ptr noundef %14, i32 noundef 6, ptr noundef %15) #11, !dbg !6802
  %tobool7 = icmp ne i32 %call6, 0, !dbg !6802
  br i1 %tobool7, label %if.end45, label %if.then8, !dbg !6807

if.then8:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcpu_list) #10, !dbg !6808
  call void @llvm.dbg.declare(metadata ptr %pcpu_list, metadata !6756, metadata !DIExpression()), !dbg !6809
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #10, !dbg !6810
  call void @llvm.dbg.declare(metadata ptr %list, metadata !6759, metadata !DIExpression()), !dbg !6811
  %16 = load ptr, ptr %tp_event, align 8, !dbg !6812
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %16, i32 0, i32 10, !dbg !6813
  %17 = load ptr, ptr %perf_events, align 8, !dbg !6813
  store ptr %17, ptr %pcpu_list, align 8, !dbg !6814
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6815
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6760, metadata !DIExpression()), !dbg !6815
  %18 = load ptr, ptr %pcpu_list, align 8, !dbg !6815
  %tobool9 = icmp ne ptr %18, null, !dbg !6815
  %lnot = xor i1 %tobool9, true, !dbg !6815
  %lnot10 = xor i1 %lnot, true, !dbg !6815
  %lnot11 = xor i1 %lnot10, true, !dbg !6815
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !6815
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6815
  %19 = load i32, ptr %__ret_warn_on, align 4, !dbg !6816
  %tobool12 = icmp ne i32 %19, 0, !dbg !6816
  %lnot13 = xor i1 %tobool12, true, !dbg !6816
  %lnot15 = xor i1 %lnot13, true, !dbg !6816
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !6816
  %conv = sext i32 %lnot.ext16 to i64, !dbg !6816
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6816
  %tobool17 = icmp ne i64 %expval, 0, !dbg !6816
  br i1 %tobool17, label %if.then18, label %if.end28, !dbg !6815

if.then18:                                        ; preds = %if.then8
  br label %do.body, !dbg !6816

do.body:                                          ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !6817
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6763, metadata !DIExpression()), !dbg !6817
  store i32 2307, ptr %__flags, align 4, !dbg !6817
  br label %do.body19, !dbg !6817

do.body19:                                        ; preds = %do.body
  br label %do.cond, !dbg !6818

do.cond:                                          ; preds = %do.body19
  br label %do.end, !dbg !6818

do.end:                                           ; preds = %do.cond
  br label %do.body20, !dbg !6817

do.body20:                                        ; preds = %do.end
  %20 = load i32, ptr %__flags, align 4, !dbg !6820
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 375, i32 %20, i64 12) #10, !dbg !6820, !srcloc !6822
  br label %do.cond21, !dbg !6820

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !6820

do.end22:                                         ; preds = %do.cond21
  br label %do.body23, !dbg !6817

do.body23:                                        ; preds = %do.end22
  br label %do.cond24, !dbg !6823

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !6823

do.end25:                                         ; preds = %do.cond24
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !6816
  br label %do.cond26, !dbg !6817

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !6817

do.end27:                                         ; preds = %do.cond26
  br label %if.end28, !dbg !6817

if.end28:                                         ; preds = %do.end27, %if.then8
  %21 = load i32, ptr %__ret_warn_on, align 4, !dbg !6815
  %tobool29 = icmp ne i32 %21, 0, !dbg !6815
  %lnot30 = xor i1 %tobool29, true, !dbg !6815
  %lnot32 = xor i1 %lnot30, true, !dbg !6815
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !6815
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !6815
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !6815
  store i64 %expval35, ptr %tmp, align 8, !dbg !6816
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6825
  %22 = load i64, ptr %tmp, align 8, !dbg !6815
  %tobool36 = icmp ne i64 %22, 0, !dbg !6825
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !6826

if.then37:                                        ; preds = %if.end28
  store i32 -22, ptr %retval, align 4, !dbg !6827
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6827

if.end38:                                         ; preds = %if.end28
  br label %do.body39, !dbg !6828

do.body39:                                        ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !6829
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6766, metadata !DIExpression()), !dbg !6829
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6829
  %23 = load ptr, ptr %__vpp_verify, align 8, !dbg !6829
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !6828
  br label %do.cond40, !dbg !6829

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !6829

do.end41:                                         ; preds = %do.cond40
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #10, !dbg !6830
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6769, metadata !DIExpression()), !dbg !6830
  %24 = load ptr, ptr %pcpu_list, align 8, !dbg !6830
  %25 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr %24) #12, !dbg !6830, !srcloc !6831
  store i64 %25, ptr %tcp_ptr__, align 8, !dbg !6830
  %26 = load i64, ptr %tcp_ptr__, align 8, !dbg !6830
  %27 = inttoptr i64 %26 to ptr, !dbg !6830
  store ptr %27, ptr %tmp43, align 8, !dbg !6830
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #10, !dbg !6828
  %28 = load ptr, ptr %tmp43, align 8, !dbg !6830
  store ptr %28, ptr %tmp42, align 8, !dbg !6829
  %29 = load ptr, ptr %tmp42, align 8, !dbg !6828
  store ptr %29, ptr %list, align 8, !dbg !6832
  %30 = load ptr, ptr %p_event.addr, align 8, !dbg !6833
  %hlist_entry = getelementptr inbounds %struct.perf_event, ptr %30, i32 0, i32 6, !dbg !6834
  %31 = load ptr, ptr %list, align 8, !dbg !6835
  call void @hlist_add_head_rcu(ptr noundef %hlist_entry, ptr noundef %31) #11, !dbg !6836
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6837
  br label %cleanup, !dbg !6837

cleanup:                                          ; preds = %do.end41, %if.then37
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #10, !dbg !6837
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcpu_list) #10, !dbg !6837
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup46 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end45, !dbg !6838

if.end45:                                         ; preds = %cleanup.cont, %if.end5
  store i32 0, ptr %retval, align 4, !dbg !6839
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !6839

cleanup46:                                        ; preds = %if.end45, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwc) #10, !dbg !6840
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp_event) #10, !dbg !6840
  %32 = load i32, ptr %retval, align 4, !dbg !6840
  ret i32 %32, !dbg !6840
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_sampling_event(ptr noundef %event) #4 align 16 !dbg !6841 {
entry:
  %event.addr = alloca ptr, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6845, metadata !DIExpression()), !dbg !6846
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6847
  %attr = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 22, !dbg !6848
  %1 = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 3, !dbg !6849
  %2 = load i64, ptr %1, align 8, !dbg !6849
  %cmp = icmp ne i64 %2, 0, !dbg !6850
  ret i1 %cmp, !dbg !6851
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6852 dso_local i64 @perf_swevent_set_period(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_add_head_rcu(ptr noundef %n, ptr noundef %h) #4 align 16 !dbg !6855 {
entry:
  %n.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6860, metadata !DIExpression()), !dbg !6865
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !6861, metadata !DIExpression()), !dbg !6866
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #10, !dbg !6867
  call void @llvm.dbg.declare(metadata ptr %first, metadata !6862, metadata !DIExpression()), !dbg !6868
  %0 = load ptr, ptr %h.addr, align 8, !dbg !6869
  %first1 = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !6870
  %1 = load ptr, ptr %first1, align 8, !dbg !6870
  store ptr %1, ptr %first, align 8, !dbg !6868
  %2 = load ptr, ptr %first, align 8, !dbg !6871
  %3 = load ptr, ptr %n.addr, align 8, !dbg !6872
  %next = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 0, !dbg !6873
  store ptr %2, ptr %next, align 8, !dbg !6874
  br label %do.body, !dbg !6875

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6876

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6878

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6878

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6876

do.body3:                                         ; preds = %do.end
  %4 = load ptr, ptr %h.addr, align 8, !dbg !6880
  %first4 = getelementptr inbounds %struct.hlist_head, ptr %4, i32 0, i32 0, !dbg !6880
  %5 = load ptr, ptr %n.addr, align 8, !dbg !6880
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1, !dbg !6880
  store volatile ptr %first4, ptr %pprev, align 8, !dbg !6880
  br label %do.cond5, !dbg !6880

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !6880

do.end6:                                          ; preds = %do.cond5
  br label %do.cond7, !dbg !6876

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6876

do.end8:                                          ; preds = %do.cond7
  br label %do.body9, !dbg !6882

do.body9:                                         ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #10, !dbg !6883
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !6863, metadata !DIExpression()), !dbg !6883
  %6 = load ptr, ptr %n.addr, align 8, !dbg !6883
  %7 = ptrtoint ptr %6 to i64, !dbg !6883
  store i64 %7, ptr %_r_a_p__v, align 8, !dbg !6883
  br i1 false, label %land.lhs.true, label %if.else, !dbg !6884

land.lhs.true:                                    ; preds = %do.body9
  %8 = load i64, ptr %_r_a_p__v, align 8, !dbg !6884
  %cmp = icmp eq i64 %8, 0, !dbg !6884
  br i1 %cmp, label %if.then, label %if.else, !dbg !6883

if.then:                                          ; preds = %land.lhs.true
  br label %do.body10, !dbg !6884

do.body10:                                        ; preds = %if.then
  br label %do.body11, !dbg !6886

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !6888

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6888

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6886

do.body14:                                        ; preds = %do.end13
  %9 = load i64, ptr %_r_a_p__v, align 8, !dbg !6890
  %10 = inttoptr i64 %9 to ptr, !dbg !6890
  %11 = load ptr, ptr %h.addr, align 8, !dbg !6890
  %first15 = getelementptr inbounds %struct.hlist_head, ptr %11, i32 0, i32 0, !dbg !6890
  store volatile ptr %10, ptr %first15, align 8, !dbg !6890
  br label %do.cond16, !dbg !6890

do.cond16:                                        ; preds = %do.body14
  br label %do.end17, !dbg !6890

do.end17:                                         ; preds = %do.cond16
  br label %do.cond18, !dbg !6886

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !6886

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !6886

if.else:                                          ; preds = %land.lhs.true, %do.body9
  br label %do.body20, !dbg !6884

do.body20:                                        ; preds = %if.else
  br label %do.body21, !dbg !6892

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !6894

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !6894

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !6892

do.body24:                                        ; preds = %do.end23
  br label %do.body25, !dbg !6896

do.body25:                                        ; preds = %do.body24
  br label %do.cond26, !dbg !6898

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !6898

do.end27:                                         ; preds = %do.cond26
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !6896, !srcloc !6900
  br label %do.body28, !dbg !6896

do.body28:                                        ; preds = %do.end27
  br label %do.body29, !dbg !6901

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !6903

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6903

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6901

do.body32:                                        ; preds = %do.end31
  %12 = load i64, ptr %_r_a_p__v, align 8, !dbg !6905
  %13 = inttoptr i64 %12 to ptr, !dbg !6905
  %14 = load ptr, ptr %h.addr, align 8, !dbg !6905
  %first33 = getelementptr inbounds %struct.hlist_head, ptr %14, i32 0, i32 0, !dbg !6905
  store volatile ptr %13, ptr %first33, align 8, !dbg !6905
  br label %do.cond34, !dbg !6905

do.cond34:                                        ; preds = %do.body32
  br label %do.end35, !dbg !6905

do.end35:                                         ; preds = %do.cond34
  br label %do.cond36, !dbg !6901

do.cond36:                                        ; preds = %do.end35
  br label %do.end37, !dbg !6901

do.end37:                                         ; preds = %do.cond36
  br label %do.cond38, !dbg !6896

do.cond38:                                        ; preds = %do.end37
  br label %do.end39, !dbg !6896

do.end39:                                         ; preds = %do.cond38
  br label %do.cond40, !dbg !6892

do.cond40:                                        ; preds = %do.end39
  br label %do.end41, !dbg !6892

do.end41:                                         ; preds = %do.cond40
  br label %if.end

if.end:                                           ; preds = %do.end41, %do.end19
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #10, !dbg !6882
  br label %do.cond42, !dbg !6883

do.cond42:                                        ; preds = %if.end
  br label %do.end43, !dbg !6883

do.end43:                                         ; preds = %do.cond42
  %15 = load ptr, ptr %first, align 8, !dbg !6907
  %tobool = icmp ne ptr %15, null, !dbg !6907
  br i1 %tobool, label %if.then44, label %if.end56, !dbg !6909

if.then44:                                        ; preds = %do.end43
  br label %do.body45, !dbg !6910

do.body45:                                        ; preds = %if.then44
  br label %do.body46, !dbg !6911

do.body46:                                        ; preds = %do.body45
  br label %do.cond47, !dbg !6913

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !6913

do.end48:                                         ; preds = %do.cond47
  br label %do.body49, !dbg !6911

do.body49:                                        ; preds = %do.end48
  %16 = load ptr, ptr %n.addr, align 8, !dbg !6915
  %next50 = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 0, !dbg !6915
  %17 = load ptr, ptr %first, align 8, !dbg !6915
  %pprev51 = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1, !dbg !6915
  store volatile ptr %next50, ptr %pprev51, align 8, !dbg !6915
  br label %do.cond52, !dbg !6915

do.cond52:                                        ; preds = %do.body49
  br label %do.end53, !dbg !6915

do.end53:                                         ; preds = %do.cond52
  br label %do.cond54, !dbg !6911

do.cond54:                                        ; preds = %do.end53
  br label %do.end55, !dbg !6911

do.end55:                                         ; preds = %do.cond54
  br label %if.end56, !dbg !6911

if.end56:                                         ; preds = %do.end55, %do.end43
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #10, !dbg !6917
  ret void, !dbg !6917
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @perf_trace_del(ptr noundef %p_event, i32 noundef %flags) #0 align 16 !dbg !6918 {
entry:
  %p_event.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %tp_event = alloca ptr, align 8
  store ptr %p_event, ptr %p_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p_event.addr, metadata !6920, metadata !DIExpression()), !dbg !6923
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6921, metadata !DIExpression()), !dbg !6924
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp_event) #10, !dbg !6925
  call void @llvm.dbg.declare(metadata ptr %tp_event, metadata !6922, metadata !DIExpression()), !dbg !6926
  %0 = load ptr, ptr %p_event.addr, align 8, !dbg !6927
  %tp_event1 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 69, !dbg !6928
  %1 = load ptr, ptr %tp_event1, align 8, !dbg !6928
  store ptr %1, ptr %tp_event, align 8, !dbg !6926
  %2 = load ptr, ptr %tp_event, align 8, !dbg !6929
  %class = getelementptr inbounds %struct.trace_event_call, ptr %2, i32 0, i32 1, !dbg !6931
  %3 = load ptr, ptr %class, align 8, !dbg !6931
  %reg = getelementptr inbounds %struct.trace_event_class, ptr %3, i32 0, i32 3, !dbg !6932
  %4 = load ptr, ptr %reg, align 8, !dbg !6932
  %5 = load ptr, ptr %tp_event, align 8, !dbg !6933
  %6 = load ptr, ptr %p_event.addr, align 8, !dbg !6934
  %call = call i32 %4(ptr noundef %5, i32 noundef 7, ptr noundef %6) #11, !dbg !6929
  %tobool = icmp ne i32 %call, 0, !dbg !6929
  br i1 %tobool, label %if.end, label %if.then, !dbg !6935

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %p_event.addr, align 8, !dbg !6936
  %hlist_entry = getelementptr inbounds %struct.perf_event, ptr %7, i32 0, i32 6, !dbg !6937
  call void @hlist_del_rcu(ptr noundef %hlist_entry) #11, !dbg !6938
  br label %if.end, !dbg !6938

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp_event) #10, !dbg !6939
  ret void, !dbg !6939
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_del_rcu(ptr noundef %n) #4 align 16 !dbg !6940 {
entry:
  %n.addr = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6944, metadata !DIExpression()), !dbg !6945
  %0 = load ptr, ptr %n.addr, align 8, !dbg !6946
  call void @__hlist_del(ptr noundef %0) #11, !dbg !6947
  br label %do.body, !dbg !6948

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6949

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6951

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6949

do.body2:                                         ; preds = %do.end
  %1 = load ptr, ptr %n.addr, align 8, !dbg !6953
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1, !dbg !6953
  store volatile ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %pprev, align 8, !dbg !6953
  br label %do.end3, !dbg !6953

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6949

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !6955
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @perf_trace_buf_alloc(i32 noundef %size, ptr noundef %regs, ptr noundef %rctxp) #0 align 16 !dbg !9 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %regs.addr = alloca ptr, align 8
  %rctxp.addr = alloca ptr, align 8
  %raw_data = alloca ptr, align 8
  %rctx = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp51 = alloca i64, align 8
  %tmp60 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp80 = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp81 = alloca ptr, align 8
  %__vpp_verify84 = alloca ptr, align 8
  %tmp87 = alloca ptr, align 8
  %tcp_ptr__88 = alloca i64, align 8
  %tmp91 = alloca ptr, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6231, metadata !DIExpression()), !dbg !6956
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6232, metadata !DIExpression()), !dbg !6957
  store ptr %rctxp, ptr %rctxp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rctxp.addr, metadata !6233, metadata !DIExpression()), !dbg !6958
  call void @llvm.lifetime.start.p0(i64 8, ptr %raw_data) #10, !dbg !6959
  call void @llvm.dbg.declare(metadata ptr %raw_data, metadata !6234, metadata !DIExpression()), !dbg !6960
  call void @llvm.lifetime.start.p0(i64 4, ptr %rctx) #10, !dbg !6961
  call void @llvm.dbg.declare(metadata ptr %rctx, metadata !6235, metadata !DIExpression()), !dbg !6962
  br label %do.body, !dbg !6963

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6964

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6964

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #10, !dbg !6966
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !6236, metadata !DIExpression()), !dbg !6966
  %0 = load i32, ptr %size.addr, align 4, !dbg !6966
  %cmp = icmp sgt i32 %0, 8192, !dbg !6966
  %lnot = xor i1 %cmp, true, !dbg !6966
  %lnot1 = xor i1 %lnot, true, !dbg !6966
  %frombool = zext i1 %lnot1 to i8, !dbg !6966
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !6966
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #10, !dbg !6967
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !6239, metadata !DIExpression()), !dbg !6967
  %1 = load i8, ptr %__ret_do_once, align 1, !dbg !6967, !range !6563, !noundef !809
  %tobool = trunc i8 %1 to i1, !dbg !6967
  %lnot2 = xor i1 %tobool, true, !dbg !6967
  %lnot3 = xor i1 %lnot2, true, !dbg !6967
  %frombool4 = zext i1 %lnot3 to i8, !dbg !6967
  store i8 %frombool4, ptr %__ret_cond, align 1, !dbg !6967
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #10, !dbg !6967
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !6242, metadata !DIExpression()), !dbg !6967
  store i8 0, ptr %__ret_once, align 1, !dbg !6967
  %2 = load i8, ptr %__ret_cond, align 1, !dbg !6968, !range !6563, !noundef !809
  %tobool5 = trunc i8 %2 to i1, !dbg !6968
  br i1 %tobool5, label %land.rhs, label %land.end, !dbg !6968

land.rhs:                                         ; preds = %do.end
  %3 = load i8, ptr @perf_trace_buf_alloc.__already_done, align 1, !dbg !6968, !range !6563, !noundef !809
  %tobool6 = trunc i8 %3 to i1, !dbg !6968
  %lnot7 = xor i1 %tobool6, true, !dbg !6968
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %4 = phi i1 [ false, %do.end ], [ %lnot7, %land.rhs ], !dbg !6970
  %lnot8 = xor i1 %4, true, !dbg !6968
  %lnot9 = xor i1 %lnot8, true, !dbg !6968
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !6968
  %conv = sext i32 %lnot.ext to i64, !dbg !6968
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6968
  %tobool10 = icmp ne i64 %expval, 0, !dbg !6968
  br i1 %tobool10, label %if.then, label %if.end, !dbg !6967

if.then:                                          ; preds = %land.end
  store i8 1, ptr @perf_trace_buf_alloc.__already_done, align 1, !dbg !6971
  store i8 1, ptr %__ret_once, align 1, !dbg !6971
  br label %if.end, !dbg !6971

if.end:                                           ; preds = %if.then, %land.end
  %5 = load i8, ptr %__ret_once, align 1, !dbg !6967, !range !6563, !noundef !809
  %tobool11 = trunc i8 %5 to i1, !dbg !6967
  %lnot12 = xor i1 %tobool11, true, !dbg !6967
  %lnot14 = xor i1 %lnot12, true, !dbg !6967
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !6967
  %conv16 = sext i32 %lnot.ext15 to i64, !dbg !6967
  %expval17 = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !6967
  store i64 %expval17, ptr %tmp, align 8, !dbg !6968
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #10, !dbg !6973
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #10, !dbg !6973
  %6 = load i64, ptr %tmp, align 8, !dbg !6967
  %tobool18 = icmp ne i64 %6, 0, !dbg !6973
  br i1 %tobool18, label %if.then19, label %if.end59, !dbg !6966

if.then19:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6974
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6243, metadata !DIExpression()), !dbg !6974
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !6974
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !6975
  %tobool20 = icmp ne i32 %7, 0, !dbg !6975
  %lnot21 = xor i1 %tobool20, true, !dbg !6975
  %lnot23 = xor i1 %lnot21, true, !dbg !6975
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !6975
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !6975
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !6975
  %tobool27 = icmp ne i64 %expval26, 0, !dbg !6975
  br i1 %tobool27, label %if.then28, label %if.end50, !dbg !6974

if.then28:                                        ; preds = %if.then19
  br label %do.body29, !dbg !6975

do.body29:                                        ; preds = %if.then28
  br label %do.body30, !dbg !6976

do.body30:                                        ; preds = %do.body29
  br label %do.cond31, !dbg !6977

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !6977

do.end32:                                         ; preds = %do.cond31
  %8 = load i32, ptr %size.addr, align 4, !dbg !6976
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.1, i32 noundef %8, i32 noundef 8192) #11, !dbg !6976
  br label %do.body33, !dbg !6976

do.body33:                                        ; preds = %do.end32
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !6979
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6245, metadata !DIExpression()), !dbg !6979
  store i32 2313, ptr %__flags, align 4, !dbg !6979
  br label %do.body34, !dbg !6979

do.body34:                                        ; preds = %do.body33
  br label %do.cond35, !dbg !6980

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !6980

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6979

do.body37:                                        ; preds = %do.end36
  %9 = load i32, ptr %__flags, align 4, !dbg !6982
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 407, i32 %9, i64 12) #10, !dbg !6982, !srcloc !6984
  br label %do.cond38, !dbg !6982

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !6982

do.end39:                                         ; preds = %do.cond38
  br label %do.body40, !dbg !6979

do.body40:                                        ; preds = %do.end39
  br label %do.cond41, !dbg !6985

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !6985

do.end42:                                         ; preds = %do.cond41
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !6976
  br label %do.cond43, !dbg !6979

do.cond43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !6979

do.end44:                                         ; preds = %do.cond43
  br label %do.body45, !dbg !6976

do.body45:                                        ; preds = %do.end44
  br label %do.cond46, !dbg !6987

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !6987

do.end47:                                         ; preds = %do.cond46
  br label %do.cond48, !dbg !6976

do.cond48:                                        ; preds = %do.end47
  br label %do.end49, !dbg !6976

do.end49:                                         ; preds = %do.cond48
  br label %if.end50, !dbg !6976

if.end50:                                         ; preds = %do.end49, %if.then19
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !6974
  %tobool52 = icmp ne i32 %10, 0, !dbg !6974
  %lnot53 = xor i1 %tobool52, true, !dbg !6974
  %lnot55 = xor i1 %lnot53, true, !dbg !6974
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !6974
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !6974
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 0), !dbg !6974
  store i64 %expval58, ptr %tmp51, align 8, !dbg !6975
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6973
  %11 = load i64, ptr %tmp51, align 8, !dbg !6974
  br label %if.end59, !dbg !6973

if.end59:                                         ; preds = %if.end50, %if.end
  %12 = load i8, ptr %__ret_do_once, align 1, !dbg !6966, !range !6563, !noundef !809
  %tobool61 = trunc i8 %12 to i1, !dbg !6966
  %lnot62 = xor i1 %tobool61, true, !dbg !6966
  %lnot64 = xor i1 %lnot62, true, !dbg !6966
  %lnot.ext65 = zext i1 %lnot64 to i32, !dbg !6966
  %conv66 = sext i32 %lnot.ext65 to i64, !dbg !6966
  %expval67 = call i64 @llvm.expect.i64(i64 %conv66, i64 0), !dbg !6966
  store i64 %expval67, ptr %tmp60, align 8, !dbg !6973
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #10, !dbg !6989
  %13 = load i64, ptr %tmp60, align 8, !dbg !6966
  %tobool68 = icmp ne i64 %13, 0, !dbg !6989
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !6990

if.then69:                                        ; preds = %if.end59
  store ptr null, ptr %retval, align 8, !dbg !6991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6991

if.end70:                                         ; preds = %if.end59
  %call = call i32 @perf_swevent_get_recursion_context() #11, !dbg !6992
  store i32 %call, ptr %rctx, align 4, !dbg !6993
  %14 = load ptr, ptr %rctxp.addr, align 8, !dbg !6994
  store i32 %call, ptr %14, align 4, !dbg !6995
  %15 = load i32, ptr %rctx, align 4, !dbg !6996
  %cmp71 = icmp slt i32 %15, 0, !dbg !6998
  br i1 %cmp71, label %if.then73, label %if.end74, !dbg !6999

if.then73:                                        ; preds = %if.end70
  store ptr null, ptr %retval, align 8, !dbg !7000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7000

if.end74:                                         ; preds = %if.end70
  %16 = load ptr, ptr %regs.addr, align 8, !dbg !7001
  %tobool75 = icmp ne ptr %16, null, !dbg !7001
  br i1 %tobool75, label %if.then76, label %if.end82, !dbg !7002

if.then76:                                        ; preds = %if.end74
  br label %do.body77, !dbg !7003

do.body77:                                        ; preds = %if.then76
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !7004
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6249, metadata !DIExpression()), !dbg !7004
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7004
  %17 = load ptr, ptr %__vpp_verify, align 8, !dbg !7004
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !7003
  br label %do.cond78, !dbg !7004

do.cond78:                                        ; preds = %do.body77
  br label %do.end79, !dbg !7004

do.end79:                                         ; preds = %do.cond78
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #10, !dbg !7005
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6253, metadata !DIExpression()), !dbg !7005
  %18 = load i32, ptr %rctx, align 4, !dbg !7005
  %idxprom = sext i32 %18 to i64, !dbg !7005
  %arrayidx = getelementptr [4 x %struct.pt_regs], ptr @__perf_regs, i64 0, i64 %idxprom, !dbg !7005
  %19 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr %arrayidx) #12, !dbg !7005, !srcloc !7006
  store i64 %19, ptr %tcp_ptr__, align 8, !dbg !7005
  %20 = load i64, ptr %tcp_ptr__, align 8, !dbg !7005
  %21 = inttoptr i64 %20 to ptr, !dbg !7005
  store ptr %21, ptr %tmp81, align 8, !dbg !7005
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #10, !dbg !7003
  %22 = load ptr, ptr %tmp81, align 8, !dbg !7005
  store ptr %22, ptr %tmp80, align 8, !dbg !7004
  %23 = load ptr, ptr %tmp80, align 8, !dbg !7003
  %24 = load ptr, ptr %regs.addr, align 8, !dbg !7007
  store ptr %23, ptr %24, align 8, !dbg !7008
  br label %if.end82, !dbg !7009

if.end82:                                         ; preds = %do.end79, %if.end74
  br label %do.body83, !dbg !7010

do.body83:                                        ; preds = %if.end82
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify84) #10, !dbg !7011
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify84, metadata !6255, metadata !DIExpression()), !dbg !7011
  store ptr null, ptr %__vpp_verify84, align 8, !dbg !7011
  %25 = load ptr, ptr %__vpp_verify84, align 8, !dbg !7011
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify84) #10, !dbg !7010
  br label %do.cond85, !dbg !7011

do.cond85:                                        ; preds = %do.body83
  br label %do.end86, !dbg !7011

do.end86:                                         ; preds = %do.cond85
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__88) #10, !dbg !7012
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__88, metadata !6258, metadata !DIExpression()), !dbg !7012
  %26 = load i32, ptr %rctx, align 4, !dbg !7012
  %idxprom89 = sext i32 %26 to i64, !dbg !7012
  %arrayidx90 = getelementptr [4 x ptr], ptr @perf_trace_buf, i64 0, i64 %idxprom89, !dbg !7012
  %27 = load ptr, ptr %arrayidx90, align 8, !dbg !7012
  %28 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr %27) #12, !dbg !7012, !srcloc !7013
  store i64 %28, ptr %tcp_ptr__88, align 8, !dbg !7012
  %29 = load i64, ptr %tcp_ptr__88, align 8, !dbg !7012
  %30 = inttoptr i64 %29 to ptr, !dbg !7012
  store ptr %30, ptr %tmp91, align 8, !dbg !7012
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__88) #10, !dbg !7010
  %31 = load ptr, ptr %tmp91, align 8, !dbg !7012
  store ptr %31, ptr %tmp87, align 8, !dbg !7011
  %32 = load ptr, ptr %tmp87, align 8, !dbg !7010
  store ptr %32, ptr %raw_data, align 8, !dbg !7014
  %33 = load ptr, ptr %raw_data, align 8, !dbg !7015
  %34 = load i32, ptr %size.addr, align 4, !dbg !7016
  %conv92 = sext i32 %34 to i64, !dbg !7016
  %sub = sub i64 %conv92, 8, !dbg !7017
  %arrayidx93 = getelementptr i8, ptr %33, i64 %sub, !dbg !7015
  call void @llvm.memset.p0.i64(ptr align 1 %arrayidx93, i8 0, i64 8, i1 false), !dbg !7018
  %35 = load ptr, ptr %raw_data, align 8, !dbg !7019
  store ptr %35, ptr %retval, align 8, !dbg !7020
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7020

cleanup:                                          ; preds = %do.end86, %if.then73, %if.then69
  call void @llvm.lifetime.end.p0(i64 4, ptr %rctx) #10, !dbg !7021
  call void @llvm.lifetime.end.p0(i64 8, ptr %raw_data) #10, !dbg !7021
  %36 = load ptr, ptr %retval, align 8, !dbg !7021
  ret ptr %36, !dbg !7021
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7022 dso_local void @__warn_printk(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7025 dso_local i32 @perf_swevent_get_recursion_context() #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @perf_trace_buf_update(ptr noundef %record, i16 noundef zeroext %type) #0 align 16 !dbg !7026 {
entry:
  %record.addr = alloca ptr, align 8
  %type.addr = alloca i16, align 2
  %entry1 = alloca ptr, align 8
  store ptr %record, ptr %record.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %record.addr, metadata !7030, metadata !DIExpression()), !dbg !7033
  store i16 %type, ptr %type.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7031, metadata !DIExpression()), !dbg !7034
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #10, !dbg !7035
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !7032, metadata !DIExpression()), !dbg !7036
  %0 = load ptr, ptr %record.addr, align 8, !dbg !7037
  store ptr %0, ptr %entry1, align 8, !dbg !7036
  %1 = load ptr, ptr %entry1, align 8, !dbg !7038
  %2 = load i16, ptr %type.addr, align 2, !dbg !7039
  %call = call i32 @tracing_gen_ctx() #11, !dbg !7040
  call void @tracing_generic_entry_update(ptr noundef %1, i16 noundef zeroext %2, i32 noundef %call) #11, !dbg !7041
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #10, !dbg !7042
  ret void, !dbg !7042
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tracing_generic_entry_update(ptr noundef %entry1, i16 noundef zeroext %type, i32 noundef %trace_ctx) #4 align 16 !dbg !7043 {
entry:
  %entry.addr = alloca ptr, align 8
  %type.addr = alloca i16, align 2
  %trace_ctx.addr = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7047, metadata !DIExpression()), !dbg !7050
  store i16 %type, ptr %type.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7048, metadata !DIExpression()), !dbg !7051
  store i32 %trace_ctx, ptr %trace_ctx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trace_ctx.addr, metadata !7049, metadata !DIExpression()), !dbg !7052
  %0 = load i32, ptr %trace_ctx.addr, align 4, !dbg !7053
  %and = and i32 %0, 255, !dbg !7054
  %conv = trunc i32 %and to i8, !dbg !7053
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !7055
  %preempt_count = getelementptr inbounds %struct.trace_entry, ptr %1, i32 0, i32 2, !dbg !7056
  store i8 %conv, ptr %preempt_count, align 1, !dbg !7057
  %call = call ptr @get_current() #11, !dbg !7058
  %pid = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 62, !dbg !7059
  %2 = load i32, ptr %pid, align 8, !dbg !7059
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !7060
  %pid2 = getelementptr inbounds %struct.trace_entry, ptr %3, i32 0, i32 3, !dbg !7061
  store i32 %2, ptr %pid2, align 4, !dbg !7062
  %4 = load i16, ptr %type.addr, align 2, !dbg !7063
  %5 = load ptr, ptr %entry.addr, align 8, !dbg !7064
  %type3 = getelementptr inbounds %struct.trace_entry, ptr %5, i32 0, i32 0, !dbg !7065
  store i16 %4, ptr %type3, align 4, !dbg !7066
  %6 = load i32, ptr %trace_ctx.addr, align 4, !dbg !7067
  %shr = lshr i32 %6, 16, !dbg !7068
  %conv4 = trunc i32 %shr to i8, !dbg !7067
  %7 = load ptr, ptr %entry.addr, align 8, !dbg !7069
  %flags = getelementptr inbounds %struct.trace_entry, ptr %7, i32 0, i32 1, !dbg !7070
  store i8 %conv4, ptr %flags, align 2, !dbg !7071
  ret void, !dbg !7072
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tracing_gen_ctx() #4 align 16 !dbg !7073 {
entry:
  %irqflags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %irqflags) #10, !dbg !7082
  call void @llvm.dbg.declare(metadata ptr %irqflags, metadata !7077, metadata !DIExpression()), !dbg !7083
  br label %do.body, !dbg !7084

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !7085
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !7078, metadata !DIExpression()), !dbg !7085
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !7085
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !7081, metadata !DIExpression()), !dbg !7085
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !7085
  %conv = zext i1 %cmp to i32, !dbg !7085
  store i32 1, ptr %tmp, align 4, !dbg !7085
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !7086
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !7086
  %0 = load i32, ptr %tmp, align 4, !dbg !7085
  %call = call i64 @arch_local_save_flags() #11, !dbg !7086
  store i64 %call, ptr %irqflags, align 8, !dbg !7086
  br label %do.cond, !dbg !7086

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7086

do.end:                                           ; preds = %do.cond
  %1 = load i64, ptr %irqflags, align 8, !dbg !7087
  %call1 = call i32 @tracing_gen_ctx_flags(i64 noundef %1) #11, !dbg !7088
  call void @llvm.lifetime.end.p0(i64 8, ptr %irqflags) #10, !dbg !7089
  ret i32 %call1, !dbg !7090
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7091 dso_local zeroext i1 @trace_event_dyn_try_get_ref(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7092 dso_local zeroext i1 @try_module_get(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @perf_trace_event_perm(ptr noundef %tp_event, ptr noundef %p_event) #0 align 16 !dbg !7095 {
entry:
  %retval = alloca i32, align 4
  %tp_event.addr = alloca ptr, align 8
  %p_event.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tp_event, ptr %tp_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp_event.addr, metadata !7097, metadata !DIExpression()), !dbg !7100
  store ptr %p_event, ptr %p_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p_event.addr, metadata !7098, metadata !DIExpression()), !dbg !7101
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !7102
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7099, metadata !DIExpression()), !dbg !7103
  %0 = load ptr, ptr %tp_event.addr, align 8, !dbg !7104
  %perf_perm = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 12, !dbg !7106
  %1 = load ptr, ptr %perf_perm, align 8, !dbg !7106
  %tobool = icmp ne ptr %1, null, !dbg !7104
  br i1 %tobool, label %if.then, label %if.end4, !dbg !7107

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tp_event.addr, align 8, !dbg !7108
  %perf_perm1 = getelementptr inbounds %struct.trace_event_call, ptr %2, i32 0, i32 12, !dbg !7110
  %3 = load ptr, ptr %perf_perm1, align 8, !dbg !7110
  %4 = load ptr, ptr %tp_event.addr, align 8, !dbg !7111
  %5 = load ptr, ptr %p_event.addr, align 8, !dbg !7112
  %call = call i32 %3(ptr noundef %4, ptr noundef %5) #11, !dbg !7108
  store i32 %call, ptr %ret, align 4, !dbg !7113
  %6 = load i32, ptr %ret, align 4, !dbg !7114
  %tobool2 = icmp ne i32 %6, 0, !dbg !7114
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !7116

if.then3:                                         ; preds = %if.then
  %7 = load i32, ptr %ret, align 4, !dbg !7117
  store i32 %7, ptr %retval, align 4, !dbg !7118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7118

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !7119

if.end4:                                          ; preds = %if.end, %entry
  %8 = load ptr, ptr %p_event.addr, align 8, !dbg !7120
  %parent = getelementptr inbounds %struct.perf_event, ptr %8, i32 0, i32 34, !dbg !7122
  %9 = load ptr, ptr %parent, align 8, !dbg !7122
  %tobool5 = icmp ne ptr %9, null, !dbg !7120
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !7123

if.then6:                                         ; preds = %if.end4
  store i32 0, ptr %retval, align 4, !dbg !7124
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7124

if.end7:                                          ; preds = %if.end4
  %10 = load ptr, ptr %tp_event.addr, align 8, !dbg !7125
  %call8 = call zeroext i1 @ftrace_event_is_function(ptr noundef %10) #11, !dbg !7127
  br i1 %call8, label %if.then9, label %if.end25, !dbg !7128

if.then9:                                         ; preds = %if.end7
  %11 = load ptr, ptr %p_event.addr, align 8, !dbg !7129
  %attr = getelementptr inbounds %struct.perf_event, ptr %11, i32 0, i32 22, !dbg !7131
  %call10 = call i32 @perf_allow_tracepoint(ptr noundef %attr) #11, !dbg !7132
  store i32 %call10, ptr %ret, align 4, !dbg !7133
  %12 = load i32, ptr %ret, align 4, !dbg !7134
  %tobool11 = icmp ne i32 %12, 0, !dbg !7134
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !7136

if.then12:                                        ; preds = %if.then9
  %13 = load i32, ptr %ret, align 4, !dbg !7137
  store i32 %13, ptr %retval, align 4, !dbg !7138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7138

if.end13:                                         ; preds = %if.then9
  %14 = load ptr, ptr %p_event.addr, align 8, !dbg !7139
  %call14 = call zeroext i1 @is_sampling_event(ptr noundef %14) #11, !dbg !7141
  br i1 %call14, label %if.end16, label %if.then15, !dbg !7142

if.then15:                                        ; preds = %if.end13
  store i32 0, ptr %retval, align 4, !dbg !7143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7143

if.end16:                                         ; preds = %if.end13
  %15 = load ptr, ptr %p_event.addr, align 8, !dbg !7144
  %attr17 = getelementptr inbounds %struct.perf_event, ptr %15, i32 0, i32 22, !dbg !7146
  %exclude_callchain_user = getelementptr inbounds %struct.perf_event_attr, ptr %attr17, i32 0, i32 6, !dbg !7147
  %bf.load = load i64, ptr %exclude_callchain_user, align 8, !dbg !7147
  %bf.lshr = lshr i64 %bf.load, 22, !dbg !7147
  %bf.clear = and i64 %bf.lshr, 1, !dbg !7147
  %tobool18 = icmp ne i64 %bf.clear, 0, !dbg !7144
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !7148

if.then19:                                        ; preds = %if.end16
  store i32 -22, ptr %retval, align 4, !dbg !7149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7149

if.end20:                                         ; preds = %if.end16
  %16 = load ptr, ptr %p_event.addr, align 8, !dbg !7150
  %attr21 = getelementptr inbounds %struct.perf_event, ptr %16, i32 0, i32 22, !dbg !7152
  %sample_type = getelementptr inbounds %struct.perf_event_attr, ptr %attr21, i32 0, i32 4, !dbg !7153
  %17 = load i64, ptr %sample_type, align 8, !dbg !7153
  %and = and i64 %17, 8192, !dbg !7154
  %tobool22 = icmp ne i64 %and, 0, !dbg !7154
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !7155

if.then23:                                        ; preds = %if.end20
  store i32 -22, ptr %retval, align 4, !dbg !7156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7156

if.end24:                                         ; preds = %if.end20
  br label %if.end25, !dbg !7157

if.end25:                                         ; preds = %if.end24, %if.end7
  %18 = load ptr, ptr %p_event.addr, align 8, !dbg !7158
  %attr26 = getelementptr inbounds %struct.perf_event, ptr %18, i32 0, i32 22, !dbg !7160
  %sample_type27 = getelementptr inbounds %struct.perf_event_attr, ptr %attr26, i32 0, i32 4, !dbg !7161
  %19 = load i64, ptr %sample_type27, align 8, !dbg !7161
  %and28 = and i64 %19, 1024, !dbg !7162
  %tobool29 = icmp ne i64 %and28, 0, !dbg !7162
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !7163

if.then30:                                        ; preds = %if.end25
  store i32 0, ptr %retval, align 4, !dbg !7164
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7164

if.end31:                                         ; preds = %if.end25
  %20 = load ptr, ptr %p_event.addr, align 8, !dbg !7165
  %attach_state = getelementptr inbounds %struct.perf_event, ptr %20, i32 0, i32 16, !dbg !7167
  %21 = load i32, ptr %attach_state, align 4, !dbg !7167
  %cmp = icmp eq i32 %21, 4, !dbg !7168
  br i1 %cmp, label %if.then32, label %if.end37, !dbg !7169

if.then32:                                        ; preds = %if.end31
  %22 = load ptr, ptr %tp_event.addr, align 8, !dbg !7170
  %flags = getelementptr inbounds %struct.trace_event_call, ptr %22, i32 0, i32 8, !dbg !7173
  %23 = load i32, ptr %flags, align 8, !dbg !7173
  %and33 = and i32 %23, 2, !dbg !7174
  %tobool34 = icmp ne i32 %and33, 0, !dbg !7174
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !7175

if.then35:                                        ; preds = %if.then32
  store i32 0, ptr %retval, align 4, !dbg !7176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7176

if.end36:                                         ; preds = %if.then32
  br label %if.end37, !dbg !7177

if.end37:                                         ; preds = %if.end36, %if.end31
  %24 = load ptr, ptr %p_event.addr, align 8, !dbg !7178
  %attr38 = getelementptr inbounds %struct.perf_event, ptr %24, i32 0, i32 22, !dbg !7179
  %call39 = call i32 @perf_allow_tracepoint(ptr noundef %attr38) #11, !dbg !7180
  store i32 %call39, ptr %ret, align 4, !dbg !7181
  %25 = load i32, ptr %ret, align 4, !dbg !7182
  %tobool40 = icmp ne i32 %25, 0, !dbg !7182
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !7184

if.then41:                                        ; preds = %if.end37
  %26 = load i32, ptr %ret, align 4, !dbg !7185
  store i32 %26, ptr %retval, align 4, !dbg !7186
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7186

if.end42:                                         ; preds = %if.end37
  store i32 0, ptr %retval, align 4, !dbg !7187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7187

cleanup:                                          ; preds = %if.end42, %if.then41, %if.then35, %if.then30, %if.then23, %if.then19, %if.then15, %if.then12, %if.then6, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !7188
  %27 = load i32, ptr %retval, align 4, !dbg !7188
  ret i32 %27, !dbg !7188
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @perf_trace_event_reg(ptr noundef %tp_event, ptr noundef %p_event) #0 align 16 !dbg !7189 {
entry:
  %retval = alloca i32, align 4
  %tp_event.addr = alloca ptr, align 8
  %p_event.addr = alloca ptr, align 8
  %list = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cpu = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp8 = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %i = alloca i32, align 4
  %i34 = alloca i32, align 4
  store ptr %tp_event, ptr %tp_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp_event.addr, metadata !7191, metadata !DIExpression()), !dbg !7211
  store ptr %p_event, ptr %p_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p_event.addr, metadata !7192, metadata !DIExpression()), !dbg !7212
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #10, !dbg !7213
  call void @llvm.dbg.declare(metadata ptr %list, metadata !7193, metadata !DIExpression()), !dbg !7214
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !7215
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7194, metadata !DIExpression()), !dbg !7216
  store i32 -12, ptr %ret, align 4, !dbg !7216
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #10, !dbg !7217
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !7195, metadata !DIExpression()), !dbg !7218
  %0 = load ptr, ptr %tp_event.addr, align 8, !dbg !7219
  %1 = load ptr, ptr %p_event.addr, align 8, !dbg !7220
  %tp_event1 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 69, !dbg !7221
  store ptr %0, ptr %tp_event1, align 8, !dbg !7222
  %2 = load ptr, ptr %tp_event.addr, align 8, !dbg !7223
  %perf_refcount = getelementptr inbounds %struct.trace_event_call, ptr %2, i32 0, i32 9, !dbg !7225
  %3 = load i32, ptr %perf_refcount, align 4, !dbg !7226
  %inc = add i32 %3, 1, !dbg !7226
  store i32 %inc, ptr %perf_refcount, align 4, !dbg !7226
  %cmp = icmp sgt i32 %3, 0, !dbg !7227
  br i1 %cmp, label %if.then, label %if.end, !dbg !7228

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7229
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup53, !dbg !7229

if.end:                                           ; preds = %entry
  %call = call noalias ptr @__alloc_percpu(i64 noundef 8, i64 noundef 8) #13, !dbg !7230
  store ptr %call, ptr %list, align 8, !dbg !7231
  %4 = load ptr, ptr %list, align 8, !dbg !7232
  %tobool = icmp ne ptr %4, null, !dbg !7232
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !7234

if.then2:                                         ; preds = %if.end
  br label %fail, !dbg !7235

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %cpu, align 4, !dbg !7236
  br label %for.cond, !dbg !7236

for.cond:                                         ; preds = %for.inc, %if.end3
  %5 = load i32, ptr %cpu, align 4, !dbg !7237
  %conv = sext i32 %5 to i64, !dbg !7237
  %call4 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #11, !dbg !7237
  %conv5 = trunc i64 %call4 to i32, !dbg !7237
  store i32 %conv5, ptr %cpu, align 4, !dbg !7237
  %6 = load i32, ptr %cpu, align 4, !dbg !7237
  %cmp6 = icmp ult i32 %6, 64, !dbg !7237
  br i1 %cmp6, label %for.body, label %for.end, !dbg !7236

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !7238

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !7239
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7196, metadata !DIExpression()), !dbg !7239
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7239
  %7 = load ptr, ptr %__vpp_verify, align 8, !dbg !7239
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !7238
  br label %do.cond, !dbg !7239

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7239

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !7240
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !7201, metadata !DIExpression()), !dbg !7240
  %8 = load ptr, ptr %list, align 8, !dbg !7240
  %9 = ptrtoint ptr %8 to i64, !dbg !7240
  store i64 %9, ptr %__ptr, align 8, !dbg !7240
  %10 = load i64, ptr %__ptr, align 8, !dbg !7240
  %11 = load i32, ptr %cpu, align 4, !dbg !7240
  %idxprom = sext i32 %11 to i64, !dbg !7240
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !7240
  %12 = load i64, ptr %arrayidx, align 8, !dbg !7240
  %add = add i64 %10, %12, !dbg !7240
  %13 = inttoptr i64 %add to ptr, !dbg !7240
  store ptr %13, ptr %tmp8, align 8, !dbg !7240
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !7238
  %14 = load ptr, ptr %tmp8, align 8, !dbg !7240
  store ptr %14, ptr %tmp, align 8, !dbg !7239
  %15 = load ptr, ptr %tmp, align 8, !dbg !7238
  %first = getelementptr inbounds %struct.hlist_head, ptr %15, i32 0, i32 0, !dbg !7241
  store ptr null, ptr %first, align 8, !dbg !7241
  br label %for.inc, !dbg !7241

for.inc:                                          ; preds = %do.end
  %16 = load i32, ptr %cpu, align 4, !dbg !7237
  %inc9 = add i32 %16, 1, !dbg !7237
  store i32 %inc9, ptr %cpu, align 4, !dbg !7237
  br label %for.cond, !dbg !7237, !llvm.loop !7242

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %list, align 8, !dbg !7244
  %18 = load ptr, ptr %tp_event.addr, align 8, !dbg !7245
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %18, i32 0, i32 10, !dbg !7246
  store ptr %17, ptr %perf_events, align 8, !dbg !7247
  %19 = load i32, ptr @total_ref_count, align 4, !dbg !7248
  %tobool10 = icmp ne i32 %19, 0, !dbg !7248
  br i1 %tobool10, label %if.end26, label %if.then11, !dbg !7249

if.then11:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #10, !dbg !7250
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !7203, metadata !DIExpression()), !dbg !7251
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !7252
  call void @llvm.dbg.declare(metadata ptr %i, metadata !7206, metadata !DIExpression()), !dbg !7253
  store i32 0, ptr %i, align 4, !dbg !7254
  br label %for.cond12, !dbg !7256

for.cond12:                                       ; preds = %for.inc22, %if.then11
  %20 = load i32, ptr %i, align 4, !dbg !7257
  %cmp13 = icmp slt i32 %20, 4, !dbg !7259
  br i1 %cmp13, label %for.body15, label %for.end24, !dbg !7260

for.body15:                                       ; preds = %for.cond12
  %call16 = call noalias ptr @__alloc_percpu(i64 noundef 8192, i64 noundef 8) #13, !dbg !7261
  store ptr %call16, ptr %buf, align 8, !dbg !7263
  %21 = load ptr, ptr %buf, align 8, !dbg !7264
  %tobool17 = icmp ne ptr %21, null, !dbg !7264
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !7266

if.then18:                                        ; preds = %for.body15
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7267

if.end19:                                         ; preds = %for.body15
  %22 = load ptr, ptr %buf, align 8, !dbg !7268
  %23 = load i32, ptr %i, align 4, !dbg !7269
  %idxprom20 = sext i32 %23 to i64, !dbg !7270
  %arrayidx21 = getelementptr [4 x ptr], ptr @perf_trace_buf, i64 0, i64 %idxprom20, !dbg !7270
  store ptr %22, ptr %arrayidx21, align 8, !dbg !7271
  br label %for.inc22, !dbg !7272

for.inc22:                                        ; preds = %if.end19
  %24 = load i32, ptr %i, align 4, !dbg !7273
  %inc23 = add i32 %24, 1, !dbg !7273
  store i32 %inc23, ptr %i, align 4, !dbg !7273
  br label %for.cond12, !dbg !7274, !llvm.loop !7275

for.end24:                                        ; preds = %for.cond12
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7277
  br label %cleanup, !dbg !7277

cleanup:                                          ; preds = %if.then18, %for.end24
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !7277
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #10, !dbg !7277
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup53 [
    i32 0, label %cleanup.cont
    i32 2, label %fail
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end26, !dbg !7278

if.end26:                                         ; preds = %cleanup.cont, %for.end
  %25 = load ptr, ptr %tp_event.addr, align 8, !dbg !7279
  %class = getelementptr inbounds %struct.trace_event_call, ptr %25, i32 0, i32 1, !dbg !7280
  %26 = load ptr, ptr %class, align 8, !dbg !7280
  %reg = getelementptr inbounds %struct.trace_event_class, ptr %26, i32 0, i32 3, !dbg !7281
  %27 = load ptr, ptr %reg, align 8, !dbg !7281
  %28 = load ptr, ptr %tp_event.addr, align 8, !dbg !7282
  %call27 = call i32 %27(ptr noundef %28, i32 noundef 2, ptr noundef null) #11, !dbg !7279
  store i32 %call27, ptr %ret, align 4, !dbg !7283
  %29 = load i32, ptr %ret, align 4, !dbg !7284
  %tobool28 = icmp ne i32 %29, 0, !dbg !7284
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !7286

if.then29:                                        ; preds = %if.end26
  br label %fail, !dbg !7287

if.end30:                                         ; preds = %if.end26
  %30 = load i32, ptr @total_ref_count, align 4, !dbg !7288
  %inc31 = add i32 %30, 1, !dbg !7288
  store i32 %inc31, ptr @total_ref_count, align 4, !dbg !7288
  store i32 0, ptr %retval, align 4, !dbg !7289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup53, !dbg !7289

fail:                                             ; preds = %cleanup, %if.then29, %if.then2
  call void @llvm.dbg.label(metadata !7207), !dbg !7290
  %31 = load i32, ptr @total_ref_count, align 4, !dbg !7291
  %tobool32 = icmp ne i32 %31, 0, !dbg !7291
  br i1 %tobool32, label %if.end46, label %if.then33, !dbg !7292

if.then33:                                        ; preds = %fail
  call void @llvm.lifetime.start.p0(i64 4, ptr %i34) #10, !dbg !7293
  call void @llvm.dbg.declare(metadata ptr %i34, metadata !7208, metadata !DIExpression()), !dbg !7294
  store i32 0, ptr %i34, align 4, !dbg !7295
  br label %for.cond35, !dbg !7297

for.cond35:                                       ; preds = %for.inc43, %if.then33
  %32 = load i32, ptr %i34, align 4, !dbg !7298
  %cmp36 = icmp slt i32 %32, 4, !dbg !7300
  br i1 %cmp36, label %for.body38, label %for.end45, !dbg !7301

for.body38:                                       ; preds = %for.cond35
  %33 = load i32, ptr %i34, align 4, !dbg !7302
  %idxprom39 = sext i32 %33 to i64, !dbg !7304
  %arrayidx40 = getelementptr [4 x ptr], ptr @perf_trace_buf, i64 0, i64 %idxprom39, !dbg !7304
  %34 = load ptr, ptr %arrayidx40, align 8, !dbg !7304
  call void @free_percpu(ptr noundef %34) #11, !dbg !7305
  %35 = load i32, ptr %i34, align 4, !dbg !7306
  %idxprom41 = sext i32 %35 to i64, !dbg !7307
  %arrayidx42 = getelementptr [4 x ptr], ptr @perf_trace_buf, i64 0, i64 %idxprom41, !dbg !7307
  store ptr null, ptr %arrayidx42, align 8, !dbg !7308
  br label %for.inc43, !dbg !7309

for.inc43:                                        ; preds = %for.body38
  %36 = load i32, ptr %i34, align 4, !dbg !7310
  %inc44 = add i32 %36, 1, !dbg !7310
  store i32 %inc44, ptr %i34, align 4, !dbg !7310
  br label %for.cond35, !dbg !7311, !llvm.loop !7312

for.end45:                                        ; preds = %for.cond35
  call void @llvm.lifetime.end.p0(i64 4, ptr %i34) #10, !dbg !7314
  br label %if.end46, !dbg !7315

if.end46:                                         ; preds = %for.end45, %fail
  %37 = load ptr, ptr %tp_event.addr, align 8, !dbg !7316
  %perf_refcount47 = getelementptr inbounds %struct.trace_event_call, ptr %37, i32 0, i32 9, !dbg !7318
  %38 = load i32, ptr %perf_refcount47, align 4, !dbg !7319
  %dec = add i32 %38, -1, !dbg !7319
  store i32 %dec, ptr %perf_refcount47, align 4, !dbg !7319
  %tobool48 = icmp ne i32 %dec, 0, !dbg !7319
  br i1 %tobool48, label %if.end52, label %if.then49, !dbg !7320

if.then49:                                        ; preds = %if.end46
  %39 = load ptr, ptr %tp_event.addr, align 8, !dbg !7321
  %perf_events50 = getelementptr inbounds %struct.trace_event_call, ptr %39, i32 0, i32 10, !dbg !7323
  %40 = load ptr, ptr %perf_events50, align 8, !dbg !7323
  call void @free_percpu(ptr noundef %40) #11, !dbg !7324
  %41 = load ptr, ptr %tp_event.addr, align 8, !dbg !7325
  %perf_events51 = getelementptr inbounds %struct.trace_event_call, ptr %41, i32 0, i32 10, !dbg !7326
  store ptr null, ptr %perf_events51, align 8, !dbg !7327
  br label %if.end52, !dbg !7328

if.end52:                                         ; preds = %if.then49, %if.end46
  %42 = load i32, ptr %ret, align 4, !dbg !7329
  store i32 %42, ptr %retval, align 4, !dbg !7330
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup53, !dbg !7330

cleanup53:                                        ; preds = %if.end52, %if.end30, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #10, !dbg !7331
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !7331
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #10, !dbg !7331
  %43 = load i32, ptr %retval, align 4, !dbg !7331
  ret i32 %43, !dbg !7331
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @perf_trace_event_open(ptr noundef %p_event) #0 align 16 !dbg !7332 {
entry:
  %p_event.addr = alloca ptr, align 8
  %tp_event = alloca ptr, align 8
  store ptr %p_event, ptr %p_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p_event.addr, metadata !7334, metadata !DIExpression()), !dbg !7336
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp_event) #10, !dbg !7337
  call void @llvm.dbg.declare(metadata ptr %tp_event, metadata !7335, metadata !DIExpression()), !dbg !7338
  %0 = load ptr, ptr %p_event.addr, align 8, !dbg !7339
  %tp_event1 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 69, !dbg !7340
  %1 = load ptr, ptr %tp_event1, align 8, !dbg !7340
  store ptr %1, ptr %tp_event, align 8, !dbg !7338
  %2 = load ptr, ptr %tp_event, align 8, !dbg !7341
  %class = getelementptr inbounds %struct.trace_event_call, ptr %2, i32 0, i32 1, !dbg !7342
  %3 = load ptr, ptr %class, align 8, !dbg !7342
  %reg = getelementptr inbounds %struct.trace_event_class, ptr %3, i32 0, i32 3, !dbg !7343
  %4 = load ptr, ptr %reg, align 8, !dbg !7343
  %5 = load ptr, ptr %tp_event, align 8, !dbg !7344
  %6 = load ptr, ptr %p_event.addr, align 8, !dbg !7345
  %call = call i32 %4(ptr noundef %5, i32 noundef 4, ptr noundef %6) #11, !dbg !7341
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp_event) #10, !dbg !7346
  ret i32 %call, !dbg !7347
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7348 dso_local zeroext i1 @ftrace_event_is_function(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @perf_allow_tracepoint(ptr noundef %attr) #4 align 16 !dbg !7349 {
entry:
  %retval = alloca i32, align 4
  %attr.addr = alloca ptr, align 8
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7354, metadata !DIExpression()), !dbg !7355
  %0 = load i32, ptr @sysctl_perf_event_paranoid, align 4, !dbg !7356
  %cmp = icmp sgt i32 %0, -1, !dbg !7358
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !7359

land.lhs.true:                                    ; preds = %entry
  %call = call zeroext i1 @perfmon_capable() #11, !dbg !7360
  br i1 %call, label %if.end, label %if.then, !dbg !7361

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4, !dbg !7362
  br label %return, !dbg !7362

if.end:                                           ; preds = %land.lhs.true, %entry
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !7363
  %call1 = call i32 @security_perf_event_open(ptr noundef %1, i32 noundef 3) #11, !dbg !7364
  store i32 %call1, ptr %retval, align 4, !dbg !7365
  br label %return, !dbg !7365

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7366
  ret i32 %2, !dbg !7366
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @perfmon_capable() #4 align 16 !dbg !7367 {
entry:
  %call = call zeroext i1 @capable(i32 noundef 38) #11, !dbg !7368
  br i1 %call, label %lor.end, label %lor.rhs, !dbg !7369

lor.rhs:                                          ; preds = %entry
  %call1 = call zeroext i1 @capable(i32 noundef 21) #11, !dbg !7370
  br label %lor.end, !dbg !7369

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %0, !dbg !7371
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7372 dso_local i32 @security_perf_event_open(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7376 dso_local zeroext i1 @capable(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7379 dso_local noalias ptr @__alloc_percpu(i64 noundef, i64 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #4 align 16 !dbg !7383 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7389, metadata !DIExpression()), !dbg !7395
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7390, metadata !DIExpression()), !dbg !7396
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !7391, metadata !DIExpression()), !dbg !7397
  %0 = load i64, ptr %size.addr, align 8, !dbg !7398
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7398
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !7398

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !7398
  %cmp = icmp ule i64 %2, 64, !dbg !7398
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !7398

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !7398
  %cmp2 = icmp ugt i64 %3, 0, !dbg !7398
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !7399

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !7400
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7392, metadata !DIExpression()), !dbg !7401
  %4 = load i64, ptr %offset.addr, align 8, !dbg !7402
  %5 = load i64, ptr %size.addr, align 8, !dbg !7402
  %cmp3 = icmp uge i64 %4, %5, !dbg !7402
  %lnot = xor i1 %cmp3, true, !dbg !7402
  %lnot4 = xor i1 %lnot, true, !dbg !7402
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !7402
  %conv = sext i32 %lnot.ext to i64, !dbg !7402
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7402
  %tobool = icmp ne i64 %expval, 0, !dbg !7402
  br i1 %tobool, label %if.then5, label %if.end, !dbg !7404

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !7405
  store i64 %6, ptr %retval, align 8, !dbg !7406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7406

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !7407
  %8 = load i64, ptr %7, align 8, !dbg !7408
  %9 = load i64, ptr %offset.addr, align 8, !dbg !7409
  %shl = shl i64 1, %9, !dbg !7409
  %sub = sub i64 -1, %shl, !dbg !7409
  %add = add i64 %sub, 1, !dbg !7409
  %10 = load i64, ptr %size.addr, align 8, !dbg !7409
  %sub6 = sub i64 %10, 1, !dbg !7409
  %sub7 = sub i64 63, %sub6, !dbg !7409
  %shr = lshr i64 -1, %sub7, !dbg !7409
  %and = and i64 %add, %shr, !dbg !7409
  %add8 = add i64 0, %and, !dbg !7409
  %and9 = and i64 %8, %add8, !dbg !7410
  store i64 %and9, ptr %val, align 8, !dbg !7411
  %11 = load i64, ptr %val, align 8, !dbg !7412
  %tobool10 = icmp ne i64 %11, 0, !dbg !7412
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !7412

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !7413
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !7413
  br i1 %13, label %cond.true11, label %cond.false, !dbg !7413

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !7413
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !7413
  %cast = trunc i64 %15 to i32, !dbg !7413
  %conv12 = sext i32 %cast to i64, !dbg !7413
  br label %cond.end, !dbg !7413

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !7413
  %call = call i64 @variable__ffs(i64 noundef %16) #11, !dbg !7413
  br label %cond.end, !dbg !7413

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !7413
  br label %cond.end14, !dbg !7412

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !7414
  br label %cond.end14, !dbg !7412

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !7412
  store i64 %cond15, ptr %retval, align 8, !dbg !7415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7415

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !7416
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !7417
  %19 = load i64, ptr %size.addr, align 8, !dbg !7418
  %20 = load i64, ptr %offset.addr, align 8, !dbg !7419
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #11, !dbg !7420
  store i64 %call17, ptr %retval, align 8, !dbg !7421
  br label %return, !dbg !7421

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !7422
  ret i64 %21, !dbg !7422
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7423 dso_local void @free_percpu(ptr noundef) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #9 align 16 !dbg !7424 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !7429, metadata !DIExpression()), !dbg !7430
  %0 = load i64, ptr %word.addr, align 8, !dbg !7431
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #12, !dbg !7432, !srcloc !7433
  store i64 %1, ptr %word.addr, align 8, !dbg !7432
  %2 = load i64, ptr %word.addr, align 8, !dbg !7434
  ret i64 %2, !dbg !7435
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7436 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7437 dso_local void @trace_event_dyn_put_ref(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7438 dso_local void @module_put(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tracepoint_synchronize_unregister() #4 align 16 !dbg !7439 {
entry:
  call void @synchronize_srcu(ptr noundef @tracepoint_srcu) #11, !dbg !7440
  call void @synchronize_rcu() #11, !dbg !7441
  ret void, !dbg !7442
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7443 dso_local void @synchronize_srcu(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7447 dso_local void @synchronize_rcu() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__hlist_del(ptr noundef %n) #4 align 16 !dbg !7449 {
entry:
  %n.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %pprev = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7452, metadata !DIExpression()), !dbg !7455
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #10, !dbg !7456
  call void @llvm.dbg.declare(metadata ptr %next, metadata !7453, metadata !DIExpression()), !dbg !7457
  %0 = load ptr, ptr %n.addr, align 8, !dbg !7458
  %next1 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 0, !dbg !7459
  %1 = load ptr, ptr %next1, align 8, !dbg !7459
  store ptr %1, ptr %next, align 8, !dbg !7457
  call void @llvm.lifetime.start.p0(i64 8, ptr %pprev) #10, !dbg !7460
  call void @llvm.dbg.declare(metadata ptr %pprev, metadata !7454, metadata !DIExpression()), !dbg !7461
  %2 = load ptr, ptr %n.addr, align 8, !dbg !7462
  %pprev2 = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1, !dbg !7463
  %3 = load ptr, ptr %pprev2, align 8, !dbg !7463
  store ptr %3, ptr %pprev, align 8, !dbg !7461
  br label %do.body, !dbg !7464

do.body:                                          ; preds = %entry
  br label %do.body3, !dbg !7465

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !7467

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !7467

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !7465

do.body4:                                         ; preds = %do.end
  %4 = load ptr, ptr %next, align 8, !dbg !7469
  %5 = load ptr, ptr %pprev, align 8, !dbg !7469
  store volatile ptr %4, ptr %5, align 8, !dbg !7469
  br label %do.cond5, !dbg !7469

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !7469

do.end6:                                          ; preds = %do.cond5
  br label %do.cond7, !dbg !7465

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !7465

do.end8:                                          ; preds = %do.cond7
  %6 = load ptr, ptr %next, align 8, !dbg !7471
  %tobool = icmp ne ptr %6, null, !dbg !7471
  br i1 %tobool, label %if.then, label %if.end, !dbg !7473

if.then:                                          ; preds = %do.end8
  br label %do.body9, !dbg !7474

do.body9:                                         ; preds = %if.then
  br label %do.body10, !dbg !7475

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !7477

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !7477

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !7475

do.body13:                                        ; preds = %do.end12
  %7 = load ptr, ptr %pprev, align 8, !dbg !7479
  %8 = load ptr, ptr %next, align 8, !dbg !7479
  %pprev14 = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1, !dbg !7479
  store volatile ptr %7, ptr %pprev14, align 8, !dbg !7479
  br label %do.cond15, !dbg !7479

do.cond15:                                        ; preds = %do.body13
  br label %do.end16, !dbg !7479

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !7475

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !7475

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !7475

if.end:                                           ; preds = %do.end18, %do.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pprev) #10, !dbg !7481
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #10, !dbg !7481
  ret void, !dbg !7481
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #9 align 16 !dbg !7482 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #10, !dbg !7493
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !7487, metadata !DIExpression()), !dbg !7493
  br label %do.body, !dbg !7493

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !7494
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7489, metadata !DIExpression()), !dbg !7494
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7494
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !7494
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !7493
  br label %do.cond, !dbg !7494

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7494

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #10, !dbg !7495
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !7491, metadata !DIExpression()), !dbg !7495
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #14, !dbg !7495, !srcloc !7496
  store i64 %1, ptr %pfo_val__, align 8, !dbg !7495
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !7495
  %3 = inttoptr i64 %2 to ptr, !dbg !7495
  store ptr %3, ptr %tmp, align 8, !dbg !7495
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #10, !dbg !7493
  %4 = load ptr, ptr %tmp, align 8, !dbg !7495
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !7493
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !7493
  store ptr %5, ptr %tmp1, align 8, !dbg !7493
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #10, !dbg !7497
  %6 = load ptr, ptr %tmp1, align 8, !dbg !7493
  ret ptr %6, !dbg !7498
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #9 align 16 !dbg !7499 {
entry:
  %call = call i64 @native_save_fl() #11, !dbg !7503
  ret i64 %call, !dbg !7504
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tracing_gen_ctx_flags(i64 noundef %irqflags) #4 align 16 !dbg !7505 {
entry:
  %irqflags.addr = alloca i64, align 8
  %irq_status = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  store i64 %irqflags, ptr %irqflags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %irqflags.addr, metadata !7509, metadata !DIExpression()), !dbg !7515
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq_status) #10, !dbg !7516
  call void @llvm.dbg.declare(metadata ptr %irq_status, metadata !7510, metadata !DIExpression()), !dbg !7517
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !7518
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !7511, metadata !DIExpression()), !dbg !7518
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !7518
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !7514, metadata !DIExpression()), !dbg !7518
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !7518
  %conv = zext i1 %cmp to i32, !dbg !7518
  store i32 1, ptr %tmp, align 4, !dbg !7518
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !7519
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !7519
  %0 = load i32, ptr %tmp, align 4, !dbg !7518
  %1 = load i64, ptr %irqflags.addr, align 8, !dbg !7519
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %1) #11, !dbg !7519
  store i32 %call, ptr %tmp1, align 4, !dbg !7519
  %2 = load i32, ptr %tmp1, align 4, !dbg !7519
  %tobool = icmp ne i32 %2, 0, !dbg !7520
  %3 = zext i1 %tobool to i64, !dbg !7520
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !7520
  store i32 %cond, ptr %irq_status, align 4, !dbg !7517
  %4 = load i32, ptr %irq_status, align 4, !dbg !7521
  %call2 = call i32 @tracing_gen_ctx_irq_test(i32 noundef %4) #11, !dbg !7522
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq_status) #10, !dbg !7523
  ret i32 %call2, !dbg !7524
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #9 align 16 !dbg !7525 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !7528
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !7527, metadata !DIExpression()), !dbg !7529
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #10, !dbg !7530, !srcloc !7531
  %0 = load i64, ptr %flags, align 8, !dbg !7532
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !7533
  ret i64 %0, !dbg !7534
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #9 align 16 !dbg !7535 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7539, metadata !DIExpression()), !dbg !7540
  %0 = load i64, ptr %flags.addr, align 8, !dbg !7541
  %and = and i64 %0, 512, !dbg !7542
  %tobool = icmp ne i64 %and, 0, !dbg !7543
  %lnot = xor i1 %tobool, true, !dbg !7543
  %lnot.ext = zext i1 %lnot to i32, !dbg !7543
  ret i32 %lnot.ext, !dbg !7544
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7545 dso_local i32 @tracing_gen_ctx_irq_test(i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { nounwind memory(read) }
attributes #13 = { noredzone allocsize(0) }
attributes #14 = { nounwind memory(none) }

!llvm.dbg.cu = !{!77}
!llvm.module.flags = !{!6260, !6261, !6262, !6263, !6264, !6265, !6266, !6267}
!llvm.ident = !{!6268}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 375, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/trace/trace_event_perf.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d4104689d2146fc15183aba25d5abc74")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 32)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__already_done", scope: !9, file: !2, line: 405, type: !1530, isLocal: true, isDefinition: true)
!9 = distinct !DISubprogram(name: "perf_trace_buf_alloc", scope: !2, file: !2, line: 398, type: !10, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !6230)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !14, !76}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !17, line: 103, size: 1344, elements: !18)
!17 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!18 = !{!19, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !56, !57, !58}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !16, file: !17, line: 109, baseType: !20, size: 64)
!20 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !16, file: !17, line: 110, baseType: !20, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !16, file: !17, line: 111, baseType: !20, size: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !16, file: !17, line: 112, baseType: !20, size: 64, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !16, file: !17, line: 113, baseType: !20, size: 64, offset: 256)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !16, file: !17, line: 114, baseType: !20, size: 64, offset: 320)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !16, file: !17, line: 117, baseType: !20, size: 64, offset: 384)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !16, file: !17, line: 118, baseType: !20, size: 64, offset: 448)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !16, file: !17, line: 119, baseType: !20, size: 64, offset: 512)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !16, file: !17, line: 120, baseType: !20, size: 64, offset: 576)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !16, file: !17, line: 121, baseType: !20, size: 64, offset: 640)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !16, file: !17, line: 122, baseType: !20, size: 64, offset: 704)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !16, file: !17, line: 123, baseType: !20, size: 64, offset: 768)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !16, file: !17, line: 124, baseType: !20, size: 64, offset: 832)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !16, file: !17, line: 125, baseType: !20, size: 64, offset: 896)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !16, file: !17, line: 139, baseType: !20, size: 64, offset: 960)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !16, file: !17, line: 142, baseType: !20, size: 64, offset: 1024)
!37 = !DIDerivedType(tag: DW_TAG_member, scope: !16, file: !17, line: 144, baseType: !38, size: 64, offset: 1088)
!38 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !16, file: !17, line: 144, size: 64, elements: !39)
!39 = !{!40, !46, !50}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !38, file: !17, line: 146, baseType: !41, size: 16)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !42, line: 19, baseType: !43)
!42 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !44, line: 24, baseType: !45)
!44 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !38, file: !17, line: 148, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !42, line: 23, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !44, line: 31, baseType: !49)
!49 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !38, file: !17, line: 150, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !17, line: 59, size: 64, elements: !52)
!52 = !{!53, !54, !55}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !51, file: !17, line: 61, baseType: !47, size: 16, flags: DIFlagBitField, extraData: i64 0)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !51, file: !17, line: 63, baseType: !47, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !51, file: !17, line: 65, baseType: !47, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !16, file: !17, line: 153, baseType: !20, size: 64, offset: 1152)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !16, file: !17, line: 154, baseType: !20, size: 64, offset: 1216)
!58 = !DIDerivedType(tag: DW_TAG_member, scope: !16, file: !17, line: 156, baseType: !59, size: 64, offset: 1280)
!59 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !16, file: !17, line: 156, size: 64, elements: !60)
!60 = !{!61, !62, !63}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !59, file: !17, line: 158, baseType: !41, size: 16)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !59, file: !17, line: 160, baseType: !47, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !59, file: !17, line: 162, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !17, line: 69, size: 64, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !64, file: !17, line: 71, baseType: !47, size: 16, flags: DIFlagBitField, extraData: i64 0)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !64, file: !17, line: 73, baseType: !47, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !64, file: !17, line: 75, baseType: !47, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !64, file: !17, line: 77, baseType: !47, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !64, file: !17, line: 80, baseType: !47, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !64, file: !17, line: 83, baseType: !47, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !64, file: !17, line: 86, baseType: !47, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !64, file: !17, line: 88, baseType: !47, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !64, file: !17, line: 93, baseType: !47, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !64, file: !17, line: 100, baseType: !47, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!77 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/trace/.trace_event_perf.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/trace/trace_event_perf\22 -D KBUILD_BASENAME=\22trace_event_perf\22 -D KBUILD_MODNAME=\22trace_event_perf\22 -D __KBUILD_MODNAME=kmod_trace_event_perf -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/trace/trace_event_perf.ll kernel/trace/trace_event_perf.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !78, retainedTypes: !391, globals: !6213, splitDebugInlining: false, nameTableKind: None)
!78 = !{!79, !87, !92, !97, !184, !190, !206, !214, !221, !229, !235, !242, !248, !259, !265, !271, !278, !286, !293, !299, !308, !313, !318, !324, !333, !338, !352, !381}
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !80, line: 312, baseType: !81, size: 32, elements: !82)
!80 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!81 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!84 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!85 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!86 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !88, line: 2052, baseType: !81, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!89 = !{!90, !91}
!90 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!91 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !93, line: 65, baseType: !81, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!94 = !{!95, !96}
!95 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!96 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !99, file: !98, line: 147, baseType: !81, size: 32, elements: !181)
!98 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !98, line: 135, size: 512, elements: !100)
!100 = !{!101, !104, !105, !106, !109, !110, !125, !179, !180}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !99, file: !98, line: 136, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !99, file: !98, line: 137, baseType: !12, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !99, file: !98, line: 138, baseType: !13, size: 32, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !99, file: !98, line: 139, baseType: !107, size: 16, offset: 160)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !108, line: 24, baseType: !45)
!108 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !99, file: !98, line: 150, baseType: !97, size: 32, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !99, file: !98, line: 151, baseType: !111, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !98, line: 64, baseType: !113)
!113 = !DISubroutineType(types: !114)
!114 = !{!13, !115, !13, !12, !116, !121}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !108, line: 61, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !119, line: 72, baseType: !120)
!119 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !119, line: 16, baseType: !20)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !108, line: 52, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !119, line: 88, baseType: !124)
!124 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !99, file: !98, line: 152, baseType: !126, size: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !98, line: 117, size: 256, elements: !128)
!128 = !{!129, !134}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !127, file: !98, line: 118, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !108, line: 174, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 172, size: 32, elements: !132)
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !131, file: !108, line: 173, baseType: !13, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !127, file: !98, line: 119, baseType: !135, size: 192, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !136, line: 41, baseType: !137)
!136 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !136, line: 37, size: 192, elements: !138)
!138 = !{!139, !173}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !137, file: !136, line: 38, baseType: !140, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !141, line: 29, baseType: !142)
!141 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !141, line: 17, size: 32, elements: !143)
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, scope: !142, file: !141, line: 18, baseType: !145, size: 32)
!145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !142, file: !141, line: 18, size: 32, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !145, file: !141, line: 19, baseType: !148, size: 32)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !149, line: 14, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !148, file: !149, line: 15, baseType: !152, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !153, line: 44, baseType: !154)
!153 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !153, line: 14, size: 32, elements: !155)
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !153, line: 15, baseType: !157, size: 32)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !154, file: !153, line: 15, size: 32, elements: !158)
!158 = !{!159, !160, !168}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !157, file: !153, line: 16, baseType: !130, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, scope: !157, file: !153, line: 24, baseType: !161, size: 16)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !157, file: !153, line: 24, size: 16, elements: !162)
!162 = !{!163, !167}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !161, file: !153, line: 25, baseType: !164, size: 8)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !42, line: 17, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !44, line: 21, baseType: !166)
!166 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !161, file: !153, line: 26, baseType: !164, size: 8, offset: 8)
!168 = !DIDerivedType(tag: DW_TAG_member, scope: !157, file: !153, line: 28, baseType: !169, size: 32)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !157, file: !153, line: 28, size: 32, elements: !170)
!170 = !{!171, !172}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !169, file: !153, line: 29, baseType: !41, size: 16)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !169, file: !153, line: 30, baseType: !41, size: 16, offset: 16)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !137, file: !136, line: 39, baseType: !174, size: 128, offset: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !108, line: 190, size: 128, elements: !175)
!175 = !{!176, !178}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !174, file: !108, line: 191, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !174, file: !108, line: 191, baseType: !177, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !99, file: !98, line: 153, baseType: !12, size: 64, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !99, file: !98, line: 154, baseType: !12, size: 64, offset: 448)
!181 = !{!182, !183}
!182 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!183 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !185, line: 16, baseType: !81, size: 32, elements: !186)
!185 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!186 = !{!187, !188, !189}
!187 = !DIEnumerator(name: "TT_NONE", value: 0)
!188 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!189 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !191, line: 1325, baseType: !81, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205}
!193 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!194 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!195 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!196 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!197 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!198 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!199 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!200 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!201 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!202 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!203 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!204 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!205 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !207, line: 68, baseType: !81, size: 32, elements: !208)
!207 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!208 = !{!209, !210, !211, !212, !213}
!209 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!210 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!211 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!212 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!213 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !215, line: 51, baseType: !81, size: 32, elements: !216)
!215 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!216 = !{!217, !218, !219, !220}
!217 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!218 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!219 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!220 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !222, line: 9, baseType: !81, size: 32, elements: !223)
!222 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!223 = !{!224, !225, !226, !227, !228}
!224 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!225 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!226 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!227 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!228 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !230, line: 54, baseType: !81, size: 32, elements: !231)
!230 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!231 = !{!232, !233, !234}
!232 = !DIEnumerator(name: "USRQUOTA", value: 0)
!233 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!234 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !236, line: 15, baseType: !81, size: 32, elements: !237)
!236 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!237 = !{!238, !239, !240, !241}
!238 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!239 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!240 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!241 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !243, line: 26, baseType: !81, size: 32, elements: !244)
!243 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!244 = !{!245, !246, !247}
!245 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!246 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!247 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !249, line: 253, baseType: !81, size: 32, elements: !250)
!249 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258}
!251 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!252 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!253 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!254 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!255 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!256 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!257 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!258 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !249, line: 158, baseType: !81, size: 32, elements: !260)
!260 = !{!261, !262, !263, !264}
!261 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!262 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!263 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!264 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!265 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !266, line: 45, baseType: !81, size: 32, elements: !267)
!266 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!267 = !{!268, !269, !270}
!268 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!269 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!270 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !272, line: 487, baseType: !81, size: 32, elements: !273)
!272 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!273 = !{!274, !275, !276, !277}
!274 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!275 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!276 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!277 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !279, line: 620, baseType: !81, size: 32, elements: !280)
!279 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!280 = !{!281, !282, !283, !284, !285}
!281 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!282 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!283 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!284 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!285 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!286 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !279, line: 597, baseType: !13, size: 32, elements: !287)
!287 = !{!288, !289, !290, !291, !292}
!288 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!289 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!290 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!291 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!292 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!293 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !294, line: 30, baseType: !81, size: 32, elements: !295)
!294 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!295 = !{!296, !297, !298}
!296 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!297 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!298 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!299 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !272, line: 547, baseType: !81, size: 32, elements: !300)
!300 = !{!301, !302, !303, !304, !305, !306, !307}
!301 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!302 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!303 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!304 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!305 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!306 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!307 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!308 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !272, line: 564, baseType: !81, size: 32, elements: !309)
!309 = !{!310, !311, !312}
!310 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!311 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!312 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!313 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !272, line: 577, baseType: !81, size: 32, elements: !314)
!314 = !{!315, !316, !317}
!315 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!316 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!317 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!318 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !272, line: 503, baseType: !81, size: 32, elements: !319)
!319 = !{!320, !321, !322, !323}
!320 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!321 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!322 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!323 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!324 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !325, line: 593, baseType: !13, size: 32, elements: !326)
!325 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!326 = !{!327, !328, !329, !330, !331, !332}
!327 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!328 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!329 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!330 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!331 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!332 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!333 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !334, line: 10, baseType: !81, size: 32, elements: !335)
!334 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!335 = !{!336, !337}
!336 = !DIEnumerator(name: "false", value: 0)
!337 = !DIEnumerator(name: "true", value: 1)
!338 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !249, line: 355, baseType: !81, size: 32, elements: !339)
!339 = !{!340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351}
!340 = !DIEnumerator(name: "TRACE_EVENT_FL_FILTERED", value: 1)
!341 = !DIEnumerator(name: "TRACE_EVENT_FL_CAP_ANY", value: 2)
!342 = !DIEnumerator(name: "TRACE_EVENT_FL_NO_SET_FILTER", value: 4)
!343 = !DIEnumerator(name: "TRACE_EVENT_FL_IGNORE_ENABLE", value: 8)
!344 = !DIEnumerator(name: "TRACE_EVENT_FL_TRACEPOINT", value: 16)
!345 = !DIEnumerator(name: "TRACE_EVENT_FL_DYNAMIC", value: 32)
!346 = !DIEnumerator(name: "TRACE_EVENT_FL_KPROBE", value: 64)
!347 = !DIEnumerator(name: "TRACE_EVENT_FL_UPROBE", value: 128)
!348 = !DIEnumerator(name: "TRACE_EVENT_FL_EPROBE", value: 256)
!349 = !DIEnumerator(name: "TRACE_EVENT_FL_FPROBE", value: 512)
!350 = !DIEnumerator(name: "TRACE_EVENT_FL_CUSTOM", value: 1024)
!351 = !DIEnumerator(name: "TRACE_EVENT_FL_TEST_STR", value: 2048)
!352 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_sample_format", file: !353, line: 139, baseType: !81, size: 32, elements: !354)
!353 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!354 = !{!355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380}
!355 = !DIEnumerator(name: "PERF_SAMPLE_IP", value: 1)
!356 = !DIEnumerator(name: "PERF_SAMPLE_TID", value: 2)
!357 = !DIEnumerator(name: "PERF_SAMPLE_TIME", value: 4)
!358 = !DIEnumerator(name: "PERF_SAMPLE_ADDR", value: 8)
!359 = !DIEnumerator(name: "PERF_SAMPLE_READ", value: 16)
!360 = !DIEnumerator(name: "PERF_SAMPLE_CALLCHAIN", value: 32)
!361 = !DIEnumerator(name: "PERF_SAMPLE_ID", value: 64)
!362 = !DIEnumerator(name: "PERF_SAMPLE_CPU", value: 128)
!363 = !DIEnumerator(name: "PERF_SAMPLE_PERIOD", value: 256)
!364 = !DIEnumerator(name: "PERF_SAMPLE_STREAM_ID", value: 512)
!365 = !DIEnumerator(name: "PERF_SAMPLE_RAW", value: 1024)
!366 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_STACK", value: 2048)
!367 = !DIEnumerator(name: "PERF_SAMPLE_REGS_USER", value: 4096)
!368 = !DIEnumerator(name: "PERF_SAMPLE_STACK_USER", value: 8192)
!369 = !DIEnumerator(name: "PERF_SAMPLE_WEIGHT", value: 16384)
!370 = !DIEnumerator(name: "PERF_SAMPLE_DATA_SRC", value: 32768)
!371 = !DIEnumerator(name: "PERF_SAMPLE_IDENTIFIER", value: 65536)
!372 = !DIEnumerator(name: "PERF_SAMPLE_TRANSACTION", value: 131072)
!373 = !DIEnumerator(name: "PERF_SAMPLE_REGS_INTR", value: 262144)
!374 = !DIEnumerator(name: "PERF_SAMPLE_PHYS_ADDR", value: 524288)
!375 = !DIEnumerator(name: "PERF_SAMPLE_AUX", value: 1048576)
!376 = !DIEnumerator(name: "PERF_SAMPLE_CGROUP", value: 2097152)
!377 = !DIEnumerator(name: "PERF_SAMPLE_DATA_PAGE_SIZE", value: 4194304)
!378 = !DIEnumerator(name: "PERF_SAMPLE_CODE_PAGE_SIZE", value: 8388608)
!379 = !DIEnumerator(name: "PERF_SAMPLE_WEIGHT_STRUCT", value: 16777216)
!380 = !DIEnumerator(name: "PERF_SAMPLE_MAX", value: 33554432)
!381 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_flag_type", file: !249, line: 179, baseType: !81, size: 32, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390}
!383 = !DIEnumerator(name: "TRACE_FLAG_IRQS_OFF", value: 1)
!384 = !DIEnumerator(name: "TRACE_FLAG_IRQS_NOSUPPORT", value: 2)
!385 = !DIEnumerator(name: "TRACE_FLAG_NEED_RESCHED", value: 4)
!386 = !DIEnumerator(name: "TRACE_FLAG_HARDIRQ", value: 8)
!387 = !DIEnumerator(name: "TRACE_FLAG_SOFTIRQ", value: 16)
!388 = !DIEnumerator(name: "TRACE_FLAG_PREEMPT_RESCHED", value: 32)
!389 = !DIEnumerator(name: "TRACE_FLAG_NMI", value: 64)
!390 = !DIEnumerator(name: "TRACE_FLAG_BH_OFF", value: 128)
!391 = !{!12, !392, !6200, !20, !4739, !15, !540, !6201, !81, !6203, !13, !465, !6208, !800, !6210, !805, !6212, !1032}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !249, line: 372, size: 1024, elements: !394)
!394 = !{!395, !396, !437, !5904, !6182, !6183, !6184, !6189, !6190, !6191, !6192, !6193, !6196}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !393, file: !249, line: 373, baseType: !174, size: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !393, file: !249, line: 374, baseType: !397, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !249, line: 291, size: 576, elements: !399)
!399 = !{!400, !401, !402, !403, !407, !431, !435, !436}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !398, file: !249, line: 292, baseType: !102, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !398, file: !249, line: 293, baseType: !12, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !398, file: !249, line: 295, baseType: !12, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !398, file: !249, line: 297, baseType: !404, size: 64, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!13, !392, !248, !12}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !398, file: !249, line: 299, baseType: !408, size: 64, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !249, line: 275, size: 320, elements: !410)
!410 = !{!411, !412}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !409, file: !249, line: 276, baseType: !102, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, scope: !409, file: !249, line: 277, baseType: !413, size: 256, offset: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !409, file: !249, line: 277, size: 256, elements: !414)
!414 = !{!415, !427}
!415 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !249, line: 278, baseType: !416, size: 256)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !413, file: !249, line: 278, size: 256, elements: !417)
!417 = !{!418, !419, !421, !422, !424, !425, !426}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !416, file: !249, line: 279, baseType: !102, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !416, file: !249, line: 280, baseType: !420, size: 32, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !416, file: !249, line: 281, baseType: !420, size: 32, offset: 96)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !416, file: !249, line: 282, baseType: !423, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !416, file: !249, line: 283, baseType: !81, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !416, file: !249, line: 284, baseType: !420, size: 32, offset: 160)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !416, file: !249, line: 285, baseType: !420, size: 32, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !413, file: !249, line: 287, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!13, !392}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !398, file: !249, line: 300, baseType: !432, size: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!177, !392}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !398, file: !249, line: 301, baseType: !174, size: 128, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !398, file: !249, line: 302, baseType: !428, size: 64, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !249, line: 375, baseType: !438, size: 64, offset: 192)
!438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !249, line: 375, size: 64, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !438, file: !249, line: 376, baseType: !102, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !438, file: !249, line: 378, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !444, line: 32, size: 640, elements: !445)
!444 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!445 = !{!446, !447, !469, !5892, !5893, !5894, !5895, !5896, !5897}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !443, file: !444, line: 33, baseType: !102, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !443, file: !444, line: 34, baseType: !448, size: 128, offset: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !449, line: 85, size: 128, elements: !450)
!449 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !448, file: !449, line: 86, baseType: !130, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !449, line: 101, baseType: !453, size: 64, offset: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !448, file: !449, line: 101, size: 64, elements: !454)
!454 = !{!455, !456, !466}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !453, file: !449, line: 102, baseType: !20, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !453, file: !449, line: 103, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !449, line: 117, size: 128, elements: !459)
!459 = !{!460, !463, !464}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !458, file: !449, line: 118, baseType: !461, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !42, line: 20, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !44, line: 26, baseType: !13)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !458, file: !449, line: 119, baseType: !461, size: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !458, file: !449, line: 120, baseType: !465, size: 64, offset: 64)
!465 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !453, file: !449, line: 104, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !449, line: 104, flags: DIFlagFwdDecl)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !443, file: !444, line: 35, baseType: !470, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !472, line: 61, size: 128, elements: !473)
!472 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !471, file: !472, line: 62, baseType: !12, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, scope: !471, file: !472, line: 63, baseType: !476, size: 64, offset: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !471, file: !472, line: 63, size: 64, elements: !477)
!477 = !{!478, !479, !5891}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !476, file: !472, line: 65, baseType: !20, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !476, file: !472, line: 66, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !482, line: 169, size: 192, elements: !483)
!482 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!483 = !{!484, !485, !5890}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !481, file: !482, line: 170, baseType: !480, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !481, file: !482, line: 171, baseType: !486, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !80, line: 402, size: 9216, align: 512, elements: !488)
!488 = !{!489, !490, !491, !495, !5576, !5602, !5603, !5604, !5605, !5609, !5612, !5613, !5614, !5666, !5667, !5668, !5669, !5670, !5671, !5672, !5673, !5681, !5685, !5703, !5720, !5721, !5722, !5723, !5732, !5755, !5756, !5759, !5762, !5763, !5764, !5765, !5766, !5767, !5768, !5771, !5772, !5857, !5858, !5859, !5860, !5861, !5863, !5864, !5873, !5874, !5875, !5876, !5878, !5879, !5880, !5886, !5887, !5888, !5889}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !487, file: !80, line: 403, baseType: !79, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !487, file: !80, line: 406, baseType: !174, size: 128, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !487, file: !80, line: 409, baseType: !492, size: 448, offset: 192)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 56)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !487, file: !80, line: 417, baseType: !496, size: 768, offset: 640)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !80, line: 45, size: 768, elements: !497)
!497 = !{!498, !5570, !5571, !5572, !5575}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !496, file: !80, line: 46, baseType: !499, size: 512)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !500, line: 64, size: 512, elements: !501)
!500 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!501 = !{!502, !503, !504, !506, !553, !5559, !5560, !5565, !5566, !5567, !5568, !5569}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !499, file: !500, line: 65, baseType: !102, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !499, file: !500, line: 66, baseType: !174, size: 128, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !499, file: !500, line: 67, baseType: !505, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !499, file: !500, line: 68, baseType: !507, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !500, line: 168, size: 768, elements: !509)
!509 = !{!510, !511, !512, !513}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !508, file: !500, line: 169, baseType: !174, size: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !508, file: !500, line: 170, baseType: !140, size: 32, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !508, file: !500, line: 171, baseType: !499, size: 512, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !508, file: !500, line: 172, baseType: !514, size: 64, offset: 704)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !500, line: 133, size: 192, elements: !517)
!517 = !{!518, !525, !530}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !516, file: !500, line: 134, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!13, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !516, file: !500, line: 135, baseType: !526, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!102, !523}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !516, file: !500, line: 136, baseType: !531, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!13, !523, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !500, line: 125, size: 20736, elements: !537)
!537 = !{!538, !543, !547, !548, !552}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !536, file: !500, line: 126, baseType: !539, size: 192)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 192, elements: !541)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!541 = !{!542}
!542 = !DISubrange(count: 3)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !536, file: !500, line: 127, baseType: !544, size: 4096, offset: 192)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 4096, elements: !545)
!545 = !{!546}
!546 = !DISubrange(count: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !536, file: !500, line: 128, baseType: !13, size: 32, offset: 4288)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !536, file: !500, line: 129, baseType: !549, size: 16384, offset: 4320)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !550)
!550 = !{!551}
!551 = !DISubrange(count: 2048)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !536, file: !500, line: 130, baseType: !13, size: 32, offset: 20704)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !499, file: !500, line: 69, baseType: !554, size: 64, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !500, line: 116, size: 384, elements: !557)
!557 = !{!558, !562, !584, !5547, !5551, !5555}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !556, file: !500, line: 117, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !505}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !556, file: !500, line: 118, baseType: !563, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !566, line: 254, size: 128, elements: !567)
!566 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!567 = !{!568, !580}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !565, file: !566, line: 255, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!572, !505, !575, !540}
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !108, line: 66, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !119, line: 73, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !119, line: 15, baseType: !465)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !566, line: 30, size: 128, elements: !577)
!577 = !{!578, !579}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !576, file: !566, line: 31, baseType: !102, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !576, file: !566, line: 32, baseType: !107, size: 16, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !565, file: !566, line: 256, baseType: !581, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!572, !505, !575, !102, !117}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !556, file: !500, line: 119, baseType: !585, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !566, line: 84, size: 320, elements: !589)
!589 = !{!590, !591, !595, !5543, !5545}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !588, file: !566, line: 85, baseType: !102, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !588, file: !566, line: 86, baseType: !592, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!107, !505, !575, !13}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !588, file: !566, line: 88, baseType: !596, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!107, !505, !599, !13}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !566, line: 175, size: 512, elements: !601)
!601 = !{!602, !603, !604, !605, !5534, !5538, !5539}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !600, file: !566, line: 176, baseType: !576, size: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !600, file: !566, line: 177, baseType: !117, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !600, file: !566, line: 178, baseType: !12, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !600, file: !566, line: 179, baseType: !606, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !88, line: 472, size: 1536, align: 64, elements: !611)
!611 = !{!612, !5369, !5370, !5371, !5372, !5373, !5374, !5375, !5376, !5528, !5529, !5530, !5531, !5532, !5533}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !610, file: !88, line: 473, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !88, line: 641, size: 4800, elements: !615)
!615 = !{!616, !617, !618, !626, !627, !634, !635, !638, !639, !5308, !5309, !5310, !5311, !5312, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5351, !5354, !5355, !5356, !5365, !5366, !5367, !5368}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !614, file: !88, line: 642, baseType: !107, size: 16)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !614, file: !88, line: 643, baseType: !45, size: 16, offset: 16)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !614, file: !88, line: 644, baseType: !619, size: 32, offset: 32)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !620, line: 23, baseType: !621)
!620 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !620, line: 21, size: 32, elements: !622)
!622 = !{!623}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !621, file: !620, line: 22, baseType: !624, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !108, line: 37, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !119, line: 49, baseType: !81)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !614, file: !88, line: 645, baseType: !174, size: 128, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !614, file: !88, line: 646, baseType: !628, size: 32, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !620, line: 28, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !620, line: 26, size: 32, elements: !630)
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !629, file: !620, line: 27, baseType: !632, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !108, line: 38, baseType: !633)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !119, line: 50, baseType: !81)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !614, file: !88, line: 647, baseType: !81, size: 32, offset: 224)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !614, file: !88, line: 650, baseType: !636, size: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !88, line: 607, flags: DIFlagFwdDecl)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !614, file: !88, line: 651, baseType: !636, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !614, file: !88, line: 654, baseType: !640, size: 64, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !88, line: 1966, size: 2048, align: 512, elements: !643)
!643 = !{!644, !5142, !5152, !5156, !5160, !5164, !5168, !5172, !5176, !5180, !5184, !5185, !5189, !5193, !5230, !5259, !5263, !5269, !5273, !5277, !5281, !5285, !5289, !5295, !5299}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !642, file: !88, line: 1967, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!648, !613, !648, !81}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !650, line: 82, size: 1536, elements: !651)
!650 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!651 = !{!652, !653, !663, !671, !672, !689, !690, !692, !705, !5126, !5127, !5128, !5129, !5134, !5135, !5136}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !649, file: !650, line: 84, baseType: !81, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !649, file: !650, line: 85, baseType: !654, size: 32, offset: 32)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !655, line: 275, baseType: !656)
!655 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !655, line: 275, size: 32, elements: !657)
!657 = !{!658}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !656, file: !655, line: 275, baseType: !659, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !655, line: 69, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !655, line: 64, size: 32, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !660, file: !655, line: 65, baseType: !81, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !649, file: !650, line: 86, baseType: !664, size: 128, offset: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !665, line: 38, size: 128, elements: !666)
!665 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!666 = !{!667, !669}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !664, file: !665, line: 39, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !664, file: !665, line: 39, baseType: !670, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !649, file: !650, line: 87, baseType: !648, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !649, file: !650, line: 88, baseType: !673, size: 128, offset: 256)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !650, line: 49, size: 128, elements: !674)
!674 = !{!675, !686}
!675 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !650, line: 50, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !673, file: !650, line: 50, size: 64, elements: !677)
!677 = !{!678, !685}
!678 = !DIDerivedType(tag: DW_TAG_member, scope: !676, file: !650, line: 51, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !676, file: !650, line: 51, size: 64, elements: !680)
!680 = !{!681, !684}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !679, file: !650, line: 52, baseType: !682, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !42, line: 21, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !44, line: 27, baseType: !81)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !679, file: !650, line: 52, baseType: !682, size: 32, offset: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !676, file: !650, line: 54, baseType: !47, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !673, file: !650, line: 56, baseType: !687, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !649, file: !650, line: 89, baseType: !613, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !649, file: !650, line: 91, baseType: !691, size: 256, offset: 448)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 256, elements: !5)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !649, file: !650, line: 94, baseType: !693, size: 64, offset: 704)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !694, line: 25, size: 64, elements: !695)
!694 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !694, line: 26, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !693, file: !694, line: 26, size: 64, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !697, file: !694, line: 28, baseType: !48, size: 64, align: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, scope: !697, file: !694, line: 30, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !697, file: !694, line: 30, size: 64, elements: !702)
!702 = !{!703, !704}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !701, file: !694, line: 31, baseType: !140, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !701, file: !694, line: 32, baseType: !13, size: 32, offset: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !649, file: !650, line: 95, baseType: !706, size: 64, offset: 768)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !650, line: 128, size: 1024, align: 512, elements: !709)
!709 = !{!710, !714, !715, !722, !728, !732, !736, !740, !741, !745, !749, !5116, !5120}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !708, file: !650, line: 129, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!13, !648, !81}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !708, file: !650, line: 130, baseType: !711, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !708, file: !650, line: 131, baseType: !716, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!13, !719, !721}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !649)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !708, file: !650, line: 132, baseType: !723, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!13, !719, !81, !102, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !708, file: !650, line: 134, baseType: !729, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!13, !719}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !708, file: !650, line: 135, baseType: !733, size: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!13, !648}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !708, file: !650, line: 136, baseType: !737, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !648}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !708, file: !650, line: 137, baseType: !737, size: 64, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !708, file: !650, line: 138, baseType: !742, size: 64, offset: 512)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !648, !613}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !708, file: !650, line: 139, baseType: !746, size: 64, offset: 576)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!540, !648, !540, !13}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !708, file: !650, line: 140, baseType: !750, size: 64, offset: 640)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!753, !5115}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !755, line: 70, size: 256, elements: !756)
!755 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!756 = !{!757, !758, !5111, !5112}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !754, file: !755, line: 71, baseType: !648, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !754, file: !755, line: 72, baseType: !759, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !88, line: 1190, size: 10752, elements: !761)
!761 = !{!762, !763, !766, !767, !768, !769, !818, !4821, !4861, !4946, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4963, !4967, !4968, !4971, !4974, !4977, !4980, !4981, !4982, !5023, !5046, !5047, !5048, !5049, !5050, !5051, !5054, !5055, !5061, !5062, !5063, !5064, !5065, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !760, file: !88, line: 1191, baseType: !174, size: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !760, file: !88, line: 1192, baseType: !764, size: 32, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !108, line: 21, baseType: !765)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !108, line: 18, baseType: !682)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !760, file: !88, line: 1193, baseType: !166, size: 8, offset: 160)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !760, file: !88, line: 1194, baseType: !20, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !760, file: !88, line: 1195, baseType: !122, size: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !760, file: !88, line: 1196, baseType: !770, size: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !88, line: 2366, size: 576, elements: !772)
!772 = !{!773, !774, !775, !782, !786, !790, !794, !795, !796, !806, !810, !811, !812, !814, !815, !816, !817}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !771, file: !88, line: 2367, baseType: !102, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !771, file: !88, line: 2368, baseType: !13, size: 32, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !771, file: !88, line: 2376, baseType: !776, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!13, !779}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !781, line: 32, flags: DIFlagFwdDecl)
!781 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!782 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !771, file: !88, line: 2377, baseType: !783, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !88, line: 75, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !771, file: !88, line: 2378, baseType: !787, size: 64, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!648, !770, !13, !102, !12}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !771, file: !88, line: 2380, baseType: !791, size: 64, offset: 320)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !759}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !771, file: !88, line: 2381, baseType: !486, size: 64, offset: 384)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !771, file: !88, line: 2382, baseType: !770, size: 64, offset: 448)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !771, file: !88, line: 2383, baseType: !797, size: 64, offset: 512)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !108, line: 194, size: 64, elements: !798)
!798 = !{!799}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !797, file: !108, line: 195, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !108, line: 198, size: 128, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !801, file: !108, line: 199, baseType: !800, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !801, file: !108, line: 199, baseType: !805, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !771, file: !88, line: 2385, baseType: !807, offset: 576)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !808, line: 206, elements: !809)
!808 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!809 = !{}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !771, file: !88, line: 2386, baseType: !807, offset: 576)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !771, file: !88, line: 2387, baseType: !807, offset: 576)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !771, file: !88, line: 2388, baseType: !813, offset: 576)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, elements: !541)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !771, file: !88, line: 2390, baseType: !807, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !771, file: !88, line: 2391, baseType: !807, offset: 576)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !771, file: !88, line: 2392, baseType: !807, offset: 576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !771, file: !88, line: 2393, baseType: !807, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !760, file: !88, line: 1197, baseType: !819, size: 64, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !88, line: 2057, size: 1664, elements: !822)
!822 = !{!823, !827, !831, !832, !836, !842, !846, !847, !848, !852, !856, !860, !861, !862, !868, !872, !873, !4746, !4747, !4748, !4749, !4753, !4757, !4804, !4819, !4820}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !821, file: !88, line: 2058, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!613, !759}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !821, file: !88, line: 2059, baseType: !828, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !613}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !821, file: !88, line: 2060, baseType: !828, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !821, file: !88, line: 2062, baseType: !833, size: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !613, !13}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !821, file: !88, line: 2063, baseType: !837, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!13, !613, !840}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !88, line: 309, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !821, file: !88, line: 2064, baseType: !843, size: 64, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!13, !613}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !821, file: !88, line: 2065, baseType: !828, size: 64, offset: 384)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !821, file: !88, line: 2066, baseType: !791, size: 64, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !821, file: !88, line: 2067, baseType: !849, size: 64, offset: 512)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!13, !759, !13}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !821, file: !88, line: 2068, baseType: !853, size: 64, offset: 576)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!13, !759, !87}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !821, file: !88, line: 2069, baseType: !857, size: 64, offset: 640)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!13, !759}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !821, file: !88, line: 2070, baseType: !853, size: 64, offset: 704)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !821, file: !88, line: 2071, baseType: !857, size: 64, offset: 768)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !821, file: !88, line: 2072, baseType: !863, size: 64, offset: 832)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!13, !648, !866}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !88, line: 62, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !821, file: !88, line: 2073, baseType: !869, size: 64, offset: 896)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!13, !759, !76, !540}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !821, file: !88, line: 2074, baseType: !791, size: 64, offset: 960)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !821, file: !88, line: 2076, baseType: !874, size: 64, offset: 1024)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!13, !877, !648}
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !879, line: 17, size: 960, elements: !880)
!879 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!880 = !{!881, !882, !883, !884, !885, !886, !887, !888, !909, !930, !931, !4745}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !878, file: !879, line: 18, baseType: !540, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !878, file: !879, line: 19, baseType: !117, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !878, file: !879, line: 20, baseType: !117, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !878, file: !879, line: 21, baseType: !117, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !878, file: !879, line: 22, baseType: !117, size: 64, offset: 256)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !878, file: !879, line: 23, baseType: !122, size: 64, offset: 320)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !878, file: !879, line: 24, baseType: !122, size: 64, offset: 384)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !878, file: !879, line: 25, baseType: !889, size: 256, offset: 448)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !890, line: 66, size: 256, elements: !891)
!890 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!891 = !{!892, !901, !903, !908}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !889, file: !890, line: 67, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !894, line: 13, baseType: !895)
!894 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !108, line: 181, baseType: !896)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 179, size: 64, elements: !897)
!897 = !{!898}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !896, file: !108, line: 180, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !42, line: 22, baseType: !900)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !44, line: 30, baseType: !124)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !889, file: !890, line: 68, baseType: !902, size: 32, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !149, line: 23, baseType: !148)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !889, file: !890, line: 70, baseType: !904, size: 32, offset: 96)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !905, line: 15, size: 32, elements: !906)
!905 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!906 = !{!907}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !904, file: !905, line: 20, baseType: !130, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !889, file: !890, line: 72, baseType: !174, size: 128, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !878, file: !879, line: 26, baseType: !910, size: 64, offset: 704)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !879, line: 32, size: 256, elements: !913)
!913 = !{!914, !918, !922, !926}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !912, file: !879, line: 33, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!12, !877, !121}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !912, file: !879, line: 34, baseType: !919, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{null, !877, !12}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !912, file: !879, line: 35, baseType: !923, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!12, !877, !12, !121}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !912, file: !879, line: 36, baseType: !927, size: 64, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!13, !877, !12}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !878, file: !879, line: 27, baseType: !13, size: 32, offset: 768)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !878, file: !879, line: 28, baseType: !932, size: 64, offset: 832)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !934)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !88, line: 994, size: 1856, align: 64, elements: !935)
!935 = !{!936, !955, !956, !958, !959, !960, !961, !962, !4564, !4565, !4574, !4580, !4581, !4735, !4736, !4737, !4738, !4740, !4741, !4744}
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !934, file: !88, line: 995, baseType: !937, size: 128)
!937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !934, file: !88, line: 995, size: 128, elements: !938)
!938 = !{!939, !945, !954}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !937, file: !88, line: 996, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !941, line: 60, size: 64, elements: !942)
!941 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!942 = !{!943}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !940, file: !941, line: 61, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !937, file: !88, line: 997, baseType: !946, size: 128, align: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !108, line: 232, size: 128, align: 64, elements: !947)
!947 = !{!948, !950}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !946, file: !108, line: 233, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !946, file: !108, line: 234, baseType: !951, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{null, !949}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !937, file: !88, line: 998, baseType: !81, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !934, file: !88, line: 1005, baseType: !140, size: 32, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !934, file: !88, line: 1006, baseType: !957, size: 32, offset: 160)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !108, line: 156, baseType: !81)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !934, file: !88, line: 1007, baseType: !893, size: 64, offset: 192)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !934, file: !88, line: 1008, baseType: !889, size: 256, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !934, file: !88, line: 1009, baseType: !122, size: 64, offset: 512)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !934, file: !88, line: 1010, baseType: !81, size: 32, offset: 576)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !934, file: !88, line: 1011, baseType: !963, size: 256, offset: 640)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !88, line: 948, size: 256, elements: !964)
!964 = !{!965, !986, !4560, !4561, !4562, !4563}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !963, file: !88, line: 949, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !967, line: 34, baseType: !968)
!967 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !967, line: 25, size: 64, elements: !969)
!969 = !{!970}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !968, file: !967, line: 26, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !972, line: 27, baseType: !973)
!972 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !972, line: 13, size: 64, elements: !974)
!974 = !{!975, !985}
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !973, file: !972, line: 14, baseType: !976, size: 32)
!976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !973, file: !972, line: 14, size: 32, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !976, file: !972, line: 15, baseType: !130, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !972, line: 16, baseType: !980, size: 32)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !972, line: 16, size: 32, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !980, file: !972, line: 18, baseType: !164, size: 8)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !980, file: !972, line: 19, baseType: !984, size: 24, offset: 8)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 24, elements: !541)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !973, file: !972, line: 26, baseType: !152, size: 32, offset: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !963, file: !88, line: 950, baseType: !987, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !222, line: 59, size: 768, elements: !989)
!989 = !{!990, !996, !997, !998, !1002, !1003, !1004, !1005}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !988, file: !222, line: 61, baseType: !991, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !992, line: 113, baseType: !993)
!992 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !992, line: 111, size: 32, elements: !994)
!994 = !{!995}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !993, file: !992, line: 112, baseType: !130, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !988, file: !222, line: 62, baseType: !81, size: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !988, file: !222, line: 63, baseType: !140, size: 32, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !988, file: !222, line: 65, baseType: !999, size: 256, offset: 128)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 256, elements: !1000)
!1000 = !{!1001}
!1001 = !DISubrange(count: 4)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !988, file: !222, line: 66, baseType: !797, size: 64, offset: 384)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !988, file: !222, line: 68, baseType: !135, size: 192, offset: 448)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !988, file: !222, line: 69, baseType: !946, size: 128, align: 64, offset: 640)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !988, file: !222, line: 70, baseType: !1006, offset: 768)
!1006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1007, elements: !1761)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !222, line: 54, size: 128, elements: !1008)
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1007, file: !222, line: 55, baseType: !13, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1007, file: !222, line: 56, baseType: !1011, size: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1013, line: 26, size: 1152, elements: !1014)
!1013 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1014 = !{!1015, !1029, !1030, !1031, !4549, !4550, !4551, !4552, !4555, !4556, !4557, !4558, !4559}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1012, file: !1013, line: 27, baseType: !1016, size: 192)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1017, line: 19, size: 192, elements: !1018)
!1017 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1018 = !{!1019, !1027, !1028}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1016, file: !1017, line: 20, baseType: !1020, size: 128)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1021, line: 296, size: 128, elements: !1022)
!1021 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1022 = !{!1023, !1024, !1026}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1020, file: !1021, line: 297, baseType: !140, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1020, file: !1021, line: 299, baseType: !1025, size: 32, offset: 32)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !108, line: 154, baseType: !81)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1020, file: !1021, line: 300, baseType: !12, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1016, file: !1017, line: 21, baseType: !81, size: 32, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1016, file: !1017, line: 22, baseType: !81, size: 32, offset: 160)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1012, file: !1013, line: 28, baseType: !946, size: 128, align: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1012, file: !1013, line: 29, baseType: !81, size: 32, offset: 320)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1012, file: !1013, line: 30, baseType: !1032, size: 64, offset: 384)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1034, line: 746, size: 58368, elements: !1035)
!1034 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1035 = !{!1036, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1123, !1134, !1229, !1233, !1236, !1267, !1268, !1269, !1270, !1281, !1283, !1284, !1285, !1286, !1287, !1288, !1299, !1300, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1317, !1318, !1325, !1326, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1847, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1895, !1901, !1971, !1972, !1973, !1974, !1978, !1981, !1988, !1993, !1996, !1999, !2002, !2693, !2893, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2931, !2932, !2933, !2942, !2950, !2951, !2952, !2953, !2954, !2959, !2960, !2961, !2964, !2965, !2968, !2971, !2974, !2982, !2985, !2986, !3072, !3073, !3074, !3075, !3076, !3082, !3083, !3084, !3085, !3086, !3087, !3090, !3093, !3094, !3097, !3098, !3099, !3137, !3138, !3139, !3140, !3141, !3142, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3174, !3177, !3183, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3195, !3267, !3269, !3270, !3271, !3272, !3273, !3274, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3304, !3305, !3306}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1033, file: !1034, line: 752, baseType: !1037, size: 192)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1038, line: 56, size: 192, elements: !1039)
!1038 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1039 = !{!1040, !1041, !1042, !1043}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1037, file: !1038, line: 57, baseType: !20, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1037, file: !1038, line: 58, baseType: !20, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1037, file: !1038, line: 59, baseType: !682, size: 32, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1037, file: !1038, line: 61, baseType: !682, size: 32, offset: 160)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1033, file: !1034, line: 754, baseType: !81, size: 32, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1033, file: !1034, line: 767, baseType: !12, size: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1033, file: !1034, line: 768, baseType: !991, size: 32, offset: 320)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1033, file: !1034, line: 770, baseType: !81, size: 32, offset: 352)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1033, file: !1034, line: 771, baseType: !81, size: 32, offset: 384)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1033, file: !1034, line: 774, baseType: !13, size: 32, offset: 416)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1033, file: !1034, line: 775, baseType: !1051, size: 128, offset: 448)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1052, line: 58, size: 128, elements: !1053)
!1052 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1053 = !{!1054, !1055, !1060, !1061}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1051, file: !1052, line: 59, baseType: !940, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !1052, line: 60, baseType: !1056, size: 32, offset: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1051, file: !1052, line: 60, size: 32, elements: !1057)
!1057 = !{!1058, !1059}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1056, file: !1052, line: 61, baseType: !81, size: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1056, file: !1052, line: 62, baseType: !130, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1051, file: !1052, line: 65, baseType: !41, size: 16, offset: 96)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1051, file: !1052, line: 65, baseType: !41, size: 16, offset: 112)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1033, file: !1034, line: 776, baseType: !81, size: 32, offset: 576)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1033, file: !1034, line: 777, baseType: !20, size: 64, offset: 640)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1033, file: !1034, line: 778, baseType: !1032, size: 64, offset: 704)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1033, file: !1034, line: 787, baseType: !13, size: 32, offset: 768)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1033, file: !1034, line: 788, baseType: !13, size: 32, offset: 800)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1033, file: !1034, line: 790, baseType: !13, size: 32, offset: 832)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1033, file: !1034, line: 792, baseType: !13, size: 32, offset: 864)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1033, file: !1034, line: 793, baseType: !13, size: 32, offset: 896)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1033, file: !1034, line: 794, baseType: !13, size: 32, offset: 928)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1033, file: !1034, line: 795, baseType: !81, size: 32, offset: 960)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1033, file: !1034, line: 797, baseType: !1073, size: 2048, offset: 1024)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1034, line: 551, size: 2048, elements: !1074)
!1074 = !{!1075, !1080, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1102, !1105, !1106, !1107}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1073, file: !1034, line: 553, baseType: !1076, size: 128)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1034, line: 411, size: 128, elements: !1077)
!1077 = !{!1078, !1079}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1076, file: !1034, line: 412, baseType: !20, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1076, file: !1034, line: 413, baseType: !682, size: 32, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1073, file: !1034, line: 554, baseType: !1081, size: 192, align: 64, offset: 128)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1082, line: 5, size: 192, align: 64, elements: !1083)
!1082 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1083 = !{!1084, !1085, !1087}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1081, file: !1082, line: 6, baseType: !20, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1081, file: !1082, line: 7, baseType: !1086, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1081, file: !1082, line: 8, baseType: !1086, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1073, file: !1034, line: 555, baseType: !47, size: 64, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1073, file: !1034, line: 556, baseType: !47, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1073, file: !1034, line: 558, baseType: !174, size: 128, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1073, file: !1034, line: 559, baseType: !81, size: 32, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1073, file: !1034, line: 561, baseType: !47, size: 64, offset: 640)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1073, file: !1034, line: 562, baseType: !47, size: 64, offset: 704)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1073, file: !1034, line: 563, baseType: !47, size: 64, offset: 768)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1073, file: !1034, line: 564, baseType: !47, size: 64, offset: 832)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1073, file: !1034, line: 565, baseType: !899, size: 64, offset: 896)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1073, file: !1034, line: 566, baseType: !47, size: 64, offset: 960)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1073, file: !1034, line: 568, baseType: !47, size: 64, offset: 1024)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1073, file: !1034, line: 571, baseType: !13, size: 32, offset: 1088)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1073, file: !1034, line: 572, baseType: !1101, size: 64, offset: 1152)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1073, file: !1034, line: 574, baseType: !1103, size: 64, offset: 1216)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1034, line: 49, flags: DIFlagFwdDecl)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1073, file: !1034, line: 576, baseType: !1103, size: 64, offset: 1280)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1073, file: !1034, line: 578, baseType: !20, size: 64, offset: 1344)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1073, file: !1034, line: 588, baseType: !1108, size: 512, align: 512, offset: 1536)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1034, line: 497, size: 512, align: 512, elements: !1109)
!1109 = !{!1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1108, file: !1034, line: 498, baseType: !47, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1108, file: !1034, line: 499, baseType: !47, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1108, file: !1034, line: 500, baseType: !47, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1108, file: !1034, line: 501, baseType: !682, size: 32, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1108, file: !1034, line: 502, baseType: !682, size: 32, offset: 224)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1108, file: !1034, line: 503, baseType: !20, size: 64, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1108, file: !1034, line: 504, baseType: !20, size: 64, offset: 320)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1108, file: !1034, line: 505, baseType: !20, size: 64, offset: 384)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1108, file: !1034, line: 506, baseType: !1119, size: 64, align: 64, offset: 448)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1034, line: 445, size: 64, align: 64, elements: !1120)
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1119, file: !1034, line: 446, baseType: !81, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1119, file: !1034, line: 447, baseType: !81, size: 32, offset: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1033, file: !1034, line: 798, baseType: !1124, size: 384, offset: 3072)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1034, line: 592, size: 384, elements: !1125)
!1125 = !{!1126, !1127, !1128, !1129, !1130, !1131, !1132}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1124, file: !1034, line: 593, baseType: !174, size: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1124, file: !1034, line: 594, baseType: !20, size: 64, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1124, file: !1034, line: 595, baseType: !20, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1124, file: !1034, line: 596, baseType: !81, size: 32, offset: 256)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1124, file: !1034, line: 597, baseType: !45, size: 16, offset: 288)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1124, file: !1034, line: 598, baseType: !45, size: 16, offset: 304)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1124, file: !1034, line: 600, baseType: !1133, size: 64, offset: 320)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1033, file: !1034, line: 799, baseType: !1135, size: 1792, offset: 3456)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1034, line: 610, size: 1792, elements: !1136)
!1136 = !{!1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1226, !1227}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1135, file: !1034, line: 611, baseType: !1081, size: 192, align: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1135, file: !1034, line: 618, baseType: !47, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1135, file: !1034, line: 619, baseType: !47, size: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1135, file: !1034, line: 620, baseType: !47, size: 64, offset: 320)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1135, file: !1034, line: 621, baseType: !47, size: 64, offset: 384)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1135, file: !1034, line: 622, baseType: !47, size: 64, offset: 448)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1135, file: !1034, line: 629, baseType: !899, size: 64, offset: 512)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1135, file: !1034, line: 630, baseType: !47, size: 64, offset: 576)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1135, file: !1034, line: 631, baseType: !81, size: 32, offset: 640)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1135, file: !1034, line: 653, baseType: !81, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1135, file: !1034, line: 654, baseType: !81, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1135, file: !1034, line: 655, baseType: !81, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1135, file: !1034, line: 656, baseType: !81, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1135, file: !1034, line: 662, baseType: !1151, size: 512, offset: 704)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !93, line: 118, size: 512, elements: !1152)
!1152 = !{!1153, !1161, !1162, !1167, !1222, !1223, !1224, !1225}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1151, file: !93, line: 119, baseType: !1154, size: 256)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1155, line: 9, size: 256, elements: !1156)
!1155 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1156 = !{!1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1154, file: !1155, line: 10, baseType: !1081, size: 192, align: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1154, file: !1155, line: 11, baseType: !1159, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1160, line: 29, baseType: !899)
!1160 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1151, file: !93, line: 120, baseType: !1159, size: 64, offset: 256)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1151, file: !93, line: 121, baseType: !1163, size: 64, offset: 320)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!92, !1166}
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1151, file: !93, line: 122, baseType: !1168, size: 64, offset: 384)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !93, line: 159, size: 512, align: 512, elements: !1170)
!1170 = !{!1171, !1196, !1197, !1200, !1205, !1206, !1217, !1221}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1169, file: !93, line: 160, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !93, line: 215, size: 4608, align: 512, elements: !1174)
!1174 = !{!1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1173, file: !93, line: 216, baseType: !902, size: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1173, file: !93, line: 217, baseType: !81, size: 32, offset: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1173, file: !93, line: 218, baseType: !81, size: 32, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1173, file: !93, line: 219, baseType: !81, size: 32, offset: 96)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1173, file: !93, line: 220, baseType: !81, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1173, file: !93, line: 221, baseType: !81, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1173, file: !93, line: 222, baseType: !81, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1173, file: !93, line: 223, baseType: !81, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1173, file: !93, line: 224, baseType: !81, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1173, file: !93, line: 226, baseType: !81, size: 32, offset: 160)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1173, file: !93, line: 227, baseType: !45, size: 16, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1173, file: !93, line: 228, baseType: !45, size: 16, offset: 208)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1173, file: !93, line: 229, baseType: !81, size: 32, offset: 224)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1173, file: !93, line: 235, baseType: !1159, size: 64, offset: 256)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1173, file: !93, line: 236, baseType: !1166, size: 64, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1173, file: !93, line: 237, baseType: !1159, size: 64, offset: 384)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1173, file: !93, line: 238, baseType: !1166, size: 64, offset: 448)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1173, file: !93, line: 239, baseType: !1193, size: 4096, align: 512, offset: 512)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1169, size: 4096, align: 512, elements: !1194)
!1194 = !{!1195}
!1195 = !DISubrange(count: 8)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1169, file: !93, line: 161, baseType: !81, size: 32, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1169, file: !93, line: 162, baseType: !1198, size: 32, offset: 96)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !108, line: 32, baseType: !1199)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !119, line: 96, baseType: !13)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1169, file: !93, line: 163, baseType: !1201, size: 32, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !655, line: 274, baseType: !1202)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !655, line: 274, size: 32, elements: !1203)
!1203 = !{!1204}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1202, file: !655, line: 274, baseType: !659, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1169, file: !93, line: 164, baseType: !1166, size: 64, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1169, file: !93, line: 165, baseType: !1207, size: 128, offset: 256)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1155, line: 14, size: 128, elements: !1208)
!1208 = !{!1209}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1207, file: !1155, line: 15, baseType: !1210, size: 128)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1082, line: 26, size: 128, elements: !1211)
!1211 = !{!1212, !1216}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1210, file: !1082, line: 27, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1082, line: 12, size: 64, elements: !1214)
!1214 = !{!1215}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1213, file: !1082, line: 13, baseType: !1086, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1210, file: !1082, line: 28, baseType: !1086, size: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1169, file: !93, line: 166, baseType: !1218, size: 64, offset: 384)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!1159}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1169, file: !93, line: 167, baseType: !1159, size: 64, offset: 448)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1151, file: !93, line: 123, baseType: !164, size: 8, offset: 448)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1151, file: !93, line: 124, baseType: !164, size: 8, offset: 456)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1151, file: !93, line: 125, baseType: !164, size: 8, offset: 464)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1151, file: !93, line: 126, baseType: !164, size: 8, offset: 472)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1135, file: !1034, line: 671, baseType: !1151, size: 512, offset: 1216)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1135, file: !1034, line: 679, baseType: !1228, size: 64, offset: 1728)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1033, file: !1034, line: 800, baseType: !1230, size: 64, offset: 5248)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1232)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1034, line: 800, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1033, file: !1034, line: 809, baseType: !1234, size: 64, offset: 5312)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1034, line: 70, flags: DIFlagFwdDecl)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1033, file: !1034, line: 825, baseType: !1237, size: 2048, align: 512, offset: 5632)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1034, line: 509, size: 2048, align: 512, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1237, file: !1034, line: 511, baseType: !47, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1237, file: !1034, line: 512, baseType: !47, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1237, file: !1034, line: 513, baseType: !47, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1237, file: !1034, line: 514, baseType: !47, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1237, file: !1034, line: 515, baseType: !47, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1237, file: !1034, line: 516, baseType: !47, size: 64, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1237, file: !1034, line: 518, baseType: !47, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1237, file: !1034, line: 519, baseType: !47, size: 64, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1237, file: !1034, line: 520, baseType: !899, size: 64, offset: 512)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1237, file: !1034, line: 522, baseType: !47, size: 64, offset: 576)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1237, file: !1034, line: 523, baseType: !47, size: 64, offset: 640)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1237, file: !1034, line: 524, baseType: !899, size: 64, offset: 704)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1237, file: !1034, line: 526, baseType: !899, size: 64, offset: 768)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1237, file: !1034, line: 527, baseType: !47, size: 64, offset: 832)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1237, file: !1034, line: 529, baseType: !47, size: 64, offset: 896)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1237, file: !1034, line: 530, baseType: !47, size: 64, offset: 960)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1237, file: !1034, line: 531, baseType: !47, size: 64, offset: 1024)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1237, file: !1034, line: 532, baseType: !47, size: 64, offset: 1088)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1237, file: !1034, line: 533, baseType: !47, size: 64, offset: 1152)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1237, file: !1034, line: 535, baseType: !47, size: 64, offset: 1216)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1237, file: !1034, line: 536, baseType: !47, size: 64, offset: 1280)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1237, file: !1034, line: 537, baseType: !47, size: 64, offset: 1344)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1237, file: !1034, line: 538, baseType: !47, size: 64, offset: 1408)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1237, file: !1034, line: 539, baseType: !47, size: 64, offset: 1472)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1237, file: !1034, line: 540, baseType: !47, size: 64, offset: 1536)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1237, file: !1034, line: 541, baseType: !47, size: 64, offset: 1600)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1237, file: !1034, line: 542, baseType: !47, size: 64, offset: 1664)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1237, file: !1034, line: 543, baseType: !47, size: 64, offset: 1728)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1033, file: !1034, line: 833, baseType: !81, size: 32, offset: 7680)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1033, file: !1034, line: 836, baseType: !81, size: 32, offset: 7712)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1033, file: !1034, line: 837, baseType: !13, size: 32, offset: 7744)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1033, file: !1034, line: 838, baseType: !1271, size: 64, offset: 7808)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1273)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1274, line: 19, baseType: !1275)
!1274 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1274, line: 19, size: 64, elements: !1276)
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1275, file: !1274, line: 19, baseType: !1278, size: 64)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 64, elements: !1279)
!1279 = !{!1280}
!1280 = !DISubrange(count: 1)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1033, file: !1034, line: 839, baseType: !1282, size: 64, offset: 7872)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1033, file: !1034, line: 840, baseType: !1273, size: 64, offset: 7936)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1033, file: !1034, line: 841, baseType: !12, size: 64, offset: 8000)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1033, file: !1034, line: 843, baseType: !45, size: 16, offset: 8064)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1033, file: !1034, line: 845, baseType: !45, size: 16, offset: 8080)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1033, file: !1034, line: 848, baseType: !13, size: 32, offset: 8096)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1033, file: !1034, line: 849, baseType: !1289, size: 32, offset: 8128)
!1289 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1034, line: 718, size: 32, elements: !1290)
!1290 = !{!1291, !1298}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1289, file: !1034, line: 724, baseType: !1292, size: 32)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !1034, line: 719, size: 32, elements: !1293)
!1293 = !{!1294, !1295, !1296, !1297}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1292, file: !1034, line: 720, baseType: !164, size: 8)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1292, file: !1034, line: 721, baseType: !164, size: 8, offset: 8)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1292, file: !1034, line: 722, baseType: !164, size: 8, offset: 16)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1292, file: !1034, line: 723, baseType: !164, size: 8, offset: 24)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1289, file: !1034, line: 725, baseType: !682, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1033, file: !1034, line: 850, baseType: !174, size: 128, offset: 8192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1033, file: !1034, line: 851, baseType: !1301, size: 64, offset: 8320)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1034, line: 60, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1033, file: !1034, line: 855, baseType: !20, size: 64, offset: 8384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1033, file: !1034, line: 856, baseType: !164, size: 8, offset: 8448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1033, file: !1034, line: 857, baseType: !164, size: 8, offset: 8456)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1033, file: !1034, line: 858, baseType: !13, size: 32, offset: 8480)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1033, file: !1034, line: 859, baseType: !174, size: 128, offset: 8512)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1033, file: !1034, line: 860, baseType: !13, size: 32, offset: 8640)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1033, file: !1034, line: 861, baseType: !174, size: 128, offset: 8704)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1033, file: !1034, line: 873, baseType: !1311, size: 256, offset: 8832)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1034, line: 376, size: 256, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1311, file: !1034, line: 381, baseType: !20, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1311, file: !1034, line: 384, baseType: !49, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1311, file: !1034, line: 389, baseType: !49, size: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1311, file: !1034, line: 392, baseType: !49, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1033, file: !1034, line: 875, baseType: !174, size: 128, offset: 9088)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1033, file: !1034, line: 877, baseType: !1319, size: 320, offset: 9216)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1320, line: 86, size: 320, elements: !1321)
!1320 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1321 = !{!1322, !1323, !1324}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1319, file: !1320, line: 87, baseType: !13, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1319, file: !1320, line: 88, baseType: !174, size: 128, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1319, file: !1320, line: 89, baseType: !174, size: 128, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1033, file: !1034, line: 878, baseType: !1081, size: 192, align: 64, offset: 9536)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1033, file: !1034, line: 881, baseType: !1327, size: 64, offset: 9728)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !191, line: 733, size: 10240, elements: !1329)
!1329 = !{!1330, !1759}
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1328, file: !191, line: 734, baseType: !1331, size: 10240)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1328, file: !191, line: 734, size: 10240, elements: !1332)
!1332 = !{!1333, !1337, !1350, !1355, !1356, !1357, !1358, !1359, !1360, !1369, !1370, !1371, !1377, !1378, !1379, !1380, !1381, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1418, !1428, !1431, !1479, !1480, !1481, !1484, !1745, !1746, !1749, !1750, !1751, !1757, !1758}
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1331, file: !191, line: 739, baseType: !1334, size: 512, align: 512)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1331, file: !191, line: 739, size: 512, align: 512, elements: !1335)
!1335 = !{!1336}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1334, file: !191, line: 747, baseType: !130, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1331, file: !191, line: 750, baseType: !1338, size: 128, offset: 512)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1339, line: 218, size: 128, elements: !1340)
!1339 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1340 = !{!1341, !1348, !1349}
!1341 = !DIDerivedType(tag: DW_TAG_member, scope: !1338, file: !1339, line: 219, baseType: !1342, size: 32)
!1342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1338, file: !1339, line: 219, size: 32, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1342, file: !1339, line: 220, baseType: !140, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1342, file: !1339, line: 221, baseType: !1346)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1339, line: 197, baseType: !1347)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1339, line: 197, elements: !809)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1338, file: !1339, line: 223, baseType: !81, size: 32, offset: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1338, file: !1339, line: 224, baseType: !12, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1331, file: !191, line: 752, baseType: !1351, size: 64, offset: 640)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!20, !1354, !20, !20, !20, !20}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1331, file: !191, line: 756, baseType: !20, size: 64, offset: 704)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1331, file: !191, line: 757, baseType: !20, size: 64, offset: 768)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1331, file: !191, line: 760, baseType: !20, size: 64, offset: 832)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1331, file: !191, line: 761, baseType: !20, size: 64, offset: 896)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1331, file: !191, line: 763, baseType: !20, size: 64, offset: 960)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1331, file: !191, line: 764, baseType: !1361, size: 64, offset: 1024)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1363, line: 299, baseType: !1364)
!1363 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1363, line: 299, size: 64, elements: !1365)
!1365 = !{!1366}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1364, file: !1363, line: 299, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1368, line: 18, baseType: !20)
!1368 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1331, file: !191, line: 773, baseType: !130, size: 32, offset: 1088)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1331, file: !191, line: 785, baseType: !130, size: 32, offset: 1120)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1331, file: !191, line: 795, baseType: !1372, size: 64, offset: 1152)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !191, line: 726, size: 128, elements: !1374)
!1374 = !{!1375, !1376}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1373, file: !191, line: 727, baseType: !47, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1373, file: !191, line: 728, baseType: !13, size: 32, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1331, file: !191, line: 801, baseType: !20, size: 64, offset: 1216)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1331, file: !191, line: 804, baseType: !893, size: 64, offset: 1280)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1331, file: !191, line: 806, baseType: !13, size: 32, offset: 1344)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1331, file: !191, line: 808, baseType: !140, size: 32, offset: 1376)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1331, file: !191, line: 823, baseType: !1382, size: 320, offset: 1408)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1383, line: 48, size: 320, elements: !1384)
!1383 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1384 = !{!1385, !1386, !1387, !1388, !1389}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1382, file: !1383, line: 49, baseType: !893, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1382, file: !1383, line: 55, baseType: !893, size: 64, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1382, file: !1383, line: 57, baseType: !904, size: 32, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1382, file: !1383, line: 59, baseType: !902, size: 32, offset: 160)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1382, file: !1383, line: 60, baseType: !174, size: 128, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1331, file: !191, line: 825, baseType: !174, size: 128, offset: 1728)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1331, file: !191, line: 845, baseType: !13, size: 32, offset: 1856)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1331, file: !191, line: 849, baseType: !20, size: 64, offset: 1920)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1331, file: !191, line: 850, baseType: !20, size: 64, offset: 1984)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1331, file: !191, line: 852, baseType: !20, size: 64, offset: 2048)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1331, file: !191, line: 853, baseType: !20, size: 64, offset: 2112)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1331, file: !191, line: 854, baseType: !895, size: 64, offset: 2176)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1331, file: !191, line: 855, baseType: !20, size: 64, offset: 2240)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1331, file: !191, line: 856, baseType: !20, size: 64, offset: 2304)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1331, file: !191, line: 857, baseType: !20, size: 64, offset: 2368)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1331, file: !191, line: 858, baseType: !20, size: 64, offset: 2432)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1331, file: !191, line: 865, baseType: !659, size: 32, offset: 2496)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1331, file: !191, line: 867, baseType: !140, size: 32, offset: 2528)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1331, file: !191, line: 869, baseType: !20, size: 64, offset: 2560)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1331, file: !191, line: 869, baseType: !20, size: 64, offset: 2624)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1331, file: !191, line: 869, baseType: !20, size: 64, offset: 2688)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1331, file: !191, line: 869, baseType: !20, size: 64, offset: 2752)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1331, file: !191, line: 870, baseType: !20, size: 64, offset: 2816)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1331, file: !191, line: 870, baseType: !20, size: 64, offset: 2880)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1331, file: !191, line: 870, baseType: !20, size: 64, offset: 2944)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1331, file: !191, line: 871, baseType: !20, size: 64, offset: 3008)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1331, file: !191, line: 871, baseType: !20, size: 64, offset: 3072)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1331, file: !191, line: 871, baseType: !20, size: 64, offset: 3136)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1331, file: !191, line: 871, baseType: !20, size: 64, offset: 3200)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1331, file: !191, line: 873, baseType: !1415, size: 3328, offset: 3264)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 3328, elements: !1416)
!1416 = !{!1417}
!1417 = !DISubrange(count: 52)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1331, file: !191, line: 875, baseType: !1419, size: 1280, offset: 6592)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1420, size: 1280, elements: !1000)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1421, line: 22, size: 320, elements: !1422)
!1421 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1422 = !{!1423, !1424, !1425, !1426}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1420, file: !1421, line: 23, baseType: !902, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1420, file: !1421, line: 24, baseType: !899, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1420, file: !1421, line: 26, baseType: !174, size: 128, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1420, file: !1421, line: 28, baseType: !1427, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1331, file: !191, line: 877, baseType: !1429, size: 64, offset: 7872)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !191, line: 877, flags: DIFlagFwdDecl)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1331, file: !191, line: 880, baseType: !1432, size: 1088, offset: 7936)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1433, line: 72, baseType: !1434)
!1433 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1433, line: 23, size: 1088, elements: !1435)
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1443, !1444, !1445, !1446, !1473, !1474, !1475}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1434, file: !1433, line: 28, baseType: !47, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1434, file: !1433, line: 38, baseType: !895, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1434, file: !1433, line: 40, baseType: !20, size: 64, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1434, file: !1433, line: 43, baseType: !1382, size: 320, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1434, file: !1433, line: 44, baseType: !1441, size: 64, offset: 512)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1433, line: 44, flags: DIFlagFwdDecl)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1434, file: !1433, line: 48, baseType: !20, size: 64, offset: 576)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1434, file: !1433, line: 59, baseType: !889, size: 256, offset: 640)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1434, file: !1433, line: 60, baseType: !12, size: 64, offset: 896)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1434, file: !1433, line: 61, baseType: !1447, size: 64, offset: 960)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1449)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1450, line: 13, size: 1216, elements: !1451)
!1450 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1451 = !{!1452, !1453, !1454, !1455, !1456, !1457, !1458, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1449, file: !1450, line: 14, baseType: !12, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1449, file: !1450, line: 15, baseType: !20, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1449, file: !1450, line: 17, baseType: !20, size: 64, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1449, file: !1450, line: 17, baseType: !20, size: 64, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1449, file: !1450, line: 18, baseType: !20, size: 64, offset: 256)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1449, file: !1450, line: 18, baseType: !20, size: 64, offset: 320)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1449, file: !1450, line: 19, baseType: !1459, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1449, file: !1450, line: 21, baseType: !465, size: 64, offset: 448)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1449, file: !1450, line: 23, baseType: !465, size: 64, offset: 512)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1449, file: !1450, line: 24, baseType: !465, size: 64, offset: 576)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1449, file: !1450, line: 25, baseType: !465, size: 64, offset: 640)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1449, file: !1450, line: 26, baseType: !465, size: 64, offset: 704)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1449, file: !1450, line: 27, baseType: !465, size: 64, offset: 768)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1449, file: !1450, line: 28, baseType: !465, size: 64, offset: 832)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1449, file: !1450, line: 29, baseType: !465, size: 64, offset: 896)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1449, file: !1450, line: 30, baseType: !465, size: 64, offset: 960)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1449, file: !1450, line: 31, baseType: !465, size: 64, offset: 1024)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1449, file: !1450, line: 32, baseType: !465, size: 64, offset: 1088)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1449, file: !1450, line: 33, baseType: !465, size: 64, offset: 1152)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1434, file: !1433, line: 63, baseType: !130, size: 32, offset: 1024)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1434, file: !1433, line: 69, baseType: !41, size: 16, offset: 1056)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1434, file: !1433, line: 70, baseType: !1476, size: 16, offset: 1072)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !42, line: 18, baseType: !1477)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !44, line: 23, baseType: !1478)
!1478 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1331, file: !191, line: 882, baseType: !20, size: 64, offset: 9024)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1331, file: !191, line: 885, baseType: !140, size: 32, offset: 9088)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1331, file: !191, line: 886, baseType: !1482, size: 64, offset: 9152)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !191, line: 732, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1331, file: !191, line: 901, baseType: !1485, size: 64, offset: 9216)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1487, line: 68, size: 4800, elements: !1488)
!1487 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1488 = !{!1489, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1528, !1529, !1532, !1533, !1643, !1644, !1656, !1726, !1727, !1741, !1743}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1486, file: !1487, line: 69, baseType: !1490, size: 576)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1487, line: 23, size: 576, elements: !1491)
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1490, file: !1487, line: 24, baseType: !682, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, scope: !1490, file: !1487, line: 25, baseType: !1494, size: 512, offset: 64)
!1494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1490, file: !1487, line: 25, size: 512, elements: !1495)
!1495 = !{!1496, !1505}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1494, file: !1487, line: 26, baseType: !1497, size: 480)
!1497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1498, size: 480, elements: !1503)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1487, line: 17, size: 96, elements: !1499)
!1499 = !{!1500, !1501, !1502}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1498, file: !1487, line: 18, baseType: !682, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1498, file: !1487, line: 19, baseType: !682, size: 32, offset: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1498, file: !1487, line: 20, baseType: !682, size: 32, offset: 64)
!1503 = !{!1504}
!1504 = !DISubrange(count: 5)
!1505 = !DIDerivedType(tag: DW_TAG_member, scope: !1494, file: !1487, line: 27, baseType: !1506, size: 128)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1494, file: !1487, line: 27, size: 128, elements: !1507)
!1507 = !{!1508, !1510}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1506, file: !1487, line: 28, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1506, file: !1487, line: 29, baseType: !1509, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1486, file: !1487, line: 70, baseType: !1490, size: 576, offset: 576)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1486, file: !1487, line: 71, baseType: !1490, size: 576, offset: 1152)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1486, file: !1487, line: 72, baseType: !1485, size: 64, offset: 1728)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1486, file: !1487, line: 73, baseType: !13, size: 32, offset: 1792)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1486, file: !1487, line: 74, baseType: !619, size: 32, offset: 1824)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1486, file: !1487, line: 75, baseType: !628, size: 32, offset: 1856)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1486, file: !1487, line: 76, baseType: !1518, size: 192, offset: 1920)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1519, line: 9, size: 192, elements: !1520)
!1519 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1520 = !{!1521, !1522, !1526, !1527}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1518, file: !1519, line: 10, baseType: !893, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1518, file: !1519, line: 11, baseType: !1523, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1525)
!1525 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1519, line: 7, flags: DIFlagFwdDecl)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1518, file: !1519, line: 12, baseType: !81, size: 32, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1518, file: !1519, line: 13, baseType: !991, size: 32, offset: 160)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1486, file: !1487, line: 77, baseType: !20, size: 64, offset: 2112)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1486, file: !1487, line: 80, baseType: !1530, size: 8, offset: 2176)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !108, line: 35, baseType: !1531)
!1531 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1486, file: !1487, line: 88, baseType: !174, size: 128, offset: 2240)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1486, file: !1487, line: 89, baseType: !1534, size: 64, offset: 2368)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1536, line: 195, size: 1728, elements: !1537)
!1536 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1537 = !{!1538, !1539, !1542, !1547, !1548, !1551, !1552, !1559, !1560, !1561, !1562, !1565, !1566, !1567, !1568, !1569, !1607, !1628}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1535, file: !1536, line: 196, baseType: !991, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1535, file: !1536, line: 197, baseType: !1540, size: 32, offset: 32)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1536, line: 28, baseType: !1541)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !108, line: 104, baseType: !461)
!1542 = !DIDerivedType(tag: DW_TAG_member, scope: !1535, file: !1536, line: 198, baseType: !1543, size: 192, offset: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1535, file: !1536, line: 198, size: 192, elements: !1544)
!1544 = !{!1545, !1546}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1543, file: !1536, line: 199, baseType: !174, size: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1543, file: !1536, line: 200, baseType: !1081, size: 192, align: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1535, file: !1536, line: 205, baseType: !1382, size: 320, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1535, file: !1536, line: 206, baseType: !1549, size: 64, offset: 576)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1536, line: 206, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1535, file: !1536, line: 207, baseType: !12, size: 64, offset: 640)
!1552 = !DIDerivedType(tag: DW_TAG_member, scope: !1535, file: !1536, line: 208, baseType: !1553, size: 64, offset: 704)
!1553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1535, file: !1536, line: 208, size: 64, elements: !1554)
!1554 = !{!1555, !1558}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1553, file: !1536, line: 209, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1557, line: 8, baseType: !900)
!1557 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1553, file: !1536, line: 210, baseType: !1556, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1535, file: !1536, line: 212, baseType: !1556, size: 64, offset: 768)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1535, file: !1536, line: 213, baseType: !619, size: 32, offset: 832)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1535, file: !1536, line: 214, baseType: !628, size: 32, offset: 864)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1535, file: !1536, line: 215, baseType: !1563, size: 32, offset: 896)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1536, line: 31, baseType: !1564)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !108, line: 110, baseType: !682)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1535, file: !1536, line: 216, baseType: !45, size: 16, offset: 928)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1535, file: !1536, line: 217, baseType: !45, size: 16, offset: 944)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1535, file: !1536, line: 221, baseType: !1478, size: 16, offset: 960)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1535, file: !1536, line: 228, baseType: !20, size: 64, offset: 1024)
!1569 = !DIDerivedType(tag: DW_TAG_member, scope: !1535, file: !1536, line: 245, baseType: !1570, size: 320, offset: 1088)
!1570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1535, file: !1536, line: 245, size: 320, elements: !1571)
!1571 = !{!1572, !1599}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1570, file: !1536, line: 246, baseType: !1573, size: 320)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1536, line: 114, size: 320, elements: !1574)
!1574 = !{!1575, !1576, !1588, !1591, !1598}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1573, file: !1536, line: 116, baseType: !20, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1536, line: 117, baseType: !1577, size: 64, offset: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1573, file: !1536, line: 117, size: 64, elements: !1578)
!1578 = !{!1579, !1587}
!1579 = !DIDerivedType(tag: DW_TAG_member, scope: !1577, file: !1536, line: 118, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1577, file: !1536, line: 118, size: 64, elements: !1581)
!1581 = !{!1582, !1583}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1580, file: !1536, line: 120, baseType: !41, size: 16)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1580, file: !1536, line: 121, baseType: !1584, size: 48, offset: 16)
!1584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1585)
!1585 = !{!1586}
!1586 = !DISubrange(count: 6)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1577, file: !1536, line: 127, baseType: !20, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1573, file: !1536, line: 129, baseType: !1589, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1536, line: 102, flags: DIFlagFwdDecl)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1573, file: !1536, line: 130, baseType: !1592, size: 64, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1536, line: 108, size: 192, elements: !1594)
!1594 = !{!1595, !1596, !1597}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1593, file: !1536, line: 109, baseType: !946, size: 128, align: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1593, file: !1536, line: 110, baseType: !991, size: 32, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1593, file: !1536, line: 111, baseType: !1530, size: 8, offset: 160)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1573, file: !1536, line: 131, baseType: !102, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, scope: !1570, file: !1536, line: 247, baseType: !1600, size: 320)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1570, file: !1536, line: 247, size: 320, elements: !1601)
!1601 = !{!1602, !1603, !1604, !1605, !1606}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1600, file: !1536, line: 248, baseType: !20, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1600, file: !1536, line: 249, baseType: !20, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1600, file: !1536, line: 250, baseType: !1589, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1600, file: !1536, line: 251, baseType: !1592, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1600, file: !1536, line: 252, baseType: !540, size: 64, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_member, scope: !1535, file: !1536, line: 260, baseType: !1608, size: 256, offset: 1408)
!1608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1535, file: !1536, line: 260, size: 256, elements: !1609)
!1609 = !{!1610, !1616}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1608, file: !1536, line: 261, baseType: !1611, size: 256)
!1611 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1536, line: 134, size: 256, elements: !1612)
!1612 = !{!1613, !1614}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1611, file: !1536, line: 135, baseType: !12, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1611, file: !1536, line: 136, baseType: !1615, size: 256)
!1615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !1000)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !1536, line: 262, baseType: !1617, size: 256)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1608, file: !1536, line: 262, size: 256, elements: !1618)
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1617, file: !1536, line: 264, baseType: !174, size: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1617, file: !1536, line: 265, baseType: !1621, size: 128, offset: 128)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1622, line: 22, size: 128, elements: !1623)
!1622 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1623 = !{!1624, !1627}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1621, file: !1622, line: 23, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1622, line: 23, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1621, file: !1622, line: 24, baseType: !20, size: 64, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1535, file: !1536, line: 280, baseType: !1629, size: 64, offset: 1664)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1536, line: 176, size: 192, elements: !1631)
!1631 = !{!1632, !1641, !1642}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1630, file: !1536, line: 177, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1536, line: 171, baseType: !1634)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!13, !1534, !1637, !1639, !1534}
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1590)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1611)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1630, file: !1536, line: 178, baseType: !1534, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1630, file: !1536, line: 179, baseType: !1589, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1486, file: !1487, line: 90, baseType: !1382, size: 320, offset: 2432)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1486, file: !1487, line: 97, baseType: !1645, size: 256, offset: 2752)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1646, line: 98, size: 256, elements: !1647)
!1646 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1647 = !{!1648, !1649, !1650}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1645, file: !1646, line: 99, baseType: !893, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1645, file: !1646, line: 100, baseType: !174, size: 128, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1645, file: !1646, line: 101, baseType: !1651, size: 64, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1646, line: 21, baseType: !1652)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{null, !1655}
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1486, file: !1487, line: 99, baseType: !1657, size: 768, offset: 3008)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !98, line: 199, size: 768, elements: !1658)
!1658 = !{!1659, !1664}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1657, file: !98, line: 200, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!13, !1663}
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1657, file: !98, line: 201, baseType: !1665, size: 704, offset: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !98, line: 193, size: 704, elements: !1666)
!1666 = !{!1667, !1725}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1665, file: !98, line: 195, baseType: !1668, size: 640)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !98, line: 173, size: 640, elements: !1669)
!1669 = !{!1670, !1682, !1694, !1695, !1715, !1716, !1718, !1724}
!1670 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !98, line: 174, baseType: !1671, size: 192)
!1671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1668, file: !98, line: 174, size: 192, elements: !1672)
!1672 = !{!1673, !1681}
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !98, line: 175, baseType: !1674, size: 192)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1671, file: !98, line: 175, size: 192, elements: !1675)
!1675 = !{!1676, !1677, !1678, !1679, !1680}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1674, file: !98, line: 176, baseType: !115, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1674, file: !98, line: 177, baseType: !13, size: 32, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1674, file: !98, line: 178, baseType: !13, size: 32, offset: 96)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1674, file: !98, line: 179, baseType: !13, size: 32, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1674, file: !98, line: 180, baseType: !13, size: 32, offset: 160)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1671, file: !98, line: 182, baseType: !946, size: 128, align: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1668, file: !98, line: 184, baseType: !1683, size: 64, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1685, line: 26, size: 256, elements: !1686)
!1685 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1686 = !{!1687, !1688}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1684, file: !1685, line: 27, baseType: !81, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1684, file: !1685, line: 28, baseType: !1689, size: 192, offset: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1690, line: 43, size: 192, elements: !1691)
!1690 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1689, file: !1690, line: 44, baseType: !902, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1689, file: !1690, line: 45, baseType: !174, size: 128, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1668, file: !98, line: 185, baseType: !115, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1668, file: !98, line: 186, baseType: !1696, size: 64, offset: 320)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !98, line: 204, size: 960, elements: !1698)
!1698 = !{!1699, !1700, !1704, !1711}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1697, file: !98, line: 205, baseType: !1657, size: 768)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1697, file: !98, line: 206, baseType: !1701, size: 64, offset: 768)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!1663, !1696}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1697, file: !98, line: 207, baseType: !1705, size: 64, offset: 832)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{null, !1708, !1709, !1710}
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1697, file: !98, line: 209, baseType: !1712, size: 64, offset: 896)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!13, !1708, !115}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1668, file: !98, line: 187, baseType: !1663, size: 64, offset: 384)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1668, file: !98, line: 188, baseType: !1717, size: 64, offset: 448)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1668, file: !98, line: 189, baseType: !1719, size: 64, offset: 512)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !98, line: 157, size: 256, elements: !1721)
!1721 = !{!1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1720, file: !98, line: 158, baseType: !1081, size: 192, align: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1720, file: !98, line: 159, baseType: !1708, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1668, file: !98, line: 190, baseType: !797, size: 64, offset: 576)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1665, file: !98, line: 196, baseType: !1213, size: 64, offset: 640)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1486, file: !1487, line: 100, baseType: !1708, size: 64, offset: 3776)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1486, file: !1487, line: 102, baseType: !1728, size: 64, offset: 3840)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1487, line: 107, size: 1152, elements: !1730)
!1730 = !{!1731, !1732, !1733, !1734, !1735, !1739}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1729, file: !1487, line: 108, baseType: !801, size: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1729, file: !1487, line: 109, baseType: !1485, size: 64, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1729, file: !1487, line: 110, baseType: !619, size: 32, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1729, file: !1487, line: 111, baseType: !130, size: 32, offset: 224)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1729, file: !1487, line: 112, baseType: !1736, size: 640, offset: 256)
!1736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !893, size: 640, elements: !1737)
!1737 = !{!1738}
!1738 = !DISubrange(count: 10)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1729, file: !1487, line: 113, baseType: !1740, size: 256, offset: 896)
!1740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !893, size: 256, elements: !1000)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1486, file: !1487, line: 103, baseType: !1742, size: 640, offset: 3904)
!1742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 640, elements: !1737)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1486, file: !1487, line: 104, baseType: !1744, size: 256, offset: 4544)
!1744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 256, elements: !1000)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1331, file: !191, line: 904, baseType: !1354, size: 64, offset: 9280)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1331, file: !191, line: 906, baseType: !1747, size: 64, offset: 9344)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !191, line: 906, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1331, file: !191, line: 930, baseType: !130, size: 32, offset: 9408)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1331, file: !191, line: 933, baseType: !130, size: 32, offset: 9440)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1331, file: !191, line: 935, baseType: !1752, size: 64, offset: 9472)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !215, line: 103, size: 64, elements: !1753)
!1753 = !{!1754}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1752, file: !215, line: 104, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !215, line: 101, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1331, file: !191, line: 940, baseType: !893, size: 64, offset: 9536)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1331, file: !191, line: 942, baseType: !1645, size: 256, offset: 9600)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1328, file: !191, line: 986, baseType: !1760, offset: 10240)
!1760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, elements: !1761)
!1761 = !{!1762}
!1762 = !DISubrange(count: -1)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1033, file: !1034, line: 882, baseType: !1327, size: 64, offset: 9792)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1033, file: !1034, line: 884, baseType: !13, size: 32, offset: 9856)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1033, file: !1034, line: 885, baseType: !13, size: 32, offset: 9888)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1033, file: !1034, line: 886, baseType: !13, size: 32, offset: 9920)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1033, file: !1034, line: 888, baseType: !13, size: 32, offset: 9952)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1033, file: !1034, line: 890, baseType: !20, size: 64, offset: 9984)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1033, file: !1034, line: 893, baseType: !81, size: 32, offset: 10048)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1033, file: !1034, line: 896, baseType: !81, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1033, file: !1034, line: 897, baseType: !81, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1033, file: !1034, line: 898, baseType: !81, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1033, file: !1034, line: 899, baseType: !81, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1033, file: !1034, line: 919, baseType: !81, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1033, file: !1034, line: 922, baseType: !81, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1033, file: !1034, line: 923, baseType: !81, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1033, file: !1034, line: 925, baseType: !81, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1033, file: !1034, line: 939, baseType: !81, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1033, file: !1034, line: 941, baseType: !81, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1033, file: !1034, line: 944, baseType: !81, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1033, file: !1034, line: 956, baseType: !81, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1033, file: !1034, line: 962, baseType: !81, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1033, file: !1034, line: 966, baseType: !81, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1033, file: !1034, line: 969, baseType: !20, size: 64, offset: 10176)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1033, file: !1034, line: 971, baseType: !1786, size: 448, offset: 10240)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !185, line: 25, size: 448, elements: !1787)
!1787 = !{!1788, !1789, !1794}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1786, file: !185, line: 26, baseType: !20, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1786, file: !185, line: 27, baseType: !1790, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!465, !1793}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !185, line: 28, baseType: !1795, size: 320, offset: 128)
!1795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1786, file: !185, line: 28, size: 320, elements: !1796)
!1796 = !{!1797, !1807, !1832}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1795, file: !185, line: 37, baseType: !1798, size: 320)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1795, file: !185, line: 30, size: 320, elements: !1799)
!1799 = !{!1800, !1802, !1803, !1804, !1805, !1806}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1798, file: !185, line: 31, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1798, file: !185, line: 32, baseType: !682, size: 32, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1798, file: !185, line: 33, baseType: !682, size: 32, offset: 96)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1798, file: !185, line: 34, baseType: !682, size: 32, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1798, file: !185, line: 35, baseType: !47, size: 64, offset: 192)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1798, file: !185, line: 36, baseType: !1801, size: 64, offset: 256)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1795, file: !185, line: 47, baseType: !1808, size: 192)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1795, file: !185, line: 39, size: 192, elements: !1809)
!1809 = !{!1810, !1811, !1812, !1831}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1808, file: !185, line: 40, baseType: !1198, size: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1808, file: !185, line: 41, baseType: !184, size: 32, offset: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !185, line: 42, baseType: !1813, size: 64, offset: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !185, line: 42, size: 64, elements: !1814)
!1814 = !{!1815, !1823}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1813, file: !185, line: 43, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1818, line: 7, size: 128, elements: !1819)
!1818 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1819 = !{!1820, !1822}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1817, file: !1818, line: 8, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !119, line: 93, baseType: !124)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1817, file: !1818, line: 9, baseType: !124, size: 64, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1813, file: !185, line: 44, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1826, line: 7, size: 64, elements: !1827)
!1826 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1827 = !{!1828, !1830}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1825, file: !1826, line: 8, baseType: !1829, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1826, line: 5, baseType: !461)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1825, file: !1826, line: 9, baseType: !461, size: 32, offset: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1808, file: !185, line: 46, baseType: !47, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1795, file: !185, line: 55, baseType: !1833, size: 256)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1795, file: !185, line: 49, size: 256, elements: !1834)
!1834 = !{!1835, !1843, !1844, !1845, !1846}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1833, file: !185, line: 50, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1838, line: 36, size: 64, elements: !1839)
!1838 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1839 = !{!1840, !1841, !1842}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1837, file: !1838, line: 37, baseType: !13, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1837, file: !1838, line: 38, baseType: !1478, size: 16, offset: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1837, file: !1838, line: 39, baseType: !1478, size: 16, offset: 48)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1833, file: !185, line: 51, baseType: !13, size: 32, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1833, file: !185, line: 52, baseType: !13, size: 32, offset: 96)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1833, file: !185, line: 53, baseType: !20, size: 64, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1833, file: !185, line: 54, baseType: !20, size: 64, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1033, file: !1034, line: 973, baseType: !1848, size: 32, offset: 10688)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !108, line: 27, baseType: !1849)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !119, line: 28, baseType: !13)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1033, file: !1034, line: 974, baseType: !1848, size: 32, offset: 10720)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1033, file: !1034, line: 978, baseType: !20, size: 64, offset: 10752)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1033, file: !1034, line: 987, baseType: !1032, size: 64, offset: 10816)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1033, file: !1034, line: 990, baseType: !1032, size: 64, offset: 10880)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1033, file: !1034, line: 995, baseType: !174, size: 128, offset: 10944)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1033, file: !1034, line: 996, baseType: !174, size: 128, offset: 11072)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1033, file: !1034, line: 997, baseType: !1032, size: 64, offset: 11200)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1033, file: !1034, line: 1005, baseType: !174, size: 128, offset: 11264)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1033, file: !1034, line: 1006, baseType: !174, size: 128, offset: 11392)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1033, file: !1034, line: 1009, baseType: !987, size: 64, offset: 11520)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1033, file: !1034, line: 1010, baseType: !1861, size: 512, offset: 11584)
!1861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !801, size: 512, elements: !1000)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1033, file: !1034, line: 1011, baseType: !174, size: 128, offset: 12096)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1033, file: !1034, line: 1012, baseType: !174, size: 128, offset: 12224)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1033, file: !1034, line: 1014, baseType: !1683, size: 64, offset: 12352)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1033, file: !1034, line: 1017, baseType: !76, size: 64, offset: 12416)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1033, file: !1034, line: 1020, baseType: !76, size: 64, offset: 12480)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1033, file: !1034, line: 1023, baseType: !12, size: 64, offset: 12544)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1033, file: !1034, line: 1025, baseType: !47, size: 64, offset: 12608)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1033, file: !1034, line: 1026, baseType: !47, size: 64, offset: 12672)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1033, file: !1034, line: 1031, baseType: !47, size: 64, offset: 12736)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1033, file: !1034, line: 1032, baseType: !1872, size: 192, offset: 12800)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1034, line: 324, size: 192, elements: !1873)
!1873 = !{!1874, !1875, !1876}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1872, file: !1034, line: 326, baseType: !47, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1872, file: !1034, line: 327, baseType: !47, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1872, file: !1034, line: 328, baseType: !902, size: 32, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1033, file: !1034, line: 1041, baseType: !20, size: 64, offset: 12992)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1033, file: !1034, line: 1042, baseType: !20, size: 64, offset: 13056)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1033, file: !1034, line: 1045, baseType: !47, size: 64, offset: 13120)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1033, file: !1034, line: 1048, baseType: !47, size: 64, offset: 13184)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1033, file: !1034, line: 1051, baseType: !20, size: 64, offset: 13248)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1033, file: !1034, line: 1052, baseType: !20, size: 64, offset: 13312)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1033, file: !1034, line: 1055, baseType: !1884, size: 640, offset: 13376)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1885, line: 132, size: 640, elements: !1886)
!1885 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1886 = !{!1887, !1893, !1894}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1884, file: !1885, line: 133, baseType: !1888, size: 576)
!1888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1889, size: 576, elements: !541)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1885, line: 117, size: 192, elements: !1890)
!1890 = !{!1891, !1892}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1889, file: !1885, line: 118, baseType: !47, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1889, file: !1885, line: 119, baseType: !1207, size: 128, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1884, file: !1885, line: 134, baseType: !81, size: 32, offset: 576)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1884, file: !1885, line: 135, baseType: !81, size: 32, offset: 608)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1033, file: !1034, line: 1058, baseType: !1896, size: 448, offset: 14016)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1885, line: 144, size: 448, elements: !1897)
!1897 = !{!1898, !1899, !1900}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1896, file: !1885, line: 145, baseType: !946, size: 128, align: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1896, file: !1885, line: 146, baseType: !889, size: 256, offset: 128)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1896, file: !1885, line: 147, baseType: !81, size: 32, offset: 384)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1033, file: !1034, line: 1064, baseType: !1902, size: 64, offset: 14464)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1904)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1905, line: 110, size: 1472, elements: !1906)
!1905 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1906 = !{!1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1956, !1957, !1958, !1966}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1904, file: !1905, line: 111, baseType: !893, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1904, file: !1905, line: 112, baseType: !619, size: 32, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1904, file: !1905, line: 113, baseType: !628, size: 32, offset: 96)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1904, file: !1905, line: 114, baseType: !619, size: 32, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1904, file: !1905, line: 115, baseType: !628, size: 32, offset: 160)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1904, file: !1905, line: 116, baseType: !619, size: 32, offset: 192)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1904, file: !1905, line: 117, baseType: !628, size: 32, offset: 224)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1904, file: !1905, line: 118, baseType: !619, size: 32, offset: 256)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1904, file: !1905, line: 119, baseType: !628, size: 32, offset: 288)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1904, file: !1905, line: 120, baseType: !81, size: 32, offset: 320)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1904, file: !1905, line: 121, baseType: !1918, size: 64, offset: 384)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1919, line: 24, baseType: !1920)
!1919 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1919, line: 24, size: 64, elements: !1921)
!1921 = !{!1922}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1920, file: !1919, line: 24, baseType: !47, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1904, file: !1905, line: 122, baseType: !1918, size: 64, offset: 448)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1904, file: !1905, line: 123, baseType: !1918, size: 64, offset: 512)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1904, file: !1905, line: 124, baseType: !1918, size: 64, offset: 576)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1904, file: !1905, line: 125, baseType: !1918, size: 64, offset: 640)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1904, file: !1905, line: 127, baseType: !166, size: 8, offset: 704)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1904, file: !1905, line: 129, baseType: !1534, size: 64, offset: 768)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1904, file: !1905, line: 130, baseType: !1534, size: 64, offset: 832)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1904, file: !1905, line: 131, baseType: !1534, size: 64, offset: 896)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1904, file: !1905, line: 132, baseType: !1534, size: 64, offset: 960)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1904, file: !1905, line: 135, baseType: !12, size: 64, offset: 1024)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1904, file: !1905, line: 137, baseType: !1934, size: 64, offset: 1088)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1936, line: 14, size: 1088, elements: !1937)
!1936 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1937 = !{!1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1935, file: !1936, line: 15, baseType: !991, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1935, file: !1936, line: 17, baseType: !1420, size: 320, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1935, file: !1936, line: 19, baseType: !20, size: 64, offset: 384)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1935, file: !1936, line: 20, baseType: !893, size: 64, offset: 448)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1935, file: !1936, line: 23, baseType: !801, size: 128, offset: 512)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1935, file: !1936, line: 24, baseType: !619, size: 32, offset: 640)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1935, file: !1936, line: 29, baseType: !893, size: 64, offset: 704)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1935, file: !1936, line: 36, baseType: !1946, size: 320, offset: 768)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1947, line: 15, size: 320, elements: !1948)
!1947 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1948 = !{!1949, !1950, !1951, !1952, !1953, !1954, !1955}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1946, file: !1947, line: 16, baseType: !902, size: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1946, file: !1947, line: 18, baseType: !13, size: 32, offset: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1946, file: !1947, line: 19, baseType: !13, size: 32, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1946, file: !1947, line: 20, baseType: !13, size: 32, offset: 96)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1946, file: !1947, line: 21, baseType: !13, size: 32, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1946, file: !1947, line: 22, baseType: !20, size: 64, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1946, file: !1947, line: 23, baseType: !20, size: 64, offset: 256)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1904, file: !1905, line: 138, baseType: !1485, size: 64, offset: 1152)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1904, file: !1905, line: 139, baseType: !1728, size: 64, offset: 1216)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1904, file: !1905, line: 140, baseType: !1959, size: 64, offset: 1280)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1905, line: 25, size: 64, elements: !1961)
!1961 = !{!1962, !1963, !1964}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1960, file: !1905, line: 26, baseType: !130, size: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1960, file: !1905, line: 27, baseType: !13, size: 32, offset: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1960, file: !1905, line: 28, baseType: !1965, offset: 64)
!1965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, elements: !1761)
!1966 = !DIDerivedType(tag: DW_TAG_member, scope: !1904, file: !1905, line: 142, baseType: !1967, size: 128, offset: 1344)
!1967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1904, file: !1905, line: 142, size: 128, elements: !1968)
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1967, file: !1905, line: 143, baseType: !13, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1967, file: !1905, line: 144, baseType: !946, size: 128, align: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1033, file: !1034, line: 1067, baseType: !1902, size: 64, offset: 14528)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1033, file: !1034, line: 1070, baseType: !1902, size: 64, offset: 14592)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1033, file: !1034, line: 1074, baseType: !1534, size: 64, offset: 14656)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1033, file: !1034, line: 1084, baseType: !1975, size: 128, offset: 14720)
!1975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1976)
!1976 = !{!1977}
!1977 = !DISubrange(count: 16)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1033, file: !1034, line: 1086, baseType: !1979, size: 64, offset: 14848)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1034, line: 55, flags: DIFlagFwdDecl)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1033, file: !1034, line: 1089, baseType: !1982, size: 64, offset: 14912)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1983, line: 12, size: 64, elements: !1984)
!1983 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1984 = !{!1985}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1982, file: !1983, line: 13, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1983, line: 8, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1033, file: !1034, line: 1090, baseType: !1989, size: 128, offset: 14976)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1990, line: 13, size: 128, elements: !1991)
!1990 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1991 = !{!1992}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1989, file: !1990, line: 14, baseType: !174, size: 128)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1033, file: !1034, line: 1097, baseType: !1994, size: 64, offset: 15104)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1034, line: 50, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1033, file: !1034, line: 1100, baseType: !1997, size: 64, offset: 15168)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1034, line: 1100, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1033, file: !1034, line: 1103, baseType: !2000, size: 64, offset: 15232)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1034, line: 53, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1033, file: !1034, line: 1107, baseType: !2003, size: 64, offset: 15296)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2005, line: 31, size: 576, elements: !2006)
!2005 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2006 = !{!2007, !2008, !2011, !2014, !2017, !2018, !2021, !2024, !2025}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2004, file: !2005, line: 32, baseType: !991, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2004, file: !2005, line: 33, baseType: !2009, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2005, line: 9, flags: DIFlagFwdDecl)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2004, file: !2005, line: 34, baseType: !2012, size: 64, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2005, line: 10, flags: DIFlagFwdDecl)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2004, file: !2005, line: 35, baseType: !2015, size: 64, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2005, line: 8, flags: DIFlagFwdDecl)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2004, file: !2005, line: 36, baseType: !1011, size: 64, offset: 256)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2004, file: !2005, line: 37, baseType: !2019, size: 64, offset: 320)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1536, line: 34, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2004, file: !2005, line: 38, baseType: !2022, size: 64, offset: 384)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2005, line: 38, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2004, file: !2005, line: 39, baseType: !2022, size: 64, offset: 448)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2004, file: !2005, line: 40, baseType: !2026, size: 64, offset: 512)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2028, line: 771, size: 384, elements: !2029)
!2028 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!2029 = !{!2030, !2031, !2032, !2033}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2027, file: !2028, line: 772, baseType: !1518, size: 192)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2027, file: !2028, line: 773, baseType: !1485, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2027, file: !2028, line: 774, baseType: !1728, size: 64, offset: 256)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !2027, file: !2028, line: 775, baseType: !2034, size: 64, offset: 320)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2036, line: 209, size: 4736, elements: !2037)
!2036 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!2037 = !{!2038, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !2035, file: !2036, line: 215, baseType: !2039, size: 896)
!2039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2040, size: 896, elements: !2497)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !2036, line: 152, size: 1600, elements: !2042)
!2042 = !{!2043, !2548, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2671}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !2041, file: !2036, line: 154, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !2036, line: 389, size: 7872, elements: !2046)
!2046 = !{!2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2448, !2465, !2466, !2470, !2471, !2472, !2473, !2474, !2475, !2494, !2495, !2499, !2500, !2501, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2535, !2538, !2539, !2546}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2045, file: !2036, line: 391, baseType: !2041, size: 1600)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2045, file: !2036, line: 393, baseType: !20, size: 64, offset: 1600)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2045, file: !2036, line: 401, baseType: !13, size: 32, offset: 1664)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !2045, file: !2036, line: 404, baseType: !13, size: 32, offset: 1696)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !2045, file: !2036, line: 417, baseType: !13, size: 32, offset: 1728)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !2045, file: !2036, line: 418, baseType: !13, size: 32, offset: 1760)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !2045, file: !2036, line: 419, baseType: !13, size: 32, offset: 1792)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !2045, file: !2036, line: 432, baseType: !13, size: 32, offset: 1824)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !2045, file: !2036, line: 433, baseType: !13, size: 32, offset: 1856)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !2045, file: !2036, line: 434, baseType: !13, size: 32, offset: 1888)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !2045, file: !2036, line: 436, baseType: !13, size: 32, offset: 1920)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !2045, file: !2036, line: 439, baseType: !81, size: 32, offset: 1952)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2045, file: !2036, line: 441, baseType: !2060, size: 64, offset: 1984)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !781, line: 190, size: 1152, elements: !2062)
!2062 = !{!2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2440, !2441, !2442, !2443, !2444, !2447}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2061, file: !781, line: 191, baseType: !130, size: 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2061, file: !781, line: 192, baseType: !130, size: 32, offset: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2061, file: !781, line: 202, baseType: !2060, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2061, file: !781, line: 203, baseType: !102, size: 64, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2061, file: !781, line: 205, baseType: !1081, size: 192, align: 64, offset: 192)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2061, file: !781, line: 207, baseType: !1459, size: 64, offset: 384)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2061, file: !781, line: 208, baseType: !81, size: 32, offset: 448)
!2070 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !781, line: 209, baseType: !2071, size: 256, offset: 512)
!2071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2061, file: !781, line: 209, size: 256, elements: !2072)
!2072 = !{!2073, !2082, !2086}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2071, file: !781, line: 210, baseType: !2074, size: 256)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !781, line: 153, size: 256, elements: !2075)
!2075 = !{!2076, !2077, !2078, !2081}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2074, file: !781, line: 154, baseType: !20, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2074, file: !781, line: 156, baseType: !1213, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2074, file: !781, line: 162, baseType: !2079, size: 64, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !781, line: 162, flags: DIFlagFwdDecl)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2074, file: !781, line: 167, baseType: !20, size: 64, offset: 192)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2071, file: !781, line: 211, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !781, line: 170, size: 64, elements: !2084)
!2084 = !{!2085}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2083, file: !781, line: 171, baseType: !2060, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2071, file: !781, line: 212, baseType: !2087, size: 256)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !781, line: 174, size: 256, elements: !2088)
!2088 = !{!2089, !2435, !2438, !2439}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2087, file: !781, line: 175, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2092)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !781, line: 271, size: 768, elements: !2093)
!2093 = !{!2094, !2399, !2403, !2404, !2405, !2406, !2407, !2411, !2412, !2413, !2414, !2431}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2092, file: !781, line: 276, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!13, !2098}
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !781, line: 251, size: 1216, elements: !2100)
!2100 = !{!2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2099, file: !781, line: 253, baseType: !2060, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2099, file: !781, line: 254, baseType: !1354, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2099, file: !781, line: 255, baseType: !877, size: 64, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2099, file: !781, line: 256, baseType: !12, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2099, file: !781, line: 259, baseType: !889, size: 256, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2099, file: !781, line: 260, baseType: !889, size: 256, offset: 512)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2099, file: !781, line: 261, baseType: !13, size: 32, offset: 768)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2099, file: !781, line: 262, baseType: !174, size: 128, offset: 832)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2099, file: !781, line: 263, baseType: !540, size: 64, offset: 960)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2099, file: !781, line: 265, baseType: !117, size: 64, offset: 1024)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2099, file: !781, line: 266, baseType: !1530, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2099, file: !781, line: 267, baseType: !1530, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2099, file: !781, line: 268, baseType: !2114, size: 64, offset: 1152)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2116)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2117, line: 563, size: 1024, elements: !2118)
!2117 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2118 = !{!2119, !2175, !2176, !2180, !2184, !2188, !2365, !2369, !2373, !2377, !2378, !2379, !2383, !2387, !2391, !2395}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2116, file: !2117, line: 564, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{null, !2123}
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !191, line: 625, size: 1344, elements: !2125)
!2125 = !{!2126, !2135, !2136, !2142, !2149, !2150, !2155, !2156, !2161, !2162, !2165, !2166, !2167, !2168, !2169, !2170, !2173}
!2126 = !DIDerivedType(tag: DW_TAG_member, scope: !2124, file: !191, line: 628, baseType: !2127, size: 128)
!2127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2124, file: !191, line: 628, size: 128, elements: !2128)
!2128 = !{!2129, !2134}
!2129 = !DIDerivedType(tag: DW_TAG_member, scope: !2127, file: !191, line: 629, baseType: !2130, size: 128)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2127, file: !191, line: 629, size: 128, elements: !2131)
!2131 = !{!2132, !2133}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2130, file: !191, line: 631, baseType: !20, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2130, file: !191, line: 632, baseType: !20, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2127, file: !191, line: 635, baseType: !946, size: 128, align: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2124, file: !191, line: 639, baseType: !1327, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2124, file: !191, line: 640, baseType: !2137, size: 64, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1363, line: 297, baseType: !2138)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1363, line: 297, size: 64, elements: !2139)
!2139 = !{!2140}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2138, file: !1363, line: 297, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1368, line: 19, baseType: !20)
!2142 = !DIDerivedType(tag: DW_TAG_member, scope: !2124, file: !191, line: 646, baseType: !2143, size: 64, offset: 256)
!2143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2124, file: !191, line: 646, size: 64, elements: !2144)
!2144 = !{!2145, !2148}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2143, file: !191, line: 647, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2147)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !191, line: 542, baseType: !20)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2143, file: !191, line: 648, baseType: !2147, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2124, file: !191, line: 666, baseType: !13, size: 32, offset: 320)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2124, file: !191, line: 667, baseType: !2151, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !191, line: 579, size: 320, elements: !2153)
!2153 = !{!2154}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2152, file: !191, line: 580, baseType: !1382, size: 320)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2124, file: !191, line: 670, baseType: !1530, size: 8, offset: 448)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2124, file: !191, line: 681, baseType: !2157, size: 256, offset: 512)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2124, file: !191, line: 678, size: 256, elements: !2158)
!2158 = !{!2159, !2160}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2157, file: !191, line: 679, baseType: !1081, size: 192, align: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2157, file: !191, line: 680, baseType: !20, size: 64, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2124, file: !191, line: 689, baseType: !174, size: 128, offset: 768)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2124, file: !191, line: 691, baseType: !2163, size: 64, offset: 896)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !191, line: 691, flags: DIFlagFwdDecl)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2124, file: !191, line: 694, baseType: !2114, size: 64, offset: 960)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2124, file: !191, line: 697, baseType: !20, size: 64, offset: 1024)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2124, file: !191, line: 699, baseType: !1354, size: 64, offset: 1088)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2124, file: !191, line: 700, baseType: !12, size: 64, offset: 1152)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2124, file: !191, line: 711, baseType: !893, size: 64, offset: 1216)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2124, file: !191, line: 717, baseType: !2171, size: 64, offset: 1280)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !191, line: 717, flags: DIFlagFwdDecl)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2124, file: !191, line: 722, baseType: !2174, offset: 1344)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !191, line: 570, elements: !809)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2116, file: !2117, line: 569, baseType: !2120, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2116, file: !2117, line: 571, baseType: !2177, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!13, !2123, !20}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2116, file: !2117, line: 572, baseType: !2181, size: 64, offset: 192)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!13, !2123}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2116, file: !2117, line: 578, baseType: !2185, size: 64, offset: 256)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!13, !2123, !20, !20, !20}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2116, file: !2117, line: 580, baseType: !2189, size: 64, offset: 320)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!2192, !2193}
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !191, line: 1184, baseType: !81)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2117, line: 512, size: 896, elements: !2195)
!2195 = !{!2196, !2204, !2205, !2212, !2219, !2229, !2358, !2359, !2361, !2363}
!2196 = !DIDerivedType(tag: DW_TAG_member, scope: !2194, file: !2117, line: 513, baseType: !2197, size: 320)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2194, file: !2117, line: 513, size: 320, elements: !2198)
!2198 = !{!2199, !2200, !2201, !2202, !2203}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2197, file: !2117, line: 514, baseType: !2123, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2197, file: !2117, line: 515, baseType: !1025, size: 32, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2197, file: !2117, line: 516, baseType: !20, size: 64, offset: 128)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2197, file: !2117, line: 517, baseType: !20, size: 64, offset: 192)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2197, file: !2117, line: 518, baseType: !20, size: 64, offset: 256)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2194, file: !2117, line: 520, baseType: !190, size: 32, offset: 320)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2194, file: !2117, line: 522, baseType: !2206, size: 64, offset: 384)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1368, line: 22, baseType: !2208)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1368, line: 22, size: 64, elements: !2209)
!2209 = !{!2210}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2208, file: !1368, line: 22, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1368, line: 15, baseType: !20)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2194, file: !2117, line: 524, baseType: !2213, size: 64, offset: 448)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1363, line: 372, baseType: !2215)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1363, line: 372, size: 64, elements: !2216)
!2216 = !{!2217}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2215, file: !1363, line: 372, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1368, line: 16, baseType: !20)
!2219 = !DIDerivedType(tag: DW_TAG_member, scope: !2194, file: !2117, line: 527, baseType: !2220, size: 64, offset: 512)
!2220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2194, file: !2117, line: 527, size: 64, elements: !2221)
!2221 = !{!2222, !2228}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2220, file: !2117, line: 528, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1368, line: 21, baseType: !2224)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1368, line: 21, size: 64, elements: !2225)
!2225 = !{!2226}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2224, file: !1368, line: 21, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1368, line: 14, baseType: !20)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2220, file: !2117, line: 529, baseType: !2207, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2194, file: !2117, line: 534, baseType: !2230, size: 64, offset: 576)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !191, line: 74, size: 512, align: 128, elements: !2232)
!2232 = !{!2233, !2234, !2352, !2357}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2231, file: !191, line: 75, baseType: !20, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !2231, file: !191, line: 83, baseType: !2235, size: 320, offset: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2231, file: !191, line: 83, size: 320, elements: !2236)
!2236 = !{!2237, !2258, !2272, !2276, !2351}
!2237 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !191, line: 84, baseType: !2238, size: 320)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !191, line: 84, size: 320, elements: !2239)
!2239 = !{!2240, !2251, !2252, !2257}
!2240 = !DIDerivedType(tag: DW_TAG_member, scope: !2238, file: !191, line: 90, baseType: !2241, size: 128)
!2241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2238, file: !191, line: 90, size: 128, elements: !2242)
!2242 = !{!2243, !2244, !2249, !2250}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2241, file: !191, line: 91, baseType: !174, size: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, scope: !2241, file: !191, line: 94, baseType: !2245, size: 128)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2241, file: !191, line: 94, size: 128, elements: !2246)
!2246 = !{!2247, !2248}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2245, file: !191, line: 96, baseType: !12, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2245, file: !191, line: 98, baseType: !81, size: 32, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2241, file: !191, line: 102, baseType: !174, size: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2241, file: !191, line: 103, baseType: !174, size: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2238, file: !191, line: 106, baseType: !609, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, scope: !2238, file: !191, line: 107, baseType: !2253, size: 64, offset: 192)
!2253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2238, file: !191, line: 107, size: 64, elements: !2254)
!2254 = !{!2255, !2256}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2253, file: !191, line: 108, baseType: !20, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2253, file: !191, line: 109, baseType: !20, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2238, file: !191, line: 117, baseType: !20, size: 64, offset: 256)
!2258 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !191, line: 119, baseType: !2259, size: 320)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !191, line: 119, size: 320, elements: !2260)
!2260 = !{!2261, !2262, !2265, !2266, !2267}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2259, file: !191, line: 124, baseType: !20, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2259, file: !191, line: 125, baseType: !2263, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !191, line: 125, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2259, file: !191, line: 126, baseType: !20, size: 64, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2259, file: !191, line: 127, baseType: !20, size: 64, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_member, scope: !2259, file: !191, line: 128, baseType: !2268, size: 64, offset: 256)
!2268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2259, file: !191, line: 128, size: 64, elements: !2269)
!2269 = !{!2270, !2271}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2268, file: !191, line: 133, baseType: !20, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2268, file: !191, line: 138, baseType: !893, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !191, line: 141, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !191, line: 141, size: 64, elements: !2274)
!2274 = !{!2275}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2273, file: !191, line: 142, baseType: !20, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !191, line: 144, baseType: !2277, size: 128)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !191, line: 144, size: 128, elements: !2278)
!2278 = !{!2279, !2350}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2277, file: !191, line: 146, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !207, line: 126, size: 1216, elements: !2282)
!2282 = !{!2283, !2293, !2314, !2315, !2316, !2317, !2318, !2332, !2333, !2334}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2281, file: !207, line: 127, baseType: !2284, size: 384)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !207, line: 21, size: 384, elements: !2285)
!2285 = !{!2286, !2287, !2289, !2290, !2291, !2292}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2284, file: !207, line: 22, baseType: !20, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2284, file: !207, line: 23, baseType: !2288, size: 64, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2284, file: !207, line: 24, baseType: !2288, size: 64, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2284, file: !207, line: 25, baseType: !20, size: 64, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2284, file: !207, line: 26, baseType: !20, size: 64, offset: 256)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2284, file: !207, line: 27, baseType: !20, size: 64, offset: 320)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2281, file: !207, line: 128, baseType: !2294, size: 128, offset: 384)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2295, line: 105, size: 128, elements: !2296)
!2295 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2296 = !{!2297, !2298}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2294, file: !2295, line: 110, baseType: !20, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2294, file: !2295, line: 118, baseType: !2299, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2295, line: 95, size: 448, elements: !2301)
!2301 = !{!2302, !2303, !2309, !2310, !2311, !2312, !2313}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2300, file: !2295, line: 96, baseType: !893, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2300, file: !2295, line: 97, baseType: !2304, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2295, line: 60, baseType: !2306)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2300, file: !2295, line: 98, baseType: !2304, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2300, file: !2295, line: 99, baseType: !1530, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2300, file: !2295, line: 100, baseType: !1530, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2300, file: !2295, line: 101, baseType: !946, size: 128, align: 64, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2300, file: !2295, line: 102, baseType: !2308, size: 64, offset: 384)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2281, file: !207, line: 129, baseType: !1684, size: 256, offset: 512)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2281, file: !207, line: 130, baseType: !206, size: 32, offset: 768)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2281, file: !207, line: 131, baseType: !81, size: 32, offset: 800)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2281, file: !207, line: 132, baseType: !20, size: 64, offset: 832)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2281, file: !207, line: 133, baseType: !2319, size: 64, offset: 896)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2321)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !207, line: 77, size: 192, elements: !2322)
!2322 = !{!2323, !2327, !2328}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2321, file: !207, line: 83, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{null, !2230}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2321, file: !207, line: 89, baseType: !2189, size: 64, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2321, file: !207, line: 100, baseType: !2329, size: 64, offset: 128)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!13, !2280, !20, !20, !13}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2281, file: !207, line: 134, baseType: !12, size: 64, offset: 960)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2281, file: !207, line: 135, baseType: !13, size: 32, offset: 1024)
!2334 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !207, line: 136, baseType: !2335, size: 128, offset: 1088)
!2335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2281, file: !207, line: 136, size: 128, elements: !2336)
!2336 = !{!2337, !2343}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2335, file: !207, line: 137, baseType: !2338, size: 128)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2339, line: 6, size: 128, elements: !2340)
!2339 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2340 = !{!2341, !2342}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2338, file: !2339, line: 7, baseType: !47, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2338, file: !2339, line: 8, baseType: !47, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, scope: !2335, file: !207, line: 138, baseType: !2344)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2335, file: !207, line: 138, elements: !2345)
!2345 = !{!2346, !2348}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2344, file: !207, line: 138, baseType: !2347)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2344, file: !207, line: 138, elements: !809)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2344, file: !207, line: 138, baseType: !2349)
!2349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2338, elements: !1761)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2277, file: !191, line: 147, baseType: !12, size: 64, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2235, file: !191, line: 161, baseType: !946, size: 128, align: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, scope: !2231, file: !191, line: 164, baseType: !2353, size: 32, offset: 384)
!2353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2231, file: !191, line: 164, size: 32, elements: !2354)
!2354 = !{!2355, !2356}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2353, file: !191, line: 169, baseType: !130, size: 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2353, file: !191, line: 177, baseType: !81, size: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2231, file: !191, line: 181, baseType: !130, size: 32, offset: 416)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2194, file: !2117, line: 535, baseType: !2230, size: 64, offset: 640)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2194, file: !2117, line: 541, baseType: !2360, size: 64, offset: 704)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2194, file: !2117, line: 545, baseType: !2362, size: 64, offset: 768)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2194, file: !2117, line: 549, baseType: !2364, size: 64, offset: 832)
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1363, line: 520, baseType: !2230)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2116, file: !2117, line: 581, baseType: !2366, size: 64, offset: 384)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!2192, !2193, !81}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2116, file: !2117, line: 582, baseType: !2370, size: 64, offset: 448)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!2192, !2193, !20, !20}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2116, file: !2117, line: 584, baseType: !2374, size: 64, offset: 512)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!20, !2123}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2116, file: !2117, line: 588, baseType: !2189, size: 64, offset: 576)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2116, file: !2117, line: 591, baseType: !2189, size: 64, offset: 640)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2116, file: !2117, line: 597, baseType: !2380, size: 64, offset: 704)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!13, !2123, !20, !12, !13, !13}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2116, file: !2117, line: 603, baseType: !2384, size: 64, offset: 768)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!102, !2123}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2116, file: !2117, line: 613, baseType: !2388, size: 64, offset: 832)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!13, !2123, !2171}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2116, file: !2117, line: 625, baseType: !2392, size: 64, offset: 896)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!2171, !2123, !20}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2116, file: !2117, line: 633, baseType: !2396, size: 64, offset: 960)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!2230, !2123, !20}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2092, file: !781, line: 277, baseType: !2400, size: 64, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{null, !2098}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2092, file: !781, line: 290, baseType: !927, size: 64, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2092, file: !781, line: 292, baseType: !915, size: 64, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2092, file: !781, line: 293, baseType: !923, size: 64, offset: 256)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2092, file: !781, line: 294, baseType: !919, size: 64, offset: 320)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2092, file: !781, line: 296, baseType: !2408, size: 64, offset: 384)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!572, !2098, !540, !117, !122}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2092, file: !781, line: 306, baseType: !117, size: 64, offset: 448)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2092, file: !781, line: 313, baseType: !1530, size: 8, offset: 512)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2092, file: !781, line: 314, baseType: !2408, size: 64, offset: 576)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2092, file: !781, line: 317, baseType: !2415, size: 64, offset: 640)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!2418, !2098, !2420}
!2418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2419, line: 59, baseType: !81)
!2419 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2422, line: 37, size: 128, elements: !2423)
!2422 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2423 = !{!2424, !2430}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2421, file: !2422, line: 38, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2422, line: 31, baseType: !2426)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{null, !1354, !2429, !2420}
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2421, file: !2422, line: 39, baseType: !2418, size: 32, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2092, file: !781, line: 320, baseType: !2432, size: 64, offset: 704)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!13, !2098, !2123}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2087, file: !781, line: 176, baseType: !2436, size: 64, offset: 64)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !781, line: 35, flags: DIFlagFwdDecl)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2087, file: !781, line: 177, baseType: !122, size: 64, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2087, file: !781, line: 178, baseType: !2060, size: 64, offset: 192)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2061, file: !781, line: 215, baseType: !12, size: 64, offset: 768)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2061, file: !781, line: 221, baseType: !47, size: 64, offset: 832)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2061, file: !781, line: 223, baseType: !45, size: 16, offset: 896)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2061, file: !781, line: 224, baseType: !107, size: 16, offset: 912)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2061, file: !781, line: 225, baseType: !2445, size: 64, offset: 960)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !781, line: 36, flags: DIFlagFwdDecl)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2061, file: !781, line: 227, baseType: !946, size: 128, align: 64, offset: 1024)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !2045, file: !2036, line: 442, baseType: !2449, size: 448, offset: 2048)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !2036, line: 138, size: 448, elements: !2450)
!2450 = !{!2451, !2452, !2453}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2449, file: !2036, line: 140, baseType: !2060, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !2449, file: !2036, line: 141, baseType: !20, size: 64, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !2449, file: !2036, line: 142, baseType: !2454, size: 320, offset: 128)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2455, line: 11, size: 320, elements: !2456)
!2455 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2456 = !{!2457, !2458, !2459, !2464}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2454, file: !2455, line: 16, baseType: !801, size: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2454, file: !2455, line: 17, baseType: !20, size: 64, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2454, file: !2455, line: 18, baseType: !2460, size: 64, offset: 192)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{null, !2463}
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2454, file: !2455, line: 19, baseType: !682, size: 32, offset: 256)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !2045, file: !2036, line: 443, baseType: !2449, size: 448, offset: 2496)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !2045, file: !2036, line: 446, baseType: !2467, offset: 2944)
!2467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2449, elements: !2468)
!2468 = !{!2469}
!2469 = !DISubrange(count: 0)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !2045, file: !2036, line: 455, baseType: !41, size: 16, offset: 2944)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !2045, file: !2036, line: 456, baseType: !41, size: 16, offset: 2960)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !2045, file: !2036, line: 457, baseType: !41, size: 16, offset: 2976)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !2045, file: !2036, line: 458, baseType: !41, size: 16, offset: 2992)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !2045, file: !2036, line: 461, baseType: !2039, size: 896, offset: 3008)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2045, file: !2036, line: 463, baseType: !2476, size: 64, offset: 3904)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !2036, line: 537, size: 41664, elements: !2478)
!2478 = !{!2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2492}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !2477, file: !2036, line: 538, baseType: !2079, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !2477, file: !2036, line: 541, baseType: !81, size: 32, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !2477, file: !2036, line: 544, baseType: !13, size: 32, offset: 96)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !2477, file: !2036, line: 547, baseType: !174, size: 128, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2477, file: !2036, line: 548, baseType: !946, size: 128, align: 64, offset: 256)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2477, file: !2036, line: 555, baseType: !2045, size: 7872, offset: 384)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !2477, file: !2036, line: 558, baseType: !2044, size: 64, offset: 8256)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !2477, file: !2036, line: 561, baseType: !130, size: 32, offset: 8320)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2477, file: !2036, line: 564, baseType: !81, size: 32, offset: 8352)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !2477, file: !2036, line: 567, baseType: !2489, size: 32768, offset: 8384)
!2489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !2490)
!2490 = !{!2491}
!2491 = !DISubrange(count: 4096)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2477, file: !2036, line: 570, baseType: !2493, size: 512, offset: 41152)
!2493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !545)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !2045, file: !2036, line: 469, baseType: !174, size: 128, offset: 3968)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !2045, file: !2036, line: 478, baseType: !2496, size: 1792, offset: 4096)
!2496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 1792, elements: !2497)
!2497 = !{!2498}
!2498 = !DISubrange(count: 14)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !2045, file: !2036, line: 487, baseType: !2044, size: 64, offset: 5888)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !2045, file: !2036, line: 488, baseType: !2044, size: 64, offset: 5952)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !2045, file: !2036, line: 491, baseType: !2502, size: 64, offset: 6016)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !2036, line: 327, size: 896, elements: !2504)
!2504 = !{!2505, !2508, !2518, !2519, !2520, !2521, !2522}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !2503, file: !2036, line: 332, baseType: !2506)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !2507, line: 64, elements: !809)
!2507 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2503, file: !2036, line: 333, baseType: !2509, size: 192)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !2036, line: 299, size: 192, elements: !2510)
!2510 = !{!2511}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !2509, file: !2036, line: 300, baseType: !2512, size: 192)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !2513, line: 17, size: 192, elements: !2514)
!2513 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!2514 = !{!2515, !2516, !2517}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2512, file: !2513, line: 18, baseType: !47, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2512, file: !2513, line: 19, baseType: !47, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2512, file: !2513, line: 20, baseType: !49, size: 64, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2503, file: !2036, line: 339, baseType: !2509, size: 192, offset: 192)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !2503, file: !2036, line: 347, baseType: !2509, size: 192, offset: 384)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !2503, file: !2036, line: 353, baseType: !2509, size: 192, offset: 576)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !2503, file: !2036, line: 366, baseType: !2044, size: 64, offset: 768)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !2503, file: !2036, line: 367, baseType: !2044, size: 64, offset: 832)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !2045, file: !2036, line: 492, baseType: !174, size: 128, offset: 6080)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2045, file: !2036, line: 495, baseType: !2509, size: 192, offset: 6208)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2045, file: !2036, line: 496, baseType: !2509, size: 192, offset: 6400)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2045, file: !2036, line: 497, baseType: !1872, size: 192, offset: 6592)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !2045, file: !2036, line: 503, baseType: !174, size: 128, offset: 6784)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !2045, file: !2036, line: 504, baseType: !889, size: 256, offset: 6912)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !2045, file: !2036, line: 507, baseType: !135, size: 192, offset: 7168)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !2045, file: !2036, line: 510, baseType: !1645, size: 256, offset: 7360)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !2045, file: !2036, line: 513, baseType: !2532, size: 64, offset: 7616)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !2534, line: 214, elements: !809)
!2534 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !2045, file: !2036, line: 516, baseType: !2536, offset: 7680)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !2537, line: 76, elements: !809)
!2537 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !2045, file: !2036, line: 519, baseType: !130, size: 32, offset: 7680)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !2045, file: !2036, line: 522, baseType: !2540, size: 128, offset: 7712)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !2036, line: 370, size: 128, elements: !2541)
!2541 = !{!2542, !2543, !2544, !2545}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2540, file: !2036, line: 372, baseType: !1530, size: 8)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !2540, file: !2036, line: 375, baseType: !13, size: 32, offset: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !2540, file: !2036, line: 380, baseType: !13, size: 32, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !2540, file: !2036, line: 386, baseType: !13, size: 32, offset: 96)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !2045, file: !2036, line: 529, baseType: !2547, offset: 7872)
!2547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2044, elements: !1761)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2041, file: !2036, line: 157, baseType: !2549, size: 64, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !2036, line: 669, size: 1984, elements: !2551)
!2551 = !{!2552, !2556, !2560, !2564, !2565, !2566, !2567, !2571, !2575, !2576, !2582, !2586, !2587, !2591, !2595, !2599, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2652, !2653}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !2550, file: !2036, line: 670, baseType: !2553, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!2040, !2040}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !2550, file: !2036, line: 671, baseType: !2557, size: 64, offset: 64)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!13, !2040}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !2550, file: !2036, line: 672, baseType: !2561, size: 64, offset: 128)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{null, !2040}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !2550, file: !2036, line: 673, baseType: !2561, size: 64, offset: 192)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !2550, file: !2036, line: 674, baseType: !2561, size: 64, offset: 256)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !2550, file: !2036, line: 675, baseType: !2561, size: 64, offset: 320)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !2550, file: !2036, line: 676, baseType: !2568, size: 64, offset: 384)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{null, !2040, !13}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !2550, file: !2036, line: 677, baseType: !2572, size: 64, offset: 448)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!13, !877, !2040}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !2550, file: !2036, line: 679, baseType: !2572, size: 64, offset: 512)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !2550, file: !2036, line: 682, baseType: !2577, size: 64, offset: 576)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!13, !2580}
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !2036, line: 30, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !2550, file: !2036, line: 683, baseType: !2583, size: 64, offset: 640)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{null, !2580}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2550, file: !2036, line: 684, baseType: !2583, size: 64, offset: 704)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !2550, file: !2036, line: 685, baseType: !2588, size: 64, offset: 768)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{null}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !2550, file: !2036, line: 686, baseType: !2592, size: 64, offset: 832)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!13, !1032, !2034}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !2550, file: !2036, line: 688, baseType: !2596, size: 64, offset: 896)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{null, !1032, !2034}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !2550, file: !2036, line: 689, baseType: !2600, size: 64, offset: 960)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{null, !1032}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2550, file: !2036, line: 690, baseType: !2600, size: 64, offset: 1024)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2550, file: !2036, line: 691, baseType: !2600, size: 64, offset: 1088)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2550, file: !2036, line: 692, baseType: !2561, size: 64, offset: 1152)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2550, file: !2036, line: 694, baseType: !1530, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !2550, file: !2036, line: 707, baseType: !1530, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !2550, file: !2036, line: 719, baseType: !1530, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2550, file: !2036, line: 722, baseType: !13, size: 32, offset: 1248)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2550, file: !2036, line: 723, baseType: !102, size: 64, offset: 1280)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !2550, file: !2036, line: 726, baseType: !102, size: 64, offset: 1344)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2550, file: !2036, line: 729, baseType: !2476, size: 64, offset: 1408)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !2550, file: !2036, line: 732, baseType: !1016, size: 192, offset: 1472)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !2550, file: !2036, line: 738, baseType: !174, size: 128, offset: 1664)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !2550, file: !2036, line: 744, baseType: !2616, size: 64, offset: 1792)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !2036, line: 580, size: 1728, elements: !2618)
!2618 = !{!2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2628, !2629, !2630, !2634, !2638, !2639, !2640, !2641, !2642, !2646, !2650, !2651}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2617, file: !2036, line: 586, baseType: !2493, size: 512)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2617, file: !2036, line: 587, baseType: !20, size: 64, offset: 512)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2617, file: !2036, line: 593, baseType: !117, size: 64, offset: 576)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2617, file: !2036, line: 596, baseType: !81, size: 32, offset: 640)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !2617, file: !2036, line: 604, baseType: !81, size: 32, offset: 672)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2617, file: !2036, line: 610, baseType: !2549, size: 64, offset: 704)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2617, file: !2036, line: 611, baseType: !174, size: 128, offset: 768)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !2617, file: !2036, line: 612, baseType: !2627, size: 64, offset: 896)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2617, file: !2036, line: 614, baseType: !2095, size: 64, offset: 960)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2617, file: !2036, line: 615, baseType: !2400, size: 64, offset: 1024)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !2617, file: !2036, line: 621, baseType: !2631, size: 64, offset: 1088)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!47, !2040, !2616}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !2617, file: !2036, line: 625, baseType: !2635, size: 64, offset: 1152)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!899, !2040, !2616}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2617, file: !2036, line: 628, baseType: !927, size: 64, offset: 1216)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2617, file: !2036, line: 631, baseType: !915, size: 64, offset: 1280)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2617, file: !2036, line: 632, baseType: !923, size: 64, offset: 1344)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2617, file: !2036, line: 633, baseType: !919, size: 64, offset: 1408)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !2617, file: !2036, line: 640, baseType: !2643, size: 64, offset: 1472)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!13, !2040, !2616, !47}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !2617, file: !2036, line: 645, baseType: !2647, size: 64, offset: 1536)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!13, !2040, !2616, !899}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2617, file: !2036, line: 654, baseType: !2408, size: 64, offset: 1600)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2617, file: !2036, line: 657, baseType: !2415, size: 64, offset: 1664)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !2550, file: !2036, line: 745, baseType: !2616, size: 64, offset: 1856)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !2550, file: !2036, line: 754, baseType: !81, size: 32, offset: 1920)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2041, file: !2036, line: 160, baseType: !2294, size: 128, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2041, file: !2036, line: 163, baseType: !174, size: 128, offset: 256)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2041, file: !2036, line: 164, baseType: !174, size: 128, offset: 384)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !2041, file: !2036, line: 167, baseType: !174, size: 128, offset: 512)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2041, file: !2036, line: 173, baseType: !13, size: 32, offset: 640)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2041, file: !2036, line: 175, baseType: !81, size: 32, offset: 672)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !2041, file: !2036, line: 183, baseType: !47, size: 64, offset: 704)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !2041, file: !2036, line: 189, baseType: !130, size: 32, offset: 768)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !2041, file: !2036, line: 192, baseType: !1645, size: 256, offset: 832)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !2041, file: !2036, line: 193, baseType: !2664, size: 448, offset: 1088)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1646, line: 120, size: 448, elements: !2665)
!2665 = !{!2666, !2667, !2668}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2664, file: !1646, line: 121, baseType: !1645, size: 256)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2664, file: !1646, line: 122, baseType: !946, size: 128, align: 64, offset: 256)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2664, file: !1646, line: 125, baseType: !2669, size: 64, offset: 384)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1646, line: 18, flags: DIFlagFwdDecl)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2041, file: !2036, line: 199, baseType: !2040, size: 64, offset: 1536)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2035, file: !2036, line: 218, baseType: !991, size: 32, offset: 896)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !2035, file: !2036, line: 226, baseType: !2034, size: 64, offset: 960)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !2035, file: !2036, line: 229, baseType: !2044, size: 64, offset: 1024)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2035, file: !2036, line: 232, baseType: !13, size: 32, offset: 1088)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2035, file: !2036, line: 241, baseType: !174, size: 128, offset: 1152)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !2035, file: !2036, line: 242, baseType: !174, size: 128, offset: 1280)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !2035, file: !2036, line: 243, baseType: !174, size: 128, offset: 1408)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !2035, file: !2036, line: 246, baseType: !174, size: 128, offset: 1536)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !2035, file: !2036, line: 255, baseType: !2496, size: 1792, offset: 1664)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !2035, file: !2036, line: 258, baseType: !174, size: 128, offset: 3456)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !2035, file: !2036, line: 259, baseType: !174, size: 128, offset: 3584)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !2035, file: !2036, line: 265, baseType: !801, size: 128, offset: 3712)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !2035, file: !2036, line: 271, baseType: !174, size: 128, offset: 3840)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !2035, file: !2036, line: 277, baseType: !174, size: 128, offset: 3968)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !2035, file: !2036, line: 278, baseType: !174, size: 128, offset: 4096)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !2035, file: !2036, line: 279, baseType: !174, size: 128, offset: 4224)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !2035, file: !2036, line: 288, baseType: !2044, size: 64, offset: 4352)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !2035, file: !2036, line: 289, baseType: !2044, size: 64, offset: 4416)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !2035, file: !2036, line: 290, baseType: !2034, size: 64, offset: 4480)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !2035, file: !2036, line: 293, baseType: !1530, size: 8, offset: 4544)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2035, file: !2036, line: 296, baseType: !946, size: 128, align: 64, offset: 4608)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1033, file: !1034, line: 1110, baseType: !2694, size: 64, offset: 15360)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2696, line: 93, size: 8768, elements: !2697)
!2696 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2697 = !{!2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2748, !2757, !2758, !2760, !2761, !2762, !2765, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2803, !2804, !2811, !2821, !2883, !2884, !2887, !2888, !2889, !2890, !2891, !2892}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2695, file: !2696, line: 94, baseType: !991, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2695, file: !2696, line: 95, baseType: !130, size: 32, offset: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2695, file: !2696, line: 96, baseType: !13, size: 32, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2695, file: !2696, line: 97, baseType: !13, size: 32, offset: 96)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2695, file: !2696, line: 98, baseType: !174, size: 128, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2695, file: !2696, line: 100, baseType: !135, size: 192, offset: 256)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2695, file: !2696, line: 103, baseType: !1032, size: 64, offset: 448)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2695, file: !2696, line: 106, baseType: !2706, size: 192, offset: 512)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2707, line: 32, size: 192, elements: !2708)
!2707 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2708 = !{!2709, !2710}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2706, file: !2707, line: 33, baseType: !174, size: 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2706, file: !2707, line: 34, baseType: !2711, size: 64, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2712, line: 25, baseType: !2713)
!2712 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2712, line: 23, size: 64, elements: !2714)
!2714 = !{!2715}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2713, file: !2712, line: 24, baseType: !1278, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2695, file: !2696, line: 109, baseType: !797, size: 64, offset: 704)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2695, file: !2696, line: 112, baseType: !13, size: 32, offset: 768)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2695, file: !2696, line: 114, baseType: !13, size: 32, offset: 800)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2695, file: !2696, line: 115, baseType: !1032, size: 64, offset: 832)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2695, file: !2696, line: 118, baseType: !13, size: 32, offset: 896)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2695, file: !2696, line: 119, baseType: !81, size: 32, offset: 928)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2695, file: !2696, line: 121, baseType: !2723, size: 64, offset: 960)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2696, line: 80, size: 448, elements: !2725)
!2725 = !{!2726, !2727, !2733}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2724, file: !2696, line: 81, baseType: !130, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2724, file: !2696, line: 82, baseType: !2728, size: 128, offset: 64)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2696, line: 75, size: 128, elements: !2729)
!2729 = !{!2730, !2731}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2728, file: !2696, line: 76, baseType: !1032, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2728, file: !2696, line: 77, baseType: !2732, size: 64, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2724, file: !2696, line: 83, baseType: !1684, size: 256, offset: 192)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2695, file: !2696, line: 132, baseType: !81, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2695, file: !2696, line: 133, baseType: !81, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2695, file: !2696, line: 138, baseType: !81, size: 32, offset: 1056)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2695, file: !2696, line: 139, baseType: !174, size: 128, offset: 1088)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2695, file: !2696, line: 142, baseType: !1151, size: 512, offset: 1216)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2695, file: !2696, line: 143, baseType: !1159, size: 64, offset: 1728)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2695, file: !2696, line: 150, baseType: !2741, size: 256, offset: 1792)
!2741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2742, size: 256, elements: !2746)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2696, line: 38, size: 128, elements: !2743)
!2743 = !{!2744, !2745}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2742, file: !2696, line: 39, baseType: !47, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2742, file: !2696, line: 40, baseType: !47, size: 64, offset: 64)
!2746 = !{!2747}
!2747 = !DISubrange(count: 2)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2695, file: !2696, line: 156, baseType: !2749, size: 192, offset: 2048)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2696, line: 66, size: 192, elements: !2750)
!2750 = !{!2751}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2749, file: !2696, line: 67, baseType: !2752, size: 192)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2696, line: 47, size: 192, elements: !2753)
!2753 = !{!2754, !2755, !2756}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2752, file: !2696, line: 48, baseType: !895, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2752, file: !2696, line: 49, baseType: !895, size: 64, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2752, file: !2696, line: 50, baseType: !895, size: 64, offset: 128)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2695, file: !2696, line: 160, baseType: !1884, size: 640, offset: 2240)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2695, file: !2696, line: 163, baseType: !2759, size: 256, offset: 2880)
!2759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !987, size: 256, elements: !1000)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2695, file: !2696, line: 169, baseType: !987, size: 64, offset: 3136)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2695, file: !2696, line: 172, baseType: !13, size: 32, offset: 3200)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2695, file: !2696, line: 174, baseType: !2763, size: 64, offset: 3264)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2696, line: 174, flags: DIFlagFwdDecl)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2695, file: !2696, line: 185, baseType: !2766, size: 64, offset: 3328)
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !655, line: 860, baseType: !2767)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !655, line: 853, size: 64, elements: !2768)
!2768 = !{!2769, !2770}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2767, file: !655, line: 858, baseType: !654, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2767, file: !655, line: 859, baseType: !140, size: 32, offset: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2695, file: !2696, line: 186, baseType: !47, size: 64, offset: 3392)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2695, file: !2696, line: 186, baseType: !47, size: 64, offset: 3456)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2695, file: !2696, line: 186, baseType: !47, size: 64, offset: 3520)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2695, file: !2696, line: 186, baseType: !47, size: 64, offset: 3584)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2695, file: !2696, line: 187, baseType: !47, size: 64, offset: 3648)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2695, file: !2696, line: 188, baseType: !47, size: 64, offset: 3712)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2695, file: !2696, line: 189, baseType: !1872, size: 192, offset: 3776)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2695, file: !2696, line: 190, baseType: !20, size: 64, offset: 3968)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2695, file: !2696, line: 190, baseType: !20, size: 64, offset: 4032)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2695, file: !2696, line: 190, baseType: !20, size: 64, offset: 4096)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2695, file: !2696, line: 190, baseType: !20, size: 64, offset: 4160)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2695, file: !2696, line: 191, baseType: !20, size: 64, offset: 4224)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2695, file: !2696, line: 191, baseType: !20, size: 64, offset: 4288)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2695, file: !2696, line: 191, baseType: !20, size: 64, offset: 4352)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2695, file: !2696, line: 191, baseType: !20, size: 64, offset: 4416)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2695, file: !2696, line: 192, baseType: !20, size: 64, offset: 4480)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2695, file: !2696, line: 192, baseType: !20, size: 64, offset: 4544)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2695, file: !2696, line: 192, baseType: !20, size: 64, offset: 4608)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2695, file: !2696, line: 192, baseType: !20, size: 64, offset: 4672)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2695, file: !2696, line: 193, baseType: !20, size: 64, offset: 4736)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2695, file: !2696, line: 193, baseType: !20, size: 64, offset: 4800)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2695, file: !2696, line: 194, baseType: !2793, size: 448, offset: 4864)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2794, line: 12, size: 448, elements: !2795)
!2794 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2795 = !{!2796, !2797, !2798, !2799, !2800, !2801, !2802}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2793, file: !2794, line: 15, baseType: !47, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2793, file: !2794, line: 17, baseType: !47, size: 64, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2793, file: !2794, line: 19, baseType: !47, size: 64, offset: 128)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2793, file: !2794, line: 21, baseType: !47, size: 64, offset: 192)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2793, file: !2794, line: 29, baseType: !47, size: 64, offset: 256)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2793, file: !2794, line: 35, baseType: !47, size: 64, offset: 320)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2793, file: !2794, line: 44, baseType: !47, size: 64, offset: 384)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2695, file: !2696, line: 202, baseType: !49, size: 64, offset: 5312)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2695, file: !2696, line: 213, baseType: !2805, size: 2048, offset: 5376)
!2805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2806, size: 2048, elements: !1976)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2807, line: 43, size: 128, elements: !2808)
!2807 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2808 = !{!2809, !2810}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2806, file: !2807, line: 44, baseType: !120, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2806, file: !2807, line: 45, baseType: !120, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2695, file: !2696, line: 216, baseType: !2812, size: 448, offset: 7424)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2696, line: 30, size: 448, elements: !2813)
!2813 = !{!2814, !2815, !2816, !2817, !2818, !2819, !2820}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2812, file: !2696, line: 31, baseType: !13, size: 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2812, file: !2696, line: 32, baseType: !465, size: 64, offset: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2812, file: !2696, line: 33, baseType: !20, size: 64, offset: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2812, file: !2696, line: 34, baseType: !47, size: 64, offset: 192)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2812, file: !2696, line: 34, baseType: !47, size: 64, offset: 256)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2812, file: !2696, line: 35, baseType: !20, size: 64, offset: 320)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2812, file: !2696, line: 35, baseType: !20, size: 64, offset: 384)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2695, file: !2696, line: 219, baseType: !2822, size: 64, offset: 7872)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2824, line: 41, size: 3456, elements: !2825)
!2824 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2825 = !{!2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2823, file: !2824, line: 47, baseType: !43, size: 16)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2823, file: !2824, line: 48, baseType: !683, size: 32, offset: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2823, file: !2824, line: 54, baseType: !165, size: 8, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2823, file: !2824, line: 55, baseType: !165, size: 8, offset: 72)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2823, file: !2824, line: 73, baseType: !48, size: 64, align: 64, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2823, file: !2824, line: 74, baseType: !48, size: 64, offset: 192)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2823, file: !2824, line: 81, baseType: !48, size: 64, offset: 256)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2823, file: !2824, line: 82, baseType: !48, size: 64, offset: 320)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2823, file: !2824, line: 85, baseType: !48, size: 64, offset: 384)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2823, file: !2824, line: 86, baseType: !48, size: 64, offset: 448)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2823, file: !2824, line: 94, baseType: !48, size: 64, offset: 512)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2823, file: !2824, line: 102, baseType: !48, size: 64, offset: 576)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2823, file: !2824, line: 107, baseType: !3, size: 256, offset: 640)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2823, file: !2824, line: 108, baseType: !165, size: 8, align: 64, offset: 896)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2823, file: !2824, line: 110, baseType: !2841, size: 24, offset: 904)
!2841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 24, elements: !541)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2823, file: !2824, line: 111, baseType: !683, size: 32, align: 64, offset: 960)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2823, file: !2824, line: 113, baseType: !683, size: 32, offset: 992)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2823, file: !2824, line: 114, baseType: !683, size: 32, offset: 1024)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2823, file: !2824, line: 115, baseType: !683, size: 32, offset: 1056)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2823, file: !2824, line: 117, baseType: !683, size: 32, offset: 1088)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2823, file: !2824, line: 118, baseType: !48, size: 64, align: 64, offset: 1152)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2823, file: !2824, line: 120, baseType: !48, size: 64, offset: 1216)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2823, file: !2824, line: 121, baseType: !48, size: 64, offset: 1280)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2823, file: !2824, line: 122, baseType: !48, size: 64, offset: 1344)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2823, file: !2824, line: 123, baseType: !48, size: 64, offset: 1408)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2823, file: !2824, line: 133, baseType: !48, size: 64, offset: 1472)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2823, file: !2824, line: 137, baseType: !48, size: 64, offset: 1536)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2823, file: !2824, line: 142, baseType: !48, size: 64, offset: 1600)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2823, file: !2824, line: 143, baseType: !48, size: 64, offset: 1664)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2823, file: !2824, line: 146, baseType: !48, size: 64, offset: 1728)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2823, file: !2824, line: 147, baseType: !48, size: 64, offset: 1792)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2823, file: !2824, line: 148, baseType: !48, size: 64, offset: 1856)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2823, file: !2824, line: 149, baseType: !48, size: 64, offset: 1920)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2823, file: !2824, line: 154, baseType: !48, size: 64, offset: 1984)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2823, file: !2824, line: 155, baseType: !48, size: 64, offset: 2048)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2823, file: !2824, line: 156, baseType: !48, size: 64, offset: 2112)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2823, file: !2824, line: 158, baseType: !48, size: 64, offset: 2176)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2823, file: !2824, line: 159, baseType: !48, size: 64, offset: 2240)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2823, file: !2824, line: 162, baseType: !48, size: 64, offset: 2304)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2823, file: !2824, line: 163, baseType: !48, size: 64, offset: 2368)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2823, file: !2824, line: 164, baseType: !48, size: 64, offset: 2432)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2823, file: !2824, line: 167, baseType: !48, size: 64, offset: 2496)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2823, file: !2824, line: 168, baseType: !48, size: 64, offset: 2560)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2823, file: !2824, line: 171, baseType: !48, size: 64, offset: 2624)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2823, file: !2824, line: 172, baseType: !48, size: 64, offset: 2688)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2823, file: !2824, line: 175, baseType: !48, size: 64, offset: 2752)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2823, file: !2824, line: 178, baseType: !48, size: 64, offset: 2816)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2823, file: !2824, line: 179, baseType: !48, size: 64, offset: 2880)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2823, file: !2824, line: 182, baseType: !683, size: 32, offset: 2944)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2823, file: !2824, line: 186, baseType: !48, size: 64, align: 64, offset: 3008)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2823, file: !2824, line: 194, baseType: !48, size: 64, offset: 3072)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2823, file: !2824, line: 195, baseType: !48, size: 64, offset: 3136)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2823, file: !2824, line: 199, baseType: !48, size: 64, offset: 3200)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2823, file: !2824, line: 200, baseType: !48, size: 64, offset: 3264)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2823, file: !2824, line: 203, baseType: !48, size: 64, offset: 3328)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2823, file: !2824, line: 204, baseType: !48, size: 64, offset: 3392)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2695, file: !2696, line: 222, baseType: !81, size: 32, offset: 7936)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2695, file: !2696, line: 223, baseType: !2885, size: 64, offset: 8000)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2696, line: 223, flags: DIFlagFwdDecl)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2695, file: !2696, line: 230, baseType: !1530, size: 8, offset: 8064)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2695, file: !2696, line: 231, baseType: !1478, size: 16, offset: 8080)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2695, file: !2696, line: 232, baseType: !1478, size: 16, offset: 8096)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2695, file: !2696, line: 234, baseType: !1327, size: 64, offset: 8128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2695, file: !2696, line: 237, baseType: !889, size: 256, offset: 8192)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2695, file: !2696, line: 243, baseType: !1382, size: 320, offset: 8448)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1033, file: !1034, line: 1111, baseType: !2894, size: 64, offset: 15424)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2696, line: 20, size: 16640, elements: !2896)
!2896 = !{!2897, !2898, !2899, !2900}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2895, file: !2696, line: 21, baseType: !140, size: 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2895, file: !2696, line: 22, baseType: !991, size: 32, offset: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2895, file: !2696, line: 23, baseType: !135, size: 192, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2895, file: !2696, line: 24, baseType: !2901, size: 16384, offset: 256)
!2901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2902, size: 16384, elements: !545)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2707, line: 51, size: 256, elements: !2903)
!2903 = !{!2904}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2902, file: !2707, line: 52, baseType: !2905, size: 256)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2707, line: 37, size: 256, elements: !2906)
!2906 = !{!2907, !2914, !2915, !2919}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2905, file: !2707, line: 39, baseType: !2908, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2909, line: 83, baseType: !2910)
!2909 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2909, line: 82, baseType: !2912)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{null, !13}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2905, file: !2707, line: 40, baseType: !20, size: 64, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2905, file: !2707, line: 46, baseType: !2916, size: 64, offset: 128)
!2916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2909, line: 86, baseType: !2917)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2909, line: 85, baseType: !2589)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2905, file: !2707, line: 48, baseType: !2711, size: 64, offset: 192)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1033, file: !1034, line: 1112, baseType: !2711, size: 64, offset: 15488)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1033, file: !1034, line: 1113, baseType: !2711, size: 64, offset: 15552)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1033, file: !1034, line: 1115, baseType: !2711, size: 64, offset: 15616)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1033, file: !1034, line: 1116, baseType: !2706, size: 192, offset: 15680)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1033, file: !1034, line: 1117, baseType: !20, size: 64, offset: 15872)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1033, file: !1034, line: 1118, baseType: !117, size: 64, offset: 15936)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1033, file: !1034, line: 1119, baseType: !81, size: 32, offset: 16000)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1033, file: !1034, line: 1121, baseType: !949, size: 64, offset: 16064)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1033, file: !1034, line: 1125, baseType: !2929, size: 64, offset: 16128)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1034, line: 43, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1033, file: !1034, line: 1127, baseType: !619, size: 32, offset: 16192)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1033, file: !1034, line: 1128, baseType: !81, size: 32, offset: 16224)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1033, file: !1034, line: 1130, baseType: !2934, size: 128, offset: 16256)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2935, line: 37, size: 128, elements: !2936)
!2935 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2936 = !{!2937, !2938, !2939}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2934, file: !2935, line: 38, baseType: !13, size: 32)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2934, file: !2935, line: 39, baseType: !130, size: 32, offset: 32)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2934, file: !2935, line: 40, baseType: !2940, size: 64, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2935, line: 24, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1033, file: !1034, line: 1131, baseType: !2943, size: 256, offset: 16384)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2944, line: 12, size: 256, elements: !2945)
!2944 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2945 = !{!2946, !2947, !2948, !2949}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2943, file: !2944, line: 13, baseType: !540, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2943, file: !2944, line: 14, baseType: !20, size: 64, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2943, file: !2944, line: 15, baseType: !20, size: 64, offset: 128)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2943, file: !2944, line: 16, baseType: !1530, size: 8, offset: 192)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1033, file: !1034, line: 1134, baseType: !47, size: 64, offset: 16640)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1033, file: !1034, line: 1135, baseType: !47, size: 64, offset: 16704)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1033, file: !1034, line: 1138, baseType: !140, size: 32, offset: 16768)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1033, file: !1034, line: 1141, baseType: !902, size: 32, offset: 16800)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1033, file: !1034, line: 1143, baseType: !2955, size: 64, offset: 16832)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1034, line: 735, size: 64, elements: !2956)
!2956 = !{!2957}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2955, file: !1034, line: 736, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1033, file: !1034, line: 1147, baseType: !1210, size: 128, offset: 16896)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1033, file: !1034, line: 1149, baseType: !1032, size: 64, offset: 17024)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1033, file: !1034, line: 1151, baseType: !2962, size: 64, offset: 17088)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1034, line: 1151, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1033, file: !1034, line: 1188, baseType: !12, size: 64, offset: 17152)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1033, file: !1034, line: 1191, baseType: !2966, size: 64, offset: 17216)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1034, line: 44, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1033, file: !1034, line: 1194, baseType: !2969, size: 64, offset: 17280)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1034, line: 45, flags: DIFlagFwdDecl)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1033, file: !1034, line: 1197, baseType: !2972, size: 64, offset: 17344)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1034, line: 61, flags: DIFlagFwdDecl)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1033, file: !1034, line: 1199, baseType: !2975, size: 64, offset: 17408)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2977, line: 99, size: 128, elements: !2978)
!2977 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2978 = !{!2979, !2980, !2981}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2976, file: !2977, line: 100, baseType: !893, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2976, file: !2977, line: 101, baseType: !130, size: 32, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2976, file: !2977, line: 103, baseType: !45, size: 16, offset: 96)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1033, file: !1034, line: 1202, baseType: !2983, size: 64, offset: 17472)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1034, line: 48, flags: DIFlagFwdDecl)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1033, file: !1034, line: 1205, baseType: !20, size: 64, offset: 17536)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1033, file: !1034, line: 1206, baseType: !2987, size: 64, offset: 17600)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2707, line: 14, baseType: !2989)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2707, line: 12, size: 384, elements: !2990)
!2990 = !{!2991}
!2991 = !DIDerivedType(tag: DW_TAG_member, scope: !2989, file: !2707, line: 13, baseType: !2992, size: 384)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2989, file: !2707, line: 13, size: 384, elements: !2993)
!2993 = !{!2994, !2995, !2996, !2997}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2992, file: !2707, line: 13, baseType: !13, size: 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2992, file: !2707, line: 13, baseType: !13, size: 32, offset: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2992, file: !2707, line: 13, baseType: !13, size: 32, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2992, file: !2707, line: 13, baseType: !2998, size: 256, offset: 128)
!2998 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2999, line: 37, size: 256, elements: !3000)
!2999 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3000 = !{!3001, !3006, !3019, !3025, !3034, !3061, !3066}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2998, file: !2999, line: 42, baseType: !3002, size: 64)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2998, file: !2999, line: 39, size: 64, elements: !3003)
!3003 = !{!3004, !3005}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3002, file: !2999, line: 40, baseType: !1849, size: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3002, file: !2999, line: 41, baseType: !625, size: 32, offset: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2998, file: !2999, line: 50, baseType: !3007, size: 192)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2998, file: !2999, line: 45, size: 192, elements: !3008)
!3008 = !{!3009, !3011, !3012, !3018}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3007, file: !2999, line: 46, baseType: !3010, size: 32)
!3010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !119, line: 95, baseType: !13)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3007, file: !2999, line: 47, baseType: !13, size: 32, offset: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3007, file: !2999, line: 48, baseType: !3013, size: 64, offset: 64)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2999, line: 11, baseType: !3014)
!3014 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2999, line: 8, size: 64, elements: !3015)
!3015 = !{!3016, !3017}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3014, file: !2999, line: 9, baseType: !13, size: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3014, file: !2999, line: 10, baseType: !12, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3007, file: !2999, line: 49, baseType: !13, size: 32, offset: 128)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2998, file: !2999, line: 57, baseType: !3020, size: 128)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2998, file: !2999, line: 53, size: 128, elements: !3021)
!3021 = !{!3022, !3023, !3024}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3020, file: !2999, line: 54, baseType: !1849, size: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3020, file: !2999, line: 55, baseType: !625, size: 32, offset: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3020, file: !2999, line: 56, baseType: !3013, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2998, file: !2999, line: 66, baseType: !3026, size: 256)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2998, file: !2999, line: 60, size: 256, elements: !3027)
!3027 = !{!3028, !3029, !3030, !3031, !3033}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3026, file: !2999, line: 61, baseType: !1849, size: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3026, file: !2999, line: 62, baseType: !625, size: 32, offset: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3026, file: !2999, line: 63, baseType: !13, size: 32, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3026, file: !2999, line: 64, baseType: !3032, size: 64, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !119, line: 94, baseType: !574)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3026, file: !2999, line: 65, baseType: !3032, size: 64, offset: 192)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2998, file: !2999, line: 105, baseType: !3035, size: 256)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2998, file: !2999, line: 69, size: 256, elements: !3036)
!3036 = !{!3037, !3038}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3035, file: !2999, line: 70, baseType: !12, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, scope: !3035, file: !2999, line: 79, baseType: !3039, size: 192, offset: 64)
!3039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3035, file: !2999, line: 79, size: 192, elements: !3040)
!3040 = !{!3041, !3042, !3043, !3050, !3055}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3039, file: !2999, line: 81, baseType: !13, size: 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3039, file: !2999, line: 86, baseType: !1478, size: 16)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3039, file: !2999, line: 92, baseType: !3044, size: 192)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3039, file: !2999, line: 88, size: 192, elements: !3045)
!3045 = !{!3046, !3048, !3049}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3044, file: !2999, line: 89, baseType: !3047, size: 64)
!3047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1194)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3044, file: !2999, line: 90, baseType: !12, size: 64, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3044, file: !2999, line: 91, baseType: !12, size: 64, offset: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3039, file: !2999, line: 97, baseType: !3051, size: 96)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3039, file: !2999, line: 94, size: 96, elements: !3052)
!3052 = !{!3053, !3054}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3051, file: !2999, line: 95, baseType: !3047, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3051, file: !2999, line: 96, baseType: !683, size: 32, offset: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3039, file: !2999, line: 103, baseType: !3056, size: 128)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3039, file: !2999, line: 99, size: 128, elements: !3057)
!3057 = !{!3058, !3059, !3060}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3056, file: !2999, line: 100, baseType: !20, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3056, file: !2999, line: 101, baseType: !683, size: 32, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3056, file: !2999, line: 102, baseType: !683, size: 32, offset: 96)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2998, file: !2999, line: 111, baseType: !3062, size: 128)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2998, file: !2999, line: 108, size: 128, elements: !3063)
!3063 = !{!3064, !3065}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3062, file: !2999, line: 109, baseType: !465, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3062, file: !2999, line: 110, baseType: !13, size: 32, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2998, file: !2999, line: 118, baseType: !3067, size: 128)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2998, file: !2999, line: 114, size: 128, elements: !3068)
!3068 = !{!3069, !3070, !3071}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3067, file: !2999, line: 115, baseType: !12, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3067, file: !2999, line: 116, baseType: !13, size: 32, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3067, file: !2999, line: 117, baseType: !81, size: 32, offset: 96)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1033, file: !1034, line: 1208, baseType: !2793, size: 448, offset: 17664)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1033, file: !1034, line: 1215, baseType: !47, size: 64, offset: 18112)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1033, file: !1034, line: 1217, baseType: !47, size: 64, offset: 18176)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1033, file: !1034, line: 1219, baseType: !47, size: 64, offset: 18240)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1033, file: !1034, line: 1223, baseType: !3077, size: 64, offset: 18304)
!3077 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3078, line: 99, baseType: !3079)
!3078 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3078, line: 99, size: 64, elements: !3080)
!3080 = !{!3081}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3079, file: !3078, line: 99, baseType: !1278, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1033, file: !1034, line: 1225, baseType: !654, size: 32, offset: 18368)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1033, file: !1034, line: 1226, baseType: !13, size: 32, offset: 18400)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1033, file: !1034, line: 1227, baseType: !13, size: 32, offset: 18432)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1033, file: !1034, line: 1231, baseType: !2034, size: 64, offset: 18496)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1033, file: !1034, line: 1233, baseType: !174, size: 128, offset: 18560)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1033, file: !1034, line: 1240, baseType: !3088, size: 64, offset: 18688)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1034, line: 62, flags: DIFlagFwdDecl)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1033, file: !1034, line: 1242, baseType: !3091, size: 64, offset: 18752)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1034, line: 1242, flags: DIFlagFwdDecl)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1033, file: !1034, line: 1244, baseType: !174, size: 128, offset: 18816)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1033, file: !1034, line: 1245, baseType: !3095, size: 64, offset: 18944)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1034, line: 51, flags: DIFlagFwdDecl)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1033, file: !1034, line: 1246, baseType: !889, size: 256, offset: 19008)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1033, file: !1034, line: 1247, baseType: !81, size: 32, offset: 19264)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1033, file: !1034, line: 1250, baseType: !3100, size: 64, offset: 19328)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !325, line: 912, size: 1792, elements: !3102)
!3102 = !{!3103, !3104, !3105, !3106, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3101, file: !325, line: 917, baseType: !902, size: 32)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3101, file: !325, line: 923, baseType: !889, size: 256, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3101, file: !325, line: 925, baseType: !174, size: 128, offset: 320)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3101, file: !325, line: 926, baseType: !3107, size: 128, offset: 448)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !325, line: 901, size: 128, elements: !3108)
!3108 = !{!3109, !3110}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3107, file: !325, line: 902, baseType: !1213, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3107, file: !325, line: 903, baseType: !47, size: 64, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3101, file: !325, line: 927, baseType: !3107, size: 128, offset: 576)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3101, file: !325, line: 928, baseType: !174, size: 128, offset: 704)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3101, file: !325, line: 930, baseType: !13, size: 32, offset: 832)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3101, file: !325, line: 931, baseType: !13, size: 32, offset: 864)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3101, file: !325, line: 932, baseType: !13, size: 32, offset: 896)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3101, file: !325, line: 934, baseType: !13, size: 32, offset: 928)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3101, file: !325, line: 935, baseType: !13, size: 32, offset: 960)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3101, file: !325, line: 936, baseType: !13, size: 32, offset: 992)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3101, file: !325, line: 937, baseType: !13, size: 32, offset: 1024)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3101, file: !325, line: 939, baseType: !991, size: 32, offset: 1056)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3101, file: !325, line: 940, baseType: !1032, size: 64, offset: 1088)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3101, file: !325, line: 945, baseType: !47, size: 64, offset: 1152)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3101, file: !325, line: 946, baseType: !47, size: 64, offset: 1216)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3101, file: !325, line: 947, baseType: !47, size: 64, offset: 1280)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3101, file: !325, line: 953, baseType: !3100, size: 64, offset: 1344)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3101, file: !325, line: 954, baseType: !47, size: 64, offset: 1408)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3101, file: !325, line: 955, baseType: !47, size: 64, offset: 1472)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3101, file: !325, line: 956, baseType: !13, size: 32, offset: 1536)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3101, file: !325, line: 958, baseType: !13, size: 32, offset: 1568)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3101, file: !325, line: 960, baseType: !946, size: 128, align: 64, offset: 1600)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3101, file: !325, line: 968, baseType: !3132, size: 64, offset: 1728)
!3132 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3133, line: 12, baseType: !3134)
!3133 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3133, line: 10, size: 64, elements: !3135)
!3135 = !{!3136}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3134, file: !3133, line: 11, baseType: !893, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1033, file: !1034, line: 1251, baseType: !889, size: 256, offset: 19392)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1033, file: !1034, line: 1252, baseType: !174, size: 128, offset: 19648)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1033, file: !1034, line: 1259, baseType: !2171, size: 64, offset: 19776)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1033, file: !1034, line: 1260, baseType: !1478, size: 16, offset: 19840)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1033, file: !1034, line: 1261, baseType: !1478, size: 16, offset: 19856)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1033, file: !1034, line: 1314, baseType: !3143, size: 64, offset: 19904)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3145, line: 62, size: 256, align: 256, elements: !3146)
!3145 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3146 = !{!3147, !3148, !3149, !3150, !3151, !3152, !3153}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3144, file: !3145, line: 75, baseType: !683, size: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3144, file: !3145, line: 90, baseType: !683, size: 32, offset: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3144, file: !3145, line: 112, baseType: !48, size: 64, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3144, file: !3145, line: 132, baseType: !683, size: 32, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3144, file: !3145, line: 140, baseType: !683, size: 32, offset: 160)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3144, file: !3145, line: 149, baseType: !683, size: 32, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3144, file: !3145, line: 154, baseType: !3154, offset: 224)
!3154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1761)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1033, file: !1034, line: 1315, baseType: !682, size: 32, offset: 19968)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1033, file: !1034, line: 1316, baseType: !682, size: 32, offset: 20000)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1033, file: !1034, line: 1321, baseType: !20, size: 64, offset: 20032)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1033, file: !1034, line: 1325, baseType: !13, size: 32, offset: 20096)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1033, file: !1034, line: 1326, baseType: !13, size: 32, offset: 20128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1033, file: !1034, line: 1327, baseType: !13, size: 32, offset: 20160)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1033, file: !1034, line: 1328, baseType: !13, size: 32, offset: 20192)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1033, file: !1034, line: 1329, baseType: !946, size: 128, align: 64, offset: 20224)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1033, file: !1034, line: 1332, baseType: !3164, size: 128, offset: 20352)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3165, line: 51, size: 128, elements: !3166)
!3165 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3166 = !{!3167, !3172, !3173}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3164, file: !3165, line: 60, baseType: !3168, size: 64)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3169, line: 7, size: 64, elements: !3170)
!3169 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3170 = !{!3171}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3168, file: !3169, line: 12, baseType: !1275, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3164, file: !3165, line: 63, baseType: !1530, size: 8, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3164, file: !3165, line: 70, baseType: !1530, size: 8, offset: 72)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1033, file: !1034, line: 1335, baseType: !3175, size: 64, offset: 20480)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1034, line: 59, flags: DIFlagFwdDecl)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1033, file: !1034, line: 1337, baseType: !3178, size: 128, offset: 20544)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3165, line: 39, size: 128, elements: !3179)
!3179 = !{!3180, !3181, !3182}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3178, file: !3165, line: 40, baseType: !2230, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3178, file: !3165, line: 42, baseType: !683, size: 32, offset: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3178, file: !3165, line: 43, baseType: !683, size: 32, offset: 96)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1033, file: !1034, line: 1340, baseType: !3184, size: 64, offset: 20672)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1034, line: 69, flags: DIFlagFwdDecl)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1033, file: !1034, line: 1351, baseType: !13, size: 32, offset: 20736)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1033, file: !1034, line: 1352, baseType: !13, size: 32, offset: 20768)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1033, file: !1034, line: 1354, baseType: !20, size: 64, offset: 20800)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1033, file: !1034, line: 1364, baseType: !47, size: 64, offset: 20864)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1033, file: !1034, line: 1365, baseType: !47, size: 64, offset: 20928)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1033, file: !1034, line: 1412, baseType: !20, size: 64, offset: 20992)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1033, file: !1034, line: 1453, baseType: !3193, size: 64, offset: 21056)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1034, line: 1453, flags: DIFlagFwdDecl)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1033, file: !1034, line: 1457, baseType: !3196, size: 64, offset: 21120)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !215, line: 61, size: 576, elements: !3198)
!3198 = !{!3199, !3200, !3219, !3222, !3223, !3256, !3266}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3197, file: !215, line: 62, baseType: !214, size: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, scope: !3197, file: !215, line: 64, baseType: !3201, size: 192, offset: 64)
!3201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3197, file: !215, line: 64, size: 192, elements: !3202)
!3202 = !{!3203, !3214}
!3203 = !DIDerivedType(tag: DW_TAG_member, scope: !3201, file: !215, line: 65, baseType: !3204, size: 192)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3201, file: !215, line: 65, size: 192, elements: !3205)
!3205 = !{!3206, !3213}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3204, file: !215, line: 66, baseType: !3207, size: 128)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3208, line: 50, size: 128, elements: !3209)
!3208 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3209 = !{!3210, !3211, !3212}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3207, file: !3208, line: 52, baseType: !20, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3207, file: !3208, line: 54, baseType: !81, size: 32, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3207, file: !3208, line: 55, baseType: !81, size: 32, offset: 96)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3204, file: !215, line: 67, baseType: !20, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_member, scope: !3201, file: !215, line: 70, baseType: !3215, size: 192)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3201, file: !215, line: 70, size: 192, elements: !3216)
!3216 = !{!3217, !3218}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3215, file: !215, line: 71, baseType: !946, size: 128, align: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3215, file: !215, line: 72, baseType: !20, size: 64, offset: 128)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3197, file: !215, line: 76, baseType: !3220, size: 64, offset: 256)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !215, line: 76, flags: DIFlagFwdDecl)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3197, file: !215, line: 77, baseType: !20, size: 64, offset: 320)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3197, file: !215, line: 79, baseType: !3224, size: 64, offset: 384)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3208, line: 25, size: 256, elements: !3226)
!3226 = !{!3227, !3233, !3237}
!3227 = !DIDerivedType(tag: DW_TAG_member, scope: !3225, file: !3208, line: 26, baseType: !3228, size: 128)
!3228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3225, file: !3208, line: 26, size: 128, elements: !3229)
!3229 = !{!3230, !3232}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3228, file: !3208, line: 27, baseType: !3231, size: 128)
!3231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 128, elements: !1976)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3228, file: !3208, line: 28, baseType: !3231, size: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3225, file: !3208, line: 31, baseType: !3234, size: 64, offset: 128)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3236)
!3236 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3208, line: 23, flags: DIFlagFwdDecl)
!3237 = !DIDerivedType(tag: DW_TAG_member, scope: !3225, file: !3208, line: 33, baseType: !3238, size: 64, offset: 192)
!3238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3225, file: !3208, line: 33, size: 64, elements: !3239)
!3239 = !{!3240, !3246, !3251}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3238, file: !3208, line: 38, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3238, file: !3208, line: 34, size: 64, elements: !3242)
!3242 = !{!3243, !3244, !3245}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3241, file: !3208, line: 35, baseType: !461, size: 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3241, file: !3208, line: 36, baseType: !164, size: 8, offset: 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3241, file: !3208, line: 37, baseType: !164, size: 8, offset: 40)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3238, file: !3208, line: 42, baseType: !3247, size: 16)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3238, file: !3208, line: 39, size: 16, elements: !3248)
!3248 = !{!3249, !3250}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3247, file: !3208, line: 40, baseType: !164, size: 8)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3247, file: !3208, line: 41, baseType: !164, size: 8, offset: 8)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3238, file: !3208, line: 46, baseType: !3252, size: 16)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3238, file: !3208, line: 43, size: 16, elements: !3253)
!3253 = !{!3254, !3255}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3252, file: !3208, line: 44, baseType: !164, size: 8)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3252, file: !3208, line: 45, baseType: !164, size: 8, offset: 8)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3197, file: !215, line: 81, baseType: !3257, size: 64, offset: 448)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !215, line: 85, size: 384, elements: !3259)
!3259 = !{!3260, !3261, !3262, !3263, !3264, !3265}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3258, file: !215, line: 86, baseType: !3220, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3258, file: !215, line: 87, baseType: !20, size: 64, offset: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3258, file: !215, line: 88, baseType: !20, size: 64, offset: 128)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3258, file: !215, line: 89, baseType: !20, size: 64, offset: 192)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3258, file: !215, line: 90, baseType: !1530, size: 8, offset: 256)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3258, file: !215, line: 92, baseType: !3257, size: 64, offset: 320)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3197, file: !215, line: 82, baseType: !81, size: 32, offset: 512)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1033, file: !1034, line: 1463, baseType: !3268, offset: 21184)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1034, line: 739, elements: !809)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1033, file: !1034, line: 1470, baseType: !946, size: 128, align: 64, offset: 21184)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1033, file: !1034, line: 1471, baseType: !991, size: 32, offset: 21312)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1033, file: !1034, line: 1472, baseType: !13, size: 32, offset: 21344)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1033, file: !1034, line: 1474, baseType: !1032, size: 64, offset: 21376)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1033, file: !1034, line: 1475, baseType: !2454, size: 320, offset: 21440)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1033, file: !1034, line: 1478, baseType: !3275, size: 64, offset: 21760)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3277, line: 49, size: 512, elements: !3278)
!3277 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3278 = !{!3279, !3280, !3281, !3282, !3283, !3285, !3286, !3287, !3289}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3276, file: !3277, line: 50, baseType: !3275, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3276, file: !3277, line: 51, baseType: !12, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3276, file: !3277, line: 52, baseType: !20, size: 64, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3276, file: !3277, line: 53, baseType: !20, size: 64, offset: 192)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3276, file: !3277, line: 54, baseType: !3284, size: 64, offset: 256)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3276, file: !3277, line: 56, baseType: !81, size: 32, offset: 320)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3276, file: !3277, line: 58, baseType: !81, size: 32, offset: 352)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3276, file: !3277, line: 59, baseType: !3288, size: 64, offset: 384)
!3288 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !108, line: 159, baseType: !47)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3276, file: !3277, line: 60, baseType: !1459, size: 64, offset: 448)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1033, file: !1034, line: 1482, baseType: !991, size: 32, offset: 21824)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1033, file: !1034, line: 1489, baseType: !12, size: 64, offset: 21888)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1033, file: !1034, line: 1504, baseType: !12, size: 64, offset: 21952)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1033, file: !1034, line: 1505, baseType: !48, size: 64, offset: 22016)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1033, file: !1034, line: 1506, baseType: !47, size: 64, offset: 22080)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1033, file: !1034, line: 1507, baseType: !48, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1033, file: !1034, line: 1508, baseType: !48, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1033, file: !1034, line: 1509, baseType: !48, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1033, file: !1034, line: 1510, baseType: !946, size: 128, align: 64, offset: 22208)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1033, file: !1034, line: 1511, baseType: !13, size: 32, offset: 22336)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1033, file: !1034, line: 1515, baseType: !3301, size: 64, offset: 22400)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !941, line: 56, size: 64, elements: !3302)
!3302 = !{!3303}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3301, file: !941, line: 57, baseType: !944, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1033, file: !1034, line: 1518, baseType: !3301, size: 64, offset: 22464)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1033, file: !1034, line: 1528, baseType: !946, size: 128, align: 64, offset: 22528)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1033, file: !1034, line: 1552, baseType: !3307, size: 35328, offset: 23040)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3308, line: 430, size: 35328, elements: !3309)
!3308 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3309 = !{!3310, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !4415, !4416, !4417, !4418, !4419, !4420, !4423, !4424, !4425, !4426}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3307, file: !3308, line: 432, baseType: !3311, size: 192)
!3311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3312, size: 192, elements: !541)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3313, line: 16, size: 64, elements: !3314)
!3313 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3314 = !{!3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3312, file: !3313, line: 17, baseType: !41, size: 16)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3312, file: !3313, line: 18, baseType: !41, size: 16, offset: 16)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3312, file: !3313, line: 19, baseType: !41, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3312, file: !3313, line: 19, baseType: !41, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3312, file: !3313, line: 19, baseType: !41, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3312, file: !3313, line: 19, baseType: !41, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3312, file: !3313, line: 19, baseType: !41, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3312, file: !3313, line: 20, baseType: !41, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3312, file: !3313, line: 20, baseType: !41, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3312, file: !3313, line: 20, baseType: !41, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3312, file: !3313, line: 20, baseType: !41, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3312, file: !3313, line: 20, baseType: !41, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3312, file: !3313, line: 20, baseType: !41, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3307, file: !3308, line: 436, baseType: !20, size: 64, offset: 192)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3307, file: !3308, line: 440, baseType: !45, size: 16, offset: 256)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3307, file: !3308, line: 441, baseType: !45, size: 16, offset: 272)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3307, file: !3308, line: 442, baseType: !45, size: 16, offset: 288)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3307, file: !3308, line: 443, baseType: !45, size: 16, offset: 304)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3307, file: !3308, line: 447, baseType: !20, size: 64, offset: 320)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3307, file: !3308, line: 448, baseType: !20, size: 64, offset: 384)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3307, file: !3308, line: 459, baseType: !3336, size: 256, offset: 448)
!3336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3337, size: 256, elements: !1000)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !325, line: 671, size: 8512, elements: !3339)
!3339 = !{!3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !4003, !4004, !4005, !4006, !4012, !4013, !4014, !4015, !4016, !4099, !4100, !4101, !4102, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4222, !4223, !4224, !4225, !4226, !4227, !4242, !4243, !4244, !4245, !4246, !4252, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4269, !4388, !4389, !4390, !4399, !4412, !4413, !4414}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !3338, file: !325, line: 678, baseType: !174, size: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !3338, file: !325, line: 684, baseType: !174, size: 128, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !3338, file: !325, line: 685, baseType: !174, size: 128, offset: 256)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3338, file: !325, line: 689, baseType: !1081, size: 192, align: 64, offset: 384)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !3338, file: !325, line: 690, baseType: !47, size: 64, offset: 576)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !3338, file: !325, line: 696, baseType: !174, size: 128, offset: 640)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !3338, file: !325, line: 698, baseType: !801, size: 128, offset: 768)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !3338, file: !325, line: 699, baseType: !174, size: 128, offset: 896)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !3338, file: !325, line: 700, baseType: !13, size: 32, offset: 1024)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !3338, file: !325, line: 703, baseType: !13, size: 32, offset: 1056)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !3338, file: !325, line: 705, baseType: !13, size: 32, offset: 1088)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !3338, file: !325, line: 707, baseType: !81, size: 32, offset: 1120)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3338, file: !325, line: 708, baseType: !3337, size: 64, offset: 1152)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3338, file: !325, line: 714, baseType: !3354, size: 64, offset: 1216)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !325, line: 302, size: 2432, elements: !3356)
!3356 = !{!3357, !3358, !3359, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3909, !3910, !3911, !3912, !3913, !3917, !3918, !3922, !3926, !3927, !3931, !3935, !3936, !3937, !3941, !3945, !3949, !3950, !3951, !3955, !3959, !3963, !3968, !3969, !3989, !3993, !3994, !3995, !3999}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3355, file: !325, line: 303, baseType: !174, size: 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3355, file: !325, line: 305, baseType: !486, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3355, file: !325, line: 306, baseType: !3360, size: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !272, line: 705, size: 5824, elements: !3362)
!3362 = !{!3363, !3364, !3365, !3368, !3369, !3422, !3508, !3509, !3510, !3511, !3512, !3519, !3611, !3624, !3634, !3638, !3640, !3641, !3642, !3646, !3653, !3654, !3657, !3660, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3850, !3851, !3852, !3855, !3858, !3867, !3868, !3869, !3870, !3871, !3872}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3361, file: !272, line: 706, baseType: !499, size: 512)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3361, file: !272, line: 707, baseType: !3360, size: 64, offset: 512)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3361, file: !272, line: 709, baseType: !3366, size: 64, offset: 576)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !272, line: 37, flags: DIFlagFwdDecl)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3361, file: !272, line: 711, baseType: !102, size: 64, offset: 640)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3361, file: !272, line: 712, baseType: !3370, size: 64, offset: 704)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3372)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !272, line: 89, size: 384, elements: !3373)
!3373 = !{!3374, !3375, !3376, !3382, !3387, !3391}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3372, file: !272, line: 90, baseType: !102, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3372, file: !272, line: 91, baseType: !585, size: 64, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3372, file: !272, line: 92, baseType: !3377, size: 64, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!13, !3380, !535}
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3361)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3372, file: !272, line: 93, baseType: !3383, size: 64, offset: 192)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!540, !3380, !3386, !1709, !1710}
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3372, file: !272, line: 95, baseType: !3388, size: 64, offset: 256)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{null, !3360}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3372, file: !272, line: 97, baseType: !3392, size: 64, offset: 320)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3394)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !279, line: 286, size: 1472, elements: !3395)
!3395 = !{!3396, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3394, file: !279, line: 287, baseType: !3397, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!13, !3360}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3394, file: !279, line: 288, baseType: !3388, size: 64, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3394, file: !279, line: 289, baseType: !3397, size: 64, offset: 128)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3394, file: !279, line: 290, baseType: !3397, size: 64, offset: 192)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3394, file: !279, line: 291, baseType: !3397, size: 64, offset: 256)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3394, file: !279, line: 292, baseType: !3397, size: 64, offset: 320)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3394, file: !279, line: 293, baseType: !3397, size: 64, offset: 384)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3394, file: !279, line: 294, baseType: !3397, size: 64, offset: 448)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3394, file: !279, line: 295, baseType: !3397, size: 64, offset: 512)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3394, file: !279, line: 296, baseType: !3397, size: 64, offset: 576)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3394, file: !279, line: 297, baseType: !3397, size: 64, offset: 640)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3394, file: !279, line: 298, baseType: !3397, size: 64, offset: 704)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3394, file: !279, line: 299, baseType: !3397, size: 64, offset: 768)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3394, file: !279, line: 300, baseType: !3397, size: 64, offset: 832)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3394, file: !279, line: 301, baseType: !3397, size: 64, offset: 896)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3394, file: !279, line: 302, baseType: !3397, size: 64, offset: 960)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3394, file: !279, line: 303, baseType: !3397, size: 64, offset: 1024)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3394, file: !279, line: 304, baseType: !3397, size: 64, offset: 1088)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3394, file: !279, line: 305, baseType: !3397, size: 64, offset: 1152)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3394, file: !279, line: 306, baseType: !3397, size: 64, offset: 1216)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3394, file: !279, line: 307, baseType: !3397, size: 64, offset: 1280)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3394, file: !279, line: 308, baseType: !3397, size: 64, offset: 1344)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3394, file: !279, line: 309, baseType: !3397, size: 64, offset: 1408)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3361, file: !272, line: 714, baseType: !3423, size: 64, offset: 768)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3425)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3426, line: 80, size: 1344, elements: !3427)
!3426 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3427 = !{!3428, !3429, !3430, !3431, !3432, !3433, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3507}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3425, file: !3426, line: 81, baseType: !102, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3425, file: !3426, line: 82, baseType: !102, size: 64, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3425, file: !3426, line: 83, baseType: !585, size: 64, offset: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3425, file: !3426, line: 84, baseType: !585, size: 64, offset: 192)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3425, file: !3426, line: 85, baseType: !585, size: 64, offset: 256)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3425, file: !3426, line: 87, baseType: !3434, size: 64, offset: 320)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!13, !3360, !3437}
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !266, line: 96, size: 1152, elements: !3439)
!3439 = !{!3440, !3441, !3442, !3443, !3444, !3445, !3446, !3459, !3470, !3471, !3472, !3473, !3474, !3482, !3483, !3484, !3485, !3486, !3487}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3438, file: !266, line: 97, baseType: !102, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3438, file: !266, line: 98, baseType: !3423, size: 64, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3438, file: !266, line: 100, baseType: !486, size: 64, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3438, file: !266, line: 101, baseType: !102, size: 64, offset: 192)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3438, file: !266, line: 103, baseType: !1530, size: 8, offset: 256)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3438, file: !266, line: 104, baseType: !265, size: 32, offset: 288)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3438, file: !266, line: 106, baseType: !3447, size: 64, offset: 320)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3449)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3450, line: 282, size: 1600, elements: !3451)
!3450 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!3451 = !{!3452, !3453, !3454, !3458}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3449, file: !3450, line: 283, baseType: !3, size: 256)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3449, file: !3450, line: 284, baseType: !3, size: 256, offset: 256)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3449, file: !3450, line: 285, baseType: !3455, size: 1024, offset: 512)
!3455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !3456)
!3456 = !{!3457}
!3457 = !DISubrange(count: 128)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3449, file: !3450, line: 286, baseType: !1459, size: 64, offset: 1536)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3438, file: !266, line: 107, baseType: !3460, size: 64, offset: 384)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3462)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3450, line: 217, size: 256, elements: !3463)
!3463 = !{!3464, !3466, !3468, !3469}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3462, file: !3450, line: 218, baseType: !3465, size: 128)
!3465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 128, elements: !1976)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3462, file: !3450, line: 219, baseType: !3467, size: 64, offset: 128)
!3467 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3450, line: 15, baseType: !20)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3462, file: !3450, line: 220, baseType: !683, size: 32, offset: 192)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3462, file: !3450, line: 221, baseType: !683, size: 32, offset: 224)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3438, file: !266, line: 109, baseType: !3397, size: 64, offset: 448)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3438, file: !266, line: 110, baseType: !3388, size: 64, offset: 512)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3438, file: !266, line: 111, baseType: !3397, size: 64, offset: 576)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3438, file: !266, line: 112, baseType: !3388, size: 64, offset: 640)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3438, file: !266, line: 113, baseType: !3475, size: 64, offset: 704)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!13, !3360, !3478}
!3478 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !279, line: 60, baseType: !3479)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !279, line: 58, size: 32, elements: !3480)
!3480 = !{!3481}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3479, file: !279, line: 59, baseType: !13, size: 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3438, file: !266, line: 114, baseType: !3397, size: 64, offset: 768)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3438, file: !266, line: 115, baseType: !585, size: 64, offset: 832)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3438, file: !266, line: 116, baseType: !585, size: 64, offset: 896)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3438, file: !266, line: 118, baseType: !3392, size: 64, offset: 960)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3438, file: !266, line: 119, baseType: !3388, size: 64, offset: 1024)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3438, file: !266, line: 121, baseType: !3488, size: 64, offset: 1088)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !266, line: 121, flags: DIFlagFwdDecl)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3425, file: !3426, line: 88, baseType: !3377, size: 64, offset: 384)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3425, file: !3426, line: 89, baseType: !3397, size: 64, offset: 448)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3425, file: !3426, line: 90, baseType: !3388, size: 64, offset: 512)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3425, file: !3426, line: 91, baseType: !3388, size: 64, offset: 576)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3425, file: !3426, line: 92, baseType: !3388, size: 64, offset: 640)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3425, file: !3426, line: 94, baseType: !3397, size: 64, offset: 704)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3425, file: !3426, line: 95, baseType: !3397, size: 64, offset: 768)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3425, file: !3426, line: 97, baseType: !3475, size: 64, offset: 832)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3425, file: !3426, line: 98, baseType: !3397, size: 64, offset: 896)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3425, file: !3426, line: 100, baseType: !3397, size: 64, offset: 960)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3425, file: !3426, line: 102, baseType: !3397, size: 64, offset: 1024)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3425, file: !3426, line: 103, baseType: !3388, size: 64, offset: 1088)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3425, file: !3426, line: 105, baseType: !3392, size: 64, offset: 1152)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3425, file: !3426, line: 107, baseType: !3504, size: 64, offset: 1216)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3506)
!3506 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3426, line: 107, flags: DIFlagFwdDecl)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3425, file: !3426, line: 109, baseType: !1530, size: 8, offset: 1280)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3361, file: !272, line: 715, baseType: !3437, size: 64, offset: 832)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3361, file: !272, line: 717, baseType: !12, size: 64, offset: 896)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3361, file: !272, line: 719, baseType: !12, size: 64, offset: 960)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3361, file: !272, line: 721, baseType: !889, size: 256, offset: 1024)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3361, file: !272, line: 725, baseType: !3513, size: 448, offset: 1280)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !272, line: 517, size: 448, elements: !3514)
!3514 = !{!3515, !3516, !3517, !3518}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3513, file: !272, line: 518, baseType: !174, size: 128)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3513, file: !272, line: 519, baseType: !174, size: 128, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3513, file: !272, line: 520, baseType: !174, size: 128, offset: 256)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3513, file: !272, line: 521, baseType: !271, size: 32, offset: 384)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3361, file: !272, line: 726, baseType: !3520, size: 2496, offset: 1728)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !279, line: 663, size: 2496, elements: !3521)
!3521 = !{!3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3604, !3608}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3520, file: !279, line: 664, baseType: !3478, size: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3520, file: !279, line: 665, baseType: !81, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3520, file: !279, line: 666, baseType: !81, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3520, file: !279, line: 667, baseType: !1530, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3520, file: !279, line: 668, baseType: !1530, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3520, file: !279, line: 669, baseType: !1530, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3520, file: !279, line: 670, baseType: !1530, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3520, file: !279, line: 671, baseType: !1530, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3520, file: !279, line: 672, baseType: !1530, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3520, file: !279, line: 673, baseType: !1530, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3520, file: !279, line: 674, baseType: !1530, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3520, file: !279, line: 675, baseType: !682, size: 32, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3520, file: !279, line: 676, baseType: !140, size: 32, offset: 96)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3520, file: !279, line: 678, baseType: !174, size: 128, offset: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3520, file: !279, line: 679, baseType: !1684, size: 256, offset: 256)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3520, file: !279, line: 680, baseType: !3538, size: 64, offset: 512)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3540, line: 43, size: 1536, elements: !3541)
!3540 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3541 = !{!3542, !3543, !3544, !3545, !3546, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3539, file: !3540, line: 44, baseType: !102, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3539, file: !3540, line: 45, baseType: !13, size: 32, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3539, file: !3540, line: 46, baseType: !174, size: 128, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3539, file: !3540, line: 47, baseType: !140, size: 32, offset: 256)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3539, file: !3540, line: 48, baseType: !3547, size: 64, offset: 320)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !279, line: 629, flags: DIFlagFwdDecl)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3539, file: !3540, line: 49, baseType: !2454, size: 320, offset: 384)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3539, file: !3540, line: 50, baseType: !20, size: 64, offset: 704)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3539, file: !3540, line: 51, baseType: !1159, size: 64, offset: 768)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3539, file: !3540, line: 52, baseType: !1159, size: 64, offset: 832)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3539, file: !3540, line: 53, baseType: !1159, size: 64, offset: 896)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3539, file: !3540, line: 54, baseType: !1159, size: 64, offset: 960)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3539, file: !3540, line: 55, baseType: !1159, size: 64, offset: 1024)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3539, file: !3540, line: 56, baseType: !20, size: 64, offset: 1088)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3539, file: !3540, line: 57, baseType: !20, size: 64, offset: 1152)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3539, file: !3540, line: 58, baseType: !20, size: 64, offset: 1216)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3539, file: !3540, line: 59, baseType: !20, size: 64, offset: 1280)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3539, file: !3540, line: 60, baseType: !20, size: 64, offset: 1344)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3539, file: !3540, line: 61, baseType: !3360, size: 64, offset: 1408)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3539, file: !3540, line: 62, baseType: !1530, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3539, file: !3540, line: 63, baseType: !1530, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3520, file: !279, line: 681, baseType: !1530, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3520, file: !279, line: 682, baseType: !1530, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3520, file: !279, line: 683, baseType: !1530, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3520, file: !279, line: 684, baseType: !81, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3520, file: !279, line: 685, baseType: !81, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3520, file: !279, line: 690, baseType: !1151, size: 512, offset: 640)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3520, file: !279, line: 691, baseType: !47, size: 64, offset: 1152)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3520, file: !279, line: 692, baseType: !1645, size: 256, offset: 1216)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3520, file: !279, line: 693, baseType: !135, size: 192, offset: 1472)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3520, file: !279, line: 694, baseType: !3547, size: 64, offset: 1664)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3520, file: !279, line: 695, baseType: !130, size: 32, offset: 1728)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3520, file: !279, line: 696, baseType: !130, size: 32, offset: 1760)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3520, file: !279, line: 697, baseType: !81, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3520, file: !279, line: 698, baseType: !81, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3520, file: !279, line: 699, baseType: !81, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3520, file: !279, line: 700, baseType: !81, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3520, file: !279, line: 701, baseType: !81, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3520, file: !279, line: 702, baseType: !81, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3520, file: !279, line: 703, baseType: !1530, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3520, file: !279, line: 704, baseType: !81, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3520, file: !279, line: 705, baseType: !81, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3520, file: !279, line: 706, baseType: !81, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3520, file: !279, line: 707, baseType: !81, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3520, file: !279, line: 708, baseType: !81, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3520, file: !279, line: 709, baseType: !81, size: 32, offset: 1824)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3520, file: !279, line: 710, baseType: !278, size: 32, offset: 1856)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3520, file: !279, line: 711, baseType: !286, size: 32, offset: 1888)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3520, file: !279, line: 712, baseType: !286, size: 32, offset: 1920)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3520, file: !279, line: 713, baseType: !13, size: 32, offset: 1952)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3520, file: !279, line: 714, baseType: !13, size: 32, offset: 1984)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3520, file: !279, line: 715, baseType: !47, size: 64, offset: 2048)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3520, file: !279, line: 716, baseType: !47, size: 64, offset: 2112)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3520, file: !279, line: 717, baseType: !47, size: 64, offset: 2176)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3520, file: !279, line: 718, baseType: !47, size: 64, offset: 2240)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3520, file: !279, line: 720, baseType: !3599, size: 64, offset: 2304)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !279, line: 632, size: 64, elements: !3601)
!3601 = !{!3602, !3603}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3600, file: !279, line: 633, baseType: !140, size: 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3600, file: !279, line: 634, baseType: !81, size: 32, offset: 32)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3520, file: !279, line: 721, baseType: !3605, size: 64, offset: 2368)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{null, !3360, !461}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3520, file: !279, line: 722, baseType: !3609, size: 64, offset: 2432)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !279, line: 722, flags: DIFlagFwdDecl)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3361, file: !272, line: 727, baseType: !3612, size: 64, offset: 4224)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !279, line: 742, size: 1792, elements: !3614)
!3614 = !{!3615, !3616, !3617, !3621, !3622, !3623}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3613, file: !279, line: 743, baseType: !3394, size: 1472)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3613, file: !279, line: 744, baseType: !3397, size: 64, offset: 1472)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3613, file: !279, line: 745, baseType: !3618, size: 64, offset: 1536)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{null, !3360, !1530}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3613, file: !279, line: 746, baseType: !3397, size: 64, offset: 1600)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3613, file: !279, line: 747, baseType: !3388, size: 64, offset: 1664)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3613, file: !279, line: 748, baseType: !3388, size: 64, offset: 1728)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3361, file: !272, line: 736, baseType: !3625, size: 128, offset: 4288)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !272, line: 529, size: 128, elements: !3626)
!3626 = !{!3627, !3631}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3625, file: !272, line: 531, baseType: !3628, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3630, line: 13, flags: DIFlagFwdDecl)
!3630 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3625, file: !272, line: 532, baseType: !3632, size: 64, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !272, line: 49, flags: DIFlagFwdDecl)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3361, file: !272, line: 738, baseType: !3635, size: 64, offset: 4416)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3637)
!3637 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !272, line: 738, flags: DIFlagFwdDecl)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3361, file: !272, line: 740, baseType: !3639, size: 64, offset: 4480)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3361, file: !272, line: 741, baseType: !47, size: 64, offset: 4544)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3361, file: !272, line: 746, baseType: !47, size: 64, offset: 4608)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3361, file: !272, line: 747, baseType: !3643, size: 64, offset: 4672)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3645)
!3645 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !272, line: 747, flags: DIFlagFwdDecl)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3361, file: !272, line: 749, baseType: !3647, size: 64, offset: 4736)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !272, line: 428, size: 128, elements: !3649)
!3649 = !{!3650, !3651, !3652}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3648, file: !272, line: 433, baseType: !81, size: 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3648, file: !272, line: 434, baseType: !81, size: 32, offset: 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3648, file: !272, line: 435, baseType: !20, size: 64, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3361, file: !272, line: 751, baseType: !174, size: 128, offset: 4800)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3361, file: !272, line: 762, baseType: !3655, size: 64, offset: 4928)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !272, line: 762, flags: DIFlagFwdDecl)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3361, file: !272, line: 770, baseType: !3658, offset: 4992)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3659, line: 5, elements: !809)
!3659 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3361, file: !272, line: 772, baseType: !3661, size: 64, offset: 4992)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3663, line: 48, size: 1152, elements: !3664)
!3663 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!3664 = !{!3665, !3666, !3668, !3669, !3773, !3781, !3782, !3783, !3784, !3785, !3786}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3662, file: !3663, line: 49, baseType: !102, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3662, file: !3663, line: 50, baseType: !3667, size: 32, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3663, line: 25, baseType: !682)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3662, file: !3663, line: 51, baseType: !102, size: 64, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3662, file: !3663, line: 52, baseType: !3670, size: 512, offset: 192)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3671, line: 41, size: 512, elements: !3672)
!3671 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3672 = !{!3673, !3675, !3769, !3770, !3771, !3772}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3670, file: !3671, line: 42, baseType: !3674, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3670, file: !3671, line: 43, baseType: !3676, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3678)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3671, line: 125, size: 1408, elements: !3679)
!3679 = !{!3680, !3684, !3688, !3694, !3698, !3699, !3703, !3707, !3711, !3716, !3720, !3721, !3725, !3729, !3733, !3744, !3745, !3746, !3747, !3757, !3761, !3765}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3678, file: !3671, line: 126, baseType: !3681, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!3674, !3674}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3678, file: !3671, line: 127, baseType: !3685, size: 64, offset: 64)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{null, !3674}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3678, file: !3671, line: 128, baseType: !3689, size: 64, offset: 128)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!1530, !3692}
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3670)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3678, file: !3671, line: 129, baseType: !3695, size: 64, offset: 192)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!1459, !3692, !3380}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3678, file: !3671, line: 131, baseType: !3689, size: 64, offset: 256)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3678, file: !3671, line: 133, baseType: !3700, size: 64, offset: 320)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!293, !3692}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3678, file: !3671, line: 134, baseType: !3704, size: 64, offset: 384)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!1530, !3692, !102}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3678, file: !3671, line: 136, baseType: !3708, size: 64, offset: 448)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!13, !3692, !102, !81, !12, !117}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3678, file: !3671, line: 141, baseType: !3712, size: 64, offset: 512)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!13, !3692, !102, !3715, !117}
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3678, file: !3671, line: 144, baseType: !3717, size: 64, offset: 576)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!102, !3692}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3678, file: !3671, line: 145, baseType: !3717, size: 64, offset: 640)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3678, file: !3671, line: 146, baseType: !3722, size: 64, offset: 704)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!3674, !3692}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3678, file: !3671, line: 148, baseType: !3726, size: 64, offset: 768)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!3674, !3692, !3674}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3678, file: !3671, line: 151, baseType: !3730, size: 64, offset: 832)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!3674, !3692, !102}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3678, file: !3671, line: 153, baseType: !3734, size: 64, offset: 896)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!13, !3692, !102, !102, !81, !81, !3737}
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3671, line: 94, size: 640, elements: !3739)
!3739 = !{!3740, !3741, !3742}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3738, file: !3671, line: 95, baseType: !3674, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3738, file: !3671, line: 96, baseType: !81, size: 32, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3738, file: !3671, line: 97, baseType: !3743, size: 512, offset: 128)
!3743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 512, elements: !1194)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3678, file: !3671, line: 158, baseType: !3726, size: 64, offset: 960)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3678, file: !3671, line: 161, baseType: !3722, size: 64, offset: 1024)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3678, file: !3671, line: 163, baseType: !3681, size: 64, offset: 1088)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3678, file: !3671, line: 164, baseType: !3748, size: 64, offset: 1152)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!13, !3692, !3751}
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3671, line: 73, size: 128, elements: !3753)
!3753 = !{!3754, !3755, !3756}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3752, file: !3671, line: 74, baseType: !81, size: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3752, file: !3671, line: 75, baseType: !81, size: 32, offset: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3752, file: !3671, line: 76, baseType: !3692, size: 64, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3678, file: !3671, line: 166, baseType: !3758, size: 64, offset: 1216)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!12, !3674, !13}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3678, file: !3671, line: 167, baseType: !3762, size: 64, offset: 1280)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!13, !3692, !81}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3678, file: !3671, line: 168, baseType: !3766, size: 64, offset: 1344)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!13, !3674}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3670, file: !3671, line: 44, baseType: !3360, size: 64, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3670, file: !3671, line: 45, baseType: !174, size: 128, offset: 192)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3670, file: !3671, line: 46, baseType: !174, size: 128, offset: 320)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3670, file: !3671, line: 47, baseType: !164, size: 8, offset: 448)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3662, file: !3663, line: 54, baseType: !3774, size: 64, offset: 704)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3663, line: 28, size: 256, elements: !3776)
!3776 = !{!3777, !3778, !3779, !3780}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3775, file: !3663, line: 29, baseType: !540, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3775, file: !3663, line: 30, baseType: !13, size: 32, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3775, file: !3663, line: 31, baseType: !12, size: 64, offset: 128)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3775, file: !3663, line: 32, baseType: !3774, size: 64, offset: 192)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3662, file: !3663, line: 55, baseType: !3774, size: 64, offset: 768)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3662, file: !3663, line: 56, baseType: !3661, size: 64, offset: 832)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3662, file: !3663, line: 57, baseType: !3661, size: 64, offset: 896)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3662, file: !3663, line: 58, baseType: !3661, size: 64, offset: 960)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3662, file: !3663, line: 62, baseType: !20, size: 64, offset: 1024)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3662, file: !3663, line: 63, baseType: !12, size: 64, offset: 1088)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3361, file: !272, line: 773, baseType: !3674, size: 64, offset: 5056)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3361, file: !272, line: 776, baseType: !13, size: 32, offset: 5120)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3361, file: !272, line: 778, baseType: !764, size: 32, offset: 5152)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3361, file: !272, line: 779, baseType: !682, size: 32, offset: 5184)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3361, file: !272, line: 781, baseType: !140, size: 32, offset: 5216)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3361, file: !272, line: 782, baseType: !174, size: 128, offset: 5248)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3361, file: !272, line: 784, baseType: !3794, size: 64, offset: 5376)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3796)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3797, line: 52, size: 768, elements: !3798)
!3797 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3798 = !{!3799, !3800, !3801, !3802, !3803, !3807, !3811, !3812, !3813, !3841, !3845, !3849}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3796, file: !3797, line: 53, baseType: !102, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3796, file: !3797, line: 55, baseType: !585, size: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3796, file: !3797, line: 56, baseType: !585, size: 64, offset: 128)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3796, file: !3797, line: 58, baseType: !3377, size: 64, offset: 192)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3796, file: !3797, line: 59, baseType: !3804, size: 64, offset: 256)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!540, !3380, !3386}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3796, file: !3797, line: 61, baseType: !3808, size: 64, offset: 320)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{null, !3794}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3796, file: !3797, line: 62, baseType: !3388, size: 64, offset: 384)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3796, file: !3797, line: 64, baseType: !3397, size: 64, offset: 448)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3796, file: !3797, line: 66, baseType: !3814, size: 64, offset: 512)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3816)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !243, line: 39, size: 384, elements: !3817)
!3817 = !{!3818, !3819, !3823, !3827, !3833, !3837}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3816, file: !243, line: 40, baseType: !242, size: 32)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3816, file: !243, line: 41, baseType: !3820, size: 64, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!1530}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3816, file: !243, line: 42, baseType: !3824, size: 64, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!12}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3816, file: !243, line: 43, baseType: !3828, size: 64, offset: 192)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!1459, !3831}
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !243, line: 19, flags: DIFlagFwdDecl)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3816, file: !243, line: 44, baseType: !3834, size: 64, offset: 256)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!1459}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3816, file: !243, line: 45, baseType: !3838, size: 64, offset: 320)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{null, !12}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3796, file: !3797, line: 67, baseType: !3842, size: 64, offset: 576)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!1459, !3380}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3796, file: !3797, line: 69, baseType: !3846, size: 64, offset: 640)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{null, !3380, !1709, !1710}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3796, file: !3797, line: 71, baseType: !3392, size: 64, offset: 704)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3361, file: !272, line: 785, baseType: !585, size: 64, offset: 5440)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3361, file: !272, line: 787, baseType: !3388, size: 64, offset: 5504)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3361, file: !272, line: 788, baseType: !3853, size: 64, offset: 5568)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !272, line: 46, flags: DIFlagFwdDecl)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3361, file: !272, line: 789, baseType: !3856, size: 64, offset: 5632)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !272, line: 48, flags: DIFlagFwdDecl)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3361, file: !272, line: 791, baseType: !3859, size: 64, offset: 5696)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !272, line: 597, size: 128, elements: !3861)
!3861 = !{!3862, !3863, !3864, !3865, !3866}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3860, file: !272, line: 598, baseType: !299, size: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3860, file: !272, line: 599, baseType: !308, size: 32, offset: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3860, file: !272, line: 600, baseType: !313, size: 32, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3860, file: !272, line: 601, baseType: !1530, size: 8, offset: 96)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3860, file: !272, line: 602, baseType: !1530, size: 8, offset: 104)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3361, file: !272, line: 793, baseType: !318, size: 32, offset: 5760)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3361, file: !272, line: 795, baseType: !1530, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3361, file: !272, line: 796, baseType: !1530, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3361, file: !272, line: 797, baseType: !1530, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3361, file: !272, line: 798, baseType: !1530, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3361, file: !272, line: 799, baseType: !1530, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3355, file: !325, line: 307, baseType: !3360, size: 64, offset: 256)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !3355, file: !325, line: 308, baseType: !585, size: 64, offset: 320)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !3355, file: !325, line: 309, baseType: !585, size: 64, offset: 384)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3355, file: !325, line: 310, baseType: !102, size: 64, offset: 448)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3355, file: !325, line: 311, baseType: !13, size: 32, offset: 512)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3355, file: !325, line: 316, baseType: !13, size: 32, offset: 544)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !3355, file: !325, line: 318, baseType: !76, size: 64, offset: 576)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !3355, file: !325, line: 319, baseType: !3881, size: 64, offset: 640)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !325, line: 977, size: 1856, elements: !3883)
!3883 = !{!3884, !3899, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3882, file: !325, line: 978, baseType: !3885, size: 896)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !325, line: 873, size: 896, elements: !3886)
!3886 = !{!3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3885, file: !325, line: 874, baseType: !3354, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3885, file: !325, line: 875, baseType: !3100, size: 64, offset: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3885, file: !325, line: 877, baseType: !174, size: 128, offset: 128)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3885, file: !325, line: 879, baseType: !174, size: 128, offset: 256)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3885, file: !325, line: 880, baseType: !174, size: 128, offset: 384)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3885, file: !325, line: 883, baseType: !81, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3885, file: !325, line: 885, baseType: !81, size: 32, offset: 544)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3885, file: !325, line: 886, baseType: !81, size: 32, offset: 576)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3885, file: !325, line: 888, baseType: !130, size: 32, offset: 608)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3885, file: !325, line: 889, baseType: !946, size: 128, align: 64, offset: 640)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3885, file: !325, line: 891, baseType: !12, size: 64, offset: 768)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3885, file: !325, line: 898, baseType: !13, size: 32, offset: 832)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3882, file: !325, line: 979, baseType: !3900, size: 64, offset: 896)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3882, file: !325, line: 981, baseType: !174, size: 128, offset: 960)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3882, file: !325, line: 982, baseType: !13, size: 32, offset: 1088)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3882, file: !325, line: 984, baseType: !13, size: 32, offset: 1120)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3882, file: !325, line: 985, baseType: !13, size: 32, offset: 1152)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3882, file: !325, line: 987, baseType: !902, size: 32, offset: 1184)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3882, file: !325, line: 988, baseType: !1151, size: 512, offset: 1216)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3882, file: !325, line: 989, baseType: !1159, size: 64, offset: 1728)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3882, file: !325, line: 990, baseType: !81, size: 32, offset: 1792)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !3355, file: !325, line: 320, baseType: !130, size: 32, offset: 704)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !3355, file: !325, line: 321, baseType: !13, size: 32, offset: 736)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !3355, file: !325, line: 322, baseType: !13, size: 32, offset: 768)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !3355, file: !325, line: 325, baseType: !81, size: 32, offset: 800)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !3355, file: !325, line: 331, baseType: !3914, size: 64, offset: 832)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{null, !3354}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !3355, file: !325, line: 332, baseType: !3914, size: 64, offset: 896)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !3355, file: !325, line: 350, baseType: !3919, size: 64, offset: 960)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!13, !3337}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !3355, file: !325, line: 356, baseType: !3923, size: 64, offset: 1024)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{null, !3337, !1327}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !3355, file: !325, line: 357, baseType: !3923, size: 64, offset: 1088)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3355, file: !325, line: 385, baseType: !3928, size: 64, offset: 1152)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!13, !3337, !13}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !3355, file: !325, line: 386, baseType: !3932, size: 64, offset: 1216)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{null, !3337, !13}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3355, file: !325, line: 406, baseType: !3932, size: 64, offset: 1280)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3355, file: !325, line: 407, baseType: !3932, size: 64, offset: 1344)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3355, file: !325, line: 415, baseType: !3938, size: 64, offset: 1408)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{null, !3337}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !3355, file: !325, line: 427, baseType: !3942, size: 64, offset: 1472)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{null, !3354, !81}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !3355, file: !325, line: 436, baseType: !3946, size: 64, offset: 1536)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!13, !3354}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !3355, file: !325, line: 443, baseType: !3914, size: 64, offset: 1600)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !3355, file: !325, line: 450, baseType: !3919, size: 64, offset: 1664)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !3355, file: !325, line: 455, baseType: !3952, size: 64, offset: 1728)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{null, !3900, !1530}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !3355, file: !325, line: 461, baseType: !3956, size: 64, offset: 1792)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3958, line: 11, flags: DIFlagFwdDecl)
!3958 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !3355, file: !325, line: 469, baseType: !3960, size: 64, offset: 1856)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{null, !3900, !3900}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !3355, file: !325, line: 476, baseType: !3964, size: 64, offset: 1920)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!12, !3337, !3967, !13, !1530}
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !3355, file: !325, line: 483, baseType: !3838, size: 64, offset: 1984)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !3355, file: !325, line: 494, baseType: !3970, size: 64, offset: 2048)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!465, !3337, !3973, !20}
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !325, line: 1014, size: 448, elements: !3975)
!3975 = !{!3976, !3977, !3980, !3981, !3982, !3983, !3988}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3974, file: !325, line: 1015, baseType: !3337, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3974, file: !325, line: 1016, baseType: !3978, size: 64, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !325, line: 641, flags: DIFlagFwdDecl)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3974, file: !325, line: 1017, baseType: !20, size: 64, offset: 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3974, file: !325, line: 1018, baseType: !20, size: 64, offset: 192)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3974, file: !325, line: 1019, baseType: !47, size: 64, offset: 256)
!3983 = !DIDerivedType(tag: DW_TAG_member, scope: !3974, file: !325, line: 1020, baseType: !3984, size: 64, offset: 320)
!3984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3974, file: !325, line: 1020, size: 64, elements: !3985)
!3985 = !{!3986, !3987}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3984, file: !325, line: 1021, baseType: !12, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3984, file: !325, line: 1022, baseType: !20, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3974, file: !325, line: 1024, baseType: !13, size: 32, offset: 384)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !3355, file: !325, line: 506, baseType: !3990, size: 64, offset: 2112)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!13, !177}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !3355, file: !325, line: 520, baseType: !3938, size: 64, offset: 2176)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !3355, file: !325, line: 530, baseType: !3919, size: 64, offset: 2240)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3355, file: !325, line: 537, baseType: !3996, size: 64, offset: 2304)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!1530, !3354, !13}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !3355, file: !325, line: 542, baseType: !4000, size: 64, offset: 2368)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!13, !3337, !47}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !3338, file: !325, line: 715, baseType: !12, size: 64, offset: 1280)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3338, file: !325, line: 717, baseType: !324, size: 32, offset: 1344)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !3338, file: !325, line: 718, baseType: !81, size: 32, offset: 1376)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3338, file: !325, line: 719, baseType: !4007, size: 64, offset: 1408)
!4007 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !4008, line: 26, baseType: !4009)
!4008 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4008, line: 24, size: 64, elements: !4010)
!4010 = !{!4011}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !4009, file: !4008, line: 25, baseType: !3132, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3338, file: !325, line: 720, baseType: !895, size: 64, offset: 1472)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !3338, file: !325, line: 728, baseType: !47, size: 64, offset: 1536)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !3338, file: !325, line: 729, baseType: !47, size: 64, offset: 1600)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !3338, file: !325, line: 730, baseType: !47, size: 64, offset: 1664)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3338, file: !325, line: 732, baseType: !4017, size: 1088, offset: 1728)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !353, line: 385, size: 1088, elements: !4018)
!4018 = !{!4019, !4020, !4021, !4022, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4072, !4073, !4080, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4017, file: !353, line: 390, baseType: !683, size: 32)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4017, file: !353, line: 395, baseType: !683, size: 32, offset: 32)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4017, file: !353, line: 400, baseType: !48, size: 64, offset: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, scope: !4017, file: !353, line: 402, baseType: !4023, size: 64, offset: 128)
!4023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4017, file: !353, line: 402, size: 64, elements: !4024)
!4024 = !{!4025, !4026}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !4023, file: !353, line: 403, baseType: !48, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !4023, file: !353, line: 404, baseType: !48, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !4017, file: !353, line: 407, baseType: !48, size: 64, offset: 192)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !4017, file: !353, line: 408, baseType: !48, size: 64, offset: 256)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !4017, file: !353, line: 410, baseType: !48, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !4017, file: !353, line: 411, baseType: !48, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !4017, file: !353, line: 412, baseType: !48, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !4017, file: !353, line: 413, baseType: !48, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !4017, file: !353, line: 414, baseType: !48, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !4017, file: !353, line: 415, baseType: !48, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !4017, file: !353, line: 416, baseType: !48, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !4017, file: !353, line: 417, baseType: !48, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4017, file: !353, line: 418, baseType: !48, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !4017, file: !353, line: 419, baseType: !48, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4017, file: !353, line: 420, baseType: !48, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !4017, file: !353, line: 421, baseType: !48, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !4017, file: !353, line: 422, baseType: !48, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4017, file: !353, line: 423, baseType: !48, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !4017, file: !353, line: 424, baseType: !48, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !4017, file: !353, line: 435, baseType: !48, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !4017, file: !353, line: 436, baseType: !48, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !4017, file: !353, line: 437, baseType: !48, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !4017, file: !353, line: 439, baseType: !48, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !4017, file: !353, line: 440, baseType: !48, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !4017, file: !353, line: 442, baseType: !48, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !4017, file: !353, line: 443, baseType: !48, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !4017, file: !353, line: 444, baseType: !48, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !4017, file: !353, line: 445, baseType: !48, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !4017, file: !353, line: 446, baseType: !48, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !4017, file: !353, line: 447, baseType: !48, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !4017, file: !353, line: 448, baseType: !48, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !4017, file: !353, line: 449, baseType: !48, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !4017, file: !353, line: 450, baseType: !48, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !4017, file: !353, line: 451, baseType: !48, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !4017, file: !353, line: 452, baseType: !48, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4017, file: !353, line: 453, baseType: !48, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !4017, file: !353, line: 454, baseType: !48, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !4017, file: !353, line: 455, baseType: !48, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !4017, file: !353, line: 456, baseType: !48, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !4017, file: !353, line: 457, baseType: !48, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !4017, file: !353, line: 458, baseType: !48, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !4017, file: !353, line: 459, baseType: !48, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!4067 = !DIDerivedType(tag: DW_TAG_member, scope: !4017, file: !353, line: 461, baseType: !4068, size: 32, offset: 384)
!4068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4017, file: !353, line: 461, size: 32, elements: !4069)
!4069 = !{!4070, !4071}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !4068, file: !353, line: 462, baseType: !683, size: 32)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !4068, file: !353, line: 463, baseType: !683, size: 32)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !4017, file: !353, line: 466, baseType: !683, size: 32, offset: 416)
!4073 = !DIDerivedType(tag: DW_TAG_member, scope: !4017, file: !353, line: 467, baseType: !4074, size: 64, offset: 448)
!4074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4017, file: !353, line: 467, size: 64, elements: !4075)
!4075 = !{!4076, !4077, !4078, !4079}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !4074, file: !353, line: 468, baseType: !48, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !4074, file: !353, line: 469, baseType: !48, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !4074, file: !353, line: 470, baseType: !48, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !4074, file: !353, line: 471, baseType: !48, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, scope: !4017, file: !353, line: 473, baseType: !4081, size: 64, offset: 512)
!4081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4017, file: !353, line: 473, size: 64, elements: !4082)
!4082 = !{!4083, !4084, !4085, !4086}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !4081, file: !353, line: 474, baseType: !48, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !4081, file: !353, line: 475, baseType: !48, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !4081, file: !353, line: 476, baseType: !48, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !4081, file: !353, line: 477, baseType: !48, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !4017, file: !353, line: 479, baseType: !48, size: 64, offset: 576)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !4017, file: !353, line: 485, baseType: !48, size: 64, offset: 640)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !4017, file: !353, line: 490, baseType: !683, size: 32, offset: 704)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4017, file: !353, line: 492, baseType: !462, size: 32, offset: 736)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !4017, file: !353, line: 501, baseType: !48, size: 64, offset: 768)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !4017, file: !353, line: 506, baseType: !683, size: 32, offset: 832)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !4017, file: !353, line: 507, baseType: !43, size: 16, offset: 864)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !4017, file: !353, line: 508, baseType: !43, size: 16, offset: 880)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !4017, file: !353, line: 509, baseType: !683, size: 32, offset: 896)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !4017, file: !353, line: 510, baseType: !683, size: 32, offset: 928)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !4017, file: !353, line: 518, baseType: !48, size: 64, offset: 960)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !4017, file: !353, line: 520, baseType: !48, size: 64, offset: 1024)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !3338, file: !325, line: 733, baseType: !41, size: 16, offset: 2816)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !3338, file: !325, line: 734, baseType: !41, size: 16, offset: 2832)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !3338, file: !325, line: 735, baseType: !41, size: 16, offset: 2848)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !3338, file: !325, line: 736, baseType: !4103, size: 1536, offset: 2880)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !325, line: 155, size: 1536, elements: !4104)
!4104 = !{!4105, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4189, !4190, !4191, !4192}
!4105 = !DIDerivedType(tag: DW_TAG_member, scope: !4103, file: !325, line: 157, baseType: !4106, size: 768)
!4106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4103, file: !325, line: 157, size: 768, elements: !4107)
!4107 = !{!4108, !4127, !4131, !4135, !4140, !4162}
!4108 = !DIDerivedType(tag: DW_TAG_member, scope: !4106, file: !325, line: 158, baseType: !4109, size: 768)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4106, file: !325, line: 158, size: 768, elements: !4110)
!4110 = !{!4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4126}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4109, file: !325, line: 159, baseType: !47, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !4109, file: !325, line: 160, baseType: !47, size: 64, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !4109, file: !325, line: 161, baseType: !20, size: 64, offset: 128)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !4109, file: !325, line: 162, baseType: !20, size: 64, offset: 192)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !4109, file: !325, line: 163, baseType: !13, size: 32, offset: 256)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4109, file: !325, line: 164, baseType: !13, size: 32, offset: 288)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4109, file: !325, line: 165, baseType: !13, size: 32, offset: 320)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4109, file: !325, line: 166, baseType: !13, size: 32, offset: 352)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !4109, file: !325, line: 168, baseType: !4120, size: 192, offset: 384)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !325, line: 134, size: 192, elements: !4121)
!4121 = !{!4122, !4123, !4124, !4125}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4120, file: !325, line: 135, baseType: !47, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4120, file: !325, line: 136, baseType: !81, size: 32, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4120, file: !325, line: 137, baseType: !13, size: 32, offset: 96)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4120, file: !325, line: 138, baseType: !13, size: 32, offset: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !4109, file: !325, line: 169, baseType: !4120, size: 192, offset: 576)
!4127 = !DIDerivedType(tag: DW_TAG_member, scope: !4106, file: !325, line: 171, baseType: !4128, size: 512)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4106, file: !325, line: 171, size: 512, elements: !4129)
!4129 = !{!4130}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !4128, file: !325, line: 172, baseType: !1151, size: 512)
!4131 = !DIDerivedType(tag: DW_TAG_member, scope: !4106, file: !325, line: 174, baseType: !4132, size: 128)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4106, file: !325, line: 174, size: 128, elements: !4133)
!4133 = !{!4134}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !4132, file: !325, line: 176, baseType: !174, size: 128)
!4135 = !DIDerivedType(tag: DW_TAG_member, scope: !4106, file: !325, line: 178, baseType: !4136, size: 128)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4106, file: !325, line: 178, size: 128, elements: !4137)
!4137 = !{!4138, !4139}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !4136, file: !325, line: 179, baseType: !47, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !4136, file: !325, line: 180, baseType: !47, size: 64, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, scope: !4106, file: !325, line: 183, baseType: !4141, size: 320)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4106, file: !325, line: 183, size: 320, elements: !4142)
!4142 = !{!4143, !4151}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4141, file: !325, line: 189, baseType: !4144, size: 192)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !4145, line: 14, size: 192, elements: !4146)
!4145 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!4146 = !{!4147, !4148, !4149, !4150}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4144, file: !4145, line: 15, baseType: !20, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4144, file: !4145, line: 16, baseType: !20, size: 64, offset: 64)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4144, file: !4145, line: 17, baseType: !164, size: 8, offset: 128)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4144, file: !4145, line: 18, baseType: !164, size: 8, offset: 136)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !4141, file: !325, line: 190, baseType: !4152, size: 128, offset: 192)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !4153, line: 21, size: 128, elements: !4154)
!4153 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!4154 = !{!4155, !4160}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !4152, file: !4153, line: 22, baseType: !4156, size: 64)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !4153, line: 17, size: 64, elements: !4157)
!4157 = !{!4158}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4156, file: !4153, line: 18, baseType: !4159, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4152, file: !4153, line: 23, baseType: !4161, size: 64, offset: 64)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, scope: !4106, file: !325, line: 193, baseType: !4163, size: 192)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4106, file: !325, line: 193, size: 192, elements: !4164)
!4164 = !{!4165, !4166, !4167, !4168, !4169}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !4163, file: !325, line: 194, baseType: !164, size: 8)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !4163, file: !325, line: 195, baseType: !164, size: 8, offset: 8)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4163, file: !325, line: 196, baseType: !41, size: 16, offset: 16)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !4163, file: !325, line: 197, baseType: !47, size: 64, offset: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !4163, file: !325, line: 198, baseType: !47, size: 64, offset: 128)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4103, file: !325, line: 205, baseType: !1032, size: 64, offset: 768)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !4103, file: !325, line: 211, baseType: !12, size: 64, offset: 832)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !4103, file: !325, line: 214, baseType: !20, size: 64, offset: 896)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4103, file: !325, line: 223, baseType: !13, size: 32, offset: 960)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !4103, file: !325, line: 229, baseType: !4007, size: 64, offset: 1024)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !4103, file: !325, line: 234, baseType: !47, size: 64, offset: 1088)
!4176 = !DIDerivedType(tag: DW_TAG_member, scope: !4103, file: !325, line: 236, baseType: !4177, size: 128, offset: 1152)
!4177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4103, file: !325, line: 236, size: 128, elements: !4178)
!4178 = !{!4179, !4184}
!4179 = !DIDerivedType(tag: DW_TAG_member, scope: !4177, file: !325, line: 237, baseType: !4180, size: 128)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4177, file: !325, line: 237, size: 128, elements: !4181)
!4181 = !{!4182, !4183}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !4180, file: !325, line: 241, baseType: !47, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !4180, file: !325, line: 249, baseType: !4007, size: 64, offset: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, scope: !4177, file: !325, line: 251, baseType: !4185, size: 128)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4177, file: !325, line: 251, size: 128, elements: !4186)
!4186 = !{!4187, !4188}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !4185, file: !325, line: 252, baseType: !47, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !4185, file: !325, line: 253, baseType: !47, size: 64, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !4103, file: !325, line: 261, baseType: !47, size: 64, offset: 1280)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !4103, file: !325, line: 262, baseType: !47, size: 64, offset: 1344)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !4103, file: !325, line: 268, baseType: !47, size: 64, offset: 1408)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !4103, file: !325, line: 269, baseType: !47, size: 64, offset: 1472)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3338, file: !325, line: 738, baseType: !3100, size: 64, offset: 4416)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !3338, file: !325, line: 744, baseType: !3900, size: 64, offset: 4480)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3338, file: !325, line: 745, baseType: !893, size: 64, offset: 4544)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !3338, file: !325, line: 751, baseType: !895, size: 64, offset: 4608)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !3338, file: !325, line: 752, baseType: !895, size: 64, offset: 4672)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !3338, file: !325, line: 757, baseType: !889, size: 256, offset: 4736)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !3338, file: !325, line: 758, baseType: !174, size: 128, offset: 4992)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3338, file: !325, line: 759, baseType: !3337, size: 64, offset: 5120)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !3338, file: !325, line: 761, baseType: !13, size: 32, offset: 5184)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3338, file: !325, line: 762, baseType: !13, size: 32, offset: 5216)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !3338, file: !325, line: 764, baseType: !174, size: 128, offset: 5248)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3338, file: !325, line: 765, baseType: !1032, size: 64, offset: 5376)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !3338, file: !325, line: 768, baseType: !889, size: 256, offset: 5440)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !3338, file: !325, line: 769, baseType: !130, size: 32, offset: 5696)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3338, file: !325, line: 771, baseType: !3978, size: 64, offset: 5760)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !3338, file: !325, line: 772, baseType: !174, size: 128, offset: 5824)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !3338, file: !325, line: 773, baseType: !20, size: 64, offset: 5952)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !3338, file: !325, line: 774, baseType: !13, size: 32, offset: 6016)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !3338, file: !325, line: 777, baseType: !135, size: 192, offset: 6080)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3338, file: !325, line: 778, baseType: !4213, size: 64, offset: 6272)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !88, line: 1083, size: 384, elements: !4215)
!4215 = !{!4216, !4217, !4218, !4219, !4220, !4221}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4214, file: !88, line: 1084, baseType: !966, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4214, file: !88, line: 1085, baseType: !13, size: 32, offset: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4214, file: !88, line: 1086, baseType: !13, size: 32, offset: 96)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4214, file: !88, line: 1087, baseType: !4213, size: 64, offset: 128)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4214, file: !88, line: 1088, baseType: !1354, size: 64, offset: 192)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4214, file: !88, line: 1089, baseType: !946, size: 128, align: 64, offset: 256)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !3338, file: !325, line: 781, baseType: !81, size: 32, offset: 6336)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !3338, file: !325, line: 782, baseType: !81, size: 32, offset: 6368)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !3338, file: !325, line: 783, baseType: !81, size: 32, offset: 6400)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !3338, file: !325, line: 784, baseType: !81, size: 32, offset: 6432)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !3338, file: !325, line: 785, baseType: !20, size: 64, offset: 6464)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !3338, file: !325, line: 786, baseType: !4228, size: 256, offset: 6528)
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !4229, line: 17, size: 256, elements: !4230)
!4229 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!4230 = !{!4231, !4232, !4237}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4228, file: !4229, line: 18, baseType: !1051, size: 128)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4228, file: !4229, line: 19, baseType: !4233, size: 64, offset: 128)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{null, !4236}
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !4228, file: !4229, line: 20, baseType: !4238, size: 64, offset: 192)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4239, line: 16, size: 64, elements: !4240)
!4239 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4240 = !{!4241}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4238, file: !4239, line: 17, baseType: !1032, size: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !3338, file: !325, line: 787, baseType: !946, size: 128, align: 64, offset: 6784)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !3338, file: !325, line: 788, baseType: !81, size: 32, offset: 6912)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !3338, file: !325, line: 789, baseType: !4238, size: 64, offset: 6976)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !3338, file: !325, line: 791, baseType: !130, size: 32, offset: 7040)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3338, file: !325, line: 794, baseType: !4247, size: 192, offset: 7104)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !325, line: 579, size: 192, elements: !4248)
!4248 = !{!4249, !4250, !4251}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4247, file: !325, line: 580, baseType: !174, size: 128)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4247, file: !325, line: 581, baseType: !902, size: 32, offset: 128)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !4247, file: !325, line: 582, baseType: !81, size: 32, offset: 160)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !3338, file: !325, line: 796, baseType: !4253, size: 64, offset: 7296)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !325, line: 585, size: 128, elements: !4255)
!4255 = !{!4256, !4257}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4254, file: !325, line: 586, baseType: !20, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4254, file: !325, line: 587, baseType: !20, size: 64, offset: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3338, file: !325, line: 797, baseType: !20, size: 64, offset: 7360)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !3338, file: !325, line: 800, baseType: !3337, size: 64, offset: 7424)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3338, file: !325, line: 802, baseType: !3938, size: 64, offset: 7488)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3338, file: !325, line: 803, baseType: !946, size: 128, align: 64, offset: 7552)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3338, file: !325, line: 805, baseType: !1011, size: 64, offset: 7680)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3338, file: !325, line: 806, baseType: !47, size: 64, offset: 7744)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !3338, file: !325, line: 808, baseType: !895, size: 64, offset: 7808)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !3338, file: !325, line: 810, baseType: !4266, size: 64, offset: 7872)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!47}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !3338, file: !325, line: 811, baseType: !4270, size: 64, offset: 7936)
!4270 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !325, line: 605, baseType: !4271)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{null, !3337, !4274, !15}
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !325, line: 1148, size: 2048, align: 512, elements: !4276)
!4276 = !{!4277, !4278, !4279, !4280, !4281, !4286, !4287, !4288, !4293, !4294, !4301, !4322, !4344, !4354, !4372, !4373, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !4275, file: !325, line: 1153, baseType: !47, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4275, file: !325, line: 1154, baseType: !47, size: 64, offset: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !4275, file: !325, line: 1155, baseType: !47, size: 64, offset: 128)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4275, file: !325, line: 1161, baseType: !47, size: 64, offset: 192)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !4275, file: !325, line: 1165, baseType: !4282, size: 64, offset: 256)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4275, file: !325, line: 1162, size: 64, elements: !4283)
!4283 = !{!4284, !4285}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4282, file: !325, line: 1163, baseType: !682, size: 32)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !4282, file: !325, line: 1164, baseType: !682, size: 32, offset: 32)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4275, file: !325, line: 1166, baseType: !47, size: 64, offset: 320)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4275, file: !325, line: 1167, baseType: !47, size: 64, offset: 384)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !4275, file: !325, line: 1171, baseType: !4289, size: 64, offset: 448)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4275, file: !325, line: 1168, size: 64, elements: !4290)
!4290 = !{!4291, !4292}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4289, file: !325, line: 1169, baseType: !682, size: 32)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4289, file: !325, line: 1170, baseType: !682, size: 32, offset: 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4275, file: !325, line: 1177, baseType: !47, size: 64, offset: 512)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !4275, file: !325, line: 1178, baseType: !4295, size: 64, offset: 576)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !325, line: 67, size: 64, elements: !4297)
!4297 = !{!4298, !4299}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4296, file: !325, line: 68, baseType: !48, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4296, file: !325, line: 69, baseType: !4300, offset: 64)
!4300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, elements: !1761)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4275, file: !325, line: 1179, baseType: !4302, size: 64, offset: 640)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !325, line: 93, size: 256, elements: !4304)
!4304 = !{!4305, !4321}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !4303, file: !325, line: 94, baseType: !4306, size: 224)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !325, line: 83, size: 224, elements: !4307)
!4307 = !{!4308, !4314, !4319, !4320}
!4308 = !DIDerivedType(tag: DW_TAG_member, scope: !4306, file: !325, line: 84, baseType: !4309, size: 64)
!4309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4306, file: !325, line: 84, size: 64, elements: !4310)
!4310 = !{!4311, !4313}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4309, file: !325, line: 85, baseType: !4312, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4309, file: !325, line: 86, baseType: !20, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !4306, file: !325, line: 88, baseType: !4315, size: 64, offset: 64)
!4315 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !325, line: 80, baseType: !4316)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!20, !12, !1459, !20, !20}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4306, file: !325, line: 89, baseType: !12, size: 64, offset: 128)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4306, file: !325, line: 90, baseType: !682, size: 32, offset: 192)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4303, file: !325, line: 95, baseType: !682, size: 32, offset: 224)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !4275, file: !325, line: 1180, baseType: !4323, size: 64, offset: 704)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !325, line: 123, size: 128, elements: !4325)
!4325 = !{!4326, !4327, !4328}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4324, file: !325, line: 124, baseType: !48, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !4324, file: !325, line: 125, baseType: !48, size: 64, offset: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4324, file: !325, line: 126, baseType: !4329, offset: 128)
!4329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4330, elements: !1761)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !353, line: 1415, size: 192, elements: !4331)
!4331 = !{!4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !4330, file: !353, line: 1416, baseType: !48, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !4330, file: !353, line: 1417, baseType: !48, size: 64, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !4330, file: !353, line: 1418, baseType: !48, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !4330, file: !353, line: 1419, baseType: !48, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !4330, file: !353, line: 1420, baseType: !48, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !4330, file: !353, line: 1421, baseType: !48, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !4330, file: !353, line: 1422, baseType: !48, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4330, file: !353, line: 1423, baseType: !48, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !4330, file: !353, line: 1424, baseType: !48, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !4330, file: !353, line: 1425, baseType: !48, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4330, file: !353, line: 1426, baseType: !48, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4330, file: !353, line: 1427, baseType: !48, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !4275, file: !325, line: 1181, baseType: !4345, size: 64, offset: 768)
!4345 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !353, line: 1430, size: 64, elements: !4346)
!4346 = !{!4347, !4348}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !4345, file: !353, line: 1431, baseType: !48, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, scope: !4345, file: !353, line: 1433, baseType: !4349, size: 64)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4345, file: !353, line: 1433, size: 64, elements: !4350)
!4350 = !{!4351, !4352, !4353}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !4349, file: !353, line: 1434, baseType: !683, size: 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !4349, file: !353, line: 1435, baseType: !43, size: 16, offset: 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !4349, file: !353, line: 1436, baseType: !43, size: 16, offset: 48)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !4275, file: !325, line: 1182, baseType: !4355, size: 64, offset: 832)
!4355 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !353, line: 1267, size: 64, elements: !4356)
!4356 = !{!4357, !4358}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4355, file: !353, line: 1268, baseType: !48, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, scope: !4355, file: !353, line: 1269, baseType: !4359, size: 64)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4355, file: !353, line: 1269, size: 64, elements: !4360)
!4360 = !{!4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !4359, file: !353, line: 1270, baseType: !48, size: 5, flags: DIFlagBitField, extraData: i64 0)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !4359, file: !353, line: 1271, baseType: !48, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !4359, file: !353, line: 1272, baseType: !48, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !4359, file: !353, line: 1273, baseType: !48, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !4359, file: !353, line: 1274, baseType: !48, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !4359, file: !353, line: 1275, baseType: !48, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !4359, file: !353, line: 1276, baseType: !48, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !4359, file: !353, line: 1277, baseType: !48, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !4359, file: !353, line: 1278, baseType: !48, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !4359, file: !353, line: 1279, baseType: !48, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !4359, file: !353, line: 1280, baseType: !48, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !4275, file: !325, line: 1183, baseType: !47, size: 64, offset: 896)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !4275, file: !325, line: 1185, baseType: !4374, size: 128, offset: 960)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !4375, line: 7, size: 128, elements: !4376)
!4375 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!4376 = !{!4377, !4378}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !4374, file: !4375, line: 8, baseType: !48, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4374, file: !4375, line: 9, baseType: !15, size: 64, offset: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !4275, file: !325, line: 1186, baseType: !4374, size: 128, offset: 1088)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !4275, file: !325, line: 1187, baseType: !47, size: 64, offset: 1216)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4275, file: !325, line: 1189, baseType: !47, size: 64, offset: 1280)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4275, file: !325, line: 1190, baseType: !47, size: 64, offset: 1344)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4275, file: !325, line: 1191, baseType: !47, size: 64, offset: 1408)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4275, file: !325, line: 1192, baseType: !47, size: 64, offset: 1472)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !4275, file: !325, line: 1193, baseType: !47, size: 64, offset: 1536)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !4275, file: !325, line: 1194, baseType: !47, size: 64, offset: 1600)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !4275, file: !325, line: 1195, baseType: !47, size: 64, offset: 1664)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !3338, file: !325, line: 812, baseType: !12, size: 64, offset: 8000)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !3338, file: !325, line: 820, baseType: !392, size: 64, offset: 8064)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3338, file: !325, line: 821, baseType: !4391, size: 64, offset: 8128)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !4393, line: 1332, size: 128, elements: !4394)
!4393 = !DIFile(filename: "kernel/trace/trace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3cded56e3446de300e74751317646ffb")
!4394 = !{!4395, !4398}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "prog", scope: !4392, file: !4393, line: 1333, baseType: !4396, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DICompositeType(tag: DW_TAG_structure_type, name: "prog_entry", file: !4393, line: 1330, flags: DIFlagFwdDecl)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "filter_string", scope: !4392, file: !4393, line: 1334, baseType: !540, size: 64, offset: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3338, file: !325, line: 828, baseType: !4400, size: 64, offset: 8192)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !325, line: 1046, size: 1664, elements: !4402)
!4402 = !{!4403, !4404}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !4401, file: !325, line: 1047, baseType: !2041, size: 1600)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4401, file: !325, line: 1048, baseType: !4405, size: 64, offset: 1600)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !325, line: 1039, size: 256, elements: !4407)
!4407 = !{!4408, !4409, !4410, !4411}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4406, file: !325, line: 1040, baseType: !47, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4406, file: !325, line: 1041, baseType: !47, size: 64, offset: 64)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4406, file: !325, line: 1042, baseType: !47, size: 64, offset: 128)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4406, file: !325, line: 1043, baseType: !13, size: 32, offset: 192)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3338, file: !325, line: 832, baseType: !12, size: 64, offset: 8256)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !3338, file: !325, line: 834, baseType: !174, size: 128, offset: 8320)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !3338, file: !325, line: 842, baseType: !683, size: 32, offset: 8448)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3307, file: !3308, line: 461, baseType: !20, size: 64, offset: 704)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3307, file: !3308, line: 463, baseType: !20, size: 64, offset: 768)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3307, file: !3308, line: 465, baseType: !20, size: 64, offset: 832)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3307, file: !3308, line: 466, baseType: !20, size: 64, offset: 896)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3307, file: !3308, line: 467, baseType: !20, size: 64, offset: 960)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3307, file: !3308, line: 473, baseType: !4421, size: 64, offset: 1024)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3308, line: 10, flags: DIFlagFwdDecl)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3307, file: !3308, line: 480, baseType: !20, size: 64, offset: 1088)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3307, file: !3308, line: 482, baseType: !81, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3307, file: !3308, line: 491, baseType: !682, size: 32, offset: 1184)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3307, file: !3308, line: 501, baseType: !4427, size: 33792, offset: 1536)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4428, line: 448, size: 33792, elements: !4429)
!4428 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4429 = !{!4430, !4431, !4432, !4540, !4541, !4547, !4548}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4427, file: !4428, line: 461, baseType: !81, size: 32)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4427, file: !4428, line: 468, baseType: !20, size: 64, offset: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4427, file: !4428, line: 476, baseType: !4433, size: 64, offset: 128)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4428, line: 356, size: 33280, align: 512, elements: !4435)
!4435 = !{!4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4434, file: !4428, line: 358, baseType: !81, size: 32)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4434, file: !4428, line: 361, baseType: !81, size: 32, offset: 32)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4434, file: !4428, line: 364, baseType: !47, size: 64, offset: 64)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4434, file: !4428, line: 367, baseType: !47, size: 64, offset: 128)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4434, file: !4428, line: 370, baseType: !47, size: 64, offset: 192)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4434, file: !4428, line: 373, baseType: !81, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4434, file: !4428, line: 376, baseType: !81, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4434, file: !4428, line: 391, baseType: !81, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4434, file: !4428, line: 394, baseType: !81, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4434, file: !4428, line: 397, baseType: !4446, size: 32768, offset: 512)
!4446 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4428, line: 348, size: 32768, elements: !4447)
!4447 = !{!4448, !4463, !4500, !4525, !4538}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4446, file: !4428, line: 349, baseType: !4449, size: 896)
!4449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4428, line: 12, size: 896, elements: !4450)
!4450 = !{!4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4462}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4449, file: !4428, line: 13, baseType: !682, size: 32)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4449, file: !4428, line: 14, baseType: !682, size: 32, offset: 32)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4449, file: !4428, line: 15, baseType: !682, size: 32, offset: 64)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4449, file: !4428, line: 16, baseType: !682, size: 32, offset: 96)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4449, file: !4428, line: 17, baseType: !682, size: 32, offset: 128)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4449, file: !4428, line: 18, baseType: !682, size: 32, offset: 160)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4449, file: !4428, line: 19, baseType: !682, size: 32, offset: 192)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4449, file: !4428, line: 22, baseType: !4459, size: 640, offset: 224)
!4459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 640, elements: !4460)
!4460 = !{!4461}
!4461 = !DISubrange(count: 20)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4449, file: !4428, line: 25, baseType: !682, size: 32, offset: 864)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4446, file: !4428, line: 350, baseType: !4464, size: 4096, align: 128)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4428, line: 34, size: 4096, align: 128, elements: !4465)
!4465 = !{!4466, !4467, !4468, !4469, !4470, !4485, !4486, !4487, !4489, !4491, !4495}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4464, file: !4428, line: 35, baseType: !41, size: 16)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4464, file: !4428, line: 36, baseType: !41, size: 16, offset: 16)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4464, file: !4428, line: 37, baseType: !41, size: 16, offset: 32)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4464, file: !4428, line: 38, baseType: !41, size: 16, offset: 48)
!4470 = !DIDerivedType(tag: DW_TAG_member, scope: !4464, file: !4428, line: 39, baseType: !4471, size: 128, offset: 64)
!4471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4464, file: !4428, line: 39, size: 128, elements: !4472)
!4472 = !{!4473, !4478}
!4473 = !DIDerivedType(tag: DW_TAG_member, scope: !4471, file: !4428, line: 40, baseType: !4474, size: 128)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4471, file: !4428, line: 40, size: 128, elements: !4475)
!4475 = !{!4476, !4477}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4474, file: !4428, line: 41, baseType: !47, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4474, file: !4428, line: 42, baseType: !47, size: 64, offset: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, scope: !4471, file: !4428, line: 44, baseType: !4479, size: 128)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4471, file: !4428, line: 44, size: 128, elements: !4480)
!4480 = !{!4481, !4482, !4483, !4484}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4479, file: !4428, line: 45, baseType: !682, size: 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4479, file: !4428, line: 46, baseType: !682, size: 32, offset: 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4479, file: !4428, line: 47, baseType: !682, size: 32, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4479, file: !4428, line: 48, baseType: !682, size: 32, offset: 96)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4464, file: !4428, line: 51, baseType: !682, size: 32, offset: 192)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4464, file: !4428, line: 52, baseType: !682, size: 32, offset: 224)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4464, file: !4428, line: 55, baseType: !4488, size: 1024, offset: 256)
!4488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 1024, elements: !5)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4464, file: !4428, line: 58, baseType: !4490, size: 2048, offset: 1280)
!4490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 2048, elements: !545)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4464, file: !4428, line: 60, baseType: !4492, size: 384, offset: 3328)
!4492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 384, elements: !4493)
!4493 = !{!4494}
!4494 = !DISubrange(count: 12)
!4495 = !DIDerivedType(tag: DW_TAG_member, scope: !4464, file: !4428, line: 62, baseType: !4496, size: 384, offset: 3712)
!4496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4464, file: !4428, line: 62, size: 384, elements: !4497)
!4497 = !{!4498, !4499}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4496, file: !4428, line: 63, baseType: !4492, size: 384)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4496, file: !4428, line: 64, baseType: !4492, size: 384)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4446, file: !4428, line: 351, baseType: !4501, size: 1088)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4428, line: 79, size: 1088, elements: !4502)
!4502 = !{!4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4524}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4501, file: !4428, line: 80, baseType: !682, size: 32)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4501, file: !4428, line: 81, baseType: !682, size: 32, offset: 32)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4501, file: !4428, line: 82, baseType: !682, size: 32, offset: 64)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4501, file: !4428, line: 83, baseType: !682, size: 32, offset: 96)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4501, file: !4428, line: 84, baseType: !682, size: 32, offset: 128)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4501, file: !4428, line: 85, baseType: !682, size: 32, offset: 160)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4501, file: !4428, line: 86, baseType: !682, size: 32, offset: 192)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4501, file: !4428, line: 88, baseType: !4459, size: 640, offset: 224)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4501, file: !4428, line: 89, baseType: !164, size: 8, offset: 864)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4501, file: !4428, line: 90, baseType: !164, size: 8, offset: 872)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4501, file: !4428, line: 91, baseType: !164, size: 8, offset: 880)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4501, file: !4428, line: 92, baseType: !164, size: 8, offset: 888)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4501, file: !4428, line: 93, baseType: !164, size: 8, offset: 896)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4501, file: !4428, line: 94, baseType: !164, size: 8, offset: 904)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4501, file: !4428, line: 95, baseType: !4518, size: 64, offset: 960)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4520, line: 11, size: 128, elements: !4521)
!4520 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4521 = !{!4522, !4523}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4519, file: !4520, line: 12, baseType: !465, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4519, file: !4520, line: 13, baseType: !15, size: 64, offset: 64)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4501, file: !4428, line: 96, baseType: !682, size: 32, offset: 1024)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4446, file: !4428, line: 352, baseType: !4526, size: 4608, align: 512)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4428, line: 333, size: 4608, align: 512, elements: !4527)
!4527 = !{!4528, !4529, !4536}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4526, file: !4428, line: 334, baseType: !4464, size: 4096, align: 128)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4526, file: !4428, line: 335, baseType: !4530, size: 512, offset: 4096)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4428, line: 312, size: 512, elements: !4531)
!4531 = !{!4532, !4533, !4534}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4530, file: !4428, line: 313, baseType: !47, size: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4530, file: !4428, line: 314, baseType: !47, size: 64, offset: 64)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4530, file: !4428, line: 315, baseType: !4535, size: 384, offset: 128)
!4535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 384, elements: !1585)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4526, file: !4428, line: 336, baseType: !4537, offset: 4608)
!4537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, elements: !1761)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4446, file: !4428, line: 353, baseType: !4539, size: 32768)
!4539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 32768, elements: !2490)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4427, file: !4428, line: 484, baseType: !4433, size: 64, offset: 192)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4427, file: !4428, line: 491, baseType: !4542, size: 128, offset: 256)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4428, line: 404, size: 128, elements: !4543)
!4543 = !{!4544, !4545, !4546}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4542, file: !4428, line: 424, baseType: !47, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4542, file: !4428, line: 432, baseType: !81, size: 32, offset: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4542, file: !4428, line: 440, baseType: !81, size: 32, offset: 96)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4427, file: !4428, line: 498, baseType: !4542, size: 128, offset: 384)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4427, file: !4428, line: 508, baseType: !4434, size: 33280, align: 512, offset: 512)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1012, file: !1013, line: 31, baseType: !3956, size: 64, offset: 448)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1012, file: !1013, line: 32, baseType: !81, size: 32, offset: 512)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1012, file: !1013, line: 33, baseType: !1011, size: 64, offset: 576)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1012, file: !1013, line: 35, baseType: !4553, size: 64, offset: 640)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1013, line: 17, flags: DIFlagFwdDecl)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1012, file: !1013, line: 37, baseType: !1485, size: 64, offset: 704)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1012, file: !1013, line: 38, baseType: !1728, size: 64, offset: 768)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1012, file: !1013, line: 39, baseType: !13, size: 32, offset: 832)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1012, file: !1013, line: 40, baseType: !1518, size: 192, offset: 896)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1012, file: !1013, line: 42, baseType: !13, size: 32, offset: 1088)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !963, file: !88, line: 951, baseType: !221, size: 32, offset: 128)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !963, file: !88, line: 952, baseType: !619, size: 32, offset: 160)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !963, file: !88, line: 952, baseType: !619, size: 32, offset: 192)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !963, file: !88, line: 953, baseType: !13, size: 32, offset: 224)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !934, file: !88, line: 1012, baseType: !1902, size: 64, offset: 896)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !934, file: !88, line: 1013, baseType: !4566, size: 256, offset: 960)
!4566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !88, line: 970, size: 256, elements: !4567)
!4567 = !{!4568, !4569, !4570, !4571, !4572, !4573}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4566, file: !88, line: 971, baseType: !20, size: 64)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4566, file: !88, line: 972, baseType: !81, size: 32, offset: 64)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4566, file: !88, line: 973, baseType: !81, size: 32, offset: 96)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4566, file: !88, line: 974, baseType: !81, size: 32, offset: 128)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4566, file: !88, line: 975, baseType: !81, size: 32, offset: 160)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4566, file: !88, line: 976, baseType: !122, size: 64, offset: 192)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !934, file: !88, line: 1014, baseType: !4575, size: 128, offset: 1216)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !4576, line: 8, size: 128, elements: !4577)
!4576 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!4577 = !{!4578, !4579}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !4575, file: !4576, line: 9, baseType: !753, size: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !4575, file: !4576, line: 10, baseType: !648, size: 64, offset: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !934, file: !88, line: 1015, baseType: !613, size: 64, offset: 1344)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !934, file: !88, line: 1016, baseType: !4582, size: 64, offset: 1408)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4584)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !88, line: 1914, size: 2112, elements: !4585)
!4585 = !{!4586, !4587, !4591, !4595, !4599, !4627, !4628, !4634, !4647, !4651, !4655, !4656, !4660, !4661, !4665, !4670, !4671, !4675, !4679, !4685, !4686, !4690, !4691, !4695, !4699, !4703, !4708, !4712, !4716, !4720, !4724, !4725, !4731}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4584, file: !88, line: 1915, baseType: !486, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4584, file: !88, line: 1916, baseType: !4588, size: 64, offset: 64)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!122, !1354, !122, !13}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4584, file: !88, line: 1917, baseType: !4592, size: 64, offset: 128)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!572, !1354, !540, !117, !121}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4584, file: !88, line: 1918, baseType: !4596, size: 64, offset: 192)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!572, !1354, !102, !117, !121}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4584, file: !88, line: 1919, baseType: !4600, size: 64, offset: 256)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!572, !4603, !4625}
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !88, line: 373, size: 384, elements: !4605)
!4605 = !{!4606, !4607, !4608, !4612, !4613, !4614, !4615}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !4604, file: !88, line: 374, baseType: !1354, size: 64)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !4604, file: !88, line: 375, baseType: !122, size: 64, offset: 64)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !4604, file: !88, line: 376, baseType: !4609, size: 64, offset: 128)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{null, !4603, !465}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4604, file: !88, line: 377, baseType: !12, size: 64, offset: 192)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !4604, file: !88, line: 378, baseType: !13, size: 32, offset: 256)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !4604, file: !88, line: 379, baseType: !41, size: 16, offset: 288)
!4615 = !DIDerivedType(tag: DW_TAG_member, scope: !4604, file: !88, line: 380, baseType: !4616, size: 64, offset: 320)
!4616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4604, file: !88, line: 380, size: 64, elements: !4617)
!4617 = !{!4618, !4621}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !4616, file: !88, line: 386, baseType: !4619, size: 64)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !88, line: 386, flags: DIFlagFwdDecl)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !4616, file: !88, line: 395, baseType: !4622, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!572, !12}
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !88, line: 69, flags: DIFlagFwdDecl)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4584, file: !88, line: 1920, baseType: !4600, size: 64, offset: 320)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4584, file: !88, line: 1921, baseType: !4629, size: 64, offset: 384)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!13, !4603, !4632, !81}
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !88, line: 53, flags: DIFlagFwdDecl)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4584, file: !88, line: 1923, baseType: !4635, size: 64, offset: 448)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!13, !1354, !4638}
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !88, line: 1858, size: 128, elements: !4640)
!4640 = !{!4641, !4646}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4639, file: !88, line: 1859, baseType: !4642, size: 64)
!4642 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !88, line: 1855, baseType: !4643)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!1530, !4638, !102, !13, !122, !47, !81}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4639, file: !88, line: 1860, baseType: !122, size: 64, offset: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4584, file: !88, line: 1924, baseType: !4648, size: 64, offset: 512)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!2418, !1354, !2420}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4584, file: !88, line: 1925, baseType: !4652, size: 64, offset: 576)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!465, !1354, !81, !20}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4584, file: !88, line: 1926, baseType: !4652, size: 64, offset: 640)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4584, file: !88, line: 1927, baseType: !4657, size: 64, offset: 704)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!13, !1354, !2123}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4584, file: !88, line: 1928, baseType: !20, size: 64, offset: 768)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4584, file: !88, line: 1929, baseType: !4662, size: 64, offset: 832)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!13, !613, !1354}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4584, file: !88, line: 1930, baseType: !4666, size: 64, offset: 896)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!13, !1354, !4669}
!4669 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !88, line: 1061, baseType: !12)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4584, file: !88, line: 1931, baseType: !4662, size: 64, offset: 960)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4584, file: !88, line: 1932, baseType: !4672, size: 64, offset: 1024)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{!13, !1354, !122, !122, !13}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4584, file: !88, line: 1933, baseType: !4676, size: 64, offset: 1088)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!13, !13, !1354, !13}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4584, file: !88, line: 1934, baseType: !4680, size: 64, offset: 1152)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!13, !1354, !13, !4683}
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !88, line: 1063, flags: DIFlagFwdDecl)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4584, file: !88, line: 1935, baseType: !1351, size: 64, offset: 1216)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4584, file: !88, line: 1936, baseType: !4687, size: 64, offset: 1280)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!13, !13}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4584, file: !88, line: 1937, baseType: !4680, size: 64, offset: 1344)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4584, file: !88, line: 1938, baseType: !4692, size: 64, offset: 1408)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!572, !3175, !1354, !121, !117, !81}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4584, file: !88, line: 1939, baseType: !4696, size: 64, offset: 1472)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!572, !1354, !121, !3175, !117, !81}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4584, file: !88, line: 1940, baseType: !4700, size: 64, offset: 1536)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{null, !1354}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4584, file: !88, line: 1941, baseType: !4704, size: 64, offset: 1600)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!13, !1354, !13, !4707, !3967}
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4584, file: !88, line: 1942, baseType: !4709, size: 64, offset: 1664)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{!465, !1354, !13, !122, !122}
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4584, file: !88, line: 1944, baseType: !4713, size: 64, offset: 1728)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{null, !877, !1354}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4584, file: !88, line: 1948, baseType: !4717, size: 64, offset: 1792)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!572, !1354, !122, !1354, !122, !117, !81}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4584, file: !88, line: 1950, baseType: !4721, size: 64, offset: 1856)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!122, !1354, !122, !1354, !122, !122, !81}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4584, file: !88, line: 1953, baseType: !4672, size: 64, offset: 1920)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4584, file: !88, line: 1954, baseType: !4726, size: 64, offset: 1984)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!13, !4729, !81}
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !88, line: 1911, flags: DIFlagFwdDecl)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4584, file: !88, line: 1955, baseType: !4732, size: 64, offset: 2048)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!13, !4729, !4632, !81}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !934, file: !88, line: 1018, baseType: !47, size: 64, offset: 1472)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !934, file: !88, line: 1020, baseType: !12, size: 64, offset: 1536)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !934, file: !88, line: 1023, baseType: !12, size: 64, offset: 1600)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !934, file: !88, line: 1027, baseType: !4739, size: 64, offset: 1664)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !934, file: !88, line: 1029, baseType: !609, size: 64, offset: 1728)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !934, file: !88, line: 1030, baseType: !4742, size: 32, offset: 1792)
!4742 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !4743, line: 8, baseType: !682)
!4743 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !934, file: !88, line: 1031, baseType: !4742, size: 32, offset: 1824)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !878, file: !879, line: 29, baseType: !12, size: 64, offset: 896)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !821, file: !88, line: 2077, baseType: !874, size: 64, offset: 1088)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !821, file: !88, line: 2078, baseType: !874, size: 64, offset: 1152)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !821, file: !88, line: 2079, baseType: !874, size: 64, offset: 1216)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !821, file: !88, line: 2081, baseType: !4750, size: 64, offset: 1280)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{!572, !759, !13, !540, !117, !122}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !821, file: !88, line: 2082, baseType: !4754, size: 64, offset: 1344)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!572, !759, !13, !102, !117, !122}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !821, file: !88, line: 2083, baseType: !4758, size: 64, offset: 1408)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!4761, !613}
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !230, line: 296, size: 1664, elements: !4764)
!4764 = !{!4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4789, !4790, !4791}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4763, file: !230, line: 297, baseType: !801, size: 128)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4763, file: !230, line: 298, baseType: !174, size: 128, offset: 128)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4763, file: !230, line: 299, baseType: !174, size: 128, offset: 256)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4763, file: !230, line: 300, baseType: !174, size: 128, offset: 384)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4763, file: !230, line: 301, baseType: !889, size: 256, offset: 512)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4763, file: !230, line: 302, baseType: !140, size: 32, offset: 768)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4763, file: !230, line: 303, baseType: !130, size: 32, offset: 800)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4763, file: !230, line: 304, baseType: !759, size: 64, offset: 832)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4763, file: !230, line: 305, baseType: !4774, size: 64, offset: 896)
!4774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !230, line: 68, size: 64, elements: !4775)
!4775 = !{!4776, !4788}
!4776 = !DIDerivedType(tag: DW_TAG_member, scope: !4774, file: !230, line: 69, baseType: !4777, size: 32)
!4777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4774, file: !230, line: 69, size: 32, elements: !4778)
!4778 = !{!4779, !4780, !4781}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4777, file: !230, line: 70, baseType: !619, size: 32)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4777, file: !230, line: 71, baseType: !628, size: 32)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4777, file: !230, line: 72, baseType: !4782, size: 32)
!4782 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4783, line: 24, baseType: !4784)
!4783 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4783, line: 22, size: 32, elements: !4785)
!4785 = !{!4786}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4784, file: !4783, line: 23, baseType: !4787, size: 32)
!4787 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4783, line: 20, baseType: !625)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4774, file: !230, line: 74, baseType: !229, size: 32, offset: 32)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4763, file: !230, line: 306, baseType: !122, size: 64, offset: 960)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4763, file: !230, line: 307, baseType: !20, size: 64, offset: 1024)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4763, file: !230, line: 308, baseType: !4792, size: 576, offset: 1088)
!4792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !230, line: 205, size: 576, elements: !4793)
!4793 = !{!4794, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4792, file: !230, line: 206, baseType: !4795, size: 64)
!4795 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !230, line: 66, baseType: !124)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4792, file: !230, line: 207, baseType: !4795, size: 64, offset: 64)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4792, file: !230, line: 208, baseType: !4795, size: 64, offset: 128)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4792, file: !230, line: 209, baseType: !4795, size: 64, offset: 192)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4792, file: !230, line: 210, baseType: !4795, size: 64, offset: 256)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4792, file: !230, line: 211, baseType: !4795, size: 64, offset: 320)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4792, file: !230, line: 212, baseType: !4795, size: 64, offset: 384)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4792, file: !230, line: 213, baseType: !1556, size: 64, offset: 448)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4792, file: !230, line: 214, baseType: !1556, size: 64, offset: 512)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !821, file: !88, line: 2085, baseType: !4805, size: 64, offset: 1472)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!465, !759, !4808}
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4810, line: 15, size: 256, elements: !4811)
!4810 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4811 = !{!4812, !4813, !4814, !4815, !4816}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4809, file: !4810, line: 16, baseType: !1025, size: 32)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4809, file: !4810, line: 19, baseType: !13, size: 32, offset: 32)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4809, file: !4810, line: 26, baseType: !20, size: 64, offset: 64)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4809, file: !4810, line: 33, baseType: !20, size: 64, offset: 128)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4809, file: !4810, line: 36, baseType: !4817, size: 64, offset: 192)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !191, line: 33, flags: DIFlagFwdDecl)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !821, file: !88, line: 2087, baseType: !4805, size: 64, offset: 1536)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !821, file: !88, line: 2089, baseType: !791, size: 64, offset: 1600)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !760, file: !88, line: 1198, baseType: !4822, size: 64, offset: 448)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4824)
!4824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !230, line: 324, size: 704, elements: !4825)
!4825 = !{!4826, !4830, !4834, !4838, !4839, !4840, !4841, !4842, !4847, !4852, !4856}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4824, file: !230, line: 325, baseType: !4827, size: 64)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!13, !4762}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4824, file: !230, line: 326, baseType: !4831, size: 64, offset: 64)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{!4762, !759, !13}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4824, file: !230, line: 327, baseType: !4835, size: 64, offset: 128)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{null, !4762}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4824, file: !230, line: 328, baseType: !4827, size: 64, offset: 192)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4824, file: !230, line: 329, baseType: !4827, size: 64, offset: 256)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4824, file: !230, line: 330, baseType: !4827, size: 64, offset: 320)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4824, file: !230, line: 331, baseType: !849, size: 64, offset: 384)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4824, file: !230, line: 334, baseType: !4843, size: 64, offset: 448)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!4846, !613}
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4824, file: !230, line: 335, baseType: !4848, size: 64, offset: 512)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!13, !613, !4851}
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4824, file: !230, line: 337, baseType: !4853, size: 64, offset: 576)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!13, !613, !4846}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4824, file: !230, line: 339, baseType: !4857, size: 64, offset: 640)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!13, !759, !4860}
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !760, file: !88, line: 1199, baseType: !4862, size: 64, offset: 512)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4864)
!4864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !230, line: 430, size: 704, elements: !4865)
!4865 = !{!4866, !4872, !4873, !4877, !4878, !4879, !4894, !4917, !4921, !4922, !4945}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4864, file: !230, line: 431, baseType: !4867, size: 64)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{!13, !759, !13, !13, !4870}
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4575)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4864, file: !230, line: 432, baseType: !849, size: 64, offset: 64)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4864, file: !230, line: 433, baseType: !4874, size: 64, offset: 128)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = !DISubroutineType(types: !4876)
!4876 = !{!13, !759, !81}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4864, file: !230, line: 434, baseType: !4874, size: 64, offset: 192)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4864, file: !230, line: 435, baseType: !849, size: 64, offset: 256)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4864, file: !230, line: 436, baseType: !4880, size: 64, offset: 320)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!13, !759, !13, !4883}
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !230, line: 417, size: 256, elements: !4885)
!4885 = !{!4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4884, file: !230, line: 418, baseType: !13, size: 32)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4884, file: !230, line: 419, baseType: !81, size: 32, offset: 32)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4884, file: !230, line: 420, baseType: !81, size: 32, offset: 64)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4884, file: !230, line: 422, baseType: !81, size: 32, offset: 96)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4884, file: !230, line: 423, baseType: !81, size: 32, offset: 128)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4884, file: !230, line: 424, baseType: !81, size: 32, offset: 160)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4884, file: !230, line: 425, baseType: !81, size: 32, offset: 192)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4884, file: !230, line: 426, baseType: !81, size: 32, offset: 224)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4864, file: !230, line: 437, baseType: !4895, size: 64, offset: 384)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!13, !759, !4774, !4898}
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !230, line: 345, size: 960, elements: !4900)
!4900 = !{!4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4899, file: !230, line: 346, baseType: !13, size: 32)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4899, file: !230, line: 347, baseType: !47, size: 64, offset: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4899, file: !230, line: 348, baseType: !47, size: 64, offset: 128)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4899, file: !230, line: 349, baseType: !47, size: 64, offset: 192)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4899, file: !230, line: 350, baseType: !47, size: 64, offset: 256)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4899, file: !230, line: 351, baseType: !47, size: 64, offset: 320)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4899, file: !230, line: 352, baseType: !47, size: 64, offset: 384)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4899, file: !230, line: 353, baseType: !899, size: 64, offset: 448)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4899, file: !230, line: 355, baseType: !899, size: 64, offset: 512)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4899, file: !230, line: 356, baseType: !13, size: 32, offset: 576)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4899, file: !230, line: 357, baseType: !13, size: 32, offset: 608)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4899, file: !230, line: 358, baseType: !47, size: 64, offset: 640)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4899, file: !230, line: 359, baseType: !47, size: 64, offset: 704)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4899, file: !230, line: 360, baseType: !47, size: 64, offset: 768)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4899, file: !230, line: 361, baseType: !899, size: 64, offset: 832)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4899, file: !230, line: 362, baseType: !13, size: 32, offset: 896)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4864, file: !230, line: 438, baseType: !4918, size: 64, offset: 448)
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4919 = !DISubroutineType(types: !4920)
!4920 = !{!13, !759, !4860, !4898}
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4864, file: !230, line: 440, baseType: !4895, size: 64, offset: 512)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4864, file: !230, line: 441, baseType: !4923, size: 64, offset: 576)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{!13, !759, !4926}
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !230, line: 411, size: 1408, elements: !4928)
!4928 = !{!4929, !4930}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4927, file: !230, line: 412, baseType: !81, size: 32)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4927, file: !230, line: 413, baseType: !4931, size: 1344, offset: 64)
!4931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4932, size: 1344, elements: !541)
!4932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !230, line: 397, size: 448, elements: !4933)
!4933 = !{!4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4944}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4932, file: !230, line: 398, baseType: !81, size: 32)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4932, file: !230, line: 399, baseType: !81, size: 32, offset: 32)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4932, file: !230, line: 401, baseType: !81, size: 32, offset: 64)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4932, file: !230, line: 402, baseType: !81, size: 32, offset: 96)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4932, file: !230, line: 403, baseType: !81, size: 32, offset: 128)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4932, file: !230, line: 404, baseType: !81, size: 32, offset: 160)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4932, file: !230, line: 405, baseType: !81, size: 32, offset: 192)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4932, file: !230, line: 406, baseType: !49, size: 64, offset: 256)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4932, file: !230, line: 407, baseType: !4943, size: 64, offset: 320)
!4943 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !108, line: 132, baseType: !47)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4932, file: !230, line: 408, baseType: !4943, size: 64, offset: 384)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4864, file: !230, line: 442, baseType: !4874, size: 64, offset: 640)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !760, file: !88, line: 1200, baseType: !4947, size: 64, offset: 576)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4949)
!4949 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !88, line: 54, flags: DIFlagFwdDecl)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !760, file: !88, line: 1201, baseType: !20, size: 64, offset: 640)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !760, file: !88, line: 1202, baseType: !20, size: 64, offset: 704)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !760, file: !88, line: 1203, baseType: !20, size: 64, offset: 768)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !760, file: !88, line: 1204, baseType: !648, size: 64, offset: 832)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !760, file: !88, line: 1205, baseType: !1382, size: 320, offset: 896)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !760, file: !88, line: 1206, baseType: !13, size: 32, offset: 1216)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !760, file: !88, line: 1207, baseType: !130, size: 32, offset: 1248)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !760, file: !88, line: 1209, baseType: !12, size: 64, offset: 1280)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !760, file: !88, line: 1211, baseType: !4959, size: 64, offset: 1344)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4962)
!4962 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !88, line: 1211, flags: DIFlagFwdDecl)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !760, file: !88, line: 1223, baseType: !4964, size: 64, offset: 1408)
!4964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !665, line: 34, size: 64, elements: !4965)
!4965 = !{!4966}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4964, file: !665, line: 35, baseType: !668, size: 64)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !760, file: !88, line: 1224, baseType: !174, size: 128, offset: 1472)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !760, file: !88, line: 1225, baseType: !4969, size: 64, offset: 1600)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !88, line: 1225, flags: DIFlagFwdDecl)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !760, file: !88, line: 1226, baseType: !4972, size: 64, offset: 1664)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !88, line: 1226, flags: DIFlagFwdDecl)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !760, file: !88, line: 1227, baseType: !4975, size: 64, offset: 1728)
!4975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!4976 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !88, line: 50, flags: DIFlagFwdDecl)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !760, file: !88, line: 1228, baseType: !4978, size: 64, offset: 1792)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !88, line: 1228, flags: DIFlagFwdDecl)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !760, file: !88, line: 1229, baseType: !801, size: 128, offset: 1856)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !760, file: !88, line: 1230, baseType: !81, size: 32, offset: 1984)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !760, file: !88, line: 1231, baseType: !4983, size: 2496, offset: 2048)
!4983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !230, line: 521, size: 2496, elements: !4984)
!4984 = !{!4985, !4986, !4987, !4989, !5021}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4983, file: !230, line: 522, baseType: !81, size: 32)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4983, file: !230, line: 523, baseType: !1382, size: 320, offset: 64)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4983, file: !230, line: 524, baseType: !4988, size: 192, offset: 384)
!4988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 192, elements: !541)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4983, file: !230, line: 525, baseType: !4990, size: 1728, offset: 576)
!4990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4991, size: 1728, elements: !541)
!4991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !230, line: 222, size: 576, elements: !4992)
!4992 = !{!4993, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4991, file: !230, line: 223, baseType: !4994, size: 64)
!4994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4995, size: 64)
!4995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !230, line: 445, size: 256, elements: !4996)
!4996 = !{!4997, !4998, !5011, !5012}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4995, file: !230, line: 446, baseType: !13, size: 32)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4995, file: !230, line: 447, baseType: !4999, size: 64, offset: 64)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5001)
!5001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !230, line: 312, size: 512, elements: !5002)
!5002 = !{!5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !5001, file: !230, line: 313, baseType: !849, size: 64)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !5001, file: !230, line: 314, baseType: !849, size: 64, offset: 64)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !5001, file: !230, line: 315, baseType: !849, size: 64, offset: 128)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !5001, file: !230, line: 316, baseType: !849, size: 64, offset: 192)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !5001, file: !230, line: 317, baseType: !4827, size: 64, offset: 256)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !5001, file: !230, line: 318, baseType: !4827, size: 64, offset: 320)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !5001, file: !230, line: 319, baseType: !4827, size: 64, offset: 384)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !5001, file: !230, line: 320, baseType: !4857, size: 64, offset: 448)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4995, file: !230, line: 448, baseType: !486, size: 64, offset: 128)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4995, file: !230, line: 449, baseType: !4994, size: 64, offset: 192)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4991, file: !230, line: 224, baseType: !13, size: 32, offset: 64)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4991, file: !230, line: 226, baseType: !174, size: 128, offset: 128)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4991, file: !230, line: 227, baseType: !20, size: 64, offset: 256)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4991, file: !230, line: 228, baseType: !81, size: 32, offset: 320)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4991, file: !230, line: 229, baseType: !81, size: 32, offset: 352)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4991, file: !230, line: 230, baseType: !4795, size: 64, offset: 384)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4991, file: !230, line: 231, baseType: !4795, size: 64, offset: 448)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4991, file: !230, line: 232, baseType: !12, size: 64, offset: 512)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4983, file: !230, line: 526, baseType: !5022, size: 192, offset: 2304)
!5022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4999, size: 192, elements: !541)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !760, file: !88, line: 1233, baseType: !5024, size: 2368, offset: 4544)
!5024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !88, line: 1184, size: 2368, elements: !5025)
!5025 = !{!5026, !5027, !5028}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !5024, file: !88, line: 1185, baseType: !45, size: 16)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !5024, file: !88, line: 1186, baseType: !45, size: 16, offset: 16)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !5024, file: !88, line: 1187, baseType: !5029, size: 2304, offset: 64)
!5029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5030, size: 2304, elements: !541)
!5030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !5031, line: 12, size: 768, elements: !5032)
!5031 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!5032 = !{!5033, !5041, !5043, !5044, !5045}
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !5030, file: !5031, line: 13, baseType: !5034, size: 384)
!5034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !5035, line: 17, size: 384, elements: !5036)
!5035 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!5036 = !{!5037, !5038, !5039, !5040}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !5034, file: !5035, line: 18, baseType: !13, size: 32)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !5034, file: !5035, line: 19, baseType: !13, size: 32, offset: 32)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !5034, file: !5035, line: 20, baseType: !135, size: 192, offset: 64)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !5034, file: !5035, line: 22, baseType: !946, size: 128, align: 64, offset: 256)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !5030, file: !5031, line: 14, baseType: !5042, size: 64, offset: 384)
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !5030, file: !5031, line: 15, baseType: !4238, size: 64, offset: 448)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !5030, file: !5031, line: 16, baseType: !135, size: 192, offset: 512)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !5030, file: !5031, line: 17, baseType: !130, size: 32, offset: 704)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !760, file: !88, line: 1240, baseType: !12, size: 64, offset: 6912)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !760, file: !88, line: 1243, baseType: !682, size: 32, offset: 6976)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !760, file: !88, line: 1245, baseType: !1556, size: 64, offset: 7040)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !760, file: !88, line: 1246, baseType: !1556, size: 64, offset: 7104)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !760, file: !88, line: 1248, baseType: !683, size: 32, offset: 7168)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !760, file: !88, line: 1249, baseType: !5052, size: 64, offset: 7232)
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5053, size: 64)
!5053 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !88, line: 634, flags: DIFlagFwdDecl)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !760, file: !88, line: 1252, baseType: !3, size: 256, offset: 7296)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !760, file: !88, line: 1253, baseType: !5056, size: 128, offset: 7552)
!5056 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !5057, line: 21, baseType: !5058)
!5057 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!5058 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5057, line: 19, size: 128, elements: !5059)
!5059 = !{!5060}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5058, file: !5057, line: 20, baseType: !3465, size: 128)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !760, file: !88, line: 1255, baseType: !81, size: 32, offset: 7680)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !760, file: !88, line: 1261, baseType: !889, size: 256, offset: 7744)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !760, file: !88, line: 1267, baseType: !102, size: 64, offset: 8000)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !760, file: !88, line: 1269, baseType: !706, size: 64, offset: 8064)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !760, file: !88, line: 1271, baseType: !5066, size: 448, offset: 8128)
!5066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4810, line: 63, size: 448, elements: !5067)
!5067 = !{!5068, !5073, !5074, !5075, !5076, !5077, !5078}
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !5066, file: !4810, line: 64, baseType: !5069, size: 64)
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!20, !5072, !4808}
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5066, size: 64)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !5066, file: !4810, line: 66, baseType: !5069, size: 64, offset: 64)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !5066, file: !4810, line: 69, baseType: !465, size: 64, offset: 128)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !5066, file: !4810, line: 70, baseType: !13, size: 32, offset: 192)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5066, file: !4810, line: 71, baseType: !81, size: 32, offset: 224)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5066, file: !4810, line: 74, baseType: !174, size: 128, offset: 256)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !5066, file: !4810, line: 85, baseType: !5079, size: 64, offset: 384)
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !760, file: !88, line: 1274, baseType: !893, size: 64, offset: 8576)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !760, file: !88, line: 1280, baseType: !893, size: 64, offset: 8640)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !760, file: !88, line: 1283, baseType: !13, size: 32, offset: 8704)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !760, file: !88, line: 1286, baseType: !4742, size: 32, offset: 8736)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !760, file: !88, line: 1289, baseType: !2669, size: 64, offset: 8768)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !760, file: !88, line: 1290, baseType: !797, size: 64, offset: 8832)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !760, file: !88, line: 1297, baseType: !1485, size: 64, offset: 8896)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !760, file: !88, line: 1304, baseType: !5088, size: 64, offset: 8960)
!5088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !5089, line: 49, size: 64, elements: !5090)
!5089 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!5090 = !{!5091}
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5088, file: !5089, line: 50, baseType: !5092, size: 64)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !5089, line: 41, size: 512, align: 512, elements: !5094)
!5094 = !{!5095, !5096, !5101}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5093, file: !5089, line: 43, baseType: !140, size: 32)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5093, file: !5089, line: 45, baseType: !5097, size: 192, offset: 64)
!5097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !5089, line: 29, size: 192, elements: !5098)
!5098 = !{!5099, !5100}
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5097, file: !5089, line: 30, baseType: !174, size: 128)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5097, file: !5089, line: 32, baseType: !465, size: 64, offset: 128)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5093, file: !5089, line: 46, baseType: !465, size: 64, offset: 256)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !760, file: !88, line: 1305, baseType: !5088, size: 64, offset: 9024)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !760, file: !88, line: 1306, baseType: !946, size: 128, align: 64, offset: 9088)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !760, file: !88, line: 1307, baseType: !1645, size: 256, offset: 9216)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !760, file: !88, line: 1309, baseType: !889, size: 256, offset: 9472)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !760, file: !88, line: 1314, baseType: !13, size: 32, offset: 9728)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !760, file: !88, line: 1317, baseType: !140, size: 32, align: 512, offset: 10240)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !760, file: !88, line: 1318, baseType: !174, size: 128, offset: 10304)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !760, file: !88, line: 1320, baseType: !140, size: 32, offset: 10432)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !760, file: !88, line: 1321, baseType: !174, size: 128, offset: 10496)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !754, file: !755, line: 73, baseType: !13, size: 32, offset: 128)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !754, file: !755, line: 74, baseType: !5113, size: 64, offset: 192)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1919, line: 42, flags: DIFlagFwdDecl)
!5115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !708, file: !650, line: 141, baseType: !5117, size: 64, offset: 704)
!5117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5118, size: 64)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{!13, !4870, !1530}
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !708, file: !650, line: 142, baseType: !5121, size: 64, offset: 768)
!5121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5122, size: 64)
!5122 = !DISubroutineType(types: !5123)
!5123 = !{!648, !648, !5124}
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !649, file: !650, line: 96, baseType: !759, size: 64, offset: 832)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !649, file: !650, line: 97, baseType: !20, size: 64, offset: 896)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !649, file: !650, line: 98, baseType: !12, size: 64, offset: 960)
!5129 = !DIDerivedType(tag: DW_TAG_member, scope: !649, file: !650, line: 100, baseType: !5130, size: 128, offset: 1024)
!5130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !649, file: !650, line: 100, size: 128, elements: !5131)
!5131 = !{!5132, !5133}
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5130, file: !650, line: 101, baseType: !174, size: 128)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5130, file: !650, line: 102, baseType: !2429, size: 64)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !649, file: !650, line: 104, baseType: !174, size: 128, offset: 1152)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !649, file: !650, line: 105, baseType: !174, size: 128, offset: 1280)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !649, file: !650, line: 113, baseType: !5137, size: 128, offset: 1408)
!5137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !649, file: !650, line: 109, size: 128, elements: !5138)
!5138 = !{!5139, !5140, !5141}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5137, file: !650, line: 110, baseType: !801, size: 128)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5137, file: !650, line: 111, baseType: !664, size: 128)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5137, file: !650, line: 112, baseType: !946, size: 128, align: 64)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !642, file: !88, line: 1968, baseType: !5143, size: 64, offset: 64)
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!102, !648, !613, !5146}
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!5147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !5148, line: 10, size: 128, elements: !5149)
!5148 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!5149 = !{!5150, !5151}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5147, file: !5148, line: 11, baseType: !3838, size: 64)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5147, file: !5148, line: 12, baseType: !12, size: 64, offset: 64)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !642, file: !88, line: 1969, baseType: !5153, size: 64, offset: 128)
!5153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5154, size: 64)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{!13, !5113, !613, !13}
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !642, file: !88, line: 1970, baseType: !5157, size: 64, offset: 192)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!636, !613, !13, !1530}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !642, file: !88, line: 1972, baseType: !5161, size: 64, offset: 256)
!5161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5162 = !DISubroutineType(types: !5163)
!5163 = !{!13, !648, !540, !13}
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !642, file: !88, line: 1974, baseType: !5165, size: 64, offset: 320)
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!13, !5113, !613, !648, !107, !1530}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !642, file: !88, line: 1976, baseType: !5169, size: 64, offset: 384)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!13, !648, !613, !648}
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !642, file: !88, line: 1977, baseType: !5173, size: 64, offset: 448)
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5174, size: 64)
!5174 = !DISubroutineType(types: !5175)
!5175 = !{!13, !613, !648}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !642, file: !88, line: 1978, baseType: !5177, size: 64, offset: 512)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!13, !5113, !613, !648, !102}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !642, file: !88, line: 1980, baseType: !5181, size: 64, offset: 576)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!13, !5113, !613, !648, !107}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !642, file: !88, line: 1982, baseType: !5173, size: 64, offset: 640)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !642, file: !88, line: 1983, baseType: !5186, size: 64, offset: 704)
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5187, size: 64)
!5187 = !DISubroutineType(types: !5188)
!5188 = !{!13, !5113, !613, !648, !107, !764}
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !642, file: !88, line: 1985, baseType: !5190, size: 64, offset: 768)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = !DISubroutineType(types: !5192)
!5192 = !{!13, !5113, !613, !648, !613, !648, !81}
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !642, file: !88, line: 1987, baseType: !5194, size: 64, offset: 832)
!5194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5195, size: 64)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{!13, !5113, !648, !5197}
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5198, size: 64)
!5198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !88, line: 226, size: 640, elements: !5199)
!5199 = !{!5200, !5201, !5202, !5212, !5221, !5222, !5227, !5228, !5229}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !5198, file: !88, line: 227, baseType: !81, size: 32)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !5198, file: !88, line: 228, baseType: !107, size: 16, offset: 32)
!5202 = !DIDerivedType(tag: DW_TAG_member, scope: !5198, file: !88, line: 241, baseType: !5203, size: 32, offset: 64)
!5203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5198, file: !88, line: 241, size: 32, elements: !5204)
!5204 = !{!5205, !5206}
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !5203, file: !88, line: 242, baseType: !619, size: 32)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !5203, file: !88, line: 243, baseType: !5207, size: 32)
!5207 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !5208, line: 16, baseType: !5209)
!5208 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!5209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5208, line: 14, size: 32, elements: !5210)
!5210 = !{!5211}
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5209, file: !5208, line: 15, baseType: !624, size: 32)
!5212 = !DIDerivedType(tag: DW_TAG_member, scope: !5198, file: !88, line: 245, baseType: !5213, size: 32, offset: 96)
!5213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5198, file: !88, line: 245, size: 32, elements: !5214)
!5214 = !{!5215, !5216}
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !5213, file: !88, line: 246, baseType: !628, size: 32)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !5213, file: !88, line: 247, baseType: !5217, size: 32)
!5217 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !5208, line: 20, baseType: !5218)
!5218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5208, line: 18, size: 32, elements: !5219)
!5219 = !{!5220}
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5218, file: !5208, line: 19, baseType: !632, size: 32)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !5198, file: !88, line: 249, baseType: !122, size: 64, offset: 128)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !5198, file: !88, line: 250, baseType: !5223, size: 128, offset: 192)
!5223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1557, line: 13, size: 128, elements: !5224)
!5224 = !{!5225, !5226}
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5223, file: !1557, line: 14, baseType: !1556, size: 64)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5223, file: !1557, line: 15, baseType: !465, size: 64, offset: 64)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !5198, file: !88, line: 251, baseType: !5223, size: 128, offset: 320)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !5198, file: !88, line: 252, baseType: !5223, size: 128, offset: 448)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !5198, file: !88, line: 259, baseType: !1354, size: 64, offset: 576)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !642, file: !88, line: 1988, baseType: !5231, size: 64, offset: 896)
!5231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5232, size: 64)
!5232 = !DISubroutineType(types: !5233)
!5233 = !{!13, !5113, !4870, !5234, !682, !81}
!5234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5235, size: 64)
!5235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5236, line: 22, size: 1280, elements: !5237)
!5236 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5237 = !{!5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258}
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5235, file: !5236, line: 23, baseType: !682, size: 32)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5235, file: !5236, line: 24, baseType: !107, size: 16, offset: 32)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5235, file: !5236, line: 25, baseType: !81, size: 32, offset: 64)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5235, file: !5236, line: 26, baseType: !1564, size: 32, offset: 96)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5235, file: !5236, line: 27, baseType: !47, size: 64, offset: 128)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5235, file: !5236, line: 28, baseType: !47, size: 64, offset: 192)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5235, file: !5236, line: 41, baseType: !47, size: 64, offset: 256)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5235, file: !5236, line: 42, baseType: !764, size: 32, offset: 320)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5235, file: !5236, line: 43, baseType: !764, size: 32, offset: 352)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5235, file: !5236, line: 44, baseType: !619, size: 32, offset: 384)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5235, file: !5236, line: 45, baseType: !628, size: 32, offset: 416)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5235, file: !5236, line: 46, baseType: !122, size: 64, offset: 448)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5235, file: !5236, line: 47, baseType: !5223, size: 128, offset: 512)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5235, file: !5236, line: 48, baseType: !5223, size: 128, offset: 640)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5235, file: !5236, line: 49, baseType: !5223, size: 128, offset: 768)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5235, file: !5236, line: 50, baseType: !5223, size: 128, offset: 896)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5235, file: !5236, line: 51, baseType: !47, size: 64, offset: 1024)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5235, file: !5236, line: 52, baseType: !47, size: 64, offset: 1088)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5235, file: !5236, line: 53, baseType: !682, size: 32, offset: 1152)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5235, file: !5236, line: 54, baseType: !682, size: 32, offset: 1184)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5235, file: !5236, line: 55, baseType: !47, size: 64, offset: 1216)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !642, file: !88, line: 1990, baseType: !5260, size: 64, offset: 960)
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5261, size: 64)
!5261 = !DISubroutineType(types: !5262)
!5262 = !{!572, !648, !540, !117}
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !642, file: !88, line: 1991, baseType: !5264, size: 64, offset: 1024)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = !DISubroutineType(types: !5266)
!5266 = !{!13, !613, !5267, !47, !47}
!5267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5268, size: 64)
!5268 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !88, line: 55, flags: DIFlagFwdDecl)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !642, file: !88, line: 1993, baseType: !5270, size: 64, offset: 1088)
!5270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5271, size: 64)
!5271 = !DISubroutineType(types: !5272)
!5272 = !{!13, !613, !13}
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !642, file: !88, line: 1994, baseType: !5274, size: 64, offset: 1152)
!5274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5275, size: 64)
!5275 = !DISubroutineType(types: !5276)
!5276 = !{!13, !613, !648, !1354, !81, !107}
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !642, file: !88, line: 1997, baseType: !5278, size: 64, offset: 1216)
!5278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5279, size: 64)
!5279 = !DISubroutineType(types: !5280)
!5280 = !{!13, !5113, !613, !1354, !107}
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !642, file: !88, line: 1999, baseType: !5282, size: 64, offset: 1280)
!5282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5283, size: 64)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{!636, !5113, !648, !13}
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !642, file: !88, line: 2001, baseType: !5286, size: 64, offset: 1344)
!5286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5287, size: 64)
!5287 = !DISubroutineType(types: !5288)
!5288 = !{!13, !5113, !648, !636, !13}
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !642, file: !88, line: 2003, baseType: !5290, size: 64, offset: 1408)
!5290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5291, size: 64)
!5291 = !DISubroutineType(types: !5292)
!5292 = !{!13, !5113, !648, !5293}
!5293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5294, size: 64)
!5294 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !88, line: 76, flags: DIFlagFwdDecl)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !642, file: !88, line: 2005, baseType: !5296, size: 64, offset: 1472)
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5297, size: 64)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{!13, !648, !5293}
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !642, file: !88, line: 2006, baseType: !5300, size: 64, offset: 1536)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = !DISubroutineType(types: !5302)
!5302 = !{!5303, !613}
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5304, size: 64)
!5304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !88, line: 3192, size: 192, elements: !5305)
!5305 = !{!5306, !5307}
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5304, file: !88, line: 3193, baseType: !1020, size: 128)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5304, file: !88, line: 3194, baseType: !682, size: 32, offset: 128)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !614, file: !88, line: 655, baseType: !759, size: 64, offset: 448)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !614, file: !88, line: 656, baseType: !609, size: 64, offset: 512)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !614, file: !88, line: 659, baseType: !12, size: 64, offset: 576)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !614, file: !88, line: 663, baseType: !20, size: 64, offset: 640)
!5312 = !DIDerivedType(tag: DW_TAG_member, scope: !614, file: !88, line: 671, baseType: !5313, size: 32, offset: 704)
!5313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !614, file: !88, line: 671, size: 32, elements: !5314)
!5314 = !{!5315, !5316}
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5313, file: !88, line: 672, baseType: !423, size: 32)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5313, file: !88, line: 673, baseType: !81, size: 32)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !614, file: !88, line: 675, baseType: !764, size: 32, offset: 736)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !614, file: !88, line: 676, baseType: !122, size: 64, offset: 768)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !614, file: !88, line: 677, baseType: !5223, size: 128, offset: 832)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !614, file: !88, line: 678, baseType: !5223, size: 128, offset: 960)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !614, file: !88, line: 679, baseType: !5223, size: 128, offset: 1088)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !614, file: !88, line: 680, baseType: !140, size: 32, offset: 1216)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !614, file: !88, line: 681, baseType: !45, size: 16, offset: 1248)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !614, file: !88, line: 682, baseType: !164, size: 8, offset: 1264)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !614, file: !88, line: 683, baseType: !164, size: 8, offset: 1272)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !614, file: !88, line: 684, baseType: !4943, size: 64, offset: 1280)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !614, file: !88, line: 691, baseType: !20, size: 64, offset: 1344)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !614, file: !88, line: 692, baseType: !1382, size: 320, offset: 1408)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !614, file: !88, line: 694, baseType: !20, size: 64, offset: 1728)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !614, file: !88, line: 695, baseType: !20, size: 64, offset: 1792)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !614, file: !88, line: 697, baseType: !801, size: 128, offset: 1856)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !614, file: !88, line: 698, baseType: !174, size: 128, offset: 1984)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !614, file: !88, line: 707, baseType: !174, size: 128, offset: 2112)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !614, file: !88, line: 708, baseType: !174, size: 128, offset: 2240)
!5335 = !DIDerivedType(tag: DW_TAG_member, scope: !614, file: !88, line: 709, baseType: !5336, size: 128, offset: 2368)
!5336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !614, file: !88, line: 709, size: 128, elements: !5337)
!5337 = !{!5338, !5339}
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5336, file: !88, line: 710, baseType: !797, size: 64)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5336, file: !88, line: 711, baseType: !946, size: 128, align: 64)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !614, file: !88, line: 713, baseType: !895, size: 64, offset: 2496)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !614, file: !88, line: 714, baseType: !895, size: 64, offset: 2560)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !614, file: !88, line: 715, baseType: !130, size: 32, offset: 2624)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !614, file: !88, line: 716, baseType: !130, size: 32, offset: 2656)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !614, file: !88, line: 717, baseType: !130, size: 32, offset: 2688)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !614, file: !88, line: 719, baseType: !130, size: 32, offset: 2720)
!5346 = !DIDerivedType(tag: DW_TAG_member, scope: !614, file: !88, line: 721, baseType: !5347, size: 64, offset: 2752)
!5347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !614, file: !88, line: 721, size: 64, elements: !5348)
!5348 = !{!5349, !5350}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5347, file: !88, line: 722, baseType: !4582, size: 64)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5347, file: !88, line: 723, baseType: !828, size: 64)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !614, file: !88, line: 725, baseType: !5352, size: 64, offset: 2816)
!5352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5353, size: 64)
!5353 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !88, line: 725, flags: DIFlagFwdDecl)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !614, file: !88, line: 726, baseType: !610, size: 1536, align: 64, offset: 2880)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !614, file: !88, line: 727, baseType: !174, size: 128, offset: 4416)
!5356 = !DIDerivedType(tag: DW_TAG_member, scope: !614, file: !88, line: 728, baseType: !5357, size: 64, offset: 4544)
!5357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !614, file: !88, line: 728, size: 64, elements: !5358)
!5358 = !{!5359, !5360, !5363, !5364}
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5357, file: !88, line: 729, baseType: !3175, size: 64)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5357, file: !88, line: 730, baseType: !5361, size: 64)
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5362, size: 64)
!5362 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !88, line: 730, flags: DIFlagFwdDecl)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5357, file: !88, line: 731, baseType: !540, size: 64)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5357, file: !88, line: 732, baseType: !81, size: 32)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !614, file: !88, line: 735, baseType: !683, size: 32, offset: 4608)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !614, file: !88, line: 738, baseType: !683, size: 32, offset: 4640)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !614, file: !88, line: 739, baseType: !5052, size: 64, offset: 4672)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !614, file: !88, line: 750, baseType: !12, size: 64, offset: 4736)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !610, file: !88, line: 474, baseType: !1020, size: 128, offset: 64)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !610, file: !88, line: 475, baseType: !1382, size: 320, offset: 192)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !610, file: !88, line: 476, baseType: !1025, size: 32, offset: 512)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !610, file: !88, line: 477, baseType: !130, size: 32, offset: 544)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !610, file: !88, line: 482, baseType: !1210, size: 128, offset: 576)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !610, file: !88, line: 483, baseType: !20, size: 64, offset: 704)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !610, file: !88, line: 484, baseType: !20, size: 64, offset: 768)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !610, file: !88, line: 485, baseType: !5377, size: 64, offset: 832)
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5379)
!5379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !88, line: 404, size: 1280, elements: !5380)
!5380 = !{!5381, !5385, !5455, !5459, !5463, !5469, !5473, !5477, !5482, !5486, !5490, !5494, !5495, !5499, !5503, !5507, !5512, !5516, !5523, !5524}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5379, file: !88, line: 405, baseType: !5382, size: 64)
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5383, size: 64)
!5383 = !DISubroutineType(types: !5384)
!5384 = !{!13, !2230, !840}
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5379, file: !88, line: 406, baseType: !5386, size: 64, offset: 64)
!5386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5387, size: 64)
!5387 = !DISubroutineType(types: !5388)
!5388 = !{!13, !1354, !5389}
!5389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5390, size: 64)
!5390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !191, line: 293, size: 1536, elements: !5391)
!5391 = !{!5392, !5422, !5436}
!5392 = !DIDerivedType(tag: DW_TAG_member, scope: !5390, file: !191, line: 295, baseType: !5393, size: 512)
!5393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5390, file: !191, line: 295, size: 512, elements: !5394)
!5394 = !{!5395, !5421}
!5395 = !DIDerivedType(tag: DW_TAG_member, scope: !5393, file: !191, line: 296, baseType: !5396, size: 448)
!5396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5393, file: !191, line: 296, size: 448, elements: !5397)
!5397 = !{!5398, !5399, !5408, !5409, !5410, !5419, !5420}
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5396, file: !191, line: 298, baseType: !20, size: 64)
!5399 = !DIDerivedType(tag: DW_TAG_member, scope: !5396, file: !191, line: 299, baseType: !5400, size: 128, offset: 64)
!5400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5396, file: !191, line: 299, size: 128, elements: !5401)
!5401 = !{!5402, !5403}
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5400, file: !191, line: 300, baseType: !174, size: 128)
!5403 = !DIDerivedType(tag: DW_TAG_member, scope: !5400, file: !191, line: 302, baseType: !5404, size: 128)
!5404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5400, file: !191, line: 302, size: 128, elements: !5405)
!5405 = !{!5406, !5407}
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !5404, file: !191, line: 303, baseType: !12, size: 64)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !5404, file: !191, line: 305, baseType: !81, size: 32, offset: 64)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5396, file: !191, line: 310, baseType: !609, size: 64, offset: 192)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5396, file: !191, line: 311, baseType: !20, size: 64, offset: 256)
!5410 = !DIDerivedType(tag: DW_TAG_member, scope: !5396, file: !191, line: 312, baseType: !5411, size: 64, offset: 320)
!5411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5396, file: !191, line: 312, size: 64, elements: !5412)
!5412 = !{!5413, !5414}
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5411, file: !191, line: 313, baseType: !12, size: 64)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !5411, file: !191, line: 314, baseType: !5415, size: 64)
!5415 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !191, line: 257, baseType: !5416)
!5416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !191, line: 255, size: 64, elements: !5417)
!5417 = !{!5418}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5416, file: !191, line: 256, baseType: !20, size: 64)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5396, file: !191, line: 316, baseType: !130, size: 32, offset: 384)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !5396, file: !191, line: 317, baseType: !130, size: 32, offset: 416)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5393, file: !191, line: 323, baseType: !2231, size: 512, align: 128)
!5422 = !DIDerivedType(tag: DW_TAG_member, scope: !5390, file: !191, line: 325, baseType: !5423, size: 512, offset: 512)
!5423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5390, file: !191, line: 325, size: 512, elements: !5424)
!5424 = !{!5425, !5435}
!5425 = !DIDerivedType(tag: DW_TAG_member, scope: !5423, file: !191, line: 326, baseType: !5426, size: 320)
!5426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5423, file: !191, line: 326, size: 320, elements: !5427)
!5427 = !{!5428, !5429, !5430, !5431, !5432, !5433, !5434}
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !5426, file: !191, line: 327, baseType: !20, size: 64)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !5426, file: !191, line: 328, baseType: !20, size: 64, offset: 64)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !5426, file: !191, line: 329, baseType: !20, size: 64, offset: 128)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !5426, file: !191, line: 331, baseType: !130, size: 32, offset: 192)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !5426, file: !191, line: 332, baseType: !130, size: 32, offset: 224)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !5426, file: !191, line: 333, baseType: !130, size: 32, offset: 256)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !5426, file: !191, line: 335, baseType: !81, size: 32, offset: 288)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !5423, file: !191, line: 339, baseType: !2231, size: 512, align: 128)
!5436 = !DIDerivedType(tag: DW_TAG_member, scope: !5390, file: !191, line: 341, baseType: !5437, size: 512, offset: 1024)
!5437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5390, file: !191, line: 341, size: 512, elements: !5438)
!5438 = !{!5439, !5448, !5454}
!5439 = !DIDerivedType(tag: DW_TAG_member, scope: !5437, file: !191, line: 342, baseType: !5440, size: 384)
!5440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5437, file: !191, line: 342, size: 384, elements: !5441)
!5441 = !{!5442, !5443, !5444, !5445, !5446, !5447}
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !5440, file: !191, line: 343, baseType: !20, size: 64)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !5440, file: !191, line: 344, baseType: !20, size: 64, offset: 64)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !5440, file: !191, line: 346, baseType: !12, size: 64, offset: 128)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !5440, file: !191, line: 347, baseType: !12, size: 64, offset: 192)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !5440, file: !191, line: 348, baseType: !12, size: 64, offset: 256)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !5440, file: !191, line: 349, baseType: !12, size: 64, offset: 320)
!5448 = !DIDerivedType(tag: DW_TAG_member, scope: !5437, file: !191, line: 352, baseType: !5449, size: 256)
!5449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5437, file: !191, line: 352, size: 256, elements: !5450)
!5450 = !{!5451, !5452, !5453}
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !5449, file: !191, line: 353, baseType: !20, size: 64)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !5449, file: !191, line: 354, baseType: !20, size: 64, offset: 64)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !5449, file: !191, line: 356, baseType: !174, size: 128, offset: 128)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !5437, file: !191, line: 359, baseType: !2231, size: 512, align: 128)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5379, file: !88, line: 409, baseType: !5456, size: 64, offset: 128)
!5456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5457, size: 64)
!5457 = !DISubroutineType(types: !5458)
!5458 = !{!13, !609, !840}
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5379, file: !88, line: 412, baseType: !5460, size: 64, offset: 192)
!5460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5461, size: 64)
!5461 = !DISubroutineType(types: !5462)
!5462 = !{!1530, !609, !5389}
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5379, file: !88, line: 414, baseType: !5464, size: 64, offset: 256)
!5464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5465, size: 64)
!5465 = !DISubroutineType(types: !5466)
!5466 = !{null, !5467}
!5467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5468, size: 64)
!5468 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !88, line: 310, flags: DIFlagFwdDecl)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5379, file: !88, line: 416, baseType: !5470, size: 64, offset: 320)
!5470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5471, size: 64)
!5471 = !DISubroutineType(types: !5472)
!5472 = !{!13, !1354, !609, !122, !81, !3284, !3967}
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5379, file: !88, line: 419, baseType: !5474, size: 64, offset: 384)
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = !DISubroutineType(types: !5476)
!5476 = !{!13, !1354, !609, !122, !81, !81, !2230, !12}
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5379, file: !88, line: 424, baseType: !5478, size: 64, offset: 448)
!5478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5479, size: 64)
!5479 = !DISubroutineType(types: !5480)
!5480 = !{!5481, !609, !5481}
!5481 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !108, line: 131, baseType: !47)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5379, file: !88, line: 425, baseType: !5483, size: 64, offset: 512)
!5483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5484, size: 64)
!5484 = !DISubroutineType(types: !5485)
!5485 = !{null, !5389, !117, !117}
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5379, file: !88, line: 426, baseType: !5487, size: 64, offset: 576)
!5487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5488, size: 64)
!5488 = !DISubroutineType(types: !5489)
!5489 = !{!1530, !5389, !1025}
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5379, file: !88, line: 427, baseType: !5491, size: 64, offset: 640)
!5491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5492, size: 64)
!5492 = !DISubroutineType(types: !5493)
!5493 = !{null, !5389}
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5379, file: !88, line: 428, baseType: !4600, size: 64, offset: 704)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5379, file: !88, line: 433, baseType: !5496, size: 64, offset: 768)
!5496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5497, size: 64)
!5497 = !DISubroutineType(types: !5498)
!5498 = !{!13, !609, !5389, !5389, !235}
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5379, file: !88, line: 435, baseType: !5500, size: 64, offset: 832)
!5500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5501, size: 64)
!5501 = !DISubroutineType(types: !5502)
!5502 = !{!13, !5389}
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5379, file: !88, line: 436, baseType: !5504, size: 64, offset: 896)
!5504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5505, size: 64)
!5505 = !DISubroutineType(types: !5506)
!5506 = !{!1530, !5389, !117, !117}
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5379, file: !88, line: 438, baseType: !5508, size: 64, offset: 960)
!5508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5509, size: 64)
!5509 = !DISubroutineType(types: !5510)
!5510 = !{null, !5389, !5511, !5511}
!5511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5379, file: !88, line: 439, baseType: !5513, size: 64, offset: 1024)
!5513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5514, size: 64)
!5514 = !DISubroutineType(types: !5515)
!5515 = !{!13, !609, !2230}
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5379, file: !88, line: 442, baseType: !5517, size: 64, offset: 1088)
!5517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5518, size: 64)
!5518 = !DISubroutineType(types: !5519)
!5519 = !{!13, !5520, !1354, !5522}
!5520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5521, size: 64)
!5521 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !88, line: 66, flags: DIFlagFwdDecl)
!5522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5481, size: 64)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5379, file: !88, line: 444, baseType: !4700, size: 64, offset: 1152)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5379, file: !88, line: 445, baseType: !5525, size: 64, offset: 1216)
!5525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5526, size: 64)
!5526 = !DISubroutineType(types: !5527)
!5527 = !{!13, !4603, !4625}
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !610, file: !88, line: 486, baseType: !20, size: 64, offset: 896)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !610, file: !88, line: 487, baseType: !1382, size: 320, offset: 960)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !610, file: !88, line: 488, baseType: !4742, size: 32, offset: 1280)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !610, file: !88, line: 489, baseType: !140, size: 32, offset: 1312)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !610, file: !88, line: 490, baseType: !174, size: 128, offset: 1344)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !610, file: !88, line: 491, baseType: !12, size: 64, offset: 1472)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !600, file: !566, line: 180, baseType: !5535, size: 64, offset: 320)
!5535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5536, size: 64)
!5536 = !DISubroutineType(types: !5537)
!5537 = !{!572, !1354, !505, !599, !540, !122, !117}
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !600, file: !566, line: 182, baseType: !5535, size: 64, offset: 384)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !600, file: !566, line: 184, baseType: !5540, size: 64, offset: 448)
!5540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5541, size: 64)
!5541 = !DISubroutineType(types: !5542)
!5542 = !{!13, !1354, !505, !599, !2123}
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !588, file: !566, line: 90, baseType: !5544, size: 64, offset: 192)
!5544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !588, file: !566, line: 91, baseType: !5546, size: 64, offset: 256)
!5546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !556, file: !500, line: 120, baseType: !5548, size: 64, offset: 192)
!5548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5549, size: 64)
!5549 = !DISubroutineType(types: !5550)
!5550 = !{!3814, !523}
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !556, file: !500, line: 121, baseType: !5552, size: 64, offset: 256)
!5552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5553, size: 64)
!5553 = !DISubroutineType(types: !5554)
!5554 = !{!1459, !523}
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !556, file: !500, line: 122, baseType: !5556, size: 64, offset: 320)
!5556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5557, size: 64)
!5557 = !DISubroutineType(types: !5558)
!5558 = !{null, !523, !1709, !1710}
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !499, file: !500, line: 70, baseType: !2060, size: 64, offset: 384)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !499, file: !500, line: 71, baseType: !5561, size: 32, offset: 448)
!5561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5562, line: 19, size: 32, elements: !5563)
!5562 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5563 = !{!5564}
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5561, file: !5562, line: 20, baseType: !991, size: 32)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !499, file: !500, line: 73, baseType: !81, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !499, file: !500, line: 74, baseType: !81, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !499, file: !500, line: 75, baseType: !81, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !499, file: !500, line: 76, baseType: !81, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !499, file: !500, line: 77, baseType: !81, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !496, file: !80, line: 47, baseType: !486, size: 64, offset: 512)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !496, file: !80, line: 48, baseType: !505, size: 64, offset: 576)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !496, file: !80, line: 49, baseType: !5573, size: 64, offset: 640)
!5573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5574, size: 64)
!5574 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !80, line: 49, flags: DIFlagFwdDecl)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !496, file: !80, line: 50, baseType: !1683, size: 64, offset: 704)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !487, file: !80, line: 418, baseType: !5577, size: 64, offset: 1408)
!5577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5578, size: 64)
!5578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !80, line: 53, size: 448, elements: !5579)
!5579 = !{!5580, !5581, !5586, !5590, !5594, !5598}
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5578, file: !80, line: 54, baseType: !576, size: 128)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5578, file: !80, line: 55, baseType: !5582, size: 64, offset: 128)
!5582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5583, size: 64)
!5583 = !DISubroutineType(types: !5584)
!5584 = !{!572, !5577, !5585, !540}
!5585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5578, file: !80, line: 57, baseType: !5587, size: 64, offset: 192)
!5587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5588, size: 64)
!5588 = !DISubroutineType(types: !5589)
!5589 = !{!572, !5577, !5585, !102, !117}
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !5578, file: !80, line: 59, baseType: !5591, size: 64, offset: 256)
!5591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5592, size: 64)
!5592 = !DISubroutineType(types: !5593)
!5593 = !{null, !486, !102}
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !5578, file: !80, line: 60, baseType: !5595, size: 64, offset: 320)
!5595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5596, size: 64)
!5596 = !DISubroutineType(types: !5597)
!5597 = !{!13, !486}
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5578, file: !80, line: 61, baseType: !5599, size: 64, offset: 384)
!5599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5600, size: 64)
!5600 = !DISubroutineType(types: !5601)
!5601 = !{null, !486}
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !487, file: !80, line: 419, baseType: !102, size: 64, offset: 1472)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !487, file: !80, line: 420, baseType: !102, size: 64, offset: 1536)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !487, file: !80, line: 421, baseType: !505, size: 64, offset: 1600)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !487, file: !80, line: 424, baseType: !5606, size: 64, offset: 1664)
!5606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5607, size: 64)
!5607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5608)
!5608 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !80, line: 424, flags: DIFlagFwdDecl)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !487, file: !80, line: 425, baseType: !5610, size: 64, offset: 1728)
!5610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5611, size: 64)
!5611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !487, file: !80, line: 426, baseType: !81, size: 32, offset: 1792)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !487, file: !80, line: 435, baseType: !889, size: 256, offset: 1856)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !487, file: !80, line: 437, baseType: !5615, size: 64, offset: 2112)
!5615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5616, size: 64)
!5616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !5617, line: 69, size: 320, elements: !5618)
!5617 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!5618 = !{!5619, !5620, !5621, !5638, !5640, !5644, !5645}
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5616, file: !5617, line: 70, baseType: !102, size: 64)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5616, file: !5617, line: 71, baseType: !486, size: 64, offset: 64)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5616, file: !5617, line: 72, baseType: !5622, size: 64, offset: 128)
!5622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5623, size: 64)
!5623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5624)
!5624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !5617, line: 47, size: 256, elements: !5625)
!5625 = !{!5626, !5627, !5633, !5637}
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5624, file: !5617, line: 49, baseType: !81, size: 32)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !5624, file: !5617, line: 51, baseType: !5628, size: 64, offset: 64)
!5628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5629, size: 64)
!5629 = !DISubroutineType(types: !5630)
!5630 = !{!13, !102, !5631}
!5631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5632, size: 64)
!5632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5616)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5624, file: !5617, line: 53, baseType: !5634, size: 64, offset: 128)
!5634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5635, size: 64)
!5635 = !DISubroutineType(types: !5636)
!5636 = !{!13, !540, !5631}
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5624, file: !5617, line: 55, baseType: !3838, size: 64, offset: 192)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5616, file: !5617, line: 73, baseType: !5639, size: 16, offset: 192)
!5639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5616, file: !5617, line: 74, baseType: !5641, size: 8, offset: 208)
!5641 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !42, line: 16, baseType: !5642)
!5642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !44, line: 20, baseType: !5643)
!5643 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5616, file: !5617, line: 75, baseType: !164, size: 8, offset: 216)
!5645 = !DIDerivedType(tag: DW_TAG_member, scope: !5616, file: !5617, line: 76, baseType: !5646, size: 64, offset: 256)
!5646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5616, file: !5617, line: 76, size: 64, elements: !5647)
!5647 = !{!5648, !5649, !5656}
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5646, file: !5617, line: 77, baseType: !12, size: 64)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5646, file: !5617, line: 78, baseType: !5650, size: 64)
!5650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5651, size: 64)
!5651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5652)
!5652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !5617, line: 86, size: 128, elements: !5653)
!5653 = !{!5654, !5655}
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !5652, file: !5617, line: 87, baseType: !81, size: 32)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5652, file: !5617, line: 88, baseType: !540, size: 64, offset: 64)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !5646, file: !5617, line: 79, baseType: !5657, size: 64)
!5657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5658, size: 64)
!5658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5659)
!5659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !5617, line: 92, size: 256, elements: !5660)
!5660 = !{!5661, !5662, !5663, !5664, !5665}
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5659, file: !5617, line: 94, baseType: !81, size: 32)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !5659, file: !5617, line: 95, baseType: !81, size: 32, offset: 32)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5659, file: !5617, line: 96, baseType: !5042, size: 64, offset: 64)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5659, file: !5617, line: 97, baseType: !5622, size: 64, offset: 128)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !5659, file: !5617, line: 98, baseType: !12, size: 64, offset: 192)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !487, file: !80, line: 438, baseType: !81, size: 32, offset: 2176)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !487, file: !80, line: 441, baseType: !81, size: 32, offset: 2208)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !487, file: !80, line: 442, baseType: !5606, size: 64, offset: 2240)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !487, file: !80, line: 443, baseType: !5610, size: 64, offset: 2304)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !487, file: !80, line: 444, baseType: !1530, size: 8, offset: 2368)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !487, file: !80, line: 451, baseType: !1530, size: 8, offset: 2376)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !487, file: !80, line: 454, baseType: !81, size: 32, offset: 2400)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !487, file: !80, line: 455, baseType: !5674, size: 64, offset: 2432)
!5674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5675, size: 64)
!5675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !5676, line: 23, size: 96, elements: !5677)
!5676 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!5677 = !{!5678, !5679, !5680}
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5675, file: !5676, line: 24, baseType: !13, size: 32)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5675, file: !5676, line: 24, baseType: !13, size: 32, offset: 32)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5675, file: !5676, line: 24, baseType: !13, size: 32, offset: 64)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !487, file: !80, line: 458, baseType: !5682, size: 64, offset: 2496)
!5682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5683, size: 64)
!5683 = !DISubroutineType(types: !5684)
!5684 = !{!13}
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !487, file: !80, line: 460, baseType: !5686, size: 4032, align: 512, offset: 2560)
!5686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5687, size: 4032, elements: !5701)
!5687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !80, line: 362, size: 576, elements: !5688)
!5688 = !{!5689, !5690, !5691}
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5687, file: !80, line: 363, baseType: !12, size: 64)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5687, file: !80, line: 364, baseType: !81, size: 32, offset: 64)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !5687, file: !80, line: 367, baseType: !5692, size: 448, offset: 128)
!5692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !80, line: 319, size: 448, elements: !5693)
!5693 = !{!5694, !5695}
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5692, file: !80, line: 320, baseType: !486, size: 64)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5692, file: !80, line: 321, baseType: !5696, size: 384, offset: 64)
!5696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !5697, line: 40, size: 384, elements: !5698)
!5697 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!5698 = !{!5699}
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5696, file: !5697, line: 41, baseType: !5700, size: 384, align: 64)
!5700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1081, size: 384, align: 64, elements: !2746)
!5701 = !{!5702}
!5702 = !DISubrange(count: 7)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !487, file: !80, line: 463, baseType: !5704, size: 192, offset: 6592)
!5704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !5705, line: 8, size: 192, elements: !5706)
!5705 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!5706 = !{!5707, !5708, !5709}
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !5704, file: !5705, line: 10, baseType: !81, size: 32)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !5704, file: !5705, line: 11, baseType: !76, size: 64, offset: 64)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !5704, file: !5705, line: 12, baseType: !5710, size: 64, offset: 128)
!5710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5711, size: 64)
!5711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !5712, line: 59, size: 48, elements: !5713)
!5712 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!5713 = !{!5714, !5715, !5716, !5717, !5718, !5719}
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !5711, file: !5712, line: 60, baseType: !1476, size: 16)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !5711, file: !5712, line: 61, baseType: !1476, size: 16, offset: 16)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !5711, file: !5712, line: 63, baseType: !81, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !5711, file: !5712, line: 64, baseType: !81, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5711, file: !5712, line: 65, baseType: !81, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5711, file: !5712, line: 66, baseType: !81, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !487, file: !80, line: 465, baseType: !20, size: 64, offset: 6784)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !487, file: !80, line: 469, baseType: !81, size: 32, offset: 6848)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !487, file: !80, line: 470, baseType: !174, size: 128, offset: 6912)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !487, file: !80, line: 471, baseType: !5724, size: 64, offset: 7040)
!5724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5725, size: 64)
!5725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !5726, line: 33, size: 96, elements: !5727)
!5726 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!5727 = !{!5728, !5729, !5730, !5731}
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !5725, file: !5726, line: 37, baseType: !13, size: 32)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !5725, file: !5726, line: 43, baseType: !13, size: 32, offset: 32)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5725, file: !5726, line: 45, baseType: !45, size: 16, offset: 64)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5725, file: !5726, line: 47, baseType: !45, size: 16, offset: 80)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !487, file: !80, line: 476, baseType: !5733, size: 64, offset: 7104)
!5733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5734, size: 64)
!5734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !80, line: 378, size: 256, elements: !5735)
!5735 = !{!5736, !5752, !5753, !5754}
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !5734, file: !80, line: 379, baseType: !5737, size: 64)
!5737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5738, size: 64)
!5738 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !5739, line: 204, baseType: !5740)
!5739 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!5740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !5739, line: 197, size: 192, elements: !5741)
!5741 = !{!5742, !5744, !5745, !5746, !5748, !5750}
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !5740, file: !5739, line: 198, baseType: !5743, size: 32)
!5743 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !5739, line: 21, baseType: !683)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !5740, file: !5739, line: 199, baseType: !166, size: 8, offset: 32)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !5740, file: !5739, line: 200, baseType: !166, size: 8, offset: 40)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !5740, file: !5739, line: 201, baseType: !5747, size: 16, offset: 48)
!5747 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !5739, line: 17, baseType: !43)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !5740, file: !5739, line: 202, baseType: !5749, size: 64, offset: 64)
!5749 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !5739, line: 16, baseType: !48)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5740, file: !5739, line: 203, baseType: !5751, size: 64, offset: 128)
!5751 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !5739, line: 22, baseType: !48)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !5734, file: !80, line: 380, baseType: !81, size: 32, offset: 64)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !5734, file: !80, line: 381, baseType: !540, size: 64, offset: 128)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !5734, file: !80, line: 382, baseType: !540, size: 64, offset: 192)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !487, file: !80, line: 477, baseType: !5734, size: 256, offset: 7168)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !487, file: !80, line: 480, baseType: !5757, size: 64, offset: 7424)
!5757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5758, size: 64)
!5758 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !80, line: 480, flags: DIFlagFwdDecl)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !487, file: !80, line: 483, baseType: !5760, size: 64, offset: 7488)
!5760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5761, size: 64)
!5761 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !80, line: 483, flags: DIFlagFwdDecl)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !487, file: !80, line: 488, baseType: !540, size: 64, offset: 7552)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !487, file: !80, line: 492, baseType: !12, size: 64, offset: 7616)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !487, file: !80, line: 493, baseType: !81, size: 32, offset: 7680)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !487, file: !80, line: 495, baseType: !12, size: 64, offset: 7744)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !487, file: !80, line: 496, baseType: !81, size: 32, offset: 7808)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !487, file: !80, line: 499, baseType: !81, size: 32, offset: 7840)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !487, file: !80, line: 500, baseType: !5769, size: 64, offset: 7872)
!5769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5770, size: 64)
!5770 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !444, line: 45, baseType: !420)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !487, file: !80, line: 503, baseType: !81, size: 32, offset: 7936)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !487, file: !80, line: 504, baseType: !5773, size: 64, offset: 8000)
!5773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5774, size: 64)
!5774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5775, size: 64)
!5775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !5776, line: 96, size: 192, elements: !5777)
!5776 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!5777 = !{!5778, !5779, !5821, !5823}
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !5775, file: !5776, line: 97, baseType: !81, size: 32)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !5775, file: !5776, line: 98, baseType: !5780, size: 64, offset: 64)
!5780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5781, size: 64)
!5781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !5776, line: 24, size: 3072, elements: !5782)
!5782 = !{!5783, !5785, !5786, !5787, !5788, !5801, !5802, !5803, !5804, !5805, !5806, !5807, !5818, !5819, !5820}
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !5781, file: !5776, line: 26, baseType: !5784, size: 128)
!5784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !893, size: 128, elements: !2746)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !5781, file: !5776, line: 27, baseType: !5784, size: 128, offset: 128)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !5781, file: !5776, line: 28, baseType: !13, size: 32, offset: 256)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5781, file: !5776, line: 31, baseType: !140, size: 32, align: 512, offset: 512)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !5781, file: !5776, line: 32, baseType: !5789, size: 960, offset: 576)
!5789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !5790, line: 206, size: 960, elements: !5791)
!5790 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!5791 = !{!5792, !5793, !5796, !5798, !5799, !5800}
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5789, file: !5790, line: 207, baseType: !949, size: 64)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !5789, file: !5790, line: 208, baseType: !5794, size: 256, offset: 64)
!5794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5795, size: 256, elements: !1000)
!5795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !5789, file: !5790, line: 209, baseType: !5797, size: 256, offset: 320)
!5797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !1000)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5789, file: !5790, line: 213, baseType: !465, size: 64, offset: 576)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !5789, file: !5790, line: 215, baseType: !1744, size: 256, offset: 640)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5789, file: !5790, line: 216, baseType: !164, size: 8, offset: 896)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5781, file: !5776, line: 33, baseType: !20, size: 64, offset: 1536)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5781, file: !5776, line: 34, baseType: !20, size: 64, offset: 1600)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !5781, file: !5776, line: 35, baseType: !1530, size: 8, offset: 1664)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !5781, file: !5776, line: 36, baseType: !2454, size: 320, offset: 1728)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5781, file: !5776, line: 37, baseType: !1645, size: 256, offset: 2048)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !5781, file: !5776, line: 38, baseType: !946, size: 128, align: 64, offset: 2304)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !5781, file: !5776, line: 39, baseType: !5808, size: 64, offset: 2432)
!5808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5809, size: 64)
!5809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !5776, line: 49, size: 768, elements: !5810)
!5810 = !{!5811, !5812, !5813, !5814, !5815, !5816, !5817}
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5809, file: !5776, line: 50, baseType: !140, size: 32)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !5809, file: !5776, line: 51, baseType: !5797, size: 256, offset: 64)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !5809, file: !5776, line: 53, baseType: !5797, size: 256, offset: 320)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5809, file: !5776, line: 54, baseType: !20, size: 64, offset: 576)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !5809, file: !5776, line: 55, baseType: !5808, size: 64, offset: 640)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !5809, file: !5776, line: 56, baseType: !13, size: 32, offset: 704)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !5809, file: !5776, line: 57, baseType: !13, size: 32, offset: 736)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !5781, file: !5776, line: 40, baseType: !20, size: 64, offset: 2496)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5781, file: !5776, line: 42, baseType: !13, size: 32, offset: 2560)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !5781, file: !5776, line: 43, baseType: !5774, size: 64, offset: 2624)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !5775, file: !5776, line: 99, baseType: !5822, offset: 128)
!5822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !808, line: 211, elements: !809)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !5775, file: !5776, line: 100, baseType: !5824, size: 64, offset: 128)
!5824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5825, size: 64)
!5825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !5776, line: 63, size: 3008, elements: !5826)
!5826 = !{!5827, !5828, !5830, !5831, !5832, !5833, !5834, !5835, !5836, !5837, !5838, !5839, !5840, !5841, !5842, !5843, !5844, !5845, !5846, !5847, !5848, !5849, !5856}
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5825, file: !5776, line: 64, baseType: !5808, size: 64)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5825, file: !5776, line: 65, baseType: !5829, size: 192, offset: 64)
!5829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5808, size: 192, elements: !541)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !5825, file: !5776, line: 67, baseType: !13, size: 32, offset: 256)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !5825, file: !5776, line: 68, baseType: !889, size: 256, offset: 320)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5825, file: !5776, line: 69, baseType: !140, size: 32, offset: 576)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !5825, file: !5776, line: 70, baseType: !889, size: 256, offset: 640)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !5825, file: !5776, line: 71, baseType: !20, size: 64, offset: 896)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5825, file: !5776, line: 72, baseType: !20, size: 64, offset: 960)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5825, file: !5776, line: 73, baseType: !20, size: 64, offset: 1024)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !5825, file: !5776, line: 74, baseType: !20, size: 64, offset: 1088)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !5825, file: !5776, line: 75, baseType: !20, size: 64, offset: 1152)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !5825, file: !5776, line: 76, baseType: !20, size: 64, offset: 1216)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !5825, file: !5776, line: 77, baseType: !20, size: 64, offset: 1280)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !5825, file: !5776, line: 78, baseType: !20, size: 64, offset: 1344)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !5825, file: !5776, line: 79, baseType: !1530, size: 8, offset: 1408)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !5825, file: !5776, line: 80, baseType: !20, size: 64, offset: 1472)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !5825, file: !5776, line: 81, baseType: !889, size: 256, offset: 1536)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !5825, file: !5776, line: 82, baseType: !1684, size: 256, offset: 1792)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !5825, file: !5776, line: 84, baseType: !130, size: 32, offset: 2048)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !5825, file: !5776, line: 87, baseType: !20, size: 64, offset: 2112)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !5825, file: !5776, line: 88, baseType: !20, size: 64, offset: 2176)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5825, file: !5776, line: 89, baseType: !5850, size: 704, offset: 2240)
!5850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1646, line: 111, size: 704, elements: !5851)
!5851 = !{!5852, !5853, !5854, !5855}
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5850, file: !1646, line: 112, baseType: !1645, size: 256)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5850, file: !1646, line: 113, baseType: !2454, size: 320, offset: 256)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5850, file: !1646, line: 116, baseType: !2669, size: 64, offset: 576)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5850, file: !1646, line: 117, baseType: !13, size: 32, offset: 640)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !5825, file: !5776, line: 90, baseType: !5774, size: 64, offset: 2944)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !487, file: !80, line: 515, baseType: !457, size: 64, offset: 8064)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !487, file: !80, line: 516, baseType: !81, size: 32, offset: 8128)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !487, file: !80, line: 519, baseType: !81, size: 32, offset: 8160)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !487, file: !80, line: 520, baseType: !3715, size: 64, offset: 8192)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !487, file: !80, line: 523, baseType: !5862, size: 64, offset: 8256)
!5862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !487, file: !80, line: 524, baseType: !81, size: 32, offset: 8320)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !487, file: !80, line: 525, baseType: !5865, size: 64, offset: 8384)
!5865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5866, size: 64)
!5866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5867, size: 64)
!5867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !5868, line: 28, size: 192, elements: !5869)
!5868 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!5869 = !{!5870, !5871, !5872}
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !5867, file: !5868, line: 29, baseType: !102, size: 64)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !5867, file: !5868, line: 30, baseType: !102, size: 64, offset: 64)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !5867, file: !5868, line: 31, baseType: !20, size: 64, offset: 128)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !487, file: !80, line: 526, baseType: !81, size: 32, offset: 8448)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !487, file: !80, line: 533, baseType: !12, size: 64, offset: 8512)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !487, file: !80, line: 534, baseType: !81, size: 32, offset: 8576)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !487, file: !80, line: 535, baseType: !5877, size: 64, offset: 8640)
!5877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !487, file: !80, line: 536, baseType: !81, size: 32, offset: 8704)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !487, file: !80, line: 539, baseType: !13, size: 32, offset: 8736)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !487, file: !80, line: 540, baseType: !5881, size: 64, offset: 8768)
!5881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5882, size: 64)
!5882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !472, line: 32, size: 64, elements: !5883)
!5883 = !{!5884, !5885}
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5882, file: !472, line: 33, baseType: !461, size: 32)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5882, file: !472, line: 34, baseType: !461, size: 32, offset: 32)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !487, file: !80, line: 563, baseType: !174, size: 128, offset: 8832)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !487, file: !80, line: 565, baseType: !174, size: 128, offset: 8960)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !487, file: !80, line: 568, baseType: !2588, size: 64, offset: 9088)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !487, file: !80, line: 570, baseType: !130, size: 32, offset: 9152)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !481, file: !482, line: 172, baseType: !5881, size: 64, offset: 128)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !476, file: !472, line: 67, baseType: !5881, size: 64)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !443, file: !444, line: 36, baseType: !12, size: 64, offset: 256)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !443, file: !444, line: 37, baseType: !12, size: 64, offset: 320)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !443, file: !444, line: 38, baseType: !12, size: 64, offset: 384)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !443, file: !444, line: 39, baseType: !5682, size: 64, offset: 448)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !443, file: !444, line: 40, baseType: !2588, size: 64, offset: 512)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !443, file: !444, line: 41, baseType: !5898, size: 64, offset: 576)
!5898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5899, size: 64)
!5899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !444, line: 26, size: 192, elements: !5900)
!5900 = !{!5901, !5902, !5903}
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5899, file: !444, line: 27, baseType: !12, size: 64)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5899, file: !444, line: 28, baseType: !12, size: 64, offset: 64)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5899, file: !444, line: 29, baseType: !13, size: 32, offset: 128)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !393, file: !249, line: 380, baseType: !5905, size: 256, offset: 256)
!5905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !249, line: 148, size: 256, elements: !5906)
!5906 = !{!5907, !5908, !5909}
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5905, file: !249, line: 149, baseType: !801, size: 128)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5905, file: !249, line: 150, baseType: !13, size: 32, offset: 128)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5905, file: !249, line: 151, baseType: !5910, size: 64, offset: 192)
!5910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5911, size: 64)
!5911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !249, line: 141, size: 256, elements: !5912)
!5912 = !{!5913, !6179, !6180, !6181}
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !5911, file: !249, line: 142, baseType: !5914, size: 64)
!5914 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !249, line: 138, baseType: !5915)
!5915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5916, size: 64)
!5916 = !DISubroutineType(types: !5917)
!5917 = !{!259, !5918, !13, !6178}
!5918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5919, size: 64)
!5919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !249, line: 93, size: 67776, elements: !5920)
!5920 = !{!5921, !6130, !6131, !6133, !6134, !6135, !6136, !6140, !6141, !6142, !6143, !6144, !6145, !6146, !6160, !6161, !6162, !6163, !6171, !6172, !6173, !6174, !6175, !6176, !6177}
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !5919, file: !249, line: 94, baseType: !5922, size: 64)
!5922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5923, size: 64)
!5923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !4393, line: 319, size: 2560, elements: !5924)
!5924 = !{!5925, !5926, !5927, !5957, !5984, !5985, !5986, !5987, !5988, !5989, !5990, !5991, !5992, !5993, !6057, !6058, !6059, !6060, !6061, !6062, !6063, !6064, !6065, !6068, !6081, !6082, !6083, !6114, !6117, !6118, !6119, !6120, !6121, !6122}
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5923, file: !4393, line: 320, baseType: !174, size: 128)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5923, file: !4393, line: 321, baseType: !540, size: 64, offset: 128)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !5923, file: !4393, line: 322, baseType: !5928, size: 320, offset: 192)
!5928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !4393, line: 210, size: 320, elements: !5929)
!5929 = !{!5930, !5931, !5935, !5955, !5956}
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !5928, file: !4393, line: 211, baseType: !5922, size: 64)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5928, file: !4393, line: 212, baseType: !5932, size: 64, offset: 64)
!5932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5933, size: 64)
!5933 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_buffer", file: !5934, line: 9, flags: DIFlagFwdDecl)
!5934 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5928, file: !4393, line: 213, baseType: !5936, size: 64, offset: 128)
!5936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5937, size: 64)
!5937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array_cpu", file: !4393, line: 183, size: 1024, elements: !5938)
!5938 = !{!5939, !5940, !5941, !5942, !5943, !5944, !5945, !5946, !5947, !5948, !5949, !5950, !5951, !5952, !5953, !5954}
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !5937, file: !4393, line: 184, baseType: !130, size: 32)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_page", scope: !5937, file: !4393, line: 185, baseType: !12, size: 64, offset: 64)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5937, file: !4393, line: 187, baseType: !20, size: 64, offset: 128)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "saved_latency", scope: !5937, file: !4393, line: 188, baseType: !20, size: 64, offset: 192)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "critical_start", scope: !5937, file: !4393, line: 189, baseType: !20, size: 64, offset: 256)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "critical_end", scope: !5937, file: !4393, line: 190, baseType: !20, size: 64, offset: 320)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "critical_sequence", scope: !5937, file: !4393, line: 191, baseType: !20, size: 64, offset: 384)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "nice", scope: !5937, file: !4393, line: 192, baseType: !20, size: 64, offset: 448)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !5937, file: !4393, line: 193, baseType: !20, size: 64, offset: 512)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !5937, file: !4393, line: 194, baseType: !20, size: 64, offset: 576)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "skipped_entries", scope: !5937, file: !4393, line: 195, baseType: !20, size: 64, offset: 640)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_timestamp", scope: !5937, file: !4393, line: 196, baseType: !47, size: 64, offset: 704)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !5937, file: !4393, line: 197, baseType: !1848, size: 32, offset: 768)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5937, file: !4393, line: 198, baseType: !619, size: 32, offset: 800)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !5937, file: !4393, line: 199, baseType: !1975, size: 128, offset: 832)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_pid", scope: !5937, file: !4393, line: 204, baseType: !1530, size: 8, offset: 960)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "time_start", scope: !5928, file: !4393, line: 214, baseType: !47, size: 64, offset: 192)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5928, file: !4393, line: 215, baseType: !13, size: 32, offset: 256)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "filtered_pids", scope: !5923, file: !4393, line: 346, baseType: !5958, size: 64, offset: 512)
!5958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5959, size: 64)
!5959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_pid_list", file: !5960, line: 78, size: 16896, elements: !5961)
!5960 = !DIFile(filename: "kernel/trace/pid_list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca7ceba9dd4bbea3985e3aae225c7de1")
!5961 = !{!5962, !5963, !5964, !5980, !5981, !5982, !5983}
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5959, file: !5960, line: 79, baseType: !902, size: 32)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "refill_irqwork", scope: !5959, file: !5960, line: 80, baseType: !4228, size: 256, offset: 64)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !5959, file: !5960, line: 81, baseType: !5965, size: 16384, offset: 320)
!5965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5966, size: 16384, elements: !5978)
!5966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5967, size: 64)
!5967 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "upper_chunk", file: !5960, line: 73, size: 16384, elements: !5968)
!5968 = !{!5969, !5970}
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5967, file: !5960, line: 74, baseType: !5966, size: 64)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5967, file: !5960, line: 75, baseType: !5971, size: 16384)
!5971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5972, size: 16384, elements: !5978)
!5972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5973, size: 64)
!5973 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "lower_chunk", file: !5960, line: 68, size: 16384, elements: !5974)
!5974 = !{!5975, !5976}
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5973, file: !5960, line: 69, baseType: !5972, size: 64)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5973, file: !5960, line: 70, baseType: !5977, size: 16384)
!5977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 16384, elements: !5978)
!5978 = !{!5979}
!5979 = !DISubrange(count: 256)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "upper_list", scope: !5959, file: !5960, line: 82, baseType: !5966, size: 64, offset: 16704)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "lower_list", scope: !5959, file: !5960, line: 83, baseType: !5972, size: 64, offset: 16768)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "free_upper_chunks", scope: !5959, file: !5960, line: 84, baseType: !13, size: 32, offset: 16832)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "free_lower_chunks", scope: !5959, file: !5960, line: 85, baseType: !13, size: 32, offset: 16864)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "filtered_no_pids", scope: !5923, file: !4393, line: 347, baseType: !5958, size: 64, offset: 576)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "max_lock", scope: !5923, file: !4393, line: 361, baseType: !152, size: 32, offset: 640)
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_disabled", scope: !5923, file: !4393, line: 362, baseType: !13, size: 32, offset: 672)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "stop_count", scope: !5923, file: !4393, line: 369, baseType: !13, size: 32, offset: 704)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "clock_id", scope: !5923, file: !4393, line: 370, baseType: !13, size: 32, offset: 736)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "nr_topts", scope: !5923, file: !4393, line: 371, baseType: !13, size: 32, offset: 768)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "clear_trace", scope: !5923, file: !4393, line: 372, baseType: !1530, size: 8, offset: 800)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_percent", scope: !5923, file: !4393, line: 373, baseType: !13, size: 32, offset: 832)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "n_err_log_entries", scope: !5923, file: !4393, line: 374, baseType: !81, size: 32, offset: 864)
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "current_trace", scope: !5923, file: !4393, line: 375, baseType: !5994, size: 64, offset: 896)
!5994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5995, size: 64)
!5995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !4393, line: 556, size: 1216, elements: !5996)
!5996 = !{!5997, !5998, !6002, !6006, !6007, !6008, !6009, !6013, !6014, !6015, !6016, !6020, !6024, !6028, !6032, !6036, !6040, !6041, !6053, !6054, !6055, !6056}
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5995, file: !4393, line: 557, baseType: !102, size: 64)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5995, file: !4393, line: 558, baseType: !5999, size: 64, offset: 64)
!5999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6000, size: 64)
!6000 = !DISubroutineType(types: !6001)
!6001 = !{!13, !5922}
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5995, file: !4393, line: 559, baseType: !6003, size: 64, offset: 128)
!6003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6004, size: 64)
!6004 = !DISubroutineType(types: !6005)
!6005 = !{null, !5922}
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5995, file: !4393, line: 560, baseType: !6003, size: 64, offset: 192)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !5995, file: !4393, line: 561, baseType: !6003, size: 64, offset: 256)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "update_thresh", scope: !5995, file: !4393, line: 562, baseType: !5999, size: 64, offset: 320)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5995, file: !4393, line: 563, baseType: !6010, size: 64, offset: 384)
!6010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6011, size: 64)
!6011 = !DISubroutineType(types: !6012)
!6012 = !{null, !5918}
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_open", scope: !5995, file: !4393, line: 564, baseType: !6010, size: 64, offset: 448)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !5995, file: !4393, line: 565, baseType: !6010, size: 64, offset: 512)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_close", scope: !5995, file: !4393, line: 566, baseType: !6010, size: 64, offset: 576)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5995, file: !4393, line: 567, baseType: !6017, size: 64, offset: 640)
!6017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6018, size: 64)
!6018 = !DISubroutineType(types: !6019)
!6019 = !{!572, !5918, !1354, !540, !117, !121}
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !5995, file: !4393, line: 570, baseType: !6021, size: 64, offset: 704)
!6021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6022, size: 64)
!6022 = !DISubroutineType(types: !6023)
!6023 = !{!572, !5918, !1354, !121, !3175, !117, !81}
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "print_header", scope: !5995, file: !4393, line: 580, baseType: !6025, size: 64, offset: 768)
!6025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6026, size: 64)
!6026 = !DISubroutineType(types: !6027)
!6027 = !{null, !877}
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "print_line", scope: !5995, file: !4393, line: 581, baseType: !6029, size: 64, offset: 832)
!6029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6030, size: 64)
!6030 = !DISubroutineType(types: !6031)
!6031 = !{!259, !5918}
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "set_flag", scope: !5995, file: !4393, line: 583, baseType: !6033, size: 64, offset: 896)
!6033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6034, size: 64)
!6034 = !DISubroutineType(types: !6035)
!6035 = !{!13, !5922, !682, !682, !13}
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "flag_changed", scope: !5995, file: !4393, line: 586, baseType: !6037, size: 64, offset: 960)
!6037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6038, size: 64)
!6038 = !DISubroutineType(types: !6039)
!6039 = !{!13, !5922, !682, !13}
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5995, file: !4393, line: 588, baseType: !5994, size: 64, offset: 1024)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5995, file: !4393, line: 589, baseType: !6042, size: 64, offset: 1088)
!6042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6043, size: 64)
!6043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracer_flags", file: !4393, line: 519, size: 192, elements: !6044)
!6044 = !{!6045, !6046, !6052}
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !6043, file: !4393, line: 520, baseType: !682, size: 32)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !6043, file: !4393, line: 521, baseType: !6047, size: 64, offset: 64)
!6047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6048, size: 64)
!6048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracer_opt", file: !4393, line: 510, size: 128, elements: !6049)
!6049 = !{!6050, !6051}
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6048, file: !4393, line: 511, baseType: !102, size: 64)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "bit", scope: !6048, file: !4393, line: 512, baseType: !682, size: 32, offset: 64)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !6043, file: !4393, line: 522, baseType: !5994, size: 64, offset: 128)
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5995, file: !4393, line: 590, baseType: !13, size: 32, offset: 1152)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "print_max", scope: !5995, file: !4393, line: 591, baseType: !1530, size: 8, offset: 1184)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "allow_instances", scope: !5995, file: !4393, line: 592, baseType: !1530, size: 8, offset: 1192)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "noboot", scope: !5995, file: !4393, line: 597, baseType: !1530, size: 8, offset: 1200)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "trace_flags", scope: !5923, file: !4393, line: 376, baseType: !81, size: 32, offset: 960)
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "trace_flags_index", scope: !5923, file: !4393, line: 377, baseType: !691, size: 256, offset: 992)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5923, file: !4393, line: 378, baseType: !81, size: 32, offset: 1248)
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "start_lock", scope: !5923, file: !4393, line: 379, baseType: !902, size: 32, offset: 1280)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "err_log", scope: !5923, file: !4393, line: 380, baseType: !174, size: 128, offset: 1344)
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5923, file: !4393, line: 381, baseType: !648, size: 64, offset: 1472)
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !5923, file: !4393, line: 382, baseType: !648, size: 64, offset: 1536)
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dir", scope: !5923, file: !4393, line: 383, baseType: !648, size: 64, offset: 1600)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "event_dir", scope: !5923, file: !4393, line: 384, baseType: !6066, size: 64, offset: 1664)
!6066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6067, size: 64)
!6067 = !DICompositeType(tag: DW_TAG_structure_type, name: "eventfs_inode", file: !249, line: 659, flags: DIFlagFwdDecl)
!6068 = !DIDerivedType(tag: DW_TAG_member, name: "topts", scope: !5923, file: !4393, line: 385, baseType: !6069, size: 64, offset: 1728)
!6069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6070, size: 64)
!6070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_options", file: !4393, line: 220, size: 128, elements: !6071)
!6071 = !{!6072, !6073}
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "tracer", scope: !6070, file: !4393, line: 221, baseType: !5994, size: 64)
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "topts", scope: !6070, file: !4393, line: 222, baseType: !6074, size: 64, offset: 64)
!6074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6075, size: 64)
!6075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_option_dentry", file: !4393, line: 529, size: 256, elements: !6076)
!6076 = !{!6077, !6078, !6079, !6080}
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !6075, file: !4393, line: 530, baseType: !6047, size: 64)
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6075, file: !4393, line: 531, baseType: !6042, size: 64, offset: 64)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !6075, file: !4393, line: 532, baseType: !5922, size: 64, offset: 128)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !6075, file: !4393, line: 533, baseType: !648, size: 64, offset: 192)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "systems", scope: !5923, file: !4393, line: 386, baseType: !174, size: 128, offset: 1792)
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5923, file: !4393, line: 387, baseType: !174, size: 128, offset: 1920)
!6083 = !DIDerivedType(tag: DW_TAG_member, name: "trace_marker_file", scope: !5923, file: !4393, line: 388, baseType: !6084, size: 64, offset: 2048)
!6084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6085, size: 64)
!6085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_file", file: !249, line: 655, size: 768, elements: !6086)
!6086 = !{!6087, !6088, !6089, !6090, !6091, !6092, !6109, !6110, !6111, !6112, !6113}
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6085, file: !249, line: 656, baseType: !174, size: 128)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "event_call", scope: !6085, file: !249, line: 657, baseType: !392, size: 64, offset: 128)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !6085, file: !249, line: 658, baseType: !4391, size: 64, offset: 192)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "ei", scope: !6085, file: !249, line: 659, baseType: !6066, size: 64, offset: 256)
!6091 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !6085, file: !249, line: 660, baseType: !5922, size: 64, offset: 320)
!6092 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !6085, file: !249, line: 661, baseType: !6093, size: 64, offset: 384)
!6093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6094, size: 64)
!6094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_subsystem_dir", file: !4393, line: 1344, size: 384, elements: !6095)
!6095 = !{!6096, !6097, !6105, !6106, !6107, !6108}
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6094, file: !4393, line: 1345, baseType: !174, size: 128)
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem", scope: !6094, file: !4393, line: 1346, baseType: !6098, size: 64, offset: 128)
!6098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6099, size: 64)
!6099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_subsystem", file: !4393, line: 1337, size: 320, elements: !6100)
!6100 = !{!6101, !6102, !6103, !6104}
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6099, file: !4393, line: 1338, baseType: !174, size: 128)
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6099, file: !4393, line: 1339, baseType: !102, size: 64, offset: 128)
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !6099, file: !4393, line: 1340, baseType: !4391, size: 64, offset: 192)
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !6099, file: !4393, line: 1341, baseType: !13, size: 32, offset: 256)
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !6094, file: !4393, line: 1347, baseType: !5922, size: 64, offset: 192)
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "ei", scope: !6094, file: !4393, line: 1348, baseType: !6066, size: 64, offset: 256)
!6107 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !6094, file: !4393, line: 1349, baseType: !13, size: 32, offset: 320)
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !6094, file: !4393, line: 1350, baseType: !13, size: 32, offset: 352)
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "triggers", scope: !6085, file: !249, line: 662, baseType: !174, size: 128, offset: 448)
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6085, file: !249, line: 680, baseType: !20, size: 64, offset: 576)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !6085, file: !249, line: 681, baseType: !130, size: 32, offset: 640)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "sm_ref", scope: !6085, file: !249, line: 682, baseType: !130, size: 32, offset: 672)
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "tm_ref", scope: !6085, file: !249, line: 683, baseType: !130, size: 32, offset: 704)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "tracing_cpumask", scope: !5923, file: !4393, line: 389, baseType: !6115, size: 64, offset: 2112)
!6115 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1274, line: 913, baseType: !6116)
!6116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1275, size: 64, elements: !1279)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_cpumask", scope: !5923, file: !4393, line: 391, baseType: !6115, size: 64, offset: 2176)
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5923, file: !4393, line: 392, baseType: !13, size: 32, offset: 2240)
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "trace_ref", scope: !5923, file: !4393, line: 393, baseType: !13, size: 32, offset: 2272)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "no_filter_buffering_ref", scope: !5923, file: !4393, line: 407, baseType: !13, size: 32, offset: 2304)
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "hist_vars", scope: !5923, file: !4393, line: 408, baseType: !174, size: 128, offset: 2368)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "last_func_repeats", scope: !5923, file: !4393, line: 412, baseType: !6123, size: 64, offset: 2496)
!6123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6124, size: 64)
!6124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_func_repeats", file: !4393, line: 307, size: 256, elements: !6125)
!6125 = !{!6126, !6127, !6128, !6129}
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !6124, file: !4393, line: 308, baseType: !20, size: 64)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ip", scope: !6124, file: !4393, line: 309, baseType: !20, size: 64, offset: 64)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !6124, file: !4393, line: 310, baseType: !20, size: 64, offset: 128)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "ts_last_call", scope: !6124, file: !4393, line: 311, baseType: !47, size: 64, offset: 192)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !5919, file: !249, line: 95, baseType: !5994, size: 64, offset: 64)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !5919, file: !249, line: 96, baseType: !6132, size: 64, offset: 128)
!6132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5928, size: 64)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5919, file: !249, line: 97, baseType: !12, size: 64, offset: 192)
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !5919, file: !249, line: 98, baseType: !13, size: 32, offset: 256)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5919, file: !249, line: 99, baseType: !889, size: 256, offset: 320)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !5919, file: !249, line: 100, baseType: !6137, size: 64, offset: 576)
!6137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6138, size: 64)
!6138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6139, size: 64)
!6139 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !5934, line: 10, flags: DIFlagFwdDecl)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !5919, file: !249, line: 101, baseType: !20, size: 64, offset: 640)
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !5919, file: !249, line: 102, baseType: !12, size: 64, offset: 704)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !5919, file: !249, line: 103, baseType: !81, size: 32, offset: 768)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !5919, file: !249, line: 104, baseType: !540, size: 64, offset: 832)
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !5919, file: !249, line: 105, baseType: !81, size: 32, offset: 896)
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !5919, file: !249, line: 106, baseType: !465, size: 64, offset: 960)
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !5919, file: !249, line: 109, baseType: !6147, size: 33088, offset: 1024)
!6147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !6148, line: 14, size: 33088, elements: !6149)
!6148 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!6149 = !{!6150, !6151, !6158, !6159}
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !6147, file: !6148, line: 15, baseType: !2489, size: 32768)
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !6147, file: !6148, line: 16, baseType: !6152, size: 192, offset: 32768)
!6152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !6153, line: 18, size: 192, elements: !6154)
!6153 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!6154 = !{!6155, !6156, !6157}
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !6152, file: !6153, line: 19, baseType: !540, size: 64)
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6152, file: !6153, line: 20, baseType: !117, size: 64, offset: 64)
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !6152, file: !6153, line: 21, baseType: !117, size: 64, offset: 128)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !6147, file: !6148, line: 17, baseType: !117, size: 64, offset: 32960)
!6159 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !6147, file: !6148, line: 18, baseType: !13, size: 32, offset: 33024)
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !5919, file: !249, line: 111, baseType: !6115, size: 64, offset: 34112)
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !5919, file: !249, line: 114, baseType: !1530, size: 8, offset: 34176)
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !5919, file: !249, line: 117, baseType: !6147, size: 33088, offset: 34240)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !5919, file: !249, line: 118, baseType: !6164, size: 64, offset: 67328)
!6164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6165, size: 64)
!6165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !249, line: 79, size: 64, elements: !6166)
!6166 = !{!6167, !6168, !6169, !6170}
!6167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6165, file: !249, line: 80, baseType: !45, size: 16)
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6165, file: !249, line: 81, baseType: !166, size: 8, offset: 16)
!6169 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !6165, file: !249, line: 82, baseType: !166, size: 8, offset: 24)
!6170 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !6165, file: !249, line: 83, baseType: !13, size: 32, offset: 32)
!6171 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !5919, file: !249, line: 119, baseType: !20, size: 64, offset: 67392)
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !5919, file: !249, line: 120, baseType: !13, size: 32, offset: 67456)
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !5919, file: !249, line: 121, baseType: !13, size: 32, offset: 67488)
!6174 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5919, file: !249, line: 122, baseType: !13, size: 32, offset: 67520)
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !5919, file: !249, line: 123, baseType: !47, size: 64, offset: 67584)
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5919, file: !249, line: 125, baseType: !122, size: 64, offset: 67648)
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !5919, file: !249, line: 126, baseType: !465, size: 64, offset: 67712)
!6178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5905, size: 64)
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !5911, file: !249, line: 143, baseType: !5914, size: 64, offset: 64)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !5911, file: !249, line: 144, baseType: !5914, size: 64, offset: 128)
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !5911, file: !249, line: 145, baseType: !5914, size: 64, offset: 192)
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !393, file: !249, line: 381, baseType: !540, size: 64, offset: 512)
!6183 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !393, file: !249, line: 382, baseType: !4391, size: 64, offset: 576)
!6184 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !249, line: 387, baseType: !6185, size: 64, offset: 640)
!6185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !249, line: 387, size: 64, elements: !6186)
!6186 = !{!6187, !6188}
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !6185, file: !249, line: 388, baseType: !12, size: 64)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !6185, file: !249, line: 389, baseType: !130, size: 32)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !393, file: !249, line: 391, baseType: !12, size: 64, offset: 704)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !393, file: !249, line: 394, baseType: !13, size: 32, offset: 768)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !393, file: !249, line: 397, baseType: !13, size: 32, offset: 800)
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !393, file: !249, line: 398, baseType: !4739, size: 64, offset: 832)
!6193 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !393, file: !249, line: 399, baseType: !6194, size: 64, offset: 896)
!6194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6195, size: 64)
!6195 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !249, line: 399, flags: DIFlagFwdDecl)
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !393, file: !249, line: 401, baseType: !6197, size: 64, offset: 960)
!6197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6198, size: 64)
!6198 = !DISubroutineType(types: !6199)
!6199 = !{!13, !392, !3337}
!6200 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !108, line: 42, baseType: !20)
!6201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6202, size: 64)
!6202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1275)
!6203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6204, size: 64)
!6204 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_trace_t", file: !2, line: 22, baseType: !6205)
!6205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 65536, elements: !6206)
!6206 = !{!6207}
!6207 = !DISubrange(count: 1024)
!6208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6209, size: 64)
!6209 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !805)
!6210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6211, size: 64)
!6211 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !800)
!6212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!6213 = !{!0, !7, !6214, !6219, !6221, !6223, !6225, !6228}
!6214 = !DIGlobalVariableExpression(var: !6215, expr: !DIExpression())
!6215 = distinct !DIGlobalVariable(scope: null, file: !2, line: 405, type: !6216, isLocal: true, isDefinition: true)
!6216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !6217)
!6217 = !{!6218}
!6218 = !DISubrange(count: 49)
!6219 = !DIGlobalVariableExpression(var: !6220, expr: !DIExpression())
!6220 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_perf_trace_buf_alloc329", scope: !77, file: !2, line: 422, type: !12, isLocal: true, isDefinition: true)
!6221 = !DIGlobalVariableExpression(var: !6222, expr: !DIExpression())
!6222 = distinct !DIGlobalVariable(name: "_kbl_addr_perf_trace_buf_alloc", scope: !77, file: !2, line: 423, type: !20, isLocal: true, isDefinition: true)
!6223 = !DIGlobalVariableExpression(var: !6224, expr: !DIExpression())
!6224 = distinct !DIGlobalVariable(name: "_kbl_addr_perf_trace_buf_update", scope: !77, file: !2, line: 431, type: !20, isLocal: true, isDefinition: true)
!6225 = !DIGlobalVariableExpression(var: !6226, expr: !DIExpression())
!6226 = distinct !DIGlobalVariable(name: "perf_trace_buf", scope: !77, file: !2, line: 15, type: !6227, isLocal: true, isDefinition: true)
!6227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 256, elements: !1000)
!6228 = !DIGlobalVariableExpression(var: !6229, expr: !DIExpression())
!6229 = distinct !DIGlobalVariable(name: "total_ref_count", scope: !77, file: !2, line: 25, type: !13, isLocal: true, isDefinition: true)
!6230 = !{!6231, !6232, !6233, !6234, !6235, !6236, !6239, !6242, !6243, !6245, !6249, !6253, !6255, !6258}
!6231 = !DILocalVariable(name: "size", arg: 1, scope: !9, file: !2, line: 398, type: !13)
!6232 = !DILocalVariable(name: "regs", arg: 2, scope: !9, file: !2, line: 398, type: !14)
!6233 = !DILocalVariable(name: "rctxp", arg: 3, scope: !9, file: !2, line: 398, type: !76)
!6234 = !DILocalVariable(name: "raw_data", scope: !9, file: !2, line: 400, type: !540)
!6235 = !DILocalVariable(name: "rctx", scope: !9, file: !2, line: 401, type: !13)
!6236 = !DILocalVariable(name: "__ret_do_once", scope: !6237, file: !2, line: 405, type: !1530)
!6237 = distinct !DILexicalBlock(scope: !6238, file: !2, line: 405, column: 6)
!6238 = distinct !DILexicalBlock(scope: !9, file: !2, line: 405, column: 6)
!6239 = !DILocalVariable(name: "__ret_cond", scope: !6240, file: !2, line: 405, type: !1530)
!6240 = distinct !DILexicalBlock(scope: !6241, file: !2, line: 405, column: 6)
!6241 = distinct !DILexicalBlock(scope: !6237, file: !2, line: 405, column: 6)
!6242 = !DILocalVariable(name: "__ret_once", scope: !6240, file: !2, line: 405, type: !1530)
!6243 = !DILocalVariable(name: "__ret_warn_on", scope: !6244, file: !2, line: 405, type: !13)
!6244 = distinct !DILexicalBlock(scope: !6241, file: !2, line: 405, column: 6)
!6245 = !DILocalVariable(name: "__flags", scope: !6246, file: !2, line: 405, type: !13)
!6246 = distinct !DILexicalBlock(scope: !6247, file: !2, line: 405, column: 6)
!6247 = distinct !DILexicalBlock(scope: !6248, file: !2, line: 405, column: 6)
!6248 = distinct !DILexicalBlock(scope: !6244, file: !2, line: 405, column: 6)
!6249 = !DILocalVariable(name: "__vpp_verify", scope: !6250, file: !2, line: 415, type: !1459)
!6250 = distinct !DILexicalBlock(scope: !6251, file: !2, line: 415, column: 11)
!6251 = distinct !DILexicalBlock(scope: !6252, file: !2, line: 415, column: 11)
!6252 = distinct !DILexicalBlock(scope: !9, file: !2, line: 414, column: 6)
!6253 = !DILocalVariable(name: "tcp_ptr__", scope: !6254, file: !2, line: 415, type: !20)
!6254 = distinct !DILexicalBlock(scope: !6251, file: !2, line: 415, column: 11)
!6255 = !DILocalVariable(name: "__vpp_verify", scope: !6256, file: !2, line: 416, type: !1459)
!6256 = distinct !DILexicalBlock(scope: !6257, file: !2, line: 416, column: 13)
!6257 = distinct !DILexicalBlock(scope: !9, file: !2, line: 416, column: 13)
!6258 = !DILocalVariable(name: "tcp_ptr__", scope: !6259, file: !2, line: 416, type: !20)
!6259 = distinct !DILexicalBlock(scope: !6257, file: !2, line: 416, column: 13)
!6260 = !{i32 7, !"Dwarf Version", i32 5}
!6261 = !{i32 2, !"Debug Info Version", i32 3}
!6262 = !{i32 1, !"wchar_size", i32 2}
!6263 = !{i32 8, !"cf-protection-branch", i32 1}
!6264 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6265 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6266 = !{i32 1, !"Code Model", i32 2}
!6267 = !{i32 1, !"override-stack-alignment", i32 8}
!6268 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6269 = distinct !DISubprogram(name: "perf_trace_init", scope: !2, file: !2, line: 215, type: !3920, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !6270)
!6270 = !{!6271, !6272, !6273, !6274, !6275, !6278}
!6271 = !DILocalVariable(name: "p_event", arg: 1, scope: !6269, file: !2, line: 215, type: !3337)
!6272 = !DILocalVariable(name: "tp_event", scope: !6269, file: !2, line: 217, type: !392)
!6273 = !DILocalVariable(name: "event_id", scope: !6269, file: !2, line: 218, type: !47)
!6274 = !DILocalVariable(name: "ret", scope: !6269, file: !2, line: 219, type: !13)
!6275 = !DILocalVariable(name: "__mptr", scope: !6276, file: !2, line: 222, type: !12)
!6276 = distinct !DILexicalBlock(scope: !6277, file: !2, line: 222, column: 2)
!6277 = distinct !DILexicalBlock(scope: !6269, file: !2, line: 222, column: 2)
!6278 = !DILocalVariable(name: "__mptr", scope: !6279, file: !2, line: 222, type: !12)
!6279 = distinct !DILexicalBlock(scope: !6280, file: !2, line: 222, column: 2)
!6280 = distinct !DILexicalBlock(scope: !6277, file: !2, line: 222, column: 2)
!6281 = !DILocation(line: 215, column: 40, scope: !6269)
!6282 = !DILocation(line: 217, column: 2, scope: !6269)
!6283 = !DILocation(line: 217, column: 27, scope: !6269)
!6284 = !DILocation(line: 218, column: 2, scope: !6269)
!6285 = !DILocation(line: 218, column: 6, scope: !6269)
!6286 = !DILocation(line: 218, column: 17, scope: !6269)
!6287 = !DILocation(line: 218, column: 26, scope: !6269)
!6288 = !DILocation(line: 218, column: 31, scope: !6269)
!6289 = !DILocation(line: 219, column: 2, scope: !6269)
!6290 = !DILocation(line: 219, column: 6, scope: !6269)
!6291 = !DILocation(line: 221, column: 2, scope: !6269)
!6292 = !DILocation(line: 222, column: 2, scope: !6276)
!6293 = !DILocation(line: 222, column: 2, scope: !6277)
!6294 = !DILocation(line: 222, column: 2, scope: !6280)
!6295 = !DILocation(line: 223, column: 7, scope: !6296)
!6296 = distinct !DILexicalBlock(scope: !6297, file: !2, line: 223, column: 7)
!6297 = distinct !DILexicalBlock(scope: !6280, file: !2, line: 222, column: 54)
!6298 = !DILocation(line: 223, column: 17, scope: !6296)
!6299 = !DILocation(line: 223, column: 23, scope: !6296)
!6300 = !DILocation(line: 223, column: 31, scope: !6296)
!6301 = !DILocation(line: 223, column: 28, scope: !6296)
!6302 = !DILocation(line: 223, column: 40, scope: !6296)
!6303 = !DILocation(line: 224, column: 7, scope: !6296)
!6304 = !DILocation(line: 224, column: 17, scope: !6296)
!6305 = !DILocation(line: 224, column: 23, scope: !6296)
!6306 = !DILocation(line: 224, column: 26, scope: !6296)
!6307 = !DILocation(line: 224, column: 36, scope: !6296)
!6308 = !DILocation(line: 224, column: 43, scope: !6296)
!6309 = !DILocation(line: 224, column: 47, scope: !6296)
!6310 = !DILocation(line: 225, column: 31, scope: !6296)
!6311 = !DILocation(line: 225, column: 7, scope: !6296)
!6312 = !DILocation(line: 223, column: 7, scope: !6297)
!6313 = !DILocation(line: 226, column: 32, scope: !6314)
!6314 = distinct !DILexicalBlock(scope: !6296, file: !2, line: 225, column: 42)
!6315 = !DILocation(line: 226, column: 42, scope: !6314)
!6316 = !DILocation(line: 226, column: 10, scope: !6314)
!6317 = !DILocation(line: 226, column: 8, scope: !6314)
!6318 = !DILocation(line: 227, column: 8, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !6314, file: !2, line: 227, column: 8)
!6320 = !DILocation(line: 227, column: 8, scope: !6314)
!6321 = !DILocation(line: 228, column: 25, scope: !6319)
!6322 = !DILocation(line: 228, column: 5, scope: !6319)
!6323 = !DILocation(line: 229, column: 4, scope: !6314)
!6324 = !DILocation(line: 231, column: 2, scope: !6297)
!6325 = !DILocation(line: 222, column: 2, scope: !6279)
!6326 = distinct !{!6326, !6293, !6327, !6328, !6329}
!6327 = !DILocation(line: 231, column: 2, scope: !6277)
!6328 = !{!"llvm.loop.mustprogress"}
!6329 = !{!"llvm.loop.unroll.disable"}
!6330 = !DILocation(line: 232, column: 2, scope: !6269)
!6331 = !DILocation(line: 234, column: 9, scope: !6269)
!6332 = !DILocation(line: 235, column: 1, scope: !6269)
!6333 = !DILocation(line: 234, column: 2, scope: !6269)
!6334 = !DISubprogram(name: "mutex_lock", scope: !890, file: !890, line: 227, type: !6335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6335 = !DISubroutineType(types: !6336)
!6336 = !{null, !6337}
!6337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!6338 = distinct !DISubprogram(name: "trace_event_try_get_ref", scope: !249, file: !249, line: 426, type: !6339, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !6341)
!6339 = !DISubroutineType(types: !6340)
!6340 = !{!1530, !392}
!6341 = !{!6342}
!6342 = !DILocalVariable(name: "call", arg: 1, scope: !6338, file: !249, line: 426, type: !392)
!6343 = !DILocation(line: 426, column: 69, scope: !6338)
!6344 = !DILocation(line: 428, column: 6, scope: !6345)
!6345 = distinct !DILexicalBlock(scope: !6338, file: !249, line: 428, column: 6)
!6346 = !DILocation(line: 428, column: 12, scope: !6345)
!6347 = !DILocation(line: 428, column: 18, scope: !6345)
!6348 = !DILocation(line: 428, column: 6, scope: !6338)
!6349 = !DILocation(line: 429, column: 38, scope: !6345)
!6350 = !DILocation(line: 429, column: 10, scope: !6345)
!6351 = !DILocation(line: 429, column: 3, scope: !6345)
!6352 = !DILocation(line: 431, column: 25, scope: !6345)
!6353 = !DILocation(line: 431, column: 31, scope: !6345)
!6354 = !DILocation(line: 431, column: 10, scope: !6345)
!6355 = !DILocation(line: 431, column: 3, scope: !6345)
!6356 = !DILocation(line: 432, column: 1, scope: !6338)
!6357 = distinct !DISubprogram(name: "perf_trace_event_init", scope: !2, file: !2, line: 193, type: !6198, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !6358)
!6358 = !{!6359, !6360, !6361}
!6359 = !DILocalVariable(name: "tp_event", arg: 1, scope: !6357, file: !2, line: 193, type: !392)
!6360 = !DILocalVariable(name: "p_event", arg: 2, scope: !6357, file: !2, line: 194, type: !3337)
!6361 = !DILocalVariable(name: "ret", scope: !6357, file: !2, line: 196, type: !13)
!6362 = !DILocation(line: 193, column: 59, scope: !6357)
!6363 = !DILocation(line: 194, column: 25, scope: !6357)
!6364 = !DILocation(line: 196, column: 2, scope: !6357)
!6365 = !DILocation(line: 196, column: 6, scope: !6357)
!6366 = !DILocation(line: 198, column: 30, scope: !6357)
!6367 = !DILocation(line: 198, column: 40, scope: !6357)
!6368 = !DILocation(line: 198, column: 8, scope: !6357)
!6369 = !DILocation(line: 198, column: 6, scope: !6357)
!6370 = !DILocation(line: 199, column: 6, scope: !6371)
!6371 = distinct !DILexicalBlock(scope: !6357, file: !2, line: 199, column: 6)
!6372 = !DILocation(line: 199, column: 6, scope: !6357)
!6373 = !DILocation(line: 200, column: 10, scope: !6371)
!6374 = !DILocation(line: 200, column: 3, scope: !6371)
!6375 = !DILocation(line: 202, column: 29, scope: !6357)
!6376 = !DILocation(line: 202, column: 39, scope: !6357)
!6377 = !DILocation(line: 202, column: 8, scope: !6357)
!6378 = !DILocation(line: 202, column: 6, scope: !6357)
!6379 = !DILocation(line: 203, column: 6, scope: !6380)
!6380 = distinct !DILexicalBlock(scope: !6357, file: !2, line: 203, column: 6)
!6381 = !DILocation(line: 203, column: 6, scope: !6357)
!6382 = !DILocation(line: 204, column: 10, scope: !6380)
!6383 = !DILocation(line: 204, column: 3, scope: !6380)
!6384 = !DILocation(line: 206, column: 30, scope: !6357)
!6385 = !DILocation(line: 206, column: 8, scope: !6357)
!6386 = !DILocation(line: 206, column: 6, scope: !6357)
!6387 = !DILocation(line: 207, column: 6, scope: !6388)
!6388 = distinct !DILexicalBlock(scope: !6357, file: !2, line: 207, column: 6)
!6389 = !DILocation(line: 207, column: 6, scope: !6357)
!6390 = !DILocation(line: 208, column: 26, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6388, file: !2, line: 207, column: 11)
!6392 = !DILocation(line: 208, column: 3, scope: !6391)
!6393 = !DILocation(line: 209, column: 10, scope: !6391)
!6394 = !DILocation(line: 209, column: 3, scope: !6391)
!6395 = !DILocation(line: 212, column: 2, scope: !6357)
!6396 = !DILocation(line: 213, column: 1, scope: !6357)
!6397 = distinct !DISubprogram(name: "trace_event_put_ref", scope: !249, file: !249, line: 434, type: !6398, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !6400)
!6398 = !DISubroutineType(types: !6399)
!6399 = !{null, !392}
!6400 = !{!6401}
!6401 = !DILocalVariable(name: "call", arg: 1, scope: !6397, file: !249, line: 434, type: !392)
!6402 = !DILocation(line: 434, column: 65, scope: !6397)
!6403 = !DILocation(line: 436, column: 6, scope: !6404)
!6404 = distinct !DILexicalBlock(scope: !6397, file: !249, line: 436, column: 6)
!6405 = !DILocation(line: 436, column: 12, scope: !6404)
!6406 = !DILocation(line: 436, column: 18, scope: !6404)
!6407 = !DILocation(line: 436, column: 6, scope: !6397)
!6408 = !DILocation(line: 437, column: 27, scope: !6404)
!6409 = !DILocation(line: 437, column: 3, scope: !6404)
!6410 = !DILocation(line: 439, column: 14, scope: !6404)
!6411 = !DILocation(line: 439, column: 20, scope: !6404)
!6412 = !DILocation(line: 439, column: 3, scope: !6404)
!6413 = !DILocation(line: 440, column: 1, scope: !6397)
!6414 = !DISubprogram(name: "mutex_unlock", scope: !890, file: !890, line: 246, type: !6335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6415 = distinct !DISubprogram(name: "perf_trace_destroy", scope: !2, file: !2, line: 237, type: !3939, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !6416)
!6416 = !{!6417}
!6417 = !DILocalVariable(name: "p_event", arg: 1, scope: !6415, file: !2, line: 237, type: !3337)
!6418 = !DILocation(line: 237, column: 44, scope: !6415)
!6419 = !DILocation(line: 239, column: 2, scope: !6415)
!6420 = !DILocation(line: 240, column: 25, scope: !6415)
!6421 = !DILocation(line: 240, column: 2, scope: !6415)
!6422 = !DILocation(line: 241, column: 25, scope: !6415)
!6423 = !DILocation(line: 241, column: 2, scope: !6415)
!6424 = !DILocation(line: 242, column: 22, scope: !6415)
!6425 = !DILocation(line: 242, column: 31, scope: !6415)
!6426 = !DILocation(line: 242, column: 2, scope: !6415)
!6427 = !DILocation(line: 243, column: 2, scope: !6415)
!6428 = !DILocation(line: 244, column: 1, scope: !6415)
!6429 = distinct !DISubprogram(name: "perf_trace_event_close", scope: !2, file: !2, line: 187, type: !3939, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !6430)
!6430 = !{!6431, !6432}
!6431 = !DILocalVariable(name: "p_event", arg: 1, scope: !6429, file: !2, line: 187, type: !3337)
!6432 = !DILocalVariable(name: "tp_event", scope: !6429, file: !2, line: 189, type: !392)
!6433 = !DILocation(line: 187, column: 55, scope: !6429)
!6434 = !DILocation(line: 189, column: 2, scope: !6429)
!6435 = !DILocation(line: 189, column: 27, scope: !6429)
!6436 = !DILocation(line: 189, column: 38, scope: !6429)
!6437 = !DILocation(line: 189, column: 47, scope: !6429)
!6438 = !DILocation(line: 190, column: 2, scope: !6429)
!6439 = !DILocation(line: 190, column: 12, scope: !6429)
!6440 = !DILocation(line: 190, column: 19, scope: !6429)
!6441 = !DILocation(line: 190, column: 23, scope: !6429)
!6442 = !DILocation(line: 190, column: 55, scope: !6429)
!6443 = !DILocation(line: 191, column: 1, scope: !6429)
!6444 = distinct !DISubprogram(name: "perf_trace_event_unreg", scope: !2, file: !2, line: 154, type: !3939, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !6445)
!6445 = !{!6446, !6447, !6448}
!6446 = !DILocalVariable(name: "p_event", arg: 1, scope: !6444, file: !2, line: 154, type: !3337)
!6447 = !DILocalVariable(name: "tp_event", scope: !6444, file: !2, line: 156, type: !392)
!6448 = !DILocalVariable(name: "i", scope: !6444, file: !2, line: 157, type: !13)
!6449 = !DILocation(line: 154, column: 55, scope: !6444)
!6450 = !DILocation(line: 156, column: 2, scope: !6444)
!6451 = !DILocation(line: 156, column: 27, scope: !6444)
!6452 = !DILocation(line: 156, column: 38, scope: !6444)
!6453 = !DILocation(line: 156, column: 47, scope: !6444)
!6454 = !DILocation(line: 157, column: 2, scope: !6444)
!6455 = !DILocation(line: 157, column: 6, scope: !6444)
!6456 = !DILocation(line: 159, column: 8, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !6444, file: !2, line: 159, column: 6)
!6458 = !DILocation(line: 159, column: 18, scope: !6457)
!6459 = !DILocation(line: 159, column: 6, scope: !6457)
!6460 = !DILocation(line: 159, column: 32, scope: !6457)
!6461 = !DILocation(line: 159, column: 6, scope: !6444)
!6462 = !DILocation(line: 160, column: 3, scope: !6457)
!6463 = !DILocation(line: 162, column: 2, scope: !6444)
!6464 = !DILocation(line: 162, column: 12, scope: !6444)
!6465 = !DILocation(line: 162, column: 19, scope: !6444)
!6466 = !DILocation(line: 162, column: 23, scope: !6444)
!6467 = !DILocation(line: 168, column: 2, scope: !6444)
!6468 = !DILocation(line: 170, column: 14, scope: !6444)
!6469 = !DILocation(line: 170, column: 24, scope: !6444)
!6470 = !DILocation(line: 170, column: 2, scope: !6444)
!6471 = !DILocation(line: 171, column: 2, scope: !6444)
!6472 = !DILocation(line: 171, column: 12, scope: !6444)
!6473 = !DILocation(line: 171, column: 24, scope: !6444)
!6474 = !DILocation(line: 173, column: 7, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6444, file: !2, line: 173, column: 6)
!6476 = !DILocation(line: 173, column: 6, scope: !6444)
!6477 = !DILocation(line: 174, column: 10, scope: !6478)
!6478 = distinct !DILexicalBlock(scope: !6479, file: !2, line: 174, column: 3)
!6479 = distinct !DILexicalBlock(scope: !6475, file: !2, line: 173, column: 26)
!6480 = !DILocation(line: 174, column: 8, scope: !6478)
!6481 = !DILocation(line: 174, column: 15, scope: !6482)
!6482 = distinct !DILexicalBlock(scope: !6478, file: !2, line: 174, column: 3)
!6483 = !DILocation(line: 174, column: 17, scope: !6482)
!6484 = !DILocation(line: 174, column: 3, scope: !6478)
!6485 = !DILocation(line: 175, column: 31, scope: !6486)
!6486 = distinct !DILexicalBlock(scope: !6482, file: !2, line: 174, column: 42)
!6487 = !DILocation(line: 175, column: 16, scope: !6486)
!6488 = !DILocation(line: 175, column: 4, scope: !6486)
!6489 = !DILocation(line: 176, column: 19, scope: !6486)
!6490 = !DILocation(line: 176, column: 4, scope: !6486)
!6491 = !DILocation(line: 176, column: 22, scope: !6486)
!6492 = !DILocation(line: 177, column: 3, scope: !6486)
!6493 = !DILocation(line: 174, column: 38, scope: !6482)
!6494 = !DILocation(line: 174, column: 3, scope: !6482)
!6495 = distinct !{!6495, !6484, !6496, !6328, !6329}
!6496 = !DILocation(line: 177, column: 3, scope: !6478)
!6497 = !DILocation(line: 178, column: 2, scope: !6479)
!6498 = !DILocation(line: 179, column: 1, scope: !6444)
!6499 = distinct !DISubprogram(name: "perf_kprobe_init", scope: !2, file: !2, line: 247, type: !6500, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !6502)
!6500 = !DISubroutineType(types: !6501)
!6501 = !{!13, !3337, !1530}
!6502 = !{!6503, !6504, !6505, !6506, !6507, !6508, !6513, !6514}
!6503 = !DILocalVariable(name: "p_event", arg: 1, scope: !6499, file: !2, line: 247, type: !3337)
!6504 = !DILocalVariable(name: "is_retprobe", arg: 2, scope: !6499, file: !2, line: 247, type: !1530)
!6505 = !DILocalVariable(name: "ret", scope: !6499, file: !2, line: 249, type: !13)
!6506 = !DILocalVariable(name: "func", scope: !6499, file: !2, line: 250, type: !540)
!6507 = !DILocalVariable(name: "tp_event", scope: !6499, file: !2, line: 251, type: !392)
!6508 = !DILocalVariable(name: "__dummy", scope: !6509, file: !2, line: 254, type: !47)
!6509 = distinct !DILexicalBlock(scope: !6510, file: !2, line: 254, column: 23)
!6510 = distinct !DILexicalBlock(scope: !6511, file: !2, line: 254, column: 23)
!6511 = distinct !DILexicalBlock(scope: !6512, file: !2, line: 253, column: 33)
!6512 = distinct !DILexicalBlock(scope: !6499, file: !2, line: 253, column: 6)
!6513 = !DILocalVariable(name: "__dummy2", scope: !6509, file: !2, line: 254, type: !48)
!6514 = !DILabel(scope: !6499, name: "out", file: !2, line: 280)
!6515 = !DILocation(line: 247, column: 41, scope: !6499)
!6516 = !DILocation(line: 247, column: 55, scope: !6499)
!6517 = !DILocation(line: 249, column: 2, scope: !6499)
!6518 = !DILocation(line: 249, column: 6, scope: !6499)
!6519 = !DILocation(line: 250, column: 2, scope: !6499)
!6520 = !DILocation(line: 250, column: 8, scope: !6499)
!6521 = !DILocation(line: 251, column: 2, scope: !6499)
!6522 = !DILocation(line: 251, column: 27, scope: !6499)
!6523 = !DILocation(line: 253, column: 6, scope: !6512)
!6524 = !DILocation(line: 253, column: 15, scope: !6512)
!6525 = !DILocation(line: 253, column: 20, scope: !6512)
!6526 = !DILocation(line: 253, column: 6, scope: !6499)
!6527 = !DILocation(line: 254, column: 23, scope: !6509)
!6528 = !DILocation(line: 254, column: 23, scope: !6510)
!6529 = !DILocation(line: 254, column: 10, scope: !6511)
!6530 = !DILocation(line: 254, column: 8, scope: !6511)
!6531 = !DILocation(line: 256, column: 14, scope: !6532)
!6532 = distinct !DILexicalBlock(scope: !6511, file: !2, line: 256, column: 7)
!6533 = !DILocation(line: 256, column: 7, scope: !6532)
!6534 = !DILocation(line: 256, column: 7, scope: !6511)
!6535 = !DILocation(line: 257, column: 18, scope: !6536)
!6536 = distinct !DILexicalBlock(scope: !6532, file: !2, line: 256, column: 21)
!6537 = !DILocation(line: 257, column: 10, scope: !6536)
!6538 = !DILocation(line: 257, column: 8, scope: !6536)
!6539 = !DILocation(line: 258, column: 12, scope: !6536)
!6540 = !DILocation(line: 258, column: 16, scope: !6536)
!6541 = !DILocation(line: 258, column: 11, scope: !6536)
!6542 = !DILocation(line: 258, column: 39, scope: !6536)
!6543 = !DILocation(line: 258, column: 4, scope: !6536)
!6544 = !DILocation(line: 261, column: 7, scope: !6545)
!6545 = distinct !DILexicalBlock(scope: !6511, file: !2, line: 261, column: 7)
!6546 = !DILocation(line: 261, column: 15, scope: !6545)
!6547 = !DILocation(line: 261, column: 7, scope: !6511)
!6548 = !DILocation(line: 262, column: 10, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !6545, file: !2, line: 261, column: 24)
!6550 = !DILocation(line: 262, column: 4, scope: !6549)
!6551 = !DILocation(line: 263, column: 9, scope: !6549)
!6552 = !DILocation(line: 264, column: 3, scope: !6549)
!6553 = !DILocation(line: 265, column: 2, scope: !6511)
!6554 = !DILocation(line: 268, column: 3, scope: !6499)
!6555 = !DILocation(line: 268, column: 33, scope: !6499)
!6556 = !DILocation(line: 268, column: 42, scope: !6499)
!6557 = !DILocation(line: 268, column: 47, scope: !6499)
!6558 = !DILocation(line: 268, column: 9, scope: !6499)
!6559 = !DILocation(line: 269, column: 3, scope: !6499)
!6560 = !DILocation(line: 269, column: 12, scope: !6499)
!6561 = !DILocation(line: 269, column: 17, scope: !6499)
!6562 = !DILocation(line: 269, column: 31, scope: !6499)
!6563 = !{i8 0, i8 2}
!6564 = !DILocation(line: 267, column: 13, scope: !6499)
!6565 = !DILocation(line: 267, column: 11, scope: !6499)
!6566 = !DILocation(line: 270, column: 13, scope: !6567)
!6567 = distinct !DILexicalBlock(scope: !6499, file: !2, line: 270, column: 6)
!6568 = !DILocation(line: 270, column: 6, scope: !6567)
!6569 = !DILocation(line: 270, column: 6, scope: !6499)
!6570 = !DILocation(line: 271, column: 17, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6567, file: !2, line: 270, column: 24)
!6572 = !DILocation(line: 271, column: 9, scope: !6571)
!6573 = !DILocation(line: 271, column: 7, scope: !6571)
!6574 = !DILocation(line: 272, column: 3, scope: !6571)
!6575 = !DILocation(line: 275, column: 2, scope: !6499)
!6576 = !DILocation(line: 276, column: 30, scope: !6499)
!6577 = !DILocation(line: 276, column: 40, scope: !6499)
!6578 = !DILocation(line: 276, column: 8, scope: !6499)
!6579 = !DILocation(line: 276, column: 6, scope: !6499)
!6580 = !DILocation(line: 277, column: 6, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6499, file: !2, line: 277, column: 6)
!6582 = !DILocation(line: 277, column: 6, scope: !6499)
!6583 = !DILocation(line: 278, column: 30, scope: !6581)
!6584 = !DILocation(line: 278, column: 3, scope: !6581)
!6585 = !DILocation(line: 279, column: 2, scope: !6499)
!6586 = !DILocation(line: 280, column: 1, scope: !6499)
!6587 = !DILocation(line: 281, column: 8, scope: !6499)
!6588 = !DILocation(line: 281, column: 2, scope: !6499)
!6589 = !DILocation(line: 282, column: 9, scope: !6499)
!6590 = !DILocation(line: 282, column: 2, scope: !6499)
!6591 = !DILocation(line: 283, column: 1, scope: !6499)
!6592 = !DISubprogram(name: "strndup_user", scope: !6593, file: !6593, line: 14, type: !6594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6593 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6594 = !DISubroutineType(types: !6595)
!6595 = !{!540, !102, !465}
!6596 = distinct !DISubprogram(name: "IS_ERR", scope: !6597, file: !6597, line: 59, type: !6598, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !6600)
!6597 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6598 = !DISubroutineType(types: !6599)
!6599 = !{!1530, !1459}
!6600 = !{!6601}
!6601 = !DILocalVariable(name: "ptr", arg: 1, scope: !6596, file: !6597, line: 59, type: !1459)
!6602 = !DILocation(line: 59, column: 60, scope: !6596)
!6603 = !DILocation(line: 61, column: 9, scope: !6596)
!6604 = !DILocation(line: 61, column: 2, scope: !6596)
!6605 = distinct !DISubprogram(name: "PTR_ERR", scope: !6597, file: !6597, line: 49, type: !6606, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !6608)
!6606 = !DISubroutineType(types: !6607)
!6607 = !{!465, !1459}
!6608 = !{!6609}
!6609 = !DILocalVariable(name: "ptr", arg: 1, scope: !6605, file: !6597, line: 49, type: !1459)
!6610 = !DILocation(line: 49, column: 61, scope: !6605)
!6611 = !DILocation(line: 51, column: 16, scope: !6605)
!6612 = !DILocation(line: 51, column: 9, scope: !6605)
!6613 = !DILocation(line: 51, column: 2, scope: !6605)
!6614 = !DISubprogram(name: "kfree", scope: !6615, file: !6615, line: 227, type: !6616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6615 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!6616 = !DISubroutineType(types: !6617)
!6617 = !{null, !1459}
!6618 = !DISubprogram(name: "create_local_trace_kprobe", scope: !6619, file: !6619, line: 454, type: !6620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6619 = !DIFile(filename: "kernel/trace/trace_probe.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c1f663efd2bf913d15cc4bec571d20fe")
!6620 = !DISubroutineType(types: !6621)
!6621 = !{!392, !540, !12, !20, !1530}
!6622 = !DISubprogram(name: "destroy_local_trace_kprobe", scope: !6619, file: !6619, line: 456, type: !6398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6623 = distinct !DISubprogram(name: "perf_kprobe_destroy", scope: !2, file: !2, line: 285, type: !3939, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !6624)
!6624 = !{!6625}
!6625 = !DILocalVariable(name: "p_event", arg: 1, scope: !6623, file: !2, line: 285, type: !3337)
!6626 = !DILocation(line: 285, column: 45, scope: !6623)
!6627 = !DILocation(line: 287, column: 2, scope: !6623)
!6628 = !DILocation(line: 288, column: 25, scope: !6623)
!6629 = !DILocation(line: 288, column: 2, scope: !6623)
!6630 = !DILocation(line: 289, column: 25, scope: !6623)
!6631 = !DILocation(line: 289, column: 2, scope: !6623)
!6632 = !DILocation(line: 290, column: 22, scope: !6623)
!6633 = !DILocation(line: 290, column: 31, scope: !6623)
!6634 = !DILocation(line: 290, column: 2, scope: !6623)
!6635 = !DILocation(line: 291, column: 2, scope: !6623)
!6636 = !DILocation(line: 293, column: 29, scope: !6623)
!6637 = !DILocation(line: 293, column: 38, scope: !6623)
!6638 = !DILocation(line: 293, column: 2, scope: !6623)
!6639 = !DILocation(line: 294, column: 1, scope: !6623)
!6640 = distinct !DISubprogram(name: "perf_uprobe_init", scope: !2, file: !2, line: 298, type: !6641, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !6643)
!6641 = !DISubroutineType(types: !6642)
!6642 = !{!13, !3337, !20, !1530}
!6643 = !{!6644, !6645, !6646, !6647, !6648, !6649, !6650, !6653, !6654}
!6644 = !DILocalVariable(name: "p_event", arg: 1, scope: !6640, file: !2, line: 298, type: !3337)
!6645 = !DILocalVariable(name: "ref_ctr_offset", arg: 2, scope: !6640, file: !2, line: 299, type: !20)
!6646 = !DILocalVariable(name: "is_retprobe", arg: 3, scope: !6640, file: !2, line: 299, type: !1530)
!6647 = !DILocalVariable(name: "ret", scope: !6640, file: !2, line: 301, type: !13)
!6648 = !DILocalVariable(name: "path", scope: !6640, file: !2, line: 302, type: !540)
!6649 = !DILocalVariable(name: "tp_event", scope: !6640, file: !2, line: 303, type: !392)
!6650 = !DILocalVariable(name: "__dummy", scope: !6651, file: !2, line: 308, type: !47)
!6651 = distinct !DILexicalBlock(scope: !6652, file: !2, line: 308, column: 22)
!6652 = distinct !DILexicalBlock(scope: !6640, file: !2, line: 308, column: 22)
!6653 = !DILocalVariable(name: "__dummy2", scope: !6651, file: !2, line: 308, type: !48)
!6654 = !DILabel(scope: !6640, name: "out", file: !2, line: 336)
!6655 = !DILocation(line: 298, column: 41, scope: !6640)
!6656 = !DILocation(line: 299, column: 22, scope: !6640)
!6657 = !DILocation(line: 299, column: 43, scope: !6640)
!6658 = !DILocation(line: 301, column: 2, scope: !6640)
!6659 = !DILocation(line: 301, column: 6, scope: !6640)
!6660 = !DILocation(line: 302, column: 2, scope: !6640)
!6661 = !DILocation(line: 302, column: 8, scope: !6640)
!6662 = !DILocation(line: 303, column: 2, scope: !6640)
!6663 = !DILocation(line: 303, column: 27, scope: !6640)
!6664 = !DILocation(line: 305, column: 7, scope: !6665)
!6665 = distinct !DILexicalBlock(scope: !6640, file: !2, line: 305, column: 6)
!6666 = !DILocation(line: 305, column: 16, scope: !6665)
!6667 = !DILocation(line: 305, column: 21, scope: !6665)
!6668 = !DILocation(line: 305, column: 6, scope: !6640)
!6669 = !DILocation(line: 306, column: 3, scope: !6665)
!6670 = !DILocation(line: 308, column: 22, scope: !6651)
!6671 = !DILocation(line: 308, column: 22, scope: !6652)
!6672 = !DILocation(line: 308, column: 9, scope: !6640)
!6673 = !DILocation(line: 308, column: 7, scope: !6640)
!6674 = !DILocation(line: 310, column: 13, scope: !6675)
!6675 = distinct !DILexicalBlock(scope: !6640, file: !2, line: 310, column: 6)
!6676 = !DILocation(line: 310, column: 6, scope: !6675)
!6677 = !DILocation(line: 310, column: 6, scope: !6640)
!6678 = !DILocation(line: 311, column: 17, scope: !6679)
!6679 = distinct !DILexicalBlock(scope: !6675, file: !2, line: 310, column: 20)
!6680 = !DILocation(line: 311, column: 9, scope: !6679)
!6681 = !DILocation(line: 311, column: 7, scope: !6679)
!6682 = !DILocation(line: 312, column: 11, scope: !6679)
!6683 = !DILocation(line: 312, column: 15, scope: !6679)
!6684 = !DILocation(line: 312, column: 10, scope: !6679)
!6685 = !DILocation(line: 312, column: 38, scope: !6679)
!6686 = !DILocation(line: 312, column: 3, scope: !6679)
!6687 = !DILocation(line: 314, column: 6, scope: !6688)
!6688 = distinct !DILexicalBlock(scope: !6640, file: !2, line: 314, column: 6)
!6689 = !DILocation(line: 314, column: 14, scope: !6688)
!6690 = !DILocation(line: 314, column: 6, scope: !6640)
!6691 = !DILocation(line: 315, column: 7, scope: !6692)
!6692 = distinct !DILexicalBlock(scope: !6688, file: !2, line: 314, column: 23)
!6693 = !DILocation(line: 316, column: 3, scope: !6692)
!6694 = !DILocation(line: 319, column: 39, scope: !6640)
!6695 = !DILocation(line: 319, column: 45, scope: !6640)
!6696 = !DILocation(line: 319, column: 54, scope: !6640)
!6697 = !DILocation(line: 319, column: 59, scope: !6640)
!6698 = !DILocation(line: 320, column: 11, scope: !6640)
!6699 = !DILocation(line: 320, column: 27, scope: !6640)
!6700 = !DILocation(line: 319, column: 13, scope: !6640)
!6701 = !DILocation(line: 319, column: 11, scope: !6640)
!6702 = !DILocation(line: 321, column: 13, scope: !6703)
!6703 = distinct !DILexicalBlock(scope: !6640, file: !2, line: 321, column: 6)
!6704 = !DILocation(line: 321, column: 6, scope: !6703)
!6705 = !DILocation(line: 321, column: 6, scope: !6640)
!6706 = !DILocation(line: 322, column: 17, scope: !6707)
!6707 = distinct !DILexicalBlock(scope: !6703, file: !2, line: 321, column: 24)
!6708 = !DILocation(line: 322, column: 9, scope: !6707)
!6709 = !DILocation(line: 322, column: 7, scope: !6707)
!6710 = !DILocation(line: 323, column: 3, scope: !6707)
!6711 = !DILocation(line: 331, column: 2, scope: !6640)
!6712 = !DILocation(line: 332, column: 30, scope: !6640)
!6713 = !DILocation(line: 332, column: 40, scope: !6640)
!6714 = !DILocation(line: 332, column: 8, scope: !6640)
!6715 = !DILocation(line: 332, column: 6, scope: !6640)
!6716 = !DILocation(line: 333, column: 6, scope: !6717)
!6717 = distinct !DILexicalBlock(scope: !6640, file: !2, line: 333, column: 6)
!6718 = !DILocation(line: 333, column: 6, scope: !6640)
!6719 = !DILocation(line: 334, column: 30, scope: !6717)
!6720 = !DILocation(line: 334, column: 3, scope: !6717)
!6721 = !DILocation(line: 335, column: 2, scope: !6640)
!6722 = !DILocation(line: 336, column: 1, scope: !6640)
!6723 = !DILocation(line: 337, column: 8, scope: !6640)
!6724 = !DILocation(line: 337, column: 2, scope: !6640)
!6725 = !DILocation(line: 338, column: 9, scope: !6640)
!6726 = !DILocation(line: 338, column: 2, scope: !6640)
!6727 = !DILocation(line: 339, column: 1, scope: !6640)
!6728 = !DISubprogram(name: "create_local_trace_uprobe", scope: !6619, file: !6619, line: 459, type: !6729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6729 = !DISubroutineType(types: !6730)
!6730 = !{!392, !540, !20, !20, !1530}
!6731 = !DISubprogram(name: "destroy_local_trace_uprobe", scope: !6619, file: !6619, line: 461, type: !6398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6732 = distinct !DISubprogram(name: "perf_uprobe_destroy", scope: !2, file: !2, line: 341, type: !3939, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !6733)
!6733 = !{!6734}
!6734 = !DILocalVariable(name: "p_event", arg: 1, scope: !6732, file: !2, line: 341, type: !3337)
!6735 = !DILocation(line: 341, column: 45, scope: !6732)
!6736 = !DILocation(line: 343, column: 2, scope: !6732)
!6737 = !DILocation(line: 344, column: 25, scope: !6732)
!6738 = !DILocation(line: 344, column: 2, scope: !6732)
!6739 = !DILocation(line: 345, column: 25, scope: !6732)
!6740 = !DILocation(line: 345, column: 2, scope: !6732)
!6741 = !DILocation(line: 346, column: 22, scope: !6732)
!6742 = !DILocation(line: 346, column: 31, scope: !6732)
!6743 = !DILocation(line: 346, column: 2, scope: !6732)
!6744 = !DILocation(line: 347, column: 2, scope: !6732)
!6745 = !DILocation(line: 348, column: 29, scope: !6732)
!6746 = !DILocation(line: 348, column: 38, scope: !6732)
!6747 = !DILocation(line: 348, column: 2, scope: !6732)
!6748 = !DILocation(line: 349, column: 1, scope: !6732)
!6749 = distinct !DISubprogram(name: "perf_trace_add", scope: !2, file: !2, line: 352, type: !3929, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !6750)
!6750 = !{!6751, !6752, !6753, !6754, !6756, !6759, !6760, !6763, !6766, !6769}
!6751 = !DILocalVariable(name: "p_event", arg: 1, scope: !6749, file: !2, line: 352, type: !3337)
!6752 = !DILocalVariable(name: "flags", arg: 2, scope: !6749, file: !2, line: 352, type: !13)
!6753 = !DILocalVariable(name: "tp_event", scope: !6749, file: !2, line: 354, type: !392)
!6754 = !DILocalVariable(name: "hwc", scope: !6749, file: !2, line: 355, type: !6755)
!6755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!6756 = !DILocalVariable(name: "pcpu_list", scope: !6757, file: !2, line: 371, type: !4739)
!6757 = distinct !DILexicalBlock(scope: !6758, file: !2, line: 370, column: 68)
!6758 = distinct !DILexicalBlock(scope: !6749, file: !2, line: 370, column: 6)
!6759 = !DILocalVariable(name: "list", scope: !6757, file: !2, line: 372, type: !4739)
!6760 = !DILocalVariable(name: "__ret_warn_on", scope: !6761, file: !2, line: 375, type: !13)
!6761 = distinct !DILexicalBlock(scope: !6762, file: !2, line: 375, column: 7)
!6762 = distinct !DILexicalBlock(scope: !6757, file: !2, line: 375, column: 7)
!6763 = !DILocalVariable(name: "__flags", scope: !6764, file: !2, line: 375, type: !13)
!6764 = distinct !DILexicalBlock(scope: !6765, file: !2, line: 375, column: 7)
!6765 = distinct !DILexicalBlock(scope: !6761, file: !2, line: 375, column: 7)
!6766 = !DILocalVariable(name: "__vpp_verify", scope: !6767, file: !2, line: 378, type: !1459)
!6767 = distinct !DILexicalBlock(scope: !6768, file: !2, line: 378, column: 10)
!6768 = distinct !DILexicalBlock(scope: !6757, file: !2, line: 378, column: 10)
!6769 = !DILocalVariable(name: "tcp_ptr__", scope: !6770, file: !2, line: 378, type: !20)
!6770 = distinct !DILexicalBlock(scope: !6768, file: !2, line: 378, column: 10)
!6771 = !DILocation(line: 352, column: 39, scope: !6749)
!6772 = !DILocation(line: 352, column: 52, scope: !6749)
!6773 = !DILocation(line: 354, column: 2, scope: !6749)
!6774 = !DILocation(line: 354, column: 27, scope: !6749)
!6775 = !DILocation(line: 354, column: 38, scope: !6749)
!6776 = !DILocation(line: 354, column: 47, scope: !6749)
!6777 = !DILocation(line: 355, column: 2, scope: !6749)
!6778 = !DILocation(line: 355, column: 24, scope: !6749)
!6779 = !DILocation(line: 355, column: 31, scope: !6749)
!6780 = !DILocation(line: 355, column: 40, scope: !6749)
!6781 = !DILocation(line: 357, column: 8, scope: !6782)
!6782 = distinct !DILexicalBlock(scope: !6749, file: !2, line: 357, column: 6)
!6783 = !DILocation(line: 357, column: 14, scope: !6782)
!6784 = !DILocation(line: 357, column: 6, scope: !6749)
!6785 = !DILocation(line: 358, column: 3, scope: !6782)
!6786 = !DILocation(line: 358, column: 12, scope: !6782)
!6787 = !DILocation(line: 358, column: 15, scope: !6782)
!6788 = !DILocation(line: 358, column: 21, scope: !6782)
!6789 = !DILocation(line: 360, column: 24, scope: !6790)
!6790 = distinct !DILexicalBlock(scope: !6749, file: !2, line: 360, column: 6)
!6791 = !DILocation(line: 360, column: 6, scope: !6790)
!6792 = !DILocation(line: 360, column: 6, scope: !6749)
!6793 = !DILocation(line: 361, column: 22, scope: !6794)
!6794 = distinct !DILexicalBlock(scope: !6790, file: !2, line: 360, column: 34)
!6795 = !DILocation(line: 361, column: 27, scope: !6794)
!6796 = !DILocation(line: 361, column: 3, scope: !6794)
!6797 = !DILocation(line: 361, column: 8, scope: !6794)
!6798 = !DILocation(line: 361, column: 20, scope: !6794)
!6799 = !DILocation(line: 362, column: 27, scope: !6794)
!6800 = !DILocation(line: 362, column: 3, scope: !6794)
!6801 = !DILocation(line: 363, column: 2, scope: !6794)
!6802 = !DILocation(line: 370, column: 7, scope: !6758)
!6803 = !DILocation(line: 370, column: 17, scope: !6758)
!6804 = !DILocation(line: 370, column: 24, scope: !6758)
!6805 = !DILocation(line: 370, column: 28, scope: !6758)
!6806 = !DILocation(line: 370, column: 58, scope: !6758)
!6807 = !DILocation(line: 370, column: 6, scope: !6749)
!6808 = !DILocation(line: 371, column: 3, scope: !6757)
!6809 = !DILocation(line: 371, column: 31, scope: !6757)
!6810 = !DILocation(line: 372, column: 3, scope: !6757)
!6811 = !DILocation(line: 372, column: 22, scope: !6757)
!6812 = !DILocation(line: 374, column: 15, scope: !6757)
!6813 = !DILocation(line: 374, column: 25, scope: !6757)
!6814 = !DILocation(line: 374, column: 13, scope: !6757)
!6815 = !DILocation(line: 375, column: 7, scope: !6761)
!6816 = !DILocation(line: 375, column: 7, scope: !6765)
!6817 = !DILocation(line: 375, column: 7, scope: !6764)
!6818 = !DILocation(line: 375, column: 7, scope: !6819)
!6819 = distinct !DILexicalBlock(scope: !6764, file: !2, line: 375, column: 7)
!6820 = !DILocation(line: 375, column: 7, scope: !6821)
!6821 = distinct !DILexicalBlock(scope: !6764, file: !2, line: 375, column: 7)
!6822 = !{i64 2156317537, i64 2156317566, i64 2156317612, i64 2156317670, i64 2156317724, i64 2156317778, i64 2156317833, i64 2156317864, i64 2156318172, i64 2156318178, i64 2156318225, i64 2156318248, i64 2156318274}
!6823 = !DILocation(line: 375, column: 7, scope: !6824)
!6824 = distinct !DILexicalBlock(scope: !6764, file: !2, line: 375, column: 7)
!6825 = !DILocation(line: 375, column: 7, scope: !6762)
!6826 = !DILocation(line: 375, column: 7, scope: !6757)
!6827 = !DILocation(line: 376, column: 4, scope: !6762)
!6828 = !DILocation(line: 378, column: 10, scope: !6768)
!6829 = !DILocation(line: 378, column: 10, scope: !6767)
!6830 = !DILocation(line: 378, column: 10, scope: !6770)
!6831 = !{i64 2156318869}
!6832 = !DILocation(line: 378, column: 8, scope: !6757)
!6833 = !DILocation(line: 379, column: 23, scope: !6757)
!6834 = !DILocation(line: 379, column: 32, scope: !6757)
!6835 = !DILocation(line: 379, column: 45, scope: !6757)
!6836 = !DILocation(line: 379, column: 3, scope: !6757)
!6837 = !DILocation(line: 380, column: 2, scope: !6758)
!6838 = !DILocation(line: 380, column: 2, scope: !6757)
!6839 = !DILocation(line: 382, column: 2, scope: !6749)
!6840 = !DILocation(line: 383, column: 1, scope: !6749)
!6841 = distinct !DISubprogram(name: "is_sampling_event", scope: !325, file: !325, line: 1378, type: !6842, scopeLine: 1379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !6844)
!6842 = !DISubroutineType(types: !6843)
!6843 = !{!1530, !3337}
!6844 = !{!6845}
!6845 = !DILocalVariable(name: "event", arg: 1, scope: !6841, file: !325, line: 1378, type: !3337)
!6846 = !DILocation(line: 1378, column: 57, scope: !6841)
!6847 = !DILocation(line: 1380, column: 9, scope: !6841)
!6848 = !DILocation(line: 1380, column: 16, scope: !6841)
!6849 = !DILocation(line: 1380, column: 21, scope: !6841)
!6850 = !DILocation(line: 1380, column: 35, scope: !6841)
!6851 = !DILocation(line: 1380, column: 2, scope: !6841)
!6852 = !DISubprogram(name: "perf_swevent_set_period", scope: !325, file: !325, line: 1706, type: !6853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6853 = !DISubroutineType(types: !6854)
!6854 = !{!47, !3337}
!6855 = distinct !DISubprogram(name: "hlist_add_head_rcu", scope: !6856, file: !6856, line: 584, type: !6857, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !6859)
!6856 = !DIFile(filename: "./include/linux/rculist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd1f3f0ac3963a1bf35badb4cb07f795")
!6857 = !DISubroutineType(types: !6858)
!6858 = !{null, !800, !4739}
!6859 = !{!6860, !6861, !6862, !6863}
!6860 = !DILocalVariable(name: "n", arg: 1, scope: !6855, file: !6856, line: 584, type: !800)
!6861 = !DILocalVariable(name: "h", arg: 2, scope: !6855, file: !6856, line: 585, type: !4739)
!6862 = !DILocalVariable(name: "first", scope: !6855, file: !6856, line: 587, type: !800)
!6863 = !DILocalVariable(name: "_r_a_p__v", scope: !6864, file: !6856, line: 591, type: !6200)
!6864 = distinct !DILexicalBlock(scope: !6855, file: !6856, line: 591, column: 2)
!6865 = !DILocation(line: 584, column: 58, scope: !6855)
!6866 = !DILocation(line: 585, column: 25, scope: !6855)
!6867 = !DILocation(line: 587, column: 2, scope: !6855)
!6868 = !DILocation(line: 587, column: 21, scope: !6855)
!6869 = !DILocation(line: 587, column: 29, scope: !6855)
!6870 = !DILocation(line: 587, column: 32, scope: !6855)
!6871 = !DILocation(line: 589, column: 12, scope: !6855)
!6872 = !DILocation(line: 589, column: 2, scope: !6855)
!6873 = !DILocation(line: 589, column: 5, scope: !6855)
!6874 = !DILocation(line: 589, column: 10, scope: !6855)
!6875 = !DILocation(line: 590, column: 2, scope: !6855)
!6876 = !DILocation(line: 590, column: 2, scope: !6877)
!6877 = distinct !DILexicalBlock(scope: !6855, file: !6856, line: 590, column: 2)
!6878 = !DILocation(line: 590, column: 2, scope: !6879)
!6879 = distinct !DILexicalBlock(scope: !6877, file: !6856, line: 590, column: 2)
!6880 = !DILocation(line: 590, column: 2, scope: !6881)
!6881 = distinct !DILexicalBlock(scope: !6877, file: !6856, line: 590, column: 2)
!6882 = !DILocation(line: 591, column: 2, scope: !6855)
!6883 = !DILocation(line: 591, column: 2, scope: !6864)
!6884 = !DILocation(line: 591, column: 2, scope: !6885)
!6885 = distinct !DILexicalBlock(scope: !6864, file: !6856, line: 591, column: 2)
!6886 = !DILocation(line: 591, column: 2, scope: !6887)
!6887 = distinct !DILexicalBlock(scope: !6885, file: !6856, line: 591, column: 2)
!6888 = !DILocation(line: 591, column: 2, scope: !6889)
!6889 = distinct !DILexicalBlock(scope: !6887, file: !6856, line: 591, column: 2)
!6890 = !DILocation(line: 591, column: 2, scope: !6891)
!6891 = distinct !DILexicalBlock(scope: !6887, file: !6856, line: 591, column: 2)
!6892 = !DILocation(line: 591, column: 2, scope: !6893)
!6893 = distinct !DILexicalBlock(scope: !6885, file: !6856, line: 591, column: 2)
!6894 = !DILocation(line: 591, column: 2, scope: !6895)
!6895 = distinct !DILexicalBlock(scope: !6893, file: !6856, line: 591, column: 2)
!6896 = !DILocation(line: 591, column: 2, scope: !6897)
!6897 = distinct !DILexicalBlock(scope: !6893, file: !6856, line: 591, column: 2)
!6898 = !DILocation(line: 591, column: 2, scope: !6899)
!6899 = distinct !DILexicalBlock(scope: !6897, file: !6856, line: 591, column: 2)
!6900 = !{i64 2151802071}
!6901 = !DILocation(line: 591, column: 2, scope: !6902)
!6902 = distinct !DILexicalBlock(scope: !6897, file: !6856, line: 591, column: 2)
!6903 = !DILocation(line: 591, column: 2, scope: !6904)
!6904 = distinct !DILexicalBlock(scope: !6902, file: !6856, line: 591, column: 2)
!6905 = !DILocation(line: 591, column: 2, scope: !6906)
!6906 = distinct !DILexicalBlock(scope: !6902, file: !6856, line: 591, column: 2)
!6907 = !DILocation(line: 592, column: 6, scope: !6908)
!6908 = distinct !DILexicalBlock(scope: !6855, file: !6856, line: 592, column: 6)
!6909 = !DILocation(line: 592, column: 6, scope: !6855)
!6910 = !DILocation(line: 593, column: 3, scope: !6908)
!6911 = !DILocation(line: 593, column: 3, scope: !6912)
!6912 = distinct !DILexicalBlock(scope: !6908, file: !6856, line: 593, column: 3)
!6913 = !DILocation(line: 593, column: 3, scope: !6914)
!6914 = distinct !DILexicalBlock(scope: !6912, file: !6856, line: 593, column: 3)
!6915 = !DILocation(line: 593, column: 3, scope: !6916)
!6916 = distinct !DILexicalBlock(scope: !6912, file: !6856, line: 593, column: 3)
!6917 = !DILocation(line: 594, column: 1, scope: !6855)
!6918 = distinct !DISubprogram(name: "perf_trace_del", scope: !2, file: !2, line: 385, type: !3933, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !6919)
!6919 = !{!6920, !6921, !6922}
!6920 = !DILocalVariable(name: "p_event", arg: 1, scope: !6918, file: !2, line: 385, type: !3337)
!6921 = !DILocalVariable(name: "flags", arg: 2, scope: !6918, file: !2, line: 385, type: !13)
!6922 = !DILocalVariable(name: "tp_event", scope: !6918, file: !2, line: 387, type: !392)
!6923 = !DILocation(line: 385, column: 40, scope: !6918)
!6924 = !DILocation(line: 385, column: 53, scope: !6918)
!6925 = !DILocation(line: 387, column: 2, scope: !6918)
!6926 = !DILocation(line: 387, column: 27, scope: !6918)
!6927 = !DILocation(line: 387, column: 38, scope: !6918)
!6928 = !DILocation(line: 387, column: 47, scope: !6918)
!6929 = !DILocation(line: 394, column: 7, scope: !6930)
!6930 = distinct !DILexicalBlock(scope: !6918, file: !2, line: 394, column: 6)
!6931 = !DILocation(line: 394, column: 17, scope: !6930)
!6932 = !DILocation(line: 394, column: 24, scope: !6930)
!6933 = !DILocation(line: 394, column: 28, scope: !6930)
!6934 = !DILocation(line: 394, column: 58, scope: !6930)
!6935 = !DILocation(line: 394, column: 6, scope: !6918)
!6936 = !DILocation(line: 395, column: 18, scope: !6930)
!6937 = !DILocation(line: 395, column: 27, scope: !6930)
!6938 = !DILocation(line: 395, column: 3, scope: !6930)
!6939 = !DILocation(line: 396, column: 1, scope: !6918)
!6940 = distinct !DISubprogram(name: "hlist_del_rcu", scope: !6856, file: !6856, line: 511, type: !6941, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !6943)
!6941 = !DISubroutineType(types: !6942)
!6942 = !{null, !800}
!6943 = !{!6944}
!6944 = !DILocalVariable(name: "n", arg: 1, scope: !6940, file: !6856, line: 511, type: !800)
!6945 = !DILocation(line: 511, column: 53, scope: !6940)
!6946 = !DILocation(line: 513, column: 14, scope: !6940)
!6947 = !DILocation(line: 513, column: 2, scope: !6940)
!6948 = !DILocation(line: 514, column: 2, scope: !6940)
!6949 = !DILocation(line: 514, column: 2, scope: !6950)
!6950 = distinct !DILexicalBlock(scope: !6940, file: !6856, line: 514, column: 2)
!6951 = !DILocation(line: 514, column: 2, scope: !6952)
!6952 = distinct !DILexicalBlock(scope: !6950, file: !6856, line: 514, column: 2)
!6953 = !DILocation(line: 514, column: 2, scope: !6954)
!6954 = distinct !DILexicalBlock(scope: !6950, file: !6856, line: 514, column: 2)
!6955 = !DILocation(line: 515, column: 1, scope: !6940)
!6956 = !DILocation(line: 398, column: 32, scope: !9)
!6957 = !DILocation(line: 398, column: 55, scope: !9)
!6958 = !DILocation(line: 398, column: 66, scope: !9)
!6959 = !DILocation(line: 400, column: 2, scope: !9)
!6960 = !DILocation(line: 400, column: 8, scope: !9)
!6961 = !DILocation(line: 401, column: 2, scope: !9)
!6962 = !DILocation(line: 401, column: 6, scope: !9)
!6963 = !DILocation(line: 403, column: 2, scope: !9)
!6964 = !DILocation(line: 403, column: 2, scope: !6965)
!6965 = distinct !DILexicalBlock(scope: !9, file: !2, line: 403, column: 2)
!6966 = !DILocation(line: 405, column: 6, scope: !6237)
!6967 = !DILocation(line: 405, column: 6, scope: !6240)
!6968 = !DILocation(line: 405, column: 6, scope: !6969)
!6969 = distinct !DILexicalBlock(scope: !6240, file: !2, line: 405, column: 6)
!6970 = !DILocation(line: 0, scope: !6969)
!6971 = !DILocation(line: 405, column: 6, scope: !6972)
!6972 = distinct !DILexicalBlock(scope: !6969, file: !2, line: 405, column: 6)
!6973 = !DILocation(line: 405, column: 6, scope: !6241)
!6974 = !DILocation(line: 405, column: 6, scope: !6244)
!6975 = !DILocation(line: 405, column: 6, scope: !6248)
!6976 = !DILocation(line: 405, column: 6, scope: !6247)
!6977 = !DILocation(line: 405, column: 6, scope: !6978)
!6978 = distinct !DILexicalBlock(scope: !6247, file: !2, line: 405, column: 6)
!6979 = !DILocation(line: 405, column: 6, scope: !6246)
!6980 = !DILocation(line: 405, column: 6, scope: !6981)
!6981 = distinct !DILexicalBlock(scope: !6246, file: !2, line: 405, column: 6)
!6982 = !DILocation(line: 405, column: 6, scope: !6983)
!6983 = distinct !DILexicalBlock(scope: !6246, file: !2, line: 405, column: 6)
!6984 = !{i64 2156326255, i64 2156326284, i64 2156326330, i64 2156326388, i64 2156326442, i64 2156326496, i64 2156326551, i64 2156326582, i64 2156326890, i64 2156326896, i64 2156326943, i64 2156326966, i64 2156326992}
!6985 = !DILocation(line: 405, column: 6, scope: !6986)
!6986 = distinct !DILexicalBlock(scope: !6246, file: !2, line: 405, column: 6)
!6987 = !DILocation(line: 405, column: 6, scope: !6988)
!6988 = distinct !DILexicalBlock(scope: !6247, file: !2, line: 405, column: 6)
!6989 = !DILocation(line: 405, column: 6, scope: !6238)
!6990 = !DILocation(line: 405, column: 6, scope: !9)
!6991 = !DILocation(line: 408, column: 3, scope: !6238)
!6992 = !DILocation(line: 410, column: 18, scope: !9)
!6993 = !DILocation(line: 410, column: 16, scope: !9)
!6994 = !DILocation(line: 410, column: 3, scope: !9)
!6995 = !DILocation(line: 410, column: 9, scope: !9)
!6996 = !DILocation(line: 411, column: 6, scope: !6997)
!6997 = distinct !DILexicalBlock(scope: !9, file: !2, line: 411, column: 6)
!6998 = !DILocation(line: 411, column: 11, scope: !6997)
!6999 = !DILocation(line: 411, column: 6, scope: !9)
!7000 = !DILocation(line: 412, column: 3, scope: !6997)
!7001 = !DILocation(line: 414, column: 6, scope: !6252)
!7002 = !DILocation(line: 414, column: 6, scope: !9)
!7003 = !DILocation(line: 415, column: 11, scope: !6251)
!7004 = !DILocation(line: 415, column: 11, scope: !6250)
!7005 = !DILocation(line: 415, column: 11, scope: !6254)
!7006 = !{i64 2156327701}
!7007 = !DILocation(line: 415, column: 4, scope: !6252)
!7008 = !DILocation(line: 415, column: 9, scope: !6252)
!7009 = !DILocation(line: 415, column: 3, scope: !6252)
!7010 = !DILocation(line: 416, column: 13, scope: !6257)
!7011 = !DILocation(line: 416, column: 13, scope: !6256)
!7012 = !DILocation(line: 416, column: 13, scope: !6259)
!7013 = !{i64 2156328373}
!7014 = !DILocation(line: 416, column: 11, scope: !9)
!7015 = !DILocation(line: 419, column: 10, scope: !9)
!7016 = !DILocation(line: 419, column: 19, scope: !9)
!7017 = !DILocation(line: 419, column: 24, scope: !9)
!7018 = !DILocation(line: 419, column: 2, scope: !9)
!7019 = !DILocation(line: 420, column: 9, scope: !9)
!7020 = !DILocation(line: 420, column: 2, scope: !9)
!7021 = !DILocation(line: 421, column: 1, scope: !9)
!7022 = !DISubprogram(name: "__warn_printk", scope: !5726, file: !5726, line: 93, type: !7023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7023 = !DISubroutineType(types: !7024)
!7024 = !{null, !102, null}
!7025 = !DISubprogram(name: "perf_swevent_get_recursion_context", scope: !325, file: !325, line: 1704, type: !5683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7026 = distinct !DISubprogram(name: "perf_trace_buf_update", scope: !2, file: !2, line: 425, type: !7027, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !7029)
!7027 = !DISubroutineType(types: !7028)
!7028 = !{null, !12, !41}
!7029 = !{!7030, !7031, !7032}
!7030 = !DILocalVariable(name: "record", arg: 1, scope: !7026, file: !2, line: 425, type: !12)
!7031 = !DILocalVariable(name: "type", arg: 2, scope: !7026, file: !2, line: 425, type: !41)
!7032 = !DILocalVariable(name: "entry", scope: !7026, file: !2, line: 427, type: !6164)
!7033 = !DILocation(line: 425, column: 34, scope: !7026)
!7034 = !DILocation(line: 425, column: 46, scope: !7026)
!7035 = !DILocation(line: 427, column: 2, scope: !7026)
!7036 = !DILocation(line: 427, column: 22, scope: !7026)
!7037 = !DILocation(line: 427, column: 30, scope: !7026)
!7038 = !DILocation(line: 429, column: 31, scope: !7026)
!7039 = !DILocation(line: 429, column: 38, scope: !7026)
!7040 = !DILocation(line: 429, column: 44, scope: !7026)
!7041 = !DILocation(line: 429, column: 2, scope: !7026)
!7042 = !DILocation(line: 430, column: 1, scope: !7026)
!7043 = distinct !DISubprogram(name: "tracing_generic_entry_update", scope: !249, file: !249, line: 167, type: !7044, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !7046)
!7044 = !DISubroutineType(types: !7045)
!7045 = !{null, !6164, !45, !81}
!7046 = !{!7047, !7048, !7049}
!7047 = !DILocalVariable(name: "entry", arg: 1, scope: !7043, file: !249, line: 167, type: !6164)
!7048 = !DILocalVariable(name: "type", arg: 2, scope: !7043, file: !249, line: 168, type: !45)
!7049 = !DILocalVariable(name: "trace_ctx", arg: 3, scope: !7043, file: !249, line: 169, type: !81)
!7050 = !DILocation(line: 167, column: 69, scope: !7043)
!7051 = !DILocation(line: 168, column: 22, scope: !7043)
!7052 = !DILocation(line: 169, column: 20, scope: !7043)
!7053 = !DILocation(line: 171, column: 26, scope: !7043)
!7054 = !DILocation(line: 171, column: 36, scope: !7043)
!7055 = !DILocation(line: 171, column: 2, scope: !7043)
!7056 = !DILocation(line: 171, column: 9, scope: !7043)
!7057 = !DILocation(line: 171, column: 24, scope: !7043)
!7058 = !DILocation(line: 172, column: 17, scope: !7043)
!7059 = !DILocation(line: 172, column: 26, scope: !7043)
!7060 = !DILocation(line: 172, column: 2, scope: !7043)
!7061 = !DILocation(line: 172, column: 9, scope: !7043)
!7062 = !DILocation(line: 172, column: 15, scope: !7043)
!7063 = !DILocation(line: 173, column: 18, scope: !7043)
!7064 = !DILocation(line: 173, column: 2, scope: !7043)
!7065 = !DILocation(line: 173, column: 9, scope: !7043)
!7066 = !DILocation(line: 173, column: 16, scope: !7043)
!7067 = !DILocation(line: 174, column: 19, scope: !7043)
!7068 = !DILocation(line: 174, column: 29, scope: !7043)
!7069 = !DILocation(line: 174, column: 2, scope: !7043)
!7070 = !DILocation(line: 174, column: 9, scope: !7043)
!7071 = !DILocation(line: 174, column: 15, scope: !7043)
!7072 = !DILocation(line: 175, column: 1, scope: !7043)
!7073 = distinct !DISubprogram(name: "tracing_gen_ctx", scope: !249, file: !249, line: 197, type: !7074, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !7076)
!7074 = !DISubroutineType(types: !7075)
!7075 = !{!81}
!7076 = !{!7077, !7078, !7081}
!7077 = !DILocalVariable(name: "irqflags", scope: !7073, file: !249, line: 199, type: !20)
!7078 = !DILocalVariable(name: "__dummy", scope: !7079, file: !249, line: 201, type: !20)
!7079 = distinct !DILexicalBlock(scope: !7080, file: !249, line: 201, column: 2)
!7080 = distinct !DILexicalBlock(scope: !7073, file: !249, line: 201, column: 2)
!7081 = !DILocalVariable(name: "__dummy2", scope: !7079, file: !249, line: 201, type: !20)
!7082 = !DILocation(line: 199, column: 2, scope: !7073)
!7083 = !DILocation(line: 199, column: 16, scope: !7073)
!7084 = !DILocation(line: 201, column: 2, scope: !7073)
!7085 = !DILocation(line: 201, column: 2, scope: !7079)
!7086 = !DILocation(line: 201, column: 2, scope: !7080)
!7087 = !DILocation(line: 202, column: 31, scope: !7073)
!7088 = !DILocation(line: 202, column: 9, scope: !7073)
!7089 = !DILocation(line: 203, column: 1, scope: !7073)
!7090 = !DILocation(line: 202, column: 2, scope: !7073)
!7091 = !DISubprogram(name: "trace_event_dyn_try_get_ref", scope: !249, file: !249, line: 407, type: !6339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7092 = !DISubprogram(name: "try_module_get", scope: !80, file: !80, line: 696, type: !7093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7093 = !DISubroutineType(types: !7094)
!7094 = !{!1530, !486}
!7095 = distinct !DISubprogram(name: "perf_trace_event_perm", scope: !2, file: !2, line: 27, type: !6198, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !7096)
!7096 = !{!7097, !7098, !7099}
!7097 = !DILocalVariable(name: "tp_event", arg: 1, scope: !7095, file: !2, line: 27, type: !392)
!7098 = !DILocalVariable(name: "p_event", arg: 2, scope: !7095, file: !2, line: 28, type: !3337)
!7099 = !DILocalVariable(name: "ret", scope: !7095, file: !2, line: 30, type: !13)
!7100 = !DILocation(line: 27, column: 59, scope: !7095)
!7101 = !DILocation(line: 28, column: 25, scope: !7095)
!7102 = !DILocation(line: 30, column: 2, scope: !7095)
!7103 = !DILocation(line: 30, column: 6, scope: !7095)
!7104 = !DILocation(line: 32, column: 6, scope: !7105)
!7105 = distinct !DILexicalBlock(scope: !7095, file: !2, line: 32, column: 6)
!7106 = !DILocation(line: 32, column: 16, scope: !7105)
!7107 = !DILocation(line: 32, column: 6, scope: !7095)
!7108 = !DILocation(line: 33, column: 9, scope: !7109)
!7109 = distinct !DILexicalBlock(scope: !7105, file: !2, line: 32, column: 27)
!7110 = !DILocation(line: 33, column: 19, scope: !7109)
!7111 = !DILocation(line: 33, column: 29, scope: !7109)
!7112 = !DILocation(line: 33, column: 39, scope: !7109)
!7113 = !DILocation(line: 33, column: 7, scope: !7109)
!7114 = !DILocation(line: 34, column: 7, scope: !7115)
!7115 = distinct !DILexicalBlock(scope: !7109, file: !2, line: 34, column: 7)
!7116 = !DILocation(line: 34, column: 7, scope: !7109)
!7117 = !DILocation(line: 35, column: 11, scope: !7115)
!7118 = !DILocation(line: 35, column: 4, scope: !7115)
!7119 = !DILocation(line: 36, column: 2, scope: !7109)
!7120 = !DILocation(line: 42, column: 6, scope: !7121)
!7121 = distinct !DILexicalBlock(scope: !7095, file: !2, line: 42, column: 6)
!7122 = !DILocation(line: 42, column: 15, scope: !7121)
!7123 = !DILocation(line: 42, column: 6, scope: !7095)
!7124 = !DILocation(line: 43, column: 3, scope: !7121)
!7125 = !DILocation(line: 51, column: 31, scope: !7126)
!7126 = distinct !DILexicalBlock(scope: !7095, file: !2, line: 51, column: 6)
!7127 = !DILocation(line: 51, column: 6, scope: !7126)
!7128 = !DILocation(line: 51, column: 6, scope: !7095)
!7129 = !DILocation(line: 52, column: 32, scope: !7130)
!7130 = distinct !DILexicalBlock(scope: !7126, file: !2, line: 51, column: 42)
!7131 = !DILocation(line: 52, column: 41, scope: !7130)
!7132 = !DILocation(line: 52, column: 9, scope: !7130)
!7133 = !DILocation(line: 52, column: 7, scope: !7130)
!7134 = !DILocation(line: 53, column: 7, scope: !7135)
!7135 = distinct !DILexicalBlock(scope: !7130, file: !2, line: 53, column: 7)
!7136 = !DILocation(line: 53, column: 7, scope: !7130)
!7137 = !DILocation(line: 54, column: 11, scope: !7135)
!7138 = !DILocation(line: 54, column: 4, scope: !7135)
!7139 = !DILocation(line: 56, column: 26, scope: !7140)
!7140 = distinct !DILexicalBlock(scope: !7130, file: !2, line: 56, column: 7)
!7141 = !DILocation(line: 56, column: 8, scope: !7140)
!7142 = !DILocation(line: 56, column: 7, scope: !7130)
!7143 = !DILocation(line: 57, column: 4, scope: !7140)
!7144 = !DILocation(line: 64, column: 8, scope: !7145)
!7145 = distinct !DILexicalBlock(scope: !7130, file: !2, line: 64, column: 7)
!7146 = !DILocation(line: 64, column: 17, scope: !7145)
!7147 = !DILocation(line: 64, column: 22, scope: !7145)
!7148 = !DILocation(line: 64, column: 7, scope: !7130)
!7149 = !DILocation(line: 65, column: 4, scope: !7145)
!7150 = !DILocation(line: 71, column: 7, scope: !7151)
!7151 = distinct !DILexicalBlock(scope: !7130, file: !2, line: 71, column: 7)
!7152 = !DILocation(line: 71, column: 16, scope: !7151)
!7153 = !DILocation(line: 71, column: 21, scope: !7151)
!7154 = !DILocation(line: 71, column: 33, scope: !7151)
!7155 = !DILocation(line: 71, column: 7, scope: !7130)
!7156 = !DILocation(line: 72, column: 4, scope: !7151)
!7157 = !DILocation(line: 73, column: 2, scope: !7130)
!7158 = !DILocation(line: 76, column: 8, scope: !7159)
!7159 = distinct !DILexicalBlock(scope: !7095, file: !2, line: 76, column: 6)
!7160 = !DILocation(line: 76, column: 17, scope: !7159)
!7161 = !DILocation(line: 76, column: 22, scope: !7159)
!7162 = !DILocation(line: 76, column: 34, scope: !7159)
!7163 = !DILocation(line: 76, column: 6, scope: !7095)
!7164 = !DILocation(line: 77, column: 3, scope: !7159)
!7165 = !DILocation(line: 80, column: 6, scope: !7166)
!7166 = distinct !DILexicalBlock(scope: !7095, file: !2, line: 80, column: 6)
!7167 = !DILocation(line: 80, column: 15, scope: !7166)
!7168 = !DILocation(line: 80, column: 28, scope: !7166)
!7169 = !DILocation(line: 80, column: 6, scope: !7095)
!7170 = !DILocation(line: 81, column: 7, scope: !7171)
!7171 = distinct !DILexicalBlock(scope: !7172, file: !2, line: 81, column: 7)
!7172 = distinct !DILexicalBlock(scope: !7166, file: !2, line: 80, column: 49)
!7173 = !DILocation(line: 81, column: 17, scope: !7171)
!7174 = !DILocation(line: 81, column: 23, scope: !7171)
!7175 = !DILocation(line: 81, column: 7, scope: !7172)
!7176 = !DILocation(line: 82, column: 4, scope: !7171)
!7177 = !DILocation(line: 83, column: 2, scope: !7172)
!7178 = !DILocation(line: 89, column: 31, scope: !7095)
!7179 = !DILocation(line: 89, column: 40, scope: !7095)
!7180 = !DILocation(line: 89, column: 8, scope: !7095)
!7181 = !DILocation(line: 89, column: 6, scope: !7095)
!7182 = !DILocation(line: 90, column: 6, scope: !7183)
!7183 = distinct !DILexicalBlock(scope: !7095, file: !2, line: 90, column: 6)
!7184 = !DILocation(line: 90, column: 6, scope: !7095)
!7185 = !DILocation(line: 91, column: 10, scope: !7183)
!7186 = !DILocation(line: 91, column: 3, scope: !7183)
!7187 = !DILocation(line: 93, column: 2, scope: !7095)
!7188 = !DILocation(line: 94, column: 1, scope: !7095)
!7189 = distinct !DISubprogram(name: "perf_trace_event_reg", scope: !2, file: !2, line: 96, type: !6198, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !7190)
!7190 = !{!7191, !7192, !7193, !7194, !7195, !7196, !7201, !7203, !7206, !7207, !7208}
!7191 = !DILocalVariable(name: "tp_event", arg: 1, scope: !7189, file: !2, line: 96, type: !392)
!7192 = !DILocalVariable(name: "p_event", arg: 2, scope: !7189, file: !2, line: 97, type: !3337)
!7193 = !DILocalVariable(name: "list", scope: !7189, file: !2, line: 99, type: !4739)
!7194 = !DILocalVariable(name: "ret", scope: !7189, file: !2, line: 100, type: !13)
!7195 = !DILocalVariable(name: "cpu", scope: !7189, file: !2, line: 101, type: !13)
!7196 = !DILocalVariable(name: "__vpp_verify", scope: !7197, file: !2, line: 112, type: !1459)
!7197 = distinct !DILexicalBlock(scope: !7198, file: !2, line: 112, column: 3)
!7198 = distinct !DILexicalBlock(scope: !7199, file: !2, line: 112, column: 3)
!7199 = distinct !DILexicalBlock(scope: !7200, file: !2, line: 111, column: 2)
!7200 = distinct !DILexicalBlock(scope: !7189, file: !2, line: 111, column: 2)
!7201 = !DILocalVariable(name: "__ptr", scope: !7202, file: !2, line: 112, type: !20)
!7202 = distinct !DILexicalBlock(scope: !7198, file: !2, line: 112, column: 3)
!7203 = !DILocalVariable(name: "buf", scope: !7204, file: !2, line: 117, type: !540)
!7204 = distinct !DILexicalBlock(scope: !7205, file: !2, line: 116, column: 24)
!7205 = distinct !DILexicalBlock(scope: !7189, file: !2, line: 116, column: 6)
!7206 = !DILocalVariable(name: "i", scope: !7204, file: !2, line: 118, type: !13)
!7207 = !DILabel(scope: !7189, name: "fail", file: !2, line: 136)
!7208 = !DILocalVariable(name: "i", scope: !7209, file: !2, line: 138, type: !13)
!7209 = distinct !DILexicalBlock(scope: !7210, file: !2, line: 137, column: 24)
!7210 = distinct !DILexicalBlock(scope: !7189, file: !2, line: 137, column: 6)
!7211 = !DILocation(line: 96, column: 58, scope: !7189)
!7212 = !DILocation(line: 97, column: 24, scope: !7189)
!7213 = !DILocation(line: 99, column: 2, scope: !7189)
!7214 = !DILocation(line: 99, column: 30, scope: !7189)
!7215 = !DILocation(line: 100, column: 2, scope: !7189)
!7216 = !DILocation(line: 100, column: 6, scope: !7189)
!7217 = !DILocation(line: 101, column: 2, scope: !7189)
!7218 = !DILocation(line: 101, column: 6, scope: !7189)
!7219 = !DILocation(line: 103, column: 22, scope: !7189)
!7220 = !DILocation(line: 103, column: 2, scope: !7189)
!7221 = !DILocation(line: 103, column: 11, scope: !7189)
!7222 = !DILocation(line: 103, column: 20, scope: !7189)
!7223 = !DILocation(line: 104, column: 6, scope: !7224)
!7224 = distinct !DILexicalBlock(scope: !7189, file: !2, line: 104, column: 6)
!7225 = !DILocation(line: 104, column: 16, scope: !7224)
!7226 = !DILocation(line: 104, column: 29, scope: !7224)
!7227 = !DILocation(line: 104, column: 32, scope: !7224)
!7228 = !DILocation(line: 104, column: 6, scope: !7189)
!7229 = !DILocation(line: 105, column: 3, scope: !7224)
!7230 = !DILocation(line: 107, column: 9, scope: !7189)
!7231 = !DILocation(line: 107, column: 7, scope: !7189)
!7232 = !DILocation(line: 108, column: 7, scope: !7233)
!7233 = distinct !DILexicalBlock(scope: !7189, file: !2, line: 108, column: 6)
!7234 = !DILocation(line: 108, column: 6, scope: !7189)
!7235 = !DILocation(line: 109, column: 3, scope: !7233)
!7236 = !DILocation(line: 111, column: 2, scope: !7200)
!7237 = !DILocation(line: 111, column: 2, scope: !7199)
!7238 = !DILocation(line: 112, column: 3, scope: !7198)
!7239 = !DILocation(line: 112, column: 3, scope: !7197)
!7240 = !DILocation(line: 112, column: 3, scope: !7202)
!7241 = !DILocation(line: 112, column: 3, scope: !7199)
!7242 = distinct !{!7242, !7236, !7243, !6328, !6329}
!7243 = !DILocation(line: 112, column: 3, scope: !7200)
!7244 = !DILocation(line: 114, column: 26, scope: !7189)
!7245 = !DILocation(line: 114, column: 2, scope: !7189)
!7246 = !DILocation(line: 114, column: 12, scope: !7189)
!7247 = !DILocation(line: 114, column: 24, scope: !7189)
!7248 = !DILocation(line: 116, column: 7, scope: !7205)
!7249 = !DILocation(line: 116, column: 6, scope: !7189)
!7250 = !DILocation(line: 117, column: 3, scope: !7204)
!7251 = !DILocation(line: 117, column: 18, scope: !7204)
!7252 = !DILocation(line: 118, column: 3, scope: !7204)
!7253 = !DILocation(line: 118, column: 7, scope: !7204)
!7254 = !DILocation(line: 120, column: 10, scope: !7255)
!7255 = distinct !DILexicalBlock(scope: !7204, file: !2, line: 120, column: 3)
!7256 = !DILocation(line: 120, column: 8, scope: !7255)
!7257 = !DILocation(line: 120, column: 15, scope: !7258)
!7258 = distinct !DILexicalBlock(scope: !7255, file: !2, line: 120, column: 3)
!7259 = !DILocation(line: 120, column: 17, scope: !7258)
!7260 = !DILocation(line: 120, column: 3, scope: !7255)
!7261 = !DILocation(line: 121, column: 27, scope: !7262)
!7262 = distinct !DILexicalBlock(scope: !7258, file: !2, line: 120, column: 42)
!7263 = !DILocation(line: 121, column: 8, scope: !7262)
!7264 = !DILocation(line: 122, column: 9, scope: !7265)
!7265 = distinct !DILexicalBlock(scope: !7262, file: !2, line: 122, column: 8)
!7266 = !DILocation(line: 122, column: 8, scope: !7262)
!7267 = !DILocation(line: 123, column: 5, scope: !7265)
!7268 = !DILocation(line: 125, column: 24, scope: !7262)
!7269 = !DILocation(line: 125, column: 19, scope: !7262)
!7270 = !DILocation(line: 125, column: 4, scope: !7262)
!7271 = !DILocation(line: 125, column: 22, scope: !7262)
!7272 = !DILocation(line: 126, column: 3, scope: !7262)
!7273 = !DILocation(line: 120, column: 38, scope: !7258)
!7274 = !DILocation(line: 120, column: 3, scope: !7258)
!7275 = distinct !{!7275, !7260, !7276, !6328, !6329}
!7276 = !DILocation(line: 126, column: 3, scope: !7255)
!7277 = !DILocation(line: 127, column: 2, scope: !7205)
!7278 = !DILocation(line: 127, column: 2, scope: !7204)
!7279 = !DILocation(line: 129, column: 8, scope: !7189)
!7280 = !DILocation(line: 129, column: 18, scope: !7189)
!7281 = !DILocation(line: 129, column: 25, scope: !7189)
!7282 = !DILocation(line: 129, column: 29, scope: !7189)
!7283 = !DILocation(line: 129, column: 6, scope: !7189)
!7284 = !DILocation(line: 130, column: 6, scope: !7285)
!7285 = distinct !DILexicalBlock(scope: !7189, file: !2, line: 130, column: 6)
!7286 = !DILocation(line: 130, column: 6, scope: !7189)
!7287 = !DILocation(line: 131, column: 3, scope: !7285)
!7288 = !DILocation(line: 133, column: 17, scope: !7189)
!7289 = !DILocation(line: 134, column: 2, scope: !7189)
!7290 = !DILocation(line: 136, column: 1, scope: !7189)
!7291 = !DILocation(line: 137, column: 7, scope: !7210)
!7292 = !DILocation(line: 137, column: 6, scope: !7189)
!7293 = !DILocation(line: 138, column: 3, scope: !7209)
!7294 = !DILocation(line: 138, column: 7, scope: !7209)
!7295 = !DILocation(line: 140, column: 10, scope: !7296)
!7296 = distinct !DILexicalBlock(scope: !7209, file: !2, line: 140, column: 3)
!7297 = !DILocation(line: 140, column: 8, scope: !7296)
!7298 = !DILocation(line: 140, column: 15, scope: !7299)
!7299 = distinct !DILexicalBlock(scope: !7296, file: !2, line: 140, column: 3)
!7300 = !DILocation(line: 140, column: 17, scope: !7299)
!7301 = !DILocation(line: 140, column: 3, scope: !7296)
!7302 = !DILocation(line: 141, column: 31, scope: !7303)
!7303 = distinct !DILexicalBlock(scope: !7299, file: !2, line: 140, column: 42)
!7304 = !DILocation(line: 141, column: 16, scope: !7303)
!7305 = !DILocation(line: 141, column: 4, scope: !7303)
!7306 = !DILocation(line: 142, column: 19, scope: !7303)
!7307 = !DILocation(line: 142, column: 4, scope: !7303)
!7308 = !DILocation(line: 142, column: 22, scope: !7303)
!7309 = !DILocation(line: 143, column: 3, scope: !7303)
!7310 = !DILocation(line: 140, column: 38, scope: !7299)
!7311 = !DILocation(line: 140, column: 3, scope: !7299)
!7312 = distinct !{!7312, !7301, !7313, !6328, !6329}
!7313 = !DILocation(line: 143, column: 3, scope: !7296)
!7314 = !DILocation(line: 144, column: 2, scope: !7210)
!7315 = !DILocation(line: 144, column: 2, scope: !7209)
!7316 = !DILocation(line: 146, column: 9, scope: !7317)
!7317 = distinct !DILexicalBlock(scope: !7189, file: !2, line: 146, column: 6)
!7318 = !DILocation(line: 146, column: 19, scope: !7317)
!7319 = !DILocation(line: 146, column: 7, scope: !7317)
!7320 = !DILocation(line: 146, column: 6, scope: !7189)
!7321 = !DILocation(line: 147, column: 15, scope: !7322)
!7322 = distinct !DILexicalBlock(scope: !7317, file: !2, line: 146, column: 34)
!7323 = !DILocation(line: 147, column: 25, scope: !7322)
!7324 = !DILocation(line: 147, column: 3, scope: !7322)
!7325 = !DILocation(line: 148, column: 3, scope: !7322)
!7326 = !DILocation(line: 148, column: 13, scope: !7322)
!7327 = !DILocation(line: 148, column: 25, scope: !7322)
!7328 = !DILocation(line: 149, column: 2, scope: !7322)
!7329 = !DILocation(line: 151, column: 9, scope: !7189)
!7330 = !DILocation(line: 151, column: 2, scope: !7189)
!7331 = !DILocation(line: 152, column: 1, scope: !7189)
!7332 = distinct !DISubprogram(name: "perf_trace_event_open", scope: !2, file: !2, line: 181, type: !3920, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !7333)
!7333 = !{!7334, !7335}
!7334 = !DILocalVariable(name: "p_event", arg: 1, scope: !7332, file: !2, line: 181, type: !3337)
!7335 = !DILocalVariable(name: "tp_event", scope: !7332, file: !2, line: 183, type: !392)
!7336 = !DILocation(line: 181, column: 53, scope: !7332)
!7337 = !DILocation(line: 183, column: 2, scope: !7332)
!7338 = !DILocation(line: 183, column: 27, scope: !7332)
!7339 = !DILocation(line: 183, column: 38, scope: !7332)
!7340 = !DILocation(line: 183, column: 47, scope: !7332)
!7341 = !DILocation(line: 184, column: 9, scope: !7332)
!7342 = !DILocation(line: 184, column: 19, scope: !7332)
!7343 = !DILocation(line: 184, column: 26, scope: !7332)
!7344 = !DILocation(line: 184, column: 30, scope: !7332)
!7345 = !DILocation(line: 184, column: 61, scope: !7332)
!7346 = !DILocation(line: 185, column: 1, scope: !7332)
!7347 = !DILocation(line: 184, column: 2, scope: !7332)
!7348 = !DISubprogram(name: "ftrace_event_is_function", scope: !4393, file: !4393, line: 1142, type: !6339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7349 = distinct !DISubprogram(name: "perf_allow_tracepoint", scope: !325, file: !325, line: 1618, type: !7350, scopeLine: 1619, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !7353)
!7350 = !DISubroutineType(types: !7351)
!7351 = !{!13, !7352}
!7352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!7353 = !{!7354}
!7354 = !DILocalVariable(name: "attr", arg: 1, scope: !7349, file: !325, line: 1618, type: !7352)
!7355 = !DILocation(line: 1618, column: 65, scope: !7349)
!7356 = !DILocation(line: 1620, column: 6, scope: !7357)
!7357 = distinct !DILexicalBlock(scope: !7349, file: !325, line: 1620, column: 6)
!7358 = !DILocation(line: 1620, column: 33, scope: !7357)
!7359 = !DILocation(line: 1620, column: 38, scope: !7357)
!7360 = !DILocation(line: 1620, column: 42, scope: !7357)
!7361 = !DILocation(line: 1620, column: 6, scope: !7349)
!7362 = !DILocation(line: 1621, column: 3, scope: !7357)
!7363 = !DILocation(line: 1623, column: 34, scope: !7349)
!7364 = !DILocation(line: 1623, column: 9, scope: !7349)
!7365 = !DILocation(line: 1623, column: 2, scope: !7349)
!7366 = !DILocation(line: 1624, column: 1, scope: !7349)
!7367 = distinct !DISubprogram(name: "perfmon_capable", scope: !1919, file: !1919, line: 195, type: !3821, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77)
!7368 = !DILocation(line: 197, column: 9, scope: !7367)
!7369 = !DILocation(line: 197, column: 30, scope: !7367)
!7370 = !DILocation(line: 197, column: 33, scope: !7367)
!7371 = !DILocation(line: 197, column: 2, scope: !7367)
!7372 = !DISubprogram(name: "security_perf_event_open", scope: !7373, file: !7373, line: 2082, type: !7374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7373 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!7374 = !DISubroutineType(types: !7375)
!7375 = !{!13, !7352, !13}
!7376 = !DISubprogram(name: "capable", scope: !1919, file: !1919, line: 148, type: !7377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7377 = !DISubroutineType(types: !7378)
!7378 = !{!1530, !13}
!7379 = !DISubprogram(name: "__alloc_percpu", scope: !7380, file: !7380, line: 133, type: !7381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7380 = !DIFile(filename: "./include/linux/percpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5b443d1a4673980cdbec5f10c6cbbaa")
!7381 = !DISubroutineType(types: !7382)
!7382 = !{!12, !117, !117}
!7383 = distinct !DISubprogram(name: "find_next_bit", scope: !7384, file: !7384, line: 54, type: !7385, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !7388)
!7384 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!7385 = !DISubroutineType(types: !7386)
!7386 = !{!20, !7387, !20, !20}
!7387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!7388 = !{!7389, !7390, !7391, !7392}
!7389 = !DILocalVariable(name: "addr", arg: 1, scope: !7383, file: !7384, line: 54, type: !7387)
!7390 = !DILocalVariable(name: "size", arg: 2, scope: !7383, file: !7384, line: 54, type: !20)
!7391 = !DILocalVariable(name: "offset", arg: 3, scope: !7383, file: !7384, line: 55, type: !20)
!7392 = !DILocalVariable(name: "val", scope: !7393, file: !7384, line: 58, type: !20)
!7393 = distinct !DILexicalBlock(scope: !7394, file: !7384, line: 57, column: 31)
!7394 = distinct !DILexicalBlock(scope: !7383, file: !7384, line: 57, column: 6)
!7395 = !DILocation(line: 54, column: 50, scope: !7383)
!7396 = !DILocation(line: 54, column: 70, scope: !7383)
!7397 = !DILocation(line: 55, column: 22, scope: !7383)
!7398 = !DILocation(line: 57, column: 6, scope: !7394)
!7399 = !DILocation(line: 57, column: 6, scope: !7383)
!7400 = !DILocation(line: 58, column: 3, scope: !7393)
!7401 = !DILocation(line: 58, column: 17, scope: !7393)
!7402 = !DILocation(line: 60, column: 7, scope: !7403)
!7403 = distinct !DILexicalBlock(scope: !7393, file: !7384, line: 60, column: 7)
!7404 = !DILocation(line: 60, column: 7, scope: !7393)
!7405 = !DILocation(line: 61, column: 11, scope: !7403)
!7406 = !DILocation(line: 61, column: 4, scope: !7403)
!7407 = !DILocation(line: 63, column: 10, scope: !7393)
!7408 = !DILocation(line: 63, column: 9, scope: !7393)
!7409 = !DILocation(line: 63, column: 17, scope: !7393)
!7410 = !DILocation(line: 63, column: 15, scope: !7393)
!7411 = !DILocation(line: 63, column: 7, scope: !7393)
!7412 = !DILocation(line: 64, column: 10, scope: !7393)
!7413 = !DILocation(line: 64, column: 16, scope: !7393)
!7414 = !DILocation(line: 64, column: 29, scope: !7393)
!7415 = !DILocation(line: 64, column: 3, scope: !7393)
!7416 = !DILocation(line: 65, column: 2, scope: !7394)
!7417 = !DILocation(line: 67, column: 24, scope: !7383)
!7418 = !DILocation(line: 67, column: 30, scope: !7383)
!7419 = !DILocation(line: 67, column: 36, scope: !7383)
!7420 = !DILocation(line: 67, column: 9, scope: !7383)
!7421 = !DILocation(line: 67, column: 2, scope: !7383)
!7422 = !DILocation(line: 68, column: 1, scope: !7383)
!7423 = !DISubprogram(name: "free_percpu", scope: !7380, file: !7380, line: 134, type: !3839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7424 = distinct !DISubprogram(name: "variable__ffs", scope: !7425, file: !7425, line: 250, type: !7426, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !7428)
!7425 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7426 = !DISubroutineType(types: !7427)
!7427 = !{!20, !20}
!7428 = !{!7429}
!7429 = !DILocalVariable(name: "word", arg: 1, scope: !7424, file: !7425, line: 250, type: !20)
!7430 = !DILocation(line: 250, column: 66, scope: !7424)
!7431 = !DILocation(line: 254, column: 11, scope: !7424)
!7432 = !DILocation(line: 252, column: 2, scope: !7424)
!7433 = !{i64 848211}
!7434 = !DILocation(line: 255, column: 9, scope: !7424)
!7435 = !DILocation(line: 255, column: 2, scope: !7424)
!7436 = !DISubprogram(name: "_find_next_bit", scope: !7384, file: !7384, line: 11, type: !7385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7437 = !DISubprogram(name: "trace_event_dyn_put_ref", scope: !249, file: !249, line: 408, type: !6398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7438 = !DISubprogram(name: "module_put", scope: !80, file: !80, line: 706, type: !5600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7439 = distinct !DISubprogram(name: "tracepoint_synchronize_unregister", scope: !5868, file: !5868, line: 91, type: !2589, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77)
!7440 = !DILocation(line: 93, column: 2, scope: !7439)
!7441 = !DILocation(line: 94, column: 2, scope: !7439)
!7442 = !DILocation(line: 95, column: 1, scope: !7439)
!7443 = !DISubprogram(name: "synchronize_srcu", scope: !7444, file: !7444, line: 59, type: !7445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7444 = !DIFile(filename: "./include/linux/srcu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f3855d969f2ce3ac707545b2791ec624")
!7445 = !DISubroutineType(types: !7446)
!7446 = !{null, !5774}
!7447 = !DISubprogram(name: "synchronize_rcu", scope: !7448, file: !7448, line: 45, type: !2589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7448 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!7449 = distinct !DISubprogram(name: "__hlist_del", scope: !7450, file: !7450, line: 975, type: !6941, scopeLine: 976, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !7451)
!7450 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!7451 = !{!7452, !7453, !7454}
!7452 = !DILocalVariable(name: "n", arg: 1, scope: !7449, file: !7450, line: 975, type: !800)
!7453 = !DILocalVariable(name: "next", scope: !7449, file: !7450, line: 977, type: !800)
!7454 = !DILocalVariable(name: "pprev", scope: !7449, file: !7450, line: 978, type: !805)
!7455 = !DILocation(line: 975, column: 51, scope: !7449)
!7456 = !DILocation(line: 977, column: 2, scope: !7449)
!7457 = !DILocation(line: 977, column: 21, scope: !7449)
!7458 = !DILocation(line: 977, column: 28, scope: !7449)
!7459 = !DILocation(line: 977, column: 31, scope: !7449)
!7460 = !DILocation(line: 978, column: 2, scope: !7449)
!7461 = !DILocation(line: 978, column: 22, scope: !7449)
!7462 = !DILocation(line: 978, column: 30, scope: !7449)
!7463 = !DILocation(line: 978, column: 33, scope: !7449)
!7464 = !DILocation(line: 980, column: 2, scope: !7449)
!7465 = !DILocation(line: 980, column: 2, scope: !7466)
!7466 = distinct !DILexicalBlock(scope: !7449, file: !7450, line: 980, column: 2)
!7467 = !DILocation(line: 980, column: 2, scope: !7468)
!7468 = distinct !DILexicalBlock(scope: !7466, file: !7450, line: 980, column: 2)
!7469 = !DILocation(line: 980, column: 2, scope: !7470)
!7470 = distinct !DILexicalBlock(scope: !7466, file: !7450, line: 980, column: 2)
!7471 = !DILocation(line: 981, column: 6, scope: !7472)
!7472 = distinct !DILexicalBlock(scope: !7449, file: !7450, line: 981, column: 6)
!7473 = !DILocation(line: 981, column: 6, scope: !7449)
!7474 = !DILocation(line: 982, column: 3, scope: !7472)
!7475 = !DILocation(line: 982, column: 3, scope: !7476)
!7476 = distinct !DILexicalBlock(scope: !7472, file: !7450, line: 982, column: 3)
!7477 = !DILocation(line: 982, column: 3, scope: !7478)
!7478 = distinct !DILexicalBlock(scope: !7476, file: !7450, line: 982, column: 3)
!7479 = !DILocation(line: 982, column: 3, scope: !7480)
!7480 = distinct !DILexicalBlock(scope: !7476, file: !7450, line: 982, column: 3)
!7481 = !DILocation(line: 983, column: 1, scope: !7449)
!7482 = distinct !DISubprogram(name: "get_current", scope: !7483, file: !7483, line: 39, type: !7484, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !7486)
!7483 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!7484 = !DISubroutineType(types: !7485)
!7485 = !{!1032}
!7486 = !{!7487, !7489, !7491}
!7487 = !DILocalVariable(name: "pscr_ret__", scope: !7488, file: !7483, line: 41, type: !1032)
!7488 = distinct !DILexicalBlock(scope: !7482, file: !7483, line: 41, column: 9)
!7489 = !DILocalVariable(name: "__vpp_verify", scope: !7490, file: !7483, line: 41, type: !1459)
!7490 = distinct !DILexicalBlock(scope: !7488, file: !7483, line: 41, column: 9)
!7491 = !DILocalVariable(name: "pfo_val__", scope: !7492, file: !7483, line: 41, type: !47)
!7492 = distinct !DILexicalBlock(scope: !7488, file: !7483, line: 41, column: 9)
!7493 = !DILocation(line: 41, column: 9, scope: !7488)
!7494 = !DILocation(line: 41, column: 9, scope: !7490)
!7495 = !DILocation(line: 41, column: 9, scope: !7492)
!7496 = !{i64 2148543549}
!7497 = !DILocation(line: 41, column: 9, scope: !7482)
!7498 = !DILocation(line: 41, column: 2, scope: !7482)
!7499 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !7500, file: !7500, line: 65, type: !7501, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77)
!7500 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!7501 = !DISubroutineType(types: !7502)
!7502 = !{!20}
!7503 = !DILocation(line: 67, column: 9, scope: !7499)
!7504 = !DILocation(line: 67, column: 2, scope: !7499)
!7505 = distinct !DISubprogram(name: "tracing_gen_ctx_flags", scope: !249, file: !249, line: 191, type: !7506, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !7508)
!7506 = !DISubroutineType(types: !7507)
!7507 = !{!81, !20}
!7508 = !{!7509, !7510, !7511, !7514}
!7509 = !DILocalVariable(name: "irqflags", arg: 1, scope: !7505, file: !249, line: 191, type: !20)
!7510 = !DILocalVariable(name: "irq_status", scope: !7505, file: !249, line: 193, type: !81)
!7511 = !DILocalVariable(name: "__dummy", scope: !7512, file: !249, line: 193, type: !20)
!7512 = distinct !DILexicalBlock(scope: !7513, file: !249, line: 193, column: 28)
!7513 = distinct !DILexicalBlock(scope: !7505, file: !249, line: 193, column: 28)
!7514 = !DILocalVariable(name: "__dummy2", scope: !7512, file: !249, line: 193, type: !20)
!7515 = !DILocation(line: 191, column: 64, scope: !7505)
!7516 = !DILocation(line: 193, column: 2, scope: !7505)
!7517 = !DILocation(line: 193, column: 15, scope: !7505)
!7518 = !DILocation(line: 193, column: 28, scope: !7512)
!7519 = !DILocation(line: 193, column: 28, scope: !7513)
!7520 = !DILocation(line: 193, column: 28, scope: !7505)
!7521 = !DILocation(line: 195, column: 34, scope: !7505)
!7522 = !DILocation(line: 195, column: 9, scope: !7505)
!7523 = !DILocation(line: 196, column: 1, scope: !7505)
!7524 = !DILocation(line: 195, column: 2, scope: !7505)
!7525 = distinct !DISubprogram(name: "native_save_fl", scope: !7500, file: !7500, line: 17, type: !7501, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !7526)
!7526 = !{!7527}
!7527 = !DILocalVariable(name: "flags", scope: !7525, file: !7500, line: 19, type: !20)
!7528 = !DILocation(line: 19, column: 2, scope: !7525)
!7529 = !DILocation(line: 19, column: 16, scope: !7525)
!7530 = !DILocation(line: 26, column: 2, scope: !7525)
!7531 = !{i64 1890650, i64 1890671}
!7532 = !DILocation(line: 32, column: 9, scope: !7525)
!7533 = !DILocation(line: 33, column: 1, scope: !7525)
!7534 = !DILocation(line: 32, column: 2, scope: !7525)
!7535 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !7500, file: !7500, line: 120, type: !7536, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !7538)
!7536 = !DISubroutineType(types: !7537)
!7537 = !{!13, !20}
!7538 = !{!7539}
!7539 = !DILocalVariable(name: "flags", arg: 1, scope: !7535, file: !7500, line: 120, type: !20)
!7540 = !DILocation(line: 120, column: 67, scope: !7535)
!7541 = !DILocation(line: 122, column: 11, scope: !7535)
!7542 = !DILocation(line: 122, column: 17, scope: !7535)
!7543 = !DILocation(line: 122, column: 9, scope: !7535)
!7544 = !DILocation(line: 122, column: 2, scope: !7535)
!7545 = !DISubprogram(name: "tracing_gen_ctx_irq_test", scope: !249, file: !249, line: 177, type: !7546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7546 = !DISubroutineType(types: !7547)
!7547 = !{!81, !81}
