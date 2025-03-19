; ModuleID = 'kernel/tsacct.c'
source_filename = "kernel/tsacct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, i64, i64, %struct.list_head, i32, i64, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i64, [16 x i8], %struct.sched_avg }
%struct.load_weight = type { i64, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8] }
%struct.cpumask = type { [1 x i64] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, ptr, ptr }
%struct.restart_block = type { i64, ptr, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
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
%struct.list_head = type { ptr, ptr }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.9, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.12 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, i64 }
%union.anon.12 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.taskstats = type { i16, i32, i8, i8, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8], i8, [3 x i8], [4 x i8], i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.13 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_t = type { i64 }
%union.anon.13 = type { %struct.callback_head }
%struct.mm_struct = type { %struct.anon.14, [0 x i64] }
%struct.anon.14 = type { %struct.anon.15, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.15 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.16, i32, ptr }
%union.anon.16 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }

@overflowuid = external dso_local global i32, align 4
@overflowgid = external dso_local global i32, align 4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @bacct_add_tsk(ptr noundef %user_ns, ptr noundef %pid_ns, ptr noundef %stats, ptr noundef %tsk) #0 align 16 !dbg !3472 {
entry:
  %user_ns.addr = alloca ptr, align 8
  %pid_ns.addr = alloca ptr, align 8
  %stats.addr = alloca ptr, align 8
  %tsk.addr = alloca ptr, align 8
  %tcred = alloca ptr, align 8
  %utime = alloca i64, align 8
  %stime = alloca i64, align 8
  %utimescaled = alloca i64, align 8
  %stimescaled = alloca i64, align 8
  %now_ns = alloca i64, align 8
  %delta = alloca i64, align 8
  %btime = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__base5 = alloca i32, align 4
  %__rem6 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %tmp16 = alloca i64, align 8
  %__UNIQUE_ID___val279 = alloca i64, align 8
  %__UNIQUE_ID___lo280 = alloca i64, align 8
  %__UNIQUE_ID___hi281 = alloca i64, align 8
  %tmp17 = alloca i64, align 8
  %__UNIQUE_ID_rcu282 = alloca ptr, align 8
  %tmp70 = alloca ptr, align 8
  %tmp74 = alloca ptr, align 8
  %__UNIQUE_ID_rcu284 = alloca ptr, align 8
  %tmp84 = alloca ptr, align 8
  %tmp88 = alloca ptr, align 8
  store ptr %user_ns, ptr %user_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_ns.addr, metadata !3476, metadata !DIExpression()), !dbg !3503
  store ptr %pid_ns, ptr %pid_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid_ns.addr, metadata !3477, metadata !DIExpression()), !dbg !3504
  store ptr %stats, ptr %stats.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stats.addr, metadata !3478, metadata !DIExpression()), !dbg !3505
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !3479, metadata !DIExpression()), !dbg !3506
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcred) #7, !dbg !3507
  call void @llvm.dbg.declare(metadata ptr %tcred, metadata !3480, metadata !DIExpression()), !dbg !3508
  call void @llvm.lifetime.start.p0(i64 8, ptr %utime) #7, !dbg !3509
  call void @llvm.dbg.declare(metadata ptr %utime, metadata !3481, metadata !DIExpression()), !dbg !3510
  call void @llvm.lifetime.start.p0(i64 8, ptr %stime) #7, !dbg !3509
  call void @llvm.dbg.declare(metadata ptr %stime, metadata !3482, metadata !DIExpression()), !dbg !3511
  call void @llvm.lifetime.start.p0(i64 8, ptr %utimescaled) #7, !dbg !3509
  call void @llvm.dbg.declare(metadata ptr %utimescaled, metadata !3483, metadata !DIExpression()), !dbg !3512
  call void @llvm.lifetime.start.p0(i64 8, ptr %stimescaled) #7, !dbg !3509
  call void @llvm.dbg.declare(metadata ptr %stimescaled, metadata !3484, metadata !DIExpression()), !dbg !3513
  call void @llvm.lifetime.start.p0(i64 8, ptr %now_ns) #7, !dbg !3514
  call void @llvm.dbg.declare(metadata ptr %now_ns, metadata !3485, metadata !DIExpression()), !dbg !3515
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #7, !dbg !3514
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !3486, metadata !DIExpression()), !dbg !3516
  call void @llvm.lifetime.start.p0(i64 8, ptr %btime) #7, !dbg !3517
  call void @llvm.dbg.declare(metadata ptr %btime, metadata !3487, metadata !DIExpression()), !dbg !3518
  br label %do.body, !dbg !3519

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3520

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3520

do.end:                                           ; preds = %do.cond
  %call = call i64 @ktime_get_ns() #8, !dbg !3522
  store i64 %call, ptr %now_ns, align 8, !dbg !3523
  %0 = load i64, ptr %now_ns, align 8, !dbg !3524
  %1 = load ptr, ptr %tsk.addr, align 8, !dbg !3525
  %group_leader = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 69, !dbg !3526
  %2 = load ptr, ptr %group_leader, align 8, !dbg !3526
  %start_time = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 86, !dbg !3527
  %3 = load i64, ptr %start_time, align 8, !dbg !3527
  %sub = sub i64 %0, %3, !dbg !3528
  store i64 %sub, ptr %delta, align 8, !dbg !3529
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #7, !dbg !3530
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !3488, metadata !DIExpression()), !dbg !3530
  store i32 1000, ptr %__base, align 4, !dbg !3530
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #7, !dbg !3530
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !3490, metadata !DIExpression()), !dbg !3530
  %4 = load i64, ptr %delta, align 8, !dbg !3530
  %5 = load i32, ptr %__base, align 4, !dbg !3530
  %conv = zext i32 %5 to i64, !dbg !3530
  %rem = urem i64 %4, %conv, !dbg !3530
  %conv1 = trunc i64 %rem to i32, !dbg !3530
  store i32 %conv1, ptr %__rem, align 4, !dbg !3530
  %6 = load i64, ptr %delta, align 8, !dbg !3530
  %7 = load i32, ptr %__base, align 4, !dbg !3530
  %conv2 = zext i32 %7 to i64, !dbg !3530
  %div = udiv i64 %6, %conv2, !dbg !3530
  store i64 %div, ptr %delta, align 8, !dbg !3530
  %8 = load i32, ptr %__rem, align 4, !dbg !3530
  store i32 %8, ptr %tmp, align 4, !dbg !3530
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #7, !dbg !3531
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #7, !dbg !3531
  %9 = load i32, ptr %tmp, align 4, !dbg !3530
  %10 = load i64, ptr %delta, align 8, !dbg !3532
  %11 = load ptr, ptr %stats.addr, align 8, !dbg !3533
  %ac_tgetime = getelementptr inbounds %struct.taskstats, ptr %11, i32 0, i32 50, !dbg !3534
  store i64 %10, ptr %ac_tgetime, align 8, !dbg !3535
  %12 = load i64, ptr %now_ns, align 8, !dbg !3536
  %13 = load ptr, ptr %tsk.addr, align 8, !dbg !3537
  %start_time3 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 86, !dbg !3538
  %14 = load i64, ptr %start_time3, align 8, !dbg !3538
  %sub4 = sub i64 %12, %14, !dbg !3539
  store i64 %sub4, ptr %delta, align 8, !dbg !3540
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base5) #7, !dbg !3541
  call void @llvm.dbg.declare(metadata ptr %__base5, metadata !3491, metadata !DIExpression()), !dbg !3541
  store i32 1000, ptr %__base5, align 4, !dbg !3541
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem6) #7, !dbg !3541
  call void @llvm.dbg.declare(metadata ptr %__rem6, metadata !3493, metadata !DIExpression()), !dbg !3541
  %15 = load i64, ptr %delta, align 8, !dbg !3541
  %16 = load i32, ptr %__base5, align 4, !dbg !3541
  %conv7 = zext i32 %16 to i64, !dbg !3541
  %rem8 = urem i64 %15, %conv7, !dbg !3541
  %conv9 = trunc i64 %rem8 to i32, !dbg !3541
  store i32 %conv9, ptr %__rem6, align 4, !dbg !3541
  %17 = load i64, ptr %delta, align 8, !dbg !3541
  %18 = load i32, ptr %__base5, align 4, !dbg !3541
  %conv10 = zext i32 %18 to i64, !dbg !3541
  %div11 = udiv i64 %17, %conv10, !dbg !3541
  store i64 %div11, ptr %delta, align 8, !dbg !3541
  %19 = load i32, ptr %__rem6, align 4, !dbg !3541
  store i32 %19, ptr %tmp12, align 4, !dbg !3541
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem6) #7, !dbg !3542
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base5) #7, !dbg !3542
  %20 = load i32, ptr %tmp12, align 4, !dbg !3541
  %21 = load i64, ptr %delta, align 8, !dbg !3543
  %22 = load ptr, ptr %stats.addr, align 8, !dbg !3544
  %ac_etime = getelementptr inbounds %struct.taskstats, ptr %22, i32 0, i32 21, !dbg !3545
  store i64 %21, ptr %ac_etime, align 8, !dbg !3546
  %call13 = call i64 @ktime_get_real_seconds() #8, !dbg !3547
  %23 = load i64, ptr %delta, align 8, !dbg !3548
  %call14 = call i64 @div_u64(i64 noundef %23, i32 noundef 1000000) #8, !dbg !3549
  %sub15 = sub i64 %call13, %call14, !dbg !3550
  store i64 %sub15, ptr %btime, align 8, !dbg !3551
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___val279) #7, !dbg !3552
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val279, metadata !3494, metadata !DIExpression()), !dbg !3552
  %24 = load i64, ptr %btime, align 8, !dbg !3552
  store i64 %24, ptr %__UNIQUE_ID___val279, align 8, !dbg !3552
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___lo280) #7, !dbg !3552
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo280, metadata !3497, metadata !DIExpression()), !dbg !3552
  store i64 0, ptr %__UNIQUE_ID___lo280, align 8, !dbg !3552
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___hi281) #7, !dbg !3552
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi281, metadata !3498, metadata !DIExpression()), !dbg !3552
  store i64 4294967295, ptr %__UNIQUE_ID___hi281, align 8, !dbg !3552
  %25 = load i64, ptr %__UNIQUE_ID___val279, align 8, !dbg !3552
  %26 = load i64, ptr %__UNIQUE_ID___hi281, align 8, !dbg !3552
  %cmp = icmp sge i64 %25, %26, !dbg !3552
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3552

cond.true:                                        ; preds = %do.end
  %27 = load i64, ptr %__UNIQUE_ID___hi281, align 8, !dbg !3552
  br label %cond.end23, !dbg !3552

cond.false:                                       ; preds = %do.end
  %28 = load i64, ptr %__UNIQUE_ID___val279, align 8, !dbg !3552
  %29 = load i64, ptr %__UNIQUE_ID___lo280, align 8, !dbg !3552
  %cmp19 = icmp sle i64 %28, %29, !dbg !3552
  br i1 %cmp19, label %cond.true21, label %cond.false22, !dbg !3552

cond.true21:                                      ; preds = %cond.false
  %30 = load i64, ptr %__UNIQUE_ID___lo280, align 8, !dbg !3552
  br label %cond.end, !dbg !3552

cond.false22:                                     ; preds = %cond.false
  %31 = load i64, ptr %__UNIQUE_ID___val279, align 8, !dbg !3552
  br label %cond.end, !dbg !3552

cond.end:                                         ; preds = %cond.false22, %cond.true21
  %cond = phi i64 [ %30, %cond.true21 ], [ %31, %cond.false22 ], !dbg !3552
  br label %cond.end23, !dbg !3552

cond.end23:                                       ; preds = %cond.end, %cond.true
  %cond24 = phi i64 [ %27, %cond.true ], [ %cond, %cond.end ], !dbg !3552
  store i64 %cond24, ptr %tmp17, align 8, !dbg !3552
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___hi281) #7, !dbg !3553
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___lo280) #7, !dbg !3553
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___val279) #7, !dbg !3553
  %32 = load i64, ptr %tmp17, align 8, !dbg !3552
  store i64 %32, ptr %tmp16, align 8, !dbg !3554
  %33 = load i64, ptr %tmp16, align 8, !dbg !3553
  %conv25 = trunc i64 %33 to i32, !dbg !3554
  %34 = load ptr, ptr %stats.addr, align 8, !dbg !3555
  %ac_btime = getelementptr inbounds %struct.taskstats, ptr %34, i32 0, i32 20, !dbg !3556
  store i32 %conv25, ptr %ac_btime, align 8, !dbg !3557
  %35 = load i64, ptr %btime, align 8, !dbg !3558
  %36 = load ptr, ptr %stats.addr, align 8, !dbg !3559
  %ac_btime64 = getelementptr inbounds %struct.taskstats, ptr %36, i32 0, i32 46, !dbg !3560
  store i64 %35, ptr %ac_btime64, align 8, !dbg !3561
  %37 = load ptr, ptr %tsk.addr, align 8, !dbg !3562
  %flags = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 4, !dbg !3564
  %38 = load i32, ptr %flags, align 4, !dbg !3564
  %and = and i32 %38, 4, !dbg !3565
  %tobool = icmp ne i32 %and, 0, !dbg !3565
  br i1 %tobool, label %if.then, label %if.end, !dbg !3566

if.then:                                          ; preds = %cond.end23
  %39 = load ptr, ptr %tsk.addr, align 8, !dbg !3567
  %exit_code = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 52, !dbg !3568
  %40 = load i32, ptr %exit_code, align 4, !dbg !3568
  %41 = load ptr, ptr %stats.addr, align 8, !dbg !3569
  %ac_exitcode = getelementptr inbounds %struct.taskstats, ptr %41, i32 0, i32 1, !dbg !3570
  store i32 %40, ptr %ac_exitcode, align 4, !dbg !3571
  br label %if.end, !dbg !3569

if.end:                                           ; preds = %if.then, %cond.end23
  %42 = load ptr, ptr %tsk.addr, align 8, !dbg !3572
  %call26 = call zeroext i1 @thread_group_leader(ptr noundef %42) #8, !dbg !3574
  br i1 %call26, label %land.lhs.true, label %if.end34, !dbg !3575

land.lhs.true:                                    ; preds = %if.end
  %43 = load ptr, ptr %tsk.addr, align 8, !dbg !3576
  %flags28 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 4, !dbg !3577
  %44 = load i32, ptr %flags28, align 4, !dbg !3577
  %and29 = and i32 %44, 64, !dbg !3578
  %tobool30 = icmp ne i32 %and29, 0, !dbg !3578
  br i1 %tobool30, label %if.then31, label %if.end34, !dbg !3579

if.then31:                                        ; preds = %land.lhs.true
  %45 = load ptr, ptr %stats.addr, align 8, !dbg !3580
  %ac_flag = getelementptr inbounds %struct.taskstats, ptr %45, i32 0, i32 2, !dbg !3581
  %46 = load i8, ptr %ac_flag, align 8, !dbg !3582
  %conv32 = zext i8 %46 to i32, !dbg !3582
  %or = or i32 %conv32, 1, !dbg !3582
  %conv33 = trunc i32 %or to i8, !dbg !3582
  store i8 %conv33, ptr %ac_flag, align 8, !dbg !3582
  br label %if.end34, !dbg !3580

if.end34:                                         ; preds = %if.then31, %land.lhs.true, %if.end
  %47 = load ptr, ptr %tsk.addr, align 8, !dbg !3583
  %flags35 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 4, !dbg !3585
  %48 = load i32, ptr %flags35, align 4, !dbg !3585
  %and36 = and i32 %48, 256, !dbg !3586
  %tobool37 = icmp ne i32 %and36, 0, !dbg !3586
  br i1 %tobool37, label %if.then38, label %if.end43, !dbg !3587

if.then38:                                        ; preds = %if.end34
  %49 = load ptr, ptr %stats.addr, align 8, !dbg !3588
  %ac_flag39 = getelementptr inbounds %struct.taskstats, ptr %49, i32 0, i32 2, !dbg !3589
  %50 = load i8, ptr %ac_flag39, align 8, !dbg !3590
  %conv40 = zext i8 %50 to i32, !dbg !3590
  %or41 = or i32 %conv40, 2, !dbg !3590
  %conv42 = trunc i32 %or41 to i8, !dbg !3590
  store i8 %conv42, ptr %ac_flag39, align 8, !dbg !3590
  br label %if.end43, !dbg !3588

if.end43:                                         ; preds = %if.then38, %if.end34
  %51 = load ptr, ptr %tsk.addr, align 8, !dbg !3591
  %flags44 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 4, !dbg !3593
  %52 = load i32, ptr %flags44, align 4, !dbg !3593
  %and45 = and i32 %52, 512, !dbg !3594
  %tobool46 = icmp ne i32 %and45, 0, !dbg !3594
  br i1 %tobool46, label %if.then47, label %if.end52, !dbg !3595

if.then47:                                        ; preds = %if.end43
  %53 = load ptr, ptr %stats.addr, align 8, !dbg !3596
  %ac_flag48 = getelementptr inbounds %struct.taskstats, ptr %53, i32 0, i32 2, !dbg !3597
  %54 = load i8, ptr %ac_flag48, align 8, !dbg !3598
  %conv49 = zext i8 %54 to i32, !dbg !3598
  %or50 = or i32 %conv49, 8, !dbg !3598
  %conv51 = trunc i32 %or50 to i8, !dbg !3598
  store i8 %conv51, ptr %ac_flag48, align 8, !dbg !3598
  br label %if.end52, !dbg !3596

if.end52:                                         ; preds = %if.then47, %if.end43
  %55 = load ptr, ptr %tsk.addr, align 8, !dbg !3599
  %flags53 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 4, !dbg !3601
  %56 = load i32, ptr %flags53, align 4, !dbg !3601
  %and54 = and i32 %56, 1024, !dbg !3602
  %tobool55 = icmp ne i32 %and54, 0, !dbg !3602
  br i1 %tobool55, label %if.then56, label %if.end61, !dbg !3603

if.then56:                                        ; preds = %if.end52
  %57 = load ptr, ptr %stats.addr, align 8, !dbg !3604
  %ac_flag57 = getelementptr inbounds %struct.taskstats, ptr %57, i32 0, i32 2, !dbg !3605
  %58 = load i8, ptr %ac_flag57, align 8, !dbg !3606
  %conv58 = zext i8 %58 to i32, !dbg !3606
  %or59 = or i32 %conv58, 16, !dbg !3606
  %conv60 = trunc i32 %or59 to i8, !dbg !3606
  store i8 %conv60, ptr %ac_flag57, align 8, !dbg !3606
  br label %if.end61, !dbg !3604

if.end61:                                         ; preds = %if.then56, %if.end52
  %59 = load ptr, ptr %tsk.addr, align 8, !dbg !3607
  %call62 = call i32 @task_nice(ptr noundef %59) #8, !dbg !3608
  %conv63 = trunc i32 %call62 to i8, !dbg !3608
  %60 = load ptr, ptr %stats.addr, align 8, !dbg !3609
  %ac_nice = getelementptr inbounds %struct.taskstats, ptr %60, i32 0, i32 3, !dbg !3610
  store i8 %conv63, ptr %ac_nice, align 1, !dbg !3611
  %61 = load ptr, ptr %tsk.addr, align 8, !dbg !3612
  %policy = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 26, !dbg !3613
  %62 = load i32, ptr %policy, align 4, !dbg !3613
  %conv64 = trunc i32 %62 to i8, !dbg !3612
  %63 = load ptr, ptr %stats.addr, align 8, !dbg !3614
  %ac_sched = getelementptr inbounds %struct.taskstats, ptr %63, i32 0, i32 13, !dbg !3615
  store i8 %conv64, ptr %ac_sched, align 8, !dbg !3616
  %64 = load ptr, ptr %tsk.addr, align 8, !dbg !3617
  %65 = load ptr, ptr %pid_ns.addr, align 8, !dbg !3618
  %call65 = call i32 @task_pid_nr_ns(ptr noundef %64, ptr noundef %65) #8, !dbg !3619
  %66 = load ptr, ptr %stats.addr, align 8, !dbg !3620
  %ac_pid = getelementptr inbounds %struct.taskstats, ptr %66, i32 0, i32 18, !dbg !3621
  store i32 %call65, ptr %ac_pid, align 8, !dbg !3622
  %67 = load ptr, ptr %tsk.addr, align 8, !dbg !3623
  %68 = load ptr, ptr %pid_ns.addr, align 8, !dbg !3624
  %call66 = call i32 @task_tgid_nr_ns(ptr noundef %67, ptr noundef %68) #8, !dbg !3625
  %69 = load ptr, ptr %stats.addr, align 8, !dbg !3626
  %ac_tgid = getelementptr inbounds %struct.taskstats, ptr %69, i32 0, i32 49, !dbg !3627
  store i32 %call66, ptr %ac_tgid, align 8, !dbg !3628
  call void @rcu_read_lock() #8, !dbg !3629
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu282) #7, !dbg !3630
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu282, metadata !3499, metadata !DIExpression()), !dbg !3630
  br label %do.body67, !dbg !3631

do.body67:                                        ; preds = %if.end61
  br label %do.cond68, !dbg !3633

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !3633

do.end69:                                         ; preds = %do.cond68
  %70 = load ptr, ptr %tsk.addr, align 8, !dbg !3631
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 93, !dbg !3631
  %71 = load volatile ptr, ptr %real_cred, align 8, !dbg !3631
  store ptr %71, ptr %tmp70, align 8, !dbg !3633
  %72 = load ptr, ptr %tmp70, align 8, !dbg !3631
  store ptr %72, ptr %__UNIQUE_ID_rcu282, align 8, !dbg !3630
  br label %do.body71, !dbg !3630

do.body71:                                        ; preds = %do.end69
  br label %do.cond72, !dbg !3635

do.cond72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3635

do.end73:                                         ; preds = %do.cond72
  %73 = load ptr, ptr %__UNIQUE_ID_rcu282, align 8, !dbg !3630
  store ptr %73, ptr %tmp74, align 8, !dbg !3635
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu282) #7, !dbg !3637
  %74 = load ptr, ptr %tmp74, align 8, !dbg !3630
  store ptr %74, ptr %tcred, align 8, !dbg !3638
  %75 = load ptr, ptr %user_ns.addr, align 8, !dbg !3639
  %76 = load ptr, ptr %tcred, align 8, !dbg !3640
  %uid = getelementptr inbounds %struct.cred, ptr %76, i32 0, i32 1, !dbg !3641
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !3642
  %77 = load i32, ptr %coerce.dive, align 8, !dbg !3642
  %call75 = call i32 @from_kuid_munged(ptr noundef %75, i32 %77) #8, !dbg !3642
  %78 = load ptr, ptr %stats.addr, align 8, !dbg !3643
  %ac_uid = getelementptr inbounds %struct.taskstats, ptr %78, i32 0, i32 16, !dbg !3644
  store i32 %call75, ptr %ac_uid, align 8, !dbg !3645
  %79 = load ptr, ptr %user_ns.addr, align 8, !dbg !3646
  %80 = load ptr, ptr %tcred, align 8, !dbg !3647
  %gid = getelementptr inbounds %struct.cred, ptr %80, i32 0, i32 2, !dbg !3648
  %coerce.dive76 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !3649
  %81 = load i32, ptr %coerce.dive76, align 4, !dbg !3649
  %call77 = call i32 @from_kgid_munged(ptr noundef %79, i32 %81) #8, !dbg !3649
  %82 = load ptr, ptr %stats.addr, align 8, !dbg !3650
  %ac_gid = getelementptr inbounds %struct.taskstats, ptr %82, i32 0, i32 17, !dbg !3651
  store i32 %call77, ptr %ac_gid, align 4, !dbg !3652
  %83 = load ptr, ptr %tsk.addr, align 8, !dbg !3653
  %call78 = call i32 @pid_alive(ptr noundef %83) #8, !dbg !3654
  %tobool79 = icmp ne i32 %call78, 0, !dbg !3654
  br i1 %tobool79, label %cond.true80, label %cond.false90, !dbg !3654

cond.true80:                                      ; preds = %do.end73
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu284) #7, !dbg !3655
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu284, metadata !3501, metadata !DIExpression()), !dbg !3655
  br label %do.body81, !dbg !3656

do.body81:                                        ; preds = %cond.true80
  br label %do.cond82, !dbg !3658

do.cond82:                                        ; preds = %do.body81
  br label %do.end83, !dbg !3658

do.end83:                                         ; preds = %do.cond82
  %84 = load ptr, ptr %tsk.addr, align 8, !dbg !3656
  %real_parent = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 65, !dbg !3656
  %85 = load volatile ptr, ptr %real_parent, align 8, !dbg !3656
  store ptr %85, ptr %tmp84, align 8, !dbg !3658
  %86 = load ptr, ptr %tmp84, align 8, !dbg !3656
  store ptr %86, ptr %__UNIQUE_ID_rcu284, align 8, !dbg !3655
  br label %do.body85, !dbg !3655

do.body85:                                        ; preds = %do.end83
  br label %do.cond86, !dbg !3660

do.cond86:                                        ; preds = %do.body85
  br label %do.end87, !dbg !3660

do.end87:                                         ; preds = %do.cond86
  %87 = load ptr, ptr %__UNIQUE_ID_rcu284, align 8, !dbg !3655
  store ptr %87, ptr %tmp88, align 8, !dbg !3660
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu284) #7, !dbg !3662
  %88 = load ptr, ptr %tmp88, align 8, !dbg !3655
  %89 = load ptr, ptr %pid_ns.addr, align 8, !dbg !3663
  %call89 = call i32 @task_tgid_nr_ns(ptr noundef %88, ptr noundef %89) #8, !dbg !3664
  br label %cond.end91, !dbg !3654

cond.false90:                                     ; preds = %do.end73
  br label %cond.end91, !dbg !3654

cond.end91:                                       ; preds = %cond.false90, %do.end87
  %cond92 = phi i32 [ %call89, %do.end87 ], [ 0, %cond.false90 ], !dbg !3654
  %90 = load ptr, ptr %stats.addr, align 8, !dbg !3665
  %ac_ppid = getelementptr inbounds %struct.taskstats, ptr %90, i32 0, i32 19, !dbg !3666
  store i32 %cond92, ptr %ac_ppid, align 4, !dbg !3667
  call void @rcu_read_unlock() #8, !dbg !3668
  %91 = load ptr, ptr %tsk.addr, align 8, !dbg !3669
  %call93 = call zeroext i1 @task_cputime(ptr noundef %91, ptr noundef %utime, ptr noundef %stime) #8, !dbg !3670
  %92 = load i64, ptr %utime, align 8, !dbg !3671
  %call94 = call i64 @div_u64(i64 noundef %92, i32 noundef 1000) #8, !dbg !3672
  %93 = load ptr, ptr %stats.addr, align 8, !dbg !3673
  %ac_utime = getelementptr inbounds %struct.taskstats, ptr %93, i32 0, i32 22, !dbg !3674
  store i64 %call94, ptr %ac_utime, align 8, !dbg !3675
  %94 = load i64, ptr %stime, align 8, !dbg !3676
  %call95 = call i64 @div_u64(i64 noundef %94, i32 noundef 1000) #8, !dbg !3677
  %95 = load ptr, ptr %stats.addr, align 8, !dbg !3678
  %ac_stime = getelementptr inbounds %struct.taskstats, ptr %95, i32 0, i32 23, !dbg !3679
  store i64 %call95, ptr %ac_stime, align 8, !dbg !3680
  %96 = load ptr, ptr %tsk.addr, align 8, !dbg !3681
  call void @task_cputime_scaled(ptr noundef %96, ptr noundef %utimescaled, ptr noundef %stimescaled) #8, !dbg !3682
  %97 = load i64, ptr %utimescaled, align 8, !dbg !3683
  %call96 = call i64 @div_u64(i64 noundef %97, i32 noundef 1000) #8, !dbg !3684
  %98 = load ptr, ptr %stats.addr, align 8, !dbg !3685
  %ac_utimescaled = getelementptr inbounds %struct.taskstats, ptr %98, i32 0, i32 39, !dbg !3686
  store i64 %call96, ptr %ac_utimescaled, align 8, !dbg !3687
  %99 = load i64, ptr %stimescaled, align 8, !dbg !3688
  %call97 = call i64 @div_u64(i64 noundef %99, i32 noundef 1000) #8, !dbg !3689
  %100 = load ptr, ptr %stats.addr, align 8, !dbg !3690
  %ac_stimescaled = getelementptr inbounds %struct.taskstats, ptr %100, i32 0, i32 40, !dbg !3691
  store i64 %call97, ptr %ac_stimescaled, align 8, !dbg !3692
  %101 = load ptr, ptr %tsk.addr, align 8, !dbg !3693
  %min_flt = getelementptr inbounds %struct.task_struct, ptr %101, i32 0, i32 88, !dbg !3694
  %102 = load i64, ptr %min_flt, align 8, !dbg !3694
  %103 = load ptr, ptr %stats.addr, align 8, !dbg !3695
  %ac_minflt = getelementptr inbounds %struct.taskstats, ptr %103, i32 0, i32 24, !dbg !3696
  store i64 %102, ptr %ac_minflt, align 8, !dbg !3697
  %104 = load ptr, ptr %tsk.addr, align 8, !dbg !3698
  %maj_flt = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 89, !dbg !3699
  %105 = load i64, ptr %maj_flt, align 64, !dbg !3699
  %106 = load ptr, ptr %stats.addr, align 8, !dbg !3700
  %ac_majflt = getelementptr inbounds %struct.taskstats, ptr %106, i32 0, i32 25, !dbg !3701
  store i64 %105, ptr %ac_majflt, align 8, !dbg !3702
  %107 = load ptr, ptr %stats.addr, align 8, !dbg !3703
  %ac_comm = getelementptr inbounds %struct.taskstats, ptr %107, i32 0, i32 12, !dbg !3704
  %arraydecay = getelementptr inbounds [32 x i8], ptr %ac_comm, i64 0, i64 0, !dbg !3703
  %108 = load ptr, ptr %tsk.addr, align 8, !dbg !3705
  %comm = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 96, !dbg !3706
  %arraydecay98 = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !3705
  %call99 = call ptr @strncpy(ptr noundef %arraydecay, ptr noundef %arraydecay98, i64 noundef 32) #8, !dbg !3707
  call void @llvm.lifetime.end.p0(i64 8, ptr %btime) #7, !dbg !3708
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #7, !dbg !3708
  call void @llvm.lifetime.end.p0(i64 8, ptr %now_ns) #7, !dbg !3708
  call void @llvm.lifetime.end.p0(i64 8, ptr %stimescaled) #7, !dbg !3708
  call void @llvm.lifetime.end.p0(i64 8, ptr %utimescaled) #7, !dbg !3708
  call void @llvm.lifetime.end.p0(i64 8, ptr %stime) #7, !dbg !3708
  call void @llvm.lifetime.end.p0(i64 8, ptr %utime) #7, !dbg !3708
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcred) #7, !dbg !3708
  ret void, !dbg !3708
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_get_ns() #3 align 16 !dbg !3709 {
entry:
  %call = call i64 @ktime_get() #8, !dbg !3713
  %call1 = call i64 @ktime_to_ns(i64 noundef %call) #8, !dbg !3714
  ret i64 %call1, !dbg !3715
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3716 dso_local i64 @ktime_get_real_seconds() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) #3 align 16 !dbg !3719 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !3724, metadata !DIExpression()), !dbg !3727
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !3725, metadata !DIExpression()), !dbg !3728
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #7, !dbg !3729
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !3726, metadata !DIExpression()), !dbg !3730
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !3731
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !3732
  %call = call i64 @div_u64_rem(i64 noundef %0, i32 noundef %1, ptr noundef %remainder) #8, !dbg !3733
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #7, !dbg !3734
  ret i64 %call, !dbg !3735
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @thread_group_leader(ptr noundef %p) #3 align 16 !dbg !3736 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3740, metadata !DIExpression()), !dbg !3741
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3742
  %exit_signal = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 53, !dbg !3743
  %1 = load i32, ptr %exit_signal, align 8, !dbg !3743
  %cmp = icmp sge i32 %1, 0, !dbg !3744
  ret i1 %cmp, !dbg !3745
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_nice(ptr noundef %p) #3 align 16 !dbg !3746 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3752, metadata !DIExpression()), !dbg !3753
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3754
  %static_prio = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 15, !dbg !3754
  %1 = load i32, ptr %static_prio, align 16, !dbg !3754
  %sub = sub i32 %1, 120, !dbg !3754
  ret i32 %sub, !dbg !3755
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_pid_nr_ns(ptr noundef %tsk, ptr noundef %ns) #3 align 16 !dbg !3756 {
entry:
  %tsk.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !3760, metadata !DIExpression()), !dbg !3762
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !3761, metadata !DIExpression()), !dbg !3763
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !3764
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !3765
  %call = call i32 @__task_pid_nr_ns(ptr noundef %0, i32 noundef 0, ptr noundef %1) #8, !dbg !3766
  ret i32 %call, !dbg !3767
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_tgid_nr_ns(ptr noundef %tsk, ptr noundef %ns) #3 align 16 !dbg !3768 {
entry:
  %tsk.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !3770, metadata !DIExpression()), !dbg !3772
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !3771, metadata !DIExpression()), !dbg !3773
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !3774
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !3775
  %call = call i32 @__task_pid_nr_ns(ptr noundef %0, i32 noundef 1, ptr noundef %1) #8, !dbg !3776
  ret i32 %call, !dbg !3777
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #5 align 16 !dbg !3778 {
entry:
  call void @__rcu_read_lock() #8, !dbg !3780
  br label %do.body, !dbg !3781

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3782

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !3784

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !3785

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !3787
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid_munged(ptr noundef %to, i32 %kuid.coerce) #3 align 16 !dbg !3788 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %uid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !3792, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !3793, metadata !DIExpression()), !dbg !3796
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #7, !dbg !3797
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !3794, metadata !DIExpression()), !dbg !3798
  %0 = load ptr, ptr %to.addr, align 8, !dbg !3799
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !3800
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !3800
  %call = call i32 @from_kuid(ptr noundef %0, i32 %1) #8, !dbg !3800
  store i32 %call, ptr %uid, align 4, !dbg !3798
  %2 = load i32, ptr %uid, align 4, !dbg !3801
  %cmp = icmp eq i32 %2, -1, !dbg !3803
  br i1 %cmp, label %if.then, label %if.end, !dbg !3804

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowuid, align 4, !dbg !3805
  store i32 %3, ptr %uid, align 4, !dbg !3806
  br label %if.end, !dbg !3807

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %uid, align 4, !dbg !3808
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #7, !dbg !3809
  ret i32 %4, !dbg !3810
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid_munged(ptr noundef %to, i32 %kgid.coerce) #3 align 16 !dbg !3811 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %gid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !3815, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !3816, metadata !DIExpression()), !dbg !3819
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #7, !dbg !3820
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !3817, metadata !DIExpression()), !dbg !3821
  %0 = load ptr, ptr %to.addr, align 8, !dbg !3822
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !3823
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !3823
  %call = call i32 @from_kgid(ptr noundef %0, i32 %1) #8, !dbg !3823
  store i32 %call, ptr %gid, align 4, !dbg !3821
  %2 = load i32, ptr %gid, align 4, !dbg !3824
  %cmp = icmp eq i32 %2, -1, !dbg !3826
  br i1 %cmp, label %if.then, label %if.end, !dbg !3827

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowgid, align 4, !dbg !3828
  store i32 %3, ptr %gid, align 4, !dbg !3829
  br label %if.end, !dbg !3830

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %gid, align 4, !dbg !3831
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #7, !dbg !3832
  ret i32 %4, !dbg !3833
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pid_alive(ptr noundef %p) #3 align 16 !dbg !3834 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3836, metadata !DIExpression()), !dbg !3837
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3838
  %thread_pid = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 72, !dbg !3839
  %1 = load ptr, ptr %thread_pid, align 32, !dbg !3839
  %cmp = icmp ne ptr %1, null, !dbg !3840
  %conv = zext i1 %cmp to i32, !dbg !3840
  ret i32 %conv, !dbg !3841
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #3 align 16 !dbg !3842 {
entry:
  br label %do.body, !dbg !3843

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3844

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #8, !dbg !3846
  br label %do.body1, !dbg !3847

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !3848

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !3850
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @task_cputime(ptr noundef %t, ptr noundef %utime, ptr noundef %stime) #3 align 16 !dbg !3851 {
entry:
  %t.addr = alloca ptr, align 8
  %utime.addr = alloca ptr, align 8
  %stime.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !3857, metadata !DIExpression()), !dbg !3860
  store ptr %utime, ptr %utime.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %utime.addr, metadata !3858, metadata !DIExpression()), !dbg !3861
  store ptr %stime, ptr %stime.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stime.addr, metadata !3859, metadata !DIExpression()), !dbg !3862
  %0 = load ptr, ptr %t.addr, align 8, !dbg !3863
  %utime1 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 80, !dbg !3864
  %1 = load i64, ptr %utime1, align 8, !dbg !3864
  %2 = load ptr, ptr %utime.addr, align 8, !dbg !3865
  store i64 %1, ptr %2, align 8, !dbg !3866
  %3 = load ptr, ptr %t.addr, align 8, !dbg !3867
  %stime2 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 81, !dbg !3868
  %4 = load i64, ptr %stime2, align 16, !dbg !3868
  %5 = load ptr, ptr %stime.addr, align 8, !dbg !3869
  store i64 %4, ptr %5, align 8, !dbg !3870
  ret i1 false, !dbg !3871
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_cputime_scaled(ptr noundef %t, ptr noundef %utimescaled, ptr noundef %stimescaled) #3 align 16 !dbg !3872 {
entry:
  %t.addr = alloca ptr, align 8
  %utimescaled.addr = alloca ptr, align 8
  %stimescaled.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !3876, metadata !DIExpression()), !dbg !3879
  store ptr %utimescaled, ptr %utimescaled.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %utimescaled.addr, metadata !3877, metadata !DIExpression()), !dbg !3880
  store ptr %stimescaled, ptr %stimescaled.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stimescaled.addr, metadata !3878, metadata !DIExpression()), !dbg !3881
  %0 = load ptr, ptr %t.addr, align 8, !dbg !3882
  %1 = load ptr, ptr %utimescaled.addr, align 8, !dbg !3883
  %2 = load ptr, ptr %stimescaled.addr, align 8, !dbg !3884
  %call = call zeroext i1 @task_cputime(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8, !dbg !3885
  ret void, !dbg !3886
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3887 dso_local ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @xacct_add_tsk(ptr noundef %stats, ptr noundef %p) #0 align 16 !dbg !3891 {
entry:
  %stats.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__base7 = alloca i32, align 4
  %__rem8 = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  store ptr %stats, ptr %stats.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stats.addr, metadata !3895, metadata !DIExpression()), !dbg !3904
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3896, metadata !DIExpression()), !dbg !3905
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #7, !dbg !3906
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !3897, metadata !DIExpression()), !dbg !3907
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3908
  %acct_rss_mem1 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 136, !dbg !3909
  %1 = load i64, ptr %acct_rss_mem1, align 8, !dbg !3909
  %mul = mul i64 %1, 4096, !dbg !3910
  %2 = load ptr, ptr %stats.addr, align 8, !dbg !3911
  %coremem = getelementptr inbounds %struct.taskstats, ptr %2, i32 0, i32 26, !dbg !3912
  store i64 %mul, ptr %coremem, align 8, !dbg !3913
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #7, !dbg !3914
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !3898, metadata !DIExpression()), !dbg !3914
  store i32 1024000, ptr %__base, align 4, !dbg !3914
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #7, !dbg !3914
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !3900, metadata !DIExpression()), !dbg !3914
  %3 = load ptr, ptr %stats.addr, align 8, !dbg !3914
  %coremem1 = getelementptr inbounds %struct.taskstats, ptr %3, i32 0, i32 26, !dbg !3914
  %4 = load i64, ptr %coremem1, align 8, !dbg !3914
  %5 = load i32, ptr %__base, align 4, !dbg !3914
  %conv = zext i32 %5 to i64, !dbg !3914
  %rem = urem i64 %4, %conv, !dbg !3914
  %conv2 = trunc i64 %rem to i32, !dbg !3914
  store i32 %conv2, ptr %__rem, align 4, !dbg !3914
  %6 = load ptr, ptr %stats.addr, align 8, !dbg !3914
  %coremem3 = getelementptr inbounds %struct.taskstats, ptr %6, i32 0, i32 26, !dbg !3914
  %7 = load i64, ptr %coremem3, align 8, !dbg !3914
  %8 = load i32, ptr %__base, align 4, !dbg !3914
  %conv4 = zext i32 %8 to i64, !dbg !3914
  %div = udiv i64 %7, %conv4, !dbg !3914
  %9 = load ptr, ptr %stats.addr, align 8, !dbg !3914
  %coremem5 = getelementptr inbounds %struct.taskstats, ptr %9, i32 0, i32 26, !dbg !3914
  store i64 %div, ptr %coremem5, align 8, !dbg !3914
  %10 = load i32, ptr %__rem, align 4, !dbg !3914
  store i32 %10, ptr %tmp, align 4, !dbg !3914
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #7, !dbg !3915
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #7, !dbg !3915
  %11 = load i32, ptr %tmp, align 4, !dbg !3914
  %12 = load ptr, ptr %p.addr, align 8, !dbg !3916
  %acct_vm_mem1 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 137, !dbg !3917
  %13 = load i64, ptr %acct_vm_mem1, align 32, !dbg !3917
  %mul6 = mul i64 %13, 4096, !dbg !3918
  %14 = load ptr, ptr %stats.addr, align 8, !dbg !3919
  %virtmem = getelementptr inbounds %struct.taskstats, ptr %14, i32 0, i32 27, !dbg !3920
  store i64 %mul6, ptr %virtmem, align 8, !dbg !3921
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base7) #7, !dbg !3922
  call void @llvm.dbg.declare(metadata ptr %__base7, metadata !3901, metadata !DIExpression()), !dbg !3922
  store i32 1024000, ptr %__base7, align 4, !dbg !3922
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem8) #7, !dbg !3922
  call void @llvm.dbg.declare(metadata ptr %__rem8, metadata !3903, metadata !DIExpression()), !dbg !3922
  %15 = load ptr, ptr %stats.addr, align 8, !dbg !3922
  %virtmem9 = getelementptr inbounds %struct.taskstats, ptr %15, i32 0, i32 27, !dbg !3922
  %16 = load i64, ptr %virtmem9, align 8, !dbg !3922
  %17 = load i32, ptr %__base7, align 4, !dbg !3922
  %conv10 = zext i32 %17 to i64, !dbg !3922
  %rem11 = urem i64 %16, %conv10, !dbg !3922
  %conv12 = trunc i64 %rem11 to i32, !dbg !3922
  store i32 %conv12, ptr %__rem8, align 4, !dbg !3922
  %18 = load ptr, ptr %stats.addr, align 8, !dbg !3922
  %virtmem13 = getelementptr inbounds %struct.taskstats, ptr %18, i32 0, i32 27, !dbg !3922
  %19 = load i64, ptr %virtmem13, align 8, !dbg !3922
  %20 = load i32, ptr %__base7, align 4, !dbg !3922
  %conv14 = zext i32 %20 to i64, !dbg !3922
  %div15 = udiv i64 %19, %conv14, !dbg !3922
  %21 = load ptr, ptr %stats.addr, align 8, !dbg !3922
  %virtmem16 = getelementptr inbounds %struct.taskstats, ptr %21, i32 0, i32 27, !dbg !3922
  store i64 %div15, ptr %virtmem16, align 8, !dbg !3922
  %22 = load i32, ptr %__rem8, align 4, !dbg !3922
  store i32 %22, ptr %tmp17, align 4, !dbg !3922
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem8) #7, !dbg !3923
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base7) #7, !dbg !3923
  %23 = load i32, ptr %tmp17, align 4, !dbg !3922
  %24 = load ptr, ptr %p.addr, align 8, !dbg !3924
  %call = call ptr @get_task_mm(ptr noundef %24) #8, !dbg !3925
  store ptr %call, ptr %mm, align 8, !dbg !3926
  %25 = load ptr, ptr %mm, align 8, !dbg !3927
  %tobool = icmp ne ptr %25, null, !dbg !3927
  br i1 %tobool, label %if.then, label %if.end, !dbg !3929

if.then:                                          ; preds = %entry
  %26 = load ptr, ptr %mm, align 8, !dbg !3930
  %call18 = call i64 @get_mm_hiwater_rss(ptr noundef %26) #8, !dbg !3932
  %mul19 = mul i64 %call18, 4096, !dbg !3933
  %div20 = udiv i64 %mul19, 1024, !dbg !3934
  %27 = load ptr, ptr %stats.addr, align 8, !dbg !3935
  %hiwater_rss = getelementptr inbounds %struct.taskstats, ptr %27, i32 0, i32 28, !dbg !3936
  store i64 %div20, ptr %hiwater_rss, align 8, !dbg !3937
  %28 = load ptr, ptr %mm, align 8, !dbg !3938
  %call21 = call i64 @get_mm_hiwater_vm(ptr noundef %28) #8, !dbg !3939
  %mul22 = mul i64 %call21, 4096, !dbg !3940
  %div23 = udiv i64 %mul22, 1024, !dbg !3941
  %29 = load ptr, ptr %stats.addr, align 8, !dbg !3942
  %hiwater_vm = getelementptr inbounds %struct.taskstats, ptr %29, i32 0, i32 29, !dbg !3943
  store i64 %div23, ptr %hiwater_vm, align 8, !dbg !3944
  %30 = load ptr, ptr %mm, align 8, !dbg !3945
  call void @mmput(ptr noundef %30) #8, !dbg !3946
  br label %if.end, !dbg !3947

if.end:                                           ; preds = %if.then, %entry
  %31 = load ptr, ptr %p.addr, align 8, !dbg !3948
  %ioac = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 135, !dbg !3949
  %rchar = getelementptr inbounds %struct.task_io_accounting, ptr %ioac, i32 0, i32 0, !dbg !3950
  %32 = load i64, ptr %rchar, align 32, !dbg !3950
  %and = and i64 %32, -1024, !dbg !3951
  %33 = load ptr, ptr %stats.addr, align 8, !dbg !3952
  %read_char = getelementptr inbounds %struct.taskstats, ptr %33, i32 0, i32 30, !dbg !3953
  store i64 %and, ptr %read_char, align 8, !dbg !3954
  %34 = load ptr, ptr %p.addr, align 8, !dbg !3955
  %ioac24 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 135, !dbg !3956
  %wchar = getelementptr inbounds %struct.task_io_accounting, ptr %ioac24, i32 0, i32 1, !dbg !3957
  %35 = load i64, ptr %wchar, align 8, !dbg !3957
  %and25 = and i64 %35, -1024, !dbg !3958
  %36 = load ptr, ptr %stats.addr, align 8, !dbg !3959
  %write_char = getelementptr inbounds %struct.taskstats, ptr %36, i32 0, i32 31, !dbg !3960
  store i64 %and25, ptr %write_char, align 8, !dbg !3961
  %37 = load ptr, ptr %p.addr, align 8, !dbg !3962
  %ioac26 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 135, !dbg !3963
  %syscr = getelementptr inbounds %struct.task_io_accounting, ptr %ioac26, i32 0, i32 2, !dbg !3964
  %38 = load i64, ptr %syscr, align 16, !dbg !3964
  %and27 = and i64 %38, -1024, !dbg !3965
  %39 = load ptr, ptr %stats.addr, align 8, !dbg !3966
  %read_syscalls = getelementptr inbounds %struct.taskstats, ptr %39, i32 0, i32 32, !dbg !3967
  store i64 %and27, ptr %read_syscalls, align 8, !dbg !3968
  %40 = load ptr, ptr %p.addr, align 8, !dbg !3969
  %ioac28 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 135, !dbg !3970
  %syscw = getelementptr inbounds %struct.task_io_accounting, ptr %ioac28, i32 0, i32 3, !dbg !3971
  %41 = load i64, ptr %syscw, align 8, !dbg !3971
  %and29 = and i64 %41, -1024, !dbg !3972
  %42 = load ptr, ptr %stats.addr, align 8, !dbg !3973
  %write_syscalls = getelementptr inbounds %struct.taskstats, ptr %42, i32 0, i32 33, !dbg !3974
  store i64 %and29, ptr %write_syscalls, align 8, !dbg !3975
  %43 = load ptr, ptr %p.addr, align 8, !dbg !3976
  %ioac30 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 135, !dbg !3977
  %read_bytes = getelementptr inbounds %struct.task_io_accounting, ptr %ioac30, i32 0, i32 4, !dbg !3978
  %44 = load i64, ptr %read_bytes, align 32, !dbg !3978
  %and31 = and i64 %44, -1024, !dbg !3979
  %45 = load ptr, ptr %stats.addr, align 8, !dbg !3980
  %read_bytes32 = getelementptr inbounds %struct.taskstats, ptr %45, i32 0, i32 34, !dbg !3981
  store i64 %and31, ptr %read_bytes32, align 8, !dbg !3982
  %46 = load ptr, ptr %p.addr, align 8, !dbg !3983
  %ioac33 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 135, !dbg !3984
  %write_bytes = getelementptr inbounds %struct.task_io_accounting, ptr %ioac33, i32 0, i32 5, !dbg !3985
  %47 = load i64, ptr %write_bytes, align 8, !dbg !3985
  %and34 = and i64 %47, -1024, !dbg !3986
  %48 = load ptr, ptr %stats.addr, align 8, !dbg !3987
  %write_bytes35 = getelementptr inbounds %struct.taskstats, ptr %48, i32 0, i32 35, !dbg !3988
  store i64 %and34, ptr %write_bytes35, align 8, !dbg !3989
  %49 = load ptr, ptr %p.addr, align 8, !dbg !3990
  %ioac36 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 135, !dbg !3991
  %cancelled_write_bytes = getelementptr inbounds %struct.task_io_accounting, ptr %ioac36, i32 0, i32 6, !dbg !3992
  %50 = load i64, ptr %cancelled_write_bytes, align 16, !dbg !3992
  %and37 = and i64 %50, -1024, !dbg !3993
  %51 = load ptr, ptr %stats.addr, align 8, !dbg !3994
  %cancelled_write_bytes38 = getelementptr inbounds %struct.taskstats, ptr %51, i32 0, i32 36, !dbg !3995
  store i64 %and37, ptr %cancelled_write_bytes38, align 8, !dbg !3996
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #7, !dbg !3997
  ret void, !dbg !3997
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3998 dso_local ptr @get_task_mm(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_mm_hiwater_rss(ptr noundef %mm) #3 align 16 !dbg !4002 {
entry:
  %mm.addr = alloca ptr, align 8
  %__UNIQUE_ID___x274 = alloca i64, align 8
  %__UNIQUE_ID___y275 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4006, metadata !DIExpression()), !dbg !4010
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x274) #7, !dbg !4011
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x274, metadata !4007, metadata !DIExpression()), !dbg !4011
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4011
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !4011
  %hiwater_rss = getelementptr inbounds %struct.anon.14, ptr %1, i32 0, i32 19, !dbg !4011
  %2 = load i64, ptr %hiwater_rss, align 16, !dbg !4011
  store i64 %2, ptr %__UNIQUE_ID___x274, align 8, !dbg !4011
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y275) #7, !dbg !4011
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y275, metadata !4009, metadata !DIExpression()), !dbg !4011
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !4011
  %call = call i64 @get_mm_rss(ptr noundef %3) #8, !dbg !4011
  store i64 %call, ptr %__UNIQUE_ID___y275, align 8, !dbg !4011
  %4 = load i64, ptr %__UNIQUE_ID___x274, align 8, !dbg !4011
  %5 = load i64, ptr %__UNIQUE_ID___y275, align 8, !dbg !4011
  %cmp = icmp ugt i64 %4, %5, !dbg !4011
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4011

cond.true:                                        ; preds = %entry
  %6 = load i64, ptr %__UNIQUE_ID___x274, align 8, !dbg !4011
  br label %cond.end, !dbg !4011

cond.false:                                       ; preds = %entry
  %7 = load i64, ptr %__UNIQUE_ID___y275, align 8, !dbg !4011
  br label %cond.end, !dbg !4011

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !4011
  store i64 %cond, ptr %tmp, align 8, !dbg !4011
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y275) #7, !dbg !4012
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x274) #7, !dbg !4012
  %8 = load i64, ptr %tmp, align 8, !dbg !4011
  ret i64 %8, !dbg !4013
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_mm_hiwater_vm(ptr noundef %mm) #3 align 16 !dbg !4014 {
entry:
  %mm.addr = alloca ptr, align 8
  %__UNIQUE_ID___x276 = alloca i64, align 8
  %__UNIQUE_ID___y277 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4016, metadata !DIExpression()), !dbg !4020
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x276) #7, !dbg !4021
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x276, metadata !4017, metadata !DIExpression()), !dbg !4021
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4021
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !4021
  %hiwater_vm = getelementptr inbounds %struct.anon.14, ptr %1, i32 0, i32 20, !dbg !4021
  %2 = load i64, ptr %hiwater_vm, align 8, !dbg !4021
  store i64 %2, ptr %__UNIQUE_ID___x276, align 8, !dbg !4021
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y277) #7, !dbg !4021
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y277, metadata !4019, metadata !DIExpression()), !dbg !4021
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !4021
  %4 = getelementptr inbounds %struct.mm_struct, ptr %3, i32 0, i32 0, !dbg !4021
  %total_vm = getelementptr inbounds %struct.anon.14, ptr %4, i32 0, i32 21, !dbg !4021
  %5 = load i64, ptr %total_vm, align 64, !dbg !4021
  store i64 %5, ptr %__UNIQUE_ID___y277, align 8, !dbg !4021
  %6 = load i64, ptr %__UNIQUE_ID___x276, align 8, !dbg !4021
  %7 = load i64, ptr %__UNIQUE_ID___y277, align 8, !dbg !4021
  %cmp = icmp ugt i64 %6, %7, !dbg !4021
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4021

cond.true:                                        ; preds = %entry
  %8 = load i64, ptr %__UNIQUE_ID___x276, align 8, !dbg !4021
  br label %cond.end, !dbg !4021

cond.false:                                       ; preds = %entry
  %9 = load i64, ptr %__UNIQUE_ID___y277, align 8, !dbg !4021
  br label %cond.end, !dbg !4021

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %9, %cond.false ], !dbg !4021
  store i64 %cond, ptr %tmp, align 8, !dbg !4021
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y277) #7, !dbg !4022
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x276) #7, !dbg !4022
  %10 = load i64, ptr %tmp, align 8, !dbg !4021
  ret i64 %10, !dbg !4023
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4024 dso_local void @mmput(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acct_update_integrals(ptr noundef %tsk) #0 align 16 !dbg !4027 {
entry:
  %tsk.addr = alloca ptr, align 8
  %utime = alloca i64, align 8
  %stime = alloca i64, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !4031, metadata !DIExpression()), !dbg !4045
  call void @llvm.lifetime.start.p0(i64 8, ptr %utime) #7, !dbg !4046
  call void @llvm.dbg.declare(metadata ptr %utime, metadata !4032, metadata !DIExpression()), !dbg !4047
  call void @llvm.lifetime.start.p0(i64 8, ptr %stime) #7, !dbg !4046
  call void @llvm.dbg.declare(metadata ptr %stime, metadata !4033, metadata !DIExpression()), !dbg !4048
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #7, !dbg !4049
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4034, metadata !DIExpression()), !dbg !4050
  br label %do.body, !dbg !4051

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4052

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #7, !dbg !4053
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4035, metadata !DIExpression()), !dbg !4053
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #7, !dbg !4053
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4039, metadata !DIExpression()), !dbg !4053
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4053
  %conv = zext i1 %cmp to i32, !dbg !4053
  store i32 1, ptr %tmp, align 4, !dbg !4053
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #7, !dbg !4054
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #7, !dbg !4054
  %0 = load i32, ptr %tmp, align 4, !dbg !4053
  %call = call i64 @arch_local_irq_save() #8, !dbg !4054
  store i64 %call, ptr %flags, align 8, !dbg !4054
  br label %do.cond, !dbg !4054

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4054

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !4052

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !4052

do.end3:                                          ; preds = %do.cond2
  %1 = load ptr, ptr %tsk.addr, align 8, !dbg !4055
  %call4 = call zeroext i1 @task_cputime(ptr noundef %1, ptr noundef %utime, ptr noundef %stime) #8, !dbg !4056
  %2 = load ptr, ptr %tsk.addr, align 8, !dbg !4057
  %3 = load i64, ptr %utime, align 8, !dbg !4058
  %4 = load i64, ptr %stime, align 8, !dbg !4059
  call void @__acct_update_integrals(ptr noundef %2, i64 noundef %3, i64 noundef %4) #8, !dbg !4060
  br label %do.body5, !dbg !4061

do.body5:                                         ; preds = %do.end3
  br label %do.body6, !dbg !4062

do.body6:                                         ; preds = %do.body5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy7) #7, !dbg !4063
  call void @llvm.dbg.declare(metadata ptr %__dummy7, metadata !4040, metadata !DIExpression()), !dbg !4063
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy28) #7, !dbg !4063
  call void @llvm.dbg.declare(metadata ptr %__dummy28, metadata !4044, metadata !DIExpression()), !dbg !4063
  %cmp9 = icmp eq ptr %__dummy7, %__dummy28, !dbg !4063
  %conv10 = zext i1 %cmp9 to i32, !dbg !4063
  store i32 1, ptr %tmp11, align 4, !dbg !4063
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy28) #7, !dbg !4064
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy7) #7, !dbg !4064
  %5 = load i32, ptr %tmp11, align 4, !dbg !4063
  br label %do.body12, !dbg !4064

do.body12:                                        ; preds = %do.body6
  br label %do.cond13, !dbg !4065

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4065

do.end14:                                         ; preds = %do.cond13
  %6 = load i64, ptr %flags, align 8, !dbg !4064
  call void @arch_local_irq_restore(i64 noundef %6) #8, !dbg !4064
  br label %do.cond15, !dbg !4064

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !4064

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !4062

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !4062

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #7, !dbg !4067
  call void @llvm.lifetime.end.p0(i64 8, ptr %stime) #7, !dbg !4067
  call void @llvm.lifetime.end.p0(i64 8, ptr %utime) #7, !dbg !4067
  ret void, !dbg !4067
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #5 align 16 !dbg !4068 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #7, !dbg !4074
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4073, metadata !DIExpression()), !dbg !4075
  %call = call i64 @arch_local_save_flags() #8, !dbg !4076
  store i64 %call, ptr %flags, align 8, !dbg !4075
  call void @arch_local_irq_disable() #8, !dbg !4077
  %0 = load i64, ptr %flags, align 8, !dbg !4078
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #7, !dbg !4079
  ret i64 %0, !dbg !4080
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__acct_update_integrals(ptr noundef %tsk, i64 noundef %utime, i64 noundef %stime) #0 align 16 !dbg !4081 {
entry:
  %tsk.addr = alloca ptr, align 8
  %utime.addr = alloca i64, align 8
  %stime.addr = alloca i64, align 8
  %time = alloca i64, align 8
  %delta = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !4085, metadata !DIExpression()), !dbg !4090
  store i64 %utime, ptr %utime.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %utime.addr, metadata !4086, metadata !DIExpression()), !dbg !4091
  store i64 %stime, ptr %stime.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stime.addr, metadata !4087, metadata !DIExpression()), !dbg !4092
  call void @llvm.lifetime.start.p0(i64 8, ptr %time) #7, !dbg !4093
  call void @llvm.dbg.declare(metadata ptr %time, metadata !4088, metadata !DIExpression()), !dbg !4094
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #7, !dbg !4093
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !4089, metadata !DIExpression()), !dbg !4095
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !4096
  %mm = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 49, !dbg !4096
  %1 = load ptr, ptr %mm, align 64, !dbg !4096
  %tobool = icmp ne ptr %1, null, !dbg !4096
  %lnot = xor i1 %tobool, true, !dbg !4096
  %lnot1 = xor i1 %lnot, true, !dbg !4096
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4096
  %conv = sext i32 %lnot.ext to i64, !dbg !4096
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4096
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4096
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4098

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4099

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %stime.addr, align 8, !dbg !4100
  %3 = load i64, ptr %utime.addr, align 8, !dbg !4101
  %add = add i64 %2, %3, !dbg !4102
  store i64 %add, ptr %time, align 8, !dbg !4103
  %4 = load i64, ptr %time, align 8, !dbg !4104
  %5 = load ptr, ptr %tsk.addr, align 8, !dbg !4105
  %acct_timexpd = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 138, !dbg !4106
  %6 = load i64, ptr %acct_timexpd, align 8, !dbg !4106
  %sub = sub i64 %4, %6, !dbg !4107
  store i64 %sub, ptr %delta, align 8, !dbg !4108
  %7 = load i64, ptr %delta, align 8, !dbg !4109
  %cmp = icmp ult i64 %7, 1000000, !dbg !4111
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !4112

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4113

if.end5:                                          ; preds = %if.end
  %8 = load i64, ptr %time, align 8, !dbg !4114
  %9 = load ptr, ptr %tsk.addr, align 8, !dbg !4115
  %acct_timexpd6 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 138, !dbg !4116
  store i64 %8, ptr %acct_timexpd6, align 8, !dbg !4117
  %10 = load i64, ptr %delta, align 8, !dbg !4118
  %11 = load ptr, ptr %tsk.addr, align 8, !dbg !4119
  %mm7 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 49, !dbg !4120
  %12 = load ptr, ptr %mm7, align 64, !dbg !4120
  %call = call i64 @get_mm_rss(ptr noundef %12) #8, !dbg !4121
  %mul = mul i64 %10, %call, !dbg !4122
  %shr = lshr i64 %mul, 10, !dbg !4123
  %13 = load ptr, ptr %tsk.addr, align 8, !dbg !4124
  %acct_rss_mem1 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 136, !dbg !4125
  %14 = load i64, ptr %acct_rss_mem1, align 8, !dbg !4126
  %add8 = add i64 %14, %shr, !dbg !4126
  store i64 %add8, ptr %acct_rss_mem1, align 8, !dbg !4126
  %15 = load i64, ptr %delta, align 8, !dbg !4127
  br label %do.body, !dbg !4128

do.body:                                          ; preds = %if.end5
  br label %do.cond, !dbg !4130

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4130

do.end:                                           ; preds = %do.cond
  %16 = load ptr, ptr %tsk.addr, align 8, !dbg !4128
  %mm9 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 49, !dbg !4128
  %17 = load ptr, ptr %mm9, align 64, !dbg !4128
  %18 = getelementptr inbounds %struct.mm_struct, ptr %17, i32 0, i32 0, !dbg !4128
  %total_vm = getelementptr inbounds %struct.anon.14, ptr %18, i32 0, i32 21, !dbg !4128
  %19 = load volatile i64, ptr %total_vm, align 64, !dbg !4128
  store i64 %19, ptr %tmp, align 8, !dbg !4130
  %20 = load i64, ptr %tmp, align 8, !dbg !4128
  %mul10 = mul i64 %15, %20, !dbg !4132
  %shr11 = lshr i64 %mul10, 10, !dbg !4133
  %21 = load ptr, ptr %tsk.addr, align 8, !dbg !4134
  %acct_vm_mem1 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 137, !dbg !4135
  %22 = load i64, ptr %acct_vm_mem1, align 32, !dbg !4136
  %add12 = add i64 %22, %shr11, !dbg !4136
  store i64 %add12, ptr %acct_vm_mem1, align 32, !dbg !4136
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4137
  br label %cleanup, !dbg !4137

cleanup:                                          ; preds = %do.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #7, !dbg !4137
  call void @llvm.lifetime.end.p0(i64 8, ptr %time) #7, !dbg !4137
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4137

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #5 align 16 !dbg !4138 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4142, metadata !DIExpression()), !dbg !4143
  %0 = load i64, ptr %flags.addr, align 8, !dbg !4144
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #8, !dbg !4146
  %tobool = icmp ne i32 %call, 0, !dbg !4146
  br i1 %tobool, label %if.end, label %if.then, !dbg !4147

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #8, !dbg !4148
  br label %if.end, !dbg !4148

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4149
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acct_account_cputime(ptr noundef %tsk) #0 align 16 !dbg !4150 {
entry:
  %tsk.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !4152, metadata !DIExpression()), !dbg !4153
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !4154
  %1 = load ptr, ptr %tsk.addr, align 8, !dbg !4155
  %utime = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 80, !dbg !4156
  %2 = load i64, ptr %utime, align 8, !dbg !4156
  %3 = load ptr, ptr %tsk.addr, align 8, !dbg !4157
  %stime = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 81, !dbg !4158
  %4 = load i64, ptr %stime, align 16, !dbg !4158
  call void @__acct_update_integrals(ptr noundef %0, i64 noundef %2, i64 noundef %4) #8, !dbg !4159
  ret void, !dbg !4160
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acct_clear_integrals(ptr noundef %tsk) #0 align 16 !dbg !4161 {
entry:
  %tsk.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !4163, metadata !DIExpression()), !dbg !4164
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !4165
  %acct_timexpd = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 138, !dbg !4166
  store i64 0, ptr %acct_timexpd, align 8, !dbg !4167
  %1 = load ptr, ptr %tsk.addr, align 8, !dbg !4168
  %acct_rss_mem1 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 136, !dbg !4169
  store i64 0, ptr %acct_rss_mem1, align 8, !dbg !4170
  %2 = load ptr, ptr %tsk.addr, align 8, !dbg !4171
  %acct_vm_mem1 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 137, !dbg !4172
  store i64 0, ptr %acct_vm_mem1, align 32, !dbg !4173
  ret void, !dbg !4174
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_to_ns(i64 noundef %kt) #3 align 16 !dbg !4175 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !4180, metadata !DIExpression()), !dbg !4181
  %0 = load i64, ptr %kt.addr, align 8, !dbg !4182
  ret i64 %0, !dbg !4183
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4184 dso_local i64 @ktime_get() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #3 align 16 !dbg !4185 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !4189, metadata !DIExpression()), !dbg !4192
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !4190, metadata !DIExpression()), !dbg !4193
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !4191, metadata !DIExpression()), !dbg !4194
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !4195
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !4196
  %conv = zext i32 %1 to i64, !dbg !4196
  %rem = urem i64 %0, %conv, !dbg !4197
  %conv1 = trunc i64 %rem to i32, !dbg !4195
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !4198
  store i32 %conv1, ptr %2, align 4, !dbg !4199
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !4200
  %4 = load i32, ptr %divisor.addr, align 4, !dbg !4201
  %conv2 = zext i32 %4 to i64, !dbg !4201
  %div = udiv i64 %3, %conv2, !dbg !4202
  ret i64 %div, !dbg !4203
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4204 dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4207 dso_local void @__rcu_read_lock() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid(ptr noundef %to, i32 %kuid.coerce) #3 align 16 !dbg !4208 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4210, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !4211, metadata !DIExpression()), !dbg !4213
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !4214
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !4214
  %call = call i32 @__kuid_val(i32 %0) #8, !dbg !4214
  ret i32 %call, !dbg !4215
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #3 align 16 !dbg !4216 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4220, metadata !DIExpression()), !dbg !4221
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4222
  %0 = load i32, ptr %val, align 4, !dbg !4222
  ret i32 %0, !dbg !4223
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid(ptr noundef %to, i32 %kgid.coerce) #3 align 16 !dbg !4224 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4226, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !4227, metadata !DIExpression()), !dbg !4229
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !4230
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !4230
  %call = call i32 @__kgid_val(i32 %0) #8, !dbg !4230
  ret i32 %call, !dbg !4231
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #3 align 16 !dbg !4232 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !4236, metadata !DIExpression()), !dbg !4237
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !4238
  %0 = load i32, ptr %val, align 4, !dbg !4238
  ret i32 %0, !dbg !4239
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4240 dso_local void @__rcu_read_unlock() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_mm_rss(ptr noundef %mm) #3 align 16 !dbg !4241 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4243, metadata !DIExpression()), !dbg !4244
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4245
  %call = call i64 @get_mm_counter(ptr noundef %0, i32 noundef 0) #8, !dbg !4246
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !4247
  %call1 = call i64 @get_mm_counter(ptr noundef %1, i32 noundef 1) #8, !dbg !4248
  %add = add i64 %call, %call1, !dbg !4249
  %2 = load ptr, ptr %mm.addr, align 8, !dbg !4250
  %call2 = call i64 @get_mm_counter(ptr noundef %2, i32 noundef 3) #8, !dbg !4251
  %add3 = add i64 %add, %call2, !dbg !4252
  ret i64 %add3, !dbg !4253
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_mm_counter(ptr noundef %mm, i32 noundef %member) #3 align 16 !dbg !4254 {
entry:
  %mm.addr = alloca ptr, align 8
  %member.addr = alloca i32, align 4
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4258, metadata !DIExpression()), !dbg !4260
  store i32 %member, ptr %member.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %member.addr, metadata !4259, metadata !DIExpression()), !dbg !4261
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4262
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !4263
  %rss_stat = getelementptr inbounds %struct.anon.14, ptr %1, i32 0, i32 42, !dbg !4263
  %2 = load i32, ptr %member.addr, align 4, !dbg !4264
  %idxprom = sext i32 %2 to i64, !dbg !4262
  %arrayidx = getelementptr [4 x %struct.percpu_counter], ptr %rss_stat, i64 0, i64 %idxprom, !dbg !4262
  %call = call i64 @percpu_counter_read_positive(ptr noundef %arrayidx) #8, !dbg !4265
  ret i64 %call, !dbg !4266
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @percpu_counter_read_positive(ptr noundef %fbc) #3 align 16 !dbg !4267 {
entry:
  %retval = alloca i64, align 8
  %fbc.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !4272, metadata !DIExpression()), !dbg !4274
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #7, !dbg !4275
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4273, metadata !DIExpression()), !dbg !4276
  br label %do.body, !dbg !4277

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4279

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4279

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %fbc.addr, align 8, !dbg !4277
  %count = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 1, !dbg !4277
  %1 = load volatile i64, ptr %count, align 8, !dbg !4277
  store i64 %1, ptr %tmp, align 8, !dbg !4279
  %2 = load i64, ptr %tmp, align 8, !dbg !4277
  store i64 %2, ptr %ret, align 8, !dbg !4276
  %3 = load i64, ptr %ret, align 8, !dbg !4281
  %cmp = icmp sge i64 %3, 0, !dbg !4283
  br i1 %cmp, label %if.then, label %if.end, !dbg !4284

if.then:                                          ; preds = %do.end
  %4 = load i64, ptr %ret, align 8, !dbg !4285
  store i64 %4, ptr %retval, align 8, !dbg !4286
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4286

if.end:                                           ; preds = %do.end
  store i64 0, ptr %retval, align 8, !dbg !4287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4287

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #7, !dbg !4288
  %5 = load i64, ptr %retval, align 8, !dbg !4288
  ret i64 %5, !dbg !4288
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #5 align 16 !dbg !4289 {
entry:
  %call = call i64 @native_save_fl() #8, !dbg !4290
  ret i64 %call, !dbg !4291
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #5 align 16 !dbg !4292 {
entry:
  call void @native_irq_disable() #8, !dbg !4293
  ret void, !dbg !4294
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #5 align 16 !dbg !4295 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #7, !dbg !4298
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4297, metadata !DIExpression()), !dbg !4299
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #7, !dbg !4300, !srcloc !4301
  %0 = load i64, ptr %flags, align 8, !dbg !4302
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #7, !dbg !4303
  ret i64 %0, !dbg !4304
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #5 align 16 !dbg !4305 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4306, !srcloc !4307
  ret void, !dbg !4308
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #5 align 16 !dbg !4309 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4313, metadata !DIExpression()), !dbg !4314
  %0 = load i64, ptr %flags.addr, align 8, !dbg !4315
  %and = and i64 %0, 512, !dbg !4316
  %tobool = icmp ne i64 %and, 0, !dbg !4317
  %lnot = xor i1 %tobool, true, !dbg !4317
  %lnot.ext = zext i1 %lnot to i32, !dbg !4317
  ret i32 %lnot.ext, !dbg !4318
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #5 align 16 !dbg !4319 {
entry:
  call void @native_irq_enable() #8, !dbg !4320
  ret void, !dbg !4321
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #5 align 16 !dbg !4322 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4323, !srcloc !4324
  ret void, !dbg !4325
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470}
!llvm.ident = !{!3471}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.tsacct.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/tsacct\22 -D KBUILD_BASENAME=\22tsacct\22 -D KBUILD_MODNAME=\22tsacct\22 -D __KBUILD_MODNAME=kmod_tsacct -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/tsacct.ll kernel/tsacct.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !85, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "kernel/tsacct.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd77a159d2efc892d057337c8587db27")
!2 = !{!3, !9, !17, !22, !28, !36, !52, !59, !65, !72, !77}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !4, line: 65, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!8 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !10, line: 9, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!11 = !{!12, !13, !14, !15, !16}
!12 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!13 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!14 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!15 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!16 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !18, line: 2052, baseType: !5, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!21 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !23, line: 54, baseType: !5, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "USRQUOTA", value: 0)
!26 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!27 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !29, line: 68, baseType: !5, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!30 = !{!31, !32, !33, !34, !35}
!31 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!35 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !37, line: 1325, baseType: !5, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!39 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!40 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!41 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!42 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!43 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!44 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!45 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!46 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!47 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!48 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!49 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!50 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!51 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !53, line: 15, baseType: !5, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!54 = !{!55, !56, !57, !58}
!55 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!56 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!57 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!58 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !60, line: 16, baseType: !5, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!61 = !{!62, !63, !64}
!62 = !DIEnumerator(name: "TT_NONE", value: 0)
!63 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!64 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !66, line: 51, baseType: !5, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!67 = !{!68, !69, !70, !71}
!68 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!69 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!70 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!71 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 10, baseType: !5, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!74 = !{!75, !76}
!75 = !DIEnumerator(name: "false", value: 0)
!76 = !DIEnumerator(name: "true", value: 1)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 31, baseType: !5, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!79 = !{!80, !81, !82, !83, !84}
!80 = !DIEnumerator(name: "MM_FILEPAGES", value: 0)
!81 = !DIEnumerator(name: "MM_ANONPAGES", value: 1)
!82 = !DIEnumerator(name: "MM_SWAPENTS", value: 2)
!83 = !DIEnumerator(name: "MM_SHMEMPAGES", value: 3)
!84 = !DIEnumerator(name: "NR_MM_COUNTERS", value: 4)
!85 = !{!86, !93, !97, !99, !401, !404, !3454, !118, !126, !231, !3457, !3460}
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !87, line: 113, baseType: !88)
!87 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !89, line: 23, baseType: !90)
!89 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !91, line: 31, baseType: !92)
!91 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!92 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !94, line: 8, baseType: !95)
!94 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !91, line: 30, baseType: !96)
!96 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !89, line: 21, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !91, line: 27, baseType: !5)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !102, line: 110, size: 1472, elements: !103)
!102 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!103 = !{!104, !112, !121, !128, !129, !130, !131, !132, !133, !134, !135, !141, !142, !143, !144, !145, !147, !338, !339, !340, !341, !342, !379, !382, !386, !396}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !101, file: !102, line: 111, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !106, line: 13, baseType: !107)
!106 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !87, line: 181, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !87, line: 179, size: 64, elements: !109)
!109 = !{!110}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !108, file: !87, line: 180, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !89, line: 22, baseType: !95)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !101, file: !102, line: 112, baseType: !113, size: 32, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !114, line: 23, baseType: !115)
!114 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 21, size: 32, elements: !116)
!116 = !{!117}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !115, file: !114, line: 22, baseType: !118, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !87, line: 37, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !120, line: 49, baseType: !5)
!120 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!121 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !101, file: !102, line: 113, baseType: !122, size: 32, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !114, line: 28, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 26, size: 32, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !123, file: !114, line: 27, baseType: !126, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !87, line: 38, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !120, line: 50, baseType: !5)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !101, file: !102, line: 114, baseType: !113, size: 32, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !101, file: !102, line: 115, baseType: !122, size: 32, offset: 160)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !101, file: !102, line: 116, baseType: !113, size: 32, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !101, file: !102, line: 117, baseType: !122, size: 32, offset: 224)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !101, file: !102, line: 118, baseType: !113, size: 32, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !101, file: !102, line: 119, baseType: !122, size: 32, offset: 288)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !101, file: !102, line: 120, baseType: !5, size: 32, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !101, file: !102, line: 121, baseType: !136, size: 64, offset: 384)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !137, line: 24, baseType: !138)
!137 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !137, line: 24, size: 64, elements: !139)
!139 = !{!140}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !138, file: !137, line: 24, baseType: !88, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !101, file: !102, line: 122, baseType: !136, size: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !101, file: !102, line: 123, baseType: !136, size: 64, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !101, file: !102, line: 124, baseType: !136, size: 64, offset: 576)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !101, file: !102, line: 125, baseType: !136, size: 64, offset: 640)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !101, file: !102, line: 127, baseType: !146, size: 8, offset: 704)
!146 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !101, file: !102, line: 129, baseType: !148, size: 64, offset: 768)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !150, line: 195, size: 1728, elements: !151)
!150 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!151 = !{!152, !163, !168, !186, !227, !230, !232, !237, !238, !239, !240, !243, !244, !245, !247, !248, !300, !323}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !149, file: !150, line: 196, baseType: !153, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !154, line: 113, baseType: !155)
!154 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !154, line: 111, size: 32, elements: !156)
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !155, file: !154, line: 112, baseType: !158, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !87, line: 174, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !87, line: 172, size: 32, elements: !160)
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !159, file: !87, line: 173, baseType: !162, size: 32)
!162 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !149, file: !150, line: 197, baseType: !164, size: 32, offset: 32)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !150, line: 28, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !87, line: 104, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !89, line: 20, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !91, line: 26, baseType: !162)
!168 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !150, line: 198, baseType: !169, size: 192, offset: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !150, line: 198, size: 192, elements: !170)
!170 = !{!171, !177}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !169, file: !150, line: 199, baseType: !172, size: 128)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !87, line: 190, size: 128, elements: !173)
!173 = !{!174, !176}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !87, line: 191, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !172, file: !87, line: 191, baseType: !175, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !169, file: !150, line: 200, baseType: !178, size: 192, align: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !179, line: 5, size: 192, align: 64, elements: !180)
!179 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!180 = !{!181, !183, !185}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !178, file: !179, line: 6, baseType: !182, size: 64)
!182 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !178, file: !179, line: 7, baseType: !184, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !178, file: !179, line: 8, baseType: !184, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !149, file: !150, line: 205, baseType: !187, size: 320, offset: 256)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !188, line: 48, size: 320, elements: !189)
!188 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!189 = !{!190, !191, !192, !197, !226}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !187, file: !188, line: 49, baseType: !105, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !187, file: !188, line: 55, baseType: !105, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !187, file: !188, line: 57, baseType: !193, size: 32, offset: 128)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !194, line: 15, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !193, file: !194, line: 20, baseType: !158, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !187, file: !188, line: 59, baseType: !198, size: 32, offset: 160)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !199, line: 23, baseType: !200)
!199 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !199, line: 14, size: 32, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !200, file: !199, line: 15, baseType: !203, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !204, line: 44, baseType: !205)
!204 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !204, line: 14, size: 32, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, scope: !205, file: !204, line: 15, baseType: !208, size: 32)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !205, file: !204, line: 15, size: 32, elements: !209)
!209 = !{!210, !211, !218}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !208, file: !204, line: 16, baseType: !158, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !204, line: 24, baseType: !212, size: 16)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !208, file: !204, line: 24, size: 16, elements: !213)
!213 = !{!214, !217}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !212, file: !204, line: 25, baseType: !215, size: 8)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !89, line: 17, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !91, line: 21, baseType: !146)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !212, file: !204, line: 26, baseType: !215, size: 8, offset: 8)
!218 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !204, line: 28, baseType: !219, size: 32)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !208, file: !204, line: 28, size: 32, elements: !220)
!220 = !{!221, !225}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !219, file: !204, line: 29, baseType: !222, size: 16)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !89, line: 19, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !91, line: 24, baseType: !224)
!224 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !219, file: !204, line: 30, baseType: !222, size: 16, offset: 16)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !187, file: !188, line: 60, baseType: !172, size: 128, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !149, file: !150, line: 206, baseType: !228, size: 64, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !150, line: 206, flags: DIFlagFwdDecl)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !149, file: !150, line: 207, baseType: !231, size: 64, offset: 640)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !150, line: 208, baseType: !233, size: 64, offset: 704)
!233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !150, line: 208, size: 64, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !233, file: !150, line: 209, baseType: !93, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !233, file: !150, line: 210, baseType: !93, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !149, file: !150, line: 212, baseType: !93, size: 64, offset: 768)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !149, file: !150, line: 213, baseType: !113, size: 32, offset: 832)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !149, file: !150, line: 214, baseType: !122, size: 32, offset: 864)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !149, file: !150, line: 215, baseType: !241, size: 32, offset: 896)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !150, line: 31, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !87, line: 110, baseType: !97)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !149, file: !150, line: 216, baseType: !224, size: 16, offset: 928)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !149, file: !150, line: 217, baseType: !224, size: 16, offset: 944)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !149, file: !150, line: 221, baseType: !246, size: 16, offset: 960)
!246 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !149, file: !150, line: 228, baseType: !182, size: 64, offset: 1024)
!248 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !150, line: 245, baseType: !249, size: 320, offset: 1088)
!249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !150, line: 245, size: 320, elements: !250)
!250 = !{!251, !291}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !249, file: !150, line: 246, baseType: !252, size: 320)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !150, line: 114, size: 320, elements: !253)
!253 = !{!254, !255, !268, !271, !288}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !252, file: !150, line: 116, baseType: !182, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !150, line: 117, baseType: !256, size: 64, offset: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !150, line: 117, size: 64, elements: !257)
!257 = !{!258, !267}
!258 = !DIDerivedType(tag: DW_TAG_member, scope: !256, file: !150, line: 118, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !256, file: !150, line: 118, size: 64, elements: !260)
!260 = !{!261, !262}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !259, file: !150, line: 120, baseType: !222, size: 16)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !259, file: !150, line: 121, baseType: !263, size: 48, offset: 16)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 48, elements: !265)
!264 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!265 = !{!266}
!266 = !DISubrange(count: 6)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !256, file: !150, line: 127, baseType: !182, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !252, file: !150, line: 129, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !150, line: 102, flags: DIFlagFwdDecl)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !252, file: !150, line: 130, baseType: !272, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !150, line: 108, size: 192, elements: !274)
!274 = !{!275, !284, !285}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !273, file: !150, line: 109, baseType: !276, size: 128, align: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !87, line: 232, size: 128, align: 64, elements: !277)
!277 = !{!278, !280}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !276, file: !87, line: 233, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !276, file: !87, line: 234, baseType: !281, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !279}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !273, file: !150, line: 110, baseType: !153, size: 32, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !273, file: !150, line: 111, baseType: !286, size: 8, offset: 160)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !87, line: 35, baseType: !287)
!287 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !252, file: !150, line: 131, baseType: !289, size: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!291 = !DIDerivedType(tag: DW_TAG_member, scope: !249, file: !150, line: 247, baseType: !292, size: 320)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !249, file: !150, line: 247, size: 320, elements: !293)
!293 = !{!294, !295, !296, !297, !298}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !292, file: !150, line: 248, baseType: !182, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !292, file: !150, line: 249, baseType: !182, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !292, file: !150, line: 250, baseType: !269, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !292, file: !150, line: 251, baseType: !272, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !292, file: !150, line: 252, baseType: !299, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !150, line: 260, baseType: !301, size: 256, offset: 1408)
!301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !150, line: 260, size: 256, elements: !302)
!302 = !{!303, !311}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !301, file: !150, line: 261, baseType: !304, size: 256)
!304 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !150, line: 134, size: 256, elements: !305)
!305 = !{!306, !307}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !304, file: !150, line: 135, baseType: !231, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !304, file: !150, line: 136, baseType: !308, size: 256)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 256, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 4)
!311 = !DIDerivedType(tag: DW_TAG_member, scope: !301, file: !150, line: 262, baseType: !312, size: 256)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !301, file: !150, line: 262, size: 256, elements: !313)
!313 = !{!314, !315}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !312, file: !150, line: 264, baseType: !172, size: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !312, file: !150, line: 265, baseType: !316, size: 128, offset: 128)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !317, line: 22, size: 128, elements: !318)
!317 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!318 = !{!319, !322}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !316, file: !317, line: 23, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !317, line: 23, flags: DIFlagFwdDecl)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !316, file: !317, line: 24, baseType: !182, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !149, file: !150, line: 280, baseType: !324, size: 64, offset: 1664)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !150, line: 176, size: 192, elements: !326)
!326 = !{!327, !336, !337}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !325, file: !150, line: 177, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !150, line: 171, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!162, !148, !332, !334, !148}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !325, file: !150, line: 178, baseType: !148, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !325, file: !150, line: 179, baseType: !269, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !101, file: !102, line: 130, baseType: !148, size: 64, offset: 832)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !101, file: !102, line: 131, baseType: !148, size: 64, offset: 896)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !101, file: !102, line: 132, baseType: !148, size: 64, offset: 960)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !101, file: !102, line: 135, baseType: !231, size: 64, offset: 1024)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !101, file: !102, line: 137, baseType: !343, size: 64, offset: 1088)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !345, line: 14, size: 1088, elements: !346)
!345 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!346 = !{!347, !348, !357, !358, !359, !366, !367, !368}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !344, file: !345, line: 15, baseType: !153, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !344, file: !345, line: 17, baseType: !349, size: 320, offset: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !350, line: 22, size: 320, elements: !351)
!350 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!351 = !{!352, !353, !354, !355}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !349, file: !350, line: 23, baseType: !198, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !349, file: !350, line: 24, baseType: !111, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !349, file: !350, line: 26, baseType: !172, size: 128, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !349, file: !350, line: 28, baseType: !356, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !344, file: !345, line: 19, baseType: !182, size: 64, offset: 384)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !344, file: !345, line: 20, baseType: !105, size: 64, offset: 448)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !344, file: !345, line: 23, baseType: !360, size: 128, offset: 512)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !87, line: 198, size: 128, elements: !361)
!361 = !{!362, !364}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !87, line: 199, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !360, file: !87, line: 199, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !344, file: !345, line: 24, baseType: !113, size: 32, offset: 640)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !344, file: !345, line: 29, baseType: !105, size: 64, offset: 704)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !344, file: !345, line: 36, baseType: !369, size: 320, offset: 768)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !370, line: 15, size: 320, elements: !371)
!370 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!371 = !{!372, !373, !374, !375, !376, !377, !378}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !369, file: !370, line: 16, baseType: !198, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !369, file: !370, line: 18, baseType: !162, size: 32, offset: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !369, file: !370, line: 19, baseType: !162, size: 32, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !369, file: !370, line: 20, baseType: !162, size: 32, offset: 96)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !369, file: !370, line: 21, baseType: !162, size: 32, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !369, file: !370, line: 22, baseType: !182, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !369, file: !370, line: 23, baseType: !182, size: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !101, file: !102, line: 138, baseType: !380, size: 64, offset: 1152)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !114, line: 18, flags: DIFlagFwdDecl)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !101, file: !102, line: 139, baseType: !383, size: 64, offset: 1216)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !385, line: 16, flags: DIFlagFwdDecl)
!385 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!386 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !101, file: !102, line: 140, baseType: !387, size: 64, offset: 1280)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !102, line: 25, size: 64, elements: !389)
!389 = !{!390, !391, !392}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !388, file: !102, line: 26, baseType: !158, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !388, file: !102, line: 27, baseType: !162, size: 32, offset: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !388, file: !102, line: 28, baseType: !393, offset: 64)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: -1)
!396 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !102, line: 142, baseType: !397, size: 128, offset: 1344)
!397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !102, line: 142, size: 128, elements: !398)
!398 = !{!399, !400}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !397, file: !102, line: 143, baseType: !162, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !397, file: !102, line: 144, baseType: !276, size: 128, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !99)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !406, line: 746, size: 58368, elements: !407)
!406 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!407 = !{!408, !416, !417, !418, !419, !420, !421, !422, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !493, !504, !604, !608, !611, !642, !643, !644, !645, !656, !658, !659, !660, !661, !662, !663, !674, !675, !678, !679, !680, !681, !682, !683, !684, !685, !692, !693, !700, !701, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2567, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2582, !2583, !2584, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2616, !2622, !2623, !2624, !2625, !2626, !2628, !2631, !2638, !2643, !2646, !2649, !2652, !2655, !2854, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2896, !2897, !2898, !2907, !2915, !2916, !2917, !2918, !2919, !2924, !2925, !2926, !2929, !2930, !2933, !2936, !2939, !2947, !2950, !2951, !3037, !3038, !3039, !3040, !3041, !3047, !3048, !3049, !3050, !3053, !3054, !3057, !3060, !3061, !3064, !3065, !3066, !3069, !3070, !3071, !3072, !3073, !3074, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3105, !3106, !3112, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3124, !3196, !3198, !3199, !3200, !3201, !3202, !3214, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3231, !3232, !3233}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !405, file: !406, line: 752, baseType: !409, size: 192)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !410, line: 56, size: 192, elements: !411)
!410 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!411 = !{!412, !413, !414, !415}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !409, file: !410, line: 57, baseType: !182, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !409, file: !410, line: 58, baseType: !182, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !409, file: !410, line: 59, baseType: !97, size: 32, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !409, file: !410, line: 61, baseType: !97, size: 32, offset: 160)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !405, file: !406, line: 754, baseType: !5, size: 32, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !405, file: !406, line: 767, baseType: !231, size: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !405, file: !406, line: 768, baseType: !153, size: 32, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !405, file: !406, line: 770, baseType: !5, size: 32, offset: 352)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !405, file: !406, line: 771, baseType: !5, size: 32, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !405, file: !406, line: 774, baseType: !162, size: 32, offset: 416)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !405, file: !406, line: 775, baseType: !423, size: 128, offset: 448)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !424, line: 58, size: 128, elements: !425)
!424 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!425 = !{!426, !432, !437, !438}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !423, file: !424, line: 59, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !428, line: 60, size: 64, elements: !429)
!428 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !427, file: !428, line: 61, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, scope: !423, file: !424, line: 60, baseType: !433, size: 32, offset: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !423, file: !424, line: 60, size: 32, elements: !434)
!434 = !{!435, !436}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !433, file: !424, line: 61, baseType: !5, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !433, file: !424, line: 62, baseType: !158, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !423, file: !424, line: 65, baseType: !222, size: 16, offset: 96)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !423, file: !424, line: 65, baseType: !222, size: 16, offset: 112)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !405, file: !406, line: 776, baseType: !5, size: 32, offset: 576)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !405, file: !406, line: 777, baseType: !182, size: 64, offset: 640)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !405, file: !406, line: 778, baseType: !404, size: 64, offset: 704)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !405, file: !406, line: 787, baseType: !162, size: 32, offset: 768)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !405, file: !406, line: 788, baseType: !162, size: 32, offset: 800)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !405, file: !406, line: 790, baseType: !162, size: 32, offset: 832)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !405, file: !406, line: 792, baseType: !162, size: 32, offset: 864)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !405, file: !406, line: 793, baseType: !162, size: 32, offset: 896)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !405, file: !406, line: 794, baseType: !162, size: 32, offset: 928)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !405, file: !406, line: 795, baseType: !5, size: 32, offset: 960)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !405, file: !406, line: 797, baseType: !450, size: 2048, offset: 1024)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !406, line: 551, size: 2048, elements: !451)
!451 = !{!452, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !472, !475, !476, !477}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !450, file: !406, line: 553, baseType: !453, size: 128)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !406, line: 411, size: 128, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !453, file: !406, line: 412, baseType: !182, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !453, file: !406, line: 413, baseType: !97, size: 32, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !450, file: !406, line: 554, baseType: !178, size: 192, align: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !450, file: !406, line: 555, baseType: !88, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !450, file: !406, line: 556, baseType: !88, size: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !450, file: !406, line: 558, baseType: !172, size: 128, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !450, file: !406, line: 559, baseType: !5, size: 32, offset: 576)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !450, file: !406, line: 561, baseType: !88, size: 64, offset: 640)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !450, file: !406, line: 562, baseType: !88, size: 64, offset: 704)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !450, file: !406, line: 563, baseType: !88, size: 64, offset: 768)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !450, file: !406, line: 564, baseType: !88, size: 64, offset: 832)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !450, file: !406, line: 565, baseType: !111, size: 64, offset: 896)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !450, file: !406, line: 566, baseType: !88, size: 64, offset: 960)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !450, file: !406, line: 568, baseType: !88, size: 64, offset: 1024)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !450, file: !406, line: 571, baseType: !162, size: 32, offset: 1088)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !450, file: !406, line: 572, baseType: !471, size: 64, offset: 1152)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !450, file: !406, line: 574, baseType: !473, size: 64, offset: 1216)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !406, line: 49, flags: DIFlagFwdDecl)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !450, file: !406, line: 576, baseType: !473, size: 64, offset: 1280)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !450, file: !406, line: 578, baseType: !182, size: 64, offset: 1344)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !450, file: !406, line: 588, baseType: !478, size: 512, align: 512, offset: 1536)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !406, line: 497, size: 512, align: 512, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485, !486, !487, !488}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !478, file: !406, line: 498, baseType: !88, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !478, file: !406, line: 499, baseType: !88, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !478, file: !406, line: 500, baseType: !88, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !478, file: !406, line: 501, baseType: !97, size: 32, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !478, file: !406, line: 502, baseType: !97, size: 32, offset: 224)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !478, file: !406, line: 503, baseType: !182, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !478, file: !406, line: 504, baseType: !182, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !478, file: !406, line: 505, baseType: !182, size: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !478, file: !406, line: 506, baseType: !489, size: 64, align: 64, offset: 448)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !406, line: 445, size: 64, align: 64, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !489, file: !406, line: 446, baseType: !5, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !489, file: !406, line: 447, baseType: !5, size: 32, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !405, file: !406, line: 798, baseType: !494, size: 384, offset: 3072)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !406, line: 592, size: 384, elements: !495)
!495 = !{!496, !497, !498, !499, !500, !501, !502}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !494, file: !406, line: 593, baseType: !172, size: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !494, file: !406, line: 594, baseType: !182, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !494, file: !406, line: 595, baseType: !182, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !494, file: !406, line: 596, baseType: !5, size: 32, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !494, file: !406, line: 597, baseType: !224, size: 16, offset: 288)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !494, file: !406, line: 598, baseType: !224, size: 16, offset: 304)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !494, file: !406, line: 600, baseType: !503, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !405, file: !406, line: 799, baseType: !505, size: 1792, offset: 3456)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !406, line: 610, size: 1792, elements: !506)
!506 = !{!507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !601, !602}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !505, file: !406, line: 611, baseType: !178, size: 192, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !505, file: !406, line: 618, baseType: !88, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !505, file: !406, line: 619, baseType: !88, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !505, file: !406, line: 620, baseType: !88, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !505, file: !406, line: 621, baseType: !88, size: 64, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !505, file: !406, line: 622, baseType: !88, size: 64, offset: 448)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !505, file: !406, line: 629, baseType: !111, size: 64, offset: 512)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !505, file: !406, line: 630, baseType: !88, size: 64, offset: 576)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !505, file: !406, line: 631, baseType: !5, size: 32, offset: 640)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !505, file: !406, line: 653, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !505, file: !406, line: 654, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !505, file: !406, line: 655, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !505, file: !406, line: 656, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !505, file: !406, line: 662, baseType: !521, size: 512, offset: 704)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !522)
!522 = !{!523, !531, !532, !537, !597, !598, !599, !600}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !521, file: !4, line: 119, baseType: !524, size: 256)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !525, line: 9, size: 256, elements: !526)
!525 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !524, file: !525, line: 10, baseType: !178, size: 192, align: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !524, file: !525, line: 11, baseType: !529, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !530, line: 29, baseType: !111)
!530 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !521, file: !4, line: 120, baseType: !529, size: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !521, file: !4, line: 121, baseType: !533, size: 64, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!3, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !521, file: !4, line: 122, baseType: !538, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !540)
!540 = !{!541, !566, !567, !570, !580, !581, !592, !596}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !539, file: !4, line: 160, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 215, size: 4608, align: 512, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !543, file: !4, line: 216, baseType: !198, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !543, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !543, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !543, file: !4, line: 219, baseType: !5, size: 32, offset: 96)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !543, file: !4, line: 220, baseType: !5, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !543, file: !4, line: 221, baseType: !5, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !543, file: !4, line: 222, baseType: !5, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !543, file: !4, line: 223, baseType: !5, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !543, file: !4, line: 224, baseType: !5, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !543, file: !4, line: 226, baseType: !5, size: 32, offset: 160)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !543, file: !4, line: 227, baseType: !224, size: 16, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !543, file: !4, line: 228, baseType: !224, size: 16, offset: 208)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !543, file: !4, line: 229, baseType: !5, size: 32, offset: 224)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !543, file: !4, line: 235, baseType: !529, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !543, file: !4, line: 236, baseType: !536, size: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !543, file: !4, line: 237, baseType: !529, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !543, file: !4, line: 238, baseType: !536, size: 64, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !543, file: !4, line: 239, baseType: !563, size: 4096, align: 512, offset: 512)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 4096, align: 512, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 8)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !539, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !539, file: !4, line: 162, baseType: !568, size: 32, offset: 96)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !87, line: 32, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !120, line: 96, baseType: !162)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !539, file: !4, line: 163, baseType: !571, size: 32, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !572, line: 274, baseType: !573)
!572 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !572, line: 274, size: 32, elements: !574)
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !573, file: !572, line: 274, baseType: !576, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !572, line: 69, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !572, line: 64, size: 32, elements: !578)
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !577, file: !572, line: 65, baseType: !5, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !539, file: !4, line: 164, baseType: !536, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !539, file: !4, line: 165, baseType: !582, size: 128, offset: 256)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !525, line: 14, size: 128, elements: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !582, file: !525, line: 15, baseType: !585, size: 128)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !179, line: 26, size: 128, elements: !586)
!586 = !{!587, !591}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !585, file: !179, line: 27, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !179, line: 12, size: 64, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !588, file: !179, line: 13, baseType: !184, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !585, file: !179, line: 28, baseType: !184, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !539, file: !4, line: 166, baseType: !593, size: 64, offset: 384)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!529}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !539, file: !4, line: 167, baseType: !529, size: 64, offset: 448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !521, file: !4, line: 123, baseType: !215, size: 8, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !521, file: !4, line: 124, baseType: !215, size: 8, offset: 456)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !521, file: !4, line: 125, baseType: !215, size: 8, offset: 464)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !521, file: !4, line: 126, baseType: !215, size: 8, offset: 472)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !505, file: !406, line: 671, baseType: !521, size: 512, offset: 1216)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !505, file: !406, line: 679, baseType: !603, size: 64, offset: 1728)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !405, file: !406, line: 800, baseType: !605, size: 64, offset: 5248)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !406, line: 800, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !405, file: !406, line: 809, baseType: !609, size: 64, offset: 5312)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !406, line: 70, flags: DIFlagFwdDecl)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !405, file: !406, line: 825, baseType: !612, size: 2048, align: 512, offset: 5632)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !406, line: 509, size: 2048, align: 512, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !612, file: !406, line: 511, baseType: !88, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !612, file: !406, line: 512, baseType: !88, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !612, file: !406, line: 513, baseType: !88, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !612, file: !406, line: 514, baseType: !88, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !612, file: !406, line: 515, baseType: !88, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !612, file: !406, line: 516, baseType: !88, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !612, file: !406, line: 518, baseType: !88, size: 64, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !612, file: !406, line: 519, baseType: !88, size: 64, offset: 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !612, file: !406, line: 520, baseType: !111, size: 64, offset: 512)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !612, file: !406, line: 522, baseType: !88, size: 64, offset: 576)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !612, file: !406, line: 523, baseType: !88, size: 64, offset: 640)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !612, file: !406, line: 524, baseType: !111, size: 64, offset: 704)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !612, file: !406, line: 526, baseType: !111, size: 64, offset: 768)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !612, file: !406, line: 527, baseType: !88, size: 64, offset: 832)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !612, file: !406, line: 529, baseType: !88, size: 64, offset: 896)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !612, file: !406, line: 530, baseType: !88, size: 64, offset: 960)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !612, file: !406, line: 531, baseType: !88, size: 64, offset: 1024)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !612, file: !406, line: 532, baseType: !88, size: 64, offset: 1088)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !612, file: !406, line: 533, baseType: !88, size: 64, offset: 1152)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !612, file: !406, line: 535, baseType: !88, size: 64, offset: 1216)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !612, file: !406, line: 536, baseType: !88, size: 64, offset: 1280)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !612, file: !406, line: 537, baseType: !88, size: 64, offset: 1344)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !612, file: !406, line: 538, baseType: !88, size: 64, offset: 1408)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !612, file: !406, line: 539, baseType: !88, size: 64, offset: 1472)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !612, file: !406, line: 540, baseType: !88, size: 64, offset: 1536)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !612, file: !406, line: 541, baseType: !88, size: 64, offset: 1600)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !612, file: !406, line: 542, baseType: !88, size: 64, offset: 1664)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !612, file: !406, line: 543, baseType: !88, size: 64, offset: 1728)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !405, file: !406, line: 833, baseType: !5, size: 32, offset: 7680)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !405, file: !406, line: 836, baseType: !5, size: 32, offset: 7712)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !405, file: !406, line: 837, baseType: !162, size: 32, offset: 7744)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !405, file: !406, line: 838, baseType: !646, size: 64, offset: 7808)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !649, line: 19, baseType: !650)
!649 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !649, line: 19, size: 64, elements: !651)
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !650, file: !649, line: 19, baseType: !653, size: 64)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 64, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 1)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !405, file: !406, line: 839, baseType: !657, size: 64, offset: 7872)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !405, file: !406, line: 840, baseType: !648, size: 64, offset: 7936)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !405, file: !406, line: 841, baseType: !231, size: 64, offset: 8000)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !405, file: !406, line: 843, baseType: !224, size: 16, offset: 8064)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !405, file: !406, line: 845, baseType: !224, size: 16, offset: 8080)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !405, file: !406, line: 848, baseType: !162, size: 32, offset: 8096)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !405, file: !406, line: 849, baseType: !664, size: 32, offset: 8128)
!664 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !406, line: 718, size: 32, elements: !665)
!665 = !{!666, !673}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !664, file: !406, line: 724, baseType: !667, size: 32)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !664, file: !406, line: 719, size: 32, elements: !668)
!668 = !{!669, !670, !671, !672}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !667, file: !406, line: 720, baseType: !215, size: 8)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !667, file: !406, line: 721, baseType: !215, size: 8, offset: 8)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !667, file: !406, line: 722, baseType: !215, size: 8, offset: 16)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !667, file: !406, line: 723, baseType: !215, size: 8, offset: 24)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !664, file: !406, line: 725, baseType: !97, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !405, file: !406, line: 850, baseType: !172, size: 128, offset: 8192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !405, file: !406, line: 851, baseType: !676, size: 64, offset: 8320)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !406, line: 60, flags: DIFlagFwdDecl)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !405, file: !406, line: 855, baseType: !182, size: 64, offset: 8384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !405, file: !406, line: 856, baseType: !215, size: 8, offset: 8448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !405, file: !406, line: 857, baseType: !215, size: 8, offset: 8456)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !405, file: !406, line: 858, baseType: !162, size: 32, offset: 8480)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !405, file: !406, line: 859, baseType: !172, size: 128, offset: 8512)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !405, file: !406, line: 860, baseType: !162, size: 32, offset: 8640)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !405, file: !406, line: 861, baseType: !172, size: 128, offset: 8704)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !405, file: !406, line: 873, baseType: !686, size: 256, offset: 8832)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !406, line: 376, size: 256, elements: !687)
!687 = !{!688, !689, !690, !691}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !686, file: !406, line: 381, baseType: !182, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !686, file: !406, line: 384, baseType: !92, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !686, file: !406, line: 389, baseType: !92, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !686, file: !406, line: 392, baseType: !92, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !405, file: !406, line: 875, baseType: !172, size: 128, offset: 9088)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !405, file: !406, line: 877, baseType: !694, size: 320, offset: 9216)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !695, line: 86, size: 320, elements: !696)
!695 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!696 = !{!697, !698, !699}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !694, file: !695, line: 87, baseType: !162, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !694, file: !695, line: 88, baseType: !172, size: 128, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !694, file: !695, line: 89, baseType: !172, size: 128, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !405, file: !406, line: 878, baseType: !178, size: 192, align: 64, offset: 9536)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !405, file: !406, line: 881, baseType: !702, size: 64, offset: 9728)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !37, line: 733, size: 10240, elements: !704)
!704 = !{!705, !2486}
!705 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !37, line: 734, baseType: !706, size: 10240)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !703, file: !37, line: 734, size: 10240, elements: !707)
!707 = !{!708, !712, !734, !2384, !2385, !2386, !2387, !2388, !2389, !2396, !2397, !2398, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2437, !2439, !2442, !2466, !2467, !2468, !2471, !2472, !2473, !2476, !2477, !2478, !2484, !2485}
!708 = !DIDerivedType(tag: DW_TAG_member, scope: !706, file: !37, line: 739, baseType: !709, size: 512, align: 512)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !706, file: !37, line: 739, size: 512, align: 512, elements: !710)
!710 = !{!711}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !709, file: !37, line: 747, baseType: !158, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !706, file: !37, line: 750, baseType: !713, size: 128, offset: 512)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !714, line: 218, size: 128, elements: !715)
!714 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!715 = !{!716, !732, !733}
!716 = !DIDerivedType(tag: DW_TAG_member, scope: !713, file: !714, line: 219, baseType: !717, size: 32)
!717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !713, file: !714, line: 219, size: 32, elements: !718)
!718 = !{!719, !728}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !717, file: !714, line: 220, baseType: !720, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !721, line: 29, baseType: !722)
!721 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !721, line: 17, size: 32, elements: !723)
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !721, line: 18, baseType: !725, size: 32)
!725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !722, file: !721, line: 18, size: 32, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !725, file: !721, line: 19, baseType: !200, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !717, file: !714, line: 221, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !714, line: 197, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !714, line: 197, elements: !731)
!731 = !{}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !713, file: !714, line: 223, baseType: !5, size: 32, offset: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !713, file: !714, line: 224, baseType: !231, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !706, file: !37, line: 752, baseType: !735, size: 64, offset: 640)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!182, !738, !182, !182, !182, !182}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !18, line: 994, size: 1856, align: 64, elements: !740)
!740 = !{!741, !747, !748, !750, !751, !759, !762, !763, !822, !823, !832, !2374, !2375, !2376, !2377, !2378, !2379, !2381, !2382, !2383}
!741 = !DIDerivedType(tag: DW_TAG_member, scope: !739, file: !18, line: 995, baseType: !742, size: 128)
!742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !739, file: !18, line: 995, size: 128, elements: !743)
!743 = !{!744, !745, !746}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !742, file: !18, line: 996, baseType: !427, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !742, file: !18, line: 997, baseType: !276, size: 128, align: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !742, file: !18, line: 998, baseType: !5, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !739, file: !18, line: 1005, baseType: !720, size: 32, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !739, file: !18, line: 1006, baseType: !749, size: 32, offset: 160)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !87, line: 156, baseType: !5)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !739, file: !18, line: 1007, baseType: !105, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !739, file: !18, line: 1008, baseType: !752, size: 256, offset: 256)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !753, line: 66, size: 256, elements: !754)
!753 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!754 = !{!755, !756, !757, !758}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !752, file: !753, line: 67, baseType: !105, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !752, file: !753, line: 68, baseType: !198, size: 32, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !752, file: !753, line: 70, baseType: !193, size: 32, offset: 96)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !752, file: !753, line: 72, baseType: !172, size: 128, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !739, file: !18, line: 1009, baseType: !760, size: 64, offset: 512)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !87, line: 52, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !120, line: 88, baseType: !96)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !739, file: !18, line: 1010, baseType: !5, size: 32, offset: 576)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !739, file: !18, line: 1011, baseType: !764, size: 256, offset: 640)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !18, line: 948, size: 256, elements: !765)
!765 = !{!766, !789, !818, !819, !820, !821}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !764, file: !18, line: 949, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !768, line: 34, baseType: !769)
!768 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !768, line: 25, size: 64, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !769, file: !768, line: 26, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !773, line: 27, baseType: !774)
!773 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !773, line: 13, size: 64, elements: !775)
!775 = !{!776, !788}
!776 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !773, line: 14, baseType: !777, size: 32)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !774, file: !773, line: 14, size: 32, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !777, file: !773, line: 15, baseType: !158, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !773, line: 16, baseType: !781, size: 32)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !773, line: 16, size: 32, elements: !782)
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !781, file: !773, line: 18, baseType: !215, size: 8)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !781, file: !773, line: 19, baseType: !785, size: 24, offset: 8)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 24, elements: !786)
!786 = !{!787}
!787 = !DISubrange(count: 3)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !774, file: !773, line: 26, baseType: !203, size: 32, offset: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !764, file: !18, line: 950, baseType: !790, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !10, line: 59, size: 768, elements: !792)
!792 = !{!793, !794, !795, !796, !801, !802, !809, !810}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !791, file: !10, line: 61, baseType: !153, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !791, file: !10, line: 62, baseType: !5, size: 32, offset: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !791, file: !10, line: 63, baseType: !720, size: 32, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !791, file: !10, line: 65, baseType: !797, size: 256, offset: 128)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 256, elements: !309)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !87, line: 194, size: 64, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !798, file: !87, line: 195, baseType: !363, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !791, file: !10, line: 66, baseType: !798, size: 64, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !791, file: !10, line: 68, baseType: !803, size: 192, offset: 448)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !804, line: 41, baseType: !805)
!804 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !804, line: 37, size: 192, elements: !806)
!806 = !{!807, !808}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !805, file: !804, line: 38, baseType: !720, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !805, file: !804, line: 39, baseType: !172, size: 128, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !791, file: !10, line: 69, baseType: !276, size: 128, align: 64, offset: 640)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !791, file: !10, line: 70, baseType: !811, offset: 768)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !812, elements: !394)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !10, line: 54, size: 128, elements: !813)
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !812, file: !10, line: 55, baseType: !162, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !812, file: !10, line: 56, baseType: !816, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !10, line: 56, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !764, file: !18, line: 951, baseType: !9, size: 32, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !764, file: !18, line: 952, baseType: !113, size: 32, offset: 160)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !764, file: !18, line: 952, baseType: !113, size: 32, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !764, file: !18, line: 953, baseType: !162, size: 32, offset: 224)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !739, file: !18, line: 1012, baseType: !99, size: 64, offset: 896)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !739, file: !18, line: 1013, baseType: !824, size: 256, offset: 960)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !18, line: 970, size: 256, elements: !825)
!825 = !{!826, !827, !828, !829, !830, !831}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !824, file: !18, line: 971, baseType: !182, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !824, file: !18, line: 972, baseType: !5, size: 32, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !824, file: !18, line: 973, baseType: !5, size: 32, offset: 96)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !824, file: !18, line: 974, baseType: !5, size: 32, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !824, file: !18, line: 975, baseType: !5, size: 32, offset: 160)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !824, file: !18, line: 976, baseType: !760, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !739, file: !18, line: 1014, baseType: !833, size: 128, offset: 1216)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !834, line: 8, size: 128, elements: !835)
!834 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!835 = !{!836, !2373}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !833, file: !834, line: 9, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !839, line: 70, size: 256, elements: !840)
!839 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!840 = !{!841, !2370, !2371, !2372}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !838, file: !839, line: 71, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !844, line: 82, size: 1536, elements: !845)
!844 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!845 = !{!846, !847, !852, !860, !861, !876, !2337, !2339, !2352, !2353, !2354, !2355, !2356, !2362, !2363, !2364}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !843, file: !844, line: 84, baseType: !5, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !843, file: !844, line: 85, baseType: !848, size: 32, offset: 32)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !572, line: 275, baseType: !849)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !572, line: 275, size: 32, elements: !850)
!850 = !{!851}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !849, file: !572, line: 275, baseType: !576, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !843, file: !844, line: 86, baseType: !853, size: 128, offset: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !854, line: 38, size: 128, elements: !855)
!854 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!855 = !{!856, !858}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !853, file: !854, line: 39, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !853, file: !854, line: 39, baseType: !859, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !843, file: !844, line: 87, baseType: !842, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !843, file: !844, line: 88, baseType: !862, size: 128, offset: 256)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !844, line: 49, size: 128, elements: !863)
!863 = !{!864, !873}
!864 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !844, line: 50, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !862, file: !844, line: 50, size: 64, elements: !866)
!866 = !{!867, !872}
!867 = !DIDerivedType(tag: DW_TAG_member, scope: !865, file: !844, line: 51, baseType: !868, size: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !865, file: !844, line: 51, size: 64, elements: !869)
!869 = !{!870, !871}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !868, file: !844, line: 52, baseType: !97, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !868, file: !844, line: 52, baseType: !97, size: 32, offset: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !865, file: !844, line: 54, baseType: !88, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !862, file: !844, line: 56, baseType: !874, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !843, file: !844, line: 89, baseType: !877, size: 64, offset: 384)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !18, line: 641, size: 4800, elements: !879)
!879 = !{!880, !882, !883, !884, !885, !886, !887, !890, !891, !1089, !1648, !2147, !2148, !2149, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2319, !2322, !2323, !2324, !2333, !2334, !2335, !2336}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !878, file: !18, line: 642, baseType: !881, size: 16)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !87, line: 24, baseType: !224)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !878, file: !18, line: 643, baseType: !224, size: 16, offset: 16)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !878, file: !18, line: 644, baseType: !113, size: 32, offset: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !878, file: !18, line: 645, baseType: !172, size: 128, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !878, file: !18, line: 646, baseType: !122, size: 32, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !878, file: !18, line: 647, baseType: !5, size: 32, offset: 224)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !878, file: !18, line: 650, baseType: !888, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !18, line: 607, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !878, file: !18, line: 651, baseType: !888, size: 64, offset: 320)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !878, file: !18, line: 654, baseType: !892, size: 64, offset: 384)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !894)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !18, line: 1966, size: 2048, align: 512, elements: !895)
!895 = !{!896, !900, !913, !919, !923, !927, !931, !935, !939, !943, !947, !948, !954, !958, !996, !1027, !1037, !1043, !1047, !1051, !1055, !1059, !1063, !1069, !1073}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !894, file: !18, line: 1967, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!842, !877, !842, !5}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !894, file: !18, line: 1968, baseType: !901, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!289, !842, !877, !904}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !906, line: 10, size: 128, elements: !907)
!906 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!907 = !{!908, !912}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !905, file: !906, line: 11, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{null, !231}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !905, file: !906, line: 12, baseType: !231, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !894, file: !18, line: 1969, baseType: !914, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!162, !917, !877, !162}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !137, line: 42, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !894, file: !18, line: 1970, baseType: !920, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!888, !877, !162, !286}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !894, file: !18, line: 1972, baseType: !924, size: 64, offset: 256)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!162, !842, !299, !162}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !894, file: !18, line: 1974, baseType: !928, size: 64, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!162, !917, !877, !842, !881, !286}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !894, file: !18, line: 1976, baseType: !932, size: 64, offset: 384)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!162, !842, !877, !842}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !894, file: !18, line: 1977, baseType: !936, size: 64, offset: 448)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!162, !877, !842}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !894, file: !18, line: 1978, baseType: !940, size: 64, offset: 512)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!162, !917, !877, !842, !289}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !894, file: !18, line: 1980, baseType: !944, size: 64, offset: 576)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!162, !917, !877, !842, !881}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !894, file: !18, line: 1982, baseType: !936, size: 64, offset: 640)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !894, file: !18, line: 1983, baseType: !949, size: 64, offset: 704)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!162, !917, !877, !842, !881, !952}
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !87, line: 21, baseType: !953)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !87, line: 18, baseType: !97)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !894, file: !18, line: 1985, baseType: !955, size: 64, offset: 768)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!162, !917, !877, !842, !877, !842, !5}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !894, file: !18, line: 1987, baseType: !959, size: 64, offset: 832)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!162, !917, !842, !962}
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !18, line: 226, size: 640, elements: !964)
!964 = !{!965, !966, !967, !977, !986, !987, !993, !994, !995}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !963, file: !18, line: 227, baseType: !5, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !963, file: !18, line: 228, baseType: !881, size: 16, offset: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, scope: !963, file: !18, line: 241, baseType: !968, size: 32, offset: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !963, file: !18, line: 241, size: 32, elements: !969)
!969 = !{!970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !968, file: !18, line: 242, baseType: !113, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !968, file: !18, line: 243, baseType: !972, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !973, line: 16, baseType: !974)
!973 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !973, line: 14, size: 32, elements: !975)
!975 = !{!976}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !974, file: !973, line: 15, baseType: !118, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, scope: !963, file: !18, line: 245, baseType: !978, size: 32, offset: 96)
!978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !963, file: !18, line: 245, size: 32, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !978, file: !18, line: 246, baseType: !122, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !978, file: !18, line: 247, baseType: !982, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !973, line: 20, baseType: !983)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !973, line: 18, size: 32, elements: !984)
!984 = !{!985}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !983, file: !973, line: 19, baseType: !126, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !963, file: !18, line: 249, baseType: !760, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !963, file: !18, line: 250, baseType: !988, size: 128, offset: 192)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !94, line: 13, size: 128, elements: !989)
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !988, file: !94, line: 14, baseType: !93, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !988, file: !94, line: 15, baseType: !992, size: 64, offset: 64)
!992 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !963, file: !18, line: 251, baseType: !988, size: 128, offset: 320)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !963, file: !18, line: 252, baseType: !988, size: 128, offset: 448)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !963, file: !18, line: 259, baseType: !738, size: 64, offset: 576)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !894, file: !18, line: 1988, baseType: !997, size: 64, offset: 896)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!162, !917, !1000, !1002, !97, !5}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !833)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1004, line: 22, size: 1280, elements: !1005)
!1004 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1005 = !{!1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1003, file: !1004, line: 23, baseType: !97, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1003, file: !1004, line: 24, baseType: !881, size: 16, offset: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1003, file: !1004, line: 25, baseType: !5, size: 32, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1003, file: !1004, line: 26, baseType: !242, size: 32, offset: 96)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1003, file: !1004, line: 27, baseType: !88, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1003, file: !1004, line: 28, baseType: !88, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1003, file: !1004, line: 41, baseType: !88, size: 64, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1003, file: !1004, line: 42, baseType: !952, size: 32, offset: 320)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1003, file: !1004, line: 43, baseType: !952, size: 32, offset: 352)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1003, file: !1004, line: 44, baseType: !113, size: 32, offset: 384)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1003, file: !1004, line: 45, baseType: !122, size: 32, offset: 416)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1003, file: !1004, line: 46, baseType: !760, size: 64, offset: 448)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1003, file: !1004, line: 47, baseType: !988, size: 128, offset: 512)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1003, file: !1004, line: 48, baseType: !988, size: 128, offset: 640)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1003, file: !1004, line: 49, baseType: !988, size: 128, offset: 768)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1003, file: !1004, line: 50, baseType: !988, size: 128, offset: 896)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1003, file: !1004, line: 51, baseType: !88, size: 64, offset: 1024)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1003, file: !1004, line: 52, baseType: !88, size: 64, offset: 1088)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1003, file: !1004, line: 53, baseType: !97, size: 32, offset: 1152)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1003, file: !1004, line: 54, baseType: !97, size: 32, offset: 1184)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1003, file: !1004, line: 55, baseType: !88, size: 64, offset: 1216)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !894, file: !18, line: 1990, baseType: !1028, size: 64, offset: 960)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!1031, !842, !299, !1034}
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !87, line: 66, baseType: !1032)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !120, line: 73, baseType: !1033)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !120, line: 15, baseType: !992)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !87, line: 61, baseType: !1035)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !120, line: 72, baseType: !1036)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !120, line: 16, baseType: !182)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !894, file: !18, line: 1991, baseType: !1038, size: 64, offset: 1024)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!162, !877, !1041, !88, !88}
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !18, line: 55, flags: DIFlagFwdDecl)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !894, file: !18, line: 1993, baseType: !1044, size: 64, offset: 1088)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!162, !877, !162}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !894, file: !18, line: 1994, baseType: !1048, size: 64, offset: 1152)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!162, !877, !842, !738, !5, !881}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !894, file: !18, line: 1997, baseType: !1052, size: 64, offset: 1216)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!162, !917, !877, !738, !881}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !894, file: !18, line: 1999, baseType: !1056, size: 64, offset: 1280)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!888, !917, !842, !162}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !894, file: !18, line: 2001, baseType: !1060, size: 64, offset: 1344)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!162, !917, !842, !888, !162}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !894, file: !18, line: 2003, baseType: !1064, size: 64, offset: 1408)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!162, !917, !842, !1067}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !18, line: 76, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !894, file: !18, line: 2005, baseType: !1070, size: 64, offset: 1472)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!162, !842, !1067}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !894, file: !18, line: 2006, baseType: !1074, size: 64, offset: 1536)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!1077, !877}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !18, line: 3192, size: 192, elements: !1079)
!1079 = !{!1080, !1088}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1078, file: !18, line: 3193, baseType: !1081, size: 128)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1082, line: 296, size: 128, elements: !1083)
!1082 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1083 = !{!1084, !1085, !1087}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1081, file: !1082, line: 297, baseType: !720, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1081, file: !1082, line: 299, baseType: !1086, size: 32, offset: 32)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !87, line: 154, baseType: !5)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1081, file: !1082, line: 300, baseType: !231, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1078, file: !18, line: 3194, baseType: !97, size: 32, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !878, file: !18, line: 655, baseType: !1090, size: 64, offset: 448)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !18, line: 1190, size: 10752, elements: !1092)
!1092 = !{!1093, !1094, !1095, !1096, !1097, !1098, !1139, !1277, !1317, !1400, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1417, !1421, !1422, !1425, !1428, !1431, !1434, !1435, !1436, !1477, !1504, !1505, !1506, !1507, !1508, !1509, !1512, !1516, !1525, !1526, !1527, !1528, !1587, !1602, !1603, !1604, !1605, !1608, !1612, !1613, !1614, !1629, !1630, !1631, !1642, !1643, !1644, !1645, !1646, !1647}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1091, file: !18, line: 1191, baseType: !172, size: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1091, file: !18, line: 1192, baseType: !952, size: 32, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1091, file: !18, line: 1193, baseType: !146, size: 8, offset: 160)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1091, file: !18, line: 1194, baseType: !182, size: 64, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1091, file: !18, line: 1195, baseType: !760, size: 64, offset: 256)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1091, file: !18, line: 1196, baseType: !1099, size: 64, offset: 320)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !18, line: 2366, size: 576, elements: !1101)
!1101 = !{!1102, !1103, !1104, !1110, !1114, !1118, !1122, !1126, !1127, !1128, !1131, !1132, !1133, !1135, !1136, !1137, !1138}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1100, file: !18, line: 2367, baseType: !289, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1100, file: !18, line: 2368, baseType: !162, size: 32, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1100, file: !18, line: 2376, baseType: !1105, size: 64, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!162, !1108}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !839, line: 21, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1100, file: !18, line: 2377, baseType: !1111, size: 64, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1113)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !18, line: 75, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1100, file: !18, line: 2378, baseType: !1115, size: 64, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!842, !1099, !162, !289, !231}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1100, file: !18, line: 2380, baseType: !1119, size: 64, offset: 320)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null, !1090}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1100, file: !18, line: 2381, baseType: !1123, size: 64, offset: 384)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1125, line: 103, flags: DIFlagFwdDecl)
!1125 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1100, file: !18, line: 2382, baseType: !1099, size: 64, offset: 448)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1100, file: !18, line: 2383, baseType: !798, size: 64, offset: 512)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1100, file: !18, line: 2385, baseType: !1129, offset: 576)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1130, line: 206, elements: !731)
!1130 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1100, file: !18, line: 2386, baseType: !1129, offset: 576)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1100, file: !18, line: 2387, baseType: !1129, offset: 576)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1100, file: !18, line: 2388, baseType: !1134, offset: 576)
!1134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1129, elements: !786)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1100, file: !18, line: 2390, baseType: !1129, offset: 576)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1100, file: !18, line: 2391, baseType: !1129, offset: 576)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1100, file: !18, line: 2392, baseType: !1129, offset: 576)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1100, file: !18, line: 2393, baseType: !1129, offset: 576)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1091, file: !18, line: 1197, baseType: !1140, size: 64, offset: 384)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1142)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !18, line: 2057, size: 1664, elements: !1143)
!1143 = !{!1144, !1148, !1152, !1153, !1157, !1163, !1167, !1168, !1169, !1173, !1177, !1181, !1182, !1183, !1189, !1194, !1195, !1202, !1203, !1204, !1205, !1209, !1213, !1260, !1275, !1276}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1142, file: !18, line: 2058, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!877, !1090}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1142, file: !18, line: 2059, baseType: !1149, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{null, !877}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1142, file: !18, line: 2060, baseType: !1149, size: 64, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1142, file: !18, line: 2062, baseType: !1154, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{null, !877, !162}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1142, file: !18, line: 2063, baseType: !1158, size: 64, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!162, !877, !1161}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !18, line: 309, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1142, file: !18, line: 2064, baseType: !1164, size: 64, offset: 320)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!162, !877}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1142, file: !18, line: 2065, baseType: !1149, size: 64, offset: 384)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1142, file: !18, line: 2066, baseType: !1119, size: 64, offset: 448)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1142, file: !18, line: 2067, baseType: !1170, size: 64, offset: 512)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!162, !1090, !162}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1142, file: !18, line: 2068, baseType: !1174, size: 64, offset: 576)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!162, !1090, !17}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1142, file: !18, line: 2069, baseType: !1178, size: 64, offset: 640)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!162, !1090}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1142, file: !18, line: 2070, baseType: !1174, size: 64, offset: 704)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1142, file: !18, line: 2071, baseType: !1178, size: 64, offset: 768)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1142, file: !18, line: 2072, baseType: !1184, size: 64, offset: 832)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!162, !842, !1187}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !18, line: 62, flags: DIFlagFwdDecl)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1142, file: !18, line: 2073, baseType: !1190, size: 64, offset: 896)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!162, !1090, !1193, !299}
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1142, file: !18, line: 2074, baseType: !1119, size: 64, offset: 960)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1142, file: !18, line: 2076, baseType: !1196, size: 64, offset: 1024)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!162, !1199, !842}
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1201, line: 474, flags: DIFlagFwdDecl)
!1201 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1142, file: !18, line: 2077, baseType: !1196, size: 64, offset: 1088)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1142, file: !18, line: 2078, baseType: !1196, size: 64, offset: 1152)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1142, file: !18, line: 2079, baseType: !1196, size: 64, offset: 1216)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1142, file: !18, line: 2081, baseType: !1206, size: 64, offset: 1280)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!1031, !1090, !162, !299, !1034, !760}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1142, file: !18, line: 2082, baseType: !1210, size: 64, offset: 1344)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!1031, !1090, !162, !289, !1034, !760}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1142, file: !18, line: 2083, baseType: !1214, size: 64, offset: 1408)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!1217, !877}
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !23, line: 296, size: 1664, elements: !1220)
!1220 = !{!1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1245, !1246, !1247}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1219, file: !23, line: 297, baseType: !360, size: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1219, file: !23, line: 298, baseType: !172, size: 128, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1219, file: !23, line: 299, baseType: !172, size: 128, offset: 256)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1219, file: !23, line: 300, baseType: !172, size: 128, offset: 384)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1219, file: !23, line: 301, baseType: !752, size: 256, offset: 512)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1219, file: !23, line: 302, baseType: !720, size: 32, offset: 768)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1219, file: !23, line: 303, baseType: !158, size: 32, offset: 800)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1219, file: !23, line: 304, baseType: !1090, size: 64, offset: 832)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1219, file: !23, line: 305, baseType: !1230, size: 64, offset: 896)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !23, line: 68, size: 64, elements: !1231)
!1231 = !{!1232, !1244}
!1232 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !23, line: 69, baseType: !1233, size: 32)
!1233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1230, file: !23, line: 69, size: 32, elements: !1234)
!1234 = !{!1235, !1236, !1237}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1233, file: !23, line: 70, baseType: !113, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1233, file: !23, line: 71, baseType: !122, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1233, file: !23, line: 72, baseType: !1238, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1239, line: 24, baseType: !1240)
!1239 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1239, line: 22, size: 32, elements: !1241)
!1241 = !{!1242}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1240, file: !1239, line: 23, baseType: !1243, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1239, line: 20, baseType: !119)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1230, file: !23, line: 74, baseType: !22, size: 32, offset: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1219, file: !23, line: 306, baseType: !760, size: 64, offset: 960)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1219, file: !23, line: 307, baseType: !182, size: 64, offset: 1024)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1219, file: !23, line: 308, baseType: !1248, size: 576, offset: 1088)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !23, line: 205, size: 576, elements: !1249)
!1249 = !{!1250, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1248, file: !23, line: 206, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !23, line: 66, baseType: !96)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1248, file: !23, line: 207, baseType: !1251, size: 64, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1248, file: !23, line: 208, baseType: !1251, size: 64, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1248, file: !23, line: 209, baseType: !1251, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1248, file: !23, line: 210, baseType: !1251, size: 64, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1248, file: !23, line: 211, baseType: !1251, size: 64, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1248, file: !23, line: 212, baseType: !1251, size: 64, offset: 384)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1248, file: !23, line: 213, baseType: !93, size: 64, offset: 448)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1248, file: !23, line: 214, baseType: !93, size: 64, offset: 512)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1142, file: !18, line: 2085, baseType: !1261, size: 64, offset: 1472)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!992, !1090, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1266, line: 15, size: 256, elements: !1267)
!1266 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1267 = !{!1268, !1269, !1270, !1271, !1272}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1265, file: !1266, line: 16, baseType: !1086, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1265, file: !1266, line: 19, baseType: !162, size: 32, offset: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1265, file: !1266, line: 26, baseType: !182, size: 64, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1265, file: !1266, line: 33, baseType: !182, size: 64, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1265, file: !1266, line: 36, baseType: !1273, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !37, line: 33, flags: DIFlagFwdDecl)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1142, file: !18, line: 2087, baseType: !1261, size: 64, offset: 1536)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1142, file: !18, line: 2089, baseType: !1119, size: 64, offset: 1600)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1091, file: !18, line: 1198, baseType: !1278, size: 64, offset: 448)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1280)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !23, line: 324, size: 704, elements: !1281)
!1281 = !{!1282, !1286, !1290, !1294, !1295, !1296, !1297, !1298, !1303, !1308, !1312}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1280, file: !23, line: 325, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!162, !1218}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1280, file: !23, line: 326, baseType: !1287, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!1218, !1090, !162}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1280, file: !23, line: 327, baseType: !1291, size: 64, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{null, !1218}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1280, file: !23, line: 328, baseType: !1283, size: 64, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1280, file: !23, line: 329, baseType: !1283, size: 64, offset: 256)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1280, file: !23, line: 330, baseType: !1283, size: 64, offset: 320)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1280, file: !23, line: 331, baseType: !1170, size: 64, offset: 384)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1280, file: !23, line: 334, baseType: !1299, size: 64, offset: 448)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!1302, !877}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1280, file: !23, line: 335, baseType: !1304, size: 64, offset: 512)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!162, !877, !1307}
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1280, file: !23, line: 337, baseType: !1309, size: 64, offset: 576)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!162, !877, !1302}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1280, file: !23, line: 339, baseType: !1313, size: 64, offset: 640)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!162, !1090, !1316}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1091, file: !18, line: 1199, baseType: !1318, size: 64, offset: 512)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1320)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !23, line: 430, size: 704, elements: !1321)
!1321 = !{!1322, !1326, !1327, !1331, !1332, !1333, !1348, !1371, !1375, !1376, !1399}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1320, file: !23, line: 431, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!162, !1090, !162, !162, !1000}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1320, file: !23, line: 432, baseType: !1170, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1320, file: !23, line: 433, baseType: !1328, size: 64, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!162, !1090, !5}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1320, file: !23, line: 434, baseType: !1328, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1320, file: !23, line: 435, baseType: !1170, size: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1320, file: !23, line: 436, baseType: !1334, size: 64, offset: 320)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!162, !1090, !162, !1337}
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !23, line: 417, size: 256, elements: !1339)
!1339 = !{!1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1338, file: !23, line: 418, baseType: !162, size: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1338, file: !23, line: 419, baseType: !5, size: 32, offset: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1338, file: !23, line: 420, baseType: !5, size: 32, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1338, file: !23, line: 422, baseType: !5, size: 32, offset: 96)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1338, file: !23, line: 423, baseType: !5, size: 32, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1338, file: !23, line: 424, baseType: !5, size: 32, offset: 160)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1338, file: !23, line: 425, baseType: !5, size: 32, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1338, file: !23, line: 426, baseType: !5, size: 32, offset: 224)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1320, file: !23, line: 437, baseType: !1349, size: 64, offset: 384)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!162, !1090, !1230, !1352}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !23, line: 345, size: 960, elements: !1354)
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1353, file: !23, line: 346, baseType: !162, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1353, file: !23, line: 347, baseType: !88, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1353, file: !23, line: 348, baseType: !88, size: 64, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1353, file: !23, line: 349, baseType: !88, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1353, file: !23, line: 350, baseType: !88, size: 64, offset: 256)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1353, file: !23, line: 351, baseType: !88, size: 64, offset: 320)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1353, file: !23, line: 352, baseType: !88, size: 64, offset: 384)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1353, file: !23, line: 353, baseType: !111, size: 64, offset: 448)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1353, file: !23, line: 355, baseType: !111, size: 64, offset: 512)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1353, file: !23, line: 356, baseType: !162, size: 32, offset: 576)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1353, file: !23, line: 357, baseType: !162, size: 32, offset: 608)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1353, file: !23, line: 358, baseType: !88, size: 64, offset: 640)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1353, file: !23, line: 359, baseType: !88, size: 64, offset: 704)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1353, file: !23, line: 360, baseType: !88, size: 64, offset: 768)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1353, file: !23, line: 361, baseType: !111, size: 64, offset: 832)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1353, file: !23, line: 362, baseType: !162, size: 32, offset: 896)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1320, file: !23, line: 438, baseType: !1372, size: 64, offset: 448)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!162, !1090, !1316, !1352}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1320, file: !23, line: 440, baseType: !1349, size: 64, offset: 512)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1320, file: !23, line: 441, baseType: !1377, size: 64, offset: 576)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!162, !1090, !1380}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !23, line: 411, size: 1408, elements: !1382)
!1382 = !{!1383, !1384}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1381, file: !23, line: 412, baseType: !5, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1381, file: !23, line: 413, baseType: !1385, size: 1344, offset: 64)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1386, size: 1344, elements: !786)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !23, line: 397, size: 448, elements: !1387)
!1387 = !{!1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1398}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1386, file: !23, line: 398, baseType: !5, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1386, file: !23, line: 399, baseType: !5, size: 32, offset: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1386, file: !23, line: 401, baseType: !5, size: 32, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1386, file: !23, line: 402, baseType: !5, size: 32, offset: 96)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1386, file: !23, line: 403, baseType: !5, size: 32, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1386, file: !23, line: 404, baseType: !5, size: 32, offset: 160)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1386, file: !23, line: 405, baseType: !5, size: 32, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1386, file: !23, line: 406, baseType: !92, size: 64, offset: 256)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1386, file: !23, line: 407, baseType: !1397, size: 64, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !87, line: 132, baseType: !88)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1386, file: !23, line: 408, baseType: !1397, size: 64, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1320, file: !23, line: 442, baseType: !1328, size: 64, offset: 640)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1091, file: !18, line: 1200, baseType: !1401, size: 64, offset: 576)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1403)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !18, line: 54, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1091, file: !18, line: 1201, baseType: !182, size: 64, offset: 640)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1091, file: !18, line: 1202, baseType: !182, size: 64, offset: 704)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1091, file: !18, line: 1203, baseType: !182, size: 64, offset: 768)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1091, file: !18, line: 1204, baseType: !842, size: 64, offset: 832)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1091, file: !18, line: 1205, baseType: !187, size: 320, offset: 896)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1091, file: !18, line: 1206, baseType: !162, size: 32, offset: 1216)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1091, file: !18, line: 1207, baseType: !158, size: 32, offset: 1248)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1091, file: !18, line: 1209, baseType: !231, size: 64, offset: 1280)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1091, file: !18, line: 1211, baseType: !1413, size: 64, offset: 1344)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1416)
!1416 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !18, line: 1211, flags: DIFlagFwdDecl)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1091, file: !18, line: 1223, baseType: !1418, size: 64, offset: 1408)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !854, line: 34, size: 64, elements: !1419)
!1419 = !{!1420}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1418, file: !854, line: 35, baseType: !857, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1091, file: !18, line: 1224, baseType: !172, size: 128, offset: 1472)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1091, file: !18, line: 1225, baseType: !1423, size: 64, offset: 1600)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !18, line: 1225, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1091, file: !18, line: 1226, baseType: !1426, size: 64, offset: 1664)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !18, line: 1226, flags: DIFlagFwdDecl)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1091, file: !18, line: 1227, baseType: !1429, size: 64, offset: 1728)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !18, line: 50, flags: DIFlagFwdDecl)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1091, file: !18, line: 1228, baseType: !1432, size: 64, offset: 1792)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !18, line: 1228, flags: DIFlagFwdDecl)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1091, file: !18, line: 1229, baseType: !360, size: 128, offset: 1856)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1091, file: !18, line: 1230, baseType: !5, size: 32, offset: 1984)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1091, file: !18, line: 1231, baseType: !1437, size: 2496, offset: 2048)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !23, line: 521, size: 2496, elements: !1438)
!1438 = !{!1439, !1440, !1441, !1443, !1475}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1437, file: !23, line: 522, baseType: !5, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1437, file: !23, line: 523, baseType: !187, size: 320, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1437, file: !23, line: 524, baseType: !1442, size: 192, offset: 384)
!1442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !877, size: 192, elements: !786)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1437, file: !23, line: 525, baseType: !1444, size: 1728, offset: 576)
!1444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1445, size: 1728, elements: !786)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !23, line: 222, size: 576, elements: !1446)
!1446 = !{!1447, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1445, file: !23, line: 223, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !23, line: 445, size: 256, elements: !1450)
!1450 = !{!1451, !1452, !1465, !1466}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1449, file: !23, line: 446, baseType: !162, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1449, file: !23, line: 447, baseType: !1453, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1455)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !23, line: 312, size: 512, elements: !1456)
!1456 = !{!1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1455, file: !23, line: 313, baseType: !1170, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1455, file: !23, line: 314, baseType: !1170, size: 64, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1455, file: !23, line: 315, baseType: !1170, size: 64, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1455, file: !23, line: 316, baseType: !1170, size: 64, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1455, file: !23, line: 317, baseType: !1283, size: 64, offset: 256)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1455, file: !23, line: 318, baseType: !1283, size: 64, offset: 320)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1455, file: !23, line: 319, baseType: !1283, size: 64, offset: 384)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1455, file: !23, line: 320, baseType: !1313, size: 64, offset: 448)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1449, file: !23, line: 448, baseType: !1123, size: 64, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1449, file: !23, line: 449, baseType: !1448, size: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1445, file: !23, line: 224, baseType: !162, size: 32, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1445, file: !23, line: 226, baseType: !172, size: 128, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1445, file: !23, line: 227, baseType: !182, size: 64, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1445, file: !23, line: 228, baseType: !5, size: 32, offset: 320)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1445, file: !23, line: 229, baseType: !5, size: 32, offset: 352)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1445, file: !23, line: 230, baseType: !1251, size: 64, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1445, file: !23, line: 231, baseType: !1251, size: 64, offset: 448)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1445, file: !23, line: 232, baseType: !231, size: 64, offset: 512)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1437, file: !23, line: 526, baseType: !1476, size: 192, offset: 2304)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1453, size: 192, elements: !786)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1091, file: !18, line: 1233, baseType: !1478, size: 2368, offset: 4544)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !18, line: 1184, size: 2368, elements: !1479)
!1479 = !{!1480, !1481, !1482}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1478, file: !18, line: 1185, baseType: !224, size: 16)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1478, file: !18, line: 1186, baseType: !224, size: 16, offset: 16)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1478, file: !18, line: 1187, baseType: !1483, size: 2304, offset: 64)
!1483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1484, size: 2304, elements: !786)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1485, line: 12, size: 768, elements: !1486)
!1485 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1486 = !{!1487, !1495, !1497, !1502, !1503}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1484, file: !1485, line: 13, baseType: !1488, size: 384)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1489, line: 17, size: 384, elements: !1490)
!1489 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1490 = !{!1491, !1492, !1493, !1494}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1488, file: !1489, line: 18, baseType: !162, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1488, file: !1489, line: 19, baseType: !162, size: 32, offset: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1488, file: !1489, line: 20, baseType: !803, size: 192, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1488, file: !1489, line: 22, baseType: !276, size: 128, align: 64, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1484, file: !1485, line: 14, baseType: !1496, size: 64, offset: 384)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1484, file: !1485, line: 15, baseType: !1498, size: 64, offset: 448)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1499, line: 16, size: 64, elements: !1500)
!1499 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1500 = !{!1501}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1498, file: !1499, line: 17, baseType: !404, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1484, file: !1485, line: 16, baseType: !803, size: 192, offset: 512)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1484, file: !1485, line: 17, baseType: !158, size: 32, offset: 704)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1091, file: !18, line: 1240, baseType: !231, size: 64, offset: 6912)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1091, file: !18, line: 1243, baseType: !97, size: 32, offset: 6976)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1091, file: !18, line: 1245, baseType: !93, size: 64, offset: 7040)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1091, file: !18, line: 1246, baseType: !93, size: 64, offset: 7104)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1091, file: !18, line: 1248, baseType: !98, size: 32, offset: 7168)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1091, file: !18, line: 1249, baseType: !1510, size: 64, offset: 7232)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !18, line: 634, flags: DIFlagFwdDecl)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1091, file: !18, line: 1252, baseType: !1513, size: 256, offset: 7296)
!1513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 256, elements: !1514)
!1514 = !{!1515}
!1515 = !DISubrange(count: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1091, file: !18, line: 1253, baseType: !1517, size: 128, offset: 7552)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1518, line: 21, baseType: !1519)
!1518 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1518, line: 19, size: 128, elements: !1520)
!1520 = !{!1521}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1519, file: !1518, line: 20, baseType: !1522, size: 128)
!1522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 128, elements: !1523)
!1523 = !{!1524}
!1524 = !DISubrange(count: 16)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1091, file: !18, line: 1255, baseType: !5, size: 32, offset: 7680)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1091, file: !18, line: 1261, baseType: !752, size: 256, offset: 7744)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1091, file: !18, line: 1267, baseType: !289, size: 64, offset: 8000)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1091, file: !18, line: 1269, baseType: !1529, size: 64, offset: 8064)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1531)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !844, line: 128, size: 1024, align: 512, elements: !1532)
!1532 = !{!1533, !1537, !1538, !1545, !1551, !1555, !1559, !1563, !1564, !1568, !1572, !1577, !1581}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1531, file: !844, line: 129, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!162, !842, !5}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1531, file: !844, line: 130, baseType: !1534, size: 64, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1531, file: !844, line: 131, baseType: !1539, size: 64, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!162, !1542, !1544}
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !843)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1531, file: !844, line: 132, baseType: !1546, size: 64, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!162, !1542, !5, !289, !1549}
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1531, file: !844, line: 134, baseType: !1552, size: 64, offset: 256)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!162, !1542}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1531, file: !844, line: 135, baseType: !1556, size: 64, offset: 320)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!162, !842}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1531, file: !844, line: 136, baseType: !1560, size: 64, offset: 384)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !842}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1531, file: !844, line: 137, baseType: !1560, size: 64, offset: 448)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1531, file: !844, line: 138, baseType: !1565, size: 64, offset: 512)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{null, !842, !877}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1531, file: !844, line: 139, baseType: !1569, size: 64, offset: 576)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!299, !842, !299, !162}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1531, file: !844, line: 140, baseType: !1573, size: 64, offset: 640)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!837, !1576}
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1531, file: !844, line: 141, baseType: !1578, size: 64, offset: 704)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!162, !1000, !286}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1531, file: !844, line: 142, baseType: !1582, size: 64, offset: 768)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!842, !842, !1585}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !878)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1091, file: !18, line: 1271, baseType: !1588, size: 448, offset: 8128)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1266, line: 63, size: 448, elements: !1589)
!1589 = !{!1590, !1595, !1596, !1597, !1598, !1599, !1600}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1588, file: !1266, line: 64, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!182, !1594, !1264}
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1588, file: !1266, line: 66, baseType: !1591, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1588, file: !1266, line: 69, baseType: !992, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1588, file: !1266, line: 70, baseType: !162, size: 32, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1588, file: !1266, line: 71, baseType: !5, size: 32, offset: 224)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1588, file: !1266, line: 74, baseType: !172, size: 128, offset: 256)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1588, file: !1266, line: 85, baseType: !1601, size: 64, offset: 384)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1091, file: !18, line: 1274, baseType: !105, size: 64, offset: 8576)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1091, file: !18, line: 1280, baseType: !105, size: 64, offset: 8640)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1091, file: !18, line: 1283, baseType: !162, size: 32, offset: 8704)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1091, file: !18, line: 1286, baseType: !1606, size: 32, offset: 8736)
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1607, line: 8, baseType: !97)
!1607 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1091, file: !18, line: 1289, baseType: !1609, size: 64, offset: 8768)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1611, line: 18, flags: DIFlagFwdDecl)
!1611 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1091, file: !18, line: 1290, baseType: !798, size: 64, offset: 8832)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1091, file: !18, line: 1297, baseType: !380, size: 64, offset: 8896)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1091, file: !18, line: 1304, baseType: !1615, size: 64, offset: 8960)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1616, line: 49, size: 64, elements: !1617)
!1616 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!1617 = !{!1618}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1615, file: !1616, line: 50, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1616, line: 41, size: 512, align: 512, elements: !1621)
!1621 = !{!1622, !1623, !1628}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1620, file: !1616, line: 43, baseType: !720, size: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1620, file: !1616, line: 45, baseType: !1624, size: 192, offset: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1616, line: 29, size: 192, elements: !1625)
!1625 = !{!1626, !1627}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1624, file: !1616, line: 30, baseType: !172, size: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1624, file: !1616, line: 32, baseType: !992, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1620, file: !1616, line: 46, baseType: !992, size: 64, offset: 256)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1091, file: !18, line: 1305, baseType: !1615, size: 64, offset: 9024)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1091, file: !18, line: 1306, baseType: !276, size: 128, align: 64, offset: 9088)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1091, file: !18, line: 1307, baseType: !1632, size: 256, offset: 9216)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1611, line: 98, size: 256, elements: !1633)
!1633 = !{!1634, !1635, !1636}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1632, file: !1611, line: 99, baseType: !105, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1632, file: !1611, line: 100, baseType: !172, size: 128, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1632, file: !1611, line: 101, baseType: !1637, size: 64, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1611, line: 21, baseType: !1638)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{null, !1641}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1091, file: !18, line: 1309, baseType: !752, size: 256, offset: 9472)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1091, file: !18, line: 1314, baseType: !162, size: 32, offset: 9728)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1091, file: !18, line: 1317, baseType: !720, size: 32, align: 512, offset: 10240)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1091, file: !18, line: 1318, baseType: !172, size: 128, offset: 10304)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1091, file: !18, line: 1320, baseType: !720, size: 32, offset: 10432)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1091, file: !18, line: 1321, baseType: !172, size: 128, offset: 10496)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !878, file: !18, line: 656, baseType: !1649, size: 64, offset: 512)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !18, line: 472, size: 1536, align: 64, elements: !1651)
!1651 = !{!1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !2141, !2142, !2143, !2144, !2145, !2146}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1650, file: !18, line: 473, baseType: !877, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1650, file: !18, line: 474, baseType: !1081, size: 128, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1650, file: !18, line: 475, baseType: !187, size: 320, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1650, file: !18, line: 476, baseType: !1086, size: 32, offset: 512)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1650, file: !18, line: 477, baseType: !158, size: 32, offset: 544)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1650, file: !18, line: 482, baseType: !585, size: 128, offset: 576)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1650, file: !18, line: 483, baseType: !182, size: 64, offset: 704)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1650, file: !18, line: 484, baseType: !182, size: 64, offset: 768)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1650, file: !18, line: 485, baseType: !1661, size: 64, offset: 832)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1663)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !18, line: 404, size: 1280, elements: !1664)
!1664 = !{!1665, !1966, !2036, !2040, !2044, !2050, !2056, !2060, !2065, !2069, !2073, !2077, !2105, !2109, !2113, !2117, !2122, !2126, !2133, !2137}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1663, file: !18, line: 405, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!162, !1669, !1161}
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !37, line: 74, size: 512, align: 128, elements: !1671)
!1671 = !{!1672, !1673, !1960, !1965}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1670, file: !37, line: 75, baseType: !182, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1670, file: !37, line: 83, baseType: !1674, size: 320, offset: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1670, file: !37, line: 83, size: 320, elements: !1675)
!1675 = !{!1676, !1697, !1711, !1715, !1959}
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !37, line: 84, baseType: !1677, size: 320)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1674, file: !37, line: 84, size: 320, elements: !1678)
!1678 = !{!1679, !1690, !1691, !1696}
!1679 = !DIDerivedType(tag: DW_TAG_member, scope: !1677, file: !37, line: 90, baseType: !1680, size: 128)
!1680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1677, file: !37, line: 90, size: 128, elements: !1681)
!1681 = !{!1682, !1683, !1688, !1689}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1680, file: !37, line: 91, baseType: !172, size: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, scope: !1680, file: !37, line: 94, baseType: !1684, size: 128)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1680, file: !37, line: 94, size: 128, elements: !1685)
!1685 = !{!1686, !1687}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1684, file: !37, line: 96, baseType: !231, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1684, file: !37, line: 98, baseType: !5, size: 32, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1680, file: !37, line: 102, baseType: !172, size: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1680, file: !37, line: 103, baseType: !172, size: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1677, file: !37, line: 106, baseType: !1649, size: 64, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, scope: !1677, file: !37, line: 107, baseType: !1692, size: 64, offset: 192)
!1692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1677, file: !37, line: 107, size: 64, elements: !1693)
!1693 = !{!1694, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1692, file: !37, line: 108, baseType: !182, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1692, file: !37, line: 109, baseType: !182, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1677, file: !37, line: 117, baseType: !182, size: 64, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !37, line: 119, baseType: !1698, size: 320)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1674, file: !37, line: 119, size: 320, elements: !1699)
!1699 = !{!1700, !1701, !1704, !1705, !1706}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1698, file: !37, line: 124, baseType: !182, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1698, file: !37, line: 125, baseType: !1702, size: 64, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !37, line: 125, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1698, file: !37, line: 126, baseType: !182, size: 64, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1698, file: !37, line: 127, baseType: !182, size: 64, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_member, scope: !1698, file: !37, line: 128, baseType: !1707, size: 64, offset: 256)
!1707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1698, file: !37, line: 128, size: 64, elements: !1708)
!1708 = !{!1709, !1710}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1707, file: !37, line: 133, baseType: !182, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1707, file: !37, line: 138, baseType: !105, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !37, line: 141, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1674, file: !37, line: 141, size: 64, elements: !1713)
!1713 = !{!1714}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1712, file: !37, line: 142, baseType: !182, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !37, line: 144, baseType: !1716, size: 128)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1674, file: !37, line: 144, size: 128, elements: !1717)
!1717 = !{!1718, !1958}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1716, file: !37, line: 146, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !29, line: 126, size: 1216, elements: !1721)
!1721 = !{!1722, !1732, !1753, !1764, !1765, !1766, !1767, !1940, !1941, !1942}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1720, file: !29, line: 127, baseType: !1723, size: 384)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !29, line: 21, size: 384, elements: !1724)
!1724 = !{!1725, !1726, !1728, !1729, !1730, !1731}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1723, file: !29, line: 22, baseType: !182, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1723, file: !29, line: 23, baseType: !1727, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1723, file: !29, line: 24, baseType: !1727, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1723, file: !29, line: 25, baseType: !182, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1723, file: !29, line: 26, baseType: !182, size: 64, offset: 256)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1723, file: !29, line: 27, baseType: !182, size: 64, offset: 320)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1720, file: !29, line: 128, baseType: !1733, size: 128, offset: 384)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1734, line: 105, size: 128, elements: !1735)
!1734 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1735 = !{!1736, !1737}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1733, file: !1734, line: 110, baseType: !182, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1733, file: !1734, line: 118, baseType: !1738, size: 64, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1734, line: 95, size: 448, elements: !1740)
!1740 = !{!1741, !1742, !1748, !1749, !1750, !1751, !1752}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1739, file: !1734, line: 96, baseType: !105, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1739, file: !1734, line: 97, baseType: !1743, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1734, line: 60, baseType: !1745)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{null, !1747}
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1739, file: !1734, line: 98, baseType: !1743, size: 64, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1739, file: !1734, line: 99, baseType: !286, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1739, file: !1734, line: 100, baseType: !286, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1739, file: !1734, line: 101, baseType: !276, size: 128, align: 64, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1739, file: !1734, line: 102, baseType: !1747, size: 64, offset: 384)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1720, file: !29, line: 129, baseType: !1754, size: 256, offset: 512)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1755, line: 26, size: 256, elements: !1756)
!1755 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1756 = !{!1757, !1758}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1754, file: !1755, line: 27, baseType: !5, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1754, file: !1755, line: 28, baseType: !1759, size: 192, offset: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1760, line: 43, size: 192, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1761 = !{!1762, !1763}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1759, file: !1760, line: 44, baseType: !198, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1759, file: !1760, line: 45, baseType: !172, size: 128, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1720, file: !29, line: 130, baseType: !28, size: 32, offset: 768)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1720, file: !29, line: 131, baseType: !5, size: 32, offset: 800)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1720, file: !29, line: 132, baseType: !182, size: 64, offset: 832)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1720, file: !29, line: 133, baseType: !1768, size: 64, offset: 896)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1770)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !29, line: 77, size: 192, elements: !1771)
!1771 = !{!1772, !1776, !1936}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1770, file: !29, line: 83, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{null, !1669}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1770, file: !29, line: 89, baseType: !1777, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!1780, !1781}
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !37, line: 1184, baseType: !5)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1783, line: 512, size: 896, elements: !1784)
!1783 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1784 = !{!1785, !1903, !1904, !1911, !1918, !1928, !1929, !1930, !1932, !1934}
!1785 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !1783, line: 513, baseType: !1786, size: 320)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1782, file: !1783, line: 513, size: 320, elements: !1787)
!1787 = !{!1788, !1899, !1900, !1901, !1902}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1786, file: !1783, line: 514, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !37, line: 625, size: 1344, elements: !1791)
!1791 = !{!1792, !1801, !1802, !1810, !1817, !1818, !1823, !1824, !1829, !1830, !1833, !1892, !1893, !1894, !1895, !1896, !1897}
!1792 = !DIDerivedType(tag: DW_TAG_member, scope: !1790, file: !37, line: 628, baseType: !1793, size: 128)
!1793 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1790, file: !37, line: 628, size: 128, elements: !1794)
!1794 = !{!1795, !1800}
!1795 = !DIDerivedType(tag: DW_TAG_member, scope: !1793, file: !37, line: 629, baseType: !1796, size: 128)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1793, file: !37, line: 629, size: 128, elements: !1797)
!1797 = !{!1798, !1799}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1796, file: !37, line: 631, baseType: !182, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1796, file: !37, line: 632, baseType: !182, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1793, file: !37, line: 635, baseType: !276, size: 128, align: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1790, file: !37, line: 639, baseType: !702, size: 64, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1790, file: !37, line: 640, baseType: !1803, size: 64, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1804, line: 297, baseType: !1805)
!1804 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1804, line: 297, size: 64, elements: !1806)
!1806 = !{!1807}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1805, file: !1804, line: 297, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1809, line: 19, baseType: !182)
!1809 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1810 = !DIDerivedType(tag: DW_TAG_member, scope: !1790, file: !37, line: 646, baseType: !1811, size: 64, offset: 256)
!1811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1790, file: !37, line: 646, size: 64, elements: !1812)
!1812 = !{!1813, !1816}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1811, file: !37, line: 647, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1815)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !37, line: 542, baseType: !182)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1811, file: !37, line: 648, baseType: !1815, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1790, file: !37, line: 666, baseType: !162, size: 32, offset: 320)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1790, file: !37, line: 667, baseType: !1819, size: 64, offset: 384)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !37, line: 579, size: 320, elements: !1821)
!1821 = !{!1822}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1820, file: !37, line: 580, baseType: !187, size: 320)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1790, file: !37, line: 670, baseType: !286, size: 8, offset: 448)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1790, file: !37, line: 681, baseType: !1825, size: 256, offset: 512)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1790, file: !37, line: 678, size: 256, elements: !1826)
!1826 = !{!1827, !1828}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1825, file: !37, line: 679, baseType: !178, size: 192, align: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1825, file: !37, line: 680, baseType: !182, size: 64, offset: 192)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1790, file: !37, line: 689, baseType: !172, size: 128, offset: 768)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1790, file: !37, line: 691, baseType: !1831, size: 64, offset: 896)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !37, line: 691, flags: DIFlagFwdDecl)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1790, file: !37, line: 694, baseType: !1834, size: 64, offset: 960)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1836)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1783, line: 563, size: 1024, elements: !1837)
!1837 = !{!1838, !1842, !1843, !1847, !1851, !1855, !1856, !1860, !1864, !1868, !1869, !1870, !1874, !1878, !1884, !1888}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1836, file: !1783, line: 564, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null, !1789}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1836, file: !1783, line: 569, baseType: !1839, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1836, file: !1783, line: 571, baseType: !1844, size: 64, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!162, !1789, !182}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1836, file: !1783, line: 572, baseType: !1848, size: 64, offset: 192)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!162, !1789}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1836, file: !1783, line: 578, baseType: !1852, size: 64, offset: 256)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!162, !1789, !182, !182, !182}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1836, file: !1783, line: 580, baseType: !1777, size: 64, offset: 320)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1836, file: !1783, line: 581, baseType: !1857, size: 64, offset: 384)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!1780, !1781, !5}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1836, file: !1783, line: 582, baseType: !1861, size: 64, offset: 448)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!1780, !1781, !182, !182}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1836, file: !1783, line: 584, baseType: !1865, size: 64, offset: 512)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!182, !1789}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1836, file: !1783, line: 588, baseType: !1777, size: 64, offset: 576)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1836, file: !1783, line: 591, baseType: !1777, size: 64, offset: 640)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1836, file: !1783, line: 597, baseType: !1871, size: 64, offset: 704)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!162, !1789, !182, !231, !162, !162}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1836, file: !1783, line: 603, baseType: !1875, size: 64, offset: 768)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!289, !1789}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1836, file: !1783, line: 613, baseType: !1879, size: 64, offset: 832)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!162, !1789, !1882}
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !406, line: 54, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1836, file: !1783, line: 625, baseType: !1885, size: 64, offset: 896)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!1882, !1789, !182}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1836, file: !1783, line: 633, baseType: !1889, size: 64, offset: 960)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!1669, !1789, !182}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1790, file: !37, line: 697, baseType: !182, size: 64, offset: 1024)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1790, file: !37, line: 699, baseType: !738, size: 64, offset: 1088)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1790, file: !37, line: 700, baseType: !231, size: 64, offset: 1152)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1790, file: !37, line: 711, baseType: !105, size: 64, offset: 1216)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1790, file: !37, line: 717, baseType: !1882, size: 64, offset: 1280)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1790, file: !37, line: 722, baseType: !1898, offset: 1344)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !37, line: 570, elements: !731)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1786, file: !1783, line: 515, baseType: !1086, size: 32, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1786, file: !1783, line: 516, baseType: !182, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1786, file: !1783, line: 517, baseType: !182, size: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1786, file: !1783, line: 518, baseType: !182, size: 64, offset: 256)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1782, file: !1783, line: 520, baseType: !36, size: 32, offset: 320)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1782, file: !1783, line: 522, baseType: !1905, size: 64, offset: 384)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1809, line: 22, baseType: !1907)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1809, line: 22, size: 64, elements: !1908)
!1908 = !{!1909}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1907, file: !1809, line: 22, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1809, line: 15, baseType: !182)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1782, file: !1783, line: 524, baseType: !1912, size: 64, offset: 448)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1804, line: 372, baseType: !1914)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1804, line: 372, size: 64, elements: !1915)
!1915 = !{!1916}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1914, file: !1804, line: 372, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1809, line: 16, baseType: !182)
!1918 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !1783, line: 527, baseType: !1919, size: 64, offset: 512)
!1919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1782, file: !1783, line: 527, size: 64, elements: !1920)
!1920 = !{!1921, !1927}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1919, file: !1783, line: 528, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1809, line: 21, baseType: !1923)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1809, line: 21, size: 64, elements: !1924)
!1924 = !{!1925}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1923, file: !1809, line: 21, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1809, line: 14, baseType: !182)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1919, file: !1783, line: 529, baseType: !1906, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1782, file: !1783, line: 534, baseType: !1669, size: 64, offset: 576)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1782, file: !1783, line: 535, baseType: !1669, size: 64, offset: 640)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1782, file: !1783, line: 541, baseType: !1931, size: 64, offset: 704)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1782, file: !1783, line: 545, baseType: !1933, size: 64, offset: 768)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1782, file: !1783, line: 549, baseType: !1935, size: 64, offset: 832)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1804, line: 520, baseType: !1669)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1770, file: !29, line: 100, baseType: !1937, size: 64, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!162, !1719, !182, !182, !162}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1720, file: !29, line: 134, baseType: !231, size: 64, offset: 960)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1720, file: !29, line: 135, baseType: !162, size: 32, offset: 1024)
!1942 = !DIDerivedType(tag: DW_TAG_member, scope: !1720, file: !29, line: 136, baseType: !1943, size: 128, offset: 1088)
!1943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1720, file: !29, line: 136, size: 128, elements: !1944)
!1944 = !{!1945, !1951}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1943, file: !29, line: 137, baseType: !1946, size: 128)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1947, line: 6, size: 128, elements: !1948)
!1947 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1948 = !{!1949, !1950}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1946, file: !1947, line: 7, baseType: !88, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1946, file: !1947, line: 8, baseType: !88, size: 64, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, scope: !1943, file: !29, line: 138, baseType: !1952)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1943, file: !29, line: 138, elements: !1953)
!1953 = !{!1954, !1956}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1952, file: !29, line: 138, baseType: !1955)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1952, file: !29, line: 138, elements: !731)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1952, file: !29, line: 138, baseType: !1957)
!1957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1946, elements: !394)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1716, file: !37, line: 147, baseType: !231, size: 64, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1674, file: !37, line: 161, baseType: !276, size: 128, align: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, scope: !1670, file: !37, line: 164, baseType: !1961, size: 32, offset: 384)
!1961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1670, file: !37, line: 164, size: 32, elements: !1962)
!1962 = !{!1963, !1964}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1961, file: !37, line: 169, baseType: !158, size: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1961, file: !37, line: 177, baseType: !5, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1670, file: !37, line: 181, baseType: !158, size: 32, offset: 416)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1663, file: !18, line: 406, baseType: !1967, size: 64, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!162, !738, !1970}
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !37, line: 293, size: 1536, elements: !1972)
!1972 = !{!1973, !2003, !2017}
!1973 = !DIDerivedType(tag: DW_TAG_member, scope: !1971, file: !37, line: 295, baseType: !1974, size: 512)
!1974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1971, file: !37, line: 295, size: 512, elements: !1975)
!1975 = !{!1976, !2002}
!1976 = !DIDerivedType(tag: DW_TAG_member, scope: !1974, file: !37, line: 296, baseType: !1977, size: 448)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1974, file: !37, line: 296, size: 448, elements: !1978)
!1978 = !{!1979, !1980, !1989, !1990, !1991, !2000, !2001}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1977, file: !37, line: 298, baseType: !182, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, scope: !1977, file: !37, line: 299, baseType: !1981, size: 128, offset: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1977, file: !37, line: 299, size: 128, elements: !1982)
!1982 = !{!1983, !1984}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1981, file: !37, line: 300, baseType: !172, size: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, scope: !1981, file: !37, line: 302, baseType: !1985, size: 128)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !37, line: 302, size: 128, elements: !1986)
!1986 = !{!1987, !1988}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1985, file: !37, line: 303, baseType: !231, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1985, file: !37, line: 305, baseType: !5, size: 32, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1977, file: !37, line: 310, baseType: !1649, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1977, file: !37, line: 311, baseType: !182, size: 64, offset: 256)
!1991 = !DIDerivedType(tag: DW_TAG_member, scope: !1977, file: !37, line: 312, baseType: !1992, size: 64, offset: 320)
!1992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1977, file: !37, line: 312, size: 64, elements: !1993)
!1993 = !{!1994, !1995}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1992, file: !37, line: 313, baseType: !231, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1992, file: !37, line: 314, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !37, line: 257, baseType: !1997)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 255, size: 64, elements: !1998)
!1998 = !{!1999}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1997, file: !37, line: 256, baseType: !182, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1977, file: !37, line: 316, baseType: !158, size: 32, offset: 384)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1977, file: !37, line: 317, baseType: !158, size: 32, offset: 416)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1974, file: !37, line: 323, baseType: !1670, size: 512, align: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, scope: !1971, file: !37, line: 325, baseType: !2004, size: 512, offset: 512)
!2004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1971, file: !37, line: 325, size: 512, elements: !2005)
!2005 = !{!2006, !2016}
!2006 = !DIDerivedType(tag: DW_TAG_member, scope: !2004, file: !37, line: 326, baseType: !2007, size: 320)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2004, file: !37, line: 326, size: 320, elements: !2008)
!2008 = !{!2009, !2010, !2011, !2012, !2013, !2014, !2015}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2007, file: !37, line: 327, baseType: !182, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2007, file: !37, line: 328, baseType: !182, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2007, file: !37, line: 329, baseType: !182, size: 64, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2007, file: !37, line: 331, baseType: !158, size: 32, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2007, file: !37, line: 332, baseType: !158, size: 32, offset: 224)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2007, file: !37, line: 333, baseType: !158, size: 32, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2007, file: !37, line: 335, baseType: !5, size: 32, offset: 288)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2004, file: !37, line: 339, baseType: !1670, size: 512, align: 128)
!2017 = !DIDerivedType(tag: DW_TAG_member, scope: !1971, file: !37, line: 341, baseType: !2018, size: 512, offset: 1024)
!2018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1971, file: !37, line: 341, size: 512, elements: !2019)
!2019 = !{!2020, !2029, !2035}
!2020 = !DIDerivedType(tag: DW_TAG_member, scope: !2018, file: !37, line: 342, baseType: !2021, size: 384)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2018, file: !37, line: 342, size: 384, elements: !2022)
!2022 = !{!2023, !2024, !2025, !2026, !2027, !2028}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2021, file: !37, line: 343, baseType: !182, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2021, file: !37, line: 344, baseType: !182, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2021, file: !37, line: 346, baseType: !231, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2021, file: !37, line: 347, baseType: !231, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2021, file: !37, line: 348, baseType: !231, size: 64, offset: 256)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2021, file: !37, line: 349, baseType: !231, size: 64, offset: 320)
!2029 = !DIDerivedType(tag: DW_TAG_member, scope: !2018, file: !37, line: 352, baseType: !2030, size: 256)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2018, file: !37, line: 352, size: 256, elements: !2031)
!2031 = !{!2032, !2033, !2034}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2030, file: !37, line: 353, baseType: !182, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2030, file: !37, line: 354, baseType: !182, size: 64, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2030, file: !37, line: 356, baseType: !172, size: 128, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2018, file: !37, line: 359, baseType: !1670, size: 512, align: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1663, file: !18, line: 409, baseType: !2037, size: 64, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!162, !1649, !1161}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1663, file: !18, line: 412, baseType: !2041, size: 64, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!286, !1649, !1970}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1663, file: !18, line: 414, baseType: !2045, size: 64, offset: 256)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{null, !2048}
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !18, line: 310, flags: DIFlagFwdDecl)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1663, file: !18, line: 416, baseType: !2051, size: 64, offset: 320)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!162, !738, !1649, !760, !5, !2054, !2055}
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1663, file: !18, line: 419, baseType: !2057, size: 64, offset: 384)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!162, !738, !1649, !760, !5, !5, !1669, !231}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1663, file: !18, line: 424, baseType: !2061, size: 64, offset: 448)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!2064, !1649, !2064}
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !87, line: 131, baseType: !88)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1663, file: !18, line: 425, baseType: !2066, size: 64, offset: 512)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{null, !1970, !1034, !1034}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1663, file: !18, line: 426, baseType: !2070, size: 64, offset: 576)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!286, !1970, !1086}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1663, file: !18, line: 427, baseType: !2074, size: 64, offset: 640)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{null, !1970}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1663, file: !18, line: 428, baseType: !2078, size: 64, offset: 704)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!1031, !2081, !2103}
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !18, line: 373, size: 384, elements: !2083)
!2083 = !{!2084, !2085, !2086, !2090, !2091, !2092, !2093}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2082, file: !18, line: 374, baseType: !738, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2082, file: !18, line: 375, baseType: !760, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2082, file: !18, line: 376, baseType: !2087, size: 64, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !2081, !992}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2082, file: !18, line: 377, baseType: !231, size: 64, offset: 192)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2082, file: !18, line: 378, baseType: !162, size: 32, offset: 256)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2082, file: !18, line: 379, baseType: !222, size: 16, offset: 288)
!2093 = !DIDerivedType(tag: DW_TAG_member, scope: !2082, file: !18, line: 380, baseType: !2094, size: 64, offset: 320)
!2094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2082, file: !18, line: 380, size: 64, elements: !2095)
!2095 = !{!2096, !2099}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2094, file: !18, line: 386, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !18, line: 386, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2094, file: !18, line: 395, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!1031, !231}
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !18, line: 69, flags: DIFlagFwdDecl)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1663, file: !18, line: 433, baseType: !2106, size: 64, offset: 768)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!162, !1649, !1970, !1970, !52}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1663, file: !18, line: 435, baseType: !2110, size: 64, offset: 832)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!162, !1970}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1663, file: !18, line: 436, baseType: !2114, size: 64, offset: 896)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!286, !1970, !1034, !1034}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1663, file: !18, line: 438, baseType: !2118, size: 64, offset: 960)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{null, !1970, !2121, !2121}
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1663, file: !18, line: 439, baseType: !2123, size: 64, offset: 1024)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!162, !1649, !1669}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1663, file: !18, line: 442, baseType: !2127, size: 64, offset: 1088)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!162, !2130, !738, !2132}
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !18, line: 66, flags: DIFlagFwdDecl)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1663, file: !18, line: 444, baseType: !2134, size: 64, offset: 1152)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{null, !738}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1663, file: !18, line: 445, baseType: !2138, size: 64, offset: 1216)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!162, !2081, !2103}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1650, file: !18, line: 486, baseType: !182, size: 64, offset: 896)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1650, file: !18, line: 487, baseType: !187, size: 320, offset: 960)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1650, file: !18, line: 488, baseType: !1606, size: 32, offset: 1280)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1650, file: !18, line: 489, baseType: !720, size: 32, offset: 1312)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1650, file: !18, line: 490, baseType: !172, size: 128, offset: 1344)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1650, file: !18, line: 491, baseType: !231, size: 64, offset: 1472)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !878, file: !18, line: 659, baseType: !231, size: 64, offset: 576)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !878, file: !18, line: 663, baseType: !182, size: 64, offset: 640)
!2149 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !18, line: 671, baseType: !2150, size: 32, offset: 704)
!2150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !18, line: 671, size: 32, elements: !2151)
!2151 = !{!2152, !2154}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2150, file: !18, line: 672, baseType: !2153, size: 32)
!2153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2150, file: !18, line: 673, baseType: !5, size: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !878, file: !18, line: 675, baseType: !952, size: 32, offset: 736)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !878, file: !18, line: 676, baseType: !760, size: 64, offset: 768)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !878, file: !18, line: 677, baseType: !988, size: 128, offset: 832)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !878, file: !18, line: 678, baseType: !988, size: 128, offset: 960)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !878, file: !18, line: 679, baseType: !988, size: 128, offset: 1088)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !878, file: !18, line: 680, baseType: !720, size: 32, offset: 1216)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !878, file: !18, line: 681, baseType: !224, size: 16, offset: 1248)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !878, file: !18, line: 682, baseType: !215, size: 8, offset: 1264)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !878, file: !18, line: 683, baseType: !215, size: 8, offset: 1272)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !878, file: !18, line: 684, baseType: !1397, size: 64, offset: 1280)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !878, file: !18, line: 691, baseType: !182, size: 64, offset: 1344)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !878, file: !18, line: 692, baseType: !187, size: 320, offset: 1408)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !878, file: !18, line: 694, baseType: !182, size: 64, offset: 1728)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !878, file: !18, line: 695, baseType: !182, size: 64, offset: 1792)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !878, file: !18, line: 697, baseType: !360, size: 128, offset: 1856)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !878, file: !18, line: 698, baseType: !172, size: 128, offset: 1984)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !878, file: !18, line: 707, baseType: !172, size: 128, offset: 2112)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !878, file: !18, line: 708, baseType: !172, size: 128, offset: 2240)
!2173 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !18, line: 709, baseType: !2174, size: 128, offset: 2368)
!2174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !18, line: 709, size: 128, elements: !2175)
!2175 = !{!2176, !2177}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2174, file: !18, line: 710, baseType: !798, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2174, file: !18, line: 711, baseType: !276, size: 128, align: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !878, file: !18, line: 713, baseType: !107, size: 64, offset: 2496)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !878, file: !18, line: 714, baseType: !107, size: 64, offset: 2560)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !878, file: !18, line: 715, baseType: !158, size: 32, offset: 2624)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !878, file: !18, line: 716, baseType: !158, size: 32, offset: 2656)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !878, file: !18, line: 717, baseType: !158, size: 32, offset: 2688)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !878, file: !18, line: 719, baseType: !158, size: 32, offset: 2720)
!2184 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !18, line: 721, baseType: !2185, size: 64, offset: 2752)
!2185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !18, line: 721, size: 64, elements: !2186)
!2186 = !{!2187, !2318}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2185, file: !18, line: 722, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2190)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !18, line: 1914, size: 2112, elements: !2191)
!2191 = !{!2192, !2193, !2197, !2202, !2206, !2207, !2208, !2214, !2227, !2235, !2239, !2240, !2244, !2245, !2249, !2254, !2255, !2259, !2263, !2269, !2270, !2274, !2275, !2281, !2285, !2286, !2291, !2295, !2299, !2303, !2307, !2308, !2314}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2190, file: !18, line: 1915, baseType: !1123, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2190, file: !18, line: 1916, baseType: !2194, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!760, !738, !760, !162}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2190, file: !18, line: 1917, baseType: !2198, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!1031, !738, !299, !1034, !2201}
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2190, file: !18, line: 1918, baseType: !2203, size: 64, offset: 192)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!1031, !738, !289, !1034, !2201}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2190, file: !18, line: 1919, baseType: !2078, size: 64, offset: 256)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2190, file: !18, line: 1920, baseType: !2078, size: 64, offset: 320)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2190, file: !18, line: 1921, baseType: !2209, size: 64, offset: 384)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!162, !2081, !2212, !5}
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !18, line: 53, flags: DIFlagFwdDecl)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2190, file: !18, line: 1923, baseType: !2215, size: 64, offset: 448)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!162, !738, !2218}
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !18, line: 1858, size: 128, elements: !2220)
!2220 = !{!2221, !2226}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2219, file: !18, line: 1859, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !18, line: 1855, baseType: !2223)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!286, !2218, !289, !162, !760, !88, !5}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2219, file: !18, line: 1860, baseType: !760, size: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2190, file: !18, line: 1924, baseType: !2228, size: 64, offset: 512)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!2231, !738, !2233}
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2232, line: 59, baseType: !5)
!2232 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !18, line: 61, flags: DIFlagFwdDecl)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2190, file: !18, line: 1925, baseType: !2236, size: 64, offset: 576)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!992, !738, !5, !182}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2190, file: !18, line: 1926, baseType: !2236, size: 64, offset: 640)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2190, file: !18, line: 1927, baseType: !2241, size: 64, offset: 704)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!162, !738, !1789}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2190, file: !18, line: 1928, baseType: !182, size: 64, offset: 768)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2190, file: !18, line: 1929, baseType: !2246, size: 64, offset: 832)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!162, !877, !738}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2190, file: !18, line: 1930, baseType: !2250, size: 64, offset: 896)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!162, !738, !2253}
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !18, line: 1061, baseType: !231)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2190, file: !18, line: 1931, baseType: !2246, size: 64, offset: 960)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2190, file: !18, line: 1932, baseType: !2256, size: 64, offset: 1024)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!162, !738, !760, !760, !162}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2190, file: !18, line: 1933, baseType: !2260, size: 64, offset: 1088)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!162, !162, !738, !162}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2190, file: !18, line: 1934, baseType: !2264, size: 64, offset: 1152)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!162, !738, !162, !2267}
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !18, line: 1063, flags: DIFlagFwdDecl)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2190, file: !18, line: 1935, baseType: !735, size: 64, offset: 1216)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2190, file: !18, line: 1936, baseType: !2271, size: 64, offset: 1280)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!162, !162}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2190, file: !18, line: 1937, baseType: !2264, size: 64, offset: 1344)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2190, file: !18, line: 1938, baseType: !2276, size: 64, offset: 1408)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!1031, !2279, !738, !2201, !1034, !5}
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !406, line: 59, flags: DIFlagFwdDecl)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2190, file: !18, line: 1939, baseType: !2282, size: 64, offset: 1472)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!1031, !738, !2201, !2279, !1034, !5}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2190, file: !18, line: 1940, baseType: !2134, size: 64, offset: 1536)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2190, file: !18, line: 1941, baseType: !2287, size: 64, offset: 1600)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!162, !738, !162, !2290, !2055}
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2190, file: !18, line: 1942, baseType: !2292, size: 64, offset: 1664)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!992, !738, !162, !760, !760}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2190, file: !18, line: 1944, baseType: !2296, size: 64, offset: 1728)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{null, !1199, !738}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2190, file: !18, line: 1948, baseType: !2300, size: 64, offset: 1792)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!1031, !738, !760, !738, !760, !1034, !5}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2190, file: !18, line: 1950, baseType: !2304, size: 64, offset: 1856)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!760, !738, !760, !738, !760, !760, !5}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2190, file: !18, line: 1953, baseType: !2256, size: 64, offset: 1920)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2190, file: !18, line: 1954, baseType: !2309, size: 64, offset: 1984)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!162, !2312, !5}
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !18, line: 1911, flags: DIFlagFwdDecl)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2190, file: !18, line: 1955, baseType: !2315, size: 64, offset: 2048)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!162, !2312, !2212, !5}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2185, file: !18, line: 723, baseType: !1149, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !878, file: !18, line: 725, baseType: !2320, size: 64, offset: 2816)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !18, line: 725, flags: DIFlagFwdDecl)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !878, file: !18, line: 726, baseType: !1650, size: 1536, align: 64, offset: 2880)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !878, file: !18, line: 727, baseType: !172, size: 128, offset: 4416)
!2324 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !18, line: 728, baseType: !2325, size: 64, offset: 4544)
!2325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !18, line: 728, size: 64, elements: !2326)
!2326 = !{!2327, !2328, !2331, !2332}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2325, file: !18, line: 729, baseType: !2279, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2325, file: !18, line: 730, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !18, line: 730, flags: DIFlagFwdDecl)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2325, file: !18, line: 731, baseType: !299, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2325, file: !18, line: 732, baseType: !5, size: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !878, file: !18, line: 735, baseType: !98, size: 32, offset: 4608)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !878, file: !18, line: 738, baseType: !98, size: 32, offset: 4640)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !878, file: !18, line: 739, baseType: !1510, size: 64, offset: 4672)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !878, file: !18, line: 750, baseType: !231, size: 64, offset: 4736)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !843, file: !844, line: 91, baseType: !2338, size: 256, offset: 448)
!2338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 256, elements: !1514)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !843, file: !844, line: 94, baseType: !2340, size: 64, offset: 704)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2341, line: 25, size: 64, elements: !2342)
!2341 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2342 = !{!2343}
!2343 = !DIDerivedType(tag: DW_TAG_member, scope: !2340, file: !2341, line: 26, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2340, file: !2341, line: 26, size: 64, elements: !2345)
!2345 = !{!2346, !2347}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2344, file: !2341, line: 28, baseType: !90, size: 64, align: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, scope: !2344, file: !2341, line: 30, baseType: !2348, size: 64)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2344, file: !2341, line: 30, size: 64, elements: !2349)
!2349 = !{!2350, !2351}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2348, file: !2341, line: 31, baseType: !720, size: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2348, file: !2341, line: 32, baseType: !162, size: 32, offset: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !843, file: !844, line: 95, baseType: !1529, size: 64, offset: 768)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !843, file: !844, line: 96, baseType: !1090, size: 64, offset: 832)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !843, file: !844, line: 97, baseType: !182, size: 64, offset: 896)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !843, file: !844, line: 98, baseType: !231, size: 64, offset: 960)
!2356 = !DIDerivedType(tag: DW_TAG_member, scope: !843, file: !844, line: 100, baseType: !2357, size: 128, offset: 1024)
!2357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !843, file: !844, line: 100, size: 128, elements: !2358)
!2358 = !{!2359, !2360}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2357, file: !844, line: 101, baseType: !172, size: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2357, file: !844, line: 102, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !843, file: !844, line: 104, baseType: !172, size: 128, offset: 1152)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !843, file: !844, line: 105, baseType: !172, size: 128, offset: 1280)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !843, file: !844, line: 113, baseType: !2365, size: 128, offset: 1408)
!2365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !843, file: !844, line: 109, size: 128, elements: !2366)
!2366 = !{!2367, !2368, !2369}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2365, file: !844, line: 110, baseType: !360, size: 128)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2365, file: !844, line: 111, baseType: !853, size: 128)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2365, file: !844, line: 112, baseType: !276, size: 128, align: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !838, file: !839, line: 72, baseType: !1090, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !838, file: !839, line: 73, baseType: !162, size: 32, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !838, file: !839, line: 74, baseType: !917, size: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !833, file: !834, line: 10, baseType: !842, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !739, file: !18, line: 1015, baseType: !877, size: 64, offset: 1344)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !739, file: !18, line: 1016, baseType: !2188, size: 64, offset: 1408)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !739, file: !18, line: 1018, baseType: !88, size: 64, offset: 1472)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !739, file: !18, line: 1020, baseType: !231, size: 64, offset: 1536)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !739, file: !18, line: 1023, baseType: !231, size: 64, offset: 1600)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !739, file: !18, line: 1027, baseType: !2380, size: 64, offset: 1664)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !739, file: !18, line: 1029, baseType: !1649, size: 64, offset: 1728)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !739, file: !18, line: 1030, baseType: !1606, size: 32, offset: 1792)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !739, file: !18, line: 1031, baseType: !1606, size: 32, offset: 1824)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !706, file: !37, line: 756, baseType: !182, size: 64, offset: 704)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !706, file: !37, line: 757, baseType: !182, size: 64, offset: 768)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !706, file: !37, line: 760, baseType: !182, size: 64, offset: 832)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !706, file: !37, line: 761, baseType: !182, size: 64, offset: 896)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !706, file: !37, line: 763, baseType: !182, size: 64, offset: 960)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !706, file: !37, line: 764, baseType: !2390, size: 64, offset: 1024)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1804, line: 299, baseType: !2392)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1804, line: 299, size: 64, elements: !2393)
!2393 = !{!2394}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2392, file: !1804, line: 299, baseType: !2395, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1809, line: 18, baseType: !182)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !706, file: !37, line: 773, baseType: !158, size: 32, offset: 1088)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !706, file: !37, line: 785, baseType: !158, size: 32, offset: 1120)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !706, file: !37, line: 795, baseType: !2399, size: 64, offset: 1152)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !37, line: 726, size: 128, elements: !2401)
!2401 = !{!2402, !2403}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2400, file: !37, line: 727, baseType: !88, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2400, file: !37, line: 728, baseType: !162, size: 32, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !706, file: !37, line: 801, baseType: !182, size: 64, offset: 1216)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !706, file: !37, line: 804, baseType: !105, size: 64, offset: 1280)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !706, file: !37, line: 806, baseType: !162, size: 32, offset: 1344)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !706, file: !37, line: 808, baseType: !720, size: 32, offset: 1376)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !706, file: !37, line: 823, baseType: !187, size: 320, offset: 1408)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !706, file: !37, line: 825, baseType: !172, size: 128, offset: 1728)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !706, file: !37, line: 845, baseType: !162, size: 32, offset: 1856)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !706, file: !37, line: 849, baseType: !182, size: 64, offset: 1920)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !706, file: !37, line: 850, baseType: !182, size: 64, offset: 1984)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !706, file: !37, line: 852, baseType: !182, size: 64, offset: 2048)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !706, file: !37, line: 853, baseType: !182, size: 64, offset: 2112)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !706, file: !37, line: 854, baseType: !107, size: 64, offset: 2176)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !706, file: !37, line: 855, baseType: !182, size: 64, offset: 2240)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !706, file: !37, line: 856, baseType: !182, size: 64, offset: 2304)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !706, file: !37, line: 857, baseType: !182, size: 64, offset: 2368)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !706, file: !37, line: 858, baseType: !182, size: 64, offset: 2432)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !706, file: !37, line: 865, baseType: !576, size: 32, offset: 2496)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !706, file: !37, line: 867, baseType: !720, size: 32, offset: 2528)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !706, file: !37, line: 869, baseType: !182, size: 64, offset: 2560)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !706, file: !37, line: 869, baseType: !182, size: 64, offset: 2624)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !706, file: !37, line: 869, baseType: !182, size: 64, offset: 2688)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !706, file: !37, line: 869, baseType: !182, size: 64, offset: 2752)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !706, file: !37, line: 870, baseType: !182, size: 64, offset: 2816)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !706, file: !37, line: 870, baseType: !182, size: 64, offset: 2880)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !706, file: !37, line: 870, baseType: !182, size: 64, offset: 2944)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !706, file: !37, line: 871, baseType: !182, size: 64, offset: 3008)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !706, file: !37, line: 871, baseType: !182, size: 64, offset: 3072)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !706, file: !37, line: 871, baseType: !182, size: 64, offset: 3136)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !706, file: !37, line: 871, baseType: !182, size: 64, offset: 3200)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !706, file: !37, line: 873, baseType: !2434, size: 3328, offset: 3264)
!2434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 3328, elements: !2435)
!2435 = !{!2436}
!2436 = !DISubrange(count: 52)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !706, file: !37, line: 875, baseType: !2438, size: 1280, offset: 6592)
!2438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 1280, elements: !309)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !706, file: !37, line: 877, baseType: !2440, size: 64, offset: 7872)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !37, line: 877, flags: DIFlagFwdDecl)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !706, file: !37, line: 880, baseType: !2443, size: 1088, offset: 7936)
!2443 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2444, line: 72, baseType: !2445)
!2444 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2444, line: 23, size: 1088, elements: !2446)
!2446 = !{!2447, !2448, !2449, !2450, !2451, !2454, !2455, !2456, !2457, !2461, !2462, !2463}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2445, file: !2444, line: 28, baseType: !88, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2445, file: !2444, line: 38, baseType: !107, size: 64, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2445, file: !2444, line: 40, baseType: !182, size: 64, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2445, file: !2444, line: 43, baseType: !187, size: 320, offset: 192)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2445, file: !2444, line: 44, baseType: !2452, size: 64, offset: 512)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2444, line: 44, flags: DIFlagFwdDecl)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2445, file: !2444, line: 48, baseType: !182, size: 64, offset: 576)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2445, file: !2444, line: 59, baseType: !752, size: 256, offset: 640)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2445, file: !2444, line: 60, baseType: !231, size: 64, offset: 896)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2445, file: !2444, line: 61, baseType: !2458, size: 64, offset: 960)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2460)
!2460 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2444, line: 61, flags: DIFlagFwdDecl)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2445, file: !2444, line: 63, baseType: !158, size: 32, offset: 1024)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2445, file: !2444, line: 69, baseType: !222, size: 16, offset: 1056)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2445, file: !2444, line: 70, baseType: !2464, size: 16, offset: 1072)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !89, line: 18, baseType: !2465)
!2465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !91, line: 23, baseType: !246)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !706, file: !37, line: 882, baseType: !182, size: 64, offset: 9024)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !706, file: !37, line: 885, baseType: !720, size: 32, offset: 9088)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !706, file: !37, line: 886, baseType: !2469, size: 64, offset: 9152)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !37, line: 732, flags: DIFlagFwdDecl)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !706, file: !37, line: 901, baseType: !380, size: 64, offset: 9216)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !706, file: !37, line: 904, baseType: !738, size: 64, offset: 9280)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !706, file: !37, line: 906, baseType: !2474, size: 64, offset: 9344)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !37, line: 906, flags: DIFlagFwdDecl)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !706, file: !37, line: 930, baseType: !158, size: 32, offset: 9408)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !706, file: !37, line: 933, baseType: !158, size: 32, offset: 9440)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !706, file: !37, line: 935, baseType: !2479, size: 64, offset: 9472)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !66, line: 103, size: 64, elements: !2480)
!2480 = !{!2481}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2479, file: !66, line: 104, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !66, line: 101, flags: DIFlagFwdDecl)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !706, file: !37, line: 940, baseType: !105, size: 64, offset: 9536)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !706, file: !37, line: 942, baseType: !1632, size: 256, offset: 9600)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !703, file: !37, line: 986, baseType: !2487, offset: 10240)
!2487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, elements: !394)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !405, file: !406, line: 882, baseType: !702, size: 64, offset: 9792)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !405, file: !406, line: 884, baseType: !162, size: 32, offset: 9856)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !405, file: !406, line: 885, baseType: !162, size: 32, offset: 9888)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !405, file: !406, line: 886, baseType: !162, size: 32, offset: 9920)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !405, file: !406, line: 888, baseType: !162, size: 32, offset: 9952)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !405, file: !406, line: 890, baseType: !182, size: 64, offset: 9984)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !405, file: !406, line: 893, baseType: !5, size: 32, offset: 10048)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !405, file: !406, line: 896, baseType: !5, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !405, file: !406, line: 897, baseType: !5, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !405, file: !406, line: 898, baseType: !5, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !405, file: !406, line: 899, baseType: !5, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !405, file: !406, line: 919, baseType: !5, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !405, file: !406, line: 922, baseType: !5, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !405, file: !406, line: 923, baseType: !5, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !405, file: !406, line: 925, baseType: !5, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !405, file: !406, line: 939, baseType: !5, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !405, file: !406, line: 941, baseType: !5, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !405, file: !406, line: 944, baseType: !5, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !405, file: !406, line: 956, baseType: !5, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !405, file: !406, line: 962, baseType: !5, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !405, file: !406, line: 966, baseType: !5, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !405, file: !406, line: 969, baseType: !182, size: 64, offset: 10176)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !405, file: !406, line: 971, baseType: !2511, size: 448, offset: 10240)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !60, line: 25, size: 448, elements: !2512)
!2512 = !{!2513, !2514, !2519}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2511, file: !60, line: 26, baseType: !182, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2511, file: !60, line: 27, baseType: !2515, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!992, !2518}
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, scope: !2511, file: !60, line: 28, baseType: !2520, size: 320, offset: 128)
!2520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2511, file: !60, line: 28, size: 320, elements: !2521)
!2521 = !{!2522, !2532, !2557}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2520, file: !60, line: 37, baseType: !2523, size: 320)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2520, file: !60, line: 30, size: 320, elements: !2524)
!2524 = !{!2525, !2527, !2528, !2529, !2530, !2531}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2523, file: !60, line: 31, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2523, file: !60, line: 32, baseType: !97, size: 32, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2523, file: !60, line: 33, baseType: !97, size: 32, offset: 96)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2523, file: !60, line: 34, baseType: !97, size: 32, offset: 128)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2523, file: !60, line: 35, baseType: !88, size: 64, offset: 192)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2523, file: !60, line: 36, baseType: !2526, size: 64, offset: 256)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2520, file: !60, line: 47, baseType: !2533, size: 192)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2520, file: !60, line: 39, size: 192, elements: !2534)
!2534 = !{!2535, !2536, !2537, !2556}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2533, file: !60, line: 40, baseType: !568, size: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2533, file: !60, line: 41, baseType: !59, size: 32, offset: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, scope: !2533, file: !60, line: 42, baseType: !2538, size: 64, offset: 64)
!2538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2533, file: !60, line: 42, size: 64, elements: !2539)
!2539 = !{!2540, !2548}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2538, file: !60, line: 43, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2543, line: 7, size: 128, elements: !2544)
!2543 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2544 = !{!2545, !2547}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2542, file: !2543, line: 8, baseType: !2546, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !120, line: 93, baseType: !96)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2542, file: !2543, line: 9, baseType: !96, size: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2538, file: !60, line: 44, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2551, line: 7, size: 64, elements: !2552)
!2551 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2552 = !{!2553, !2555}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2550, file: !2551, line: 8, baseType: !2554, size: 32)
!2554 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2551, line: 5, baseType: !166)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2550, file: !2551, line: 9, baseType: !166, size: 32, offset: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2533, file: !60, line: 46, baseType: !88, size: 64, offset: 128)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2520, file: !60, line: 55, baseType: !2558, size: 256)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2520, file: !60, line: 49, size: 256, elements: !2559)
!2559 = !{!2560, !2563, !2564, !2565, !2566}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2558, file: !60, line: 50, baseType: !2561, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !60, line: 14, flags: DIFlagFwdDecl)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2558, file: !60, line: 51, baseType: !162, size: 32, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2558, file: !60, line: 52, baseType: !162, size: 32, offset: 96)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2558, file: !60, line: 53, baseType: !182, size: 64, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2558, file: !60, line: 54, baseType: !182, size: 64, offset: 192)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !405, file: !406, line: 973, baseType: !2568, size: 32, offset: 10688)
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !87, line: 27, baseType: !2569)
!2569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !120, line: 28, baseType: !162)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !405, file: !406, line: 974, baseType: !2568, size: 32, offset: 10720)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !405, file: !406, line: 978, baseType: !182, size: 64, offset: 10752)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !405, file: !406, line: 987, baseType: !404, size: 64, offset: 10816)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !405, file: !406, line: 990, baseType: !404, size: 64, offset: 10880)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !405, file: !406, line: 995, baseType: !172, size: 128, offset: 10944)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !405, file: !406, line: 996, baseType: !172, size: 128, offset: 11072)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !405, file: !406, line: 997, baseType: !404, size: 64, offset: 11200)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !405, file: !406, line: 1005, baseType: !172, size: 128, offset: 11264)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !405, file: !406, line: 1006, baseType: !172, size: 128, offset: 11392)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !405, file: !406, line: 1009, baseType: !790, size: 64, offset: 11520)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !405, file: !406, line: 1010, baseType: !2581, size: 512, offset: 11584)
!2581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 512, elements: !309)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !405, file: !406, line: 1011, baseType: !172, size: 128, offset: 12096)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !405, file: !406, line: 1012, baseType: !172, size: 128, offset: 12224)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !405, file: !406, line: 1014, baseType: !2585, size: 64, offset: 12352)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !405, file: !406, line: 1017, baseType: !1193, size: 64, offset: 12416)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !405, file: !406, line: 1020, baseType: !1193, size: 64, offset: 12480)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !405, file: !406, line: 1023, baseType: !231, size: 64, offset: 12544)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !405, file: !406, line: 1025, baseType: !88, size: 64, offset: 12608)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !405, file: !406, line: 1026, baseType: !88, size: 64, offset: 12672)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !405, file: !406, line: 1031, baseType: !88, size: 64, offset: 12736)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !405, file: !406, line: 1032, baseType: !2593, size: 192, offset: 12800)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !406, line: 324, size: 192, elements: !2594)
!2594 = !{!2595, !2596, !2597}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2593, file: !406, line: 326, baseType: !88, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2593, file: !406, line: 327, baseType: !88, size: 64, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2593, file: !406, line: 328, baseType: !198, size: 32, offset: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !405, file: !406, line: 1041, baseType: !182, size: 64, offset: 12992)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !405, file: !406, line: 1042, baseType: !182, size: 64, offset: 13056)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !405, file: !406, line: 1045, baseType: !88, size: 64, offset: 13120)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !405, file: !406, line: 1048, baseType: !88, size: 64, offset: 13184)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !405, file: !406, line: 1051, baseType: !182, size: 64, offset: 13248)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !405, file: !406, line: 1052, baseType: !182, size: 64, offset: 13312)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !405, file: !406, line: 1055, baseType: !2605, size: 640, offset: 13376)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2606, line: 132, size: 640, elements: !2607)
!2606 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2607 = !{!2608, !2614, !2615}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2605, file: !2606, line: 133, baseType: !2609, size: 576)
!2609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2610, size: 576, elements: !786)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2606, line: 117, size: 192, elements: !2611)
!2611 = !{!2612, !2613}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2610, file: !2606, line: 118, baseType: !88, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2610, file: !2606, line: 119, baseType: !582, size: 128, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2605, file: !2606, line: 134, baseType: !5, size: 32, offset: 576)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2605, file: !2606, line: 135, baseType: !5, size: 32, offset: 608)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !405, file: !406, line: 1058, baseType: !2617, size: 448, offset: 14016)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2606, line: 144, size: 448, elements: !2618)
!2618 = !{!2619, !2620, !2621}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2617, file: !2606, line: 145, baseType: !276, size: 128, align: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2617, file: !2606, line: 146, baseType: !752, size: 256, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2617, file: !2606, line: 147, baseType: !5, size: 32, offset: 384)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !405, file: !406, line: 1064, baseType: !99, size: 64, offset: 14464)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !405, file: !406, line: 1067, baseType: !99, size: 64, offset: 14528)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !405, file: !406, line: 1070, baseType: !99, size: 64, offset: 14592)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !405, file: !406, line: 1074, baseType: !148, size: 64, offset: 14656)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !405, file: !406, line: 1084, baseType: !2627, size: 128, offset: 14720)
!2627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 128, elements: !1523)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !405, file: !406, line: 1086, baseType: !2629, size: 64, offset: 14848)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !406, line: 55, flags: DIFlagFwdDecl)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !405, file: !406, line: 1089, baseType: !2632, size: 64, offset: 14912)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2633, line: 12, size: 64, elements: !2634)
!2633 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2634 = !{!2635}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2632, file: !2633, line: 13, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2633, line: 8, flags: DIFlagFwdDecl)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !405, file: !406, line: 1090, baseType: !2639, size: 128, offset: 14976)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2640, line: 13, size: 128, elements: !2641)
!2640 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2641 = !{!2642}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2639, file: !2640, line: 14, baseType: !172, size: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !405, file: !406, line: 1097, baseType: !2644, size: 64, offset: 15104)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !406, line: 50, flags: DIFlagFwdDecl)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !405, file: !406, line: 1100, baseType: !2647, size: 64, offset: 15168)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !406, line: 1100, flags: DIFlagFwdDecl)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !405, file: !406, line: 1103, baseType: !2650, size: 64, offset: 15232)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !406, line: 53, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !405, file: !406, line: 1107, baseType: !2653, size: 64, offset: 15296)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !406, line: 56, flags: DIFlagFwdDecl)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !405, file: !406, line: 1110, baseType: !2656, size: 64, offset: 15360)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2658, line: 93, size: 8768, elements: !2659)
!2658 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2659 = !{!2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2709, !2718, !2719, !2721, !2722, !2723, !2726, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2764, !2765, !2772, !2782, !2844, !2845, !2848, !2849, !2850, !2851, !2852, !2853}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2657, file: !2658, line: 94, baseType: !153, size: 32)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2657, file: !2658, line: 95, baseType: !158, size: 32, offset: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2657, file: !2658, line: 96, baseType: !162, size: 32, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2657, file: !2658, line: 97, baseType: !162, size: 32, offset: 96)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2657, file: !2658, line: 98, baseType: !172, size: 128, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2657, file: !2658, line: 100, baseType: !803, size: 192, offset: 256)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2657, file: !2658, line: 103, baseType: !404, size: 64, offset: 448)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2657, file: !2658, line: 106, baseType: !2668, size: 192, offset: 512)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !385, line: 32, size: 192, elements: !2669)
!2669 = !{!2670, !2671}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2668, file: !385, line: 33, baseType: !172, size: 128)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2668, file: !385, line: 34, baseType: !2672, size: 64, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2673, line: 25, baseType: !2674)
!2673 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2673, line: 23, size: 64, elements: !2675)
!2675 = !{!2676}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2674, file: !2673, line: 24, baseType: !653, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2657, file: !2658, line: 109, baseType: !798, size: 64, offset: 704)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2657, file: !2658, line: 112, baseType: !162, size: 32, offset: 768)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2657, file: !2658, line: 114, baseType: !162, size: 32, offset: 800)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2657, file: !2658, line: 115, baseType: !404, size: 64, offset: 832)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2657, file: !2658, line: 118, baseType: !162, size: 32, offset: 896)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2657, file: !2658, line: 119, baseType: !5, size: 32, offset: 928)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2657, file: !2658, line: 121, baseType: !2684, size: 64, offset: 960)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2658, line: 80, size: 448, elements: !2686)
!2686 = !{!2687, !2688, !2694}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2685, file: !2658, line: 81, baseType: !158, size: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2685, file: !2658, line: 82, baseType: !2689, size: 128, offset: 64)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2658, line: 75, size: 128, elements: !2690)
!2690 = !{!2691, !2692}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2689, file: !2658, line: 76, baseType: !404, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2689, file: !2658, line: 77, baseType: !2693, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2685, file: !2658, line: 83, baseType: !1754, size: 256, offset: 192)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2657, file: !2658, line: 132, baseType: !5, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2657, file: !2658, line: 133, baseType: !5, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2657, file: !2658, line: 138, baseType: !5, size: 32, offset: 1056)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2657, file: !2658, line: 139, baseType: !172, size: 128, offset: 1088)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2657, file: !2658, line: 142, baseType: !521, size: 512, offset: 1216)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2657, file: !2658, line: 143, baseType: !529, size: 64, offset: 1728)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2657, file: !2658, line: 150, baseType: !2702, size: 256, offset: 1792)
!2702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2703, size: 256, elements: !2707)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2658, line: 38, size: 128, elements: !2704)
!2704 = !{!2705, !2706}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2703, file: !2658, line: 39, baseType: !88, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2703, file: !2658, line: 40, baseType: !88, size: 64, offset: 64)
!2707 = !{!2708}
!2708 = !DISubrange(count: 2)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2657, file: !2658, line: 156, baseType: !2710, size: 192, offset: 2048)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2658, line: 66, size: 192, elements: !2711)
!2711 = !{!2712}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2710, file: !2658, line: 67, baseType: !2713, size: 192)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2658, line: 47, size: 192, elements: !2714)
!2714 = !{!2715, !2716, !2717}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2713, file: !2658, line: 48, baseType: !107, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2713, file: !2658, line: 49, baseType: !107, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2713, file: !2658, line: 50, baseType: !107, size: 64, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2657, file: !2658, line: 160, baseType: !2605, size: 640, offset: 2240)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2657, file: !2658, line: 163, baseType: !2720, size: 256, offset: 2880)
!2720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !790, size: 256, elements: !309)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2657, file: !2658, line: 169, baseType: !790, size: 64, offset: 3136)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2657, file: !2658, line: 172, baseType: !162, size: 32, offset: 3200)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2657, file: !2658, line: 174, baseType: !2724, size: 64, offset: 3264)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2658, line: 174, flags: DIFlagFwdDecl)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2657, file: !2658, line: 185, baseType: !2727, size: 64, offset: 3328)
!2727 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !572, line: 860, baseType: !2728)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !572, line: 853, size: 64, elements: !2729)
!2729 = !{!2730, !2731}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2728, file: !572, line: 858, baseType: !848, size: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2728, file: !572, line: 859, baseType: !720, size: 32, offset: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2657, file: !2658, line: 186, baseType: !88, size: 64, offset: 3392)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2657, file: !2658, line: 186, baseType: !88, size: 64, offset: 3456)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2657, file: !2658, line: 186, baseType: !88, size: 64, offset: 3520)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2657, file: !2658, line: 186, baseType: !88, size: 64, offset: 3584)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2657, file: !2658, line: 187, baseType: !88, size: 64, offset: 3648)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2657, file: !2658, line: 188, baseType: !88, size: 64, offset: 3712)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2657, file: !2658, line: 189, baseType: !2593, size: 192, offset: 3776)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2657, file: !2658, line: 190, baseType: !182, size: 64, offset: 3968)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2657, file: !2658, line: 190, baseType: !182, size: 64, offset: 4032)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2657, file: !2658, line: 190, baseType: !182, size: 64, offset: 4096)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2657, file: !2658, line: 190, baseType: !182, size: 64, offset: 4160)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2657, file: !2658, line: 191, baseType: !182, size: 64, offset: 4224)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2657, file: !2658, line: 191, baseType: !182, size: 64, offset: 4288)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2657, file: !2658, line: 191, baseType: !182, size: 64, offset: 4352)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2657, file: !2658, line: 191, baseType: !182, size: 64, offset: 4416)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2657, file: !2658, line: 192, baseType: !182, size: 64, offset: 4480)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2657, file: !2658, line: 192, baseType: !182, size: 64, offset: 4544)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2657, file: !2658, line: 192, baseType: !182, size: 64, offset: 4608)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2657, file: !2658, line: 192, baseType: !182, size: 64, offset: 4672)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2657, file: !2658, line: 193, baseType: !182, size: 64, offset: 4736)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2657, file: !2658, line: 193, baseType: !182, size: 64, offset: 4800)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2657, file: !2658, line: 194, baseType: !2754, size: 448, offset: 4864)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2755, line: 12, size: 448, elements: !2756)
!2755 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2756 = !{!2757, !2758, !2759, !2760, !2761, !2762, !2763}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2754, file: !2755, line: 15, baseType: !88, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2754, file: !2755, line: 17, baseType: !88, size: 64, offset: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2754, file: !2755, line: 19, baseType: !88, size: 64, offset: 128)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2754, file: !2755, line: 21, baseType: !88, size: 64, offset: 192)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2754, file: !2755, line: 29, baseType: !88, size: 64, offset: 256)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2754, file: !2755, line: 35, baseType: !88, size: 64, offset: 320)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2754, file: !2755, line: 44, baseType: !88, size: 64, offset: 384)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2657, file: !2658, line: 202, baseType: !92, size: 64, offset: 5312)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2657, file: !2658, line: 213, baseType: !2766, size: 2048, offset: 5376)
!2766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2767, size: 2048, elements: !1523)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2768, line: 43, size: 128, elements: !2769)
!2768 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2769 = !{!2770, !2771}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2767, file: !2768, line: 44, baseType: !1036, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2767, file: !2768, line: 45, baseType: !1036, size: 64, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2657, file: !2658, line: 216, baseType: !2773, size: 448, offset: 7424)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2658, line: 30, size: 448, elements: !2774)
!2774 = !{!2775, !2776, !2777, !2778, !2779, !2780, !2781}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2773, file: !2658, line: 31, baseType: !162, size: 32)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2773, file: !2658, line: 32, baseType: !992, size: 64, offset: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2773, file: !2658, line: 33, baseType: !182, size: 64, offset: 128)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2773, file: !2658, line: 34, baseType: !88, size: 64, offset: 192)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2773, file: !2658, line: 34, baseType: !88, size: 64, offset: 256)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2773, file: !2658, line: 35, baseType: !182, size: 64, offset: 320)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2773, file: !2658, line: 35, baseType: !182, size: 64, offset: 384)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2657, file: !2658, line: 219, baseType: !2783, size: 64, offset: 7872)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2785, line: 41, size: 3456, elements: !2786)
!2785 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2786 = !{!2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2784, file: !2785, line: 47, baseType: !223, size: 16)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2784, file: !2785, line: 48, baseType: !98, size: 32, offset: 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2784, file: !2785, line: 54, baseType: !216, size: 8, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2784, file: !2785, line: 55, baseType: !216, size: 8, offset: 72)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2784, file: !2785, line: 73, baseType: !90, size: 64, align: 64, offset: 128)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2784, file: !2785, line: 74, baseType: !90, size: 64, offset: 192)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2784, file: !2785, line: 81, baseType: !90, size: 64, offset: 256)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2784, file: !2785, line: 82, baseType: !90, size: 64, offset: 320)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2784, file: !2785, line: 85, baseType: !90, size: 64, offset: 384)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2784, file: !2785, line: 86, baseType: !90, size: 64, offset: 448)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2784, file: !2785, line: 94, baseType: !90, size: 64, offset: 512)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2784, file: !2785, line: 102, baseType: !90, size: 64, offset: 576)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2784, file: !2785, line: 107, baseType: !1513, size: 256, offset: 640)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2784, file: !2785, line: 108, baseType: !216, size: 8, align: 64, offset: 896)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2784, file: !2785, line: 110, baseType: !2802, size: 24, offset: 904)
!2802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 24, elements: !786)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2784, file: !2785, line: 111, baseType: !98, size: 32, align: 64, offset: 960)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2784, file: !2785, line: 113, baseType: !98, size: 32, offset: 992)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2784, file: !2785, line: 114, baseType: !98, size: 32, offset: 1024)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2784, file: !2785, line: 115, baseType: !98, size: 32, offset: 1056)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2784, file: !2785, line: 117, baseType: !98, size: 32, offset: 1088)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2784, file: !2785, line: 118, baseType: !90, size: 64, align: 64, offset: 1152)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2784, file: !2785, line: 120, baseType: !90, size: 64, offset: 1216)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2784, file: !2785, line: 121, baseType: !90, size: 64, offset: 1280)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2784, file: !2785, line: 122, baseType: !90, size: 64, offset: 1344)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2784, file: !2785, line: 123, baseType: !90, size: 64, offset: 1408)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2784, file: !2785, line: 133, baseType: !90, size: 64, offset: 1472)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2784, file: !2785, line: 137, baseType: !90, size: 64, offset: 1536)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2784, file: !2785, line: 142, baseType: !90, size: 64, offset: 1600)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2784, file: !2785, line: 143, baseType: !90, size: 64, offset: 1664)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2784, file: !2785, line: 146, baseType: !90, size: 64, offset: 1728)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2784, file: !2785, line: 147, baseType: !90, size: 64, offset: 1792)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2784, file: !2785, line: 148, baseType: !90, size: 64, offset: 1856)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2784, file: !2785, line: 149, baseType: !90, size: 64, offset: 1920)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2784, file: !2785, line: 154, baseType: !90, size: 64, offset: 1984)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2784, file: !2785, line: 155, baseType: !90, size: 64, offset: 2048)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2784, file: !2785, line: 156, baseType: !90, size: 64, offset: 2112)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2784, file: !2785, line: 158, baseType: !90, size: 64, offset: 2176)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2784, file: !2785, line: 159, baseType: !90, size: 64, offset: 2240)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2784, file: !2785, line: 162, baseType: !90, size: 64, offset: 2304)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2784, file: !2785, line: 163, baseType: !90, size: 64, offset: 2368)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2784, file: !2785, line: 164, baseType: !90, size: 64, offset: 2432)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2784, file: !2785, line: 167, baseType: !90, size: 64, offset: 2496)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2784, file: !2785, line: 168, baseType: !90, size: 64, offset: 2560)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2784, file: !2785, line: 171, baseType: !90, size: 64, offset: 2624)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2784, file: !2785, line: 172, baseType: !90, size: 64, offset: 2688)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2784, file: !2785, line: 175, baseType: !90, size: 64, offset: 2752)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2784, file: !2785, line: 178, baseType: !90, size: 64, offset: 2816)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2784, file: !2785, line: 179, baseType: !90, size: 64, offset: 2880)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2784, file: !2785, line: 182, baseType: !98, size: 32, offset: 2944)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2784, file: !2785, line: 186, baseType: !90, size: 64, align: 64, offset: 3008)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2784, file: !2785, line: 194, baseType: !90, size: 64, offset: 3072)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2784, file: !2785, line: 195, baseType: !90, size: 64, offset: 3136)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2784, file: !2785, line: 199, baseType: !90, size: 64, offset: 3200)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2784, file: !2785, line: 200, baseType: !90, size: 64, offset: 3264)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2784, file: !2785, line: 203, baseType: !90, size: 64, offset: 3328)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2784, file: !2785, line: 204, baseType: !90, size: 64, offset: 3392)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2657, file: !2658, line: 222, baseType: !5, size: 32, offset: 7936)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2657, file: !2658, line: 223, baseType: !2846, size: 64, offset: 8000)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2658, line: 223, flags: DIFlagFwdDecl)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2657, file: !2658, line: 230, baseType: !286, size: 8, offset: 8064)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2657, file: !2658, line: 231, baseType: !246, size: 16, offset: 8080)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2657, file: !2658, line: 232, baseType: !246, size: 16, offset: 8096)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2657, file: !2658, line: 234, baseType: !702, size: 64, offset: 8128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2657, file: !2658, line: 237, baseType: !752, size: 256, offset: 8192)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2657, file: !2658, line: 243, baseType: !187, size: 320, offset: 8448)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !405, file: !406, line: 1111, baseType: !2855, size: 64, offset: 15424)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2658, line: 20, size: 16640, elements: !2857)
!2857 = !{!2858, !2859, !2860, !2861}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2856, file: !2658, line: 21, baseType: !720, size: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2856, file: !2658, line: 22, baseType: !153, size: 32, offset: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2856, file: !2658, line: 23, baseType: !803, size: 192, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2856, file: !2658, line: 24, baseType: !2862, size: 16384, offset: 256)
!2862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2863, size: 16384, elements: !2883)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !385, line: 51, size: 256, elements: !2864)
!2864 = !{!2865}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2863, file: !385, line: 52, baseType: !2866, size: 256)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !385, line: 37, size: 256, elements: !2867)
!2867 = !{!2868, !2875, !2876, !2882}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2866, file: !385, line: 39, baseType: !2869, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2870, line: 83, baseType: !2871)
!2870 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2870, line: 82, baseType: !2873)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{null, !162}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2866, file: !385, line: 40, baseType: !182, size: 64, offset: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2866, file: !385, line: 46, baseType: !2877, size: 64, offset: 128)
!2877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2870, line: 86, baseType: !2878)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2870, line: 85, baseType: !2880)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{null}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2866, file: !385, line: 48, baseType: !2672, size: 64, offset: 192)
!2883 = !{!2884}
!2884 = !DISubrange(count: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !405, file: !406, line: 1112, baseType: !2672, size: 64, offset: 15488)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !405, file: !406, line: 1113, baseType: !2672, size: 64, offset: 15552)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !405, file: !406, line: 1115, baseType: !2672, size: 64, offset: 15616)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !405, file: !406, line: 1116, baseType: !2668, size: 192, offset: 15680)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !405, file: !406, line: 1117, baseType: !182, size: 64, offset: 15872)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !405, file: !406, line: 1118, baseType: !1034, size: 64, offset: 15936)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !405, file: !406, line: 1119, baseType: !5, size: 32, offset: 16000)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !405, file: !406, line: 1121, baseType: !279, size: 64, offset: 16064)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !405, file: !406, line: 1125, baseType: !2894, size: 64, offset: 16128)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !406, line: 43, flags: DIFlagFwdDecl)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !405, file: !406, line: 1127, baseType: !113, size: 32, offset: 16192)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !405, file: !406, line: 1128, baseType: !5, size: 32, offset: 16224)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !405, file: !406, line: 1130, baseType: !2899, size: 128, offset: 16256)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2900, line: 37, size: 128, elements: !2901)
!2900 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2901 = !{!2902, !2903, !2904}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2899, file: !2900, line: 38, baseType: !162, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2899, file: !2900, line: 39, baseType: !158, size: 32, offset: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2899, file: !2900, line: 40, baseType: !2905, size: 64, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2900, line: 24, flags: DIFlagFwdDecl)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !405, file: !406, line: 1131, baseType: !2908, size: 256, offset: 16384)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2909, line: 12, size: 256, elements: !2910)
!2909 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2910 = !{!2911, !2912, !2913, !2914}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2908, file: !2909, line: 13, baseType: !299, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2908, file: !2909, line: 14, baseType: !182, size: 64, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2908, file: !2909, line: 15, baseType: !182, size: 64, offset: 128)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2908, file: !2909, line: 16, baseType: !286, size: 8, offset: 192)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !405, file: !406, line: 1134, baseType: !88, size: 64, offset: 16640)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !405, file: !406, line: 1135, baseType: !88, size: 64, offset: 16704)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !405, file: !406, line: 1138, baseType: !720, size: 32, offset: 16768)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !405, file: !406, line: 1141, baseType: !198, size: 32, offset: 16800)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !405, file: !406, line: 1143, baseType: !2920, size: 64, offset: 16832)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !406, line: 735, size: 64, elements: !2921)
!2921 = !{!2922}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2920, file: !406, line: 736, baseType: !2923, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !405, file: !406, line: 1147, baseType: !585, size: 128, offset: 16896)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !405, file: !406, line: 1149, baseType: !404, size: 64, offset: 17024)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !405, file: !406, line: 1151, baseType: !2927, size: 64, offset: 17088)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !406, line: 1151, flags: DIFlagFwdDecl)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !405, file: !406, line: 1188, baseType: !231, size: 64, offset: 17152)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !405, file: !406, line: 1191, baseType: !2931, size: 64, offset: 17216)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !406, line: 44, flags: DIFlagFwdDecl)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !405, file: !406, line: 1194, baseType: !2934, size: 64, offset: 17280)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !406, line: 45, flags: DIFlagFwdDecl)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !405, file: !406, line: 1197, baseType: !2937, size: 64, offset: 17344)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !406, line: 61, flags: DIFlagFwdDecl)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !405, file: !406, line: 1199, baseType: !2940, size: 64, offset: 17408)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2942, line: 99, size: 128, elements: !2943)
!2942 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2943 = !{!2944, !2945, !2946}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2941, file: !2942, line: 100, baseType: !105, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2941, file: !2942, line: 101, baseType: !158, size: 32, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2941, file: !2942, line: 103, baseType: !224, size: 16, offset: 96)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !405, file: !406, line: 1202, baseType: !2948, size: 64, offset: 17472)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !406, line: 48, flags: DIFlagFwdDecl)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !405, file: !406, line: 1205, baseType: !182, size: 64, offset: 17536)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !405, file: !406, line: 1206, baseType: !2952, size: 64, offset: 17600)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !385, line: 14, baseType: !2954)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !385, line: 12, size: 384, elements: !2955)
!2955 = !{!2956}
!2956 = !DIDerivedType(tag: DW_TAG_member, scope: !2954, file: !385, line: 13, baseType: !2957, size: 384)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2954, file: !385, line: 13, size: 384, elements: !2958)
!2958 = !{!2959, !2960, !2961, !2962}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2957, file: !385, line: 13, baseType: !162, size: 32)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2957, file: !385, line: 13, baseType: !162, size: 32, offset: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2957, file: !385, line: 13, baseType: !162, size: 32, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2957, file: !385, line: 13, baseType: !2963, size: 256, offset: 128)
!2963 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2964, line: 37, size: 256, elements: !2965)
!2964 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2965 = !{!2966, !2971, !2984, !2990, !2999, !3026, !3031}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2963, file: !2964, line: 42, baseType: !2967, size: 64)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2963, file: !2964, line: 39, size: 64, elements: !2968)
!2968 = !{!2969, !2970}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2967, file: !2964, line: 40, baseType: !2569, size: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2967, file: !2964, line: 41, baseType: !119, size: 32, offset: 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2963, file: !2964, line: 50, baseType: !2972, size: 192)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2963, file: !2964, line: 45, size: 192, elements: !2973)
!2973 = !{!2974, !2976, !2977, !2983}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2972, file: !2964, line: 46, baseType: !2975, size: 32)
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !120, line: 95, baseType: !162)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2972, file: !2964, line: 47, baseType: !162, size: 32, offset: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2972, file: !2964, line: 48, baseType: !2978, size: 64, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2964, line: 11, baseType: !2979)
!2979 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2964, line: 8, size: 64, elements: !2980)
!2980 = !{!2981, !2982}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2979, file: !2964, line: 9, baseType: !162, size: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2979, file: !2964, line: 10, baseType: !231, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2972, file: !2964, line: 49, baseType: !162, size: 32, offset: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2963, file: !2964, line: 57, baseType: !2985, size: 128)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2963, file: !2964, line: 53, size: 128, elements: !2986)
!2986 = !{!2987, !2988, !2989}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2985, file: !2964, line: 54, baseType: !2569, size: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2985, file: !2964, line: 55, baseType: !119, size: 32, offset: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2985, file: !2964, line: 56, baseType: !2978, size: 64, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2963, file: !2964, line: 66, baseType: !2991, size: 256)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2963, file: !2964, line: 60, size: 256, elements: !2992)
!2992 = !{!2993, !2994, !2995, !2996, !2998}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2991, file: !2964, line: 61, baseType: !2569, size: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2991, file: !2964, line: 62, baseType: !119, size: 32, offset: 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2991, file: !2964, line: 63, baseType: !162, size: 32, offset: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2991, file: !2964, line: 64, baseType: !2997, size: 64, offset: 128)
!2997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !120, line: 94, baseType: !1033)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2991, file: !2964, line: 65, baseType: !2997, size: 64, offset: 192)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2963, file: !2964, line: 105, baseType: !3000, size: 256)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2963, file: !2964, line: 69, size: 256, elements: !3001)
!3001 = !{!3002, !3003}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3000, file: !2964, line: 70, baseType: !231, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, scope: !3000, file: !2964, line: 79, baseType: !3004, size: 192, offset: 64)
!3004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3000, file: !2964, line: 79, size: 192, elements: !3005)
!3005 = !{!3006, !3007, !3008, !3015, !3020}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3004, file: !2964, line: 81, baseType: !162, size: 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3004, file: !2964, line: 86, baseType: !246, size: 16)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3004, file: !2964, line: 92, baseType: !3009, size: 192)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3004, file: !2964, line: 88, size: 192, elements: !3010)
!3010 = !{!3011, !3013, !3014}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3009, file: !2964, line: 89, baseType: !3012, size: 64)
!3012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 64, elements: !564)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3009, file: !2964, line: 90, baseType: !231, size: 64, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3009, file: !2964, line: 91, baseType: !231, size: 64, offset: 128)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3004, file: !2964, line: 97, baseType: !3016, size: 96)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3004, file: !2964, line: 94, size: 96, elements: !3017)
!3017 = !{!3018, !3019}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3016, file: !2964, line: 95, baseType: !3012, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3016, file: !2964, line: 96, baseType: !98, size: 32, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3004, file: !2964, line: 103, baseType: !3021, size: 128)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3004, file: !2964, line: 99, size: 128, elements: !3022)
!3022 = !{!3023, !3024, !3025}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3021, file: !2964, line: 100, baseType: !182, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3021, file: !2964, line: 101, baseType: !98, size: 32, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3021, file: !2964, line: 102, baseType: !98, size: 32, offset: 96)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2963, file: !2964, line: 111, baseType: !3027, size: 128)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2963, file: !2964, line: 108, size: 128, elements: !3028)
!3028 = !{!3029, !3030}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3027, file: !2964, line: 109, baseType: !992, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3027, file: !2964, line: 110, baseType: !162, size: 32, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2963, file: !2964, line: 118, baseType: !3032, size: 128)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2963, file: !2964, line: 114, size: 128, elements: !3033)
!3033 = !{!3034, !3035, !3036}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3032, file: !2964, line: 115, baseType: !231, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3032, file: !2964, line: 116, baseType: !162, size: 32, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3032, file: !2964, line: 117, baseType: !5, size: 32, offset: 96)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !405, file: !406, line: 1208, baseType: !2754, size: 448, offset: 17664)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !405, file: !406, line: 1215, baseType: !88, size: 64, offset: 18112)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !405, file: !406, line: 1217, baseType: !88, size: 64, offset: 18176)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !405, file: !406, line: 1219, baseType: !88, size: 64, offset: 18240)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !405, file: !406, line: 1223, baseType: !3042, size: 64, offset: 18304)
!3042 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3043, line: 99, baseType: !3044)
!3043 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3043, line: 99, size: 64, elements: !3045)
!3045 = !{!3046}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3044, file: !3043, line: 99, baseType: !653, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !405, file: !406, line: 1225, baseType: !848, size: 32, offset: 18368)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !405, file: !406, line: 1226, baseType: !162, size: 32, offset: 18400)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !405, file: !406, line: 1227, baseType: !162, size: 32, offset: 18432)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !405, file: !406, line: 1231, baseType: !3051, size: 64, offset: 18496)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !406, line: 1231, flags: DIFlagFwdDecl)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !405, file: !406, line: 1233, baseType: !172, size: 128, offset: 18560)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !405, file: !406, line: 1240, baseType: !3055, size: 64, offset: 18688)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !406, line: 62, flags: DIFlagFwdDecl)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !405, file: !406, line: 1242, baseType: !3058, size: 64, offset: 18752)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !406, line: 1242, flags: DIFlagFwdDecl)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !405, file: !406, line: 1244, baseType: !172, size: 128, offset: 18816)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !405, file: !406, line: 1245, baseType: !3062, size: 64, offset: 18944)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !406, line: 51, flags: DIFlagFwdDecl)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !405, file: !406, line: 1246, baseType: !752, size: 256, offset: 19008)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !405, file: !406, line: 1247, baseType: !5, size: 32, offset: 19264)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !405, file: !406, line: 1250, baseType: !3067, size: 64, offset: 19328)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !406, line: 57, flags: DIFlagFwdDecl)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !405, file: !406, line: 1251, baseType: !752, size: 256, offset: 19392)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !405, file: !406, line: 1252, baseType: !172, size: 128, offset: 19648)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !405, file: !406, line: 1259, baseType: !1882, size: 64, offset: 19776)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !405, file: !406, line: 1260, baseType: !246, size: 16, offset: 19840)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !405, file: !406, line: 1261, baseType: !246, size: 16, offset: 19856)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !405, file: !406, line: 1314, baseType: !3075, size: 64, offset: 19904)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3077, line: 62, size: 256, align: 256, elements: !3078)
!3077 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3078 = !{!3079, !3080, !3081, !3082, !3083, !3084, !3085}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3076, file: !3077, line: 75, baseType: !98, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3076, file: !3077, line: 90, baseType: !98, size: 32, offset: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3076, file: !3077, line: 112, baseType: !90, size: 64, offset: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3076, file: !3077, line: 132, baseType: !98, size: 32, offset: 128)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3076, file: !3077, line: 140, baseType: !98, size: 32, offset: 160)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3076, file: !3077, line: 149, baseType: !98, size: 32, offset: 192)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3076, file: !3077, line: 154, baseType: !3086, offset: 224)
!3086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, elements: !394)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !405, file: !406, line: 1315, baseType: !97, size: 32, offset: 19968)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !405, file: !406, line: 1316, baseType: !97, size: 32, offset: 20000)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !405, file: !406, line: 1321, baseType: !182, size: 64, offset: 20032)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !405, file: !406, line: 1325, baseType: !162, size: 32, offset: 20096)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !405, file: !406, line: 1326, baseType: !162, size: 32, offset: 20128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !405, file: !406, line: 1327, baseType: !162, size: 32, offset: 20160)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !405, file: !406, line: 1328, baseType: !162, size: 32, offset: 20192)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !405, file: !406, line: 1329, baseType: !276, size: 128, align: 64, offset: 20224)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !405, file: !406, line: 1332, baseType: !3096, size: 128, offset: 20352)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !78, line: 51, size: 128, elements: !3097)
!3097 = !{!3098, !3103, !3104}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3096, file: !78, line: 60, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3100, line: 7, size: 64, elements: !3101)
!3100 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3101 = !{!3102}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3099, file: !3100, line: 12, baseType: !650, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3096, file: !78, line: 63, baseType: !286, size: 8, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3096, file: !78, line: 70, baseType: !286, size: 8, offset: 72)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !405, file: !406, line: 1335, baseType: !2279, size: 64, offset: 20480)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !405, file: !406, line: 1337, baseType: !3107, size: 128, offset: 20544)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !78, line: 39, size: 128, elements: !3108)
!3108 = !{!3109, !3110, !3111}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3107, file: !78, line: 40, baseType: !1669, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3107, file: !78, line: 42, baseType: !98, size: 32, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3107, file: !78, line: 43, baseType: !98, size: 32, offset: 96)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !405, file: !406, line: 1340, baseType: !3113, size: 64, offset: 20672)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !406, line: 69, flags: DIFlagFwdDecl)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !405, file: !406, line: 1351, baseType: !162, size: 32, offset: 20736)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !405, file: !406, line: 1352, baseType: !162, size: 32, offset: 20768)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !405, file: !406, line: 1354, baseType: !182, size: 64, offset: 20800)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !405, file: !406, line: 1364, baseType: !88, size: 64, offset: 20864)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !405, file: !406, line: 1365, baseType: !88, size: 64, offset: 20928)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !405, file: !406, line: 1412, baseType: !182, size: 64, offset: 20992)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !405, file: !406, line: 1453, baseType: !3122, size: 64, offset: 21056)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !406, line: 1453, flags: DIFlagFwdDecl)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !405, file: !406, line: 1457, baseType: !3125, size: 64, offset: 21120)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !66, line: 61, size: 576, elements: !3127)
!3127 = !{!3128, !3129, !3148, !3151, !3152, !3185, !3195}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3126, file: !66, line: 62, baseType: !65, size: 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, scope: !3126, file: !66, line: 64, baseType: !3130, size: 192, offset: 64)
!3130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3126, file: !66, line: 64, size: 192, elements: !3131)
!3131 = !{!3132, !3143}
!3132 = !DIDerivedType(tag: DW_TAG_member, scope: !3130, file: !66, line: 65, baseType: !3133, size: 192)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3130, file: !66, line: 65, size: 192, elements: !3134)
!3134 = !{!3135, !3142}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3133, file: !66, line: 66, baseType: !3136, size: 128)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3137, line: 50, size: 128, elements: !3138)
!3137 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3138 = !{!3139, !3140, !3141}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3136, file: !3137, line: 52, baseType: !182, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3136, file: !3137, line: 54, baseType: !5, size: 32, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3136, file: !3137, line: 55, baseType: !5, size: 32, offset: 96)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3133, file: !66, line: 67, baseType: !182, size: 64, offset: 128)
!3143 = !DIDerivedType(tag: DW_TAG_member, scope: !3130, file: !66, line: 70, baseType: !3144, size: 192)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3130, file: !66, line: 70, size: 192, elements: !3145)
!3145 = !{!3146, !3147}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3144, file: !66, line: 71, baseType: !276, size: 128, align: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3144, file: !66, line: 72, baseType: !182, size: 64, offset: 128)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3126, file: !66, line: 76, baseType: !3149, size: 64, offset: 256)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !66, line: 76, flags: DIFlagFwdDecl)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3126, file: !66, line: 77, baseType: !182, size: 64, offset: 320)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3126, file: !66, line: 79, baseType: !3153, size: 64, offset: 384)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3137, line: 25, size: 256, elements: !3155)
!3155 = !{!3156, !3162, !3166}
!3156 = !DIDerivedType(tag: DW_TAG_member, scope: !3154, file: !3137, line: 26, baseType: !3157, size: 128)
!3157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3154, file: !3137, line: 26, size: 128, elements: !3158)
!3158 = !{!3159, !3161}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3157, file: !3137, line: 27, baseType: !3160, size: 128)
!3160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 128, elements: !1523)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3157, file: !3137, line: 28, baseType: !3160, size: 128)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3154, file: !3137, line: 31, baseType: !3163, size: 64, offset: 128)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3165)
!3165 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3137, line: 23, flags: DIFlagFwdDecl)
!3166 = !DIDerivedType(tag: DW_TAG_member, scope: !3154, file: !3137, line: 33, baseType: !3167, size: 64, offset: 192)
!3167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3154, file: !3137, line: 33, size: 64, elements: !3168)
!3168 = !{!3169, !3175, !3180}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3167, file: !3137, line: 38, baseType: !3170, size: 64)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3167, file: !3137, line: 34, size: 64, elements: !3171)
!3171 = !{!3172, !3173, !3174}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3170, file: !3137, line: 35, baseType: !166, size: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3170, file: !3137, line: 36, baseType: !215, size: 8, offset: 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3170, file: !3137, line: 37, baseType: !215, size: 8, offset: 40)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3167, file: !3137, line: 42, baseType: !3176, size: 16)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3167, file: !3137, line: 39, size: 16, elements: !3177)
!3177 = !{!3178, !3179}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3176, file: !3137, line: 40, baseType: !215, size: 8)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3176, file: !3137, line: 41, baseType: !215, size: 8, offset: 8)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3167, file: !3137, line: 46, baseType: !3181, size: 16)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3167, file: !3137, line: 43, size: 16, elements: !3182)
!3182 = !{!3183, !3184}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3181, file: !3137, line: 44, baseType: !215, size: 8)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3181, file: !3137, line: 45, baseType: !215, size: 8, offset: 8)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3126, file: !66, line: 81, baseType: !3186, size: 64, offset: 448)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !66, line: 85, size: 384, elements: !3188)
!3188 = !{!3189, !3190, !3191, !3192, !3193, !3194}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3187, file: !66, line: 86, baseType: !3149, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3187, file: !66, line: 87, baseType: !182, size: 64, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3187, file: !66, line: 88, baseType: !182, size: 64, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3187, file: !66, line: 89, baseType: !182, size: 64, offset: 192)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3187, file: !66, line: 90, baseType: !286, size: 8, offset: 256)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3187, file: !66, line: 92, baseType: !3186, size: 64, offset: 320)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3126, file: !66, line: 82, baseType: !5, size: 32, offset: 512)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !405, file: !406, line: 1463, baseType: !3197, offset: 21184)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !406, line: 739, elements: !731)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !405, file: !406, line: 1470, baseType: !276, size: 128, align: 64, offset: 21184)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !405, file: !406, line: 1471, baseType: !153, size: 32, offset: 21312)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !405, file: !406, line: 1472, baseType: !162, size: 32, offset: 21344)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !405, file: !406, line: 1474, baseType: !404, size: 64, offset: 21376)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !405, file: !406, line: 1475, baseType: !3203, size: 320, offset: 21440)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3204, line: 11, size: 320, elements: !3205)
!3204 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3205 = !{!3206, !3207, !3208, !3213}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3203, file: !3204, line: 16, baseType: !360, size: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3203, file: !3204, line: 17, baseType: !182, size: 64, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3203, file: !3204, line: 18, baseType: !3209, size: 64, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{null, !3212}
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3203, file: !3204, line: 19, baseType: !97, size: 32, offset: 256)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !405, file: !406, line: 1478, baseType: !3215, size: 64, offset: 21760)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !406, line: 1478, flags: DIFlagFwdDecl)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !405, file: !406, line: 1482, baseType: !153, size: 32, offset: 21824)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !405, file: !406, line: 1489, baseType: !231, size: 64, offset: 21888)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !405, file: !406, line: 1504, baseType: !231, size: 64, offset: 21952)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !405, file: !406, line: 1505, baseType: !90, size: 64, offset: 22016)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !405, file: !406, line: 1506, baseType: !88, size: 64, offset: 22080)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !405, file: !406, line: 1507, baseType: !90, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !405, file: !406, line: 1508, baseType: !90, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !405, file: !406, line: 1509, baseType: !90, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !405, file: !406, line: 1510, baseType: !276, size: 128, align: 64, offset: 22208)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !405, file: !406, line: 1511, baseType: !162, size: 32, offset: 22336)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !405, file: !406, line: 1515, baseType: !3228, size: 64, offset: 22400)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !428, line: 56, size: 64, elements: !3229)
!3229 = !{!3230}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3228, file: !428, line: 57, baseType: !431, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !405, file: !406, line: 1518, baseType: !3228, size: 64, offset: 22464)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !405, file: !406, line: 1528, baseType: !276, size: 128, align: 64, offset: 22528)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !405, file: !406, line: 1552, baseType: !3234, size: 35328, offset: 23040)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3235, line: 430, size: 35328, elements: !3236)
!3235 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3236 = !{!3237, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3266, !3267, !3268, !3269, !3270, !3271, !3274, !3275, !3276, !3277}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3234, file: !3235, line: 432, baseType: !3238, size: 192)
!3238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3239, size: 192, elements: !786)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3240, line: 16, size: 64, elements: !3241)
!3240 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3241 = !{!3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3239, file: !3240, line: 17, baseType: !222, size: 16)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3239, file: !3240, line: 18, baseType: !222, size: 16, offset: 16)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3239, file: !3240, line: 19, baseType: !222, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3239, file: !3240, line: 19, baseType: !222, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3239, file: !3240, line: 19, baseType: !222, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3239, file: !3240, line: 19, baseType: !222, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3239, file: !3240, line: 19, baseType: !222, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3239, file: !3240, line: 20, baseType: !222, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3239, file: !3240, line: 20, baseType: !222, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3239, file: !3240, line: 20, baseType: !222, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3239, file: !3240, line: 20, baseType: !222, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3239, file: !3240, line: 20, baseType: !222, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3239, file: !3240, line: 20, baseType: !222, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3234, file: !3235, line: 436, baseType: !182, size: 64, offset: 192)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3234, file: !3235, line: 440, baseType: !224, size: 16, offset: 256)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3234, file: !3235, line: 441, baseType: !224, size: 16, offset: 272)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3234, file: !3235, line: 442, baseType: !224, size: 16, offset: 288)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3234, file: !3235, line: 443, baseType: !224, size: 16, offset: 304)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3234, file: !3235, line: 447, baseType: !182, size: 64, offset: 320)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3234, file: !3235, line: 448, baseType: !182, size: 64, offset: 384)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3234, file: !3235, line: 459, baseType: !3263, size: 256, offset: 448)
!3263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3264, size: 256, elements: !309)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3235, line: 428, flags: DIFlagFwdDecl)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3234, file: !3235, line: 461, baseType: !182, size: 64, offset: 704)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3234, file: !3235, line: 463, baseType: !182, size: 64, offset: 768)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3234, file: !3235, line: 465, baseType: !182, size: 64, offset: 832)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3234, file: !3235, line: 466, baseType: !182, size: 64, offset: 896)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3234, file: !3235, line: 467, baseType: !182, size: 64, offset: 960)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3234, file: !3235, line: 473, baseType: !3272, size: 64, offset: 1024)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3235, line: 10, flags: DIFlagFwdDecl)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3234, file: !3235, line: 480, baseType: !182, size: 64, offset: 1088)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3234, file: !3235, line: 482, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3234, file: !3235, line: 491, baseType: !97, size: 32, offset: 1184)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3234, file: !3235, line: 501, baseType: !3278, size: 33792, offset: 1536)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3279, line: 448, size: 33792, elements: !3280)
!3279 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3280 = !{!3281, !3282, !3283, !3445, !3446, !3452, !3453}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3278, file: !3279, line: 461, baseType: !5, size: 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3278, file: !3279, line: 468, baseType: !182, size: 64, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3278, file: !3279, line: 476, baseType: !3284, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3279, line: 356, size: 33280, align: 512, elements: !3286)
!3286 = !{!3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3285, file: !3279, line: 358, baseType: !5, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3285, file: !3279, line: 361, baseType: !5, size: 32, offset: 32)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3285, file: !3279, line: 364, baseType: !88, size: 64, offset: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3285, file: !3279, line: 367, baseType: !88, size: 64, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3285, file: !3279, line: 370, baseType: !88, size: 64, offset: 192)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3285, file: !3279, line: 373, baseType: !5, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3285, file: !3279, line: 376, baseType: !5, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3285, file: !3279, line: 391, baseType: !5, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3285, file: !3279, line: 394, baseType: !5, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3285, file: !3279, line: 397, baseType: !3297, size: 32768, offset: 512)
!3297 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3279, line: 348, size: 32768, elements: !3298)
!3298 = !{!3299, !3314, !3351, !3428, !3441}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3297, file: !3279, line: 349, baseType: !3300, size: 896)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3279, line: 12, size: 896, elements: !3301)
!3301 = !{!3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3313}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3300, file: !3279, line: 13, baseType: !97, size: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3300, file: !3279, line: 14, baseType: !97, size: 32, offset: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3300, file: !3279, line: 15, baseType: !97, size: 32, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3300, file: !3279, line: 16, baseType: !97, size: 32, offset: 96)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3300, file: !3279, line: 17, baseType: !97, size: 32, offset: 128)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3300, file: !3279, line: 18, baseType: !97, size: 32, offset: 160)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3300, file: !3279, line: 19, baseType: !97, size: 32, offset: 192)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3300, file: !3279, line: 22, baseType: !3310, size: 640, offset: 224)
!3310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 640, elements: !3311)
!3311 = !{!3312}
!3312 = !DISubrange(count: 20)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3300, file: !3279, line: 25, baseType: !97, size: 32, offset: 864)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3297, file: !3279, line: 350, baseType: !3315, size: 4096, align: 128)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3279, line: 34, size: 4096, align: 128, elements: !3316)
!3316 = !{!3317, !3318, !3319, !3320, !3321, !3336, !3337, !3338, !3340, !3342, !3346}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3315, file: !3279, line: 35, baseType: !222, size: 16)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3315, file: !3279, line: 36, baseType: !222, size: 16, offset: 16)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3315, file: !3279, line: 37, baseType: !222, size: 16, offset: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3315, file: !3279, line: 38, baseType: !222, size: 16, offset: 48)
!3321 = !DIDerivedType(tag: DW_TAG_member, scope: !3315, file: !3279, line: 39, baseType: !3322, size: 128, offset: 64)
!3322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3315, file: !3279, line: 39, size: 128, elements: !3323)
!3323 = !{!3324, !3329}
!3324 = !DIDerivedType(tag: DW_TAG_member, scope: !3322, file: !3279, line: 40, baseType: !3325, size: 128)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3322, file: !3279, line: 40, size: 128, elements: !3326)
!3326 = !{!3327, !3328}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3325, file: !3279, line: 41, baseType: !88, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3325, file: !3279, line: 42, baseType: !88, size: 64, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, scope: !3322, file: !3279, line: 44, baseType: !3330, size: 128)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3322, file: !3279, line: 44, size: 128, elements: !3331)
!3331 = !{!3332, !3333, !3334, !3335}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3330, file: !3279, line: 45, baseType: !97, size: 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3330, file: !3279, line: 46, baseType: !97, size: 32, offset: 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3330, file: !3279, line: 47, baseType: !97, size: 32, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3330, file: !3279, line: 48, baseType: !97, size: 32, offset: 96)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3315, file: !3279, line: 51, baseType: !97, size: 32, offset: 192)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3315, file: !3279, line: 52, baseType: !97, size: 32, offset: 224)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3315, file: !3279, line: 55, baseType: !3339, size: 1024, offset: 256)
!3339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 1024, elements: !1514)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3315, file: !3279, line: 58, baseType: !3341, size: 2048, offset: 1280)
!3341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 2048, elements: !2883)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3315, file: !3279, line: 60, baseType: !3343, size: 384, offset: 3328)
!3343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 384, elements: !3344)
!3344 = !{!3345}
!3345 = !DISubrange(count: 12)
!3346 = !DIDerivedType(tag: DW_TAG_member, scope: !3315, file: !3279, line: 62, baseType: !3347, size: 384, offset: 3712)
!3347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3315, file: !3279, line: 62, size: 384, elements: !3348)
!3348 = !{!3349, !3350}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3347, file: !3279, line: 63, baseType: !3343, size: 384)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3347, file: !3279, line: 64, baseType: !3343, size: 384)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3297, file: !3279, line: 351, baseType: !3352, size: 1088)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3279, line: 79, size: 1088, elements: !3353)
!3353 = !{!3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3427}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3352, file: !3279, line: 80, baseType: !97, size: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3352, file: !3279, line: 81, baseType: !97, size: 32, offset: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3352, file: !3279, line: 82, baseType: !97, size: 32, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3352, file: !3279, line: 83, baseType: !97, size: 32, offset: 96)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3352, file: !3279, line: 84, baseType: !97, size: 32, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3352, file: !3279, line: 85, baseType: !97, size: 32, offset: 160)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3352, file: !3279, line: 86, baseType: !97, size: 32, offset: 192)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3352, file: !3279, line: 88, baseType: !3310, size: 640, offset: 224)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3352, file: !3279, line: 89, baseType: !215, size: 8, offset: 864)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3352, file: !3279, line: 90, baseType: !215, size: 8, offset: 872)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3352, file: !3279, line: 91, baseType: !215, size: 8, offset: 880)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3352, file: !3279, line: 92, baseType: !215, size: 8, offset: 888)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3352, file: !3279, line: 93, baseType: !215, size: 8, offset: 896)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3352, file: !3279, line: 94, baseType: !215, size: 8, offset: 904)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3352, file: !3279, line: 95, baseType: !3369, size: 64, offset: 960)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3371, line: 11, size: 128, elements: !3372)
!3371 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3372 = !{!3373, !3374}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3370, file: !3371, line: 12, baseType: !992, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3370, file: !3371, line: 13, baseType: !3375, size: 64, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3377, line: 103, size: 1344, elements: !3378)
!3377 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3378 = !{!3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3407, !3408, !3409}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3376, file: !3377, line: 109, baseType: !182, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3376, file: !3377, line: 110, baseType: !182, size: 64, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3376, file: !3377, line: 111, baseType: !182, size: 64, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3376, file: !3377, line: 112, baseType: !182, size: 64, offset: 192)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3376, file: !3377, line: 113, baseType: !182, size: 64, offset: 256)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3376, file: !3377, line: 114, baseType: !182, size: 64, offset: 320)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3376, file: !3377, line: 117, baseType: !182, size: 64, offset: 384)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3376, file: !3377, line: 118, baseType: !182, size: 64, offset: 448)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3376, file: !3377, line: 119, baseType: !182, size: 64, offset: 512)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3376, file: !3377, line: 120, baseType: !182, size: 64, offset: 576)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3376, file: !3377, line: 121, baseType: !182, size: 64, offset: 640)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3376, file: !3377, line: 122, baseType: !182, size: 64, offset: 704)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3376, file: !3377, line: 123, baseType: !182, size: 64, offset: 768)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3376, file: !3377, line: 124, baseType: !182, size: 64, offset: 832)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3376, file: !3377, line: 125, baseType: !182, size: 64, offset: 896)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3376, file: !3377, line: 139, baseType: !182, size: 64, offset: 960)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3376, file: !3377, line: 142, baseType: !182, size: 64, offset: 1024)
!3396 = !DIDerivedType(tag: DW_TAG_member, scope: !3376, file: !3377, line: 144, baseType: !3397, size: 64, offset: 1088)
!3397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3376, file: !3377, line: 144, size: 64, elements: !3398)
!3398 = !{!3399, !3400, !3401}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3397, file: !3377, line: 146, baseType: !222, size: 16)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3397, file: !3377, line: 148, baseType: !88, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3397, file: !3377, line: 150, baseType: !3402, size: 64)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3377, line: 59, size: 64, elements: !3403)
!3403 = !{!3404, !3405, !3406}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3402, file: !3377, line: 61, baseType: !88, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3402, file: !3377, line: 63, baseType: !88, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3402, file: !3377, line: 65, baseType: !88, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3376, file: !3377, line: 153, baseType: !182, size: 64, offset: 1152)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3376, file: !3377, line: 154, baseType: !182, size: 64, offset: 1216)
!3409 = !DIDerivedType(tag: DW_TAG_member, scope: !3376, file: !3377, line: 156, baseType: !3410, size: 64, offset: 1280)
!3410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3376, file: !3377, line: 156, size: 64, elements: !3411)
!3411 = !{!3412, !3413, !3414}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3410, file: !3377, line: 158, baseType: !222, size: 16)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3410, file: !3377, line: 160, baseType: !88, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3410, file: !3377, line: 162, baseType: !3415, size: 64)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3377, line: 69, size: 64, elements: !3416)
!3416 = !{!3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3415, file: !3377, line: 71, baseType: !88, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3415, file: !3377, line: 73, baseType: !88, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3415, file: !3377, line: 75, baseType: !88, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3415, file: !3377, line: 77, baseType: !88, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3415, file: !3377, line: 80, baseType: !88, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3415, file: !3377, line: 83, baseType: !88, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3415, file: !3377, line: 86, baseType: !88, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3415, file: !3377, line: 88, baseType: !88, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3415, file: !3377, line: 93, baseType: !88, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3415, file: !3377, line: 100, baseType: !88, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3352, file: !3279, line: 96, baseType: !97, size: 32, offset: 1024)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3297, file: !3279, line: 352, baseType: !3429, size: 4608, align: 512)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3279, line: 333, size: 4608, align: 512, elements: !3430)
!3430 = !{!3431, !3432, !3439}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3429, file: !3279, line: 334, baseType: !3315, size: 4096, align: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3429, file: !3279, line: 335, baseType: !3433, size: 512, offset: 4096)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3279, line: 312, size: 512, elements: !3434)
!3434 = !{!3435, !3436, !3437}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3433, file: !3279, line: 313, baseType: !88, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3433, file: !3279, line: 314, baseType: !88, size: 64, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3433, file: !3279, line: 315, baseType: !3438, size: 384, offset: 128)
!3438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 384, elements: !265)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3429, file: !3279, line: 336, baseType: !3440, offset: 4608)
!3440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, elements: !394)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3297, file: !3279, line: 353, baseType: !3442, size: 32768)
!3442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 32768, elements: !3443)
!3443 = !{!3444}
!3444 = !DISubrange(count: 4096)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3278, file: !3279, line: 484, baseType: !3284, size: 64, offset: 192)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3278, file: !3279, line: 491, baseType: !3447, size: 128, offset: 256)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3279, line: 404, size: 128, elements: !3448)
!3448 = !{!3449, !3450, !3451}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3447, file: !3279, line: 424, baseType: !88, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3447, file: !3279, line: 432, baseType: !5, size: 32, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3447, file: !3279, line: 440, baseType: !5, size: 32, offset: 96)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3278, file: !3279, line: 498, baseType: !3447, size: 128, offset: 384)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3278, file: !3279, line: 508, baseType: !3285, size: 33280, align: 512, offset: 512)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3456)
!3456 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !404)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3459)
!3459 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !96)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3462)
!3462 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !182)
!3463 = !{i32 7, !"Dwarf Version", i32 5}
!3464 = !{i32 2, !"Debug Info Version", i32 3}
!3465 = !{i32 1, !"wchar_size", i32 2}
!3466 = !{i32 8, !"cf-protection-branch", i32 1}
!3467 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3468 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3469 = !{i32 1, !"Code Model", i32 2}
!3470 = !{i32 1, !"override-stack-alignment", i32 8}
!3471 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3472 = distinct !DISubprogram(name: "bacct_add_tsk", scope: !1, file: !1, line: 20, type: !3473, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3475)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{null, !380, !816, !2783, !404}
!3475 = !{!3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3490, !3491, !3493, !3494, !3497, !3498, !3499, !3501}
!3476 = !DILocalVariable(name: "user_ns", arg: 1, scope: !3472, file: !1, line: 20, type: !380)
!3477 = !DILocalVariable(name: "pid_ns", arg: 2, scope: !3472, file: !1, line: 21, type: !816)
!3478 = !DILocalVariable(name: "stats", arg: 3, scope: !3472, file: !1, line: 22, type: !2783)
!3479 = !DILocalVariable(name: "tsk", arg: 4, scope: !3472, file: !1, line: 22, type: !404)
!3480 = !DILocalVariable(name: "tcred", scope: !3472, file: !1, line: 24, type: !99)
!3481 = !DILocalVariable(name: "utime", scope: !3472, file: !1, line: 25, type: !88)
!3482 = !DILocalVariable(name: "stime", scope: !3472, file: !1, line: 25, type: !88)
!3483 = !DILocalVariable(name: "utimescaled", scope: !3472, file: !1, line: 25, type: !88)
!3484 = !DILocalVariable(name: "stimescaled", scope: !3472, file: !1, line: 25, type: !88)
!3485 = !DILocalVariable(name: "now_ns", scope: !3472, file: !1, line: 26, type: !88)
!3486 = !DILocalVariable(name: "delta", scope: !3472, file: !1, line: 26, type: !88)
!3487 = !DILocalVariable(name: "btime", scope: !3472, file: !1, line: 27, type: !93)
!3488 = !DILocalVariable(name: "__base", scope: !3489, file: !1, line: 36, type: !242)
!3489 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 36, column: 2)
!3490 = !DILocalVariable(name: "__rem", scope: !3489, file: !1, line: 36, type: !242)
!3491 = !DILocalVariable(name: "__base", scope: !3492, file: !1, line: 39, type: !242)
!3492 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 39, column: 2)
!3493 = !DILocalVariable(name: "__rem", scope: !3492, file: !1, line: 39, type: !242)
!3494 = !DILocalVariable(name: "__UNIQUE_ID___val279", scope: !3495, file: !1, line: 43, type: !93)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !1, line: 43, column: 20)
!3496 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 43, column: 20)
!3497 = !DILocalVariable(name: "__UNIQUE_ID___lo280", scope: !3495, file: !1, line: 43, type: !93)
!3498 = !DILocalVariable(name: "__UNIQUE_ID___hi281", scope: !3495, file: !1, line: 43, type: !93)
!3499 = !DILocalVariable(name: "__UNIQUE_ID_rcu282", scope: !3500, file: !1, line: 61, type: !99)
!3500 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 61, column: 10)
!3501 = !DILocalVariable(name: "__UNIQUE_ID_rcu284", scope: !3502, file: !1, line: 65, type: !404)
!3502 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 65, column: 19)
!3503 = !DILocation(line: 20, column: 43, scope: !3472)
!3504 = !DILocation(line: 21, column: 28, scope: !3472)
!3505 = !DILocation(line: 22, column: 24, scope: !3472)
!3506 = !DILocation(line: 22, column: 51, scope: !3472)
!3507 = !DILocation(line: 24, column: 2, scope: !3472)
!3508 = !DILocation(line: 24, column: 21, scope: !3472)
!3509 = !DILocation(line: 25, column: 2, scope: !3472)
!3510 = !DILocation(line: 25, column: 6, scope: !3472)
!3511 = !DILocation(line: 25, column: 13, scope: !3472)
!3512 = !DILocation(line: 25, column: 20, scope: !3472)
!3513 = !DILocation(line: 25, column: 33, scope: !3472)
!3514 = !DILocation(line: 26, column: 2, scope: !3472)
!3515 = !DILocation(line: 26, column: 6, scope: !3472)
!3516 = !DILocation(line: 26, column: 14, scope: !3472)
!3517 = !DILocation(line: 27, column: 2, scope: !3472)
!3518 = !DILocation(line: 27, column: 11, scope: !3472)
!3519 = !DILocation(line: 29, column: 2, scope: !3472)
!3520 = !DILocation(line: 29, column: 2, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 29, column: 2)
!3522 = !DILocation(line: 32, column: 11, scope: !3472)
!3523 = !DILocation(line: 32, column: 9, scope: !3472)
!3524 = !DILocation(line: 34, column: 10, scope: !3472)
!3525 = !DILocation(line: 34, column: 19, scope: !3472)
!3526 = !DILocation(line: 34, column: 24, scope: !3472)
!3527 = !DILocation(line: 34, column: 38, scope: !3472)
!3528 = !DILocation(line: 34, column: 17, scope: !3472)
!3529 = !DILocation(line: 34, column: 8, scope: !3472)
!3530 = !DILocation(line: 36, column: 2, scope: !3489)
!3531 = !DILocation(line: 36, column: 2, scope: !3472)
!3532 = !DILocation(line: 37, column: 22, scope: !3472)
!3533 = !DILocation(line: 37, column: 2, scope: !3472)
!3534 = !DILocation(line: 37, column: 9, scope: !3472)
!3535 = !DILocation(line: 37, column: 20, scope: !3472)
!3536 = !DILocation(line: 38, column: 10, scope: !3472)
!3537 = !DILocation(line: 38, column: 19, scope: !3472)
!3538 = !DILocation(line: 38, column: 24, scope: !3472)
!3539 = !DILocation(line: 38, column: 17, scope: !3472)
!3540 = !DILocation(line: 38, column: 8, scope: !3472)
!3541 = !DILocation(line: 39, column: 2, scope: !3492)
!3542 = !DILocation(line: 39, column: 2, scope: !3472)
!3543 = !DILocation(line: 40, column: 20, scope: !3472)
!3544 = !DILocation(line: 40, column: 2, scope: !3472)
!3545 = !DILocation(line: 40, column: 9, scope: !3472)
!3546 = !DILocation(line: 40, column: 18, scope: !3472)
!3547 = !DILocation(line: 42, column: 10, scope: !3472)
!3548 = !DILocation(line: 42, column: 45, scope: !3472)
!3549 = !DILocation(line: 42, column: 37, scope: !3472)
!3550 = !DILocation(line: 42, column: 35, scope: !3472)
!3551 = !DILocation(line: 42, column: 8, scope: !3472)
!3552 = !DILocation(line: 43, column: 20, scope: !3495)
!3553 = !DILocation(line: 43, column: 20, scope: !3496)
!3554 = !DILocation(line: 43, column: 20, scope: !3472)
!3555 = !DILocation(line: 43, column: 2, scope: !3472)
!3556 = !DILocation(line: 43, column: 9, scope: !3472)
!3557 = !DILocation(line: 43, column: 18, scope: !3472)
!3558 = !DILocation(line: 44, column: 22, scope: !3472)
!3559 = !DILocation(line: 44, column: 2, scope: !3472)
!3560 = !DILocation(line: 44, column: 9, scope: !3472)
!3561 = !DILocation(line: 44, column: 20, scope: !3472)
!3562 = !DILocation(line: 46, column: 6, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 46, column: 6)
!3564 = !DILocation(line: 46, column: 11, scope: !3563)
!3565 = !DILocation(line: 46, column: 17, scope: !3563)
!3566 = !DILocation(line: 46, column: 6, scope: !3472)
!3567 = !DILocation(line: 47, column: 24, scope: !3563)
!3568 = !DILocation(line: 47, column: 29, scope: !3563)
!3569 = !DILocation(line: 47, column: 3, scope: !3563)
!3570 = !DILocation(line: 47, column: 10, scope: !3563)
!3571 = !DILocation(line: 47, column: 22, scope: !3563)
!3572 = !DILocation(line: 48, column: 26, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 48, column: 6)
!3574 = !DILocation(line: 48, column: 6, scope: !3573)
!3575 = !DILocation(line: 48, column: 31, scope: !3573)
!3576 = !DILocation(line: 48, column: 35, scope: !3573)
!3577 = !DILocation(line: 48, column: 40, scope: !3573)
!3578 = !DILocation(line: 48, column: 46, scope: !3573)
!3579 = !DILocation(line: 48, column: 6, scope: !3472)
!3580 = !DILocation(line: 49, column: 3, scope: !3573)
!3581 = !DILocation(line: 49, column: 10, scope: !3573)
!3582 = !DILocation(line: 49, column: 18, scope: !3573)
!3583 = !DILocation(line: 50, column: 6, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 50, column: 6)
!3585 = !DILocation(line: 50, column: 11, scope: !3584)
!3586 = !DILocation(line: 50, column: 17, scope: !3584)
!3587 = !DILocation(line: 50, column: 6, scope: !3472)
!3588 = !DILocation(line: 51, column: 3, scope: !3584)
!3589 = !DILocation(line: 51, column: 10, scope: !3584)
!3590 = !DILocation(line: 51, column: 18, scope: !3584)
!3591 = !DILocation(line: 52, column: 6, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 52, column: 6)
!3593 = !DILocation(line: 52, column: 11, scope: !3592)
!3594 = !DILocation(line: 52, column: 17, scope: !3592)
!3595 = !DILocation(line: 52, column: 6, scope: !3472)
!3596 = !DILocation(line: 53, column: 3, scope: !3592)
!3597 = !DILocation(line: 53, column: 10, scope: !3592)
!3598 = !DILocation(line: 53, column: 18, scope: !3592)
!3599 = !DILocation(line: 54, column: 6, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 54, column: 6)
!3601 = !DILocation(line: 54, column: 11, scope: !3600)
!3602 = !DILocation(line: 54, column: 17, scope: !3600)
!3603 = !DILocation(line: 54, column: 6, scope: !3472)
!3604 = !DILocation(line: 55, column: 3, scope: !3600)
!3605 = !DILocation(line: 55, column: 10, scope: !3600)
!3606 = !DILocation(line: 55, column: 18, scope: !3600)
!3607 = !DILocation(line: 56, column: 30, scope: !3472)
!3608 = !DILocation(line: 56, column: 20, scope: !3472)
!3609 = !DILocation(line: 56, column: 2, scope: !3472)
!3610 = !DILocation(line: 56, column: 9, scope: !3472)
!3611 = !DILocation(line: 56, column: 18, scope: !3472)
!3612 = !DILocation(line: 57, column: 21, scope: !3472)
!3613 = !DILocation(line: 57, column: 26, scope: !3472)
!3614 = !DILocation(line: 57, column: 2, scope: !3472)
!3615 = !DILocation(line: 57, column: 9, scope: !3472)
!3616 = !DILocation(line: 57, column: 19, scope: !3472)
!3617 = !DILocation(line: 58, column: 34, scope: !3472)
!3618 = !DILocation(line: 58, column: 39, scope: !3472)
!3619 = !DILocation(line: 58, column: 19, scope: !3472)
!3620 = !DILocation(line: 58, column: 2, scope: !3472)
!3621 = !DILocation(line: 58, column: 9, scope: !3472)
!3622 = !DILocation(line: 58, column: 17, scope: !3472)
!3623 = !DILocation(line: 59, column: 37, scope: !3472)
!3624 = !DILocation(line: 59, column: 42, scope: !3472)
!3625 = !DILocation(line: 59, column: 21, scope: !3472)
!3626 = !DILocation(line: 59, column: 2, scope: !3472)
!3627 = !DILocation(line: 59, column: 9, scope: !3472)
!3628 = !DILocation(line: 59, column: 19, scope: !3472)
!3629 = !DILocation(line: 60, column: 2, scope: !3472)
!3630 = !DILocation(line: 61, column: 10, scope: !3500)
!3631 = !DILocation(line: 61, column: 10, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3500, file: !1, line: 61, column: 10)
!3633 = !DILocation(line: 61, column: 10, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3632, file: !1, line: 61, column: 10)
!3635 = !DILocation(line: 61, column: 10, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3500, file: !1, line: 61, column: 10)
!3637 = !DILocation(line: 61, column: 10, scope: !3472)
!3638 = !DILocation(line: 61, column: 8, scope: !3472)
!3639 = !DILocation(line: 62, column: 36, scope: !3472)
!3640 = !DILocation(line: 62, column: 45, scope: !3472)
!3641 = !DILocation(line: 62, column: 52, scope: !3472)
!3642 = !DILocation(line: 62, column: 19, scope: !3472)
!3643 = !DILocation(line: 62, column: 2, scope: !3472)
!3644 = !DILocation(line: 62, column: 9, scope: !3472)
!3645 = !DILocation(line: 62, column: 17, scope: !3472)
!3646 = !DILocation(line: 63, column: 36, scope: !3472)
!3647 = !DILocation(line: 63, column: 45, scope: !3472)
!3648 = !DILocation(line: 63, column: 52, scope: !3472)
!3649 = !DILocation(line: 63, column: 19, scope: !3472)
!3650 = !DILocation(line: 63, column: 2, scope: !3472)
!3651 = !DILocation(line: 63, column: 9, scope: !3472)
!3652 = !DILocation(line: 63, column: 17, scope: !3472)
!3653 = !DILocation(line: 64, column: 30, scope: !3472)
!3654 = !DILocation(line: 64, column: 20, scope: !3472)
!3655 = !DILocation(line: 65, column: 19, scope: !3502)
!3656 = !DILocation(line: 65, column: 19, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3502, file: !1, line: 65, column: 19)
!3658 = !DILocation(line: 65, column: 19, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3657, file: !1, line: 65, column: 19)
!3660 = !DILocation(line: 65, column: 19, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3502, file: !1, line: 65, column: 19)
!3662 = !DILocation(line: 65, column: 19, scope: !3472)
!3663 = !DILocation(line: 65, column: 54, scope: !3472)
!3664 = !DILocation(line: 65, column: 3, scope: !3472)
!3665 = !DILocation(line: 64, column: 2, scope: !3472)
!3666 = !DILocation(line: 64, column: 9, scope: !3472)
!3667 = !DILocation(line: 64, column: 18, scope: !3472)
!3668 = !DILocation(line: 66, column: 2, scope: !3472)
!3669 = !DILocation(line: 68, column: 15, scope: !3472)
!3670 = !DILocation(line: 68, column: 2, scope: !3472)
!3671 = !DILocation(line: 69, column: 28, scope: !3472)
!3672 = !DILocation(line: 69, column: 20, scope: !3472)
!3673 = !DILocation(line: 69, column: 2, scope: !3472)
!3674 = !DILocation(line: 69, column: 9, scope: !3472)
!3675 = !DILocation(line: 69, column: 18, scope: !3472)
!3676 = !DILocation(line: 70, column: 28, scope: !3472)
!3677 = !DILocation(line: 70, column: 20, scope: !3472)
!3678 = !DILocation(line: 70, column: 2, scope: !3472)
!3679 = !DILocation(line: 70, column: 9, scope: !3472)
!3680 = !DILocation(line: 70, column: 18, scope: !3472)
!3681 = !DILocation(line: 72, column: 22, scope: !3472)
!3682 = !DILocation(line: 72, column: 2, scope: !3472)
!3683 = !DILocation(line: 73, column: 34, scope: !3472)
!3684 = !DILocation(line: 73, column: 26, scope: !3472)
!3685 = !DILocation(line: 73, column: 2, scope: !3472)
!3686 = !DILocation(line: 73, column: 9, scope: !3472)
!3687 = !DILocation(line: 73, column: 24, scope: !3472)
!3688 = !DILocation(line: 74, column: 34, scope: !3472)
!3689 = !DILocation(line: 74, column: 26, scope: !3472)
!3690 = !DILocation(line: 74, column: 2, scope: !3472)
!3691 = !DILocation(line: 74, column: 9, scope: !3472)
!3692 = !DILocation(line: 74, column: 24, scope: !3472)
!3693 = !DILocation(line: 76, column: 21, scope: !3472)
!3694 = !DILocation(line: 76, column: 26, scope: !3472)
!3695 = !DILocation(line: 76, column: 2, scope: !3472)
!3696 = !DILocation(line: 76, column: 9, scope: !3472)
!3697 = !DILocation(line: 76, column: 19, scope: !3472)
!3698 = !DILocation(line: 77, column: 21, scope: !3472)
!3699 = !DILocation(line: 77, column: 26, scope: !3472)
!3700 = !DILocation(line: 77, column: 2, scope: !3472)
!3701 = !DILocation(line: 77, column: 9, scope: !3472)
!3702 = !DILocation(line: 77, column: 19, scope: !3472)
!3703 = !DILocation(line: 79, column: 10, scope: !3472)
!3704 = !DILocation(line: 79, column: 17, scope: !3472)
!3705 = !DILocation(line: 79, column: 26, scope: !3472)
!3706 = !DILocation(line: 79, column: 31, scope: !3472)
!3707 = !DILocation(line: 79, column: 2, scope: !3472)
!3708 = !DILocation(line: 80, column: 1, scope: !3472)
!3709 = distinct !DISubprogram(name: "ktime_get_ns", scope: !3710, file: !3710, line: 152, type: !3711, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!3710 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!88}
!3713 = !DILocation(line: 154, column: 21, scope: !3709)
!3714 = !DILocation(line: 154, column: 9, scope: !3709)
!3715 = !DILocation(line: 154, column: 2, scope: !3709)
!3716 = !DISubprogram(name: "ktime_get_real_seconds", scope: !3710, file: !3710, line: 54, type: !3717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!93}
!3719 = distinct !DISubprogram(name: "div_u64", scope: !3720, file: !3720, line: 127, type: !3721, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3723)
!3720 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!88, !88, !97}
!3723 = !{!3724, !3725, !3726}
!3724 = !DILocalVariable(name: "dividend", arg: 1, scope: !3719, file: !3720, line: 127, type: !88)
!3725 = !DILocalVariable(name: "divisor", arg: 2, scope: !3719, file: !3720, line: 127, type: !97)
!3726 = !DILocalVariable(name: "remainder", scope: !3719, file: !3720, line: 129, type: !97)
!3727 = !DILocation(line: 127, column: 31, scope: !3719)
!3728 = !DILocation(line: 127, column: 45, scope: !3719)
!3729 = !DILocation(line: 129, column: 2, scope: !3719)
!3730 = !DILocation(line: 129, column: 6, scope: !3719)
!3731 = !DILocation(line: 130, column: 21, scope: !3719)
!3732 = !DILocation(line: 130, column: 31, scope: !3719)
!3733 = !DILocation(line: 130, column: 9, scope: !3719)
!3734 = !DILocation(line: 131, column: 1, scope: !3719)
!3735 = !DILocation(line: 130, column: 2, scope: !3719)
!3736 = distinct !DISubprogram(name: "thread_group_leader", scope: !2658, file: !2658, line: 707, type: !3737, scopeLine: 708, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3739)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!286, !404}
!3739 = !{!3740}
!3740 = !DILocalVariable(name: "p", arg: 1, scope: !3736, file: !2658, line: 707, type: !404)
!3741 = !DILocation(line: 707, column: 60, scope: !3736)
!3742 = !DILocation(line: 709, column: 9, scope: !3736)
!3743 = !DILocation(line: 709, column: 12, scope: !3736)
!3744 = !DILocation(line: 709, column: 24, scope: !3736)
!3745 = !DILocation(line: 709, column: 2, scope: !3736)
!3746 = distinct !DISubprogram(name: "task_nice", scope: !406, file: !406, line: 1922, type: !3747, scopeLine: 1923, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3751)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!162, !3749}
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!3751 = !{!3752}
!3752 = !DILocalVariable(name: "p", arg: 1, scope: !3746, file: !406, line: 1922, type: !3749)
!3753 = !DILocation(line: 1922, column: 55, scope: !3746)
!3754 = !DILocation(line: 1924, column: 9, scope: !3746)
!3755 = !DILocation(line: 1924, column: 2, scope: !3746)
!3756 = distinct !DISubprogram(name: "task_pid_nr_ns", scope: !406, file: !406, line: 1585, type: !3757, scopeLine: 1586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3759)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!2568, !404, !816}
!3759 = !{!3760, !3761}
!3760 = !DILocalVariable(name: "tsk", arg: 1, scope: !3756, file: !406, line: 1585, type: !404)
!3761 = !DILocalVariable(name: "ns", arg: 2, scope: !3756, file: !406, line: 1585, type: !816)
!3762 = !DILocation(line: 1585, column: 56, scope: !3756)
!3763 = !DILocation(line: 1585, column: 83, scope: !3756)
!3764 = !DILocation(line: 1587, column: 26, scope: !3756)
!3765 = !DILocation(line: 1587, column: 44, scope: !3756)
!3766 = !DILocation(line: 1587, column: 9, scope: !3756)
!3767 = !DILocation(line: 1587, column: 2, scope: !3756)
!3768 = distinct !DISubprogram(name: "task_tgid_nr_ns", scope: !406, file: !406, line: 1637, type: !3757, scopeLine: 1638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3769)
!3769 = !{!3770, !3771}
!3770 = !DILocalVariable(name: "tsk", arg: 1, scope: !3768, file: !406, line: 1637, type: !404)
!3771 = !DILocalVariable(name: "ns", arg: 2, scope: !3768, file: !406, line: 1637, type: !816)
!3772 = !DILocation(line: 1637, column: 57, scope: !3768)
!3773 = !DILocation(line: 1637, column: 84, scope: !3768)
!3774 = !DILocation(line: 1639, column: 26, scope: !3768)
!3775 = !DILocation(line: 1639, column: 45, scope: !3768)
!3776 = !DILocation(line: 1639, column: 9, scope: !3768)
!3777 = !DILocation(line: 1639, column: 2, scope: !3768)
!3778 = distinct !DISubprogram(name: "rcu_read_lock", scope: !3779, file: !3779, line: 782, type: !2880, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!3779 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!3780 = !DILocation(line: 784, column: 2, scope: !3778)
!3781 = !DILocation(line: 786, column: 2, scope: !3778)
!3782 = !DILocation(line: 786, column: 2, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3778, file: !3779, line: 786, column: 2)
!3784 = !DILocation(line: 787, column: 2, scope: !3778)
!3785 = !DILocation(line: 787, column: 2, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3778, file: !3779, line: 787, column: 2)
!3787 = !DILocation(line: 789, column: 1, scope: !3778)
!3788 = distinct !DISubprogram(name: "from_kuid_munged", scope: !114, file: !114, line: 163, type: !3789, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3791)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!118, !380, !113}
!3791 = !{!3792, !3793, !3794}
!3792 = !DILocalVariable(name: "to", arg: 1, scope: !3788, file: !114, line: 163, type: !380)
!3793 = !DILocalVariable(name: "kuid", arg: 2, scope: !3788, file: !114, line: 163, type: !113)
!3794 = !DILocalVariable(name: "uid", scope: !3788, file: !114, line: 165, type: !118)
!3795 = !DILocation(line: 163, column: 61, scope: !3788)
!3796 = !DILocation(line: 163, column: 72, scope: !3788)
!3797 = !DILocation(line: 165, column: 2, scope: !3788)
!3798 = !DILocation(line: 165, column: 8, scope: !3788)
!3799 = !DILocation(line: 165, column: 24, scope: !3788)
!3800 = !DILocation(line: 165, column: 14, scope: !3788)
!3801 = !DILocation(line: 166, column: 6, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3788, file: !114, line: 166, column: 6)
!3803 = !DILocation(line: 166, column: 10, scope: !3802)
!3804 = !DILocation(line: 166, column: 6, scope: !3788)
!3805 = !DILocation(line: 167, column: 9, scope: !3802)
!3806 = !DILocation(line: 167, column: 7, scope: !3802)
!3807 = !DILocation(line: 167, column: 3, scope: !3802)
!3808 = !DILocation(line: 168, column: 9, scope: !3788)
!3809 = !DILocation(line: 169, column: 1, scope: !3788)
!3810 = !DILocation(line: 168, column: 2, scope: !3788)
!3811 = distinct !DISubprogram(name: "from_kgid_munged", scope: !114, file: !114, line: 171, type: !3812, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3814)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!126, !380, !122}
!3814 = !{!3815, !3816, !3817}
!3815 = !DILocalVariable(name: "to", arg: 1, scope: !3811, file: !114, line: 171, type: !380)
!3816 = !DILocalVariable(name: "kgid", arg: 2, scope: !3811, file: !114, line: 171, type: !122)
!3817 = !DILocalVariable(name: "gid", scope: !3811, file: !114, line: 173, type: !126)
!3818 = !DILocation(line: 171, column: 61, scope: !3811)
!3819 = !DILocation(line: 171, column: 72, scope: !3811)
!3820 = !DILocation(line: 173, column: 2, scope: !3811)
!3821 = !DILocation(line: 173, column: 8, scope: !3811)
!3822 = !DILocation(line: 173, column: 24, scope: !3811)
!3823 = !DILocation(line: 173, column: 14, scope: !3811)
!3824 = !DILocation(line: 174, column: 6, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3811, file: !114, line: 174, column: 6)
!3826 = !DILocation(line: 174, column: 10, scope: !3825)
!3827 = !DILocation(line: 174, column: 6, scope: !3811)
!3828 = !DILocation(line: 175, column: 9, scope: !3825)
!3829 = !DILocation(line: 175, column: 7, scope: !3825)
!3830 = !DILocation(line: 175, column: 3, scope: !3825)
!3831 = !DILocation(line: 176, column: 9, scope: !3811)
!3832 = !DILocation(line: 177, column: 1, scope: !3811)
!3833 = !DILocation(line: 176, column: 2, scope: !3811)
!3834 = distinct !DISubprogram(name: "pid_alive", scope: !406, file: !406, line: 1611, type: !3747, scopeLine: 1612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3835)
!3835 = !{!3836}
!3836 = !DILocalVariable(name: "p", arg: 1, scope: !3834, file: !406, line: 1611, type: !3749)
!3837 = !DILocation(line: 1611, column: 55, scope: !3834)
!3838 = !DILocation(line: 1613, column: 9, scope: !3834)
!3839 = !DILocation(line: 1613, column: 12, scope: !3834)
!3840 = !DILocation(line: 1613, column: 23, scope: !3834)
!3841 = !DILocation(line: 1613, column: 2, scope: !3834)
!3842 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !3779, file: !3779, line: 813, type: !2880, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!3843 = !DILocation(line: 815, column: 2, scope: !3842)
!3844 = !DILocation(line: 815, column: 2, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3842, file: !3779, line: 815, column: 2)
!3846 = !DILocation(line: 818, column: 2, scope: !3842)
!3847 = !DILocation(line: 819, column: 2, scope: !3842)
!3848 = !DILocation(line: 819, column: 2, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3842, file: !3779, line: 819, column: 2)
!3850 = !DILocation(line: 820, column: 1, scope: !3842)
!3851 = distinct !DISubprogram(name: "task_cputime", scope: !3852, file: !3852, line: 16, type: !3853, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3856)
!3852 = !DIFile(filename: "./include/linux/sched/cputime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61dc6eb5d99536d491cae546a62a3194")
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!286, !404, !3855, !3855}
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!3856 = !{!3857, !3858, !3859}
!3857 = !DILocalVariable(name: "t", arg: 1, scope: !3851, file: !3852, line: 16, type: !404)
!3858 = !DILocalVariable(name: "utime", arg: 2, scope: !3851, file: !3852, line: 17, type: !3855)
!3859 = !DILocalVariable(name: "stime", arg: 3, scope: !3851, file: !3852, line: 17, type: !3855)
!3860 = !DILocation(line: 16, column: 53, scope: !3851)
!3861 = !DILocation(line: 17, column: 10, scope: !3851)
!3862 = !DILocation(line: 17, column: 22, scope: !3851)
!3863 = !DILocation(line: 19, column: 11, scope: !3851)
!3864 = !DILocation(line: 19, column: 14, scope: !3851)
!3865 = !DILocation(line: 19, column: 3, scope: !3851)
!3866 = !DILocation(line: 19, column: 9, scope: !3851)
!3867 = !DILocation(line: 20, column: 11, scope: !3851)
!3868 = !DILocation(line: 20, column: 14, scope: !3851)
!3869 = !DILocation(line: 20, column: 3, scope: !3851)
!3870 = !DILocation(line: 20, column: 9, scope: !3851)
!3871 = !DILocation(line: 21, column: 2, scope: !3851)
!3872 = distinct !DISubprogram(name: "task_cputime_scaled", scope: !3852, file: !3852, line: 39, type: !3873, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3875)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{null, !404, !3855, !3855}
!3875 = !{!3876, !3877, !3878}
!3876 = !DILocalVariable(name: "t", arg: 1, scope: !3872, file: !3852, line: 39, type: !404)
!3877 = !DILocalVariable(name: "utimescaled", arg: 2, scope: !3872, file: !3852, line: 40, type: !3855)
!3878 = !DILocalVariable(name: "stimescaled", arg: 3, scope: !3872, file: !3852, line: 41, type: !3855)
!3879 = !DILocation(line: 39, column: 60, scope: !3872)
!3880 = !DILocation(line: 40, column: 17, scope: !3872)
!3881 = !DILocation(line: 41, column: 17, scope: !3872)
!3882 = !DILocation(line: 43, column: 15, scope: !3872)
!3883 = !DILocation(line: 43, column: 18, scope: !3872)
!3884 = !DILocation(line: 43, column: 31, scope: !3872)
!3885 = !DILocation(line: 43, column: 2, scope: !3872)
!3886 = !DILocation(line: 44, column: 1, scope: !3872)
!3887 = !DISubprogram(name: "strncpy", scope: !3888, file: !3888, line: 66, type: !3889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3888 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!299, !299, !289, !1035}
!3891 = distinct !DISubprogram(name: "xacct_add_tsk", scope: !1, file: !1, line: 91, type: !3892, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3894)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{null, !2783, !404}
!3894 = !{!3895, !3896, !3897, !3898, !3900, !3901, !3903}
!3895 = !DILocalVariable(name: "stats", arg: 1, scope: !3891, file: !1, line: 91, type: !2783)
!3896 = !DILocalVariable(name: "p", arg: 2, scope: !3891, file: !1, line: 91, type: !404)
!3897 = !DILocalVariable(name: "mm", scope: !3891, file: !1, line: 93, type: !702)
!3898 = !DILocalVariable(name: "__base", scope: !3899, file: !1, line: 97, type: !242)
!3899 = distinct !DILexicalBlock(scope: !3891, file: !1, line: 97, column: 2)
!3900 = !DILocalVariable(name: "__rem", scope: !3899, file: !1, line: 97, type: !242)
!3901 = !DILocalVariable(name: "__base", scope: !3902, file: !1, line: 99, type: !242)
!3902 = distinct !DILexicalBlock(scope: !3891, file: !1, line: 99, column: 2)
!3903 = !DILocalVariable(name: "__rem", scope: !3902, file: !1, line: 99, type: !242)
!3904 = !DILocation(line: 91, column: 38, scope: !3891)
!3905 = !DILocation(line: 91, column: 65, scope: !3891)
!3906 = !DILocation(line: 93, column: 2, scope: !3891)
!3907 = !DILocation(line: 93, column: 20, scope: !3891)
!3908 = !DILocation(line: 96, column: 19, scope: !3891)
!3909 = !DILocation(line: 96, column: 22, scope: !3891)
!3910 = !DILocation(line: 96, column: 36, scope: !3891)
!3911 = !DILocation(line: 96, column: 2, scope: !3891)
!3912 = !DILocation(line: 96, column: 9, scope: !3891)
!3913 = !DILocation(line: 96, column: 17, scope: !3891)
!3914 = !DILocation(line: 97, column: 2, scope: !3899)
!3915 = !DILocation(line: 97, column: 2, scope: !3891)
!3916 = !DILocation(line: 98, column: 19, scope: !3891)
!3917 = !DILocation(line: 98, column: 22, scope: !3891)
!3918 = !DILocation(line: 98, column: 35, scope: !3891)
!3919 = !DILocation(line: 98, column: 2, scope: !3891)
!3920 = !DILocation(line: 98, column: 9, scope: !3891)
!3921 = !DILocation(line: 98, column: 17, scope: !3891)
!3922 = !DILocation(line: 99, column: 2, scope: !3902)
!3923 = !DILocation(line: 99, column: 2, scope: !3891)
!3924 = !DILocation(line: 100, column: 19, scope: !3891)
!3925 = !DILocation(line: 100, column: 7, scope: !3891)
!3926 = !DILocation(line: 100, column: 5, scope: !3891)
!3927 = !DILocation(line: 101, column: 6, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3891, file: !1, line: 101, column: 6)
!3929 = !DILocation(line: 101, column: 6, scope: !3891)
!3930 = !DILocation(line: 103, column: 45, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3928, file: !1, line: 101, column: 10)
!3932 = !DILocation(line: 103, column: 26, scope: !3931)
!3933 = !DILocation(line: 103, column: 49, scope: !3931)
!3934 = !DILocation(line: 103, column: 61, scope: !3931)
!3935 = !DILocation(line: 103, column: 3, scope: !3931)
!3936 = !DILocation(line: 103, column: 10, scope: !3931)
!3937 = !DILocation(line: 103, column: 24, scope: !3931)
!3938 = !DILocation(line: 104, column: 44, scope: !3931)
!3939 = !DILocation(line: 104, column: 26, scope: !3931)
!3940 = !DILocation(line: 104, column: 49, scope: !3931)
!3941 = !DILocation(line: 104, column: 61, scope: !3931)
!3942 = !DILocation(line: 104, column: 3, scope: !3931)
!3943 = !DILocation(line: 104, column: 10, scope: !3931)
!3944 = !DILocation(line: 104, column: 24, scope: !3931)
!3945 = !DILocation(line: 105, column: 9, scope: !3931)
!3946 = !DILocation(line: 105, column: 3, scope: !3931)
!3947 = !DILocation(line: 106, column: 2, scope: !3931)
!3948 = !DILocation(line: 107, column: 21, scope: !3891)
!3949 = !DILocation(line: 107, column: 24, scope: !3891)
!3950 = !DILocation(line: 107, column: 29, scope: !3891)
!3951 = !DILocation(line: 107, column: 35, scope: !3891)
!3952 = !DILocation(line: 107, column: 2, scope: !3891)
!3953 = !DILocation(line: 107, column: 9, scope: !3891)
!3954 = !DILocation(line: 107, column: 19, scope: !3891)
!3955 = !DILocation(line: 108, column: 22, scope: !3891)
!3956 = !DILocation(line: 108, column: 25, scope: !3891)
!3957 = !DILocation(line: 108, column: 30, scope: !3891)
!3958 = !DILocation(line: 108, column: 36, scope: !3891)
!3959 = !DILocation(line: 108, column: 2, scope: !3891)
!3960 = !DILocation(line: 108, column: 9, scope: !3891)
!3961 = !DILocation(line: 108, column: 20, scope: !3891)
!3962 = !DILocation(line: 109, column: 25, scope: !3891)
!3963 = !DILocation(line: 109, column: 28, scope: !3891)
!3964 = !DILocation(line: 109, column: 33, scope: !3891)
!3965 = !DILocation(line: 109, column: 39, scope: !3891)
!3966 = !DILocation(line: 109, column: 2, scope: !3891)
!3967 = !DILocation(line: 109, column: 9, scope: !3891)
!3968 = !DILocation(line: 109, column: 23, scope: !3891)
!3969 = !DILocation(line: 110, column: 26, scope: !3891)
!3970 = !DILocation(line: 110, column: 29, scope: !3891)
!3971 = !DILocation(line: 110, column: 34, scope: !3891)
!3972 = !DILocation(line: 110, column: 40, scope: !3891)
!3973 = !DILocation(line: 110, column: 2, scope: !3891)
!3974 = !DILocation(line: 110, column: 9, scope: !3891)
!3975 = !DILocation(line: 110, column: 24, scope: !3891)
!3976 = !DILocation(line: 112, column: 22, scope: !3891)
!3977 = !DILocation(line: 112, column: 25, scope: !3891)
!3978 = !DILocation(line: 112, column: 30, scope: !3891)
!3979 = !DILocation(line: 112, column: 41, scope: !3891)
!3980 = !DILocation(line: 112, column: 2, scope: !3891)
!3981 = !DILocation(line: 112, column: 9, scope: !3891)
!3982 = !DILocation(line: 112, column: 20, scope: !3891)
!3983 = !DILocation(line: 113, column: 23, scope: !3891)
!3984 = !DILocation(line: 113, column: 26, scope: !3891)
!3985 = !DILocation(line: 113, column: 31, scope: !3891)
!3986 = !DILocation(line: 113, column: 43, scope: !3891)
!3987 = !DILocation(line: 113, column: 2, scope: !3891)
!3988 = !DILocation(line: 113, column: 9, scope: !3891)
!3989 = !DILocation(line: 113, column: 21, scope: !3891)
!3990 = !DILocation(line: 114, column: 33, scope: !3891)
!3991 = !DILocation(line: 114, column: 36, scope: !3891)
!3992 = !DILocation(line: 114, column: 41, scope: !3891)
!3993 = !DILocation(line: 114, column: 63, scope: !3891)
!3994 = !DILocation(line: 114, column: 2, scope: !3891)
!3995 = !DILocation(line: 114, column: 9, scope: !3891)
!3996 = !DILocation(line: 114, column: 31, scope: !3891)
!3997 = !DILocation(line: 120, column: 1, scope: !3891)
!3998 = !DISubprogram(name: "get_task_mm", scope: !3999, file: !3999, line: 150, type: !4000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3999 = !DIFile(filename: "./include/linux/sched/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2bdb17d42d55a8ac5ff9bf0c87450707")
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!702, !404}
!4002 = distinct !DISubprogram(name: "get_mm_hiwater_rss", scope: !1783, file: !1783, line: 2599, type: !4003, scopeLine: 2600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4005)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!182, !702}
!4005 = !{!4006, !4007, !4009}
!4006 = !DILocalVariable(name: "mm", arg: 1, scope: !4002, file: !1783, line: 2599, type: !702)
!4007 = !DILocalVariable(name: "__UNIQUE_ID___x274", scope: !4008, file: !1783, line: 2601, type: !182)
!4008 = distinct !DILexicalBlock(scope: !4002, file: !1783, line: 2601, column: 9)
!4009 = !DILocalVariable(name: "__UNIQUE_ID___y275", scope: !4008, file: !1783, line: 2601, type: !182)
!4010 = !DILocation(line: 2599, column: 66, scope: !4002)
!4011 = !DILocation(line: 2601, column: 9, scope: !4008)
!4012 = !DILocation(line: 2601, column: 9, scope: !4002)
!4013 = !DILocation(line: 2601, column: 2, scope: !4002)
!4014 = distinct !DISubprogram(name: "get_mm_hiwater_vm", scope: !1783, file: !1783, line: 2604, type: !4003, scopeLine: 2605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4015)
!4015 = !{!4016, !4017, !4019}
!4016 = !DILocalVariable(name: "mm", arg: 1, scope: !4014, file: !1783, line: 2604, type: !702)
!4017 = !DILocalVariable(name: "__UNIQUE_ID___x276", scope: !4018, file: !1783, line: 2606, type: !182)
!4018 = distinct !DILexicalBlock(scope: !4014, file: !1783, line: 2606, column: 9)
!4019 = !DILocalVariable(name: "__UNIQUE_ID___y277", scope: !4018, file: !1783, line: 2606, type: !182)
!4020 = !DILocation(line: 2604, column: 65, scope: !4014)
!4021 = !DILocation(line: 2606, column: 9, scope: !4018)
!4022 = !DILocation(line: 2606, column: 9, scope: !4014)
!4023 = !DILocation(line: 2606, column: 2, scope: !4014)
!4024 = !DISubprogram(name: "mmput", scope: !3999, file: !3999, line: 141, type: !4025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{null, !702}
!4027 = distinct !DISubprogram(name: "acct_update_integrals", scope: !1, file: !1, line: 152, type: !4028, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4030)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{null, !404}
!4030 = !{!4031, !4032, !4033, !4034, !4035, !4039, !4040, !4044}
!4031 = !DILocalVariable(name: "tsk", arg: 1, scope: !4027, file: !1, line: 152, type: !404)
!4032 = !DILocalVariable(name: "utime", scope: !4027, file: !1, line: 154, type: !88)
!4033 = !DILocalVariable(name: "stime", scope: !4027, file: !1, line: 154, type: !88)
!4034 = !DILocalVariable(name: "flags", scope: !4027, file: !1, line: 155, type: !182)
!4035 = !DILocalVariable(name: "__dummy", scope: !4036, file: !1, line: 157, type: !182)
!4036 = distinct !DILexicalBlock(scope: !4037, file: !1, line: 157, column: 2)
!4037 = distinct !DILexicalBlock(scope: !4038, file: !1, line: 157, column: 2)
!4038 = distinct !DILexicalBlock(scope: !4027, file: !1, line: 157, column: 2)
!4039 = !DILocalVariable(name: "__dummy2", scope: !4036, file: !1, line: 157, type: !182)
!4040 = !DILocalVariable(name: "__dummy", scope: !4041, file: !1, line: 160, type: !182)
!4041 = distinct !DILexicalBlock(scope: !4042, file: !1, line: 160, column: 2)
!4042 = distinct !DILexicalBlock(scope: !4043, file: !1, line: 160, column: 2)
!4043 = distinct !DILexicalBlock(scope: !4027, file: !1, line: 160, column: 2)
!4044 = !DILocalVariable(name: "__dummy2", scope: !4041, file: !1, line: 160, type: !182)
!4045 = !DILocation(line: 152, column: 48, scope: !4027)
!4046 = !DILocation(line: 154, column: 2, scope: !4027)
!4047 = !DILocation(line: 154, column: 6, scope: !4027)
!4048 = !DILocation(line: 154, column: 13, scope: !4027)
!4049 = !DILocation(line: 155, column: 2, scope: !4027)
!4050 = !DILocation(line: 155, column: 16, scope: !4027)
!4051 = !DILocation(line: 157, column: 2, scope: !4027)
!4052 = !DILocation(line: 157, column: 2, scope: !4038)
!4053 = !DILocation(line: 157, column: 2, scope: !4036)
!4054 = !DILocation(line: 157, column: 2, scope: !4037)
!4055 = !DILocation(line: 158, column: 15, scope: !4027)
!4056 = !DILocation(line: 158, column: 2, scope: !4027)
!4057 = !DILocation(line: 159, column: 26, scope: !4027)
!4058 = !DILocation(line: 159, column: 31, scope: !4027)
!4059 = !DILocation(line: 159, column: 38, scope: !4027)
!4060 = !DILocation(line: 159, column: 2, scope: !4027)
!4061 = !DILocation(line: 160, column: 2, scope: !4027)
!4062 = !DILocation(line: 160, column: 2, scope: !4043)
!4063 = !DILocation(line: 160, column: 2, scope: !4041)
!4064 = !DILocation(line: 160, column: 2, scope: !4042)
!4065 = !DILocation(line: 160, column: 2, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4042, file: !1, line: 160, column: 2)
!4067 = !DILocation(line: 161, column: 1, scope: !4027)
!4068 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4069, file: !4069, line: 101, type: !4070, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4072)
!4069 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!182}
!4072 = !{!4073}
!4073 = !DILocalVariable(name: "flags", scope: !4068, file: !4069, line: 103, type: !182)
!4074 = !DILocation(line: 103, column: 2, scope: !4068)
!4075 = !DILocation(line: 103, column: 16, scope: !4068)
!4076 = !DILocation(line: 103, column: 24, scope: !4068)
!4077 = !DILocation(line: 104, column: 2, scope: !4068)
!4078 = !DILocation(line: 105, column: 9, scope: !4068)
!4079 = !DILocation(line: 106, column: 1, scope: !4068)
!4080 = !DILocation(line: 105, column: 2, scope: !4068)
!4081 = distinct !DISubprogram(name: "__acct_update_integrals", scope: !1, file: !1, line: 124, type: !4082, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4084)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{null, !404, !88, !88}
!4084 = !{!4085, !4086, !4087, !4088, !4089}
!4085 = !DILocalVariable(name: "tsk", arg: 1, scope: !4081, file: !1, line: 124, type: !404)
!4086 = !DILocalVariable(name: "utime", arg: 2, scope: !4081, file: !1, line: 125, type: !88)
!4087 = !DILocalVariable(name: "stime", arg: 3, scope: !4081, file: !1, line: 125, type: !88)
!4088 = !DILocalVariable(name: "time", scope: !4081, file: !1, line: 127, type: !88)
!4089 = !DILocalVariable(name: "delta", scope: !4081, file: !1, line: 127, type: !88)
!4090 = !DILocation(line: 124, column: 57, scope: !4081)
!4091 = !DILocation(line: 125, column: 13, scope: !4081)
!4092 = !DILocation(line: 125, column: 24, scope: !4081)
!4093 = !DILocation(line: 127, column: 2, scope: !4081)
!4094 = !DILocation(line: 127, column: 6, scope: !4081)
!4095 = !DILocation(line: 127, column: 12, scope: !4081)
!4096 = !DILocation(line: 129, column: 7, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4081, file: !1, line: 129, column: 6)
!4098 = !DILocation(line: 129, column: 6, scope: !4081)
!4099 = !DILocation(line: 130, column: 3, scope: !4097)
!4100 = !DILocation(line: 132, column: 9, scope: !4081)
!4101 = !DILocation(line: 132, column: 17, scope: !4081)
!4102 = !DILocation(line: 132, column: 15, scope: !4081)
!4103 = !DILocation(line: 132, column: 7, scope: !4081)
!4104 = !DILocation(line: 133, column: 10, scope: !4081)
!4105 = !DILocation(line: 133, column: 17, scope: !4081)
!4106 = !DILocation(line: 133, column: 22, scope: !4081)
!4107 = !DILocation(line: 133, column: 15, scope: !4081)
!4108 = !DILocation(line: 133, column: 8, scope: !4081)
!4109 = !DILocation(line: 135, column: 6, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4081, file: !1, line: 135, column: 6)
!4111 = !DILocation(line: 135, column: 12, scope: !4110)
!4112 = !DILocation(line: 135, column: 6, scope: !4081)
!4113 = !DILocation(line: 136, column: 3, scope: !4110)
!4114 = !DILocation(line: 138, column: 22, scope: !4081)
!4115 = !DILocation(line: 138, column: 2, scope: !4081)
!4116 = !DILocation(line: 138, column: 7, scope: !4081)
!4117 = !DILocation(line: 138, column: 20, scope: !4081)
!4118 = !DILocation(line: 144, column: 24, scope: !4081)
!4119 = !DILocation(line: 144, column: 43, scope: !4081)
!4120 = !DILocation(line: 144, column: 48, scope: !4081)
!4121 = !DILocation(line: 144, column: 32, scope: !4081)
!4122 = !DILocation(line: 144, column: 30, scope: !4081)
!4123 = !DILocation(line: 144, column: 52, scope: !4081)
!4124 = !DILocation(line: 144, column: 2, scope: !4081)
!4125 = !DILocation(line: 144, column: 7, scope: !4081)
!4126 = !DILocation(line: 144, column: 21, scope: !4081)
!4127 = !DILocation(line: 145, column: 23, scope: !4081)
!4128 = !DILocation(line: 145, column: 31, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4081, file: !1, line: 145, column: 31)
!4130 = !DILocation(line: 145, column: 31, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4129, file: !1, line: 145, column: 31)
!4132 = !DILocation(line: 145, column: 29, scope: !4081)
!4133 = !DILocation(line: 145, column: 60, scope: !4081)
!4134 = !DILocation(line: 145, column: 2, scope: !4081)
!4135 = !DILocation(line: 145, column: 7, scope: !4081)
!4136 = !DILocation(line: 145, column: 20, scope: !4081)
!4137 = !DILocation(line: 146, column: 1, scope: !4081)
!4138 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4069, file: !4069, line: 132, type: !4139, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4141)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{null, !182}
!4141 = !{!4142}
!4142 = !DILocalVariable(name: "flags", arg: 1, scope: !4138, file: !4069, line: 132, type: !182)
!4143 = !DILocation(line: 132, column: 66, scope: !4138)
!4144 = !DILocation(line: 134, column: 32, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4138, file: !4069, line: 134, column: 6)
!4146 = !DILocation(line: 134, column: 7, scope: !4145)
!4147 = !DILocation(line: 134, column: 6, scope: !4138)
!4148 = !DILocation(line: 135, column: 3, scope: !4145)
!4149 = !DILocation(line: 136, column: 1, scope: !4138)
!4150 = distinct !DISubprogram(name: "acct_account_cputime", scope: !1, file: !1, line: 167, type: !4028, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4151)
!4151 = !{!4152}
!4152 = !DILocalVariable(name: "tsk", arg: 1, scope: !4150, file: !1, line: 167, type: !404)
!4153 = !DILocation(line: 167, column: 47, scope: !4150)
!4154 = !DILocation(line: 169, column: 26, scope: !4150)
!4155 = !DILocation(line: 169, column: 31, scope: !4150)
!4156 = !DILocation(line: 169, column: 36, scope: !4150)
!4157 = !DILocation(line: 169, column: 43, scope: !4150)
!4158 = !DILocation(line: 169, column: 48, scope: !4150)
!4159 = !DILocation(line: 169, column: 2, scope: !4150)
!4160 = !DILocation(line: 170, column: 1, scope: !4150)
!4161 = distinct !DISubprogram(name: "acct_clear_integrals", scope: !1, file: !1, line: 176, type: !4028, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4162)
!4162 = !{!4163}
!4163 = !DILocalVariable(name: "tsk", arg: 1, scope: !4161, file: !1, line: 176, type: !404)
!4164 = !DILocation(line: 176, column: 47, scope: !4161)
!4165 = !DILocation(line: 178, column: 2, scope: !4161)
!4166 = !DILocation(line: 178, column: 7, scope: !4161)
!4167 = !DILocation(line: 178, column: 20, scope: !4161)
!4168 = !DILocation(line: 179, column: 2, scope: !4161)
!4169 = !DILocation(line: 179, column: 7, scope: !4161)
!4170 = !DILocation(line: 179, column: 21, scope: !4161)
!4171 = !DILocation(line: 180, column: 2, scope: !4161)
!4172 = !DILocation(line: 180, column: 7, scope: !4161)
!4173 = !DILocation(line: 180, column: 20, scope: !4161)
!4174 = !DILocation(line: 181, column: 1, scope: !4161)
!4175 = distinct !DISubprogram(name: "ktime_to_ns", scope: !530, file: !530, line: 80, type: !4176, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4179)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!111, !4178}
!4178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !529)
!4179 = !{!4180}
!4180 = !DILocalVariable(name: "kt", arg: 1, scope: !4175, file: !530, line: 80, type: !4178)
!4181 = !DILocation(line: 80, column: 45, scope: !4175)
!4182 = !DILocation(line: 82, column: 9, scope: !4175)
!4183 = !DILocation(line: 82, column: 2, scope: !4175)
!4184 = !DISubprogram(name: "ktime_get", scope: !3710, file: !3710, line: 67, type: !594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4185 = distinct !DISubprogram(name: "div_u64_rem", scope: !3720, file: !3720, line: 26, type: !4186, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4188)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!88, !88, !97, !2526}
!4188 = !{!4189, !4190, !4191}
!4189 = !DILocalVariable(name: "dividend", arg: 1, scope: !4185, file: !3720, line: 26, type: !88)
!4190 = !DILocalVariable(name: "divisor", arg: 2, scope: !4185, file: !3720, line: 26, type: !97)
!4191 = !DILocalVariable(name: "remainder", arg: 3, scope: !4185, file: !3720, line: 26, type: !2526)
!4192 = !DILocation(line: 26, column: 35, scope: !4185)
!4193 = !DILocation(line: 26, column: 49, scope: !4185)
!4194 = !DILocation(line: 26, column: 63, scope: !4185)
!4195 = !DILocation(line: 28, column: 15, scope: !4185)
!4196 = !DILocation(line: 28, column: 26, scope: !4185)
!4197 = !DILocation(line: 28, column: 24, scope: !4185)
!4198 = !DILocation(line: 28, column: 3, scope: !4185)
!4199 = !DILocation(line: 28, column: 13, scope: !4185)
!4200 = !DILocation(line: 29, column: 9, scope: !4185)
!4201 = !DILocation(line: 29, column: 20, scope: !4185)
!4202 = !DILocation(line: 29, column: 18, scope: !4185)
!4203 = !DILocation(line: 29, column: 2, scope: !4185)
!4204 = !DISubprogram(name: "__task_pid_nr_ns", scope: !406, file: !406, line: 1578, type: !4205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!2568, !404, !9, !816}
!4207 = !DISubprogram(name: "__rcu_read_lock", scope: !3779, file: !3779, line: 74, type: !2880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4208 = distinct !DISubprogram(name: "from_kuid", scope: !114, file: !114, line: 153, type: !3789, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4209)
!4209 = !{!4210, !4211}
!4210 = !DILocalVariable(name: "to", arg: 1, scope: !4208, file: !114, line: 153, type: !380)
!4211 = !DILocalVariable(name: "kuid", arg: 2, scope: !4208, file: !114, line: 153, type: !113)
!4212 = !DILocation(line: 153, column: 54, scope: !4208)
!4213 = !DILocation(line: 153, column: 65, scope: !4208)
!4214 = !DILocation(line: 155, column: 9, scope: !4208)
!4215 = !DILocation(line: 155, column: 2, scope: !4208)
!4216 = distinct !DISubprogram(name: "__kuid_val", scope: !114, file: !114, line: 34, type: !4217, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4219)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!118, !113}
!4219 = !{!4220}
!4220 = !DILocalVariable(name: "uid", arg: 1, scope: !4216, file: !114, line: 34, type: !113)
!4221 = !DILocation(line: 34, column: 39, scope: !4216)
!4222 = !DILocation(line: 36, column: 13, scope: !4216)
!4223 = !DILocation(line: 36, column: 2, scope: !4216)
!4224 = distinct !DISubprogram(name: "from_kgid", scope: !114, file: !114, line: 158, type: !3812, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4225)
!4225 = !{!4226, !4227}
!4226 = !DILocalVariable(name: "to", arg: 1, scope: !4224, file: !114, line: 158, type: !380)
!4227 = !DILocalVariable(name: "kgid", arg: 2, scope: !4224, file: !114, line: 158, type: !122)
!4228 = !DILocation(line: 158, column: 54, scope: !4224)
!4229 = !DILocation(line: 158, column: 65, scope: !4224)
!4230 = !DILocation(line: 160, column: 9, scope: !4224)
!4231 = !DILocation(line: 160, column: 2, scope: !4224)
!4232 = distinct !DISubprogram(name: "__kgid_val", scope: !114, file: !114, line: 39, type: !4233, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4235)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!126, !122}
!4235 = !{!4236}
!4236 = !DILocalVariable(name: "gid", arg: 1, scope: !4232, file: !114, line: 39, type: !122)
!4237 = !DILocation(line: 39, column: 39, scope: !4232)
!4238 = !DILocation(line: 41, column: 13, scope: !4232)
!4239 = !DILocation(line: 41, column: 2, scope: !4232)
!4240 = !DISubprogram(name: "__rcu_read_unlock", scope: !3779, file: !3779, line: 75, type: !2880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4241 = distinct !DISubprogram(name: "get_mm_rss", scope: !1783, file: !1783, line: 2592, type: !4003, scopeLine: 2593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4242)
!4242 = !{!4243}
!4243 = !DILocalVariable(name: "mm", arg: 1, scope: !4241, file: !1783, line: 2592, type: !702)
!4244 = !DILocation(line: 2592, column: 58, scope: !4241)
!4245 = !DILocation(line: 2594, column: 24, scope: !4241)
!4246 = !DILocation(line: 2594, column: 9, scope: !4241)
!4247 = !DILocation(line: 2595, column: 18, scope: !4241)
!4248 = !DILocation(line: 2595, column: 3, scope: !4241)
!4249 = !DILocation(line: 2594, column: 42, scope: !4241)
!4250 = !DILocation(line: 2596, column: 18, scope: !4241)
!4251 = !DILocation(line: 2596, column: 3, scope: !4241)
!4252 = !DILocation(line: 2595, column: 36, scope: !4241)
!4253 = !DILocation(line: 2594, column: 2, scope: !4241)
!4254 = distinct !DISubprogram(name: "get_mm_counter", scope: !1783, file: !1783, line: 2549, type: !4255, scopeLine: 2550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4257)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!182, !702, !162}
!4257 = !{!4258, !4259}
!4258 = !DILocalVariable(name: "mm", arg: 1, scope: !4254, file: !1783, line: 2549, type: !702)
!4259 = !DILocalVariable(name: "member", arg: 2, scope: !4254, file: !1783, line: 2549, type: !162)
!4260 = !DILocation(line: 2549, column: 62, scope: !4254)
!4261 = !DILocation(line: 2549, column: 70, scope: !4254)
!4262 = !DILocation(line: 2551, column: 39, scope: !4254)
!4263 = !DILocation(line: 2551, column: 43, scope: !4254)
!4264 = !DILocation(line: 2551, column: 52, scope: !4254)
!4265 = !DILocation(line: 2551, column: 9, scope: !4254)
!4266 = !DILocation(line: 2551, column: 2, scope: !4254)
!4267 = distinct !DISubprogram(name: "percpu_counter_read_positive", scope: !350, file: !350, line: 109, type: !4268, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4271)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!111, !4270}
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!4271 = !{!4272, !4273}
!4272 = !DILocalVariable(name: "fbc", arg: 1, scope: !4267, file: !350, line: 109, type: !4270)
!4273 = !DILocalVariable(name: "ret", scope: !4267, file: !350, line: 112, type: !111)
!4274 = !DILocation(line: 109, column: 71, scope: !4267)
!4275 = !DILocation(line: 112, column: 2, scope: !4267)
!4276 = !DILocation(line: 112, column: 6, scope: !4267)
!4277 = !DILocation(line: 112, column: 12, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4267, file: !350, line: 112, column: 12)
!4279 = !DILocation(line: 112, column: 12, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4278, file: !350, line: 112, column: 12)
!4281 = !DILocation(line: 114, column: 6, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4267, file: !350, line: 114, column: 6)
!4283 = !DILocation(line: 114, column: 10, scope: !4282)
!4284 = !DILocation(line: 114, column: 6, scope: !4267)
!4285 = !DILocation(line: 115, column: 10, scope: !4282)
!4286 = !DILocation(line: 115, column: 3, scope: !4282)
!4287 = !DILocation(line: 116, column: 2, scope: !4267)
!4288 = !DILocation(line: 117, column: 1, scope: !4267)
!4289 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4069, file: !4069, line: 65, type: !4070, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!4290 = !DILocation(line: 67, column: 9, scope: !4289)
!4291 = !DILocation(line: 67, column: 2, scope: !4289)
!4292 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4069, file: !4069, line: 70, type: !2880, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!4293 = !DILocation(line: 72, column: 2, scope: !4292)
!4294 = !DILocation(line: 73, column: 1, scope: !4292)
!4295 = distinct !DISubprogram(name: "native_save_fl", scope: !4069, file: !4069, line: 17, type: !4070, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4296)
!4296 = !{!4297}
!4297 = !DILocalVariable(name: "flags", scope: !4295, file: !4069, line: 19, type: !182)
!4298 = !DILocation(line: 19, column: 2, scope: !4295)
!4299 = !DILocation(line: 19, column: 16, scope: !4295)
!4300 = !DILocation(line: 26, column: 2, scope: !4295)
!4301 = !{i64 1301882, i64 1301903}
!4302 = !DILocation(line: 32, column: 9, scope: !4295)
!4303 = !DILocation(line: 33, column: 1, scope: !4295)
!4304 = !DILocation(line: 32, column: 2, scope: !4295)
!4305 = distinct !DISubprogram(name: "native_irq_disable", scope: !4069, file: !4069, line: 35, type: !2880, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!4306 = !DILocation(line: 37, column: 2, scope: !4305)
!4307 = !{i64 1302086}
!4308 = !DILocation(line: 38, column: 1, scope: !4305)
!4309 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !4069, file: !4069, line: 120, type: !4310, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4312)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!162, !182}
!4312 = !{!4313}
!4313 = !DILocalVariable(name: "flags", arg: 1, scope: !4309, file: !4069, line: 120, type: !182)
!4314 = !DILocation(line: 120, column: 67, scope: !4309)
!4315 = !DILocation(line: 122, column: 11, scope: !4309)
!4316 = !DILocation(line: 122, column: 17, scope: !4309)
!4317 = !DILocation(line: 122, column: 9, scope: !4309)
!4318 = !DILocation(line: 122, column: 2, scope: !4309)
!4319 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !4069, file: !4069, line: 75, type: !2880, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!4320 = !DILocation(line: 77, column: 2, scope: !4319)
!4321 = !DILocation(line: 78, column: 1, scope: !4319)
!4322 = distinct !DISubprogram(name: "native_irq_enable", scope: !4069, file: !4069, line: 40, type: !2880, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!4323 = !DILocation(line: 42, column: 2, scope: !4322)
!4324 = !{i64 1302178}
!4325 = !DILocation(line: 43, column: 1, scope: !4322)
