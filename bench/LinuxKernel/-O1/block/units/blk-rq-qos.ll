; ModuleID = 'block/blk-rq-qos.c'
source_filename = "block/blk-rq-qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.rq_wait = type { %struct.wait_queue_head, %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rq_qos = type { ptr, ptr, i32, ptr, ptr }
%struct.rq_qos_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rq_depth = type { i32, i32, i8, i32, i32 }
%struct.rq_qos_wait_data = type { %struct.wait_queue_entry, ptr, ptr, ptr, ptr, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.9, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.12 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, i64 }
%union.anon.12 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, %struct.mutex, ptr, ptr, i32, %struct.xarray, i32, ptr, i64, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.refcount_struct, ptr, ptr, i32, i64, i32, i32, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i64], ptr, %struct.list_head, %struct.mutex, %struct.queue_limits, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, ptr, ptr, ptr, %struct.mutex, i8 }
%struct.percpu_ref = type { i64, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, %struct.bio_set, i32, i64, %struct.mutex, i32, ptr, %struct.kobject, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64, i32, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.lockdep_map = type {}

@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @rq_wait_inc_below(ptr noundef %rq_wait, i32 noundef %limit) #0 align 16 !dbg !5419 {
entry:
  %rq_wait.addr = alloca ptr, align 8
  %limit.addr = alloca i32, align 4
  store ptr %rq_wait, ptr %rq_wait.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq_wait.addr, metadata !5423, metadata !DIExpression()), !dbg !5425
  store i32 %limit, ptr %limit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %limit.addr, metadata !5424, metadata !DIExpression()), !dbg !5426
  %0 = load ptr, ptr %rq_wait.addr, align 8, !dbg !5427
  %inflight = getelementptr inbounds %struct.rq_wait, ptr %0, i32 0, i32 1, !dbg !5428
  %1 = load i32, ptr %limit.addr, align 4, !dbg !5429
  %call = call zeroext i1 @atomic_inc_below(ptr noundef %inflight, i32 noundef %1) #8, !dbg !5430
  ret i1 %call, !dbg !5431
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_inc_below(ptr noundef %v, i32 noundef %below) #0 align 16 !dbg !5432 {
entry:
  %retval = alloca i1, align 1
  %v.addr = alloca ptr, align 8
  %below.addr = alloca i32, align 4
  %cur = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5437, metadata !DIExpression()), !dbg !5440
  store i32 %below, ptr %below.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %below.addr, metadata !5438, metadata !DIExpression()), !dbg !5441
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur) #9, !dbg !5442
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !5439, metadata !DIExpression()), !dbg !5443
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5444
  %call = call i32 @atomic_read(ptr noundef %0) #8, !dbg !5445
  store i32 %call, ptr %cur, align 4, !dbg !5443
  br label %do.body, !dbg !5446

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %cur, align 4, !dbg !5447
  %2 = load i32, ptr %below.addr, align 4, !dbg !5450
  %cmp = icmp uge i32 %1, %2, !dbg !5451
  br i1 %cmp, label %if.then, label %if.end, !dbg !5452

if.then:                                          ; preds = %do.body
  store i1 false, ptr %retval, align 1, !dbg !5453
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5453

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !5454

do.cond:                                          ; preds = %if.end
  %3 = load ptr, ptr %v.addr, align 8, !dbg !5455
  %4 = load i32, ptr %cur, align 4, !dbg !5456
  %add = add i32 %4, 1, !dbg !5457
  %call1 = call zeroext i1 @atomic_try_cmpxchg(ptr noundef %3, ptr noundef %cur, i32 noundef %add) #8, !dbg !5458
  %lnot = xor i1 %call1, true, !dbg !5459
  br i1 %lnot, label %do.body, label %do.end, !dbg !5454, !llvm.loop !5460

do.end:                                           ; preds = %do.cond
  store i1 true, ptr %retval, align 1, !dbg !5464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5464

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur) #9, !dbg !5465
  %5 = load i1, ptr %retval, align 1, !dbg !5465
  ret i1 %5, !dbg !5465
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__rq_qos_cleanup(ptr noundef %rqos, ptr noundef %bio) #0 align 16 !dbg !5466 {
entry:
  %rqos.addr = alloca ptr, align 8
  %bio.addr = alloca ptr, align 8
  store ptr %rqos, ptr %rqos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rqos.addr, metadata !5468, metadata !DIExpression()), !dbg !5470
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !5469, metadata !DIExpression()), !dbg !5471
  br label %do.body, !dbg !5472

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %rqos.addr, align 8, !dbg !5473
  %ops = getelementptr inbounds %struct.rq_qos, ptr %0, i32 0, i32 0, !dbg !5476
  %1 = load ptr, ptr %ops, align 8, !dbg !5476
  %cleanup = getelementptr inbounds %struct.rq_qos_ops, ptr %1, i32 0, i32 7, !dbg !5477
  %2 = load ptr, ptr %cleanup, align 8, !dbg !5477
  %tobool = icmp ne ptr %2, null, !dbg !5473
  br i1 %tobool, label %if.then, label %if.end, !dbg !5478

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %rqos.addr, align 8, !dbg !5479
  %ops1 = getelementptr inbounds %struct.rq_qos, ptr %3, i32 0, i32 0, !dbg !5480
  %4 = load ptr, ptr %ops1, align 8, !dbg !5480
  %cleanup2 = getelementptr inbounds %struct.rq_qos_ops, ptr %4, i32 0, i32 7, !dbg !5481
  %5 = load ptr, ptr %cleanup2, align 8, !dbg !5481
  %6 = load ptr, ptr %rqos.addr, align 8, !dbg !5482
  %7 = load ptr, ptr %bio.addr, align 8, !dbg !5483
  call void %5(ptr noundef %6, ptr noundef %7) #8, !dbg !5479
  br label %if.end, !dbg !5479

if.end:                                           ; preds = %if.then, %do.body
  %8 = load ptr, ptr %rqos.addr, align 8, !dbg !5484
  %next = getelementptr inbounds %struct.rq_qos, ptr %8, i32 0, i32 3, !dbg !5485
  %9 = load ptr, ptr %next, align 8, !dbg !5485
  store ptr %9, ptr %rqos.addr, align 8, !dbg !5486
  br label %do.cond, !dbg !5487

do.cond:                                          ; preds = %if.end
  %10 = load ptr, ptr %rqos.addr, align 8, !dbg !5488
  %tobool3 = icmp ne ptr %10, null, !dbg !5487
  br i1 %tobool3, label %do.body, label %do.end, !dbg !5487, !llvm.loop !5489

do.end:                                           ; preds = %do.cond
  ret void, !dbg !5491
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__rq_qos_done(ptr noundef %rqos, ptr noundef %rq) #0 align 16 !dbg !5492 {
entry:
  %rqos.addr = alloca ptr, align 8
  %rq.addr = alloca ptr, align 8
  store ptr %rqos, ptr %rqos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rqos.addr, metadata !5494, metadata !DIExpression()), !dbg !5496
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !5495, metadata !DIExpression()), !dbg !5497
  br label %do.body, !dbg !5498

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %rqos.addr, align 8, !dbg !5499
  %ops = getelementptr inbounds %struct.rq_qos, ptr %0, i32 0, i32 0, !dbg !5502
  %1 = load ptr, ptr %ops, align 8, !dbg !5502
  %done = getelementptr inbounds %struct.rq_qos_ops, ptr %1, i32 0, i32 5, !dbg !5503
  %2 = load ptr, ptr %done, align 8, !dbg !5503
  %tobool = icmp ne ptr %2, null, !dbg !5499
  br i1 %tobool, label %if.then, label %if.end, !dbg !5504

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %rqos.addr, align 8, !dbg !5505
  %ops1 = getelementptr inbounds %struct.rq_qos, ptr %3, i32 0, i32 0, !dbg !5506
  %4 = load ptr, ptr %ops1, align 8, !dbg !5506
  %done2 = getelementptr inbounds %struct.rq_qos_ops, ptr %4, i32 0, i32 5, !dbg !5507
  %5 = load ptr, ptr %done2, align 8, !dbg !5507
  %6 = load ptr, ptr %rqos.addr, align 8, !dbg !5508
  %7 = load ptr, ptr %rq.addr, align 8, !dbg !5509
  call void %5(ptr noundef %6, ptr noundef %7) #8, !dbg !5505
  br label %if.end, !dbg !5505

if.end:                                           ; preds = %if.then, %do.body
  %8 = load ptr, ptr %rqos.addr, align 8, !dbg !5510
  %next = getelementptr inbounds %struct.rq_qos, ptr %8, i32 0, i32 3, !dbg !5511
  %9 = load ptr, ptr %next, align 8, !dbg !5511
  store ptr %9, ptr %rqos.addr, align 8, !dbg !5512
  br label %do.cond, !dbg !5513

do.cond:                                          ; preds = %if.end
  %10 = load ptr, ptr %rqos.addr, align 8, !dbg !5514
  %tobool3 = icmp ne ptr %10, null, !dbg !5513
  br i1 %tobool3, label %do.body, label %do.end, !dbg !5513, !llvm.loop !5515

do.end:                                           ; preds = %do.cond
  ret void, !dbg !5517
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__rq_qos_issue(ptr noundef %rqos, ptr noundef %rq) #0 align 16 !dbg !5518 {
entry:
  %rqos.addr = alloca ptr, align 8
  %rq.addr = alloca ptr, align 8
  store ptr %rqos, ptr %rqos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rqos.addr, metadata !5520, metadata !DIExpression()), !dbg !5522
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !5521, metadata !DIExpression()), !dbg !5523
  br label %do.body, !dbg !5524

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %rqos.addr, align 8, !dbg !5525
  %ops = getelementptr inbounds %struct.rq_qos, ptr %0, i32 0, i32 0, !dbg !5528
  %1 = load ptr, ptr %ops, align 8, !dbg !5528
  %issue = getelementptr inbounds %struct.rq_qos_ops, ptr %1, i32 0, i32 3, !dbg !5529
  %2 = load ptr, ptr %issue, align 8, !dbg !5529
  %tobool = icmp ne ptr %2, null, !dbg !5525
  br i1 %tobool, label %if.then, label %if.end, !dbg !5530

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %rqos.addr, align 8, !dbg !5531
  %ops1 = getelementptr inbounds %struct.rq_qos, ptr %3, i32 0, i32 0, !dbg !5532
  %4 = load ptr, ptr %ops1, align 8, !dbg !5532
  %issue2 = getelementptr inbounds %struct.rq_qos_ops, ptr %4, i32 0, i32 3, !dbg !5533
  %5 = load ptr, ptr %issue2, align 8, !dbg !5533
  %6 = load ptr, ptr %rqos.addr, align 8, !dbg !5534
  %7 = load ptr, ptr %rq.addr, align 8, !dbg !5535
  call void %5(ptr noundef %6, ptr noundef %7) #8, !dbg !5531
  br label %if.end, !dbg !5531

if.end:                                           ; preds = %if.then, %do.body
  %8 = load ptr, ptr %rqos.addr, align 8, !dbg !5536
  %next = getelementptr inbounds %struct.rq_qos, ptr %8, i32 0, i32 3, !dbg !5537
  %9 = load ptr, ptr %next, align 8, !dbg !5537
  store ptr %9, ptr %rqos.addr, align 8, !dbg !5538
  br label %do.cond, !dbg !5539

do.cond:                                          ; preds = %if.end
  %10 = load ptr, ptr %rqos.addr, align 8, !dbg !5540
  %tobool3 = icmp ne ptr %10, null, !dbg !5539
  br i1 %tobool3, label %do.body, label %do.end, !dbg !5539, !llvm.loop !5541

do.end:                                           ; preds = %do.cond
  ret void, !dbg !5543
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__rq_qos_requeue(ptr noundef %rqos, ptr noundef %rq) #0 align 16 !dbg !5544 {
entry:
  %rqos.addr = alloca ptr, align 8
  %rq.addr = alloca ptr, align 8
  store ptr %rqos, ptr %rqos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rqos.addr, metadata !5546, metadata !DIExpression()), !dbg !5548
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !5547, metadata !DIExpression()), !dbg !5549
  br label %do.body, !dbg !5550

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %rqos.addr, align 8, !dbg !5551
  %ops = getelementptr inbounds %struct.rq_qos, ptr %0, i32 0, i32 0, !dbg !5554
  %1 = load ptr, ptr %ops, align 8, !dbg !5554
  %requeue = getelementptr inbounds %struct.rq_qos_ops, ptr %1, i32 0, i32 4, !dbg !5555
  %2 = load ptr, ptr %requeue, align 8, !dbg !5555
  %tobool = icmp ne ptr %2, null, !dbg !5551
  br i1 %tobool, label %if.then, label %if.end, !dbg !5556

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %rqos.addr, align 8, !dbg !5557
  %ops1 = getelementptr inbounds %struct.rq_qos, ptr %3, i32 0, i32 0, !dbg !5558
  %4 = load ptr, ptr %ops1, align 8, !dbg !5558
  %requeue2 = getelementptr inbounds %struct.rq_qos_ops, ptr %4, i32 0, i32 4, !dbg !5559
  %5 = load ptr, ptr %requeue2, align 8, !dbg !5559
  %6 = load ptr, ptr %rqos.addr, align 8, !dbg !5560
  %7 = load ptr, ptr %rq.addr, align 8, !dbg !5561
  call void %5(ptr noundef %6, ptr noundef %7) #8, !dbg !5557
  br label %if.end, !dbg !5557

if.end:                                           ; preds = %if.then, %do.body
  %8 = load ptr, ptr %rqos.addr, align 8, !dbg !5562
  %next = getelementptr inbounds %struct.rq_qos, ptr %8, i32 0, i32 3, !dbg !5563
  %9 = load ptr, ptr %next, align 8, !dbg !5563
  store ptr %9, ptr %rqos.addr, align 8, !dbg !5564
  br label %do.cond, !dbg !5565

do.cond:                                          ; preds = %if.end
  %10 = load ptr, ptr %rqos.addr, align 8, !dbg !5566
  %tobool3 = icmp ne ptr %10, null, !dbg !5565
  br i1 %tobool3, label %do.body, label %do.end, !dbg !5565, !llvm.loop !5567

do.end:                                           ; preds = %do.cond
  ret void, !dbg !5569
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__rq_qos_throttle(ptr noundef %rqos, ptr noundef %bio) #0 align 16 !dbg !5570 {
entry:
  %rqos.addr = alloca ptr, align 8
  %bio.addr = alloca ptr, align 8
  store ptr %rqos, ptr %rqos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rqos.addr, metadata !5572, metadata !DIExpression()), !dbg !5574
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !5573, metadata !DIExpression()), !dbg !5575
  br label %do.body, !dbg !5576

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %rqos.addr, align 8, !dbg !5577
  %ops = getelementptr inbounds %struct.rq_qos, ptr %0, i32 0, i32 0, !dbg !5580
  %1 = load ptr, ptr %ops, align 8, !dbg !5580
  %throttle = getelementptr inbounds %struct.rq_qos_ops, ptr %1, i32 0, i32 0, !dbg !5581
  %2 = load ptr, ptr %throttle, align 8, !dbg !5581
  %tobool = icmp ne ptr %2, null, !dbg !5577
  br i1 %tobool, label %if.then, label %if.end, !dbg !5582

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %rqos.addr, align 8, !dbg !5583
  %ops1 = getelementptr inbounds %struct.rq_qos, ptr %3, i32 0, i32 0, !dbg !5584
  %4 = load ptr, ptr %ops1, align 8, !dbg !5584
  %throttle2 = getelementptr inbounds %struct.rq_qos_ops, ptr %4, i32 0, i32 0, !dbg !5585
  %5 = load ptr, ptr %throttle2, align 8, !dbg !5585
  %6 = load ptr, ptr %rqos.addr, align 8, !dbg !5586
  %7 = load ptr, ptr %bio.addr, align 8, !dbg !5587
  call void %5(ptr noundef %6, ptr noundef %7) #8, !dbg !5583
  br label %if.end, !dbg !5583

if.end:                                           ; preds = %if.then, %do.body
  %8 = load ptr, ptr %rqos.addr, align 8, !dbg !5588
  %next = getelementptr inbounds %struct.rq_qos, ptr %8, i32 0, i32 3, !dbg !5589
  %9 = load ptr, ptr %next, align 8, !dbg !5589
  store ptr %9, ptr %rqos.addr, align 8, !dbg !5590
  br label %do.cond, !dbg !5591

do.cond:                                          ; preds = %if.end
  %10 = load ptr, ptr %rqos.addr, align 8, !dbg !5592
  %tobool3 = icmp ne ptr %10, null, !dbg !5591
  br i1 %tobool3, label %do.body, label %do.end, !dbg !5591, !llvm.loop !5593

do.end:                                           ; preds = %do.cond
  ret void, !dbg !5595
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__rq_qos_track(ptr noundef %rqos, ptr noundef %rq, ptr noundef %bio) #0 align 16 !dbg !5596 {
entry:
  %rqos.addr = alloca ptr, align 8
  %rq.addr = alloca ptr, align 8
  %bio.addr = alloca ptr, align 8
  store ptr %rqos, ptr %rqos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rqos.addr, metadata !5598, metadata !DIExpression()), !dbg !5601
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !5599, metadata !DIExpression()), !dbg !5602
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !5600, metadata !DIExpression()), !dbg !5603
  br label %do.body, !dbg !5604

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %rqos.addr, align 8, !dbg !5605
  %ops = getelementptr inbounds %struct.rq_qos, ptr %0, i32 0, i32 0, !dbg !5608
  %1 = load ptr, ptr %ops, align 8, !dbg !5608
  %track = getelementptr inbounds %struct.rq_qos_ops, ptr %1, i32 0, i32 1, !dbg !5609
  %2 = load ptr, ptr %track, align 8, !dbg !5609
  %tobool = icmp ne ptr %2, null, !dbg !5605
  br i1 %tobool, label %if.then, label %if.end, !dbg !5610

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %rqos.addr, align 8, !dbg !5611
  %ops1 = getelementptr inbounds %struct.rq_qos, ptr %3, i32 0, i32 0, !dbg !5612
  %4 = load ptr, ptr %ops1, align 8, !dbg !5612
  %track2 = getelementptr inbounds %struct.rq_qos_ops, ptr %4, i32 0, i32 1, !dbg !5613
  %5 = load ptr, ptr %track2, align 8, !dbg !5613
  %6 = load ptr, ptr %rqos.addr, align 8, !dbg !5614
  %7 = load ptr, ptr %rq.addr, align 8, !dbg !5615
  %8 = load ptr, ptr %bio.addr, align 8, !dbg !5616
  call void %5(ptr noundef %6, ptr noundef %7, ptr noundef %8) #8, !dbg !5611
  br label %if.end, !dbg !5611

if.end:                                           ; preds = %if.then, %do.body
  %9 = load ptr, ptr %rqos.addr, align 8, !dbg !5617
  %next = getelementptr inbounds %struct.rq_qos, ptr %9, i32 0, i32 3, !dbg !5618
  %10 = load ptr, ptr %next, align 8, !dbg !5618
  store ptr %10, ptr %rqos.addr, align 8, !dbg !5619
  br label %do.cond, !dbg !5620

do.cond:                                          ; preds = %if.end
  %11 = load ptr, ptr %rqos.addr, align 8, !dbg !5621
  %tobool3 = icmp ne ptr %11, null, !dbg !5620
  br i1 %tobool3, label %do.body, label %do.end, !dbg !5620, !llvm.loop !5622

do.end:                                           ; preds = %do.cond
  ret void, !dbg !5624
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__rq_qos_merge(ptr noundef %rqos, ptr noundef %rq, ptr noundef %bio) #0 align 16 !dbg !5625 {
entry:
  %rqos.addr = alloca ptr, align 8
  %rq.addr = alloca ptr, align 8
  %bio.addr = alloca ptr, align 8
  store ptr %rqos, ptr %rqos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rqos.addr, metadata !5627, metadata !DIExpression()), !dbg !5630
  store ptr %rq, ptr %rq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !5628, metadata !DIExpression()), !dbg !5631
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !5629, metadata !DIExpression()), !dbg !5632
  br label %do.body, !dbg !5633

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %rqos.addr, align 8, !dbg !5634
  %ops = getelementptr inbounds %struct.rq_qos, ptr %0, i32 0, i32 0, !dbg !5637
  %1 = load ptr, ptr %ops, align 8, !dbg !5637
  %merge = getelementptr inbounds %struct.rq_qos_ops, ptr %1, i32 0, i32 2, !dbg !5638
  %2 = load ptr, ptr %merge, align 8, !dbg !5638
  %tobool = icmp ne ptr %2, null, !dbg !5634
  br i1 %tobool, label %if.then, label %if.end, !dbg !5639

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %rqos.addr, align 8, !dbg !5640
  %ops1 = getelementptr inbounds %struct.rq_qos, ptr %3, i32 0, i32 0, !dbg !5641
  %4 = load ptr, ptr %ops1, align 8, !dbg !5641
  %merge2 = getelementptr inbounds %struct.rq_qos_ops, ptr %4, i32 0, i32 2, !dbg !5642
  %5 = load ptr, ptr %merge2, align 8, !dbg !5642
  %6 = load ptr, ptr %rqos.addr, align 8, !dbg !5643
  %7 = load ptr, ptr %rq.addr, align 8, !dbg !5644
  %8 = load ptr, ptr %bio.addr, align 8, !dbg !5645
  call void %5(ptr noundef %6, ptr noundef %7, ptr noundef %8) #8, !dbg !5640
  br label %if.end, !dbg !5640

if.end:                                           ; preds = %if.then, %do.body
  %9 = load ptr, ptr %rqos.addr, align 8, !dbg !5646
  %next = getelementptr inbounds %struct.rq_qos, ptr %9, i32 0, i32 3, !dbg !5647
  %10 = load ptr, ptr %next, align 8, !dbg !5647
  store ptr %10, ptr %rqos.addr, align 8, !dbg !5648
  br label %do.cond, !dbg !5649

do.cond:                                          ; preds = %if.end
  %11 = load ptr, ptr %rqos.addr, align 8, !dbg !5650
  %tobool3 = icmp ne ptr %11, null, !dbg !5649
  br i1 %tobool3, label %do.body, label %do.end, !dbg !5649, !llvm.loop !5651

do.end:                                           ; preds = %do.cond
  ret void, !dbg !5653
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__rq_qos_done_bio(ptr noundef %rqos, ptr noundef %bio) #0 align 16 !dbg !5654 {
entry:
  %rqos.addr = alloca ptr, align 8
  %bio.addr = alloca ptr, align 8
  store ptr %rqos, ptr %rqos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rqos.addr, metadata !5656, metadata !DIExpression()), !dbg !5658
  store ptr %bio, ptr %bio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bio.addr, metadata !5657, metadata !DIExpression()), !dbg !5659
  br label %do.body, !dbg !5660

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %rqos.addr, align 8, !dbg !5661
  %ops = getelementptr inbounds %struct.rq_qos, ptr %0, i32 0, i32 0, !dbg !5664
  %1 = load ptr, ptr %ops, align 8, !dbg !5664
  %done_bio = getelementptr inbounds %struct.rq_qos_ops, ptr %1, i32 0, i32 6, !dbg !5665
  %2 = load ptr, ptr %done_bio, align 8, !dbg !5665
  %tobool = icmp ne ptr %2, null, !dbg !5661
  br i1 %tobool, label %if.then, label %if.end, !dbg !5666

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %rqos.addr, align 8, !dbg !5667
  %ops1 = getelementptr inbounds %struct.rq_qos, ptr %3, i32 0, i32 0, !dbg !5668
  %4 = load ptr, ptr %ops1, align 8, !dbg !5668
  %done_bio2 = getelementptr inbounds %struct.rq_qos_ops, ptr %4, i32 0, i32 6, !dbg !5669
  %5 = load ptr, ptr %done_bio2, align 8, !dbg !5669
  %6 = load ptr, ptr %rqos.addr, align 8, !dbg !5670
  %7 = load ptr, ptr %bio.addr, align 8, !dbg !5671
  call void %5(ptr noundef %6, ptr noundef %7) #8, !dbg !5667
  br label %if.end, !dbg !5667

if.end:                                           ; preds = %if.then, %do.body
  %8 = load ptr, ptr %rqos.addr, align 8, !dbg !5672
  %next = getelementptr inbounds %struct.rq_qos, ptr %8, i32 0, i32 3, !dbg !5673
  %9 = load ptr, ptr %next, align 8, !dbg !5673
  store ptr %9, ptr %rqos.addr, align 8, !dbg !5674
  br label %do.cond, !dbg !5675

do.cond:                                          ; preds = %if.end
  %10 = load ptr, ptr %rqos.addr, align 8, !dbg !5676
  %tobool3 = icmp ne ptr %10, null, !dbg !5675
  br i1 %tobool3, label %do.body, label %do.end, !dbg !5675, !llvm.loop !5677

do.end:                                           ; preds = %do.cond
  ret void, !dbg !5679
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__rq_qos_queue_depth_changed(ptr noundef %rqos) #0 align 16 !dbg !5680 {
entry:
  %rqos.addr = alloca ptr, align 8
  store ptr %rqos, ptr %rqos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rqos.addr, metadata !5682, metadata !DIExpression()), !dbg !5683
  br label %do.body, !dbg !5684

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %rqos.addr, align 8, !dbg !5685
  %ops = getelementptr inbounds %struct.rq_qos, ptr %0, i32 0, i32 0, !dbg !5688
  %1 = load ptr, ptr %ops, align 8, !dbg !5688
  %queue_depth_changed = getelementptr inbounds %struct.rq_qos_ops, ptr %1, i32 0, i32 8, !dbg !5689
  %2 = load ptr, ptr %queue_depth_changed, align 8, !dbg !5689
  %tobool = icmp ne ptr %2, null, !dbg !5685
  br i1 %tobool, label %if.then, label %if.end, !dbg !5690

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %rqos.addr, align 8, !dbg !5691
  %ops1 = getelementptr inbounds %struct.rq_qos, ptr %3, i32 0, i32 0, !dbg !5692
  %4 = load ptr, ptr %ops1, align 8, !dbg !5692
  %queue_depth_changed2 = getelementptr inbounds %struct.rq_qos_ops, ptr %4, i32 0, i32 8, !dbg !5693
  %5 = load ptr, ptr %queue_depth_changed2, align 8, !dbg !5693
  %6 = load ptr, ptr %rqos.addr, align 8, !dbg !5694
  call void %5(ptr noundef %6) #8, !dbg !5691
  br label %if.end, !dbg !5691

if.end:                                           ; preds = %if.then, %do.body
  %7 = load ptr, ptr %rqos.addr, align 8, !dbg !5695
  %next = getelementptr inbounds %struct.rq_qos, ptr %7, i32 0, i32 3, !dbg !5696
  %8 = load ptr, ptr %next, align 8, !dbg !5696
  store ptr %8, ptr %rqos.addr, align 8, !dbg !5697
  br label %do.cond, !dbg !5698

do.cond:                                          ; preds = %if.end
  %9 = load ptr, ptr %rqos.addr, align 8, !dbg !5699
  %tobool3 = icmp ne ptr %9, null, !dbg !5698
  br i1 %tobool3, label %do.body, label %do.end, !dbg !5698, !llvm.loop !5700

do.end:                                           ; preds = %do.cond
  ret void, !dbg !5702
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @rq_depth_calc_max_depth(ptr noundef %rqd) #0 align 16 !dbg !5703 {
entry:
  %rqd.addr = alloca ptr, align 8
  %depth = alloca i32, align 4
  %ret = alloca i8, align 1
  %__UNIQUE_ID___x346 = alloca i32, align 4
  %__UNIQUE_ID___y347 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x348 = alloca i32, align 4
  %__UNIQUE_ID___y349 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %maxd = alloca i32, align 4
  store ptr %rqd, ptr %rqd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rqd.addr, metadata !5715, metadata !DIExpression()), !dbg !5730
  call void @llvm.lifetime.start.p0(i64 4, ptr %depth) #9, !dbg !5731
  call void @llvm.dbg.declare(metadata ptr %depth, metadata !5716, metadata !DIExpression()), !dbg !5732
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #9, !dbg !5733
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5717, metadata !DIExpression()), !dbg !5734
  store i8 0, ptr %ret, align 1, !dbg !5734
  %0 = load ptr, ptr %rqd.addr, align 8, !dbg !5735
  %queue_depth = getelementptr inbounds %struct.rq_depth, ptr %0, i32 0, i32 3, !dbg !5736
  %1 = load i32, ptr %queue_depth, align 4, !dbg !5736
  %cmp = icmp eq i32 %1, 1, !dbg !5737
  br i1 %cmp, label %if.then, label %if.else4, !dbg !5738

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %rqd.addr, align 8, !dbg !5739
  %scale_step = getelementptr inbounds %struct.rq_depth, ptr %2, i32 0, i32 1, !dbg !5742
  %3 = load i32, ptr %scale_step, align 4, !dbg !5742
  %cmp1 = icmp sgt i32 %3, 0, !dbg !5743
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !5744

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %rqd.addr, align 8, !dbg !5745
  %max_depth = getelementptr inbounds %struct.rq_depth, ptr %4, i32 0, i32 0, !dbg !5746
  store i32 1, ptr %max_depth, align 4, !dbg !5747
  br label %if.end, !dbg !5745

if.else:                                          ; preds = %if.then
  %5 = load ptr, ptr %rqd.addr, align 8, !dbg !5748
  %max_depth3 = getelementptr inbounds %struct.rq_depth, ptr %5, i32 0, i32 0, !dbg !5750
  store i32 2, ptr %max_depth3, align 4, !dbg !5751
  store i8 1, ptr %ret, align 1, !dbg !5752
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end32, !dbg !5753

if.else4:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x346) #9, !dbg !5754
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x346, metadata !5718, metadata !DIExpression()), !dbg !5754
  %6 = load ptr, ptr %rqd.addr, align 8, !dbg !5754
  %default_depth = getelementptr inbounds %struct.rq_depth, ptr %6, i32 0, i32 4, !dbg !5754
  %7 = load i32, ptr %default_depth, align 4, !dbg !5754
  store i32 %7, ptr %__UNIQUE_ID___x346, align 4, !dbg !5754
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y347) #9, !dbg !5754
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y347, metadata !5722, metadata !DIExpression()), !dbg !5754
  %8 = load ptr, ptr %rqd.addr, align 8, !dbg !5754
  %queue_depth5 = getelementptr inbounds %struct.rq_depth, ptr %8, i32 0, i32 3, !dbg !5754
  %9 = load i32, ptr %queue_depth5, align 4, !dbg !5754
  store i32 %9, ptr %__UNIQUE_ID___y347, align 4, !dbg !5754
  %10 = load i32, ptr %__UNIQUE_ID___x346, align 4, !dbg !5754
  %11 = load i32, ptr %__UNIQUE_ID___y347, align 4, !dbg !5754
  %cmp6 = icmp ult i32 %10, %11, !dbg !5754
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !5754

cond.true:                                        ; preds = %if.else4
  %12 = load i32, ptr %__UNIQUE_ID___x346, align 4, !dbg !5754
  br label %cond.end, !dbg !5754

cond.false:                                       ; preds = %if.else4
  %13 = load i32, ptr %__UNIQUE_ID___y347, align 4, !dbg !5754
  br label %cond.end, !dbg !5754

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %13, %cond.false ], !dbg !5754
  store i32 %cond, ptr %tmp, align 4, !dbg !5754
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y347) #9, !dbg !5755
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x346) #9, !dbg !5755
  %14 = load i32, ptr %tmp, align 4, !dbg !5754
  store i32 %14, ptr %depth, align 4, !dbg !5756
  %15 = load ptr, ptr %rqd.addr, align 8, !dbg !5757
  %scale_step7 = getelementptr inbounds %struct.rq_depth, ptr %15, i32 0, i32 1, !dbg !5758
  %16 = load i32, ptr %scale_step7, align 4, !dbg !5758
  %cmp8 = icmp sgt i32 %16, 0, !dbg !5759
  br i1 %cmp8, label %if.then9, label %if.else17, !dbg !5760

if.then9:                                         ; preds = %cond.end
  %17 = load i32, ptr %depth, align 4, !dbg !5761
  %sub = sub i32 %17, 1, !dbg !5762
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x348) #9, !dbg !5763
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x348, metadata !5723, metadata !DIExpression()), !dbg !5763
  store i32 31, ptr %__UNIQUE_ID___x348, align 4, !dbg !5763
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y349) #9, !dbg !5763
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y349, metadata !5726, metadata !DIExpression()), !dbg !5763
  %18 = load ptr, ptr %rqd.addr, align 8, !dbg !5763
  %scale_step10 = getelementptr inbounds %struct.rq_depth, ptr %18, i32 0, i32 1, !dbg !5763
  %19 = load i32, ptr %scale_step10, align 4, !dbg !5763
  store i32 %19, ptr %__UNIQUE_ID___y349, align 4, !dbg !5763
  %20 = load i32, ptr %__UNIQUE_ID___x348, align 4, !dbg !5763
  %21 = load i32, ptr %__UNIQUE_ID___y349, align 4, !dbg !5763
  %cmp12 = icmp slt i32 %20, %21, !dbg !5763
  br i1 %cmp12, label %cond.true13, label %cond.false14, !dbg !5763

cond.true13:                                      ; preds = %if.then9
  %22 = load i32, ptr %__UNIQUE_ID___x348, align 4, !dbg !5763
  br label %cond.end15, !dbg !5763

cond.false14:                                     ; preds = %if.then9
  %23 = load i32, ptr %__UNIQUE_ID___y349, align 4, !dbg !5763
  br label %cond.end15, !dbg !5763

cond.end15:                                       ; preds = %cond.false14, %cond.true13
  %cond16 = phi i32 [ %22, %cond.true13 ], [ %23, %cond.false14 ], !dbg !5763
  store i32 %cond16, ptr %tmp11, align 4, !dbg !5763
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y349) #9, !dbg !5764
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x348) #9, !dbg !5764
  %24 = load i32, ptr %tmp11, align 4, !dbg !5763
  %shr = lshr i32 %sub, %24, !dbg !5765
  %add = add i32 1, %shr, !dbg !5766
  store i32 %add, ptr %depth, align 4, !dbg !5767
  br label %if.end30, !dbg !5768

if.else17:                                        ; preds = %cond.end
  %25 = load ptr, ptr %rqd.addr, align 8, !dbg !5769
  %scale_step18 = getelementptr inbounds %struct.rq_depth, ptr %25, i32 0, i32 1, !dbg !5770
  %26 = load i32, ptr %scale_step18, align 4, !dbg !5770
  %cmp19 = icmp slt i32 %26, 0, !dbg !5771
  br i1 %cmp19, label %if.then20, label %if.end29, !dbg !5772

if.then20:                                        ; preds = %if.else17
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxd) #9, !dbg !5773
  call void @llvm.dbg.declare(metadata ptr %maxd, metadata !5727, metadata !DIExpression()), !dbg !5774
  %27 = load ptr, ptr %rqd.addr, align 8, !dbg !5775
  %queue_depth21 = getelementptr inbounds %struct.rq_depth, ptr %27, i32 0, i32 3, !dbg !5776
  %28 = load i32, ptr %queue_depth21, align 4, !dbg !5776
  %mul = mul i32 3, %28, !dbg !5777
  %div = udiv i32 %mul, 4, !dbg !5778
  store i32 %div, ptr %maxd, align 4, !dbg !5774
  %29 = load i32, ptr %depth, align 4, !dbg !5779
  %sub22 = sub i32 %29, 1, !dbg !5780
  %30 = load ptr, ptr %rqd.addr, align 8, !dbg !5781
  %scale_step23 = getelementptr inbounds %struct.rq_depth, ptr %30, i32 0, i32 1, !dbg !5782
  %31 = load i32, ptr %scale_step23, align 4, !dbg !5782
  %sub24 = sub i32 0, %31, !dbg !5783
  %shl = shl i32 %sub22, %sub24, !dbg !5784
  %add25 = add i32 1, %shl, !dbg !5785
  store i32 %add25, ptr %depth, align 4, !dbg !5786
  %32 = load i32, ptr %depth, align 4, !dbg !5787
  %33 = load i32, ptr %maxd, align 4, !dbg !5789
  %cmp26 = icmp ugt i32 %32, %33, !dbg !5790
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !5791

if.then27:                                        ; preds = %if.then20
  %34 = load i32, ptr %maxd, align 4, !dbg !5792
  store i32 %34, ptr %depth, align 4, !dbg !5794
  store i8 1, ptr %ret, align 1, !dbg !5795
  br label %if.end28, !dbg !5796

if.end28:                                         ; preds = %if.then27, %if.then20
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxd) #9, !dbg !5797
  br label %if.end29, !dbg !5798

if.end29:                                         ; preds = %if.end28, %if.else17
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %cond.end15
  %35 = load i32, ptr %depth, align 4, !dbg !5799
  %36 = load ptr, ptr %rqd.addr, align 8, !dbg !5800
  %max_depth31 = getelementptr inbounds %struct.rq_depth, ptr %36, i32 0, i32 0, !dbg !5801
  store i32 %35, ptr %max_depth31, align 4, !dbg !5802
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %if.end
  %37 = load i8, ptr %ret, align 1, !dbg !5803, !range !5804, !noundef !594
  %tobool = trunc i8 %37 to i1, !dbg !5803
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #9, !dbg !5805
  call void @llvm.lifetime.end.p0(i64 4, ptr %depth) #9, !dbg !5805
  ret i1 %tobool, !dbg !5806
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @rq_depth_scale_up(ptr noundef %rqd) #0 align 16 !dbg !5807 {
entry:
  %retval = alloca i1, align 1
  %rqd.addr = alloca ptr, align 8
  store ptr %rqd, ptr %rqd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rqd.addr, metadata !5809, metadata !DIExpression()), !dbg !5810
  %0 = load ptr, ptr %rqd.addr, align 8, !dbg !5811
  %scaled_max = getelementptr inbounds %struct.rq_depth, ptr %0, i32 0, i32 2, !dbg !5813
  %1 = load i8, ptr %scaled_max, align 4, !dbg !5813, !range !5804, !noundef !594
  %tobool = trunc i8 %1 to i1, !dbg !5813
  br i1 %tobool, label %if.then, label %if.end, !dbg !5814

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5815
  br label %return, !dbg !5815

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %rqd.addr, align 8, !dbg !5816
  %scale_step = getelementptr inbounds %struct.rq_depth, ptr %2, i32 0, i32 1, !dbg !5817
  %3 = load i32, ptr %scale_step, align 4, !dbg !5818
  %dec = add i32 %3, -1, !dbg !5818
  store i32 %dec, ptr %scale_step, align 4, !dbg !5818
  %4 = load ptr, ptr %rqd.addr, align 8, !dbg !5819
  %call = call zeroext i1 @rq_depth_calc_max_depth(ptr noundef %4) #8, !dbg !5820
  %5 = load ptr, ptr %rqd.addr, align 8, !dbg !5821
  %scaled_max1 = getelementptr inbounds %struct.rq_depth, ptr %5, i32 0, i32 2, !dbg !5822
  %frombool = zext i1 %call to i8, !dbg !5823
  store i8 %frombool, ptr %scaled_max1, align 4, !dbg !5823
  store i1 true, ptr %retval, align 1, !dbg !5824
  br label %return, !dbg !5824

return:                                           ; preds = %if.end, %if.then
  %6 = load i1, ptr %retval, align 1, !dbg !5825
  ret i1 %6, !dbg !5825
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @rq_depth_scale_down(ptr noundef %rqd, i1 noundef zeroext %hard_throttle) #0 align 16 !dbg !5826 {
entry:
  %retval = alloca i1, align 1
  %rqd.addr = alloca ptr, align 8
  %hard_throttle.addr = alloca i8, align 1
  store ptr %rqd, ptr %rqd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rqd.addr, metadata !5830, metadata !DIExpression()), !dbg !5832
  %frombool = zext i1 %hard_throttle to i8
  store i8 %frombool, ptr %hard_throttle.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %hard_throttle.addr, metadata !5831, metadata !DIExpression()), !dbg !5833
  %0 = load ptr, ptr %rqd.addr, align 8, !dbg !5834
  %max_depth = getelementptr inbounds %struct.rq_depth, ptr %0, i32 0, i32 0, !dbg !5836
  %1 = load i32, ptr %max_depth, align 4, !dbg !5836
  %cmp = icmp eq i32 %1, 1, !dbg !5837
  br i1 %cmp, label %if.then, label %if.end, !dbg !5838

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5839
  br label %return, !dbg !5839

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %rqd.addr, align 8, !dbg !5840
  %scale_step = getelementptr inbounds %struct.rq_depth, ptr %2, i32 0, i32 1, !dbg !5842
  %3 = load i32, ptr %scale_step, align 4, !dbg !5842
  %cmp1 = icmp slt i32 %3, 0, !dbg !5843
  br i1 %cmp1, label %land.lhs.true, label %if.else, !dbg !5844

land.lhs.true:                                    ; preds = %if.end
  %4 = load i8, ptr %hard_throttle.addr, align 1, !dbg !5845, !range !5804, !noundef !594
  %tobool = trunc i8 %4 to i1, !dbg !5845
  br i1 %tobool, label %if.then2, label %if.else, !dbg !5846

if.then2:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr %rqd.addr, align 8, !dbg !5847
  %scale_step3 = getelementptr inbounds %struct.rq_depth, ptr %5, i32 0, i32 1, !dbg !5848
  store i32 0, ptr %scale_step3, align 4, !dbg !5849
  br label %if.end5, !dbg !5847

if.else:                                          ; preds = %land.lhs.true, %if.end
  %6 = load ptr, ptr %rqd.addr, align 8, !dbg !5850
  %scale_step4 = getelementptr inbounds %struct.rq_depth, ptr %6, i32 0, i32 1, !dbg !5851
  %7 = load i32, ptr %scale_step4, align 4, !dbg !5852
  %inc = add i32 %7, 1, !dbg !5852
  store i32 %inc, ptr %scale_step4, align 4, !dbg !5852
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %8 = load ptr, ptr %rqd.addr, align 8, !dbg !5853
  %scaled_max = getelementptr inbounds %struct.rq_depth, ptr %8, i32 0, i32 2, !dbg !5854
  store i8 0, ptr %scaled_max, align 4, !dbg !5855
  %9 = load ptr, ptr %rqd.addr, align 8, !dbg !5856
  %call = call zeroext i1 @rq_depth_calc_max_depth(ptr noundef %9) #8, !dbg !5857
  store i1 true, ptr %retval, align 1, !dbg !5858
  br label %return, !dbg !5858

return:                                           ; preds = %if.end5, %if.then
  %10 = load i1, ptr %retval, align 1, !dbg !5859
  ret i1 %10, !dbg !5859
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rq_qos_wait(ptr noundef %rqw, ptr noundef %private_data, ptr noundef %acquire_inflight_cb, ptr noundef %cleanup_cb) #0 align 16 !dbg !5860 {
entry:
  %rqw.addr = alloca ptr, align 8
  %private_data.addr = alloca ptr, align 8
  %acquire_inflight_cb.addr = alloca ptr, align 8
  %cleanup_cb.addr = alloca ptr, align 8
  %data = alloca %struct.rq_qos_wait_data, align 8
  %has_sleeper = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp52 = alloca i32, align 4
  store ptr %rqw, ptr %rqw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rqw.addr, metadata !5868, metadata !DIExpression()), !dbg !5882
  store ptr %private_data, ptr %private_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %private_data.addr, metadata !5869, metadata !DIExpression()), !dbg !5883
  store ptr %acquire_inflight_cb, ptr %acquire_inflight_cb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %acquire_inflight_cb.addr, metadata !5870, metadata !DIExpression()), !dbg !5884
  store ptr %cleanup_cb, ptr %cleanup_cb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cleanup_cb.addr, metadata !5871, metadata !DIExpression()), !dbg !5885
  call void @llvm.lifetime.start.p0(i64 80, ptr %data) #9, !dbg !5886
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5872, metadata !DIExpression()), !dbg !5887
  %wq = getelementptr inbounds %struct.rq_qos_wait_data, ptr %data, i32 0, i32 0, !dbg !5888
  %flags = getelementptr inbounds %struct.wait_queue_entry, ptr %wq, i32 0, i32 0, !dbg !5889
  store i32 0, ptr %flags, align 8, !dbg !5889
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %wq, i32 0, i32 1, !dbg !5889
  store ptr null, ptr %private, align 8, !dbg !5889
  %func = getelementptr inbounds %struct.wait_queue_entry, ptr %wq, i32 0, i32 2, !dbg !5889
  store ptr @rq_qos_wake_function, ptr %func, align 8, !dbg !5889
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq, i32 0, i32 3, !dbg !5889
  %next = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 0, !dbg !5890
  %wq2 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %data, i32 0, i32 0, !dbg !5890
  %entry3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq2, i32 0, i32 3, !dbg !5890
  store ptr %entry3, ptr %next, align 8, !dbg !5890
  %prev = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1, !dbg !5890
  %wq4 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %data, i32 0, i32 0, !dbg !5890
  %entry5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq4, i32 0, i32 3, !dbg !5890
  store ptr %entry5, ptr %prev, align 8, !dbg !5890
  %task = getelementptr inbounds %struct.rq_qos_wait_data, ptr %data, i32 0, i32 1, !dbg !5888
  %call = call ptr @get_current() #8, !dbg !5891
  store ptr %call, ptr %task, align 8, !dbg !5888
  %rqw6 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %data, i32 0, i32 2, !dbg !5888
  %0 = load ptr, ptr %rqw.addr, align 8, !dbg !5892
  store ptr %0, ptr %rqw6, align 8, !dbg !5888
  %cb = getelementptr inbounds %struct.rq_qos_wait_data, ptr %data, i32 0, i32 3, !dbg !5888
  %1 = load ptr, ptr %acquire_inflight_cb.addr, align 8, !dbg !5893
  store ptr %1, ptr %cb, align 8, !dbg !5888
  %private_data7 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %data, i32 0, i32 4, !dbg !5888
  %2 = load ptr, ptr %private_data.addr, align 8, !dbg !5894
  store ptr %2, ptr %private_data7, align 8, !dbg !5888
  %got_token = getelementptr inbounds %struct.rq_qos_wait_data, ptr %data, i32 0, i32 5, !dbg !5888
  store i8 0, ptr %got_token, align 8, !dbg !5888
  call void @llvm.lifetime.start.p0(i64 1, ptr %has_sleeper) #9, !dbg !5895
  call void @llvm.dbg.declare(metadata ptr %has_sleeper, metadata !5873, metadata !DIExpression()), !dbg !5896
  %3 = load ptr, ptr %rqw.addr, align 8, !dbg !5897
  %wait = getelementptr inbounds %struct.rq_wait, ptr %3, i32 0, i32 0, !dbg !5898
  %call8 = call zeroext i1 @wq_has_sleeper(ptr noundef %wait) #8, !dbg !5899
  %frombool = zext i1 %call8 to i8, !dbg !5900
  store i8 %frombool, ptr %has_sleeper, align 1, !dbg !5900
  %4 = load i8, ptr %has_sleeper, align 1, !dbg !5901, !range !5804, !noundef !594
  %tobool = trunc i8 %4 to i1, !dbg !5901
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5903

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %acquire_inflight_cb.addr, align 8, !dbg !5904
  %6 = load ptr, ptr %rqw.addr, align 8, !dbg !5905
  %7 = load ptr, ptr %private_data.addr, align 8, !dbg !5906
  %call9 = call zeroext i1 %5(ptr noundef %6, ptr noundef %7) #8, !dbg !5904
  br i1 %call9, label %if.then, label %if.end, !dbg !5907

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5908

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load ptr, ptr %rqw.addr, align 8, !dbg !5909
  %wait10 = getelementptr inbounds %struct.rq_wait, ptr %8, i32 0, i32 0, !dbg !5910
  %wq11 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %data, i32 0, i32 0, !dbg !5911
  %call12 = call zeroext i1 @prepare_to_wait_exclusive(ptr noundef %wait10, ptr noundef %wq11, i32 noundef 2) #8, !dbg !5912
  %lnot = xor i1 %call12, true, !dbg !5913
  %frombool13 = zext i1 %lnot to i8, !dbg !5914
  store i8 %frombool13, ptr %has_sleeper, align 1, !dbg !5914
  br label %do.body, !dbg !5915

do.body:                                          ; preds = %do.cond59, %if.end
  %got_token14 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %data, i32 0, i32 5, !dbg !5916
  %9 = load i8, ptr %got_token14, align 8, !dbg !5916, !range !5804, !noundef !594
  %tobool15 = trunc i8 %9 to i1, !dbg !5916
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5918

if.then16:                                        ; preds = %do.body
  br label %do.end60, !dbg !5919

if.end17:                                         ; preds = %do.body
  %10 = load i8, ptr %has_sleeper, align 1, !dbg !5920, !range !5804, !noundef !594
  %tobool18 = trunc i8 %10 to i1, !dbg !5920
  br i1 %tobool18, label %if.end38, label %land.lhs.true19, !dbg !5922

land.lhs.true19:                                  ; preds = %if.end17
  %11 = load ptr, ptr %acquire_inflight_cb.addr, align 8, !dbg !5923
  %12 = load ptr, ptr %rqw.addr, align 8, !dbg !5924
  %13 = load ptr, ptr %private_data.addr, align 8, !dbg !5925
  %call20 = call zeroext i1 %11(ptr noundef %12, ptr noundef %13) #8, !dbg !5923
  br i1 %call20, label %if.then21, label %if.end38, !dbg !5926

if.then21:                                        ; preds = %land.lhs.true19
  %14 = load ptr, ptr %rqw.addr, align 8, !dbg !5927
  %wait22 = getelementptr inbounds %struct.rq_wait, ptr %14, i32 0, i32 0, !dbg !5929
  %wq23 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %data, i32 0, i32 0, !dbg !5930
  call void @finish_wait(ptr noundef %wait22, ptr noundef %wq23) #8, !dbg !5931
  br label %do.body24, !dbg !5932

do.body24:                                        ; preds = %if.then21
  br label %do.body25, !dbg !5933

do.body25:                                        ; preds = %do.body24
  br label %do.cond, !dbg !5935

do.cond:                                          ; preds = %do.body25
  br label %do.end, !dbg !5935

do.end:                                           ; preds = %do.cond
  br label %do.body26, !dbg !5933

do.body26:                                        ; preds = %do.end
  br label %do.body27, !dbg !5937

do.body27:                                        ; preds = %do.body26
  br label %do.cond28, !dbg !5939

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !5939

do.end29:                                         ; preds = %do.cond28
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5937, !srcloc !5941
  br label %do.cond30, !dbg !5937

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !5937

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !5933

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !5933

do.end33:                                         ; preds = %do.cond32
  %got_token34 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %data, i32 0, i32 5, !dbg !5942
  %15 = load i8, ptr %got_token34, align 8, !dbg !5942, !range !5804, !noundef !594
  %tobool35 = trunc i8 %15 to i1, !dbg !5942
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !5944

if.then36:                                        ; preds = %do.end33
  %16 = load ptr, ptr %cleanup_cb.addr, align 8, !dbg !5945
  %17 = load ptr, ptr %rqw.addr, align 8, !dbg !5946
  %18 = load ptr, ptr %private_data.addr, align 8, !dbg !5947
  call void %16(ptr noundef %17, ptr noundef %18) #8, !dbg !5945
  br label %if.end37, !dbg !5945

if.end37:                                         ; preds = %if.then36, %do.end33
  br label %do.end60, !dbg !5948

if.end38:                                         ; preds = %land.lhs.true19, %if.end17
  call void @io_schedule() #8, !dbg !5949
  store i8 1, ptr %has_sleeper, align 1, !dbg !5950
  br label %do.body39, !dbg !5951

do.body39:                                        ; preds = %if.end38
  br label %do.body40, !dbg !5952

do.body40:                                        ; preds = %do.body39
  br label %do.cond41, !dbg !5953

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !5953

do.end42:                                         ; preds = %do.cond41
  br label %do.body43, !dbg !5952

do.body43:                                        ; preds = %do.end42
  br label %do.body44, !dbg !5955

do.body44:                                        ; preds = %do.body43
  br label %do.cond45, !dbg !5956

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !5956

do.end46:                                         ; preds = %do.cond45
  br label %do.body47, !dbg !5955

do.body47:                                        ; preds = %do.end46
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #9, !dbg !5958
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !5874, metadata !DIExpression()), !dbg !5958
  %call48 = call ptr @get_current() #8, !dbg !5958
  %__state = getelementptr inbounds %struct.task_struct, ptr %call48, i32 0, i32 1, !dbg !5958
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !5958
  br label %do.body49, !dbg !5958

do.body49:                                        ; preds = %do.body47
  br label %do.cond50, !dbg !5959

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !5959

do.end51:                                         ; preds = %do.cond50
  %19 = load ptr, ptr %__ai_ptr, align 8, !dbg !5958
  call void @instrument_atomic_read_write(ptr noundef %19, i64 noundef 4) #8, !dbg !5958
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #9, !dbg !5961
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5880, metadata !DIExpression()), !dbg !5961
  store i32 2, ptr %__ret, align 4, !dbg !5961
  %20 = load i32, ptr %__ret, align 4, !dbg !5961
  %21 = load ptr, ptr %__ai_ptr, align 8, !dbg !5961
  %22 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %21, i32 %20, ptr elementtype(i32) %21) #9, !dbg !5961, !srcloc !5962
  store i32 %22, ptr %__ret, align 4, !dbg !5961
  %23 = load i32, ptr %__ret, align 4, !dbg !5961
  store i32 %23, ptr %tmp52, align 4, !dbg !5961
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #9, !dbg !5958
  %24 = load i32, ptr %tmp52, align 4, !dbg !5961
  store i32 %24, ptr %tmp, align 4, !dbg !5958
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #9, !dbg !5963
  %25 = load i32, ptr %tmp, align 4, !dbg !5958
  br label %do.cond53, !dbg !5963

do.cond53:                                        ; preds = %do.end51
  br label %do.end54, !dbg !5963

do.end54:                                         ; preds = %do.cond53
  br label %do.cond55, !dbg !5955

do.cond55:                                        ; preds = %do.end54
  br label %do.end56, !dbg !5955

do.end56:                                         ; preds = %do.cond55
  br label %do.cond57, !dbg !5952

do.cond57:                                        ; preds = %do.end56
  br label %do.end58, !dbg !5952

do.end58:                                         ; preds = %do.cond57
  br label %do.cond59, !dbg !5964

do.cond59:                                        ; preds = %do.end58
  br i1 true, label %do.body, label %do.end60, !dbg !5964, !llvm.loop !5965

do.end60:                                         ; preds = %do.cond59, %if.end37, %if.then16
  %26 = load ptr, ptr %rqw.addr, align 8, !dbg !5967
  %wait61 = getelementptr inbounds %struct.rq_wait, ptr %26, i32 0, i32 0, !dbg !5968
  %wq62 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %data, i32 0, i32 0, !dbg !5969
  call void @finish_wait(ptr noundef %wait61, ptr noundef %wq62) #8, !dbg !5970
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5971
  br label %cleanup, !dbg !5971

cleanup:                                          ; preds = %do.end60, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %has_sleeper) #9, !dbg !5971
  call void @llvm.lifetime.end.p0(i64 80, ptr %data) #9, !dbg !5971
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5971

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rq_qos_wake_function(ptr noundef %curr, i32 noundef %mode, i32 noundef %wake_flags, ptr noundef %key) #0 align 16 !dbg !5972 {
entry:
  %retval = alloca i32, align 4
  %curr.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %wake_flags.addr = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %curr, ptr %curr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %curr.addr, metadata !5974, metadata !DIExpression()), !dbg !5981
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5975, metadata !DIExpression()), !dbg !5982
  store i32 %wake_flags, ptr %wake_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %wake_flags.addr, metadata !5976, metadata !DIExpression()), !dbg !5983
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5977, metadata !DIExpression()), !dbg !5984
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #9, !dbg !5985
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5978, metadata !DIExpression()), !dbg !5986
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !5987
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5979, metadata !DIExpression()), !dbg !5987
  %0 = load ptr, ptr %curr.addr, align 8, !dbg !5987
  store ptr %0, ptr %__mptr, align 8, !dbg !5987
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5987
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5987
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5987
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !5988
  %2 = load ptr, ptr %tmp, align 8, !dbg !5987
  store ptr %2, ptr %data, align 8, !dbg !5986
  %3 = load ptr, ptr %data, align 8, !dbg !5989
  %cb = getelementptr inbounds %struct.rq_qos_wait_data, ptr %3, i32 0, i32 3, !dbg !5991
  %4 = load ptr, ptr %cb, align 8, !dbg !5991
  %5 = load ptr, ptr %data, align 8, !dbg !5992
  %rqw = getelementptr inbounds %struct.rq_qos_wait_data, ptr %5, i32 0, i32 2, !dbg !5993
  %6 = load ptr, ptr %rqw, align 8, !dbg !5993
  %7 = load ptr, ptr %data, align 8, !dbg !5994
  %private_data = getelementptr inbounds %struct.rq_qos_wait_data, ptr %7, i32 0, i32 4, !dbg !5995
  %8 = load ptr, ptr %private_data, align 8, !dbg !5995
  %call = call zeroext i1 %4(ptr noundef %6, ptr noundef %8) #8, !dbg !5989
  br i1 %call, label %if.end, label %if.then, !dbg !5996

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !5997
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5997

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %data, align 8, !dbg !5998
  %got_token = getelementptr inbounds %struct.rq_qos_wait_data, ptr %9, i32 0, i32 5, !dbg !5999
  store i8 1, ptr %got_token, align 8, !dbg !6000
  br label %do.body, !dbg !6001

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !6002

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !6004

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6004

do.end:                                           ; preds = %do.cond
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !6002, !srcloc !6006
  br label %do.cond2, !dbg !6002

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !6002

do.end3:                                          ; preds = %do.cond2
  %10 = load ptr, ptr %data, align 8, !dbg !6007
  %task = getelementptr inbounds %struct.rq_qos_wait_data, ptr %10, i32 0, i32 1, !dbg !6008
  %11 = load ptr, ptr %task, align 8, !dbg !6008
  %call4 = call i32 @wake_up_process(ptr noundef %11) #8, !dbg !6009
  %12 = load ptr, ptr %curr.addr, align 8, !dbg !6010
  %entry5 = getelementptr inbounds %struct.wait_queue_entry, ptr %12, i32 0, i32 3, !dbg !6011
  call void @list_del_init_careful(ptr noundef %entry5) #8, !dbg !6012
  store i32 1, ptr %retval, align 4, !dbg !6013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6013

cleanup:                                          ; preds = %do.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #9, !dbg !6014
  %13 = load i32, ptr %retval, align 4, !dbg !6014
  ret i32 %13, !dbg !6014
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !6015 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #9, !dbg !6026
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6020, metadata !DIExpression()), !dbg !6026
  br label %do.body, !dbg !6026

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !6027
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6022, metadata !DIExpression()), !dbg !6027
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6027
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6027
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !6026
  br label %do.cond, !dbg !6027

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6027

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #9, !dbg !6028
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6024, metadata !DIExpression()), !dbg !6028
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #10, !dbg !6028, !srcloc !6029
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6028
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6028
  %3 = inttoptr i64 %2 to ptr, !dbg !6028
  store ptr %3, ptr %tmp, align 8, !dbg !6028
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #9, !dbg !6026
  %4 = load ptr, ptr %tmp, align 8, !dbg !6028
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6026
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6026
  store ptr %5, ptr %tmp1, align 8, !dbg !6026
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #9, !dbg !6030
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6026
  ret ptr %6, !dbg !6031
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @wq_has_sleeper(ptr noundef %wq_head) #4 align 16 !dbg !6032 {
entry:
  %wq_head.addr = alloca ptr, align 8
  store ptr %wq_head, ptr %wq_head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq_head.addr, metadata !6037, metadata !DIExpression()), !dbg !6038
  br label %do.body, !dbg !6039

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6040

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6042

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !6040, !srcloc !6044
  br label %do.end2, !dbg !6040

do.end2:                                          ; preds = %do.end
  %0 = load ptr, ptr %wq_head.addr, align 8, !dbg !6045
  %call = call i32 @waitqueue_active(ptr noundef %0) #8, !dbg !6046
  %tobool = icmp ne i32 %call, 0, !dbg !6046
  ret i1 %tobool, !dbg !6047
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6048 dso_local zeroext i1 @prepare_to_wait_exclusive(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6051 dso_local void @finish_wait(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6054 dso_local void @io_schedule() #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6055 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6063, metadata !DIExpression()), !dbg !6065
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6064, metadata !DIExpression()), !dbg !6066
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6067
  %1 = load i64, ptr %size.addr, align 8, !dbg !6068
  %conv = trunc i64 %1 to i32, !dbg !6068
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !6069
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6070
  %3 = load i64, ptr %size.addr, align 8, !dbg !6070
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #8, !dbg !6070
  ret void, !dbg !6071
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rq_qos_exit(ptr noundef %q) #0 align 16 !dbg !6072 {
entry:
  %q.addr = alloca ptr, align 8
  %rqos = alloca ptr, align 8
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !6076, metadata !DIExpression()), !dbg !6079
  %0 = load ptr, ptr %q.addr, align 8, !dbg !6080
  %rq_qos_mutex = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 5, !dbg !6081
  call void @mutex_lock(ptr noundef %rq_qos_mutex) #8, !dbg !6082
  br label %while.cond, !dbg !6083

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %q.addr, align 8, !dbg !6084
  %rq_qos = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 4, !dbg !6085
  %2 = load ptr, ptr %rq_qos, align 8, !dbg !6085
  %tobool = icmp ne ptr %2, null, !dbg !6083
  br i1 %tobool, label %while.body, label %while.end, !dbg !6083

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %rqos) #9, !dbg !6086
  call void @llvm.dbg.declare(metadata ptr %rqos, metadata !6077, metadata !DIExpression()), !dbg !6087
  %3 = load ptr, ptr %q.addr, align 8, !dbg !6088
  %rq_qos1 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 4, !dbg !6089
  %4 = load ptr, ptr %rq_qos1, align 8, !dbg !6089
  store ptr %4, ptr %rqos, align 8, !dbg !6087
  %5 = load ptr, ptr %rqos, align 8, !dbg !6090
  %next = getelementptr inbounds %struct.rq_qos, ptr %5, i32 0, i32 3, !dbg !6091
  %6 = load ptr, ptr %next, align 8, !dbg !6091
  %7 = load ptr, ptr %q.addr, align 8, !dbg !6092
  %rq_qos2 = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 4, !dbg !6093
  store ptr %6, ptr %rq_qos2, align 8, !dbg !6094
  %8 = load ptr, ptr %rqos, align 8, !dbg !6095
  %ops = getelementptr inbounds %struct.rq_qos, ptr %8, i32 0, i32 0, !dbg !6096
  %9 = load ptr, ptr %ops, align 8, !dbg !6096
  %exit = getelementptr inbounds %struct.rq_qos_ops, ptr %9, i32 0, i32 9, !dbg !6097
  %10 = load ptr, ptr %exit, align 8, !dbg !6097
  %11 = load ptr, ptr %rqos, align 8, !dbg !6098
  call void %10(ptr noundef %11) #8, !dbg !6095
  call void @llvm.lifetime.end.p0(i64 8, ptr %rqos) #9, !dbg !6099
  br label %while.cond, !dbg !6083, !llvm.loop !6100

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %q.addr, align 8, !dbg !6101
  %rq_qos_mutex3 = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 5, !dbg !6102
  call void @mutex_unlock(ptr noundef %rq_qos_mutex3) #8, !dbg !6103
  ret void, !dbg !6104
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6105 dso_local void @mutex_lock(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6109 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rq_qos_add(ptr noundef %rqos, ptr noundef %disk, i32 noundef %id, ptr noundef %ops) #0 align 16 !dbg !6110 {
entry:
  %retval = alloca i32, align 4
  %rqos.addr = alloca ptr, align 8
  %disk.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %ops.addr = alloca ptr, align 8
  %q = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rqos, ptr %rqos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rqos.addr, metadata !6114, metadata !DIExpression()), !dbg !6120
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !6115, metadata !DIExpression()), !dbg !6121
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !6116, metadata !DIExpression()), !dbg !6122
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !6117, metadata !DIExpression()), !dbg !6123
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #9, !dbg !6124
  call void @llvm.dbg.declare(metadata ptr %q, metadata !6118, metadata !DIExpression()), !dbg !6125
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !6126
  %queue = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 9, !dbg !6127
  %1 = load ptr, ptr %queue, align 8, !dbg !6127
  store ptr %1, ptr %q, align 8, !dbg !6125
  br label %do.body, !dbg !6128

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %q, align 8, !dbg !6129
  %rq_qos_mutex = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 5, !dbg !6129
  br label %do.cond, !dbg !6129

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6129

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %disk.addr, align 8, !dbg !6131
  %4 = load ptr, ptr %rqos.addr, align 8, !dbg !6132
  %disk1 = getelementptr inbounds %struct.rq_qos, ptr %4, i32 0, i32 1, !dbg !6133
  store ptr %3, ptr %disk1, align 8, !dbg !6134
  %5 = load i32, ptr %id.addr, align 4, !dbg !6135
  %6 = load ptr, ptr %rqos.addr, align 8, !dbg !6136
  %id2 = getelementptr inbounds %struct.rq_qos, ptr %6, i32 0, i32 2, !dbg !6137
  store i32 %5, ptr %id2, align 8, !dbg !6138
  %7 = load ptr, ptr %ops.addr, align 8, !dbg !6139
  %8 = load ptr, ptr %rqos.addr, align 8, !dbg !6140
  %ops3 = getelementptr inbounds %struct.rq_qos, ptr %8, i32 0, i32 0, !dbg !6141
  store ptr %7, ptr %ops3, align 8, !dbg !6142
  %9 = load ptr, ptr %q, align 8, !dbg !6143
  call void @blk_mq_freeze_queue(ptr noundef %9) #8, !dbg !6144
  %10 = load ptr, ptr %q, align 8, !dbg !6145
  %11 = load ptr, ptr %rqos.addr, align 8, !dbg !6147
  %id4 = getelementptr inbounds %struct.rq_qos, ptr %11, i32 0, i32 2, !dbg !6148
  %12 = load i32, ptr %id4, align 8, !dbg !6148
  %call = call ptr @rq_qos_id(ptr noundef %10, i32 noundef %12) #8, !dbg !6149
  %tobool = icmp ne ptr %call, null, !dbg !6149
  br i1 %tobool, label %if.then, label %if.end, !dbg !6150

if.then:                                          ; preds = %do.end
  br label %ebusy, !dbg !6151

if.end:                                           ; preds = %do.end
  %13 = load ptr, ptr %q, align 8, !dbg !6152
  %rq_qos = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 4, !dbg !6153
  %14 = load ptr, ptr %rq_qos, align 8, !dbg !6153
  %15 = load ptr, ptr %rqos.addr, align 8, !dbg !6154
  %next = getelementptr inbounds %struct.rq_qos, ptr %15, i32 0, i32 3, !dbg !6155
  store ptr %14, ptr %next, align 8, !dbg !6156
  %16 = load ptr, ptr %rqos.addr, align 8, !dbg !6157
  %17 = load ptr, ptr %q, align 8, !dbg !6158
  %rq_qos5 = getelementptr inbounds %struct.request_queue, ptr %17, i32 0, i32 4, !dbg !6159
  store ptr %16, ptr %rq_qos5, align 8, !dbg !6160
  %18 = load ptr, ptr %q, align 8, !dbg !6161
  call void @blk_mq_unfreeze_queue(ptr noundef %18) #8, !dbg !6162
  %19 = load ptr, ptr %rqos.addr, align 8, !dbg !6163
  %ops6 = getelementptr inbounds %struct.rq_qos, ptr %19, i32 0, i32 0, !dbg !6165
  %20 = load ptr, ptr %ops6, align 8, !dbg !6165
  %debugfs_attrs = getelementptr inbounds %struct.rq_qos_ops, ptr %20, i32 0, i32 10, !dbg !6166
  %21 = load ptr, ptr %debugfs_attrs, align 8, !dbg !6166
  %tobool7 = icmp ne ptr %21, null, !dbg !6163
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !6167

if.then8:                                         ; preds = %if.end
  %22 = load ptr, ptr %q, align 8, !dbg !6168
  %debugfs_mutex = getelementptr inbounds %struct.request_queue, ptr %22, i32 0, i32 56, !dbg !6170
  call void @mutex_lock(ptr noundef %debugfs_mutex) #8, !dbg !6171
  %23 = load ptr, ptr %rqos.addr, align 8, !dbg !6172
  call void @blk_mq_debugfs_register_rqos(ptr noundef %23) #8, !dbg !6173
  %24 = load ptr, ptr %q, align 8, !dbg !6174
  %debugfs_mutex9 = getelementptr inbounds %struct.request_queue, ptr %24, i32 0, i32 56, !dbg !6175
  call void @mutex_unlock(ptr noundef %debugfs_mutex9) #8, !dbg !6176
  br label %if.end10, !dbg !6177

if.end10:                                         ; preds = %if.then8, %if.end
  store i32 0, ptr %retval, align 4, !dbg !6178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6178

ebusy:                                            ; preds = %if.then
  call void @llvm.dbg.label(metadata !6119), !dbg !6179
  %25 = load ptr, ptr %q, align 8, !dbg !6180
  call void @blk_mq_unfreeze_queue(ptr noundef %25) #8, !dbg !6181
  store i32 -16, ptr %retval, align 4, !dbg !6182
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6182

cleanup:                                          ; preds = %ebusy, %if.end10
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #9, !dbg !6183
  %26 = load i32, ptr %retval, align 4, !dbg !6183
  ret i32 %26, !dbg !6183
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6184 dso_local void @blk_mq_freeze_queue(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rq_qos_id(ptr noundef %q, i32 noundef %id) #4 align 16 !dbg !6185 {
entry:
  %q.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %rqos = alloca ptr, align 8
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !6189, metadata !DIExpression()), !dbg !6192
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !6190, metadata !DIExpression()), !dbg !6193
  call void @llvm.lifetime.start.p0(i64 8, ptr %rqos) #9, !dbg !6194
  call void @llvm.dbg.declare(metadata ptr %rqos, metadata !6191, metadata !DIExpression()), !dbg !6195
  %0 = load ptr, ptr %q.addr, align 8, !dbg !6196
  %rq_qos = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 4, !dbg !6198
  %1 = load ptr, ptr %rq_qos, align 8, !dbg !6198
  store ptr %1, ptr %rqos, align 8, !dbg !6199
  br label %for.cond, !dbg !6200

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %rqos, align 8, !dbg !6201
  %tobool = icmp ne ptr %2, null, !dbg !6203
  br i1 %tobool, label %for.body, label %for.end, !dbg !6203

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %rqos, align 8, !dbg !6204
  %id1 = getelementptr inbounds %struct.rq_qos, ptr %3, i32 0, i32 2, !dbg !6207
  %4 = load i32, ptr %id1, align 8, !dbg !6207
  %5 = load i32, ptr %id.addr, align 4, !dbg !6208
  %cmp = icmp eq i32 %4, %5, !dbg !6209
  br i1 %cmp, label %if.then, label %if.end, !dbg !6210

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !6211

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6212

for.inc:                                          ; preds = %if.end
  %6 = load ptr, ptr %rqos, align 8, !dbg !6213
  %next = getelementptr inbounds %struct.rq_qos, ptr %6, i32 0, i32 3, !dbg !6214
  %7 = load ptr, ptr %next, align 8, !dbg !6214
  store ptr %7, ptr %rqos, align 8, !dbg !6215
  br label %for.cond, !dbg !6216, !llvm.loop !6217

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load ptr, ptr %rqos, align 8, !dbg !6219
  call void @llvm.lifetime.end.p0(i64 8, ptr %rqos) #9, !dbg !6220
  ret ptr %8, !dbg !6221
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6222 dso_local void @blk_mq_unfreeze_queue(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6223 dso_local void @blk_mq_debugfs_register_rqos(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rq_qos_del(ptr noundef %rqos) #0 align 16 !dbg !6224 {
entry:
  %rqos.addr = alloca ptr, align 8
  %q = alloca ptr, align 8
  %cur = alloca ptr, align 8
  store ptr %rqos, ptr %rqos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rqos.addr, metadata !6226, metadata !DIExpression()), !dbg !6230
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #9, !dbg !6231
  call void @llvm.dbg.declare(metadata ptr %q, metadata !6227, metadata !DIExpression()), !dbg !6232
  %0 = load ptr, ptr %rqos.addr, align 8, !dbg !6233
  %disk = getelementptr inbounds %struct.rq_qos, ptr %0, i32 0, i32 1, !dbg !6234
  %1 = load ptr, ptr %disk, align 8, !dbg !6234
  %queue = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 9, !dbg !6235
  %2 = load ptr, ptr %queue, align 8, !dbg !6235
  store ptr %2, ptr %q, align 8, !dbg !6232
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #9, !dbg !6236
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !6228, metadata !DIExpression()), !dbg !6237
  br label %do.body, !dbg !6238

do.body:                                          ; preds = %entry
  %3 = load ptr, ptr %q, align 8, !dbg !6239
  %rq_qos_mutex = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 5, !dbg !6239
  br label %do.cond, !dbg !6239

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6239

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %q, align 8, !dbg !6241
  call void @blk_mq_freeze_queue(ptr noundef %4) #8, !dbg !6242
  %5 = load ptr, ptr %q, align 8, !dbg !6243
  %rq_qos = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 4, !dbg !6245
  store ptr %rq_qos, ptr %cur, align 8, !dbg !6246
  br label %for.cond, !dbg !6247

for.cond:                                         ; preds = %for.inc, %do.end
  %6 = load ptr, ptr %cur, align 8, !dbg !6248
  %7 = load ptr, ptr %6, align 8, !dbg !6250
  %tobool = icmp ne ptr %7, null, !dbg !6251
  br i1 %tobool, label %for.body, label %for.end, !dbg !6251

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %cur, align 8, !dbg !6252
  %9 = load ptr, ptr %8, align 8, !dbg !6255
  %10 = load ptr, ptr %rqos.addr, align 8, !dbg !6256
  %cmp = icmp eq ptr %9, %10, !dbg !6257
  br i1 %cmp, label %if.then, label %if.end, !dbg !6258

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %rqos.addr, align 8, !dbg !6259
  %next = getelementptr inbounds %struct.rq_qos, ptr %11, i32 0, i32 3, !dbg !6261
  %12 = load ptr, ptr %next, align 8, !dbg !6261
  %13 = load ptr, ptr %cur, align 8, !dbg !6262
  store ptr %12, ptr %13, align 8, !dbg !6263
  br label %for.end, !dbg !6264

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6265

for.inc:                                          ; preds = %if.end
  %14 = load ptr, ptr %cur, align 8, !dbg !6266
  %15 = load ptr, ptr %14, align 8, !dbg !6267
  %next1 = getelementptr inbounds %struct.rq_qos, ptr %15, i32 0, i32 3, !dbg !6268
  store ptr %next1, ptr %cur, align 8, !dbg !6269
  br label %for.cond, !dbg !6270, !llvm.loop !6271

for.end:                                          ; preds = %if.then, %for.cond
  %16 = load ptr, ptr %q, align 8, !dbg !6273
  call void @blk_mq_unfreeze_queue(ptr noundef %16) #8, !dbg !6274
  %17 = load ptr, ptr %q, align 8, !dbg !6275
  %debugfs_mutex = getelementptr inbounds %struct.request_queue, ptr %17, i32 0, i32 56, !dbg !6276
  call void @mutex_lock(ptr noundef %debugfs_mutex) #8, !dbg !6277
  %18 = load ptr, ptr %rqos.addr, align 8, !dbg !6278
  call void @blk_mq_debugfs_unregister_rqos(ptr noundef %18) #8, !dbg !6279
  %19 = load ptr, ptr %q, align 8, !dbg !6280
  %debugfs_mutex2 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 56, !dbg !6281
  call void @mutex_unlock(ptr noundef %debugfs_mutex2) #8, !dbg !6282
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #9, !dbg !6283
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #9, !dbg !6283
  ret void, !dbg !6283
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6284 dso_local void @blk_mq_debugfs_unregister_rqos(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #3 align 16 !dbg !6285 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6292, metadata !DIExpression()), !dbg !6293
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6294
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #8, !dbg !6295
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6296
  %call = call i32 @raw_atomic_read(ptr noundef %1) #8, !dbg !6297
  ret i32 %call, !dbg !6298
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #3 align 16 !dbg !6299 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6303, metadata !DIExpression()), !dbg !6306
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6304, metadata !DIExpression()), !dbg !6307
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6305, metadata !DIExpression()), !dbg !6308
  br label %do.body, !dbg !6309

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6310

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6312
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #8, !dbg !6313
  %1 = load ptr, ptr %old.addr, align 8, !dbg !6314
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #8, !dbg !6315
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6316
  %3 = load ptr, ptr %old.addr, align 8, !dbg !6317
  %4 = load i32, ptr %new.addr, align 4, !dbg !6318
  %call = call zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %2, ptr noundef %3, i32 noundef %4) #8, !dbg !6319
  ret i1 %call, !dbg !6320
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6321 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6323, metadata !DIExpression()), !dbg !6325
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6324, metadata !DIExpression()), !dbg !6326
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6327
  %1 = load i64, ptr %size.addr, align 8, !dbg !6328
  %conv = trunc i64 %1 to i32, !dbg !6328
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #8, !dbg !6329
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6330
  %3 = load i64, ptr %size.addr, align 8, !dbg !6330
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #8, !dbg !6330
  ret void, !dbg !6331
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #3 align 16 !dbg !6332 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6335, metadata !DIExpression()), !dbg !6336
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6337
  %call = call i32 @arch_atomic_read(ptr noundef %0) #8, !dbg !6338
  ret i32 %call, !dbg !6339
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6340 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6345, metadata !DIExpression()), !dbg !6347
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6346, metadata !DIExpression()), !dbg !6348
  ret i1 true, !dbg !6349
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !6350 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6355, metadata !DIExpression()), !dbg !6358
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6356, metadata !DIExpression()), !dbg !6359
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6357, metadata !DIExpression()), !dbg !6360
  ret void, !dbg !6361
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #3 align 16 !dbg !6362 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6365, metadata !DIExpression()), !dbg !6366
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6367
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6367
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6367
  ret i32 %1, !dbg !6368
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #3 align 16 !dbg !6369 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6371, metadata !DIExpression()), !dbg !6374
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6372, metadata !DIExpression()), !dbg !6375
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6373, metadata !DIExpression()), !dbg !6376
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6377
  %1 = load ptr, ptr %old.addr, align 8, !dbg !6378
  %2 = load i32, ptr %new.addr, align 4, !dbg !6379
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #8, !dbg !6380
  ret i1 %call, !dbg !6381
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #3 align 16 !dbg !6382 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6384, metadata !DIExpression()), !dbg !6393
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6385, metadata !DIExpression()), !dbg !6394
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6386, metadata !DIExpression()), !dbg !6395
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #9, !dbg !6396
  call void @llvm.dbg.declare(metadata ptr %success, metadata !6387, metadata !DIExpression()), !dbg !6396
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #9, !dbg !6396
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !6389, metadata !DIExpression()), !dbg !6396
  %0 = load ptr, ptr %old.addr, align 8, !dbg !6396
  store ptr %0, ptr %_old, align 8, !dbg !6396
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #9, !dbg !6396
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !6390, metadata !DIExpression()), !dbg !6396
  %1 = load ptr, ptr %_old, align 8, !dbg !6396
  %2 = load i32, ptr %1, align 4, !dbg !6396
  store i32 %2, ptr %__old, align 4, !dbg !6396
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #9, !dbg !6396
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !6391, metadata !DIExpression()), !dbg !6396
  %3 = load i32, ptr %new.addr, align 4, !dbg !6396
  store i32 %3, ptr %__new, align 4, !dbg !6396
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !6396
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6392, metadata !DIExpression()), !dbg !6396
  %4 = load ptr, ptr %v.addr, align 8, !dbg !6396
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !6396
  store ptr %counter, ptr %__ptr, align 8, !dbg !6396
  %5 = load ptr, ptr %__ptr, align 8, !dbg !6396
  %6 = load i32, ptr %__old, align 4, !dbg !6396
  %7 = load i32, ptr %__new, align 4, !dbg !6396
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #9, !dbg !6396, !srcloc !6397
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !6396
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !6396
  %9 = icmp ult i8 %asmresult, 2, !dbg !6396
  call void @llvm.assume(i1 %9), !dbg !6396
  store i8 %asmresult, ptr %success, align 1, !dbg !6396
  store i32 %asmresult1, ptr %__old, align 4, !dbg !6396
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !6396
  %10 = load i8, ptr %success, align 1, !dbg !6398, !range !5804, !noundef !594
  %tobool = trunc i8 %10 to i1, !dbg !6398
  %lnot = xor i1 %tobool, true, !dbg !6398
  %lnot2 = xor i1 %lnot, true, !dbg !6398
  %lnot3 = xor i1 %lnot2, true, !dbg !6398
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6398
  %conv = sext i32 %lnot.ext to i64, !dbg !6398
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6398
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6398
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6396

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !6398
  %12 = load ptr, ptr %_old, align 8, !dbg !6398
  store i32 %11, ptr %12, align 4, !dbg !6398
  br label %if.end, !dbg !6398

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !6396, !range !5804, !noundef !594
  %tobool5 = trunc i8 %13 to i1, !dbg !6396
  %lnot6 = xor i1 %tobool5, true, !dbg !6396
  %lnot8 = xor i1 %lnot6, true, !dbg !6396
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6396
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !6396
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !6396
  store i64 %expval11, ptr %tmp, align 8, !dbg !6398
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #9, !dbg !6400
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #9, !dbg !6400
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #9, !dbg !6400
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #9, !dbg !6400
  %14 = load i64, ptr %tmp, align 8, !dbg !6396
  %tobool12 = icmp ne i64 %14, 0, !dbg !6400
  ret i1 %tobool12, !dbg !6401
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6402 dso_local i32 @wake_up_process(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init_careful(ptr noundef %entry1) #4 align 16 !dbg !6405 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6410, metadata !DIExpression()), !dbg !6411
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6412
  call void @__list_del_entry(ptr noundef %0) #8, !dbg !6413
  br label %do.body, !dbg !6414

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6415

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6417

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6415

do.body3:                                         ; preds = %do.end
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6419
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6419
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6419
  store volatile ptr %1, ptr %prev, align 8, !dbg !6419
  br label %do.end4, !dbg !6419

do.end4:                                          ; preds = %do.body3
  br label %do.end5, !dbg !6415

do.end5:                                          ; preds = %do.end4
  br label %do.body6, !dbg !6421

do.body6:                                         ; preds = %do.end5
  br label %do.body7, !dbg !6422

do.body7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !6424

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !6422

do.body9:                                         ; preds = %do.end8
  br label %do.body10, !dbg !6426

do.body10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6428

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !6426, !srcloc !6430
  br label %do.body12, !dbg !6426

do.body12:                                        ; preds = %do.end11
  br label %do.body13, !dbg !6431

do.body13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6433

do.end14:                                         ; preds = %do.body13
  br label %do.body15, !dbg !6431

do.body15:                                        ; preds = %do.end14
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6435
  %4 = load ptr, ptr %entry.addr, align 8, !dbg !6435
  %next = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !6435
  store volatile ptr %3, ptr %next, align 8, !dbg !6435
  br label %do.end16, !dbg !6435

do.end16:                                         ; preds = %do.body15
  br label %do.end17, !dbg !6431

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !6426

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !6422

do.end19:                                         ; preds = %do.end18
  ret void, !dbg !6437
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !6438 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6440, metadata !DIExpression()), !dbg !6441
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6442
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #8, !dbg !6444
  br i1 %call, label %if.end, label %if.then, !dbg !6445

if.then:                                          ; preds = %entry
  br label %return, !dbg !6446

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6447
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6448
  %2 = load ptr, ptr %prev, align 8, !dbg !6448
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6449
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6450
  %4 = load ptr, ptr %next, align 8, !dbg !6450
  call void @__list_del(ptr noundef %2, ptr noundef %4) #8, !dbg !6451
  br label %return, !dbg !6452

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6452
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !6453 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6457, metadata !DIExpression()), !dbg !6458
  ret i1 true, !dbg !6459
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6460 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6464, metadata !DIExpression()), !dbg !6466
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6465, metadata !DIExpression()), !dbg !6467
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6468
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6469
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6470
  store ptr %0, ptr %prev1, align 8, !dbg !6471
  br label %do.body, !dbg !6472

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6473

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6475

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6473

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6477
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6477
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6477
  store volatile ptr %2, ptr %next4, align 8, !dbg !6477
  br label %do.end5, !dbg !6477

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6473

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6479
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @waitqueue_active(ptr noundef %wq_head) #4 align 16 !dbg !6480 {
entry:
  %wq_head.addr = alloca ptr, align 8
  store ptr %wq_head, ptr %wq_head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq_head.addr, metadata !6484, metadata !DIExpression()), !dbg !6485
  %0 = load ptr, ptr %wq_head.addr, align 8, !dbg !6486
  %head = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1, !dbg !6487
  %call = call i32 @list_empty(ptr noundef %head) #8, !dbg !6488
  %tobool = icmp ne i32 %call, 0, !dbg !6489
  %lnot = xor i1 %tobool, true, !dbg !6489
  %lnot.ext = zext i1 %lnot to i32, !dbg !6489
  ret i32 %lnot.ext, !dbg !6490
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #4 align 16 !dbg !6491 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6497, metadata !DIExpression()), !dbg !6498
  br label %do.body, !dbg !6499

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6501

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6499
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6499
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6499
  store ptr %1, ptr %tmp, align 8, !dbg !6501
  %2 = load ptr, ptr %tmp, align 8, !dbg !6499
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6503
  %cmp = icmp eq ptr %2, %3, !dbg !6504
  %conv = zext i1 %cmp to i32, !dbg !6504
  ret i32 %conv, !dbg !6505
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6506 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6508, metadata !DIExpression()), !dbg !6510
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6509, metadata !DIExpression()), !dbg !6511
  ret i1 true, !dbg !6512
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { nounwind memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5410, !5411, !5412, !5413, !5414, !5415, !5416, !5417}
!llvm.ident = !{!5418}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF block/.blk-rq-qos.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22block/blk-rq-qos\22 -D KBUILD_BASENAME=\22blk_rq_qos\22 -D KBUILD_MODNAME=\22blk_rq_qos\22 -D __KBUILD_MODNAME=kmod_blk_rq_qos -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o block/blk-rq-qos.ll block/blk-rq-qos.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !179, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "block/blk-rq-qos.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d1c6f0438eabb213467faad499dc5f43")
!2 = !{!3, !11, !16, !24, !32, !48, !54, !59, !65, !72, !79, !85, !90, !96, !103, !111, !119, !128, !133, !138, !144, !149, !154, !159, !163, !168, !174}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !4, line: 312, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!8 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!9 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!10 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !12, line: 2052, baseType: !5, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!15 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !17, line: 9, baseType: !5, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!18 = !{!19, !20, !21, !22, !23}
!19 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!20 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!21 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!22 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!23 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !25, line: 68, baseType: !5, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!26 = !{!27, !28, !29, !30, !31}
!27 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!28 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!29 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!30 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!31 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !33, line: 1325, baseType: !5, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!36 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!37 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!38 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!39 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!40 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!41 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!42 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!43 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!44 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!45 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!46 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!47 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !49, line: 54, baseType: !5, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!50 = !{!51, !52, !53}
!51 = !DIEnumerator(name: "USRQUOTA", value: 0)
!52 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!53 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !55, line: 65, baseType: !5, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!58 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
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
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !73, line: 15, baseType: !5, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!76 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!77 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !80, line: 26, baseType: !5, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!83 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!84 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_eh_timer_return", file: !86, line: 276, baseType: !5, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/blk-mq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "62cf1706db3683ee75df9cf32a2cf47d")
!87 = !{!88, !89}
!88 = !DIEnumerator(name: "BLK_EH_DONE", value: 0)
!89 = !DIEnumerator(name: "BLK_EH_RESET_TIMER", value: 1)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !91, line: 45, baseType: !5, size: 32, elements: !92)
!91 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!92 = !{!93, !94, !95}
!93 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!94 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!95 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !97, line: 487, baseType: !5, size: 32, elements: !98)
!97 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!98 = !{!99, !100, !101, !102}
!99 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!100 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!101 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!102 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !104, line: 620, baseType: !5, size: 32, elements: !105)
!104 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!105 = !{!106, !107, !108, !109, !110}
!106 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!107 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!108 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!109 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!110 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !104, line: 597, baseType: !112, size: 32, elements: !113)
!112 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!113 = !{!114, !115, !116, !117, !118}
!114 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!115 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!116 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!117 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!118 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !97, line: 547, baseType: !5, size: 32, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127}
!121 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!122 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!123 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!124 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!125 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!126 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!127 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !97, line: 564, baseType: !5, size: 32, elements: !129)
!129 = !{!130, !131, !132}
!130 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!131 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!132 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !97, line: 577, baseType: !5, size: 32, elements: !134)
!134 = !{!135, !136, !137}
!135 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!136 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!137 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !97, line: 503, baseType: !5, size: 32, elements: !139)
!139 = !{!140, !141, !142, !143}
!140 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!141 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!142 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!143 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !145, line: 295, baseType: !5, size: 32, elements: !146)
!145 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!146 = !{!147, !148}
!147 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!148 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !145, line: 285, baseType: !5, size: 32, elements: !150)
!150 = !{!151, !152, !153}
!151 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!152 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!153 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !86, line: 68, baseType: !5, size: 32, elements: !155)
!155 = !{!156, !157, !158}
!156 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0)
!157 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1)
!158 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rq_end_io_ret", file: !86, line: 18, baseType: !5, size: 32, elements: !160)
!160 = !{!161, !162}
!161 = !DIEnumerator(name: "RQ_END_IO_NONE", value: 0)
!162 = !DIEnumerator(name: "RQ_END_IO_FREE", value: 1)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !145, line: 1381, baseType: !5, size: 32, elements: !164)
!164 = !{!165, !166, !167}
!165 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!166 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!167 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rq_qos_id", file: !169, line: 16, baseType: !5, size: 32, elements: !170)
!169 = !DIFile(filename: "block/blk-rq-qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d22f3dcaa0dabd78ba2274ebc6a3db8")
!170 = !{!171, !172, !173}
!171 = !DIEnumerator(name: "RQ_QOS_WBT", value: 0)
!172 = !DIEnumerator(name: "RQ_QOS_LATENCY", value: 1)
!173 = !DIEnumerator(name: "RQ_QOS_COST", value: 2)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !175, line: 10, baseType: !5, size: 32, elements: !176)
!175 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!176 = !{!177, !178}
!177 = !DIEnumerator(name: "false", value: 0)
!178 = !DIEnumerator(name: "true", value: 1)
!179 = !{!5, !180, !183, !184, !190, !191, !5405, !5407, !214, !223, !5408}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !112)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !187, line: 21, baseType: !188)
!187 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !189, line: 27, baseType: !5)
!189 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos_wait_data", file: !1, line: 197, size: 640, elements: !193)
!193 = !{!194, !213, !5392, !5398, !5403, !5404}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !192, file: !1, line: 198, baseType: !195, size: 320)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !196, line: 30, size: 320, elements: !197)
!196 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!197 = !{!198, !199, !200, !206}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !195, file: !196, line: 31, baseType: !5, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !195, file: !196, line: 32, baseType: !190, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !195, file: !196, line: 33, baseType: !201, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !196, line: 16, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!112, !205, !5, !112, !190}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !195, file: !196, line: 34, baseType: !207, size: 128, offset: 192)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !208, line: 190, size: 128, elements: !209)
!208 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!209 = !{!210, !212}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !207, file: !208, line: 191, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !207, file: !208, line: 191, baseType: !211, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !192, file: !1, line: 199, baseType: !214, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !216, line: 746, size: 58368, elements: !217)
!216 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!217 = !{!218, !227, !228, !229, !239, !240, !241, !242, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !329, !340, !467, !471, !474, !505, !506, !507, !508, !519, !521, !522, !523, !524, !525, !526, !537, !538, !541, !542, !543, !544, !545, !546, !547, !548, !555, !556, !563, !564, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4571, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4619, !4625, !4626, !4627, !4628, !4629, !4631, !4634, !4641, !4646, !4649, !4652, !4655, !4658, !4796, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4834, !4835, !4836, !4845, !4853, !4854, !4855, !4856, !4857, !4862, !4863, !4864, !4867, !4868, !4870, !4881, !4884, !4885, !4888, !4889, !4975, !4976, !4977, !4978, !4979, !4985, !4986, !4987, !4988, !4991, !4992, !4995, !4998, !4999, !5002, !5003, !5004, !5007, !5008, !5009, !5010, !5011, !5012, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5044, !5045, !5051, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5133, !5135, !5136, !5137, !5138, !5139, !5140, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5169, !5170, !5171}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !215, file: !216, line: 752, baseType: !219, size: 192)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !220, line: 56, size: 192, elements: !221)
!220 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!221 = !{!222, !224, !225, !226}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !219, file: !220, line: 57, baseType: !223, size: 64)
!223 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !219, file: !220, line: 58, baseType: !223, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !219, file: !220, line: 59, baseType: !186, size: 32, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !219, file: !220, line: 61, baseType: !186, size: 32, offset: 160)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !215, file: !216, line: 754, baseType: !5, size: 32, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !215, file: !216, line: 767, baseType: !190, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !215, file: !216, line: 768, baseType: !230, size: 32, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !231, line: 113, baseType: !232)
!231 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !231, line: 111, size: 32, elements: !233)
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !232, file: !231, line: 112, baseType: !235, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !208, line: 174, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !208, line: 172, size: 32, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !236, file: !208, line: 173, baseType: !112, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !215, file: !216, line: 770, baseType: !5, size: 32, offset: 352)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !215, file: !216, line: 771, baseType: !5, size: 32, offset: 384)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !215, file: !216, line: 774, baseType: !112, size: 32, offset: 416)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !215, file: !216, line: 775, baseType: !243, size: 128, offset: 448)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !244, line: 58, size: 128, elements: !245)
!244 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!245 = !{!246, !252, !257, !261}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !243, file: !244, line: 59, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !248, line: 60, size: 64, elements: !249)
!248 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!249 = !{!250}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !247, file: !248, line: 61, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !244, line: 60, baseType: !253, size: 32, offset: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !244, line: 60, size: 32, elements: !254)
!254 = !{!255, !256}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !253, file: !244, line: 61, baseType: !5, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !253, file: !244, line: 62, baseType: !235, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !243, file: !244, line: 65, baseType: !258, size: 16, offset: 96)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !187, line: 19, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !189, line: 24, baseType: !260)
!260 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !243, file: !244, line: 65, baseType: !258, size: 16, offset: 112)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !215, file: !216, line: 776, baseType: !5, size: 32, offset: 576)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !215, file: !216, line: 777, baseType: !223, size: 64, offset: 640)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !215, file: !216, line: 778, baseType: !214, size: 64, offset: 704)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !215, file: !216, line: 787, baseType: !112, size: 32, offset: 768)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !215, file: !216, line: 788, baseType: !112, size: 32, offset: 800)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !215, file: !216, line: 790, baseType: !112, size: 32, offset: 832)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !215, file: !216, line: 792, baseType: !112, size: 32, offset: 864)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !215, file: !216, line: 793, baseType: !112, size: 32, offset: 896)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !215, file: !216, line: 794, baseType: !112, size: 32, offset: 928)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !215, file: !216, line: 795, baseType: !5, size: 32, offset: 960)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !215, file: !216, line: 797, baseType: !273, size: 2048, offset: 1024)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !216, line: 551, size: 2048, elements: !274)
!274 = !{!275, !280, !288, !292, !293, !294, !295, !296, !297, !298, !299, !303, !304, !305, !306, !308, !311, !312, !313}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !273, file: !216, line: 553, baseType: !276, size: 128)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !216, line: 411, size: 128, elements: !277)
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !276, file: !216, line: 412, baseType: !223, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !276, file: !216, line: 413, baseType: !186, size: 32, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !273, file: !216, line: 554, baseType: !281, size: 192, align: 64, offset: 128)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !282, line: 5, size: 192, align: 64, elements: !283)
!282 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!283 = !{!284, !285, !287}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !281, file: !282, line: 6, baseType: !223, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !281, file: !282, line: 7, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !281, file: !282, line: 8, baseType: !286, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !273, file: !216, line: 555, baseType: !289, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !187, line: 23, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !189, line: 31, baseType: !291)
!291 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !273, file: !216, line: 556, baseType: !289, size: 64, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !273, file: !216, line: 558, baseType: !207, size: 128, offset: 448)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !273, file: !216, line: 559, baseType: !5, size: 32, offset: 576)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !273, file: !216, line: 561, baseType: !289, size: 64, offset: 640)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !273, file: !216, line: 562, baseType: !289, size: 64, offset: 704)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !273, file: !216, line: 563, baseType: !289, size: 64, offset: 768)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !273, file: !216, line: 564, baseType: !289, size: 64, offset: 832)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !273, file: !216, line: 565, baseType: !300, size: 64, offset: 896)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !187, line: 22, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !189, line: 30, baseType: !302)
!302 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !273, file: !216, line: 566, baseType: !289, size: 64, offset: 960)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !273, file: !216, line: 568, baseType: !289, size: 64, offset: 1024)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !273, file: !216, line: 571, baseType: !112, size: 32, offset: 1088)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !273, file: !216, line: 572, baseType: !307, size: 64, offset: 1152)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !273, file: !216, line: 574, baseType: !309, size: 64, offset: 1216)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !216, line: 49, flags: DIFlagFwdDecl)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !273, file: !216, line: 576, baseType: !309, size: 64, offset: 1280)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !273, file: !216, line: 578, baseType: !223, size: 64, offset: 1344)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !273, file: !216, line: 588, baseType: !314, size: 512, align: 512, offset: 1536)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !216, line: 497, size: 512, align: 512, elements: !315)
!315 = !{!316, !317, !318, !319, !320, !321, !322, !323, !324}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !314, file: !216, line: 498, baseType: !289, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !314, file: !216, line: 499, baseType: !289, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !314, file: !216, line: 500, baseType: !289, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !314, file: !216, line: 501, baseType: !186, size: 32, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !314, file: !216, line: 502, baseType: !186, size: 32, offset: 224)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !314, file: !216, line: 503, baseType: !223, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !314, file: !216, line: 504, baseType: !223, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !314, file: !216, line: 505, baseType: !223, size: 64, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !314, file: !216, line: 506, baseType: !325, size: 64, align: 64, offset: 448)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !216, line: 445, size: 64, align: 64, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !325, file: !216, line: 446, baseType: !5, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !325, file: !216, line: 447, baseType: !5, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !215, file: !216, line: 798, baseType: !330, size: 384, offset: 3072)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !216, line: 592, size: 384, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !330, file: !216, line: 593, baseType: !207, size: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !330, file: !216, line: 594, baseType: !223, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !330, file: !216, line: 595, baseType: !223, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !330, file: !216, line: 596, baseType: !5, size: 32, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !330, file: !216, line: 597, baseType: !260, size: 16, offset: 288)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !330, file: !216, line: 598, baseType: !260, size: 16, offset: 304)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !330, file: !216, line: 600, baseType: !339, size: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !215, file: !216, line: 799, baseType: !341, size: 1792, offset: 3456)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !216, line: 610, size: 1792, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !464, !465}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !341, file: !216, line: 611, baseType: !281, size: 192, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !341, file: !216, line: 618, baseType: !289, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !341, file: !216, line: 619, baseType: !289, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !341, file: !216, line: 620, baseType: !289, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !341, file: !216, line: 621, baseType: !289, size: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !341, file: !216, line: 622, baseType: !289, size: 64, offset: 448)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !341, file: !216, line: 629, baseType: !300, size: 64, offset: 512)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !341, file: !216, line: 630, baseType: !289, size: 64, offset: 576)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !341, file: !216, line: 631, baseType: !5, size: 32, offset: 640)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !341, file: !216, line: 653, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !341, file: !216, line: 654, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !341, file: !216, line: 655, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !341, file: !216, line: 656, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !341, file: !216, line: 662, baseType: !357, size: 512, offset: 704)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !55, line: 118, size: 512, elements: !358)
!358 = !{!359, !367, !368, !373, !460, !461, !462, !463}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !357, file: !55, line: 119, baseType: !360, size: 256)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !361, line: 9, size: 256, elements: !362)
!361 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !360, file: !361, line: 10, baseType: !281, size: 192, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !360, file: !361, line: 11, baseType: !365, size: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !366, line: 29, baseType: !300)
!366 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !357, file: !55, line: 120, baseType: !365, size: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !357, file: !55, line: 121, baseType: !369, size: 64, offset: 320)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!54, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !357, file: !55, line: 122, baseType: !374, size: 64, offset: 384)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !55, line: 159, size: 512, align: 512, elements: !376)
!376 = !{!377, !428, !429, !433, !443, !444, !455, !459}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !375, file: !55, line: 160, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !55, line: 215, size: 4608, align: 512, elements: !380)
!380 = !{!381, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !379, file: !55, line: 216, baseType: !382, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !383, line: 23, baseType: !384)
!383 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !383, line: 14, size: 32, elements: !385)
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !384, file: !383, line: 15, baseType: !387, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !388, line: 44, baseType: !389)
!388 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !388, line: 14, size: 32, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !388, line: 15, baseType: !392, size: 32)
!392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !388, line: 15, size: 32, elements: !393)
!393 = !{!394, !395, !403}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !392, file: !388, line: 16, baseType: !235, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !388, line: 24, baseType: !396, size: 16)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !388, line: 24, size: 16, elements: !397)
!397 = !{!398, !402}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !396, file: !388, line: 25, baseType: !399, size: 8)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !187, line: 17, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !189, line: 21, baseType: !401)
!401 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !396, file: !388, line: 26, baseType: !399, size: 8, offset: 8)
!403 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !388, line: 28, baseType: !404, size: 32)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !388, line: 28, size: 32, elements: !405)
!405 = !{!406, !407}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !404, file: !388, line: 29, baseType: !258, size: 16)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !404, file: !388, line: 30, baseType: !258, size: 16, offset: 16)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !379, file: !55, line: 217, baseType: !5, size: 32, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !379, file: !55, line: 218, baseType: !5, size: 32, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !379, file: !55, line: 219, baseType: !5, size: 32, offset: 96)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !379, file: !55, line: 220, baseType: !5, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !379, file: !55, line: 221, baseType: !5, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !379, file: !55, line: 222, baseType: !5, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !379, file: !55, line: 223, baseType: !5, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !379, file: !55, line: 224, baseType: !5, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !379, file: !55, line: 226, baseType: !5, size: 32, offset: 160)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !379, file: !55, line: 227, baseType: !260, size: 16, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !379, file: !55, line: 228, baseType: !260, size: 16, offset: 208)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !379, file: !55, line: 229, baseType: !5, size: 32, offset: 224)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !379, file: !55, line: 235, baseType: !365, size: 64, offset: 256)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !379, file: !55, line: 236, baseType: !372, size: 64, offset: 320)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !379, file: !55, line: 237, baseType: !365, size: 64, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !379, file: !55, line: 238, baseType: !372, size: 64, offset: 448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !379, file: !55, line: 239, baseType: !425, size: 4096, align: 512, offset: 512)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 4096, align: 512, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 8)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !375, file: !55, line: 161, baseType: !5, size: 32, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !375, file: !55, line: 162, baseType: !430, size: 32, offset: 96)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !208, line: 32, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !432, line: 96, baseType: !112)
!432 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!433 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !375, file: !55, line: 163, baseType: !434, size: 32, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !435, line: 274, baseType: !436)
!435 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !435, line: 274, size: 32, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !436, file: !435, line: 274, baseType: !439, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !435, line: 69, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !435, line: 64, size: 32, elements: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !440, file: !435, line: 65, baseType: !5, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !375, file: !55, line: 164, baseType: !372, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !375, file: !55, line: 165, baseType: !445, size: 128, offset: 256)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !361, line: 14, size: 128, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !445, file: !361, line: 15, baseType: !448, size: 128)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !282, line: 26, size: 128, elements: !449)
!449 = !{!450, !454}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !448, file: !282, line: 27, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !282, line: 12, size: 64, elements: !452)
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !451, file: !282, line: 13, baseType: !286, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !448, file: !282, line: 28, baseType: !286, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !375, file: !55, line: 166, baseType: !456, size: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!365}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !375, file: !55, line: 167, baseType: !365, size: 64, offset: 448)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !357, file: !55, line: 123, baseType: !399, size: 8, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !357, file: !55, line: 124, baseType: !399, size: 8, offset: 456)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !357, file: !55, line: 125, baseType: !399, size: 8, offset: 464)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !357, file: !55, line: 126, baseType: !399, size: 8, offset: 472)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !341, file: !216, line: 671, baseType: !357, size: 512, offset: 1216)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !341, file: !216, line: 679, baseType: !466, size: 64, offset: 1728)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !215, file: !216, line: 800, baseType: !468, size: 64, offset: 5248)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!470 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !216, line: 800, flags: DIFlagFwdDecl)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !215, file: !216, line: 809, baseType: !472, size: 64, offset: 5312)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !216, line: 70, flags: DIFlagFwdDecl)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !215, file: !216, line: 825, baseType: !475, size: 2048, align: 512, offset: 5632)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !216, line: 509, size: 2048, align: 512, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !475, file: !216, line: 511, baseType: !289, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !475, file: !216, line: 512, baseType: !289, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !475, file: !216, line: 513, baseType: !289, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !475, file: !216, line: 514, baseType: !289, size: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !475, file: !216, line: 515, baseType: !289, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !475, file: !216, line: 516, baseType: !289, size: 64, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !475, file: !216, line: 518, baseType: !289, size: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !475, file: !216, line: 519, baseType: !289, size: 64, offset: 448)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !475, file: !216, line: 520, baseType: !300, size: 64, offset: 512)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !475, file: !216, line: 522, baseType: !289, size: 64, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !475, file: !216, line: 523, baseType: !289, size: 64, offset: 640)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !475, file: !216, line: 524, baseType: !300, size: 64, offset: 704)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !475, file: !216, line: 526, baseType: !300, size: 64, offset: 768)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !475, file: !216, line: 527, baseType: !289, size: 64, offset: 832)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !475, file: !216, line: 529, baseType: !289, size: 64, offset: 896)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !475, file: !216, line: 530, baseType: !289, size: 64, offset: 960)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !475, file: !216, line: 531, baseType: !289, size: 64, offset: 1024)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !475, file: !216, line: 532, baseType: !289, size: 64, offset: 1088)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !475, file: !216, line: 533, baseType: !289, size: 64, offset: 1152)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !475, file: !216, line: 535, baseType: !289, size: 64, offset: 1216)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !475, file: !216, line: 536, baseType: !289, size: 64, offset: 1280)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !475, file: !216, line: 537, baseType: !289, size: 64, offset: 1344)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !475, file: !216, line: 538, baseType: !289, size: 64, offset: 1408)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !475, file: !216, line: 539, baseType: !289, size: 64, offset: 1472)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !475, file: !216, line: 540, baseType: !289, size: 64, offset: 1536)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !475, file: !216, line: 541, baseType: !289, size: 64, offset: 1600)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !475, file: !216, line: 542, baseType: !289, size: 64, offset: 1664)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !475, file: !216, line: 543, baseType: !289, size: 64, offset: 1728)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !215, file: !216, line: 833, baseType: !5, size: 32, offset: 7680)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !215, file: !216, line: 836, baseType: !5, size: 32, offset: 7712)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !215, file: !216, line: 837, baseType: !112, size: 32, offset: 7744)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !215, file: !216, line: 838, baseType: !509, size: 64, offset: 7808)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !512, line: 19, baseType: !513)
!512 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !512, line: 19, size: 64, elements: !514)
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !513, file: !512, line: 19, baseType: !516, size: 64)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 64, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 1)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !215, file: !216, line: 839, baseType: !520, size: 64, offset: 7872)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !215, file: !216, line: 840, baseType: !511, size: 64, offset: 7936)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !215, file: !216, line: 841, baseType: !190, size: 64, offset: 8000)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !215, file: !216, line: 843, baseType: !260, size: 16, offset: 8064)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !215, file: !216, line: 845, baseType: !260, size: 16, offset: 8080)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !215, file: !216, line: 848, baseType: !112, size: 32, offset: 8096)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !215, file: !216, line: 849, baseType: !527, size: 32, offset: 8128)
!527 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !216, line: 718, size: 32, elements: !528)
!528 = !{!529, !536}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !527, file: !216, line: 724, baseType: !530, size: 32)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !527, file: !216, line: 719, size: 32, elements: !531)
!531 = !{!532, !533, !534, !535}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !530, file: !216, line: 720, baseType: !399, size: 8)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !530, file: !216, line: 721, baseType: !399, size: 8, offset: 8)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !530, file: !216, line: 722, baseType: !399, size: 8, offset: 16)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !530, file: !216, line: 723, baseType: !399, size: 8, offset: 24)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !527, file: !216, line: 725, baseType: !186, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !215, file: !216, line: 850, baseType: !207, size: 128, offset: 8192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !215, file: !216, line: 851, baseType: !539, size: 64, offset: 8320)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !216, line: 60, flags: DIFlagFwdDecl)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !215, file: !216, line: 855, baseType: !223, size: 64, offset: 8384)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !215, file: !216, line: 856, baseType: !399, size: 8, offset: 8448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !215, file: !216, line: 857, baseType: !399, size: 8, offset: 8456)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !215, file: !216, line: 858, baseType: !112, size: 32, offset: 8480)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !215, file: !216, line: 859, baseType: !207, size: 128, offset: 8512)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !215, file: !216, line: 860, baseType: !112, size: 32, offset: 8640)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !215, file: !216, line: 861, baseType: !207, size: 128, offset: 8704)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !215, file: !216, line: 873, baseType: !549, size: 256, offset: 8832)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !216, line: 376, size: 256, elements: !550)
!550 = !{!551, !552, !553, !554}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !549, file: !216, line: 381, baseType: !223, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !549, file: !216, line: 384, baseType: !291, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !549, file: !216, line: 389, baseType: !291, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !549, file: !216, line: 392, baseType: !291, size: 64, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !215, file: !216, line: 875, baseType: !207, size: 128, offset: 9088)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !215, file: !216, line: 877, baseType: !557, size: 320, offset: 9216)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !558, line: 86, size: 320, elements: !559)
!558 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!559 = !{!560, !561, !562}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !557, file: !558, line: 87, baseType: !112, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !557, file: !558, line: 88, baseType: !207, size: 128, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !557, file: !558, line: 89, baseType: !207, size: 128, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !215, file: !216, line: 878, baseType: !281, size: 192, align: 64, offset: 9536)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !215, file: !216, line: 881, baseType: !565, size: 64, offset: 9728)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !33, line: 733, size: 10240, elements: !567)
!567 = !{!568, !4490}
!568 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !33, line: 734, baseType: !569, size: 10240)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !566, file: !33, line: 734, size: 10240, elements: !570)
!570 = !{!571, !575, !597, !4369, !4370, !4371, !4372, !4373, !4374, !4381, !4382, !4383, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4422, !4424, !4427, !4470, !4471, !4472, !4475, !4476, !4477, !4480, !4481, !4482, !4488, !4489}
!571 = !DIDerivedType(tag: DW_TAG_member, scope: !569, file: !33, line: 739, baseType: !572, size: 512, align: 512)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !569, file: !33, line: 739, size: 512, align: 512, elements: !573)
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !572, file: !33, line: 747, baseType: !235, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !569, file: !33, line: 750, baseType: !576, size: 128, offset: 512)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !577, line: 218, size: 128, elements: !578)
!577 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!578 = !{!579, !595, !596}
!579 = !DIDerivedType(tag: DW_TAG_member, scope: !576, file: !577, line: 219, baseType: !580, size: 32)
!580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !576, file: !577, line: 219, size: 32, elements: !581)
!581 = !{!582, !591}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !580, file: !577, line: 220, baseType: !583, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !584, line: 29, baseType: !585)
!584 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !584, line: 17, size: 32, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, scope: !585, file: !584, line: 18, baseType: !588, size: 32)
!588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !585, file: !584, line: 18, size: 32, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !588, file: !584, line: 19, baseType: !384, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !580, file: !577, line: 221, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !577, line: 197, baseType: !593)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !577, line: 197, elements: !594)
!594 = !{}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !576, file: !577, line: 223, baseType: !5, size: 32, offset: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !576, file: !577, line: 224, baseType: !190, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !569, file: !33, line: 752, baseType: !598, size: 64, offset: 640)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!223, !601, !223, !223, !223, !223}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !12, line: 994, size: 1856, align: 64, elements: !603)
!603 = !{!604, !618, !619, !621, !628, !640, !643, !644, !719, !934, !943, !4359, !4360, !4361, !4362, !4363, !4364, !4366, !4367, !4368}
!604 = !DIDerivedType(tag: DW_TAG_member, scope: !602, file: !12, line: 995, baseType: !605, size: 128)
!605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !602, file: !12, line: 995, size: 128, elements: !606)
!606 = !{!607, !608, !617}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !605, file: !12, line: 996, baseType: !247, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !605, file: !12, line: 997, baseType: !609, size: 128, align: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !208, line: 232, size: 128, align: 64, elements: !610)
!610 = !{!611, !613}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !609, file: !208, line: 233, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !609, file: !208, line: 234, baseType: !614, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !612}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !605, file: !12, line: 998, baseType: !5, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !602, file: !12, line: 1005, baseType: !583, size: 32, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !602, file: !12, line: 1006, baseType: !620, size: 32, offset: 160)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !208, line: 156, baseType: !5)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !602, file: !12, line: 1007, baseType: !622, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !623, line: 13, baseType: !624)
!623 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !208, line: 181, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !208, line: 179, size: 64, elements: !626)
!626 = !{!627}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !625, file: !208, line: 180, baseType: !300, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !602, file: !12, line: 1008, baseType: !629, size: 256, offset: 256)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !630, line: 66, size: 256, elements: !631)
!630 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!631 = !{!632, !633, !634, !639}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !629, file: !630, line: 67, baseType: !622, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !629, file: !630, line: 68, baseType: !382, size: 32, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !629, file: !630, line: 70, baseType: !635, size: 32, offset: 96)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !636, line: 15, size: 32, elements: !637)
!636 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !635, file: !636, line: 20, baseType: !235, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !629, file: !630, line: 72, baseType: !207, size: 128, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !602, file: !12, line: 1009, baseType: !641, size: 64, offset: 512)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !208, line: 52, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !432, line: 88, baseType: !302)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !602, file: !12, line: 1010, baseType: !5, size: 32, offset: 576)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !602, file: !12, line: 1011, baseType: !645, size: 256, offset: 640)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !12, line: 948, size: 256, elements: !646)
!646 = !{!647, !670, !708, !709, !717, !718}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !645, file: !12, line: 949, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !649, line: 34, baseType: !650)
!649 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !649, line: 25, size: 64, elements: !651)
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !650, file: !649, line: 26, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !654, line: 27, baseType: !655)
!654 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !654, line: 13, size: 64, elements: !656)
!656 = !{!657, !669}
!657 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !654, line: 14, baseType: !658, size: 32)
!658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !654, line: 14, size: 32, elements: !659)
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !658, file: !654, line: 15, baseType: !235, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, scope: !658, file: !654, line: 16, baseType: !662, size: 32)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !658, file: !654, line: 16, size: 32, elements: !663)
!663 = !{!664, !665}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !662, file: !654, line: 18, baseType: !399, size: 8)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !662, file: !654, line: 19, baseType: !666, size: 24, offset: 8)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 24, elements: !667)
!667 = !{!668}
!668 = !DISubrange(count: 3)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !655, file: !654, line: 26, baseType: !387, size: 32, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !645, file: !12, line: 950, baseType: !671, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !17, line: 59, size: 768, elements: !673)
!673 = !{!674, !675, !676, !677, !690, !691, !697, !698}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !672, file: !17, line: 61, baseType: !230, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !672, file: !17, line: 62, baseType: !5, size: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !672, file: !17, line: 63, baseType: !583, size: 32, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !672, file: !17, line: 65, baseType: !678, size: 256, offset: 128)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 256, elements: !688)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !208, line: 194, size: 64, elements: !680)
!680 = !{!681}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !679, file: !208, line: 195, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !208, line: 198, size: 128, elements: !684)
!684 = !{!685, !686}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !683, file: !208, line: 199, baseType: !682, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !683, file: !208, line: 199, baseType: !687, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!688 = !{!689}
!689 = !DISubrange(count: 4)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !672, file: !17, line: 66, baseType: !679, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !672, file: !17, line: 68, baseType: !692, size: 192, offset: 448)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !196, line: 41, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !196, line: 37, size: 192, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !693, file: !196, line: 38, baseType: !583, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !693, file: !196, line: 39, baseType: !207, size: 128, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !672, file: !17, line: 69, baseType: !609, size: 128, align: 64, offset: 640)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !672, file: !17, line: 70, baseType: !699, offset: 768)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, elements: !706)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !17, line: 54, size: 128, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !700, file: !17, line: 55, baseType: !112, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !700, file: !17, line: 56, baseType: !704, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !17, line: 56, flags: DIFlagFwdDecl)
!706 = !{!707}
!707 = !DISubrange(count: -1)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !645, file: !12, line: 951, baseType: !16, size: 32, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !645, file: !12, line: 952, baseType: !710, size: 32, offset: 160)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !711, line: 23, baseType: !712)
!711 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !711, line: 21, size: 32, elements: !713)
!713 = !{!714}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !712, file: !711, line: 22, baseType: !715, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !208, line: 37, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !432, line: 49, baseType: !5)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !645, file: !12, line: 952, baseType: !710, size: 32, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !645, file: !12, line: 953, baseType: !112, size: 32, offset: 224)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !602, file: !12, line: 1012, baseType: !720, size: 64, offset: 896)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !723, line: 110, size: 1472, elements: !724)
!723 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!724 = !{!725, !726, !727, !734, !735, !736, !737, !738, !739, !740, !741, !747, !748, !749, !750, !751, !752, !879, !880, !881, !882, !883, !914, !917, !921, !929}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !722, file: !723, line: 111, baseType: !622, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !722, file: !723, line: 112, baseType: !710, size: 32, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !722, file: !723, line: 113, baseType: !728, size: 32, offset: 96)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !711, line: 28, baseType: !729)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !711, line: 26, size: 32, elements: !730)
!730 = !{!731}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !729, file: !711, line: 27, baseType: !732, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !208, line: 38, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !432, line: 50, baseType: !5)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !722, file: !723, line: 114, baseType: !710, size: 32, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !722, file: !723, line: 115, baseType: !728, size: 32, offset: 160)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !722, file: !723, line: 116, baseType: !710, size: 32, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !722, file: !723, line: 117, baseType: !728, size: 32, offset: 224)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !722, file: !723, line: 118, baseType: !710, size: 32, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !722, file: !723, line: 119, baseType: !728, size: 32, offset: 288)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !722, file: !723, line: 120, baseType: !5, size: 32, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !722, file: !723, line: 121, baseType: !742, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !743, line: 24, baseType: !744)
!743 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !743, line: 24, size: 64, elements: !745)
!745 = !{!746}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !744, file: !743, line: 24, baseType: !289, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !722, file: !723, line: 122, baseType: !742, size: 64, offset: 448)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !722, file: !723, line: 123, baseType: !742, size: 64, offset: 512)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !722, file: !723, line: 124, baseType: !742, size: 64, offset: 576)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !722, file: !723, line: 125, baseType: !742, size: 64, offset: 640)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !722, file: !723, line: 127, baseType: !401, size: 8, offset: 704)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !722, file: !723, line: 129, baseType: !753, size: 64, offset: 768)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !755, line: 195, size: 1728, elements: !756)
!755 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!756 = !{!757, !758, !763, !768, !777, !780, !781, !788, !789, !790, !791, !794, !795, !796, !798, !799, !843, !864}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !754, file: !755, line: 196, baseType: !230, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !754, file: !755, line: 197, baseType: !759, size: 32, offset: 32)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !755, line: 28, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !208, line: 104, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !187, line: 20, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !189, line: 26, baseType: !112)
!763 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !755, line: 198, baseType: !764, size: 192, offset: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !754, file: !755, line: 198, size: 192, elements: !765)
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !764, file: !755, line: 199, baseType: !207, size: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !764, file: !755, line: 200, baseType: !281, size: 192, align: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !754, file: !755, line: 205, baseType: !769, size: 320, offset: 256)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !770, line: 48, size: 320, elements: !771)
!770 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!771 = !{!772, !773, !774, !775, !776}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !769, file: !770, line: 49, baseType: !622, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !769, file: !770, line: 55, baseType: !622, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !769, file: !770, line: 57, baseType: !635, size: 32, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !769, file: !770, line: 59, baseType: !382, size: 32, offset: 160)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !769, file: !770, line: 60, baseType: !207, size: 128, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !754, file: !755, line: 206, baseType: !778, size: 64, offset: 576)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !755, line: 206, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !754, file: !755, line: 207, baseType: !190, size: 64, offset: 640)
!781 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !755, line: 208, baseType: !782, size: 64, offset: 704)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !754, file: !755, line: 208, size: 64, elements: !783)
!783 = !{!784, !787}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !782, file: !755, line: 209, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !786, line: 8, baseType: !301)
!786 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!787 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !782, file: !755, line: 210, baseType: !785, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !754, file: !755, line: 212, baseType: !785, size: 64, offset: 768)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !754, file: !755, line: 213, baseType: !710, size: 32, offset: 832)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !754, file: !755, line: 214, baseType: !728, size: 32, offset: 864)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !754, file: !755, line: 215, baseType: !792, size: 32, offset: 896)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !755, line: 31, baseType: !793)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !208, line: 110, baseType: !186)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !754, file: !755, line: 216, baseType: !260, size: 16, offset: 928)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !754, file: !755, line: 217, baseType: !260, size: 16, offset: 944)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !754, file: !755, line: 221, baseType: !797, size: 16, offset: 960)
!797 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !754, file: !755, line: 228, baseType: !223, size: 64, offset: 1024)
!799 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !755, line: 245, baseType: !800, size: 320, offset: 1088)
!800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !754, file: !755, line: 245, size: 320, elements: !801)
!801 = !{!802, !834}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !800, file: !755, line: 246, baseType: !803, size: 320)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !755, line: 114, size: 320, elements: !804)
!804 = !{!805, !806, !819, !822, !831}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !803, file: !755, line: 116, baseType: !223, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, scope: !803, file: !755, line: 117, baseType: !807, size: 64, offset: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !803, file: !755, line: 117, size: 64, elements: !808)
!808 = !{!809, !818}
!809 = !DIDerivedType(tag: DW_TAG_member, scope: !807, file: !755, line: 118, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !807, file: !755, line: 118, size: 64, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !810, file: !755, line: 120, baseType: !258, size: 16)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !810, file: !755, line: 121, baseType: !814, size: 48, offset: 16)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 48, elements: !816)
!815 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!816 = !{!817}
!817 = !DISubrange(count: 6)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !807, file: !755, line: 127, baseType: !223, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !803, file: !755, line: 129, baseType: !820, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !755, line: 102, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !803, file: !755, line: 130, baseType: !823, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !755, line: 108, size: 192, elements: !825)
!825 = !{!826, !827, !828}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !824, file: !755, line: 109, baseType: !609, size: 128, align: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !824, file: !755, line: 110, baseType: !230, size: 32, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !824, file: !755, line: 111, baseType: !829, size: 8, offset: 160)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !208, line: 35, baseType: !830)
!830 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !803, file: !755, line: 131, baseType: !832, size: 64, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !815)
!834 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !755, line: 247, baseType: !835, size: 320)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !800, file: !755, line: 247, size: 320, elements: !836)
!836 = !{!837, !838, !839, !840, !841}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !835, file: !755, line: 248, baseType: !223, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !835, file: !755, line: 249, baseType: !223, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !835, file: !755, line: 250, baseType: !820, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !835, file: !755, line: 251, baseType: !823, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !835, file: !755, line: 252, baseType: !842, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !755, line: 260, baseType: !844, size: 256, offset: 1408)
!844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !754, file: !755, line: 260, size: 256, elements: !845)
!845 = !{!846, !852}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !844, file: !755, line: 261, baseType: !847, size: 256)
!847 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !755, line: 134, size: 256, elements: !848)
!848 = !{!849, !850}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !847, file: !755, line: 135, baseType: !190, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !847, file: !755, line: 136, baseType: !851, size: 256)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 256, elements: !688)
!852 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !755, line: 262, baseType: !853, size: 256)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !844, file: !755, line: 262, size: 256, elements: !854)
!854 = !{!855, !856}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !853, file: !755, line: 264, baseType: !207, size: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !853, file: !755, line: 265, baseType: !857, size: 128, offset: 128)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !858, line: 22, size: 128, elements: !859)
!858 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!859 = !{!860, !863}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !857, file: !858, line: 23, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !858, line: 23, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !857, file: !858, line: 24, baseType: !223, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !754, file: !755, line: 280, baseType: !865, size: 64, offset: 1664)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !755, line: 176, size: 192, elements: !867)
!867 = !{!868, !877, !878}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !866, file: !755, line: 177, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !755, line: 171, baseType: !870)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!112, !753, !873, !875, !753}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !821)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !847)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !866, file: !755, line: 178, baseType: !753, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !866, file: !755, line: 179, baseType: !820, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !722, file: !723, line: 130, baseType: !753, size: 64, offset: 832)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !722, file: !723, line: 131, baseType: !753, size: 64, offset: 896)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !722, file: !723, line: 132, baseType: !753, size: 64, offset: 960)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !722, file: !723, line: 135, baseType: !190, size: 64, offset: 1024)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !722, file: !723, line: 137, baseType: !884, size: 64, offset: 1088)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !886, line: 14, size: 1088, elements: !887)
!886 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!887 = !{!888, !889, !898, !899, !900, !901, !902, !903}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !885, file: !886, line: 15, baseType: !230, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !885, file: !886, line: 17, baseType: !890, size: 320, offset: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !891, line: 22, size: 320, elements: !892)
!891 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!892 = !{!893, !894, !895, !896}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !890, file: !891, line: 23, baseType: !382, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !890, file: !891, line: 24, baseType: !300, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !890, file: !891, line: 26, baseType: !207, size: 128, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !890, file: !891, line: 28, baseType: !897, size: 64, offset: 256)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !885, file: !886, line: 19, baseType: !223, size: 64, offset: 384)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !885, file: !886, line: 20, baseType: !622, size: 64, offset: 448)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !885, file: !886, line: 23, baseType: !683, size: 128, offset: 512)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !885, file: !886, line: 24, baseType: !710, size: 32, offset: 640)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !885, file: !886, line: 29, baseType: !622, size: 64, offset: 704)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !885, file: !886, line: 36, baseType: !904, size: 320, offset: 768)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !905, line: 15, size: 320, elements: !906)
!905 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!906 = !{!907, !908, !909, !910, !911, !912, !913}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !904, file: !905, line: 16, baseType: !382, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !904, file: !905, line: 18, baseType: !112, size: 32, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !904, file: !905, line: 19, baseType: !112, size: 32, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !904, file: !905, line: 20, baseType: !112, size: 32, offset: 96)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !904, file: !905, line: 21, baseType: !112, size: 32, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !904, file: !905, line: 22, baseType: !223, size: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !904, file: !905, line: 23, baseType: !223, size: 64, offset: 256)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !722, file: !723, line: 138, baseType: !915, size: 64, offset: 1152)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !711, line: 18, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !722, file: !723, line: 139, baseType: !918, size: 64, offset: 1216)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !920, line: 16, flags: DIFlagFwdDecl)
!920 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!921 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !722, file: !723, line: 140, baseType: !922, size: 64, offset: 1280)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !723, line: 25, size: 64, elements: !924)
!924 = !{!925, !926, !927}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !923, file: !723, line: 26, baseType: !235, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !923, file: !723, line: 27, baseType: !112, size: 32, offset: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !923, file: !723, line: 28, baseType: !928, offset: 64)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, elements: !706)
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !723, line: 142, baseType: !930, size: 128, offset: 1344)
!930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !722, file: !723, line: 142, size: 128, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !930, file: !723, line: 143, baseType: !112, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !930, file: !723, line: 144, baseType: !609, size: 128, align: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !602, file: !12, line: 1013, baseType: !935, size: 256, offset: 960)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !12, line: 970, size: 256, elements: !936)
!936 = !{!937, !938, !939, !940, !941, !942}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !935, file: !12, line: 971, baseType: !223, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !935, file: !12, line: 972, baseType: !5, size: 32, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !935, file: !12, line: 973, baseType: !5, size: 32, offset: 96)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !935, file: !12, line: 974, baseType: !5, size: 32, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !935, file: !12, line: 975, baseType: !5, size: 32, offset: 160)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !935, file: !12, line: 976, baseType: !641, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !602, file: !12, line: 1014, baseType: !944, size: 128, offset: 1216)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !945, line: 8, size: 128, elements: !946)
!945 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!946 = !{!947, !4358}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !944, file: !945, line: 9, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !950, line: 70, size: 256, elements: !951)
!950 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!951 = !{!952, !4355, !4356, !4357}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !949, file: !950, line: 71, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !955, line: 82, size: 1536, elements: !956)
!955 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!956 = !{!957, !958, !963, !971, !972, !987, !4322, !4324, !4337, !4338, !4339, !4340, !4341, !4347, !4348, !4349}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !954, file: !955, line: 84, baseType: !5, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !954, file: !955, line: 85, baseType: !959, size: 32, offset: 32)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !435, line: 275, baseType: !960)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !435, line: 275, size: 32, elements: !961)
!961 = !{!962}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !960, file: !435, line: 275, baseType: !439, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !954, file: !955, line: 86, baseType: !964, size: 128, offset: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !965, line: 38, size: 128, elements: !966)
!965 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!966 = !{!967, !969}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !964, file: !965, line: 39, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !964, file: !965, line: 39, baseType: !970, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !954, file: !955, line: 87, baseType: !953, size: 64, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !954, file: !955, line: 88, baseType: !973, size: 128, offset: 256)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !955, line: 49, size: 128, elements: !974)
!974 = !{!975, !984}
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !973, file: !955, line: 50, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !973, file: !955, line: 50, size: 64, elements: !977)
!977 = !{!978, !983}
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !955, line: 51, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !955, line: 51, size: 64, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !979, file: !955, line: 52, baseType: !186, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !979, file: !955, line: 52, baseType: !186, size: 32, offset: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !976, file: !955, line: 54, baseType: !289, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !973, file: !955, line: 56, baseType: !985, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !954, file: !955, line: 89, baseType: !988, size: 64, offset: 384)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !12, line: 641, size: 4800, elements: !990)
!990 = !{!991, !993, !994, !995, !996, !997, !998, !1001, !1002, !1200, !4138, !4139, !4140, !4141, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4304, !4307, !4308, !4309, !4318, !4319, !4320, !4321}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !989, file: !12, line: 642, baseType: !992, size: 16)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !208, line: 24, baseType: !260)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !989, file: !12, line: 643, baseType: !260, size: 16, offset: 16)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !989, file: !12, line: 644, baseType: !710, size: 32, offset: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !989, file: !12, line: 645, baseType: !207, size: 128, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !989, file: !12, line: 646, baseType: !728, size: 32, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !989, file: !12, line: 647, baseType: !5, size: 32, offset: 224)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !989, file: !12, line: 650, baseType: !999, size: 64, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !12, line: 607, flags: DIFlagFwdDecl)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !989, file: !12, line: 651, baseType: !999, size: 64, offset: 320)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !989, file: !12, line: 654, baseType: !1003, size: 64, offset: 384)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1005)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !12, line: 1966, size: 2048, align: 512, elements: !1006)
!1006 = !{!1007, !1011, !1024, !1030, !1034, !1038, !1042, !1046, !1050, !1054, !1058, !1059, !1065, !1069, !1107, !1138, !1148, !1154, !1158, !1162, !1166, !1170, !1174, !1180, !1184}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1005, file: !12, line: 1967, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!953, !988, !953, !5}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1005, file: !12, line: 1968, baseType: !1012, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!832, !953, !988, !1015}
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1017, line: 10, size: 128, elements: !1018)
!1017 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1018 = !{!1019, !1023}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1016, file: !1017, line: 11, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{null, !190}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1016, file: !1017, line: 12, baseType: !190, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1005, file: !12, line: 1969, baseType: !1025, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!112, !1028, !988, !112}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !743, line: 42, flags: DIFlagFwdDecl)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1005, file: !12, line: 1970, baseType: !1031, size: 64, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!999, !988, !112, !829}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1005, file: !12, line: 1972, baseType: !1035, size: 64, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!112, !953, !842, !112}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1005, file: !12, line: 1974, baseType: !1039, size: 64, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!112, !1028, !988, !953, !992, !829}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1005, file: !12, line: 1976, baseType: !1043, size: 64, offset: 384)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!112, !953, !988, !953}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1005, file: !12, line: 1977, baseType: !1047, size: 64, offset: 448)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!112, !988, !953}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1005, file: !12, line: 1978, baseType: !1051, size: 64, offset: 512)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!112, !1028, !988, !953, !832}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1005, file: !12, line: 1980, baseType: !1055, size: 64, offset: 576)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!112, !1028, !988, !953, !992}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1005, file: !12, line: 1982, baseType: !1047, size: 64, offset: 640)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1005, file: !12, line: 1983, baseType: !1060, size: 64, offset: 704)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!112, !1028, !988, !953, !992, !1063}
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !208, line: 21, baseType: !1064)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !208, line: 18, baseType: !186)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1005, file: !12, line: 1985, baseType: !1066, size: 64, offset: 768)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!112, !1028, !988, !953, !988, !953, !5}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1005, file: !12, line: 1987, baseType: !1070, size: 64, offset: 832)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!112, !1028, !953, !1073}
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !12, line: 226, size: 640, elements: !1075)
!1075 = !{!1076, !1077, !1078, !1088, !1097, !1098, !1104, !1105, !1106}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1074, file: !12, line: 227, baseType: !5, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1074, file: !12, line: 228, baseType: !992, size: 16, offset: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !12, line: 241, baseType: !1079, size: 32, offset: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1074, file: !12, line: 241, size: 32, elements: !1080)
!1080 = !{!1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1079, file: !12, line: 242, baseType: !710, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1079, file: !12, line: 243, baseType: !1083, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1084, line: 16, baseType: !1085)
!1084 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1084, line: 14, size: 32, elements: !1086)
!1086 = !{!1087}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1085, file: !1084, line: 15, baseType: !715, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !12, line: 245, baseType: !1089, size: 32, offset: 96)
!1089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1074, file: !12, line: 245, size: 32, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1089, file: !12, line: 246, baseType: !728, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1089, file: !12, line: 247, baseType: !1093, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1084, line: 20, baseType: !1094)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1084, line: 18, size: 32, elements: !1095)
!1095 = !{!1096}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1094, file: !1084, line: 19, baseType: !732, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1074, file: !12, line: 249, baseType: !641, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1074, file: !12, line: 250, baseType: !1099, size: 128, offset: 192)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !786, line: 13, size: 128, elements: !1100)
!1100 = !{!1101, !1102}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1099, file: !786, line: 14, baseType: !785, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1099, file: !786, line: 15, baseType: !1103, size: 64, offset: 64)
!1103 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1074, file: !12, line: 251, baseType: !1099, size: 128, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1074, file: !12, line: 252, baseType: !1099, size: 128, offset: 448)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1074, file: !12, line: 259, baseType: !601, size: 64, offset: 576)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1005, file: !12, line: 1988, baseType: !1108, size: 64, offset: 896)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!112, !1028, !1111, !1113, !186, !5}
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !944)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1115, line: 22, size: 1280, elements: !1116)
!1115 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1116 = !{!1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1114, file: !1115, line: 23, baseType: !186, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1114, file: !1115, line: 24, baseType: !992, size: 16, offset: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1114, file: !1115, line: 25, baseType: !5, size: 32, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1114, file: !1115, line: 26, baseType: !793, size: 32, offset: 96)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1114, file: !1115, line: 27, baseType: !289, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1114, file: !1115, line: 28, baseType: !289, size: 64, offset: 192)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1114, file: !1115, line: 41, baseType: !289, size: 64, offset: 256)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1114, file: !1115, line: 42, baseType: !1063, size: 32, offset: 320)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1114, file: !1115, line: 43, baseType: !1063, size: 32, offset: 352)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1114, file: !1115, line: 44, baseType: !710, size: 32, offset: 384)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1114, file: !1115, line: 45, baseType: !728, size: 32, offset: 416)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1114, file: !1115, line: 46, baseType: !641, size: 64, offset: 448)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1114, file: !1115, line: 47, baseType: !1099, size: 128, offset: 512)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1114, file: !1115, line: 48, baseType: !1099, size: 128, offset: 640)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1114, file: !1115, line: 49, baseType: !1099, size: 128, offset: 768)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1114, file: !1115, line: 50, baseType: !1099, size: 128, offset: 896)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1114, file: !1115, line: 51, baseType: !289, size: 64, offset: 1024)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1114, file: !1115, line: 52, baseType: !289, size: 64, offset: 1088)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1114, file: !1115, line: 53, baseType: !186, size: 32, offset: 1152)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1114, file: !1115, line: 54, baseType: !186, size: 32, offset: 1184)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1114, file: !1115, line: 55, baseType: !289, size: 64, offset: 1216)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1005, file: !12, line: 1990, baseType: !1139, size: 64, offset: 960)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!1142, !953, !842, !1145}
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !208, line: 66, baseType: !1143)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !432, line: 73, baseType: !1144)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !432, line: 15, baseType: !1103)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !208, line: 61, baseType: !1146)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !432, line: 72, baseType: !1147)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !432, line: 16, baseType: !223)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1005, file: !12, line: 1991, baseType: !1149, size: 64, offset: 1024)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!112, !988, !1152, !289, !289}
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !12, line: 55, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1005, file: !12, line: 1993, baseType: !1155, size: 64, offset: 1088)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!112, !988, !112}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1005, file: !12, line: 1994, baseType: !1159, size: 64, offset: 1152)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!112, !988, !953, !601, !5, !992}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1005, file: !12, line: 1997, baseType: !1163, size: 64, offset: 1216)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!112, !1028, !988, !601, !992}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1005, file: !12, line: 1999, baseType: !1167, size: 64, offset: 1280)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!999, !1028, !953, !112}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1005, file: !12, line: 2001, baseType: !1171, size: 64, offset: 1344)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!112, !1028, !953, !999, !112}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1005, file: !12, line: 2003, baseType: !1175, size: 64, offset: 1408)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!112, !1028, !953, !1178}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !12, line: 76, flags: DIFlagFwdDecl)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1005, file: !12, line: 2005, baseType: !1181, size: 64, offset: 1472)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!112, !953, !1178}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1005, file: !12, line: 2006, baseType: !1185, size: 64, offset: 1536)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!1188, !988}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !12, line: 3192, size: 192, elements: !1190)
!1190 = !{!1191, !1199}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1189, file: !12, line: 3193, baseType: !1192, size: 128)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1193, line: 296, size: 128, elements: !1194)
!1193 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1194 = !{!1195, !1196, !1198}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1192, file: !1193, line: 297, baseType: !583, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1192, file: !1193, line: 299, baseType: !1197, size: 32, offset: 32)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !208, line: 154, baseType: !5)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1192, file: !1193, line: 300, baseType: !190, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1189, file: !12, line: 3194, baseType: !186, size: 32, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !989, file: !12, line: 655, baseType: !1201, size: 64, offset: 448)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !12, line: 1190, size: 10752, elements: !1203)
!1203 = !{!1204, !1205, !1206, !1207, !1208, !1209, !2481, !2613, !2653, !2736, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2753, !2757, !2758, !3933, !3939, !3940, !3943, !3944, !3945, !3986, !4012, !4013, !4014, !4015, !4016, !4017, !4020, !4021, !4030, !4031, !4032, !4033, !4092, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1202, file: !12, line: 1191, baseType: !207, size: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1202, file: !12, line: 1192, baseType: !1063, size: 32, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1202, file: !12, line: 1193, baseType: !401, size: 8, offset: 160)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1202, file: !12, line: 1194, baseType: !223, size: 64, offset: 192)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1202, file: !12, line: 1195, baseType: !641, size: 64, offset: 256)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1202, file: !12, line: 1196, baseType: !1210, size: 64, offset: 320)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !12, line: 2366, size: 576, elements: !1212)
!1212 = !{!1213, !1214, !1215, !1221, !1225, !1229, !1233, !2469, !2470, !2471, !2473, !2474, !2475, !2477, !2478, !2479, !2480}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1211, file: !12, line: 2367, baseType: !832, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1211, file: !12, line: 2368, baseType: !112, size: 32, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1211, file: !12, line: 2376, baseType: !1216, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!112, !1219}
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !950, line: 21, flags: DIFlagFwdDecl)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1211, file: !12, line: 2377, baseType: !1222, size: 64, offset: 192)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1224)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !12, line: 75, flags: DIFlagFwdDecl)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1211, file: !12, line: 2378, baseType: !1226, size: 64, offset: 256)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!953, !1210, !112, !832, !190}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1211, file: !12, line: 2380, baseType: !1230, size: 64, offset: 320)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{null, !1201}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1211, file: !12, line: 2381, baseType: !1234, size: 64, offset: 384)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !4, line: 402, size: 9216, align: 512, elements: !1236)
!1236 = !{!1237, !1238, !1239, !1243, !2113, !2139, !2140, !2141, !2142, !2146, !2149, !2150, !2151, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2219, !2223, !2243, !2262, !2263, !2264, !2265, !2274, !2297, !2298, !2301, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2315, !2316, !2427, !2435, !2436, !2437, !2439, !2443, !2444, !2448, !2449, !2450, !2451, !2453, !2454, !2455, !2462, !2463, !2464, !2468}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1235, file: !4, line: 403, baseType: !3, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1235, file: !4, line: 406, baseType: !207, size: 128, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1235, file: !4, line: 409, baseType: !1240, size: 448, offset: 192)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 448, elements: !1241)
!1241 = !{!1242}
!1242 = !DISubrange(count: 56)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1235, file: !4, line: 417, baseType: !1244, size: 768, offset: 640)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !4, line: 45, size: 768, elements: !1245)
!1245 = !{!1246, !2106, !2107, !2108, !2111}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1244, file: !4, line: 46, baseType: !1247, size: 512)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1248, line: 64, size: 512, elements: !1249)
!1248 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1249 = !{!1250, !1251, !1252, !1254, !1298, !1961, !2096, !2101, !2102, !2103, !2104, !2105}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1247, file: !1248, line: 65, baseType: !832, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1247, file: !1248, line: 66, baseType: !207, size: 128, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1247, file: !1248, line: 67, baseType: !1253, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1247, file: !1248, line: 68, baseType: !1255, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1248, line: 168, size: 768, elements: !1257)
!1257 = !{!1258, !1259, !1260, !1261}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1256, file: !1248, line: 169, baseType: !207, size: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1256, file: !1248, line: 170, baseType: !583, size: 32, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1256, file: !1248, line: 171, baseType: !1247, size: 512, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1256, file: !1248, line: 172, baseType: !1262, size: 64, offset: 704)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1264)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1248, line: 133, size: 192, elements: !1265)
!1265 = !{!1266, !1273, !1278}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1264, file: !1248, line: 134, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1268)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!112, !1271}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1247)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1264, file: !1248, line: 135, baseType: !1274, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!832, !1271}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1264, file: !1248, line: 136, baseType: !1279, size: 64, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1280)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!112, !1271, !1283}
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1248, line: 125, size: 20736, elements: !1285)
!1285 = !{!1286, !1288, !1292, !1293, !1297}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1284, file: !1248, line: 126, baseType: !1287, size: 192)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !842, size: 192, elements: !667)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1284, file: !1248, line: 127, baseType: !1289, size: 4096, offset: 192)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !842, size: 4096, elements: !1290)
!1290 = !{!1291}
!1291 = !DISubrange(count: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1284, file: !1248, line: 128, baseType: !112, size: 32, offset: 4288)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1284, file: !1248, line: 129, baseType: !1294, size: 16384, offset: 4320)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 16384, elements: !1295)
!1295 = !{!1296}
!1296 = !DISubrange(count: 2048)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1284, file: !1248, line: 130, baseType: !112, size: 32, offset: 20704)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1247, file: !1248, line: 69, baseType: !1299, size: 64, offset: 320)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1301)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1248, line: 116, size: 384, elements: !1302)
!1302 = !{!1303, !1307, !1326, !1921, !1951, !1955}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1301, file: !1248, line: 117, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{null, !1253}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1301, file: !1248, line: 118, baseType: !1308, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1310)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1311, line: 254, size: 128, elements: !1312)
!1311 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1312 = !{!1313, !1322}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1310, file: !1311, line: 255, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!1142, !1253, !1317, !842}
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1311, line: 30, size: 128, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1318, file: !1311, line: 31, baseType: !832, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1318, file: !1311, line: 32, baseType: !992, size: 16, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1310, file: !1311, line: 256, baseType: !1323, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!1142, !1253, !1317, !832, !1145}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1301, file: !1248, line: 119, baseType: !1327, size: 64, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1330)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1311, line: 84, size: 320, elements: !1331)
!1331 = !{!1332, !1333, !1337, !1917, !1919}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1330, file: !1311, line: 85, baseType: !832, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1330, file: !1311, line: 86, baseType: !1334, size: 64, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!992, !1253, !1317, !112}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1330, file: !1311, line: 88, baseType: !1338, size: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!992, !1253, !1341, !112}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1311, line: 175, size: 512, elements: !1343)
!1343 = !{!1344, !1345, !1346, !1347, !1908, !1912, !1913}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1342, file: !1311, line: 176, baseType: !1318, size: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1342, file: !1311, line: 177, baseType: !1145, size: 64, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1342, file: !1311, line: 178, baseType: !190, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1342, file: !1311, line: 179, baseType: !1348, size: 64, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!1351}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !12, line: 472, size: 1536, align: 64, elements: !1353)
!1353 = !{!1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1900, !1901, !1902, !1905, !1906, !1907}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1352, file: !12, line: 473, baseType: !988, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1352, file: !12, line: 474, baseType: !1192, size: 128, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1352, file: !12, line: 475, baseType: !769, size: 320, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1352, file: !12, line: 476, baseType: !1197, size: 32, offset: 512)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1352, file: !12, line: 477, baseType: !235, size: 32, offset: 544)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1352, file: !12, line: 482, baseType: !448, size: 128, offset: 576)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1352, file: !12, line: 483, baseType: !223, size: 64, offset: 704)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1352, file: !12, line: 484, baseType: !223, size: 64, offset: 768)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1352, file: !12, line: 485, baseType: !1363, size: 64, offset: 832)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1365)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !12, line: 404, size: 1280, elements: !1366)
!1366 = !{!1367, !1670, !1740, !1744, !1748, !1754, !1760, !1764, !1769, !1773, !1777, !1781, !1864, !1868, !1872, !1876, !1881, !1885, !1892, !1896}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1365, file: !12, line: 405, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!112, !1371, !1668}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !33, line: 74, size: 512, align: 128, elements: !1373)
!1373 = !{!1374, !1375, !1662, !1667}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1372, file: !33, line: 75, baseType: !223, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, scope: !1372, file: !33, line: 83, baseType: !1376, size: 320, offset: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1372, file: !33, line: 83, size: 320, elements: !1377)
!1377 = !{!1378, !1399, !1413, !1417, !1661}
!1378 = !DIDerivedType(tag: DW_TAG_member, scope: !1376, file: !33, line: 84, baseType: !1379, size: 320)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1376, file: !33, line: 84, size: 320, elements: !1380)
!1380 = !{!1381, !1392, !1393, !1398}
!1381 = !DIDerivedType(tag: DW_TAG_member, scope: !1379, file: !33, line: 90, baseType: !1382, size: 128)
!1382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1379, file: !33, line: 90, size: 128, elements: !1383)
!1383 = !{!1384, !1385, !1390, !1391}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1382, file: !33, line: 91, baseType: !207, size: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, scope: !1382, file: !33, line: 94, baseType: !1386, size: 128)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1382, file: !33, line: 94, size: 128, elements: !1387)
!1387 = !{!1388, !1389}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1386, file: !33, line: 96, baseType: !190, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1386, file: !33, line: 98, baseType: !5, size: 32, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1382, file: !33, line: 102, baseType: !207, size: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1382, file: !33, line: 103, baseType: !207, size: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1379, file: !33, line: 106, baseType: !1351, size: 64, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, scope: !1379, file: !33, line: 107, baseType: !1394, size: 64, offset: 192)
!1394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1379, file: !33, line: 107, size: 64, elements: !1395)
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1394, file: !33, line: 108, baseType: !223, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1394, file: !33, line: 109, baseType: !223, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1379, file: !33, line: 117, baseType: !223, size: 64, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_member, scope: !1376, file: !33, line: 119, baseType: !1400, size: 320)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1376, file: !33, line: 119, size: 320, elements: !1401)
!1401 = !{!1402, !1403, !1406, !1407, !1408}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1400, file: !33, line: 124, baseType: !223, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1400, file: !33, line: 125, baseType: !1404, size: 64, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !33, line: 125, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1400, file: !33, line: 126, baseType: !223, size: 64, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1400, file: !33, line: 127, baseType: !223, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, scope: !1400, file: !33, line: 128, baseType: !1409, size: 64, offset: 256)
!1409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1400, file: !33, line: 128, size: 64, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1409, file: !33, line: 133, baseType: !223, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1409, file: !33, line: 138, baseType: !622, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, scope: !1376, file: !33, line: 141, baseType: !1414, size: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1376, file: !33, line: 141, size: 64, elements: !1415)
!1415 = !{!1416}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1414, file: !33, line: 142, baseType: !223, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, scope: !1376, file: !33, line: 144, baseType: !1418, size: 128)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1376, file: !33, line: 144, size: 128, elements: !1419)
!1419 = !{!1420, !1660}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1418, file: !33, line: 146, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !25, line: 126, size: 1216, elements: !1423)
!1423 = !{!1424, !1434, !1455, !1466, !1467, !1468, !1469, !1642, !1643, !1644}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1422, file: !25, line: 127, baseType: !1425, size: 384)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !25, line: 21, size: 384, elements: !1426)
!1426 = !{!1427, !1428, !1430, !1431, !1432, !1433}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1425, file: !25, line: 22, baseType: !223, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1425, file: !25, line: 23, baseType: !1429, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1425, file: !25, line: 24, baseType: !1429, size: 64, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1425, file: !25, line: 25, baseType: !223, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1425, file: !25, line: 26, baseType: !223, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1425, file: !25, line: 27, baseType: !223, size: 64, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1422, file: !25, line: 128, baseType: !1435, size: 128, offset: 384)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1436, line: 105, size: 128, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1437 = !{!1438, !1439}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1435, file: !1436, line: 110, baseType: !223, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1435, file: !1436, line: 118, baseType: !1440, size: 64, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1436, line: 95, size: 448, elements: !1442)
!1442 = !{!1443, !1444, !1450, !1451, !1452, !1453, !1454}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1441, file: !1436, line: 96, baseType: !622, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1441, file: !1436, line: 97, baseType: !1445, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1436, line: 60, baseType: !1447)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{null, !1449}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1441, file: !1436, line: 98, baseType: !1445, size: 64, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1441, file: !1436, line: 99, baseType: !829, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1441, file: !1436, line: 100, baseType: !829, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1441, file: !1436, line: 101, baseType: !609, size: 128, align: 64, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1441, file: !1436, line: 102, baseType: !1449, size: 64, offset: 384)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1422, file: !25, line: 129, baseType: !1456, size: 256, offset: 512)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1457, line: 26, size: 256, elements: !1458)
!1457 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1458 = !{!1459, !1460}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1456, file: !1457, line: 27, baseType: !5, size: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1456, file: !1457, line: 28, baseType: !1461, size: 192, offset: 64)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1462, line: 43, size: 192, elements: !1463)
!1462 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1461, file: !1462, line: 44, baseType: !382, size: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1461, file: !1462, line: 45, baseType: !207, size: 128, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1422, file: !25, line: 130, baseType: !24, size: 32, offset: 768)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1422, file: !25, line: 131, baseType: !5, size: 32, offset: 800)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1422, file: !25, line: 132, baseType: !223, size: 64, offset: 832)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1422, file: !25, line: 133, baseType: !1470, size: 64, offset: 896)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1472)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !25, line: 77, size: 192, elements: !1473)
!1473 = !{!1474, !1478, !1638}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1472, file: !25, line: 83, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{null, !1371}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1472, file: !25, line: 89, baseType: !1479, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!1482, !1483}
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !33, line: 1184, baseType: !5)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1485, line: 512, size: 896, elements: !1486)
!1485 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1486 = !{!1487, !1605, !1606, !1613, !1620, !1630, !1631, !1632, !1634, !1636}
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1484, file: !1485, line: 513, baseType: !1488, size: 320)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1484, file: !1485, line: 513, size: 320, elements: !1489)
!1489 = !{!1490, !1601, !1602, !1603, !1604}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1488, file: !1485, line: 514, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !33, line: 625, size: 1344, elements: !1493)
!1493 = !{!1494, !1503, !1504, !1512, !1519, !1520, !1525, !1526, !1531, !1532, !1535, !1594, !1595, !1596, !1597, !1598, !1599}
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1492, file: !33, line: 628, baseType: !1495, size: 128)
!1495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1492, file: !33, line: 628, size: 128, elements: !1496)
!1496 = !{!1497, !1502}
!1497 = !DIDerivedType(tag: DW_TAG_member, scope: !1495, file: !33, line: 629, baseType: !1498, size: 128)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1495, file: !33, line: 629, size: 128, elements: !1499)
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1498, file: !33, line: 631, baseType: !223, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1498, file: !33, line: 632, baseType: !223, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1495, file: !33, line: 635, baseType: !609, size: 128, align: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1492, file: !33, line: 639, baseType: !565, size: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1492, file: !33, line: 640, baseType: !1505, size: 64, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1506, line: 297, baseType: !1507)
!1506 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1506, line: 297, size: 64, elements: !1508)
!1508 = !{!1509}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1507, file: !1506, line: 297, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1511, line: 19, baseType: !223)
!1511 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1512 = !DIDerivedType(tag: DW_TAG_member, scope: !1492, file: !33, line: 646, baseType: !1513, size: 64, offset: 256)
!1513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1492, file: !33, line: 646, size: 64, elements: !1514)
!1514 = !{!1515, !1518}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1513, file: !33, line: 647, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1517)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !33, line: 542, baseType: !223)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1513, file: !33, line: 648, baseType: !1517, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1492, file: !33, line: 666, baseType: !112, size: 32, offset: 320)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1492, file: !33, line: 667, baseType: !1521, size: 64, offset: 384)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !33, line: 579, size: 320, elements: !1523)
!1523 = !{!1524}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1522, file: !33, line: 580, baseType: !769, size: 320)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1492, file: !33, line: 670, baseType: !829, size: 8, offset: 448)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1492, file: !33, line: 681, baseType: !1527, size: 256, offset: 512)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1492, file: !33, line: 678, size: 256, elements: !1528)
!1528 = !{!1529, !1530}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1527, file: !33, line: 679, baseType: !281, size: 192, align: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1527, file: !33, line: 680, baseType: !223, size: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1492, file: !33, line: 689, baseType: !207, size: 128, offset: 768)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1492, file: !33, line: 691, baseType: !1533, size: 64, offset: 896)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !33, line: 691, flags: DIFlagFwdDecl)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1492, file: !33, line: 694, baseType: !1536, size: 64, offset: 960)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1538)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1485, line: 563, size: 1024, elements: !1539)
!1539 = !{!1540, !1544, !1545, !1549, !1553, !1557, !1558, !1562, !1566, !1570, !1571, !1572, !1576, !1580, !1586, !1590}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1538, file: !1485, line: 564, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{null, !1491}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1538, file: !1485, line: 569, baseType: !1541, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1538, file: !1485, line: 571, baseType: !1546, size: 64, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!112, !1491, !223}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1538, file: !1485, line: 572, baseType: !1550, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!112, !1491}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1538, file: !1485, line: 578, baseType: !1554, size: 64, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!112, !1491, !223, !223, !223}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1538, file: !1485, line: 580, baseType: !1479, size: 64, offset: 320)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1538, file: !1485, line: 581, baseType: !1559, size: 64, offset: 384)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!1482, !1483, !5}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1538, file: !1485, line: 582, baseType: !1563, size: 64, offset: 448)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!1482, !1483, !223, !223}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1538, file: !1485, line: 584, baseType: !1567, size: 64, offset: 512)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!223, !1491}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1538, file: !1485, line: 588, baseType: !1479, size: 64, offset: 576)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1538, file: !1485, line: 591, baseType: !1479, size: 64, offset: 640)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1538, file: !1485, line: 597, baseType: !1573, size: 64, offset: 704)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!112, !1491, !223, !190, !112, !112}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1538, file: !1485, line: 603, baseType: !1577, size: 64, offset: 768)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!832, !1491}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1538, file: !1485, line: 613, baseType: !1581, size: 64, offset: 832)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!112, !1491, !1584}
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !33, line: 717, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1538, file: !1485, line: 625, baseType: !1587, size: 64, offset: 896)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!1584, !1491, !223}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1538, file: !1485, line: 633, baseType: !1591, size: 64, offset: 960)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!1371, !1491, !223}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1492, file: !33, line: 697, baseType: !223, size: 64, offset: 1024)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1492, file: !33, line: 699, baseType: !601, size: 64, offset: 1088)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1492, file: !33, line: 700, baseType: !190, size: 64, offset: 1152)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1492, file: !33, line: 711, baseType: !622, size: 64, offset: 1216)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1492, file: !33, line: 717, baseType: !1584, size: 64, offset: 1280)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1492, file: !33, line: 722, baseType: !1600, offset: 1344)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !33, line: 570, elements: !594)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1488, file: !1485, line: 515, baseType: !1197, size: 32, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1488, file: !1485, line: 516, baseType: !223, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1488, file: !1485, line: 517, baseType: !223, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1488, file: !1485, line: 518, baseType: !223, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1484, file: !1485, line: 520, baseType: !32, size: 32, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1484, file: !1485, line: 522, baseType: !1607, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1511, line: 22, baseType: !1609)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1511, line: 22, size: 64, elements: !1610)
!1610 = !{!1611}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1609, file: !1511, line: 22, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1511, line: 15, baseType: !223)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1484, file: !1485, line: 524, baseType: !1614, size: 64, offset: 448)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1506, line: 372, baseType: !1616)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1506, line: 372, size: 64, elements: !1617)
!1617 = !{!1618}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1616, file: !1506, line: 372, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1511, line: 16, baseType: !223)
!1620 = !DIDerivedType(tag: DW_TAG_member, scope: !1484, file: !1485, line: 527, baseType: !1621, size: 64, offset: 512)
!1621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1484, file: !1485, line: 527, size: 64, elements: !1622)
!1622 = !{!1623, !1629}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1621, file: !1485, line: 528, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1511, line: 21, baseType: !1625)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1511, line: 21, size: 64, elements: !1626)
!1626 = !{!1627}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1625, file: !1511, line: 21, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1511, line: 14, baseType: !223)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1621, file: !1485, line: 529, baseType: !1608, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1484, file: !1485, line: 534, baseType: !1371, size: 64, offset: 576)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1484, file: !1485, line: 535, baseType: !1371, size: 64, offset: 640)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1484, file: !1485, line: 541, baseType: !1633, size: 64, offset: 704)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1484, file: !1485, line: 545, baseType: !1635, size: 64, offset: 768)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1484, file: !1485, line: 549, baseType: !1637, size: 64, offset: 832)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1506, line: 520, baseType: !1371)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1472, file: !25, line: 100, baseType: !1639, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!112, !1421, !223, !223, !112}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1422, file: !25, line: 134, baseType: !190, size: 64, offset: 960)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1422, file: !25, line: 135, baseType: !112, size: 32, offset: 1024)
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1422, file: !25, line: 136, baseType: !1645, size: 128, offset: 1088)
!1645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1422, file: !25, line: 136, size: 128, elements: !1646)
!1646 = !{!1647, !1653}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1645, file: !25, line: 137, baseType: !1648, size: 128)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1649, line: 6, size: 128, elements: !1650)
!1649 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1648, file: !1649, line: 7, baseType: !289, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1648, file: !1649, line: 8, baseType: !289, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1645, file: !25, line: 138, baseType: !1654)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1645, file: !25, line: 138, elements: !1655)
!1655 = !{!1656, !1658}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1654, file: !25, line: 138, baseType: !1657)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1654, file: !25, line: 138, elements: !594)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1654, file: !25, line: 138, baseType: !1659)
!1659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1648, elements: !706)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1418, file: !33, line: 147, baseType: !190, size: 64, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1376, file: !33, line: 161, baseType: !609, size: 128, align: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, scope: !1372, file: !33, line: 164, baseType: !1663, size: 32, offset: 384)
!1663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1372, file: !33, line: 164, size: 32, elements: !1664)
!1664 = !{!1665, !1666}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1663, file: !33, line: 169, baseType: !235, size: 32)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1663, file: !33, line: 177, baseType: !5, size: 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1372, file: !33, line: 181, baseType: !235, size: 32, offset: 416)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !12, line: 309, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1365, file: !12, line: 406, baseType: !1671, size: 64, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!112, !601, !1674}
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !33, line: 293, size: 1536, elements: !1676)
!1676 = !{!1677, !1707, !1721}
!1677 = !DIDerivedType(tag: DW_TAG_member, scope: !1675, file: !33, line: 295, baseType: !1678, size: 512)
!1678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1675, file: !33, line: 295, size: 512, elements: !1679)
!1679 = !{!1680, !1706}
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1678, file: !33, line: 296, baseType: !1681, size: 448)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1678, file: !33, line: 296, size: 448, elements: !1682)
!1682 = !{!1683, !1684, !1693, !1694, !1695, !1704, !1705}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1681, file: !33, line: 298, baseType: !223, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !33, line: 299, baseType: !1685, size: 128, offset: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1681, file: !33, line: 299, size: 128, elements: !1686)
!1686 = !{!1687, !1688}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1685, file: !33, line: 300, baseType: !207, size: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, scope: !1685, file: !33, line: 302, baseType: !1689, size: 128)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1685, file: !33, line: 302, size: 128, elements: !1690)
!1690 = !{!1691, !1692}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1689, file: !33, line: 303, baseType: !190, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1689, file: !33, line: 305, baseType: !5, size: 32, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1681, file: !33, line: 310, baseType: !1351, size: 64, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1681, file: !33, line: 311, baseType: !223, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !33, line: 312, baseType: !1696, size: 64, offset: 320)
!1696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1681, file: !33, line: 312, size: 64, elements: !1697)
!1697 = !{!1698, !1699}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1696, file: !33, line: 313, baseType: !190, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1696, file: !33, line: 314, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !33, line: 257, baseType: !1701)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 255, size: 64, elements: !1702)
!1702 = !{!1703}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1701, file: !33, line: 256, baseType: !223, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1681, file: !33, line: 316, baseType: !235, size: 32, offset: 384)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1681, file: !33, line: 317, baseType: !235, size: 32, offset: 416)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1678, file: !33, line: 323, baseType: !1372, size: 512, align: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, scope: !1675, file: !33, line: 325, baseType: !1708, size: 512, offset: 512)
!1708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1675, file: !33, line: 325, size: 512, elements: !1709)
!1709 = !{!1710, !1720}
!1710 = !DIDerivedType(tag: DW_TAG_member, scope: !1708, file: !33, line: 326, baseType: !1711, size: 320)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1708, file: !33, line: 326, size: 320, elements: !1712)
!1712 = !{!1713, !1714, !1715, !1716, !1717, !1718, !1719}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1711, file: !33, line: 327, baseType: !223, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1711, file: !33, line: 328, baseType: !223, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1711, file: !33, line: 329, baseType: !223, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1711, file: !33, line: 331, baseType: !235, size: 32, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1711, file: !33, line: 332, baseType: !235, size: 32, offset: 224)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1711, file: !33, line: 333, baseType: !235, size: 32, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1711, file: !33, line: 335, baseType: !5, size: 32, offset: 288)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1708, file: !33, line: 339, baseType: !1372, size: 512, align: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1675, file: !33, line: 341, baseType: !1722, size: 512, offset: 1024)
!1722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1675, file: !33, line: 341, size: 512, elements: !1723)
!1723 = !{!1724, !1733, !1739}
!1724 = !DIDerivedType(tag: DW_TAG_member, scope: !1722, file: !33, line: 342, baseType: !1725, size: 384)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1722, file: !33, line: 342, size: 384, elements: !1726)
!1726 = !{!1727, !1728, !1729, !1730, !1731, !1732}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1725, file: !33, line: 343, baseType: !223, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1725, file: !33, line: 344, baseType: !223, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1725, file: !33, line: 346, baseType: !190, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1725, file: !33, line: 347, baseType: !190, size: 64, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1725, file: !33, line: 348, baseType: !190, size: 64, offset: 256)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1725, file: !33, line: 349, baseType: !190, size: 64, offset: 320)
!1733 = !DIDerivedType(tag: DW_TAG_member, scope: !1722, file: !33, line: 352, baseType: !1734, size: 256)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1722, file: !33, line: 352, size: 256, elements: !1735)
!1735 = !{!1736, !1737, !1738}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1734, file: !33, line: 353, baseType: !223, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1734, file: !33, line: 354, baseType: !223, size: 64, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1734, file: !33, line: 356, baseType: !207, size: 128, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1722, file: !33, line: 359, baseType: !1372, size: 512, align: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1365, file: !12, line: 409, baseType: !1741, size: 64, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!112, !1351, !1668}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1365, file: !12, line: 412, baseType: !1745, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!829, !1351, !1674}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1365, file: !12, line: 414, baseType: !1749, size: 64, offset: 256)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{null, !1752}
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !12, line: 310, flags: DIFlagFwdDecl)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1365, file: !12, line: 416, baseType: !1755, size: 64, offset: 320)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!112, !601, !1351, !641, !5, !1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1365, file: !12, line: 419, baseType: !1761, size: 64, offset: 384)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!112, !601, !1351, !641, !5, !5, !1371, !190}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1365, file: !12, line: 424, baseType: !1765, size: 64, offset: 448)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!1768, !1351, !1768}
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !208, line: 131, baseType: !289)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1365, file: !12, line: 425, baseType: !1770, size: 64, offset: 512)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{null, !1674, !1145, !1145}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1365, file: !12, line: 426, baseType: !1774, size: 64, offset: 576)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!829, !1674, !1197}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1365, file: !12, line: 427, baseType: !1778, size: 64, offset: 640)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{null, !1674}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1365, file: !12, line: 428, baseType: !1782, size: 64, offset: 704)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!1142, !1785, !1807}
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !12, line: 373, size: 384, elements: !1787)
!1787 = !{!1788, !1789, !1790, !1794, !1795, !1796, !1797}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1786, file: !12, line: 374, baseType: !601, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1786, file: !12, line: 375, baseType: !641, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1786, file: !12, line: 376, baseType: !1791, size: 64, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{null, !1785, !1103}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1786, file: !12, line: 377, baseType: !190, size: 64, offset: 192)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1786, file: !12, line: 378, baseType: !112, size: 32, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1786, file: !12, line: 379, baseType: !258, size: 16, offset: 288)
!1797 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !12, line: 380, baseType: !1798, size: 64, offset: 320)
!1798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1786, file: !12, line: 380, size: 64, elements: !1799)
!1799 = !{!1800, !1803}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1798, file: !12, line: 386, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !12, line: 386, flags: DIFlagFwdDecl)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1798, file: !12, line: 395, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!1142, !190}
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1809, line: 41, size: 320, elements: !1810)
!1809 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1810 = !{!1811, !1812, !1813, !1814, !1815, !1816, !1821, !1859}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1808, file: !1809, line: 42, baseType: !399, size: 8)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1808, file: !1809, line: 43, baseType: !829, size: 8, offset: 8)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1808, file: !1809, line: 44, baseType: !829, size: 8, offset: 16)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1808, file: !1809, line: 45, baseType: !829, size: 8, offset: 24)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1808, file: !1809, line: 46, baseType: !829, size: 8, offset: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1809, line: 47, baseType: !1817, size: 64, offset: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !1809, line: 47, size: 64, elements: !1818)
!1818 = !{!1819, !1820}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1817, file: !1809, line: 48, baseType: !1145, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1817, file: !1809, line: 49, baseType: !112, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1809, line: 61, baseType: !1822, size: 128, offset: 128)
!1822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !1809, line: 61, size: 128, elements: !1823)
!1823 = !{!1824, !1830}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1822, file: !1809, line: 67, baseType: !1825, size: 128)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1826, line: 17, size: 128, elements: !1827)
!1826 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1827 = !{!1828, !1829}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1825, file: !1826, line: 19, baseType: !190, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1825, file: !1826, line: 20, baseType: !1146, size: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !1809, line: 68, baseType: !1831, size: 128)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1822, file: !1809, line: 68, size: 128, elements: !1832)
!1832 = !{!1833, !1858}
!1833 = !DIDerivedType(tag: DW_TAG_member, scope: !1831, file: !1809, line: 69, baseType: !1834, size: 64)
!1834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1831, file: !1809, line: 69, size: 64, elements: !1835)
!1835 = !{!1836, !1839, !1846, !1855, !1857}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1834, file: !1809, line: 71, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1825)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1834, file: !1809, line: 72, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1842)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1809, line: 17, size: 128, elements: !1843)
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1842, file: !1809, line: 18, baseType: !190, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1842, file: !1809, line: 19, baseType: !1145, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1834, file: !1809, line: 73, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1849)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1850, line: 31, size: 128, elements: !1851)
!1850 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1851 = !{!1852, !1853, !1854}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1849, file: !1850, line: 32, baseType: !1371, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1849, file: !1850, line: 33, baseType: !5, size: 32, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1849, file: !1850, line: 34, baseType: !5, size: 32, offset: 96)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1834, file: !1809, line: 74, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1834, file: !1809, line: 75, baseType: !190, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1831, file: !1809, line: 77, baseType: !1145, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1809, line: 80, baseType: !1860, size: 64, offset: 256)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !1809, line: 80, size: 64, elements: !1861)
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1860, file: !1809, line: 81, baseType: !223, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1860, file: !1809, line: 82, baseType: !641, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1365, file: !12, line: 433, baseType: !1865, size: 64, offset: 768)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!112, !1351, !1674, !1674, !72}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1365, file: !12, line: 435, baseType: !1869, size: 64, offset: 832)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!112, !1674}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1365, file: !12, line: 436, baseType: !1873, size: 64, offset: 896)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!829, !1674, !1145, !1145}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1365, file: !12, line: 438, baseType: !1877, size: 64, offset: 960)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{null, !1674, !1880, !1880}
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1365, file: !12, line: 439, baseType: !1882, size: 64, offset: 1024)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!112, !1351, !1371}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1365, file: !12, line: 442, baseType: !1886, size: 64, offset: 1088)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!112, !1889, !601, !1891}
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !12, line: 66, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1365, file: !12, line: 444, baseType: !1893, size: 64, offset: 1152)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{null, !601}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1365, file: !12, line: 445, baseType: !1897, size: 64, offset: 1216)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!112, !1785, !1807}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1352, file: !12, line: 486, baseType: !223, size: 64, offset: 896)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1352, file: !12, line: 487, baseType: !769, size: 320, offset: 960)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1352, file: !12, line: 488, baseType: !1903, size: 32, offset: 1280)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1904, line: 8, baseType: !186)
!1904 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1352, file: !12, line: 489, baseType: !583, size: 32, offset: 1312)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1352, file: !12, line: 490, baseType: !207, size: 128, offset: 1344)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1352, file: !12, line: 491, baseType: !190, size: 64, offset: 1472)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1342, file: !1311, line: 180, baseType: !1909, size: 64, offset: 320)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!1142, !601, !1253, !1341, !842, !641, !1145}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1342, file: !1311, line: 182, baseType: !1909, size: 64, offset: 384)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1342, file: !1311, line: 184, baseType: !1914, size: 64, offset: 448)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!112, !601, !1253, !1341, !1491}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1330, file: !1311, line: 90, baseType: !1918, size: 64, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1330, file: !1311, line: 91, baseType: !1920, size: 64, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1301, file: !1248, line: 120, baseType: !1922, size: 64, offset: 192)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!1925, !1271}
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1927)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !80, line: 39, size: 384, elements: !1928)
!1928 = !{!1929, !1930, !1934, !1938, !1946, !1950}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1927, file: !80, line: 40, baseType: !79, size: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1927, file: !80, line: 41, baseType: !1931, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!829}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1927, file: !80, line: 42, baseType: !1935, size: 64, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!190}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1927, file: !80, line: 43, baseType: !1939, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!1942, !1944}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !80, line: 19, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1927, file: !80, line: 44, baseType: !1947, size: 64, offset: 256)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!1942}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1927, file: !80, line: 45, baseType: !1020, size: 64, offset: 320)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1301, file: !1248, line: 121, baseType: !1952, size: 64, offset: 256)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!1942, !1271}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1301, file: !1248, line: 122, baseType: !1956, size: 64, offset: 320)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{null, !1271, !1959, !1960}
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1247, file: !1248, line: 70, baseType: !1962, size: 64, offset: 384)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1964, line: 190, size: 1152, elements: !1965)
!1964 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1965 = !{!1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !2088, !2089, !2090, !2091, !2092, !2095}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1963, file: !1964, line: 191, baseType: !235, size: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1963, file: !1964, line: 192, baseType: !235, size: 32, offset: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1963, file: !1964, line: 202, baseType: !1962, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1963, file: !1964, line: 203, baseType: !832, size: 64, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1963, file: !1964, line: 205, baseType: !281, size: 192, align: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1963, file: !1964, line: 207, baseType: !1942, size: 64, offset: 384)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1963, file: !1964, line: 208, baseType: !5, size: 32, offset: 448)
!1973 = !DIDerivedType(tag: DW_TAG_member, scope: !1963, file: !1964, line: 209, baseType: !1974, size: 256, offset: 512)
!1974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1963, file: !1964, line: 209, size: 256, elements: !1975)
!1975 = !{!1976, !1985, !1989}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1974, file: !1964, line: 210, baseType: !1977, size: 256)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1964, line: 153, size: 256, elements: !1978)
!1978 = !{!1979, !1980, !1981, !1984}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1977, file: !1964, line: 154, baseType: !223, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1977, file: !1964, line: 156, baseType: !451, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1977, file: !1964, line: 162, baseType: !1982, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1964, line: 162, flags: DIFlagFwdDecl)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1977, file: !1964, line: 167, baseType: !223, size: 64, offset: 192)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1974, file: !1964, line: 211, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1964, line: 170, size: 64, elements: !1987)
!1987 = !{!1988}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1986, file: !1964, line: 171, baseType: !1962, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1974, file: !1964, line: 212, baseType: !1990, size: 256)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1964, line: 174, size: 256, elements: !1991)
!1991 = !{!1992, !2083, !2086, !2087}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1990, file: !1964, line: 175, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1995)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1964, line: 271, size: 768, elements: !1996)
!1996 = !{!1997, !2056, !2060, !2061, !2062, !2063, !2064, !2068, !2069, !2070, !2071, !2079}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1995, file: !1964, line: 276, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!112, !2001}
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1964, line: 251, size: 1216, elements: !2003)
!2003 = !{!2004, !2005, !2006, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2002, file: !1964, line: 253, baseType: !1962, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2002, file: !1964, line: 254, baseType: !601, size: 64, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2002, file: !1964, line: 255, baseType: !2007, size: 64, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2009, line: 17, size: 960, elements: !2010)
!2009 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2010 = !{!2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2041, !2042, !2045}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2008, file: !2009, line: 18, baseType: !842, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2008, file: !2009, line: 19, baseType: !1145, size: 64, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2008, file: !2009, line: 20, baseType: !1145, size: 64, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2008, file: !2009, line: 21, baseType: !1145, size: 64, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2008, file: !2009, line: 22, baseType: !1145, size: 64, offset: 256)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2008, file: !2009, line: 23, baseType: !641, size: 64, offset: 320)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2008, file: !2009, line: 24, baseType: !641, size: 64, offset: 384)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2008, file: !2009, line: 25, baseType: !629, size: 256, offset: 448)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2008, file: !2009, line: 26, baseType: !2020, size: 64, offset: 704)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2022)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2009, line: 32, size: 256, elements: !2023)
!2023 = !{!2024, !2029, !2033, !2037}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2022, file: !2009, line: 33, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!190, !2007, !2028}
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2022, file: !2009, line: 34, baseType: !2030, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{null, !2007, !190}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2022, file: !2009, line: 35, baseType: !2034, size: 64, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!190, !2007, !190, !2028}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2022, file: !2009, line: 36, baseType: !2038, size: 64, offset: 192)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!112, !2007, !190}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2008, file: !2009, line: 27, baseType: !112, size: 32, offset: 768)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2008, file: !2009, line: 28, baseType: !2043, size: 64, offset: 832)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2008, file: !2009, line: 29, baseType: !190, size: 64, offset: 896)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2002, file: !1964, line: 256, baseType: !190, size: 64, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2002, file: !1964, line: 259, baseType: !629, size: 256, offset: 256)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2002, file: !1964, line: 260, baseType: !629, size: 256, offset: 512)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2002, file: !1964, line: 261, baseType: !112, size: 32, offset: 768)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2002, file: !1964, line: 262, baseType: !207, size: 128, offset: 832)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2002, file: !1964, line: 263, baseType: !842, size: 64, offset: 960)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2002, file: !1964, line: 265, baseType: !1145, size: 64, offset: 1024)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2002, file: !1964, line: 266, baseType: !829, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2002, file: !1964, line: 267, baseType: !829, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2002, file: !1964, line: 268, baseType: !1536, size: 64, offset: 1152)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1995, file: !1964, line: 277, baseType: !2057, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !2001}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1995, file: !1964, line: 290, baseType: !2038, size: 64, offset: 128)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1995, file: !1964, line: 292, baseType: !2025, size: 64, offset: 192)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1995, file: !1964, line: 293, baseType: !2034, size: 64, offset: 256)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1995, file: !1964, line: 294, baseType: !2030, size: 64, offset: 320)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1995, file: !1964, line: 296, baseType: !2065, size: 64, offset: 384)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!1142, !2001, !842, !1145, !641}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1995, file: !1964, line: 306, baseType: !1145, size: 64, offset: 448)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1995, file: !1964, line: 313, baseType: !829, size: 8, offset: 512)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1995, file: !1964, line: 314, baseType: !2065, size: 64, offset: 576)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1995, file: !1964, line: 317, baseType: !2072, size: 64, offset: 640)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!2075, !2001, !2077}
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2076, line: 59, baseType: !5)
!2076 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !12, line: 61, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1995, file: !1964, line: 320, baseType: !2080, size: 64, offset: 704)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!112, !2001, !1491}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1990, file: !1964, line: 176, baseType: !2084, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1964, line: 35, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1990, file: !1964, line: 177, baseType: !641, size: 64, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1990, file: !1964, line: 178, baseType: !1962, size: 64, offset: 192)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1963, file: !1964, line: 215, baseType: !190, size: 64, offset: 768)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1963, file: !1964, line: 221, baseType: !289, size: 64, offset: 832)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1963, file: !1964, line: 223, baseType: !260, size: 16, offset: 896)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1963, file: !1964, line: 224, baseType: !992, size: 16, offset: 912)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1963, file: !1964, line: 225, baseType: !2093, size: 64, offset: 960)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1964, line: 36, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1963, file: !1964, line: 227, baseType: !609, size: 128, align: 64, offset: 1024)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1247, file: !1248, line: 71, baseType: !2097, size: 32, offset: 448)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2098, line: 19, size: 32, elements: !2099)
!2098 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2099 = !{!2100}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2097, file: !2098, line: 20, baseType: !230, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1247, file: !1248, line: 73, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1247, file: !1248, line: 74, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1247, file: !1248, line: 75, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1247, file: !1248, line: 76, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1247, file: !1248, line: 77, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1244, file: !4, line: 47, baseType: !1234, size: 64, offset: 512)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1244, file: !4, line: 48, baseType: !1253, size: 64, offset: 576)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1244, file: !4, line: 49, baseType: !2109, size: 64, offset: 640)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !4, line: 49, flags: DIFlagFwdDecl)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1244, file: !4, line: 50, baseType: !2112, size: 64, offset: 704)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1235, file: !4, line: 418, baseType: !2114, size: 64, offset: 1408)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !4, line: 53, size: 448, elements: !2116)
!2116 = !{!2117, !2118, !2123, !2127, !2131, !2135}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2115, file: !4, line: 54, baseType: !1318, size: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2115, file: !4, line: 55, baseType: !2119, size: 64, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!1142, !2114, !2122, !842}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2115, file: !4, line: 57, baseType: !2124, size: 64, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!1142, !2114, !2122, !832, !1145}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2115, file: !4, line: 59, baseType: !2128, size: 64, offset: 256)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{null, !1234, !832}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2115, file: !4, line: 60, baseType: !2132, size: 64, offset: 320)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!112, !1234}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2115, file: !4, line: 61, baseType: !2136, size: 64, offset: 384)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{null, !1234}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1235, file: !4, line: 419, baseType: !832, size: 64, offset: 1472)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1235, file: !4, line: 420, baseType: !832, size: 64, offset: 1536)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1235, file: !4, line: 421, baseType: !1253, size: 64, offset: 1600)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1235, file: !4, line: 424, baseType: !2143, size: 64, offset: 1664)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2145)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !4, line: 424, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1235, file: !4, line: 425, baseType: !2147, size: 64, offset: 1728)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !761)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1235, file: !4, line: 426, baseType: !5, size: 32, offset: 1792)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1235, file: !4, line: 435, baseType: !629, size: 256, offset: 1856)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1235, file: !4, line: 437, baseType: !2152, size: 64, offset: 2112)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2154, line: 69, size: 320, elements: !2155)
!2154 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2155 = !{!2156, !2157, !2158, !2175, !2177, !2181, !2182}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2153, file: !2154, line: 70, baseType: !832, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2153, file: !2154, line: 71, baseType: !1234, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2153, file: !2154, line: 72, baseType: !2159, size: 64, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2161)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2154, line: 47, size: 256, elements: !2162)
!2162 = !{!2163, !2164, !2170, !2174}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2161, file: !2154, line: 49, baseType: !5, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2161, file: !2154, line: 51, baseType: !2165, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!112, !832, !2168}
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2153)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2161, file: !2154, line: 53, baseType: !2171, size: 64, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!112, !842, !2168}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2161, file: !2154, line: 55, baseType: !1020, size: 64, offset: 192)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2153, file: !2154, line: 73, baseType: !2176, size: 16, offset: 192)
!2176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2153, file: !2154, line: 74, baseType: !2178, size: 8, offset: 208)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !187, line: 16, baseType: !2179)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !189, line: 20, baseType: !2180)
!2180 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2153, file: !2154, line: 75, baseType: !399, size: 8, offset: 216)
!2182 = !DIDerivedType(tag: DW_TAG_member, scope: !2153, file: !2154, line: 76, baseType: !2183, size: 64, offset: 256)
!2183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2153, file: !2154, line: 76, size: 64, elements: !2184)
!2184 = !{!2185, !2186, !2193}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2183, file: !2154, line: 77, baseType: !190, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2183, file: !2154, line: 78, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2189)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2154, line: 86, size: 128, elements: !2190)
!2190 = !{!2191, !2192}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2189, file: !2154, line: 87, baseType: !5, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2189, file: !2154, line: 88, baseType: !842, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2183, file: !2154, line: 79, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2196)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2154, line: 92, size: 256, elements: !2197)
!2197 = !{!2198, !2199, !2200, !2202, !2203}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2196, file: !2154, line: 94, baseType: !5, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2196, file: !2154, line: 95, baseType: !5, size: 32, offset: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2196, file: !2154, line: 96, baseType: !2201, size: 64, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2196, file: !2154, line: 97, baseType: !2159, size: 64, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2196, file: !2154, line: 98, baseType: !190, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1235, file: !4, line: 438, baseType: !5, size: 32, offset: 2176)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1235, file: !4, line: 441, baseType: !5, size: 32, offset: 2208)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1235, file: !4, line: 442, baseType: !2143, size: 64, offset: 2240)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1235, file: !4, line: 443, baseType: !2147, size: 64, offset: 2304)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1235, file: !4, line: 444, baseType: !829, size: 8, offset: 2368)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1235, file: !4, line: 451, baseType: !829, size: 8, offset: 2376)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1235, file: !4, line: 454, baseType: !5, size: 32, offset: 2400)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1235, file: !4, line: 455, baseType: !2212, size: 64, offset: 2432)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2214, line: 23, size: 96, elements: !2215)
!2214 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2215 = !{!2216, !2217, !2218}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2213, file: !2214, line: 24, baseType: !112, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2213, file: !2214, line: 24, baseType: !112, size: 32, offset: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2213, file: !2214, line: 24, baseType: !112, size: 32, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1235, file: !4, line: 458, baseType: !2220, size: 64, offset: 2496)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!112}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1235, file: !4, line: 460, baseType: !2224, size: 4032, align: 512, offset: 2560)
!2224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2225, size: 4032, elements: !2241)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !4, line: 362, size: 576, elements: !2226)
!2226 = !{!2227, !2228, !2229}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2225, file: !4, line: 363, baseType: !190, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2225, file: !4, line: 364, baseType: !5, size: 32, offset: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2225, file: !4, line: 367, baseType: !2230, size: 448, offset: 128)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !4, line: 319, size: 448, elements: !2231)
!2231 = !{!2232, !2233}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2230, file: !4, line: 320, baseType: !1234, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2230, file: !4, line: 321, baseType: !2234, size: 384, offset: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2235, line: 40, size: 384, elements: !2236)
!2235 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2236 = !{!2237}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2234, file: !2235, line: 41, baseType: !2238, size: 384, align: 64)
!2238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 384, align: 64, elements: !2239)
!2239 = !{!2240}
!2240 = !DISubrange(count: 2)
!2241 = !{!2242}
!2242 = !DISubrange(count: 7)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1235, file: !4, line: 463, baseType: !2244, size: 192, offset: 6592)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2245, line: 8, size: 192, elements: !2246)
!2245 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2246 = !{!2247, !2248, !2249}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2244, file: !2245, line: 10, baseType: !5, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2244, file: !2245, line: 11, baseType: !183, size: 64, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2244, file: !2245, line: 12, baseType: !2250, size: 64, offset: 128)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2252, line: 59, size: 48, elements: !2253)
!2252 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2253 = !{!2254, !2257, !2258, !2259, !2260, !2261}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2251, file: !2252, line: 60, baseType: !2255, size: 16)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !187, line: 18, baseType: !2256)
!2256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !189, line: 23, baseType: !797)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2251, file: !2252, line: 61, baseType: !2255, size: 16, offset: 16)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2251, file: !2252, line: 63, baseType: !5, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2251, file: !2252, line: 64, baseType: !5, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2251, file: !2252, line: 65, baseType: !5, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2251, file: !2252, line: 66, baseType: !5, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1235, file: !4, line: 465, baseType: !223, size: 64, offset: 6784)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1235, file: !4, line: 469, baseType: !5, size: 32, offset: 6848)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1235, file: !4, line: 470, baseType: !207, size: 128, offset: 6912)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1235, file: !4, line: 471, baseType: !2266, size: 64, offset: 7040)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2268, line: 33, size: 96, elements: !2269)
!2268 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2269 = !{!2270, !2271, !2272, !2273}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2267, file: !2268, line: 37, baseType: !112, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2267, file: !2268, line: 43, baseType: !112, size: 32, offset: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2267, file: !2268, line: 45, baseType: !260, size: 16, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2267, file: !2268, line: 47, baseType: !260, size: 16, offset: 80)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1235, file: !4, line: 476, baseType: !2275, size: 64, offset: 7104)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !4, line: 378, size: 256, elements: !2277)
!2277 = !{!2278, !2294, !2295, !2296}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2276, file: !4, line: 379, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2281, line: 204, baseType: !2282)
!2281 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2281, line: 197, size: 192, elements: !2283)
!2283 = !{!2284, !2286, !2287, !2288, !2290, !2292}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2282, file: !2281, line: 198, baseType: !2285, size: 32)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2281, line: 21, baseType: !188)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2282, file: !2281, line: 199, baseType: !401, size: 8, offset: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2282, file: !2281, line: 200, baseType: !401, size: 8, offset: 40)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2282, file: !2281, line: 201, baseType: !2289, size: 16, offset: 48)
!2289 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2281, line: 17, baseType: !259)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2282, file: !2281, line: 202, baseType: !2291, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2281, line: 16, baseType: !290)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2282, file: !2281, line: 203, baseType: !2293, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2281, line: 22, baseType: !290)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2276, file: !4, line: 380, baseType: !5, size: 32, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2276, file: !4, line: 381, baseType: !842, size: 64, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2276, file: !4, line: 382, baseType: !842, size: 64, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1235, file: !4, line: 477, baseType: !2276, size: 256, offset: 7168)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1235, file: !4, line: 480, baseType: !2299, size: 64, offset: 7424)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !4, line: 480, flags: DIFlagFwdDecl)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1235, file: !4, line: 483, baseType: !2302, size: 64, offset: 7488)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !4, line: 483, flags: DIFlagFwdDecl)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1235, file: !4, line: 488, baseType: !842, size: 64, offset: 7552)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1235, file: !4, line: 492, baseType: !190, size: 64, offset: 7616)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1235, file: !4, line: 493, baseType: !5, size: 32, offset: 7680)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1235, file: !4, line: 495, baseType: !190, size: 64, offset: 7744)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1235, file: !4, line: 496, baseType: !5, size: 32, offset: 7808)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1235, file: !4, line: 499, baseType: !5, size: 32, offset: 7840)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1235, file: !4, line: 500, baseType: !2311, size: 64, offset: 7872)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2313, line: 45, baseType: !2314)
!2313 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1235, file: !4, line: 503, baseType: !5, size: 32, offset: 7936)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1235, file: !4, line: 504, baseType: !2317, size: 64, offset: 8000)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2320, line: 96, size: 192, elements: !2321)
!2320 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2321 = !{!2322, !2323, !2388, !2391}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2319, file: !2320, line: 97, baseType: !5, size: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2319, file: !2320, line: 98, baseType: !2324, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2320, line: 24, size: 3072, elements: !2326)
!2326 = !{!2327, !2329, !2330, !2331, !2332, !2346, !2347, !2348, !2349, !2361, !2373, !2374, !2385, !2386, !2387}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2325, file: !2320, line: 26, baseType: !2328, size: 128)
!2328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 128, elements: !2239)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2325, file: !2320, line: 27, baseType: !2328, size: 128, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2325, file: !2320, line: 28, baseType: !112, size: 32, offset: 256)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2325, file: !2320, line: 31, baseType: !583, size: 32, align: 512, offset: 512)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2325, file: !2320, line: 32, baseType: !2333, size: 960, offset: 576)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2334, line: 206, size: 960, elements: !2335)
!2334 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2335 = !{!2336, !2337, !2340, !2342, !2343, !2345}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2333, file: !2334, line: 207, baseType: !612, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2333, file: !2334, line: 208, baseType: !2338, size: 256, offset: 64)
!2338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2339, size: 256, elements: !688)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2333, file: !2334, line: 209, baseType: !2341, size: 256, offset: 320)
!2341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 256, elements: !688)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2333, file: !2334, line: 213, baseType: !1103, size: 64, offset: 576)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2333, file: !2334, line: 215, baseType: !2344, size: 256, offset: 640)
!2344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1103, size: 256, elements: !688)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2333, file: !2334, line: 216, baseType: !399, size: 8, offset: 896)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2325, file: !2320, line: 33, baseType: !223, size: 64, offset: 1536)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2325, file: !2320, line: 34, baseType: !223, size: 64, offset: 1600)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2325, file: !2320, line: 35, baseType: !829, size: 8, offset: 1664)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2325, file: !2320, line: 36, baseType: !2350, size: 320, offset: 1728)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2351, line: 11, size: 320, elements: !2352)
!2351 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2352 = !{!2353, !2354, !2355, !2360}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2350, file: !2351, line: 16, baseType: !683, size: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2350, file: !2351, line: 17, baseType: !223, size: 64, offset: 128)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2350, file: !2351, line: 18, baseType: !2356, size: 64, offset: 192)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{null, !2359}
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2350, file: !2351, line: 19, baseType: !186, size: 32, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2325, file: !2320, line: 37, baseType: !2362, size: 256, offset: 2048)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2363, line: 98, size: 256, elements: !2364)
!2363 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2364 = !{!2365, !2366, !2367}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2362, file: !2363, line: 99, baseType: !622, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2362, file: !2363, line: 100, baseType: !207, size: 128, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2362, file: !2363, line: 101, baseType: !2368, size: 64, offset: 192)
!2368 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2363, line: 21, baseType: !2369)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{null, !2372}
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2325, file: !2320, line: 38, baseType: !609, size: 128, align: 64, offset: 2304)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2325, file: !2320, line: 39, baseType: !2375, size: 64, offset: 2432)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2320, line: 49, size: 768, elements: !2377)
!2377 = !{!2378, !2379, !2380, !2381, !2382, !2383, !2384}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2376, file: !2320, line: 50, baseType: !583, size: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2376, file: !2320, line: 51, baseType: !2341, size: 256, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2376, file: !2320, line: 53, baseType: !2341, size: 256, offset: 320)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2376, file: !2320, line: 54, baseType: !223, size: 64, offset: 576)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2376, file: !2320, line: 55, baseType: !2375, size: 64, offset: 640)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2376, file: !2320, line: 56, baseType: !112, size: 32, offset: 704)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2376, file: !2320, line: 57, baseType: !112, size: 32, offset: 736)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2325, file: !2320, line: 40, baseType: !223, size: 64, offset: 2496)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2325, file: !2320, line: 42, baseType: !112, size: 32, offset: 2560)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2325, file: !2320, line: 43, baseType: !2318, size: 64, offset: 2624)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2319, file: !2320, line: 99, baseType: !2389, offset: 128)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2390, line: 211, elements: !594)
!2390 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2319, file: !2320, line: 100, baseType: !2392, size: 64, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2320, line: 63, size: 3008, elements: !2394)
!2394 = !{!2395, !2396, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2426}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2393, file: !2320, line: 64, baseType: !2375, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2393, file: !2320, line: 65, baseType: !2397, size: 192, offset: 64)
!2397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2375, size: 192, elements: !667)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2393, file: !2320, line: 67, baseType: !112, size: 32, offset: 256)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2393, file: !2320, line: 68, baseType: !629, size: 256, offset: 320)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2393, file: !2320, line: 69, baseType: !583, size: 32, offset: 576)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2393, file: !2320, line: 70, baseType: !629, size: 256, offset: 640)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2393, file: !2320, line: 71, baseType: !223, size: 64, offset: 896)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2393, file: !2320, line: 72, baseType: !223, size: 64, offset: 960)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2393, file: !2320, line: 73, baseType: !223, size: 64, offset: 1024)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2393, file: !2320, line: 74, baseType: !223, size: 64, offset: 1088)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2393, file: !2320, line: 75, baseType: !223, size: 64, offset: 1152)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2393, file: !2320, line: 76, baseType: !223, size: 64, offset: 1216)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2393, file: !2320, line: 77, baseType: !223, size: 64, offset: 1280)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2393, file: !2320, line: 78, baseType: !223, size: 64, offset: 1344)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2393, file: !2320, line: 79, baseType: !829, size: 8, offset: 1408)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2393, file: !2320, line: 80, baseType: !223, size: 64, offset: 1472)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2393, file: !2320, line: 81, baseType: !629, size: 256, offset: 1536)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2393, file: !2320, line: 82, baseType: !1456, size: 256, offset: 1792)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2393, file: !2320, line: 84, baseType: !235, size: 32, offset: 2048)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2393, file: !2320, line: 87, baseType: !223, size: 64, offset: 2112)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2393, file: !2320, line: 88, baseType: !223, size: 64, offset: 2176)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2393, file: !2320, line: 89, baseType: !2418, size: 704, offset: 2240)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2363, line: 111, size: 704, elements: !2419)
!2419 = !{!2420, !2421, !2422, !2425}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2418, file: !2363, line: 112, baseType: !2362, size: 256)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2418, file: !2363, line: 113, baseType: !2350, size: 320, offset: 256)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2418, file: !2363, line: 116, baseType: !2423, size: 64, offset: 576)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2363, line: 18, flags: DIFlagFwdDecl)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2418, file: !2363, line: 117, baseType: !112, size: 32, offset: 640)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2393, file: !2320, line: 90, baseType: !2318, size: 64, offset: 2944)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1235, file: !4, line: 515, baseType: !2428, size: 64, offset: 8064)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2430, line: 117, size: 128, elements: !2431)
!2430 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2431 = !{!2432, !2433, !2434}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2429, file: !2430, line: 118, baseType: !761, size: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2429, file: !2430, line: 119, baseType: !761, size: 32, offset: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2429, file: !2430, line: 120, baseType: !1103, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1235, file: !4, line: 516, baseType: !5, size: 32, offset: 8128)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1235, file: !4, line: 519, baseType: !5, size: 32, offset: 8160)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1235, file: !4, line: 520, baseType: !2438, size: 64, offset: 8192)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1235, file: !4, line: 523, baseType: !2440, size: 64, offset: 8256)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !4, line: 523, flags: DIFlagFwdDecl)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1235, file: !4, line: 524, baseType: !5, size: 32, offset: 8320)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1235, file: !4, line: 525, baseType: !2445, size: 64, offset: 8384)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4, line: 525, flags: DIFlagFwdDecl)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1235, file: !4, line: 526, baseType: !5, size: 32, offset: 8448)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1235, file: !4, line: 533, baseType: !190, size: 64, offset: 8512)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1235, file: !4, line: 534, baseType: !5, size: 32, offset: 8576)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1235, file: !4, line: 535, baseType: !2452, size: 64, offset: 8640)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1235, file: !4, line: 536, baseType: !5, size: 32, offset: 8704)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1235, file: !4, line: 539, baseType: !112, size: 32, offset: 8736)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1235, file: !4, line: 540, baseType: !2456, size: 64, offset: 8768)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2458, line: 32, size: 64, elements: !2459)
!2458 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2459 = !{!2460, !2461}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2457, file: !2458, line: 33, baseType: !761, size: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2457, file: !2458, line: 34, baseType: !761, size: 32, offset: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1235, file: !4, line: 563, baseType: !207, size: 128, offset: 8832)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1235, file: !4, line: 565, baseType: !207, size: 128, offset: 8960)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1235, file: !4, line: 568, baseType: !2465, size: 64, offset: 9088)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{null}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1235, file: !4, line: 570, baseType: !235, size: 32, offset: 9152)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1211, file: !12, line: 2382, baseType: !1210, size: 64, offset: 448)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1211, file: !12, line: 2383, baseType: !679, size: 64, offset: 512)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1211, file: !12, line: 2385, baseType: !2472, offset: 576)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2390, line: 206, elements: !594)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1211, file: !12, line: 2386, baseType: !2472, offset: 576)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1211, file: !12, line: 2387, baseType: !2472, offset: 576)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1211, file: !12, line: 2388, baseType: !2476, offset: 576)
!2476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2472, elements: !667)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1211, file: !12, line: 2390, baseType: !2472, offset: 576)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1211, file: !12, line: 2391, baseType: !2472, offset: 576)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1211, file: !12, line: 2392, baseType: !2472, offset: 576)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1211, file: !12, line: 2393, baseType: !2472, offset: 576)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1202, file: !12, line: 1197, baseType: !2482, size: 64, offset: 384)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2484)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !12, line: 2057, size: 1664, elements: !2485)
!2485 = !{!2486, !2490, !2494, !2495, !2499, !2503, !2507, !2508, !2509, !2513, !2517, !2521, !2522, !2523, !2529, !2533, !2534, !2538, !2539, !2540, !2541, !2545, !2549, !2596, !2611, !2612}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2484, file: !12, line: 2058, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!988, !1201}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2484, file: !12, line: 2059, baseType: !2491, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{null, !988}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2484, file: !12, line: 2060, baseType: !2491, size: 64, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2484, file: !12, line: 2062, baseType: !2496, size: 64, offset: 192)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{null, !988, !112}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2484, file: !12, line: 2063, baseType: !2500, size: 64, offset: 256)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!112, !988, !1668}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2484, file: !12, line: 2064, baseType: !2504, size: 64, offset: 320)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!112, !988}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2484, file: !12, line: 2065, baseType: !2491, size: 64, offset: 384)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2484, file: !12, line: 2066, baseType: !1230, size: 64, offset: 448)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2484, file: !12, line: 2067, baseType: !2510, size: 64, offset: 512)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!112, !1201, !112}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2484, file: !12, line: 2068, baseType: !2514, size: 64, offset: 576)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!112, !1201, !11}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2484, file: !12, line: 2069, baseType: !2518, size: 64, offset: 640)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!112, !1201}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2484, file: !12, line: 2070, baseType: !2514, size: 64, offset: 704)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2484, file: !12, line: 2071, baseType: !2518, size: 64, offset: 768)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2484, file: !12, line: 2072, baseType: !2524, size: 64, offset: 832)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!112, !953, !2527}
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !12, line: 62, flags: DIFlagFwdDecl)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2484, file: !12, line: 2073, baseType: !2530, size: 64, offset: 896)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!112, !1201, !183, !842}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2484, file: !12, line: 2074, baseType: !1230, size: 64, offset: 960)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2484, file: !12, line: 2076, baseType: !2535, size: 64, offset: 1024)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!112, !2007, !953}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2484, file: !12, line: 2077, baseType: !2535, size: 64, offset: 1088)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2484, file: !12, line: 2078, baseType: !2535, size: 64, offset: 1152)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2484, file: !12, line: 2079, baseType: !2535, size: 64, offset: 1216)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2484, file: !12, line: 2081, baseType: !2542, size: 64, offset: 1280)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!1142, !1201, !112, !842, !1145, !641}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2484, file: !12, line: 2082, baseType: !2546, size: 64, offset: 1344)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!1142, !1201, !112, !832, !1145, !641}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2484, file: !12, line: 2083, baseType: !2550, size: 64, offset: 1408)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!2553, !988}
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !49, line: 296, size: 1664, elements: !2556)
!2556 = !{!2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2581, !2582, !2583}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2555, file: !49, line: 297, baseType: !683, size: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2555, file: !49, line: 298, baseType: !207, size: 128, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2555, file: !49, line: 299, baseType: !207, size: 128, offset: 256)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2555, file: !49, line: 300, baseType: !207, size: 128, offset: 384)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2555, file: !49, line: 301, baseType: !629, size: 256, offset: 512)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2555, file: !49, line: 302, baseType: !583, size: 32, offset: 768)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2555, file: !49, line: 303, baseType: !235, size: 32, offset: 800)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2555, file: !49, line: 304, baseType: !1201, size: 64, offset: 832)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2555, file: !49, line: 305, baseType: !2566, size: 64, offset: 896)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !49, line: 68, size: 64, elements: !2567)
!2567 = !{!2568, !2580}
!2568 = !DIDerivedType(tag: DW_TAG_member, scope: !2566, file: !49, line: 69, baseType: !2569, size: 32)
!2569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2566, file: !49, line: 69, size: 32, elements: !2570)
!2570 = !{!2571, !2572, !2573}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2569, file: !49, line: 70, baseType: !710, size: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2569, file: !49, line: 71, baseType: !728, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2569, file: !49, line: 72, baseType: !2574, size: 32)
!2574 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2575, line: 24, baseType: !2576)
!2575 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2575, line: 22, size: 32, elements: !2577)
!2577 = !{!2578}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2576, file: !2575, line: 23, baseType: !2579, size: 32)
!2579 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2575, line: 20, baseType: !716)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2566, file: !49, line: 74, baseType: !48, size: 32, offset: 32)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2555, file: !49, line: 306, baseType: !641, size: 64, offset: 960)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2555, file: !49, line: 307, baseType: !223, size: 64, offset: 1024)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2555, file: !49, line: 308, baseType: !2584, size: 576, offset: 1088)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !49, line: 205, size: 576, elements: !2585)
!2585 = !{!2586, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2584, file: !49, line: 206, baseType: !2587, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !49, line: 66, baseType: !302)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2584, file: !49, line: 207, baseType: !2587, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2584, file: !49, line: 208, baseType: !2587, size: 64, offset: 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2584, file: !49, line: 209, baseType: !2587, size: 64, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2584, file: !49, line: 210, baseType: !2587, size: 64, offset: 256)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2584, file: !49, line: 211, baseType: !2587, size: 64, offset: 320)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2584, file: !49, line: 212, baseType: !2587, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2584, file: !49, line: 213, baseType: !785, size: 64, offset: 448)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2584, file: !49, line: 214, baseType: !785, size: 64, offset: 512)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2484, file: !12, line: 2085, baseType: !2597, size: 64, offset: 1472)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!1103, !1201, !2600}
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2602, line: 15, size: 256, elements: !2603)
!2602 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2603 = !{!2604, !2605, !2606, !2607, !2608}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2601, file: !2602, line: 16, baseType: !1197, size: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2601, file: !2602, line: 19, baseType: !112, size: 32, offset: 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2601, file: !2602, line: 26, baseType: !223, size: 64, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2601, file: !2602, line: 33, baseType: !223, size: 64, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2601, file: !2602, line: 36, baseType: !2609, size: 64, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2602, line: 36, flags: DIFlagFwdDecl)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2484, file: !12, line: 2087, baseType: !2597, size: 64, offset: 1536)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2484, file: !12, line: 2089, baseType: !1230, size: 64, offset: 1600)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1202, file: !12, line: 1198, baseType: !2614, size: 64, offset: 448)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2616)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !49, line: 324, size: 704, elements: !2617)
!2617 = !{!2618, !2622, !2626, !2630, !2631, !2632, !2633, !2634, !2639, !2644, !2648}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2616, file: !49, line: 325, baseType: !2619, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!112, !2554}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2616, file: !49, line: 326, baseType: !2623, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!2554, !1201, !112}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2616, file: !49, line: 327, baseType: !2627, size: 64, offset: 128)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{null, !2554}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2616, file: !49, line: 328, baseType: !2619, size: 64, offset: 192)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2616, file: !49, line: 329, baseType: !2619, size: 64, offset: 256)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2616, file: !49, line: 330, baseType: !2619, size: 64, offset: 320)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2616, file: !49, line: 331, baseType: !2510, size: 64, offset: 384)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2616, file: !49, line: 334, baseType: !2635, size: 64, offset: 448)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!2638, !988}
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2616, file: !49, line: 335, baseType: !2640, size: 64, offset: 512)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!112, !988, !2643}
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2616, file: !49, line: 337, baseType: !2645, size: 64, offset: 576)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!112, !988, !2638}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2616, file: !49, line: 339, baseType: !2649, size: 64, offset: 640)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!112, !1201, !2652}
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1202, file: !12, line: 1199, baseType: !2654, size: 64, offset: 512)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2656)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !49, line: 430, size: 704, elements: !2657)
!2657 = !{!2658, !2662, !2663, !2667, !2668, !2669, !2684, !2707, !2711, !2712, !2735}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2656, file: !49, line: 431, baseType: !2659, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!112, !1201, !112, !112, !1111}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2656, file: !49, line: 432, baseType: !2510, size: 64, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2656, file: !49, line: 433, baseType: !2664, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!112, !1201, !5}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2656, file: !49, line: 434, baseType: !2664, size: 64, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2656, file: !49, line: 435, baseType: !2510, size: 64, offset: 256)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2656, file: !49, line: 436, baseType: !2670, size: 64, offset: 320)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!112, !1201, !112, !2673}
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !49, line: 417, size: 256, elements: !2675)
!2675 = !{!2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2674, file: !49, line: 418, baseType: !112, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2674, file: !49, line: 419, baseType: !5, size: 32, offset: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2674, file: !49, line: 420, baseType: !5, size: 32, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2674, file: !49, line: 422, baseType: !5, size: 32, offset: 96)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2674, file: !49, line: 423, baseType: !5, size: 32, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2674, file: !49, line: 424, baseType: !5, size: 32, offset: 160)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2674, file: !49, line: 425, baseType: !5, size: 32, offset: 192)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2674, file: !49, line: 426, baseType: !5, size: 32, offset: 224)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2656, file: !49, line: 437, baseType: !2685, size: 64, offset: 384)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!112, !1201, !2566, !2688}
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !49, line: 345, size: 960, elements: !2690)
!2690 = !{!2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2689, file: !49, line: 346, baseType: !112, size: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2689, file: !49, line: 347, baseType: !289, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2689, file: !49, line: 348, baseType: !289, size: 64, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2689, file: !49, line: 349, baseType: !289, size: 64, offset: 192)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2689, file: !49, line: 350, baseType: !289, size: 64, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2689, file: !49, line: 351, baseType: !289, size: 64, offset: 320)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2689, file: !49, line: 352, baseType: !289, size: 64, offset: 384)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2689, file: !49, line: 353, baseType: !300, size: 64, offset: 448)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2689, file: !49, line: 355, baseType: !300, size: 64, offset: 512)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2689, file: !49, line: 356, baseType: !112, size: 32, offset: 576)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2689, file: !49, line: 357, baseType: !112, size: 32, offset: 608)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2689, file: !49, line: 358, baseType: !289, size: 64, offset: 640)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2689, file: !49, line: 359, baseType: !289, size: 64, offset: 704)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2689, file: !49, line: 360, baseType: !289, size: 64, offset: 768)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2689, file: !49, line: 361, baseType: !300, size: 64, offset: 832)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2689, file: !49, line: 362, baseType: !112, size: 32, offset: 896)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2656, file: !49, line: 438, baseType: !2708, size: 64, offset: 448)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!112, !1201, !2652, !2688}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2656, file: !49, line: 440, baseType: !2685, size: 64, offset: 512)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2656, file: !49, line: 441, baseType: !2713, size: 64, offset: 576)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!112, !1201, !2716}
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !49, line: 411, size: 1408, elements: !2718)
!2718 = !{!2719, !2720}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2717, file: !49, line: 412, baseType: !5, size: 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2717, file: !49, line: 413, baseType: !2721, size: 1344, offset: 64)
!2721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2722, size: 1344, elements: !667)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !49, line: 397, size: 448, elements: !2723)
!2723 = !{!2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2734}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2722, file: !49, line: 398, baseType: !5, size: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2722, file: !49, line: 399, baseType: !5, size: 32, offset: 32)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2722, file: !49, line: 401, baseType: !5, size: 32, offset: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2722, file: !49, line: 402, baseType: !5, size: 32, offset: 96)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2722, file: !49, line: 403, baseType: !5, size: 32, offset: 128)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2722, file: !49, line: 404, baseType: !5, size: 32, offset: 160)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2722, file: !49, line: 405, baseType: !5, size: 32, offset: 192)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2722, file: !49, line: 406, baseType: !291, size: 64, offset: 256)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2722, file: !49, line: 407, baseType: !2733, size: 64, offset: 320)
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !208, line: 132, baseType: !289)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2722, file: !49, line: 408, baseType: !2733, size: 64, offset: 384)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2656, file: !49, line: 442, baseType: !2664, size: 64, offset: 640)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1202, file: !12, line: 1200, baseType: !2737, size: 64, offset: 576)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2739)
!2739 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !12, line: 54, flags: DIFlagFwdDecl)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1202, file: !12, line: 1201, baseType: !223, size: 64, offset: 640)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1202, file: !12, line: 1202, baseType: !223, size: 64, offset: 704)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1202, file: !12, line: 1203, baseType: !223, size: 64, offset: 768)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1202, file: !12, line: 1204, baseType: !953, size: 64, offset: 832)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1202, file: !12, line: 1205, baseType: !769, size: 320, offset: 896)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1202, file: !12, line: 1206, baseType: !112, size: 32, offset: 1216)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1202, file: !12, line: 1207, baseType: !235, size: 32, offset: 1248)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1202, file: !12, line: 1209, baseType: !190, size: 64, offset: 1280)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1202, file: !12, line: 1211, baseType: !2749, size: 64, offset: 1344)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2752)
!2752 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !12, line: 1211, flags: DIFlagFwdDecl)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1202, file: !12, line: 1223, baseType: !2754, size: 64, offset: 1408)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !965, line: 34, size: 64, elements: !2755)
!2755 = !{!2756}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2754, file: !965, line: 35, baseType: !968, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1202, file: !12, line: 1224, baseType: !207, size: 128, offset: 1472)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1202, file: !12, line: 1225, baseType: !2759, size: 64, offset: 1600)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2761, line: 40, size: 7424, elements: !2762)
!2761 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2762 = !{!2763, !2764, !2765, !3887, !3888, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3931, !3932}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2760, file: !2761, line: 41, baseType: !1768, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2760, file: !2761, line: 42, baseType: !1768, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2760, file: !2761, line: 43, baseType: !2766, size: 64, offset: 128)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !145, line: 128, size: 4544, elements: !2768)
!2768 = !{!2769, !2770, !2771, !2772, !2776, !2777, !2778, !2779, !2780, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3853, !3854, !3855, !3856, !3859, !3860, !3863, !3866, !3867, !3870, !3871, !3872, !3873}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2767, file: !145, line: 133, baseType: !112, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !2767, file: !145, line: 134, baseType: !112, size: 32, offset: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !2767, file: !145, line: 135, baseType: !112, size: 32, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !2767, file: !145, line: 137, baseType: !2773, size: 256, offset: 96)
!2773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 256, elements: !2774)
!2774 = !{!2775}
!2775 = !DISubrange(count: 32)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2767, file: !145, line: 139, baseType: !260, size: 16, offset: 352)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !2767, file: !145, line: 140, baseType: !260, size: 16, offset: 368)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !2767, file: !145, line: 142, baseType: !1192, size: 128, offset: 384)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !2767, file: !145, line: 143, baseType: !2759, size: 64, offset: 512)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2767, file: !145, line: 145, baseType: !2781, size: 64, offset: 576)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2783)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !145, line: 1388, size: 1152, elements: !2784)
!2784 = !{!2785, !2876, !3765, !3770, !3774, !3778, !3779, !3783, !3784, !3790, !3794, !3795, !3799, !3825, !3829, !3834, !3835, !3839}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2783, file: !145, line: 1389, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{null, !2789}
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !2761, line: 265, size: 960, elements: !2791)
!2791 = !{!2792, !2793, !2794, !2796, !2797, !2798, !2800, !2801, !2808, !2810, !2813, !2814, !2817, !2821, !2822, !2824, !2825, !2826, !2827, !2829, !2874}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !2790, file: !2761, line: 266, baseType: !2789, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !2790, file: !2761, line: 267, baseType: !2759, size: 64, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !2790, file: !2761, line: 268, baseType: !2795, size: 32, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !2761, line: 256, baseType: !188)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !2790, file: !2761, line: 271, baseType: !260, size: 16, offset: 160)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !2790, file: !2761, line: 272, baseType: !260, size: 16, offset: 176)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !2790, file: !2761, line: 273, baseType: !2799, size: 8, offset: 192)
!2799 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !2761, line: 97, baseType: !399)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !2790, file: !2761, line: 274, baseType: !235, size: 32, offset: 224)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !2790, file: !2761, line: 276, baseType: !2802, size: 160, align: 32, offset: 256)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1850, line: 77, size: 160, align: 32, elements: !2803)
!2803 = !{!2804, !2805, !2806, !2807}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !2802, file: !1850, line: 78, baseType: !1768, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !2802, file: !1850, line: 80, baseType: !5, size: 32, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !2802, file: !1850, line: 82, baseType: !5, size: 32, offset: 96)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !2802, file: !1850, line: 84, baseType: !5, size: 32, offset: 128)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !2790, file: !2761, line: 278, baseType: !2809, size: 32, offset: 416)
!2809 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !2761, line: 258, baseType: !5)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !2790, file: !2761, line: 279, baseType: !2811, size: 64, offset: 448)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !2761, line: 20, baseType: !2787)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !2790, file: !2761, line: 280, baseType: !190, size: 64, offset: 512)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !2790, file: !2761, line: 288, baseType: !2815, size: 64, offset: 576)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !2761, line: 288, flags: DIFlagFwdDecl)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !2790, file: !2761, line: 289, baseType: !2818, size: 64, offset: 640)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !2761, line: 228, size: 64, elements: !2819)
!2819 = !{!2820}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2818, file: !2761, line: 229, baseType: !289, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !2790, file: !2761, line: 291, baseType: !289, size: 64, offset: 704)
!2822 = !DIDerivedType(tag: DW_TAG_member, scope: !2790, file: !2761, line: 299, baseType: !2823, offset: 768)
!2823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2790, file: !2761, line: 299, elements: !594)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !2790, file: !2761, line: 305, baseType: !260, size: 16, offset: 768)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !2790, file: !2761, line: 311, baseType: !260, size: 16, offset: 784)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !2790, file: !2761, line: 313, baseType: !235, size: 32, offset: 800)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !2790, file: !2761, line: 315, baseType: !2828, size: 64, offset: 832)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !2790, file: !2761, line: 317, baseType: !2830, size: 64, offset: 896)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2832, line: 678, size: 1984, elements: !2833)
!2832 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2833 = !{!2834, !2838, !2839, !2842, !2863, !2864, !2865, !2866, !2871, !2872, !2873}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2831, file: !2832, line: 679, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2837, line: 325, flags: DIFlagFwdDecl)
!2837 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2831, file: !2832, line: 680, baseType: !5, size: 32, offset: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2831, file: !2832, line: 685, baseType: !2840, size: 64, offset: 128)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2832, line: 685, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2831, file: !2832, line: 687, baseType: !2843, size: 576, offset: 192)
!2843 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2844, line: 26, baseType: !2845)
!2844 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2844, line: 16, size: 576, elements: !2846)
!2846 = !{!2847, !2848, !2849, !2850, !2851, !2852, !2857, !2862}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2845, file: !2844, line: 17, baseType: !583, size: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2845, file: !2844, line: 18, baseType: !112, size: 32, offset: 32)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2845, file: !2844, line: 19, baseType: !112, size: 32, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2845, file: !2844, line: 20, baseType: !1759, size: 64, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2845, file: !2844, line: 22, baseType: !190, size: 64, offset: 192)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2845, file: !2844, line: 23, baseType: !2853, size: 64, offset: 256)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2844, line: 13, baseType: !2855)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!190, !1197, !190}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2845, file: !2844, line: 24, baseType: !2858, size: 64, offset: 320)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2844, line: 14, baseType: !2860)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{null, !190, !190}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2845, file: !2844, line: 25, baseType: !692, size: 192, offset: 384)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2831, file: !2832, line: 688, baseType: !2843, size: 576, offset: 768)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2831, file: !2832, line: 694, baseType: !5, size: 32, offset: 1344)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2831, file: !2832, line: 699, baseType: !583, size: 32, offset: 1376)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2831, file: !2832, line: 700, baseType: !2867, size: 128, offset: 1408)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2832, line: 550, size: 128, elements: !2868)
!2868 = !{!2869, !2870}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2867, file: !2832, line: 551, baseType: !2789, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2867, file: !2832, line: 552, baseType: !2789, size: 64, offset: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2831, file: !2832, line: 701, baseType: !2362, size: 256, offset: 1536)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2831, file: !2832, line: 702, baseType: !2423, size: 64, offset: 1792)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2831, file: !2832, line: 707, baseType: !683, size: 128, offset: 1856)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !2790, file: !2761, line: 324, baseType: !2875, offset: 960)
!2875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1849, elements: !706)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !2783, file: !145, line: 1390, baseType: !2877, size: 64, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!112, !2789, !2880, !5}
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !145, line: 1559, size: 192, elements: !2882)
!2882 = !{!2883, !3760, !3761}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !2881, file: !145, line: 1560, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !86, line: 80, size: 1984, elements: !2886)
!2886 = !{!2887, !3682, !3683, !3684, !3685, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3714, !3719, !3748, !3757, !3758, !3759}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2885, file: !86, line: 81, baseType: !2888, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !145, line: 391, size: 7296, elements: !2890)
!2890 = !{!2891, !2892, !2895, !2896, !2899, !2951, !2952, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3656, !3657, !3658, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !2889, file: !145, line: 392, baseType: !2884, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !2889, file: !145, line: 393, baseType: !2893, size: 64, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !145, line: 30, flags: DIFlagFwdDecl)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !2889, file: !145, line: 395, baseType: !1435, size: 128, offset: 128)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2889, file: !145, line: 397, baseType: !2897, size: 64, offset: 256)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !145, line: 39, flags: DIFlagFwdDecl)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !2889, file: !145, line: 398, baseType: !2900, size: 64, offset: 320)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !169, line: 27, size: 320, elements: !2902)
!2902 = !{!2903, !2947, !2948, !2949, !2950}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2901, file: !169, line: 28, baseType: !2904, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2906)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos_ops", file: !169, line: 37, size: 704, elements: !2907)
!2907 = !{!2908, !2912, !2916, !2917, !2921, !2922, !2923, !2924, !2925, !2929, !2930}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2906, file: !169, line: 38, baseType: !2909, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{null, !2900, !2789}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "track", scope: !2906, file: !169, line: 39, baseType: !2913, size: 64, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{null, !2900, !2884, !2789}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "merge", scope: !2906, file: !169, line: 40, baseType: !2913, size: 64, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "issue", scope: !2906, file: !169, line: 41, baseType: !2918, size: 64, offset: 192)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{null, !2900, !2884}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "requeue", scope: !2906, file: !169, line: 42, baseType: !2918, size: 64, offset: 256)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2906, file: !169, line: 43, baseType: !2918, size: 64, offset: 320)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "done_bio", scope: !2906, file: !169, line: 44, baseType: !2909, size: 64, offset: 384)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2906, file: !169, line: 45, baseType: !2909, size: 64, offset: 448)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth_changed", scope: !2906, file: !169, line: 46, baseType: !2926, size: 64, offset: 512)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{null, !2900}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2906, file: !169, line: 47, baseType: !2926, size: 64, offset: 576)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_attrs", scope: !2906, file: !169, line: 48, baseType: !2931, size: 64, offset: 640)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2933)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_debugfs_attr", file: !2934, line: 11, size: 320, elements: !2935)
!2934 = !DIFile(filename: "block/blk-mq-debugfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42f71fe42bc838da54aa861da46eede1")
!2935 = !{!2936, !2937, !2938, !2942, !2946}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2933, file: !2934, line: 12, baseType: !832, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2933, file: !2934, line: 13, baseType: !992, size: 16, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2933, file: !2934, line: 14, baseType: !2939, size: 64, offset: 128)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!112, !190, !2007}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2933, file: !2934, line: 15, baseType: !2943, size: 64, offset: 192)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!1142, !190, !832, !1145, !2028}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "seq_ops", scope: !2933, file: !2934, line: 17, baseType: !2020, size: 64, offset: 256)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !2901, file: !169, line: 29, baseType: !2766, size: 64, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2901, file: !169, line: 30, baseType: !168, size: 32, offset: 128)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2901, file: !169, line: 31, baseType: !2900, size: 64, offset: 192)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2901, file: !169, line: 33, baseType: !953, size: 64, offset: 256)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !2889, file: !145, line: 399, baseType: !629, size: 256, offset: 384)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !2889, file: !145, line: 401, baseType: !2953, size: 64, offset: 640)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2955)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !86, line: 537, size: 1152, elements: !2956)
!2956 = !{!2957, !3056, !3060, !3064, !3068, !3072, !3076, !3080, !3084, !3088, !3092, !3096, !3100, !3130, !3134, !3135, !3139, !3143}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rq", scope: !2955, file: !86, line: 541, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!2799, !2961, !3050}
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !86, line: 288, size: 4096, elements: !2963)
!2963 = !{!2964, !2970, !2971, !2974, !2975, !2976, !2977, !2978, !2979, !2982, !2983, !2999, !3002, !3003, !3004, !3005, !3007, !3008, !3010, !3011, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049}
!2964 = !DIDerivedType(tag: DW_TAG_member, scope: !2962, file: !86, line: 289, baseType: !2965, size: 512, align: 512)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2962, file: !86, line: 289, size: 512, align: 512, elements: !2966)
!2966 = !{!2967, !2968, !2969}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2965, file: !86, line: 291, baseType: !583, size: 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !2965, file: !86, line: 299, baseType: !207, size: 128, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2965, file: !86, line: 304, baseType: !223, size: 64, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !2962, file: !86, line: 310, baseType: !2418, size: 704, offset: 512)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2962, file: !86, line: 312, baseType: !2972, size: 64, offset: 1216)
!2972 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !512, line: 913, baseType: !2973)
!2973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 64, elements: !517)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu", scope: !2962, file: !86, line: 317, baseType: !112, size: 32, offset: 1280)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu_batch", scope: !2962, file: !86, line: 322, baseType: !112, size: 32, offset: 1312)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2962, file: !86, line: 325, baseType: !223, size: 64, offset: 1344)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "sched_data", scope: !2962, file: !86, line: 331, baseType: !190, size: 64, offset: 1408)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2962, file: !86, line: 335, baseType: !2888, size: 64, offset: 1472)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2962, file: !86, line: 337, baseType: !2980, size: 64, offset: 1536)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !145, line: 35, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2962, file: !86, line: 343, baseType: !190, size: 64, offset: 1600)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_map", scope: !2962, file: !86, line: 349, baseType: !2984, size: 256, offset: 1664)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap", file: !2985, line: 52, size: 256, elements: !2986)
!2985 = !DIFile(filename: "./include/linux/sbitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c1a10e3a5ba3f1b25200b1abce63f43a")
!2986 = !{!2987, !2988, !2989, !2990, !2991, !2998}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2984, file: !2985, line: 56, baseType: !5, size: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !2984, file: !2985, line: 61, baseType: !5, size: 32, offset: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "map_nr", scope: !2984, file: !2985, line: 66, baseType: !5, size: 32, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "round_robin", scope: !2984, file: !2985, line: 71, baseType: !829, size: 8, offset: 96)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2984, file: !2985, line: 76, baseType: !2992, size: 64, offset: 128)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_word", file: !2985, line: 29, size: 1024, align: 512, elements: !2994)
!2994 = !{!2995, !2996, !2997}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !2993, file: !2985, line: 33, baseType: !223, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "cleared", scope: !2993, file: !2985, line: 38, baseType: !223, size: 64, align: 512, offset: 512)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "swap_lock", scope: !2993, file: !2985, line: 43, baseType: !382, size: 32, offset: 576)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_hint", scope: !2984, file: !2985, line: 84, baseType: !2201, size: 64, offset: 192)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_from", scope: !2962, file: !86, line: 355, baseType: !3000, size: 64, offset: 1920)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !145, line: 404, flags: DIFlagFwdDecl)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_busy", scope: !2962, file: !86, line: 361, baseType: !5, size: 32, offset: 1984)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2962, file: !86, line: 364, baseType: !260, size: 16, offset: 2016)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ctx", scope: !2962, file: !86, line: 366, baseType: !260, size: 16, offset: 2032)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !2962, file: !86, line: 368, baseType: !3006, size: 64, offset: 2048)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait_lock", scope: !2962, file: !86, line: 371, baseType: !583, size: 32, offset: 2112)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait", scope: !2962, file: !86, line: 376, baseType: !3009, size: 320, offset: 2176)
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !196, line: 14, baseType: !195)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2962, file: !86, line: 382, baseType: !235, size: 32, offset: 2496)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !2962, file: !86, line: 388, baseType: !3012, size: 64, offset: 2560)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !86, line: 735, size: 1472, elements: !3014)
!3014 = !{!3015, !3016, !3017, !3018, !3033, !3034, !3036, !3037, !3038}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tags", scope: !3013, file: !86, line: 736, baseType: !5, size: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_tags", scope: !3013, file: !86, line: 737, baseType: !5, size: 32, offset: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "active_queues", scope: !3013, file: !86, line: 738, baseType: !5, size: 32, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_tags", scope: !3013, file: !86, line: 740, baseType: !3019, size: 512, offset: 128)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_queue", file: !2985, line: 109, size: 512, elements: !3020)
!3020 = !{!3021, !3022, !3023, !3024, !3029, !3030, !3031, !3032}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !3019, file: !2985, line: 113, baseType: !2984, size: 256)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "wake_batch", scope: !3019, file: !2985, line: 119, baseType: !5, size: 32, offset: 256)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "wake_index", scope: !3019, file: !2985, line: 124, baseType: !235, size: 32, offset: 288)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !3019, file: !2985, line: 129, baseType: !3025, size: 64, offset: 320)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbq_wait_state", file: !2985, line: 93, size: 512, align: 512, elements: !3027)
!3027 = !{!3028}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3026, file: !2985, line: 97, baseType: !692, size: 192)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "ws_active", scope: !3019, file: !2985, line: 134, baseType: !235, size: 32, offset: 384)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "min_shallow_depth", scope: !3019, file: !2985, line: 140, baseType: !5, size: 32, offset: 416)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "completion_cnt", scope: !3019, file: !2985, line: 146, baseType: !235, size: 32, offset: 448)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_cnt", scope: !3019, file: !2985, line: 151, baseType: !235, size: 32, offset: 480)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "breserved_tags", scope: !3013, file: !86, line: 741, baseType: !3019, size: 512, offset: 640)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "rqs", scope: !3013, file: !86, line: 743, baseType: !3035, size: 64, offset: 1152)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "static_rqs", scope: !3013, file: !86, line: 744, baseType: !3035, size: 64, offset: 1216)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !3013, file: !86, line: 745, baseType: !207, size: 128, offset: 1280)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3013, file: !86, line: 751, baseType: !583, size: 32, offset: 1408)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "sched_tags", scope: !2962, file: !86, line: 394, baseType: !3012, size: 64, offset: 2624)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !2962, file: !86, line: 397, baseType: !223, size: 64, offset: 2688)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2962, file: !86, line: 400, baseType: !5, size: 32, offset: 2752)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "queue_num", scope: !2962, file: !86, line: 402, baseType: !5, size: 32, offset: 2784)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active", scope: !2962, file: !86, line: 408, baseType: !235, size: 32, offset: 2816)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_online", scope: !2962, file: !86, line: 411, baseType: !683, size: 128, offset: 2880)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2962, file: !86, line: 413, baseType: !683, size: 128, offset: 3008)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2962, file: !86, line: 415, baseType: !1247, size: 512, offset: 3136)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2962, file: !86, line: 422, baseType: !953, size: 64, offset: 3648)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !2962, file: !86, line: 424, baseType: !953, size: 64, offset: 3712)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_list", scope: !2962, file: !86, line: 431, baseType: !207, size: 128, offset: 3776)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3052)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_data", file: !86, line: 526, size: 128, elements: !3053)
!3053 = !{!3054, !3055}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "rq", scope: !3052, file: !86, line: 527, baseType: !2884, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !3052, file: !86, line: 528, baseType: !829, size: 8, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "commit_rqs", scope: !2955, file: !86, line: 551, baseType: !3057, size: 64, offset: 64)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{null, !2961}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rqs", scope: !2955, file: !86, line: 559, baseType: !3061, size: 64, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{null, !3035}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "get_budget", scope: !2955, file: !86, line: 567, baseType: !3065, size: 64, offset: 192)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!112, !2888}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "put_budget", scope: !2955, file: !86, line: 572, baseType: !3069, size: 64, offset: 256)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{null, !2888, !112}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "set_rq_budget_token", scope: !2955, file: !86, line: 577, baseType: !3073, size: 64, offset: 320)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{null, !2884, !112}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "get_rq_budget_token", scope: !2955, file: !86, line: 581, baseType: !3077, size: 64, offset: 384)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!112, !2884}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2955, file: !86, line: 586, baseType: !3081, size: 64, offset: 448)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!85, !2884}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2955, file: !86, line: 591, baseType: !3085, size: 64, offset: 512)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!112, !2961, !2880}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2955, file: !86, line: 596, baseType: !3089, size: 64, offset: 576)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{null, !2884}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !2955, file: !86, line: 603, baseType: !3093, size: 64, offset: 640)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!112, !2961, !190, !5}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !2955, file: !86, line: 607, baseType: !3097, size: 64, offset: 704)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{null, !2961, !5}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !2955, file: !86, line: 616, baseType: !3101, size: 64, offset: 768)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!112, !3104, !2884, !5, !5}
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !86, line: 498, size: 1344, elements: !3106)
!3106 = !{!3107, !3108, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3126, !3127, !3128, !3129}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3105, file: !86, line: 499, baseType: !2953, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3105, file: !86, line: 500, baseType: !3109, size: 384, offset: 64)
!3109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3110, size: 384, elements: !667)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_map", file: !86, line: 444, size: 128, elements: !3111)
!3111 = !{!3112, !3113, !3114}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "mq_map", scope: !3110, file: !86, line: 445, baseType: !2201, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "nr_queues", scope: !3110, file: !86, line: 446, baseType: !5, size: 32, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "queue_offset", scope: !3110, file: !86, line: 447, baseType: !5, size: 32, offset: 96)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_maps", scope: !3105, file: !86, line: 501, baseType: !5, size: 32, offset: 448)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !3105, file: !86, line: 502, baseType: !5, size: 32, offset: 480)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !3105, file: !86, line: 503, baseType: !5, size: 32, offset: 512)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tags", scope: !3105, file: !86, line: 504, baseType: !5, size: 32, offset: 544)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !3105, file: !86, line: 505, baseType: !5, size: 32, offset: 576)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3105, file: !86, line: 506, baseType: !112, size: 32, offset: 608)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3105, file: !86, line: 507, baseType: !5, size: 32, offset: 640)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3105, file: !86, line: 508, baseType: !5, size: 32, offset: 672)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3105, file: !86, line: 509, baseType: !190, size: 64, offset: 704)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !3105, file: !86, line: 511, baseType: !3125, size: 64, offset: 768)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "shared_tags", scope: !3105, file: !86, line: 513, baseType: !3012, size: 64, offset: 832)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list_lock", scope: !3105, file: !86, line: 515, baseType: !629, size: 256, offset: 896)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list", scope: !3105, file: !86, line: 516, baseType: !207, size: 128, offset: 1152)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu", scope: !3105, file: !86, line: 517, baseType: !2318, size: 64, offset: 1280)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "exit_request", scope: !2955, file: !86, line: 621, baseType: !3131, size: 64, offset: 832)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{null, !3104, !2884, !5}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_rq", scope: !2955, file: !86, line: 628, baseType: !3089, size: 64, offset: 896)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !2955, file: !86, line: 633, baseType: !3136, size: 64, offset: 960)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!829, !2888}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "map_queues", scope: !2955, file: !86, line: 639, baseType: !3140, size: 64, offset: 1024)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{null, !3104}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "show_rq", scope: !2955, file: !86, line: 646, baseType: !3144, size: 64, offset: 1088)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{null, !2007, !2884}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !2889, file: !145, line: 404, baseType: !3000, size: 64, offset: 704)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !2889, file: !145, line: 406, baseType: !5, size: 32, offset: 768)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !2889, file: !145, line: 409, baseType: !1192, size: 128, offset: 832)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !2889, file: !145, line: 410, baseType: !5, size: 32, offset: 960)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !2889, file: !145, line: 416, baseType: !190, size: 64, offset: 1024)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !2889, file: !145, line: 421, baseType: !223, size: 64, offset: 1088)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !2889, file: !145, line: 426, baseType: !235, size: 32, offset: 1152)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2889, file: !145, line: 432, baseType: !112, size: 32, offset: 1184)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !2889, file: !145, line: 434, baseType: !583, size: 32, offset: 1216)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !2889, file: !145, line: 436, baseType: !2766, size: 64, offset: 1280)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2889, file: !145, line: 438, baseType: !230, size: 32, offset: 1344)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !2889, file: !145, line: 443, baseType: !1253, size: 64, offset: 1408)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2889, file: !145, line: 450, baseType: !3160, size: 64, offset: 1472)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !97, line: 705, size: 5824, elements: !3162)
!3162 = !{!3163, !3164, !3165, !3168, !3169, !3222, !3292, !3293, !3294, !3295, !3296, !3303, !3395, !3408, !3418, !3422, !3424, !3425, !3426, !3430, !3437, !3438, !3441, !3444, !3448, !3552, !3553, !3554, !3555, !3556, !3557, !3587, !3588, !3589, !3592, !3595, !3604, !3605, !3606, !3607, !3608, !3609}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3161, file: !97, line: 706, baseType: !1247, size: 512)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3161, file: !97, line: 707, baseType: !3160, size: 64, offset: 512)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3161, file: !97, line: 709, baseType: !3166, size: 64, offset: 576)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !97, line: 37, flags: DIFlagFwdDecl)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3161, file: !97, line: 711, baseType: !832, size: 64, offset: 640)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3161, file: !97, line: 712, baseType: !3170, size: 64, offset: 704)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3172)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !97, line: 89, size: 384, elements: !3173)
!3173 = !{!3174, !3175, !3176, !3182, !3187, !3191}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3172, file: !97, line: 90, baseType: !832, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3172, file: !97, line: 91, baseType: !1327, size: 64, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3172, file: !97, line: 92, baseType: !3177, size: 64, offset: 128)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!112, !3180, !1283}
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3161)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3172, file: !97, line: 93, baseType: !3183, size: 64, offset: 192)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!842, !3180, !3186, !1959, !1960}
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3172, file: !97, line: 95, baseType: !3188, size: 64, offset: 256)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{null, !3160}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3172, file: !97, line: 97, baseType: !3192, size: 64, offset: 320)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3194)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !104, line: 286, size: 1472, elements: !3195)
!3195 = !{!3196, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3194, file: !104, line: 287, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!112, !3160}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3194, file: !104, line: 288, baseType: !3188, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3194, file: !104, line: 289, baseType: !3197, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3194, file: !104, line: 290, baseType: !3197, size: 64, offset: 192)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3194, file: !104, line: 291, baseType: !3197, size: 64, offset: 256)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3194, file: !104, line: 292, baseType: !3197, size: 64, offset: 320)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3194, file: !104, line: 293, baseType: !3197, size: 64, offset: 384)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3194, file: !104, line: 294, baseType: !3197, size: 64, offset: 448)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3194, file: !104, line: 295, baseType: !3197, size: 64, offset: 512)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3194, file: !104, line: 296, baseType: !3197, size: 64, offset: 576)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3194, file: !104, line: 297, baseType: !3197, size: 64, offset: 640)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3194, file: !104, line: 298, baseType: !3197, size: 64, offset: 704)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3194, file: !104, line: 299, baseType: !3197, size: 64, offset: 768)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3194, file: !104, line: 300, baseType: !3197, size: 64, offset: 832)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3194, file: !104, line: 301, baseType: !3197, size: 64, offset: 896)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3194, file: !104, line: 302, baseType: !3197, size: 64, offset: 960)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3194, file: !104, line: 303, baseType: !3197, size: 64, offset: 1024)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3194, file: !104, line: 304, baseType: !3197, size: 64, offset: 1088)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3194, file: !104, line: 305, baseType: !3197, size: 64, offset: 1152)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3194, file: !104, line: 306, baseType: !3197, size: 64, offset: 1216)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3194, file: !104, line: 307, baseType: !3197, size: 64, offset: 1280)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3194, file: !104, line: 308, baseType: !3197, size: 64, offset: 1344)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3194, file: !104, line: 309, baseType: !3197, size: 64, offset: 1408)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3161, file: !97, line: 714, baseType: !3223, size: 64, offset: 768)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3225)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3226, line: 80, size: 1344, elements: !3227)
!3226 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3227 = !{!3228, !3229, !3230, !3231, !3232, !3233, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3291}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3225, file: !3226, line: 81, baseType: !832, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3225, file: !3226, line: 82, baseType: !832, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3225, file: !3226, line: 83, baseType: !1327, size: 64, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3225, file: !3226, line: 84, baseType: !1327, size: 64, offset: 192)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3225, file: !3226, line: 85, baseType: !1327, size: 64, offset: 256)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3225, file: !3226, line: 87, baseType: !3234, size: 64, offset: 320)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!112, !3160, !3237}
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !91, line: 96, size: 1152, elements: !3239)
!3239 = !{!3240, !3241, !3242, !3243, !3244, !3245, !3246, !3250, !3254, !3255, !3256, !3257, !3258, !3266, !3267, !3268, !3269, !3270, !3271}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3238, file: !91, line: 97, baseType: !832, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3238, file: !91, line: 98, baseType: !3223, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3238, file: !91, line: 100, baseType: !1234, size: 64, offset: 128)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3238, file: !91, line: 101, baseType: !832, size: 64, offset: 192)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3238, file: !91, line: 103, baseType: !829, size: 8, offset: 256)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3238, file: !91, line: 104, baseType: !90, size: 32, offset: 288)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3238, file: !91, line: 106, baseType: !3247, size: 64, offset: 320)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3249)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !91, line: 106, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3238, file: !91, line: 107, baseType: !3251, size: 64, offset: 384)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3253)
!3253 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !91, line: 107, flags: DIFlagFwdDecl)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3238, file: !91, line: 109, baseType: !3197, size: 64, offset: 448)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3238, file: !91, line: 110, baseType: !3188, size: 64, offset: 512)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3238, file: !91, line: 111, baseType: !3197, size: 64, offset: 576)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3238, file: !91, line: 112, baseType: !3188, size: 64, offset: 640)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3238, file: !91, line: 113, baseType: !3259, size: 64, offset: 704)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!112, !3160, !3262}
!3262 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !104, line: 60, baseType: !3263)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !104, line: 58, size: 32, elements: !3264)
!3264 = !{!3265}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3263, file: !104, line: 59, baseType: !112, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3238, file: !91, line: 114, baseType: !3197, size: 64, offset: 768)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3238, file: !91, line: 115, baseType: !1327, size: 64, offset: 832)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3238, file: !91, line: 116, baseType: !1327, size: 64, offset: 896)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3238, file: !91, line: 118, baseType: !3192, size: 64, offset: 960)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3238, file: !91, line: 119, baseType: !3188, size: 64, offset: 1024)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3238, file: !91, line: 121, baseType: !3272, size: 64, offset: 1088)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !91, line: 121, flags: DIFlagFwdDecl)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3225, file: !3226, line: 88, baseType: !3177, size: 64, offset: 384)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3225, file: !3226, line: 89, baseType: !3197, size: 64, offset: 448)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3225, file: !3226, line: 90, baseType: !3188, size: 64, offset: 512)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3225, file: !3226, line: 91, baseType: !3188, size: 64, offset: 576)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3225, file: !3226, line: 92, baseType: !3188, size: 64, offset: 640)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3225, file: !3226, line: 94, baseType: !3197, size: 64, offset: 704)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3225, file: !3226, line: 95, baseType: !3197, size: 64, offset: 768)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3225, file: !3226, line: 97, baseType: !3259, size: 64, offset: 832)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3225, file: !3226, line: 98, baseType: !3197, size: 64, offset: 896)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3225, file: !3226, line: 100, baseType: !3197, size: 64, offset: 960)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3225, file: !3226, line: 102, baseType: !3197, size: 64, offset: 1024)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3225, file: !3226, line: 103, baseType: !3188, size: 64, offset: 1088)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3225, file: !3226, line: 105, baseType: !3192, size: 64, offset: 1152)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3225, file: !3226, line: 107, baseType: !3288, size: 64, offset: 1216)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3290)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3226, line: 107, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3225, file: !3226, line: 109, baseType: !829, size: 8, offset: 1280)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3161, file: !97, line: 715, baseType: !3237, size: 64, offset: 832)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3161, file: !97, line: 717, baseType: !190, size: 64, offset: 896)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3161, file: !97, line: 719, baseType: !190, size: 64, offset: 960)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3161, file: !97, line: 721, baseType: !629, size: 256, offset: 1024)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3161, file: !97, line: 725, baseType: !3297, size: 448, offset: 1280)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !97, line: 517, size: 448, elements: !3298)
!3298 = !{!3299, !3300, !3301, !3302}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3297, file: !97, line: 518, baseType: !207, size: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3297, file: !97, line: 519, baseType: !207, size: 128, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3297, file: !97, line: 520, baseType: !207, size: 128, offset: 256)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3297, file: !97, line: 521, baseType: !96, size: 32, offset: 384)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3161, file: !97, line: 726, baseType: !3304, size: 2496, offset: 1728)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !104, line: 663, size: 2496, elements: !3305)
!3305 = !{!3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3388, !3392}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3304, file: !104, line: 664, baseType: !3262, size: 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3304, file: !104, line: 665, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3304, file: !104, line: 666, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3304, file: !104, line: 667, baseType: !829, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3304, file: !104, line: 668, baseType: !829, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3304, file: !104, line: 669, baseType: !829, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3304, file: !104, line: 670, baseType: !829, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3304, file: !104, line: 671, baseType: !829, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3304, file: !104, line: 672, baseType: !829, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3304, file: !104, line: 673, baseType: !829, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3304, file: !104, line: 674, baseType: !829, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3304, file: !104, line: 675, baseType: !186, size: 32, offset: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3304, file: !104, line: 676, baseType: !583, size: 32, offset: 96)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3304, file: !104, line: 678, baseType: !207, size: 128, offset: 128)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3304, file: !104, line: 679, baseType: !1456, size: 256, offset: 256)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3304, file: !104, line: 680, baseType: !3322, size: 64, offset: 512)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3324, line: 43, size: 1536, elements: !3325)
!3324 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3325 = !{!3326, !3327, !3328, !3329, !3330, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3323, file: !3324, line: 44, baseType: !832, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3323, file: !3324, line: 45, baseType: !112, size: 32, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3323, file: !3324, line: 46, baseType: !207, size: 128, offset: 128)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3323, file: !3324, line: 47, baseType: !583, size: 32, offset: 256)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3323, file: !3324, line: 48, baseType: !3331, size: 64, offset: 320)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !104, line: 629, flags: DIFlagFwdDecl)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3323, file: !3324, line: 49, baseType: !2350, size: 320, offset: 384)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3323, file: !3324, line: 50, baseType: !223, size: 64, offset: 704)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3323, file: !3324, line: 51, baseType: !365, size: 64, offset: 768)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3323, file: !3324, line: 52, baseType: !365, size: 64, offset: 832)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3323, file: !3324, line: 53, baseType: !365, size: 64, offset: 896)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3323, file: !3324, line: 54, baseType: !365, size: 64, offset: 960)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3323, file: !3324, line: 55, baseType: !365, size: 64, offset: 1024)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3323, file: !3324, line: 56, baseType: !223, size: 64, offset: 1088)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3323, file: !3324, line: 57, baseType: !223, size: 64, offset: 1152)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3323, file: !3324, line: 58, baseType: !223, size: 64, offset: 1216)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3323, file: !3324, line: 59, baseType: !223, size: 64, offset: 1280)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3323, file: !3324, line: 60, baseType: !223, size: 64, offset: 1344)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3323, file: !3324, line: 61, baseType: !3160, size: 64, offset: 1408)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3323, file: !3324, line: 62, baseType: !829, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3323, file: !3324, line: 63, baseType: !829, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3304, file: !104, line: 681, baseType: !829, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3304, file: !104, line: 682, baseType: !829, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3304, file: !104, line: 683, baseType: !829, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3304, file: !104, line: 684, baseType: !5, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3304, file: !104, line: 685, baseType: !5, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3304, file: !104, line: 690, baseType: !357, size: 512, offset: 640)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3304, file: !104, line: 691, baseType: !289, size: 64, offset: 1152)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3304, file: !104, line: 692, baseType: !2362, size: 256, offset: 1216)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3304, file: !104, line: 693, baseType: !692, size: 192, offset: 1472)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3304, file: !104, line: 694, baseType: !3331, size: 64, offset: 1664)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3304, file: !104, line: 695, baseType: !235, size: 32, offset: 1728)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3304, file: !104, line: 696, baseType: !235, size: 32, offset: 1760)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3304, file: !104, line: 697, baseType: !5, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3304, file: !104, line: 698, baseType: !5, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3304, file: !104, line: 699, baseType: !5, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3304, file: !104, line: 700, baseType: !5, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3304, file: !104, line: 701, baseType: !5, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3304, file: !104, line: 702, baseType: !5, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3304, file: !104, line: 703, baseType: !829, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3304, file: !104, line: 704, baseType: !5, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3304, file: !104, line: 705, baseType: !5, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3304, file: !104, line: 706, baseType: !5, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3304, file: !104, line: 707, baseType: !5, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3304, file: !104, line: 708, baseType: !5, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3304, file: !104, line: 709, baseType: !5, size: 32, offset: 1824)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3304, file: !104, line: 710, baseType: !103, size: 32, offset: 1856)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3304, file: !104, line: 711, baseType: !111, size: 32, offset: 1888)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3304, file: !104, line: 712, baseType: !111, size: 32, offset: 1920)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3304, file: !104, line: 713, baseType: !112, size: 32, offset: 1952)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3304, file: !104, line: 714, baseType: !112, size: 32, offset: 1984)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3304, file: !104, line: 715, baseType: !289, size: 64, offset: 2048)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3304, file: !104, line: 716, baseType: !289, size: 64, offset: 2112)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3304, file: !104, line: 717, baseType: !289, size: 64, offset: 2176)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3304, file: !104, line: 718, baseType: !289, size: 64, offset: 2240)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3304, file: !104, line: 720, baseType: !3383, size: 64, offset: 2304)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !104, line: 632, size: 64, elements: !3385)
!3385 = !{!3386, !3387}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3384, file: !104, line: 633, baseType: !583, size: 32)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3384, file: !104, line: 634, baseType: !5, size: 32, offset: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3304, file: !104, line: 721, baseType: !3389, size: 64, offset: 2368)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{null, !3160, !761}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3304, file: !104, line: 722, baseType: !3393, size: 64, offset: 2432)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !104, line: 722, flags: DIFlagFwdDecl)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3161, file: !97, line: 727, baseType: !3396, size: 64, offset: 4224)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !104, line: 742, size: 1792, elements: !3398)
!3398 = !{!3399, !3400, !3401, !3405, !3406, !3407}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3397, file: !104, line: 743, baseType: !3194, size: 1472)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3397, file: !104, line: 744, baseType: !3197, size: 64, offset: 1472)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3397, file: !104, line: 745, baseType: !3402, size: 64, offset: 1536)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{null, !3160, !829}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3397, file: !104, line: 746, baseType: !3197, size: 64, offset: 1600)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3397, file: !104, line: 747, baseType: !3188, size: 64, offset: 1664)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3397, file: !104, line: 748, baseType: !3188, size: 64, offset: 1728)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3161, file: !97, line: 736, baseType: !3409, size: 128, offset: 4288)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !97, line: 529, size: 128, elements: !3410)
!3410 = !{!3411, !3415}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3409, file: !97, line: 531, baseType: !3412, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3414, line: 13, flags: DIFlagFwdDecl)
!3414 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3409, file: !97, line: 532, baseType: !3416, size: 64, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !97, line: 49, flags: DIFlagFwdDecl)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3161, file: !97, line: 738, baseType: !3419, size: 64, offset: 4416)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3421)
!3421 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !97, line: 738, flags: DIFlagFwdDecl)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3161, file: !97, line: 740, baseType: !3423, size: 64, offset: 4480)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3161, file: !97, line: 741, baseType: !289, size: 64, offset: 4544)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3161, file: !97, line: 746, baseType: !289, size: 64, offset: 4608)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3161, file: !97, line: 747, baseType: !3427, size: 64, offset: 4672)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3429)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !97, line: 747, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3161, file: !97, line: 749, baseType: !3431, size: 64, offset: 4736)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !97, line: 428, size: 128, elements: !3433)
!3433 = !{!3434, !3435, !3436}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3432, file: !97, line: 433, baseType: !5, size: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3432, file: !97, line: 434, baseType: !5, size: 32, offset: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3432, file: !97, line: 435, baseType: !223, size: 64, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3161, file: !97, line: 751, baseType: !207, size: 128, offset: 4800)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3161, file: !97, line: 762, baseType: !3439, size: 64, offset: 4928)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !97, line: 762, flags: DIFlagFwdDecl)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3161, file: !97, line: 770, baseType: !3442, offset: 4992)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3443, line: 5, elements: !594)
!3443 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3161, file: !97, line: 772, baseType: !3445, size: 64, offset: 4992)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3447, line: 18, flags: DIFlagFwdDecl)
!3447 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3161, file: !97, line: 773, baseType: !3449, size: 64, offset: 5056)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3451, line: 41, size: 512, elements: !3452)
!3451 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3452 = !{!3453, !3454, !3548, !3549, !3550, !3551}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3450, file: !3451, line: 42, baseType: !3449, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3450, file: !3451, line: 43, baseType: !3455, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3457)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3451, line: 125, size: 1408, elements: !3458)
!3458 = !{!3459, !3463, !3467, !3473, !3477, !3478, !3483, !3487, !3491, !3495, !3499, !3500, !3504, !3508, !3512, !3523, !3524, !3525, !3526, !3536, !3540, !3544}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3457, file: !3451, line: 126, baseType: !3460, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!3449, !3449}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3457, file: !3451, line: 127, baseType: !3464, size: 64, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{null, !3449}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3457, file: !3451, line: 128, baseType: !3468, size: 64, offset: 128)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!829, !3471}
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3450)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3457, file: !3451, line: 129, baseType: !3474, size: 64, offset: 192)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!1942, !3471, !3180}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3457, file: !3451, line: 131, baseType: !3468, size: 64, offset: 256)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3457, file: !3451, line: 133, baseType: !3479, size: 64, offset: 320)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!3482, !3471}
!3482 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !3451, line: 132, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3457, file: !3451, line: 134, baseType: !3484, size: 64, offset: 384)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!829, !3471, !832}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3457, file: !3451, line: 136, baseType: !3488, size: 64, offset: 448)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!112, !3471, !832, !5, !190, !1145}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3457, file: !3451, line: 141, baseType: !3492, size: 64, offset: 512)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!112, !3471, !832, !2438, !1145}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3457, file: !3451, line: 144, baseType: !3496, size: 64, offset: 576)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!832, !3471}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3457, file: !3451, line: 145, baseType: !3496, size: 64, offset: 640)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3457, file: !3451, line: 146, baseType: !3501, size: 64, offset: 704)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!3449, !3471}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3457, file: !3451, line: 148, baseType: !3505, size: 64, offset: 768)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!3449, !3471, !3449}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3457, file: !3451, line: 151, baseType: !3509, size: 64, offset: 832)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!3449, !3471, !832}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3457, file: !3451, line: 153, baseType: !3513, size: 64, offset: 896)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!112, !3471, !832, !832, !5, !5, !3516}
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3451, line: 94, size: 640, elements: !3518)
!3518 = !{!3519, !3520, !3521}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3517, file: !3451, line: 95, baseType: !3449, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3517, file: !3451, line: 96, baseType: !5, size: 32, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3517, file: !3451, line: 97, baseType: !3522, size: 512, offset: 128)
!3522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 512, elements: !426)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3457, file: !3451, line: 158, baseType: !3505, size: 64, offset: 960)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3457, file: !3451, line: 161, baseType: !3501, size: 64, offset: 1024)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3457, file: !3451, line: 163, baseType: !3460, size: 64, offset: 1088)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3457, file: !3451, line: 164, baseType: !3527, size: 64, offset: 1152)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!112, !3471, !3530}
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3451, line: 73, size: 128, elements: !3532)
!3532 = !{!3533, !3534, !3535}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3531, file: !3451, line: 74, baseType: !5, size: 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3531, file: !3451, line: 75, baseType: !5, size: 32, offset: 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3531, file: !3451, line: 76, baseType: !3471, size: 64, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3457, file: !3451, line: 166, baseType: !3537, size: 64, offset: 1216)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!190, !3449, !112}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3457, file: !3451, line: 167, baseType: !3541, size: 64, offset: 1280)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!112, !3471, !5}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3457, file: !3451, line: 168, baseType: !3545, size: 64, offset: 1344)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!112, !3449}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3450, file: !3451, line: 44, baseType: !3160, size: 64, offset: 128)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3450, file: !3451, line: 45, baseType: !207, size: 128, offset: 192)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3450, file: !3451, line: 46, baseType: !207, size: 128, offset: 320)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3450, file: !3451, line: 47, baseType: !399, size: 8, offset: 448)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3161, file: !97, line: 776, baseType: !112, size: 32, offset: 5120)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3161, file: !97, line: 778, baseType: !1063, size: 32, offset: 5152)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3161, file: !97, line: 779, baseType: !186, size: 32, offset: 5184)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3161, file: !97, line: 781, baseType: !583, size: 32, offset: 5216)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3161, file: !97, line: 782, baseType: !207, size: 128, offset: 5248)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3161, file: !97, line: 784, baseType: !3558, size: 64, offset: 5376)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3560)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3561, line: 52, size: 768, elements: !3562)
!3561 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3562 = !{!3563, !3564, !3565, !3566, !3567, !3571, !3575, !3576, !3577, !3578, !3582, !3586}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3560, file: !3561, line: 53, baseType: !832, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3560, file: !3561, line: 55, baseType: !1327, size: 64, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3560, file: !3561, line: 56, baseType: !1327, size: 64, offset: 128)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3560, file: !3561, line: 58, baseType: !3177, size: 64, offset: 192)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3560, file: !3561, line: 59, baseType: !3568, size: 64, offset: 256)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!842, !3180, !3186}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3560, file: !3561, line: 61, baseType: !3572, size: 64, offset: 320)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{null, !3558}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3560, file: !3561, line: 62, baseType: !3188, size: 64, offset: 384)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3560, file: !3561, line: 64, baseType: !3197, size: 64, offset: 448)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3560, file: !3561, line: 66, baseType: !1925, size: 64, offset: 512)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3560, file: !3561, line: 67, baseType: !3579, size: 64, offset: 576)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!1942, !3180}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3560, file: !3561, line: 69, baseType: !3583, size: 64, offset: 640)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{null, !3180, !1959, !1960}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3560, file: !3561, line: 71, baseType: !3192, size: 64, offset: 704)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3161, file: !97, line: 785, baseType: !1327, size: 64, offset: 5440)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3161, file: !97, line: 787, baseType: !3188, size: 64, offset: 5504)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3161, file: !97, line: 788, baseType: !3590, size: 64, offset: 5568)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !97, line: 46, flags: DIFlagFwdDecl)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3161, file: !97, line: 789, baseType: !3593, size: 64, offset: 5632)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !97, line: 48, flags: DIFlagFwdDecl)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3161, file: !97, line: 791, baseType: !3596, size: 64, offset: 5696)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !97, line: 597, size: 128, elements: !3598)
!3598 = !{!3599, !3600, !3601, !3602, !3603}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3597, file: !97, line: 598, baseType: !119, size: 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3597, file: !97, line: 599, baseType: !128, size: 32, offset: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3597, file: !97, line: 600, baseType: !133, size: 32, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3597, file: !97, line: 601, baseType: !829, size: 8, offset: 96)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3597, file: !97, line: 602, baseType: !829, size: 8, offset: 104)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3161, file: !97, line: 793, baseType: !138, size: 32, offset: 5760)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3161, file: !97, line: 795, baseType: !829, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3161, file: !97, line: 796, baseType: !829, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3161, file: !97, line: 797, baseType: !829, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3161, file: !97, line: 798, baseType: !829, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3161, file: !97, line: 799, baseType: !829, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !2889, file: !145, line: 451, baseType: !111, size: 32, offset: 1536)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !2889, file: !145, line: 457, baseType: !223, size: 64, offset: 1600)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !2889, file: !145, line: 459, baseType: !5, size: 32, offset: 1664)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !2889, file: !145, line: 466, baseType: !5, size: 32, offset: 1696)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2889, file: !145, line: 468, baseType: !2350, size: 320, offset: 1728)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !2889, file: !145, line: 469, baseType: !2362, size: 256, offset: 2048)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !2889, file: !145, line: 471, baseType: !235, size: 32, offset: 2304)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !2889, file: !145, line: 473, baseType: !3012, size: 64, offset: 2368)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2889, file: !145, line: 475, baseType: !207, size: 128, offset: 2432)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !2889, file: !145, line: 477, baseType: !516, size: 64, offset: 2560)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !2889, file: !145, line: 478, baseType: !2815, size: 64, offset: 2624)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !2889, file: !145, line: 479, baseType: !207, size: 128, offset: 2688)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !2889, file: !145, line: 480, baseType: !629, size: 256, offset: 2816)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2889, file: !145, line: 483, baseType: !3624, size: 960, offset: 3072)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !145, line: 300, size: 960, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !3624, file: !145, line: 301, baseType: !144, size: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !3624, file: !145, line: 302, baseType: !223, size: 64, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !3624, file: !145, line: 303, baseType: !223, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !3624, file: !145, line: 305, baseType: !5, size: 32, offset: 192)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !3624, file: !145, line: 306, baseType: !5, size: 32, offset: 224)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !3624, file: !145, line: 307, baseType: !5, size: 32, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !3624, file: !145, line: 308, baseType: !5, size: 32, offset: 288)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !3624, file: !145, line: 309, baseType: !5, size: 32, offset: 320)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3624, file: !145, line: 310, baseType: !5, size: 32, offset: 352)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !3624, file: !145, line: 311, baseType: !5, size: 32, offset: 384)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !3624, file: !145, line: 312, baseType: !5, size: 32, offset: 416)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !3624, file: !145, line: 313, baseType: !5, size: 32, offset: 448)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !3624, file: !145, line: 314, baseType: !5, size: 32, offset: 480)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !3624, file: !145, line: 315, baseType: !5, size: 32, offset: 512)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !3624, file: !145, line: 316, baseType: !5, size: 32, offset: 544)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !3624, file: !145, line: 317, baseType: !5, size: 32, offset: 576)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !3624, file: !145, line: 318, baseType: !5, size: 32, offset: 608)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !3624, file: !145, line: 319, baseType: !5, size: 32, offset: 640)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !3624, file: !145, line: 320, baseType: !5, size: 32, offset: 672)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !3624, file: !145, line: 321, baseType: !5, size: 32, offset: 704)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !3624, file: !145, line: 322, baseType: !5, size: 32, offset: 736)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !3624, file: !145, line: 323, baseType: !5, size: 32, offset: 768)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !3624, file: !145, line: 325, baseType: !260, size: 16, offset: 800)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !3624, file: !145, line: 326, baseType: !260, size: 16, offset: 816)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !3624, file: !145, line: 327, baseType: !260, size: 16, offset: 832)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !3624, file: !145, line: 329, baseType: !401, size: 8, offset: 848)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !3624, file: !145, line: 330, baseType: !401, size: 8, offset: 856)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !3624, file: !145, line: 331, baseType: !401, size: 8, offset: 864)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !3624, file: !145, line: 332, baseType: !149, size: 32, offset: 896)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !3624, file: !145, line: 339, baseType: !5, size: 32, offset: 928)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !2889, file: !145, line: 485, baseType: !5, size: 32, offset: 4032)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2889, file: !145, line: 487, baseType: !112, size: 32, offset: 4064)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !2889, file: !145, line: 489, baseType: !3659, size: 64, offset: 4096)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !145, line: 31, flags: DIFlagFwdDecl)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2889, file: !145, line: 494, baseType: !2980, size: 64, offset: 4160)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !2889, file: !145, line: 495, baseType: !207, size: 128, offset: 4224)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !2889, file: !145, line: 497, baseType: !207, size: 128, offset: 4352)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !2889, file: !145, line: 498, baseType: !583, size: 32, offset: 4480)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !2889, file: !145, line: 499, baseType: !2418, size: 704, offset: 4544)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2889, file: !145, line: 501, baseType: !629, size: 256, offset: 5248)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !2889, file: !145, line: 502, baseType: !629, size: 256, offset: 5504)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !2889, file: !145, line: 508, baseType: !207, size: 128, offset: 5760)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !2889, file: !145, line: 509, baseType: !583, size: 32, offset: 5888)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !2889, file: !145, line: 511, baseType: !112, size: 32, offset: 5920)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2889, file: !145, line: 517, baseType: !609, size: 128, align: 64, offset: 5952)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !2889, file: !145, line: 518, baseType: !692, size: 192, offset: 6080)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !2889, file: !145, line: 523, baseType: !629, size: 256, offset: 6272)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !2889, file: !145, line: 525, baseType: !112, size: 32, offset: 6528)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !2889, file: !145, line: 527, baseType: !3104, size: 64, offset: 6592)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !2889, file: !145, line: 528, baseType: !207, size: 128, offset: 6656)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2889, file: !145, line: 530, baseType: !953, size: 64, offset: 6784)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !2889, file: !145, line: 531, baseType: !953, size: 64, offset: 6848)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !2889, file: !145, line: 532, baseType: !953, size: 64, offset: 6912)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !2889, file: !145, line: 536, baseType: !629, size: 256, offset: 6976)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !2889, file: !145, line: 538, baseType: !829, size: 8, offset: 7232)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !2885, file: !86, line: 82, baseType: !3000, size: 64, offset: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !2885, file: !86, line: 83, baseType: !2961, size: 64, offset: 128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !2885, file: !86, line: 85, baseType: !2795, size: 32, offset: 192)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !2885, file: !86, line: 86, baseType: !3686, size: 32, offset: 224)
!3686 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !86, line: 27, baseType: !188)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !2885, file: !86, line: 88, baseType: !112, size: 32, offset: 256)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !2885, file: !86, line: 89, baseType: !112, size: 32, offset: 288)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2885, file: !86, line: 91, baseType: !5, size: 32, offset: 320)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !2885, file: !86, line: 94, baseType: !5, size: 32, offset: 352)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !2885, file: !86, line: 95, baseType: !1768, size: 64, offset: 384)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !2885, file: !86, line: 97, baseType: !2789, size: 64, offset: 448)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !2885, file: !86, line: 98, baseType: !2789, size: 64, offset: 512)
!3694 = !DIDerivedType(tag: DW_TAG_member, scope: !2885, file: !86, line: 100, baseType: !3695, size: 128, offset: 576)
!3695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2885, file: !86, line: 100, size: 128, elements: !3696)
!3696 = !{!3697, !3698}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !3695, file: !86, line: 101, baseType: !207, size: 128)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "rq_next", scope: !3695, file: !86, line: 102, baseType: !2884, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2885, file: !86, line: 105, baseType: !2759, size: 64, offset: 704)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_time_ns", scope: !2885, file: !86, line: 108, baseType: !289, size: 64, offset: 768)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !2885, file: !86, line: 111, baseType: !289, size: 64, offset: 832)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !2885, file: !86, line: 113, baseType: !289, size: 64, offset: 896)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !2885, file: !86, line: 123, baseType: !260, size: 16, offset: 960)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !2885, file: !86, line: 129, baseType: !260, size: 16, offset: 976)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2885, file: !86, line: 140, baseType: !260, size: 16, offset: 992)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2885, file: !86, line: 142, baseType: !154, size: 32, offset: 1024)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2885, file: !86, line: 143, baseType: !235, size: 32, offset: 1056)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2885, file: !86, line: 145, baseType: !223, size: 64, offset: 1088)
!3709 = !DIDerivedType(tag: DW_TAG_member, scope: !2885, file: !86, line: 154, baseType: !3710, size: 128, offset: 1152)
!3710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2885, file: !86, line: 154, size: 128, elements: !3711)
!3711 = !{!3712, !3713}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3710, file: !86, line: 155, baseType: !683, size: 128)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !3710, file: !86, line: 156, baseType: !247, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, scope: !2885, file: !86, line: 165, baseType: !3715, size: 192, offset: 1280)
!3715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2885, file: !86, line: 165, size: 192, elements: !3716)
!3716 = !{!3717, !3718}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3715, file: !86, line: 166, baseType: !281, size: 192, align: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !3715, file: !86, line: 167, baseType: !1849, size: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !2885, file: !86, line: 177, baseType: !3720, size: 192, offset: 1472)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2885, file: !86, line: 174, size: 192, elements: !3721)
!3721 = !{!3722, !3746}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !3720, file: !86, line: 175, baseType: !3723, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3725, line: 73, size: 448, elements: !3726)
!3725 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3726 = !{!3727, !3728, !3735, !3740, !3745}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3724, file: !3725, line: 74, baseType: !2888, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3724, file: !3725, line: 75, baseType: !3729, size: 64, offset: 64)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3725, line: 99, size: 128, elements: !3731)
!3731 = !{!3732, !3733, !3734}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3730, file: !3725, line: 100, baseType: !622, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3730, file: !3725, line: 101, baseType: !235, size: 32, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3730, file: !3725, line: 103, baseType: !260, size: 16, offset: 96)
!3735 = !DIDerivedType(tag: DW_TAG_member, scope: !3724, file: !3725, line: 83, baseType: !3736, size: 128, offset: 128)
!3736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3724, file: !3725, line: 83, size: 128, elements: !3737)
!3737 = !{!3738, !3739}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3736, file: !3725, line: 84, baseType: !207, size: 128)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3736, file: !3725, line: 85, baseType: !2835, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, scope: !3724, file: !3725, line: 87, baseType: !3741, size: 128, offset: 256)
!3741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3724, file: !3725, line: 87, size: 128, elements: !3742)
!3742 = !{!3743, !3744}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3741, file: !3725, line: 88, baseType: !683, size: 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3741, file: !3725, line: 89, baseType: !609, size: 128, align: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3724, file: !3725, line: 92, baseType: !5, size: 32, offset: 384)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3720, file: !86, line: 176, baseType: !3747, size: 128, offset: 64)
!3747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 128, elements: !2239)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2885, file: !86, line: 182, baseType: !3749, size: 128, offset: 1664)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2885, file: !86, line: 179, size: 128, elements: !3750)
!3750 = !{!3751, !3752}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3749, file: !86, line: 180, baseType: !5, size: 32)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !3749, file: !86, line: 181, baseType: !3753, size: 64, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !86, line: 23, baseType: !3755)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!159, !2884, !2799}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !2885, file: !86, line: 184, baseType: !289, size: 64, offset: 1792)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !2885, file: !86, line: 189, baseType: !3753, size: 64, offset: 1856)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !2885, file: !86, line: 190, baseType: !190, size: 64, offset: 1920)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !2881, file: !145, line: 1561, baseType: !829, size: 8, offset: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2881, file: !145, line: 1562, baseType: !3762, size: 64, offset: 128)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{null, !2880}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2783, file: !145, line: 1392, baseType: !3766, size: 64, offset: 128)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!112, !2766, !3769}
!3769 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !145, line: 115, baseType: !5)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2783, file: !145, line: 1393, baseType: !3771, size: 64, offset: 192)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{null, !2766}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2783, file: !145, line: 1394, baseType: !3775, size: 64, offset: 256)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!112, !2759, !3769, !5, !223}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2783, file: !145, line: 1396, baseType: !3775, size: 64, offset: 320)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2783, file: !145, line: 1398, baseType: !3780, size: 64, offset: 384)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!5, !2766, !5}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2783, file: !145, line: 1400, baseType: !3771, size: 64, offset: 448)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2783, file: !145, line: 1401, baseType: !3785, size: 64, offset: 512)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!112, !2759, !3788}
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !12, line: 56, flags: DIFlagFwdDecl)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !2783, file: !145, line: 1402, baseType: !3791, size: 64, offset: 576)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!112, !2759, !829}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !2783, file: !145, line: 1403, baseType: !3771, size: 64, offset: 640)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2783, file: !145, line: 1405, baseType: !3796, size: 64, offset: 704)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{null, !2759, !223}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2783, file: !145, line: 1406, baseType: !3800, size: 64, offset: 768)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!112, !2766, !1768, !5, !3803, !190}
!3803 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !145, line: 342, baseType: !3804)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!112, !3807, !5, !190}
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !3809, line: 106, size: 512, elements: !3810)
!3809 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!3810 = !{!3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3820, !3821}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3808, file: !3809, line: 107, baseType: !290, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3808, file: !3809, line: 108, baseType: !290, size: 64, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !3808, file: !3809, line: 109, baseType: !290, size: 64, offset: 128)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3808, file: !3809, line: 110, baseType: !400, size: 8, offset: 192)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !3808, file: !3809, line: 111, baseType: !400, size: 8, offset: 200)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !3808, file: !3809, line: 112, baseType: !400, size: 8, offset: 208)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !3808, file: !3809, line: 113, baseType: !400, size: 8, offset: 216)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !3808, file: !3809, line: 114, baseType: !3819, size: 32, offset: 224)
!3819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 32, elements: !688)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !3808, file: !3809, line: 115, baseType: !290, size: 64, offset: 256)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3808, file: !3809, line: 116, baseType: !3822, size: 192, offset: 320)
!3822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 192, elements: !3823)
!3823 = !{!3824}
!3824 = !DISubrange(count: 24)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2783, file: !145, line: 1408, baseType: !3826, size: 64, offset: 832)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!842, !2766, !3186}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !2783, file: !145, line: 1410, baseType: !3830, size: 64, offset: 896)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!112, !2766, !3833, !163}
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2783, file: !145, line: 1412, baseType: !1234, size: 64, offset: 960)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2783, file: !145, line: 1413, baseType: !3836, size: 64, offset: 1024)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3838)
!3838 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !145, line: 37, flags: DIFlagFwdDecl)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !2783, file: !145, line: 1420, baseType: !3840, size: 64, offset: 1088)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!112, !2766, !1891}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2767, file: !145, line: 146, baseType: !2888, size: 64, offset: 640)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2767, file: !145, line: 147, baseType: !190, size: 64, offset: 704)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !2767, file: !145, line: 149, baseType: !2831, size: 1984, offset: 768)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2767, file: !145, line: 151, baseType: !112, size: 32, offset: 2752)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2767, file: !145, line: 152, baseType: !223, size: 64, offset: 2816)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !2767, file: !145, line: 161, baseType: !629, size: 256, offset: 2880)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !2767, file: !145, line: 162, baseType: !5, size: 32, offset: 3136)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2767, file: !145, line: 164, baseType: !3851, size: 64, offset: 3200)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !12, line: 50, flags: DIFlagFwdDecl)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !2767, file: !145, line: 165, baseType: !1247, size: 512, offset: 3264)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !2767, file: !145, line: 166, baseType: !1253, size: 64, offset: 3776)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !2767, file: !145, line: 168, baseType: !207, size: 128, offset: 3840)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !2767, file: !145, line: 170, baseType: !3857, size: 64, offset: 3968)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !145, line: 170, flags: DIFlagFwdDecl)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !2767, file: !145, line: 171, baseType: !235, size: 32, offset: 4032)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !2767, file: !145, line: 172, baseType: !3861, size: 64, offset: 4096)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !145, line: 104, flags: DIFlagFwdDecl)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !2767, file: !145, line: 197, baseType: !3864, size: 64, offset: 4160)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !145, line: 197, flags: DIFlagFwdDecl)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2767, file: !145, line: 199, baseType: !112, size: 32, offset: 4224)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2767, file: !145, line: 200, baseType: !3868, size: 64, offset: 4288)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !145, line: 105, flags: DIFlagFwdDecl)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !2767, file: !145, line: 201, baseType: !2389, offset: 4352)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !2767, file: !145, line: 202, baseType: !289, size: 64, offset: 4352)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !2767, file: !145, line: 203, baseType: !3769, size: 32, offset: 4416)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !2767, file: !145, line: 209, baseType: !3874, size: 64, offset: 4480)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !145, line: 384, size: 576, elements: !3876)
!3876 = !{!3877, !3878, !3879, !3880}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3875, file: !145, line: 385, baseType: !1247, size: 512)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !3875, file: !145, line: 386, baseType: !829, size: 8, offset: 512)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !3875, file: !145, line: 387, baseType: !5, size: 32, offset: 544)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !3875, file: !145, line: 388, baseType: !3881, offset: 576)
!3881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3882, elements: !706)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !145, line: 378, size: 640, elements: !3883)
!3883 = !{!3884, !3885, !3886}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3882, file: !145, line: 379, baseType: !1247, size: 512)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !3882, file: !145, line: 380, baseType: !1768, size: 64, offset: 512)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !3882, file: !145, line: 381, baseType: !1768, size: 64, offset: 576)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2760, file: !2761, line: 44, baseType: !2888, size: 64, offset: 192)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2760, file: !2761, line: 45, baseType: !3889, size: 64, offset: 256)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2761, line: 45, flags: DIFlagFwdDecl)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2760, file: !2761, line: 46, baseType: !223, size: 64, offset: 320)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2760, file: !2761, line: 47, baseType: !829, size: 8, offset: 384)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2760, file: !2761, line: 48, baseType: !399, size: 8, offset: 392)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2760, file: !2761, line: 49, baseType: !829, size: 8, offset: 400)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2760, file: !2761, line: 50, baseType: !829, size: 8, offset: 408)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2760, file: !2761, line: 51, baseType: !1063, size: 32, offset: 416)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2760, file: !2761, line: 52, baseType: !235, size: 32, offset: 448)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2760, file: !2761, line: 53, baseType: !583, size: 32, offset: 480)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2760, file: !2761, line: 54, baseType: !988, size: 64, offset: 512)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2760, file: !2761, line: 55, baseType: !190, size: 64, offset: 576)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2760, file: !2761, line: 56, baseType: !190, size: 64, offset: 640)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2760, file: !2761, line: 57, baseType: !3903, size: 64, offset: 704)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3905)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !145, line: 1477, size: 128, elements: !3906)
!3906 = !{!3907, !3911}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !3905, file: !145, line: 1478, baseType: !3908, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{null, !2759, !829}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3905, file: !145, line: 1483, baseType: !3912, size: 64, offset: 64)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{null, !2759}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2760, file: !2761, line: 58, baseType: !629, size: 256, offset: 768)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2760, file: !2761, line: 60, baseType: !112, size: 32, offset: 1024)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2760, file: !2761, line: 61, baseType: !112, size: 32, offset: 1056)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2760, file: !2761, line: 62, baseType: !1253, size: 64, offset: 1088)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2760, file: !2761, line: 65, baseType: !629, size: 256, offset: 1152)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2760, file: !2761, line: 66, baseType: !1201, size: 64, offset: 1408)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2760, file: !2761, line: 68, baseType: !3922, size: 64, offset: 1472)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !145, line: 63, size: 808, elements: !3924)
!3924 = !{!3925, !3929}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !3923, file: !145, line: 64, baseType: !3926, size: 296)
!3926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 296, elements: !3927)
!3927 = !{!3928}
!3928 = !DISubrange(count: 37)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !3923, file: !145, line: 65, baseType: !3930, size: 512, offset: 296)
!3930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 512, elements: !1290)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2760, file: !2761, line: 72, baseType: !829, size: 8, offset: 1536)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2760, file: !2761, line: 77, baseType: !3161, size: 5824, offset: 1600)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1202, file: !12, line: 1226, baseType: !3934, size: 64, offset: 1664)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !145, line: 1495, size: 128, elements: !3936)
!3936 = !{!3937, !3938}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3935, file: !145, line: 1496, baseType: !2759, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3935, file: !145, line: 1497, baseType: !190, size: 64, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1202, file: !12, line: 1227, baseType: !3851, size: 64, offset: 1728)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1202, file: !12, line: 1228, baseType: !3941, size: 64, offset: 1792)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !12, line: 1228, flags: DIFlagFwdDecl)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1202, file: !12, line: 1229, baseType: !683, size: 128, offset: 1856)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1202, file: !12, line: 1230, baseType: !5, size: 32, offset: 1984)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1202, file: !12, line: 1231, baseType: !3946, size: 2496, offset: 2048)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !49, line: 521, size: 2496, elements: !3947)
!3947 = !{!3948, !3949, !3950, !3952, !3984}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3946, file: !49, line: 522, baseType: !5, size: 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3946, file: !49, line: 523, baseType: !769, size: 320, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3946, file: !49, line: 524, baseType: !3951, size: 192, offset: 384)
!3951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !988, size: 192, elements: !667)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3946, file: !49, line: 525, baseType: !3953, size: 1728, offset: 576)
!3953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3954, size: 1728, elements: !667)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !49, line: 222, size: 576, elements: !3955)
!3955 = !{!3956, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3954, file: !49, line: 223, baseType: !3957, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !49, line: 445, size: 256, elements: !3959)
!3959 = !{!3960, !3961, !3974, !3975}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3958, file: !49, line: 446, baseType: !112, size: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3958, file: !49, line: 447, baseType: !3962, size: 64, offset: 64)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3964)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !49, line: 312, size: 512, elements: !3965)
!3965 = !{!3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3964, file: !49, line: 313, baseType: !2510, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3964, file: !49, line: 314, baseType: !2510, size: 64, offset: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3964, file: !49, line: 315, baseType: !2510, size: 64, offset: 128)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3964, file: !49, line: 316, baseType: !2510, size: 64, offset: 192)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3964, file: !49, line: 317, baseType: !2619, size: 64, offset: 256)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3964, file: !49, line: 318, baseType: !2619, size: 64, offset: 320)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3964, file: !49, line: 319, baseType: !2619, size: 64, offset: 384)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3964, file: !49, line: 320, baseType: !2649, size: 64, offset: 448)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3958, file: !49, line: 448, baseType: !1234, size: 64, offset: 128)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3958, file: !49, line: 449, baseType: !3957, size: 64, offset: 192)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3954, file: !49, line: 224, baseType: !112, size: 32, offset: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3954, file: !49, line: 226, baseType: !207, size: 128, offset: 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3954, file: !49, line: 227, baseType: !223, size: 64, offset: 256)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3954, file: !49, line: 228, baseType: !5, size: 32, offset: 320)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3954, file: !49, line: 229, baseType: !5, size: 32, offset: 352)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3954, file: !49, line: 230, baseType: !2587, size: 64, offset: 384)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3954, file: !49, line: 231, baseType: !2587, size: 64, offset: 448)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3954, file: !49, line: 232, baseType: !190, size: 64, offset: 512)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3946, file: !49, line: 526, baseType: !3985, size: 192, offset: 2304)
!3985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3962, size: 192, elements: !667)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1202, file: !12, line: 1233, baseType: !3987, size: 2368, offset: 4544)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !12, line: 1184, size: 2368, elements: !3988)
!3988 = !{!3989, !3990, !3991}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3987, file: !12, line: 1185, baseType: !260, size: 16)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3987, file: !12, line: 1186, baseType: !260, size: 16, offset: 16)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3987, file: !12, line: 1187, baseType: !3992, size: 2304, offset: 64)
!3992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3993, size: 2304, elements: !667)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3994, line: 12, size: 768, elements: !3995)
!3994 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3995 = !{!3996, !4004, !4005, !4010, !4011}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3993, file: !3994, line: 13, baseType: !3997, size: 384)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3998, line: 17, size: 384, elements: !3999)
!3998 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3999 = !{!4000, !4001, !4002, !4003}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3997, file: !3998, line: 18, baseType: !112, size: 32)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3997, file: !3998, line: 19, baseType: !112, size: 32, offset: 32)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3997, file: !3998, line: 20, baseType: !692, size: 192, offset: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3997, file: !3998, line: 22, baseType: !609, size: 128, align: 64, offset: 256)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3993, file: !3994, line: 14, baseType: !2201, size: 64, offset: 384)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3993, file: !3994, line: 15, baseType: !4006, size: 64, offset: 448)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4007, line: 16, size: 64, elements: !4008)
!4007 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4008 = !{!4009}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4006, file: !4007, line: 17, baseType: !214, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3993, file: !3994, line: 16, baseType: !692, size: 192, offset: 512)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3993, file: !3994, line: 17, baseType: !235, size: 32, offset: 704)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1202, file: !12, line: 1240, baseType: !190, size: 64, offset: 6912)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1202, file: !12, line: 1243, baseType: !186, size: 32, offset: 6976)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1202, file: !12, line: 1245, baseType: !785, size: 64, offset: 7040)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1202, file: !12, line: 1246, baseType: !785, size: 64, offset: 7104)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1202, file: !12, line: 1248, baseType: !188, size: 32, offset: 7168)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1202, file: !12, line: 1249, baseType: !4018, size: 64, offset: 7232)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !12, line: 634, flags: DIFlagFwdDecl)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1202, file: !12, line: 1252, baseType: !2773, size: 256, offset: 7296)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1202, file: !12, line: 1253, baseType: !4022, size: 128, offset: 7552)
!4022 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4023, line: 21, baseType: !4024)
!4023 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4023, line: 19, size: 128, elements: !4025)
!4025 = !{!4026}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4024, file: !4023, line: 20, baseType: !4027, size: 128)
!4027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 128, elements: !4028)
!4028 = !{!4029}
!4029 = !DISubrange(count: 16)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1202, file: !12, line: 1255, baseType: !5, size: 32, offset: 7680)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1202, file: !12, line: 1261, baseType: !629, size: 256, offset: 7744)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1202, file: !12, line: 1267, baseType: !832, size: 64, offset: 8000)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1202, file: !12, line: 1269, baseType: !4034, size: 64, offset: 8064)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4036)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !955, line: 128, size: 1024, align: 512, elements: !4037)
!4037 = !{!4038, !4042, !4043, !4050, !4056, !4060, !4064, !4068, !4069, !4073, !4077, !4082, !4086}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4036, file: !955, line: 129, baseType: !4039, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!112, !953, !5}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4036, file: !955, line: 130, baseType: !4039, size: 64, offset: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4036, file: !955, line: 131, baseType: !4044, size: 64, offset: 128)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!112, !4047, !4049}
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !954)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4036, file: !955, line: 132, baseType: !4051, size: 64, offset: 192)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!112, !4047, !5, !832, !4054}
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !973)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4036, file: !955, line: 134, baseType: !4057, size: 64, offset: 256)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!112, !4047}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4036, file: !955, line: 135, baseType: !4061, size: 64, offset: 320)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!112, !953}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4036, file: !955, line: 136, baseType: !4065, size: 64, offset: 384)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{null, !953}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4036, file: !955, line: 137, baseType: !4065, size: 64, offset: 448)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4036, file: !955, line: 138, baseType: !4070, size: 64, offset: 512)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{null, !953, !988}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4036, file: !955, line: 139, baseType: !4074, size: 64, offset: 576)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!842, !953, !842, !112}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4036, file: !955, line: 140, baseType: !4078, size: 64, offset: 640)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!948, !4081}
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4036, file: !955, line: 141, baseType: !4083, size: 64, offset: 704)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!112, !1111, !829}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4036, file: !955, line: 142, baseType: !4087, size: 64, offset: 768)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!953, !953, !4090}
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !989)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1202, file: !12, line: 1271, baseType: !4093, size: 448, offset: 8128)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2602, line: 63, size: 448, elements: !4094)
!4094 = !{!4095, !4100, !4101, !4102, !4103, !4104, !4105}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4093, file: !2602, line: 64, baseType: !4096, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!223, !4099, !2600}
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4093, file: !2602, line: 66, baseType: !4096, size: 64, offset: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4093, file: !2602, line: 69, baseType: !1103, size: 64, offset: 128)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4093, file: !2602, line: 70, baseType: !112, size: 32, offset: 192)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4093, file: !2602, line: 71, baseType: !5, size: 32, offset: 224)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4093, file: !2602, line: 74, baseType: !207, size: 128, offset: 256)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4093, file: !2602, line: 85, baseType: !4106, size: 64, offset: 384)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1202, file: !12, line: 1274, baseType: !622, size: 64, offset: 8576)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1202, file: !12, line: 1280, baseType: !622, size: 64, offset: 8640)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1202, file: !12, line: 1283, baseType: !112, size: 32, offset: 8704)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1202, file: !12, line: 1286, baseType: !1903, size: 32, offset: 8736)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1202, file: !12, line: 1289, baseType: !2423, size: 64, offset: 8768)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1202, file: !12, line: 1290, baseType: !679, size: 64, offset: 8832)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1202, file: !12, line: 1297, baseType: !915, size: 64, offset: 8896)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1202, file: !12, line: 1304, baseType: !4115, size: 64, offset: 8960)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4116, line: 49, size: 64, elements: !4117)
!4116 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4117 = !{!4118}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4115, file: !4116, line: 50, baseType: !4119, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4116, line: 41, size: 512, align: 512, elements: !4121)
!4121 = !{!4122, !4123, !4128}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4120, file: !4116, line: 43, baseType: !583, size: 32)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4120, file: !4116, line: 45, baseType: !4124, size: 192, offset: 64)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4116, line: 29, size: 192, elements: !4125)
!4125 = !{!4126, !4127}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4124, file: !4116, line: 30, baseType: !207, size: 128)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4124, file: !4116, line: 32, baseType: !1103, size: 64, offset: 128)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4120, file: !4116, line: 46, baseType: !1103, size: 64, offset: 256)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1202, file: !12, line: 1305, baseType: !4115, size: 64, offset: 9024)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1202, file: !12, line: 1306, baseType: !609, size: 128, align: 64, offset: 9088)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1202, file: !12, line: 1307, baseType: !2362, size: 256, offset: 9216)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1202, file: !12, line: 1309, baseType: !629, size: 256, offset: 9472)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1202, file: !12, line: 1314, baseType: !112, size: 32, offset: 9728)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1202, file: !12, line: 1317, baseType: !583, size: 32, align: 512, offset: 10240)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1202, file: !12, line: 1318, baseType: !207, size: 128, offset: 10304)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1202, file: !12, line: 1320, baseType: !583, size: 32, offset: 10432)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1202, file: !12, line: 1321, baseType: !207, size: 128, offset: 10496)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !989, file: !12, line: 656, baseType: !1351, size: 64, offset: 512)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !989, file: !12, line: 659, baseType: !190, size: 64, offset: 576)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !989, file: !12, line: 663, baseType: !223, size: 64, offset: 640)
!4141 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !12, line: 671, baseType: !4142, size: 32, offset: 704)
!4142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !989, file: !12, line: 671, size: 32, elements: !4143)
!4143 = !{!4144, !4146}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4142, file: !12, line: 672, baseType: !4145, size: 32)
!4145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4142, file: !12, line: 673, baseType: !5, size: 32)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !989, file: !12, line: 675, baseType: !1063, size: 32, offset: 736)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !989, file: !12, line: 676, baseType: !641, size: 64, offset: 768)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !989, file: !12, line: 677, baseType: !1099, size: 128, offset: 832)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !989, file: !12, line: 678, baseType: !1099, size: 128, offset: 960)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !989, file: !12, line: 679, baseType: !1099, size: 128, offset: 1088)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !989, file: !12, line: 680, baseType: !583, size: 32, offset: 1216)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !989, file: !12, line: 681, baseType: !260, size: 16, offset: 1248)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !989, file: !12, line: 682, baseType: !399, size: 8, offset: 1264)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !989, file: !12, line: 683, baseType: !399, size: 8, offset: 1272)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !989, file: !12, line: 684, baseType: !2733, size: 64, offset: 1280)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !989, file: !12, line: 691, baseType: !223, size: 64, offset: 1344)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !989, file: !12, line: 692, baseType: !769, size: 320, offset: 1408)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !989, file: !12, line: 694, baseType: !223, size: 64, offset: 1728)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !989, file: !12, line: 695, baseType: !223, size: 64, offset: 1792)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !989, file: !12, line: 697, baseType: !683, size: 128, offset: 1856)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !989, file: !12, line: 698, baseType: !207, size: 128, offset: 1984)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !989, file: !12, line: 707, baseType: !207, size: 128, offset: 2112)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !989, file: !12, line: 708, baseType: !207, size: 128, offset: 2240)
!4165 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !12, line: 709, baseType: !4166, size: 128, offset: 2368)
!4166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !989, file: !12, line: 709, size: 128, elements: !4167)
!4167 = !{!4168, !4169}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4166, file: !12, line: 710, baseType: !679, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4166, file: !12, line: 711, baseType: !609, size: 128, align: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !989, file: !12, line: 713, baseType: !624, size: 64, offset: 2496)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !989, file: !12, line: 714, baseType: !624, size: 64, offset: 2560)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !989, file: !12, line: 715, baseType: !235, size: 32, offset: 2624)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !989, file: !12, line: 716, baseType: !235, size: 32, offset: 2656)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !989, file: !12, line: 717, baseType: !235, size: 32, offset: 2688)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !989, file: !12, line: 719, baseType: !235, size: 32, offset: 2720)
!4176 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !12, line: 721, baseType: !4177, size: 64, offset: 2752)
!4177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !989, file: !12, line: 721, size: 64, elements: !4178)
!4178 = !{!4179, !4303}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4177, file: !12, line: 722, baseType: !4180, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4182)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !12, line: 1914, size: 2112, elements: !4183)
!4183 = !{!4184, !4185, !4189, !4193, !4197, !4198, !4199, !4203, !4216, !4220, !4224, !4225, !4229, !4230, !4234, !4239, !4240, !4244, !4248, !4254, !4255, !4259, !4260, !4266, !4270, !4271, !4276, !4280, !4284, !4288, !4292, !4293, !4299}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4182, file: !12, line: 1915, baseType: !1234, size: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4182, file: !12, line: 1916, baseType: !4186, size: 64, offset: 64)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!641, !601, !641, !112}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4182, file: !12, line: 1917, baseType: !4190, size: 64, offset: 128)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!1142, !601, !842, !1145, !2028}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4182, file: !12, line: 1918, baseType: !4194, size: 64, offset: 192)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!1142, !601, !832, !1145, !2028}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4182, file: !12, line: 1919, baseType: !1782, size: 64, offset: 256)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4182, file: !12, line: 1920, baseType: !1782, size: 64, offset: 320)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4182, file: !12, line: 1921, baseType: !4200, size: 64, offset: 384)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!112, !1785, !2880, !5}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4182, file: !12, line: 1923, baseType: !4204, size: 64, offset: 448)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!112, !601, !4207}
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !12, line: 1858, size: 128, elements: !4209)
!4209 = !{!4210, !4215}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4208, file: !12, line: 1859, baseType: !4211, size: 64)
!4211 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !12, line: 1855, baseType: !4212)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!829, !4207, !832, !112, !641, !289, !5}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4208, file: !12, line: 1860, baseType: !641, size: 64, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4182, file: !12, line: 1924, baseType: !4217, size: 64, offset: 512)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!2075, !601, !2077}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4182, file: !12, line: 1925, baseType: !4221, size: 64, offset: 576)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!1103, !601, !5, !223}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4182, file: !12, line: 1926, baseType: !4221, size: 64, offset: 640)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4182, file: !12, line: 1927, baseType: !4226, size: 64, offset: 704)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!112, !601, !1491}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4182, file: !12, line: 1928, baseType: !223, size: 64, offset: 768)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4182, file: !12, line: 1929, baseType: !4231, size: 64, offset: 832)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!112, !988, !601}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4182, file: !12, line: 1930, baseType: !4235, size: 64, offset: 896)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!112, !601, !4238}
!4238 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !12, line: 1061, baseType: !190)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4182, file: !12, line: 1931, baseType: !4231, size: 64, offset: 960)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4182, file: !12, line: 1932, baseType: !4241, size: 64, offset: 1024)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!112, !601, !641, !641, !112}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4182, file: !12, line: 1933, baseType: !4245, size: 64, offset: 1088)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!112, !112, !601, !112}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4182, file: !12, line: 1934, baseType: !4249, size: 64, offset: 1152)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!112, !601, !112, !4252}
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !12, line: 1063, flags: DIFlagFwdDecl)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4182, file: !12, line: 1935, baseType: !598, size: 64, offset: 1216)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4182, file: !12, line: 1936, baseType: !4256, size: 64, offset: 1280)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!112, !112}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4182, file: !12, line: 1937, baseType: !4249, size: 64, offset: 1344)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4182, file: !12, line: 1938, baseType: !4261, size: 64, offset: 1408)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!1142, !4264, !601, !2028, !1145, !5}
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !216, line: 59, flags: DIFlagFwdDecl)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4182, file: !12, line: 1939, baseType: !4267, size: 64, offset: 1472)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!1142, !601, !2028, !4264, !1145, !5}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4182, file: !12, line: 1940, baseType: !1893, size: 64, offset: 1536)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4182, file: !12, line: 1941, baseType: !4272, size: 64, offset: 1600)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!112, !601, !112, !4275, !1759}
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4182, file: !12, line: 1942, baseType: !4277, size: 64, offset: 1664)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!1103, !601, !112, !641, !641}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4182, file: !12, line: 1944, baseType: !4281, size: 64, offset: 1728)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{null, !2007, !601}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4182, file: !12, line: 1948, baseType: !4285, size: 64, offset: 1792)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!1142, !601, !641, !601, !641, !1145, !5}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4182, file: !12, line: 1950, baseType: !4289, size: 64, offset: 1856)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!641, !601, !641, !601, !641, !641, !5}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4182, file: !12, line: 1953, baseType: !4241, size: 64, offset: 1920)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4182, file: !12, line: 1954, baseType: !4294, size: 64, offset: 1984)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!112, !4297, !5}
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !12, line: 1911, flags: DIFlagFwdDecl)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4182, file: !12, line: 1955, baseType: !4300, size: 64, offset: 2048)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!112, !4297, !2880, !5}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4177, file: !12, line: 723, baseType: !2491, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !989, file: !12, line: 725, baseType: !4305, size: 64, offset: 2816)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !12, line: 725, flags: DIFlagFwdDecl)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !989, file: !12, line: 726, baseType: !1352, size: 1536, align: 64, offset: 2880)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !989, file: !12, line: 727, baseType: !207, size: 128, offset: 4416)
!4309 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !12, line: 728, baseType: !4310, size: 64, offset: 4544)
!4310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !989, file: !12, line: 728, size: 64, elements: !4311)
!4311 = !{!4312, !4313, !4316, !4317}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4310, file: !12, line: 729, baseType: !4264, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4310, file: !12, line: 730, baseType: !4314, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !12, line: 730, flags: DIFlagFwdDecl)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4310, file: !12, line: 731, baseType: !842, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4310, file: !12, line: 732, baseType: !5, size: 32)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !989, file: !12, line: 735, baseType: !188, size: 32, offset: 4608)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !989, file: !12, line: 738, baseType: !188, size: 32, offset: 4640)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !989, file: !12, line: 739, baseType: !4018, size: 64, offset: 4672)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !989, file: !12, line: 750, baseType: !190, size: 64, offset: 4736)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !954, file: !955, line: 91, baseType: !4323, size: 256, offset: 448)
!4323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 256, elements: !2774)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !954, file: !955, line: 94, baseType: !4325, size: 64, offset: 704)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4326, line: 25, size: 64, elements: !4327)
!4326 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4327 = !{!4328}
!4328 = !DIDerivedType(tag: DW_TAG_member, scope: !4325, file: !4326, line: 26, baseType: !4329, size: 64)
!4329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4325, file: !4326, line: 26, size: 64, elements: !4330)
!4330 = !{!4331, !4332}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4329, file: !4326, line: 28, baseType: !290, size: 64, align: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, scope: !4329, file: !4326, line: 30, baseType: !4333, size: 64)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4329, file: !4326, line: 30, size: 64, elements: !4334)
!4334 = !{!4335, !4336}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4333, file: !4326, line: 31, baseType: !583, size: 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4333, file: !4326, line: 32, baseType: !112, size: 32, offset: 32)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !954, file: !955, line: 95, baseType: !4034, size: 64, offset: 768)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !954, file: !955, line: 96, baseType: !1201, size: 64, offset: 832)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !954, file: !955, line: 97, baseType: !223, size: 64, offset: 896)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !954, file: !955, line: 98, baseType: !190, size: 64, offset: 960)
!4341 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !955, line: 100, baseType: !4342, size: 128, offset: 1024)
!4342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !954, file: !955, line: 100, size: 128, elements: !4343)
!4343 = !{!4344, !4345}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4342, file: !955, line: 101, baseType: !207, size: 128)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4342, file: !955, line: 102, baseType: !4346, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !954, file: !955, line: 104, baseType: !207, size: 128, offset: 1152)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !954, file: !955, line: 105, baseType: !207, size: 128, offset: 1280)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !954, file: !955, line: 113, baseType: !4350, size: 128, offset: 1408)
!4350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !954, file: !955, line: 109, size: 128, elements: !4351)
!4351 = !{!4352, !4353, !4354}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4350, file: !955, line: 110, baseType: !683, size: 128)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4350, file: !955, line: 111, baseType: !964, size: 128)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4350, file: !955, line: 112, baseType: !609, size: 128, align: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !949, file: !950, line: 72, baseType: !1201, size: 64, offset: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !949, file: !950, line: 73, baseType: !112, size: 32, offset: 128)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !949, file: !950, line: 74, baseType: !1028, size: 64, offset: 192)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !944, file: !945, line: 10, baseType: !953, size: 64, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !602, file: !12, line: 1015, baseType: !988, size: 64, offset: 1344)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !602, file: !12, line: 1016, baseType: !4180, size: 64, offset: 1408)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !602, file: !12, line: 1018, baseType: !289, size: 64, offset: 1472)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !602, file: !12, line: 1020, baseType: !190, size: 64, offset: 1536)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !602, file: !12, line: 1023, baseType: !190, size: 64, offset: 1600)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !602, file: !12, line: 1027, baseType: !4365, size: 64, offset: 1664)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !602, file: !12, line: 1029, baseType: !1351, size: 64, offset: 1728)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !602, file: !12, line: 1030, baseType: !1903, size: 32, offset: 1792)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !602, file: !12, line: 1031, baseType: !1903, size: 32, offset: 1824)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !569, file: !33, line: 756, baseType: !223, size: 64, offset: 704)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !569, file: !33, line: 757, baseType: !223, size: 64, offset: 768)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !569, file: !33, line: 760, baseType: !223, size: 64, offset: 832)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !569, file: !33, line: 761, baseType: !223, size: 64, offset: 896)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !569, file: !33, line: 763, baseType: !223, size: 64, offset: 960)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !569, file: !33, line: 764, baseType: !4375, size: 64, offset: 1024)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1506, line: 299, baseType: !4377)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1506, line: 299, size: 64, elements: !4378)
!4378 = !{!4379}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4377, file: !1506, line: 299, baseType: !4380, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1511, line: 18, baseType: !223)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !569, file: !33, line: 773, baseType: !235, size: 32, offset: 1088)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !569, file: !33, line: 785, baseType: !235, size: 32, offset: 1120)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !569, file: !33, line: 795, baseType: !4384, size: 64, offset: 1152)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !33, line: 726, size: 128, elements: !4386)
!4386 = !{!4387, !4388}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4385, file: !33, line: 727, baseType: !289, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4385, file: !33, line: 728, baseType: !112, size: 32, offset: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !569, file: !33, line: 801, baseType: !223, size: 64, offset: 1216)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !569, file: !33, line: 804, baseType: !622, size: 64, offset: 1280)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !569, file: !33, line: 806, baseType: !112, size: 32, offset: 1344)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !569, file: !33, line: 808, baseType: !583, size: 32, offset: 1376)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !569, file: !33, line: 823, baseType: !769, size: 320, offset: 1408)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !569, file: !33, line: 825, baseType: !207, size: 128, offset: 1728)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !569, file: !33, line: 845, baseType: !112, size: 32, offset: 1856)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !569, file: !33, line: 849, baseType: !223, size: 64, offset: 1920)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !569, file: !33, line: 850, baseType: !223, size: 64, offset: 1984)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !569, file: !33, line: 852, baseType: !223, size: 64, offset: 2048)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !569, file: !33, line: 853, baseType: !223, size: 64, offset: 2112)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !569, file: !33, line: 854, baseType: !624, size: 64, offset: 2176)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !569, file: !33, line: 855, baseType: !223, size: 64, offset: 2240)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !569, file: !33, line: 856, baseType: !223, size: 64, offset: 2304)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !569, file: !33, line: 857, baseType: !223, size: 64, offset: 2368)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !569, file: !33, line: 858, baseType: !223, size: 64, offset: 2432)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !569, file: !33, line: 865, baseType: !439, size: 32, offset: 2496)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !569, file: !33, line: 867, baseType: !583, size: 32, offset: 2528)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !569, file: !33, line: 869, baseType: !223, size: 64, offset: 2560)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !569, file: !33, line: 869, baseType: !223, size: 64, offset: 2624)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !569, file: !33, line: 869, baseType: !223, size: 64, offset: 2688)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !569, file: !33, line: 869, baseType: !223, size: 64, offset: 2752)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !569, file: !33, line: 870, baseType: !223, size: 64, offset: 2816)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !569, file: !33, line: 870, baseType: !223, size: 64, offset: 2880)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !569, file: !33, line: 870, baseType: !223, size: 64, offset: 2944)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !569, file: !33, line: 871, baseType: !223, size: 64, offset: 3008)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !569, file: !33, line: 871, baseType: !223, size: 64, offset: 3072)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !569, file: !33, line: 871, baseType: !223, size: 64, offset: 3136)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !569, file: !33, line: 871, baseType: !223, size: 64, offset: 3200)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !569, file: !33, line: 873, baseType: !4419, size: 3328, offset: 3264)
!4419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 3328, elements: !4420)
!4420 = !{!4421}
!4421 = !DISubrange(count: 52)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !569, file: !33, line: 875, baseType: !4423, size: 1280, offset: 6592)
!4423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !890, size: 1280, elements: !688)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !569, file: !33, line: 877, baseType: !4425, size: 64, offset: 7872)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !33, line: 877, flags: DIFlagFwdDecl)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !569, file: !33, line: 880, baseType: !4428, size: 1088, offset: 7936)
!4428 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4429, line: 72, baseType: !4430)
!4429 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4429, line: 23, size: 1088, elements: !4431)
!4431 = !{!4432, !4433, !4434, !4435, !4436, !4439, !4440, !4441, !4442, !4467, !4468, !4469}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4430, file: !4429, line: 28, baseType: !289, size: 64)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4430, file: !4429, line: 38, baseType: !624, size: 64, offset: 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4430, file: !4429, line: 40, baseType: !223, size: 64, offset: 128)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4430, file: !4429, line: 43, baseType: !769, size: 320, offset: 192)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4430, file: !4429, line: 44, baseType: !4437, size: 64, offset: 512)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4429, line: 44, flags: DIFlagFwdDecl)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4430, file: !4429, line: 48, baseType: !223, size: 64, offset: 576)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4430, file: !4429, line: 59, baseType: !629, size: 256, offset: 640)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4430, file: !4429, line: 60, baseType: !190, size: 64, offset: 896)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4430, file: !4429, line: 61, baseType: !4443, size: 64, offset: 960)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4445)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4446, line: 13, size: 1216, elements: !4447)
!4446 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4447 = !{!4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4445, file: !4446, line: 14, baseType: !190, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4445, file: !4446, line: 15, baseType: !223, size: 64, offset: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4445, file: !4446, line: 17, baseType: !223, size: 64, offset: 128)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4445, file: !4446, line: 17, baseType: !223, size: 64, offset: 192)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4445, file: !4446, line: 18, baseType: !223, size: 64, offset: 256)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4445, file: !4446, line: 18, baseType: !223, size: 64, offset: 320)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4445, file: !4446, line: 19, baseType: !1942, size: 64, offset: 384)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4445, file: !4446, line: 21, baseType: !1103, size: 64, offset: 448)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4445, file: !4446, line: 23, baseType: !1103, size: 64, offset: 512)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4445, file: !4446, line: 24, baseType: !1103, size: 64, offset: 576)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4445, file: !4446, line: 25, baseType: !1103, size: 64, offset: 640)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4445, file: !4446, line: 26, baseType: !1103, size: 64, offset: 704)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4445, file: !4446, line: 27, baseType: !1103, size: 64, offset: 768)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4445, file: !4446, line: 28, baseType: !1103, size: 64, offset: 832)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4445, file: !4446, line: 29, baseType: !1103, size: 64, offset: 896)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4445, file: !4446, line: 30, baseType: !1103, size: 64, offset: 960)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4445, file: !4446, line: 31, baseType: !1103, size: 64, offset: 1024)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4445, file: !4446, line: 32, baseType: !1103, size: 64, offset: 1088)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4445, file: !4446, line: 33, baseType: !1103, size: 64, offset: 1152)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4430, file: !4429, line: 63, baseType: !235, size: 32, offset: 1024)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4430, file: !4429, line: 69, baseType: !258, size: 16, offset: 1056)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4430, file: !4429, line: 70, baseType: !2255, size: 16, offset: 1072)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !33, line: 882, baseType: !223, size: 64, offset: 9024)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !569, file: !33, line: 885, baseType: !583, size: 32, offset: 9088)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !569, file: !33, line: 886, baseType: !4473, size: 64, offset: 9152)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !33, line: 732, flags: DIFlagFwdDecl)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !569, file: !33, line: 901, baseType: !915, size: 64, offset: 9216)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !569, file: !33, line: 904, baseType: !601, size: 64, offset: 9280)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !569, file: !33, line: 906, baseType: !4478, size: 64, offset: 9344)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !33, line: 906, flags: DIFlagFwdDecl)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !569, file: !33, line: 930, baseType: !235, size: 32, offset: 9408)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !569, file: !33, line: 933, baseType: !235, size: 32, offset: 9440)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !569, file: !33, line: 935, baseType: !4483, size: 64, offset: 9472)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !66, line: 103, size: 64, elements: !4484)
!4484 = !{!4485}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4483, file: !66, line: 104, baseType: !4486, size: 64)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !66, line: 101, flags: DIFlagFwdDecl)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !569, file: !33, line: 940, baseType: !622, size: 64, offset: 9536)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !569, file: !33, line: 942, baseType: !2362, size: 256, offset: 9600)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !566, file: !33, line: 986, baseType: !4491, offset: 10240)
!4491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, elements: !706)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !215, file: !216, line: 882, baseType: !565, size: 64, offset: 9792)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !215, file: !216, line: 884, baseType: !112, size: 32, offset: 9856)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !215, file: !216, line: 885, baseType: !112, size: 32, offset: 9888)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !215, file: !216, line: 886, baseType: !112, size: 32, offset: 9920)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !215, file: !216, line: 888, baseType: !112, size: 32, offset: 9952)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !215, file: !216, line: 890, baseType: !223, size: 64, offset: 9984)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !215, file: !216, line: 893, baseType: !5, size: 32, offset: 10048)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !215, file: !216, line: 896, baseType: !5, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !215, file: !216, line: 897, baseType: !5, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !215, file: !216, line: 898, baseType: !5, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !215, file: !216, line: 899, baseType: !5, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !215, file: !216, line: 919, baseType: !5, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !215, file: !216, line: 922, baseType: !5, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !215, file: !216, line: 923, baseType: !5, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !215, file: !216, line: 925, baseType: !5, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !215, file: !216, line: 939, baseType: !5, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !215, file: !216, line: 941, baseType: !5, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !215, file: !216, line: 944, baseType: !5, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !215, file: !216, line: 956, baseType: !5, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !215, file: !216, line: 962, baseType: !5, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !215, file: !216, line: 966, baseType: !5, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !215, file: !216, line: 969, baseType: !223, size: 64, offset: 10176)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !215, file: !216, line: 971, baseType: !4515, size: 448, offset: 10240)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !60, line: 25, size: 448, elements: !4516)
!4516 = !{!4517, !4518, !4523}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4515, file: !60, line: 26, baseType: !223, size: 64)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4515, file: !60, line: 27, baseType: !4519, size: 64, offset: 64)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!1103, !4522}
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, scope: !4515, file: !60, line: 28, baseType: !4524, size: 320, offset: 128)
!4524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4515, file: !60, line: 28, size: 320, elements: !4525)
!4525 = !{!4526, !4536, !4561}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4524, file: !60, line: 37, baseType: !4527, size: 320)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4524, file: !60, line: 30, size: 320, elements: !4528)
!4528 = !{!4529, !4531, !4532, !4533, !4534, !4535}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4527, file: !60, line: 31, baseType: !4530, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4527, file: !60, line: 32, baseType: !186, size: 32, offset: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4527, file: !60, line: 33, baseType: !186, size: 32, offset: 96)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4527, file: !60, line: 34, baseType: !186, size: 32, offset: 128)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4527, file: !60, line: 35, baseType: !289, size: 64, offset: 192)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4527, file: !60, line: 36, baseType: !4530, size: 64, offset: 256)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4524, file: !60, line: 47, baseType: !4537, size: 192)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4524, file: !60, line: 39, size: 192, elements: !4538)
!4538 = !{!4539, !4540, !4541, !4560}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4537, file: !60, line: 40, baseType: !430, size: 32)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4537, file: !60, line: 41, baseType: !59, size: 32, offset: 32)
!4541 = !DIDerivedType(tag: DW_TAG_member, scope: !4537, file: !60, line: 42, baseType: !4542, size: 64, offset: 64)
!4542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4537, file: !60, line: 42, size: 64, elements: !4543)
!4543 = !{!4544, !4552}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4542, file: !60, line: 43, baseType: !4545, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4547, line: 7, size: 128, elements: !4548)
!4547 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4548 = !{!4549, !4551}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4546, file: !4547, line: 8, baseType: !4550, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !432, line: 93, baseType: !302)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4546, file: !4547, line: 9, baseType: !302, size: 64, offset: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4542, file: !60, line: 44, baseType: !4553, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4555, line: 7, size: 64, elements: !4556)
!4555 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4556 = !{!4557, !4559}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4554, file: !4555, line: 8, baseType: !4558, size: 32)
!4558 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4555, line: 5, baseType: !761)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4554, file: !4555, line: 9, baseType: !761, size: 32, offset: 32)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4537, file: !60, line: 46, baseType: !289, size: 64, offset: 128)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4524, file: !60, line: 55, baseType: !4562, size: 256)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4524, file: !60, line: 49, size: 256, elements: !4563)
!4563 = !{!4564, !4567, !4568, !4569, !4570}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4562, file: !60, line: 50, baseType: !4565, size: 64)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !60, line: 14, flags: DIFlagFwdDecl)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4562, file: !60, line: 51, baseType: !112, size: 32, offset: 64)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4562, file: !60, line: 52, baseType: !112, size: 32, offset: 96)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4562, file: !60, line: 53, baseType: !223, size: 64, offset: 128)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4562, file: !60, line: 54, baseType: !223, size: 64, offset: 192)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !215, file: !216, line: 973, baseType: !4572, size: 32, offset: 10688)
!4572 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !208, line: 27, baseType: !4573)
!4573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !432, line: 28, baseType: !112)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !215, file: !216, line: 974, baseType: !4572, size: 32, offset: 10720)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !215, file: !216, line: 978, baseType: !223, size: 64, offset: 10752)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !215, file: !216, line: 987, baseType: !214, size: 64, offset: 10816)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !215, file: !216, line: 990, baseType: !214, size: 64, offset: 10880)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !215, file: !216, line: 995, baseType: !207, size: 128, offset: 10944)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !215, file: !216, line: 996, baseType: !207, size: 128, offset: 11072)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !215, file: !216, line: 997, baseType: !214, size: 64, offset: 11200)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !215, file: !216, line: 1005, baseType: !207, size: 128, offset: 11264)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !215, file: !216, line: 1006, baseType: !207, size: 128, offset: 11392)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !215, file: !216, line: 1009, baseType: !671, size: 64, offset: 11520)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !215, file: !216, line: 1010, baseType: !4585, size: 512, offset: 11584)
!4585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 512, elements: !688)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !215, file: !216, line: 1011, baseType: !207, size: 128, offset: 12096)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !215, file: !216, line: 1012, baseType: !207, size: 128, offset: 12224)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !215, file: !216, line: 1014, baseType: !2112, size: 64, offset: 12352)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !215, file: !216, line: 1017, baseType: !183, size: 64, offset: 12416)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !215, file: !216, line: 1020, baseType: !183, size: 64, offset: 12480)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !215, file: !216, line: 1023, baseType: !190, size: 64, offset: 12544)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !215, file: !216, line: 1025, baseType: !289, size: 64, offset: 12608)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !215, file: !216, line: 1026, baseType: !289, size: 64, offset: 12672)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !215, file: !216, line: 1031, baseType: !289, size: 64, offset: 12736)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !215, file: !216, line: 1032, baseType: !4596, size: 192, offset: 12800)
!4596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !216, line: 324, size: 192, elements: !4597)
!4597 = !{!4598, !4599, !4600}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4596, file: !216, line: 326, baseType: !289, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4596, file: !216, line: 327, baseType: !289, size: 64, offset: 64)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4596, file: !216, line: 328, baseType: !382, size: 32, offset: 128)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !215, file: !216, line: 1041, baseType: !223, size: 64, offset: 12992)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !215, file: !216, line: 1042, baseType: !223, size: 64, offset: 13056)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !215, file: !216, line: 1045, baseType: !289, size: 64, offset: 13120)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !215, file: !216, line: 1048, baseType: !289, size: 64, offset: 13184)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !215, file: !216, line: 1051, baseType: !223, size: 64, offset: 13248)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !215, file: !216, line: 1052, baseType: !223, size: 64, offset: 13312)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !215, file: !216, line: 1055, baseType: !4608, size: 640, offset: 13376)
!4608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4609, line: 132, size: 640, elements: !4610)
!4609 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!4610 = !{!4611, !4617, !4618}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4608, file: !4609, line: 133, baseType: !4612, size: 576)
!4612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4613, size: 576, elements: !667)
!4613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4609, line: 117, size: 192, elements: !4614)
!4614 = !{!4615, !4616}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4613, file: !4609, line: 118, baseType: !289, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4613, file: !4609, line: 119, baseType: !445, size: 128, offset: 64)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4608, file: !4609, line: 134, baseType: !5, size: 32, offset: 576)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4608, file: !4609, line: 135, baseType: !5, size: 32, offset: 608)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !215, file: !216, line: 1058, baseType: !4620, size: 448, offset: 14016)
!4620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4609, line: 144, size: 448, elements: !4621)
!4621 = !{!4622, !4623, !4624}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4620, file: !4609, line: 145, baseType: !609, size: 128, align: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4620, file: !4609, line: 146, baseType: !629, size: 256, offset: 128)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4620, file: !4609, line: 147, baseType: !5, size: 32, offset: 384)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !215, file: !216, line: 1064, baseType: !720, size: 64, offset: 14464)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !215, file: !216, line: 1067, baseType: !720, size: 64, offset: 14528)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !215, file: !216, line: 1070, baseType: !720, size: 64, offset: 14592)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !215, file: !216, line: 1074, baseType: !753, size: 64, offset: 14656)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !215, file: !216, line: 1084, baseType: !4630, size: 128, offset: 14720)
!4630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 128, elements: !4028)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !215, file: !216, line: 1086, baseType: !4632, size: 64, offset: 14848)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !216, line: 55, flags: DIFlagFwdDecl)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !215, file: !216, line: 1089, baseType: !4635, size: 64, offset: 14912)
!4635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !4636, line: 12, size: 64, elements: !4637)
!4636 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!4637 = !{!4638}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !4635, file: !4636, line: 13, baseType: !4639, size: 64)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !4636, line: 8, flags: DIFlagFwdDecl)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !215, file: !216, line: 1090, baseType: !4642, size: 128, offset: 14976)
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4643, line: 13, size: 128, elements: !4644)
!4643 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4644 = !{!4645}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !4642, file: !4643, line: 14, baseType: !207, size: 128)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !215, file: !216, line: 1097, baseType: !4647, size: 64, offset: 15104)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !216, line: 50, flags: DIFlagFwdDecl)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !215, file: !216, line: 1100, baseType: !4650, size: 64, offset: 15168)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !216, line: 1100, flags: DIFlagFwdDecl)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !215, file: !216, line: 1103, baseType: !4653, size: 64, offset: 15232)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !216, line: 53, flags: DIFlagFwdDecl)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !215, file: !216, line: 1107, baseType: !4656, size: 64, offset: 15296)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !216, line: 56, flags: DIFlagFwdDecl)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !215, file: !216, line: 1110, baseType: !4659, size: 64, offset: 15360)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4661, line: 93, size: 8768, elements: !4662)
!4661 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4662 = !{!4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4710, !4719, !4720, !4722, !4723, !4724, !4727, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4765, !4766, !4773, !4783, !4786, !4787, !4790, !4791, !4792, !4793, !4794, !4795}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4660, file: !4661, line: 94, baseType: !230, size: 32)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4660, file: !4661, line: 95, baseType: !235, size: 32, offset: 32)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4660, file: !4661, line: 96, baseType: !112, size: 32, offset: 64)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4660, file: !4661, line: 97, baseType: !112, size: 32, offset: 96)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4660, file: !4661, line: 98, baseType: !207, size: 128, offset: 128)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4660, file: !4661, line: 100, baseType: !692, size: 192, offset: 256)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4660, file: !4661, line: 103, baseType: !214, size: 64, offset: 448)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4660, file: !4661, line: 106, baseType: !4671, size: 192, offset: 512)
!4671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !920, line: 32, size: 192, elements: !4672)
!4672 = !{!4673, !4674}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4671, file: !920, line: 33, baseType: !207, size: 128)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4671, file: !920, line: 34, baseType: !4675, size: 64, offset: 128)
!4675 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4676, line: 25, baseType: !4677)
!4676 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4677 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4676, line: 23, size: 64, elements: !4678)
!4678 = !{!4679}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4677, file: !4676, line: 24, baseType: !516, size: 64)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4660, file: !4661, line: 109, baseType: !679, size: 64, offset: 704)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4660, file: !4661, line: 112, baseType: !112, size: 32, offset: 768)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4660, file: !4661, line: 114, baseType: !112, size: 32, offset: 800)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4660, file: !4661, line: 115, baseType: !214, size: 64, offset: 832)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4660, file: !4661, line: 118, baseType: !112, size: 32, offset: 896)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4660, file: !4661, line: 119, baseType: !5, size: 32, offset: 928)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4660, file: !4661, line: 121, baseType: !4687, size: 64, offset: 960)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4661, line: 80, size: 448, elements: !4689)
!4689 = !{!4690, !4691, !4697}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4688, file: !4661, line: 81, baseType: !235, size: 32)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4688, file: !4661, line: 82, baseType: !4692, size: 128, offset: 64)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4661, line: 75, size: 128, elements: !4693)
!4693 = !{!4694, !4695}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4692, file: !4661, line: 76, baseType: !214, size: 64)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4692, file: !4661, line: 77, baseType: !4696, size: 64, offset: 64)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4688, file: !4661, line: 83, baseType: !1456, size: 256, offset: 192)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4660, file: !4661, line: 132, baseType: !5, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4660, file: !4661, line: 133, baseType: !5, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4660, file: !4661, line: 138, baseType: !5, size: 32, offset: 1056)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4660, file: !4661, line: 139, baseType: !207, size: 128, offset: 1088)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4660, file: !4661, line: 142, baseType: !357, size: 512, offset: 1216)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4660, file: !4661, line: 143, baseType: !365, size: 64, offset: 1728)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4660, file: !4661, line: 150, baseType: !4705, size: 256, offset: 1792)
!4705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4706, size: 256, elements: !2239)
!4706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4661, line: 38, size: 128, elements: !4707)
!4707 = !{!4708, !4709}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4706, file: !4661, line: 39, baseType: !289, size: 64)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4706, file: !4661, line: 40, baseType: !289, size: 64, offset: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4660, file: !4661, line: 156, baseType: !4711, size: 192, offset: 2048)
!4711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4661, line: 66, size: 192, elements: !4712)
!4712 = !{!4713}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4711, file: !4661, line: 67, baseType: !4714, size: 192)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4661, line: 47, size: 192, elements: !4715)
!4715 = !{!4716, !4717, !4718}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4714, file: !4661, line: 48, baseType: !624, size: 64)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4714, file: !4661, line: 49, baseType: !624, size: 64, offset: 64)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4714, file: !4661, line: 50, baseType: !624, size: 64, offset: 128)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4660, file: !4661, line: 160, baseType: !4608, size: 640, offset: 2240)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4660, file: !4661, line: 163, baseType: !4721, size: 256, offset: 2880)
!4721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 256, elements: !688)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4660, file: !4661, line: 169, baseType: !671, size: 64, offset: 3136)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4660, file: !4661, line: 172, baseType: !112, size: 32, offset: 3200)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4660, file: !4661, line: 174, baseType: !4725, size: 64, offset: 3264)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4661, line: 174, flags: DIFlagFwdDecl)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4660, file: !4661, line: 185, baseType: !4728, size: 64, offset: 3328)
!4728 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !435, line: 860, baseType: !4729)
!4729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !435, line: 853, size: 64, elements: !4730)
!4730 = !{!4731, !4732}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4729, file: !435, line: 858, baseType: !959, size: 32)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4729, file: !435, line: 859, baseType: !583, size: 32, offset: 32)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4660, file: !4661, line: 186, baseType: !289, size: 64, offset: 3392)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4660, file: !4661, line: 186, baseType: !289, size: 64, offset: 3456)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4660, file: !4661, line: 186, baseType: !289, size: 64, offset: 3520)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4660, file: !4661, line: 186, baseType: !289, size: 64, offset: 3584)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4660, file: !4661, line: 187, baseType: !289, size: 64, offset: 3648)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4660, file: !4661, line: 188, baseType: !289, size: 64, offset: 3712)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4660, file: !4661, line: 189, baseType: !4596, size: 192, offset: 3776)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4660, file: !4661, line: 190, baseType: !223, size: 64, offset: 3968)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4660, file: !4661, line: 190, baseType: !223, size: 64, offset: 4032)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4660, file: !4661, line: 190, baseType: !223, size: 64, offset: 4096)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4660, file: !4661, line: 190, baseType: !223, size: 64, offset: 4160)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4660, file: !4661, line: 191, baseType: !223, size: 64, offset: 4224)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4660, file: !4661, line: 191, baseType: !223, size: 64, offset: 4288)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4660, file: !4661, line: 191, baseType: !223, size: 64, offset: 4352)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4660, file: !4661, line: 191, baseType: !223, size: 64, offset: 4416)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4660, file: !4661, line: 192, baseType: !223, size: 64, offset: 4480)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4660, file: !4661, line: 192, baseType: !223, size: 64, offset: 4544)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4660, file: !4661, line: 192, baseType: !223, size: 64, offset: 4608)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4660, file: !4661, line: 192, baseType: !223, size: 64, offset: 4672)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4660, file: !4661, line: 193, baseType: !223, size: 64, offset: 4736)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4660, file: !4661, line: 193, baseType: !223, size: 64, offset: 4800)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4660, file: !4661, line: 194, baseType: !4755, size: 448, offset: 4864)
!4755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4756, line: 12, size: 448, elements: !4757)
!4756 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4757 = !{!4758, !4759, !4760, !4761, !4762, !4763, !4764}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4755, file: !4756, line: 15, baseType: !289, size: 64)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4755, file: !4756, line: 17, baseType: !289, size: 64, offset: 64)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4755, file: !4756, line: 19, baseType: !289, size: 64, offset: 128)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4755, file: !4756, line: 21, baseType: !289, size: 64, offset: 192)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4755, file: !4756, line: 29, baseType: !289, size: 64, offset: 256)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4755, file: !4756, line: 35, baseType: !289, size: 64, offset: 320)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4755, file: !4756, line: 44, baseType: !289, size: 64, offset: 384)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4660, file: !4661, line: 202, baseType: !291, size: 64, offset: 5312)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4660, file: !4661, line: 213, baseType: !4767, size: 2048, offset: 5376)
!4767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4768, size: 2048, elements: !4028)
!4768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4769, line: 43, size: 128, elements: !4770)
!4769 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4770 = !{!4771, !4772}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4768, file: !4769, line: 44, baseType: !1147, size: 64)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4768, file: !4769, line: 45, baseType: !1147, size: 64, offset: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4660, file: !4661, line: 216, baseType: !4774, size: 448, offset: 7424)
!4774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4661, line: 30, size: 448, elements: !4775)
!4775 = !{!4776, !4777, !4778, !4779, !4780, !4781, !4782}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4774, file: !4661, line: 31, baseType: !112, size: 32)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4774, file: !4661, line: 32, baseType: !1103, size: 64, offset: 64)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4774, file: !4661, line: 33, baseType: !223, size: 64, offset: 128)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4774, file: !4661, line: 34, baseType: !289, size: 64, offset: 192)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4774, file: !4661, line: 34, baseType: !289, size: 64, offset: 256)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4774, file: !4661, line: 35, baseType: !223, size: 64, offset: 320)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4774, file: !4661, line: 35, baseType: !223, size: 64, offset: 384)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4660, file: !4661, line: 219, baseType: !4784, size: 64, offset: 7872)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4661, line: 219, flags: DIFlagFwdDecl)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4660, file: !4661, line: 222, baseType: !5, size: 32, offset: 7936)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4660, file: !4661, line: 223, baseType: !4788, size: 64, offset: 8000)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4661, line: 223, flags: DIFlagFwdDecl)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4660, file: !4661, line: 230, baseType: !829, size: 8, offset: 8064)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4660, file: !4661, line: 231, baseType: !797, size: 16, offset: 8080)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4660, file: !4661, line: 232, baseType: !797, size: 16, offset: 8096)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4660, file: !4661, line: 234, baseType: !565, size: 64, offset: 8128)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4660, file: !4661, line: 237, baseType: !629, size: 256, offset: 8192)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4660, file: !4661, line: 243, baseType: !769, size: 320, offset: 8448)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !215, file: !216, line: 1111, baseType: !4797, size: 64, offset: 15424)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4661, line: 20, size: 16640, elements: !4799)
!4799 = !{!4800, !4801, !4802, !4803}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4798, file: !4661, line: 21, baseType: !583, size: 32)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4798, file: !4661, line: 22, baseType: !230, size: 32, offset: 32)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4798, file: !4661, line: 23, baseType: !692, size: 192, offset: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4798, file: !4661, line: 24, baseType: !4804, size: 16384, offset: 256)
!4804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4805, size: 16384, elements: !1290)
!4805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !920, line: 51, size: 256, elements: !4806)
!4806 = !{!4807}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4805, file: !920, line: 52, baseType: !4808, size: 256)
!4808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !920, line: 37, size: 256, elements: !4809)
!4809 = !{!4810, !4817, !4818, !4822}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4808, file: !920, line: 39, baseType: !4811, size: 64)
!4811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4812, line: 83, baseType: !4813)
!4812 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4812, line: 82, baseType: !4815)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{null, !112}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4808, file: !920, line: 40, baseType: !223, size: 64, offset: 64)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4808, file: !920, line: 46, baseType: !4819, size: 64, offset: 128)
!4819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4812, line: 86, baseType: !4820)
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4812, line: 85, baseType: !2466)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4808, file: !920, line: 48, baseType: !4675, size: 64, offset: 192)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !215, file: !216, line: 1112, baseType: !4675, size: 64, offset: 15488)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !215, file: !216, line: 1113, baseType: !4675, size: 64, offset: 15552)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !215, file: !216, line: 1115, baseType: !4675, size: 64, offset: 15616)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !215, file: !216, line: 1116, baseType: !4671, size: 192, offset: 15680)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !215, file: !216, line: 1117, baseType: !223, size: 64, offset: 15872)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !215, file: !216, line: 1118, baseType: !1145, size: 64, offset: 15936)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !215, file: !216, line: 1119, baseType: !5, size: 32, offset: 16000)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !215, file: !216, line: 1121, baseType: !612, size: 64, offset: 16064)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !215, file: !216, line: 1125, baseType: !4832, size: 64, offset: 16128)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !216, line: 43, flags: DIFlagFwdDecl)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !215, file: !216, line: 1127, baseType: !710, size: 32, offset: 16192)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !215, file: !216, line: 1128, baseType: !5, size: 32, offset: 16224)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !215, file: !216, line: 1130, baseType: !4837, size: 128, offset: 16256)
!4837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4838, line: 37, size: 128, elements: !4839)
!4838 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4839 = !{!4840, !4841, !4842}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4837, file: !4838, line: 38, baseType: !112, size: 32)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4837, file: !4838, line: 39, baseType: !235, size: 32, offset: 32)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4837, file: !4838, line: 40, baseType: !4843, size: 64, offset: 64)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4838, line: 24, flags: DIFlagFwdDecl)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !215, file: !216, line: 1131, baseType: !4846, size: 256, offset: 16384)
!4846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4847, line: 12, size: 256, elements: !4848)
!4847 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4848 = !{!4849, !4850, !4851, !4852}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4846, file: !4847, line: 13, baseType: !842, size: 64)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4846, file: !4847, line: 14, baseType: !223, size: 64, offset: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4846, file: !4847, line: 15, baseType: !223, size: 64, offset: 128)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4846, file: !4847, line: 16, baseType: !829, size: 8, offset: 192)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !215, file: !216, line: 1134, baseType: !289, size: 64, offset: 16640)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !215, file: !216, line: 1135, baseType: !289, size: 64, offset: 16704)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !215, file: !216, line: 1138, baseType: !583, size: 32, offset: 16768)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !215, file: !216, line: 1141, baseType: !382, size: 32, offset: 16800)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !215, file: !216, line: 1143, baseType: !4858, size: 64, offset: 16832)
!4858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !216, line: 735, size: 64, elements: !4859)
!4859 = !{!4860}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4858, file: !216, line: 736, baseType: !4861, size: 64)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !215, file: !216, line: 1147, baseType: !448, size: 128, offset: 16896)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !215, file: !216, line: 1149, baseType: !214, size: 64, offset: 17024)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !215, file: !216, line: 1151, baseType: !4865, size: 64, offset: 17088)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !216, line: 1151, flags: DIFlagFwdDecl)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !215, file: !216, line: 1188, baseType: !190, size: 64, offset: 17152)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !215, file: !216, line: 1191, baseType: !4869, size: 64, offset: 17216)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !215, file: !216, line: 1194, baseType: !4871, size: 64, offset: 17280)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !145, line: 976, size: 320, elements: !4873)
!4873 = !{!4874, !4875, !4876, !4877, !4878, !4879, !4880}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !4872, file: !145, line: 977, baseType: !2884, size: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !4872, file: !145, line: 980, baseType: !2884, size: 64, offset: 64)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !4872, file: !145, line: 981, baseType: !260, size: 16, offset: 128)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !4872, file: !145, line: 983, baseType: !260, size: 16, offset: 144)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !4872, file: !145, line: 985, baseType: !829, size: 8, offset: 160)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !4872, file: !145, line: 986, baseType: !829, size: 8, offset: 168)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4872, file: !145, line: 988, baseType: !207, size: 128, offset: 192)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !215, file: !216, line: 1197, baseType: !4882, size: 64, offset: 17344)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !216, line: 61, flags: DIFlagFwdDecl)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !215, file: !216, line: 1199, baseType: !3729, size: 64, offset: 17408)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !215, file: !216, line: 1202, baseType: !4886, size: 64, offset: 17472)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !216, line: 48, flags: DIFlagFwdDecl)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !215, file: !216, line: 1205, baseType: !223, size: 64, offset: 17536)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !215, file: !216, line: 1206, baseType: !4890, size: 64, offset: 17600)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !920, line: 14, baseType: !4892)
!4892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !920, line: 12, size: 384, elements: !4893)
!4893 = !{!4894}
!4894 = !DIDerivedType(tag: DW_TAG_member, scope: !4892, file: !920, line: 13, baseType: !4895, size: 384)
!4895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4892, file: !920, line: 13, size: 384, elements: !4896)
!4896 = !{!4897, !4898, !4899, !4900}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4895, file: !920, line: 13, baseType: !112, size: 32)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4895, file: !920, line: 13, baseType: !112, size: 32, offset: 32)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4895, file: !920, line: 13, baseType: !112, size: 32, offset: 64)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4895, file: !920, line: 13, baseType: !4901, size: 256, offset: 128)
!4901 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4902, line: 37, size: 256, elements: !4903)
!4902 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4903 = !{!4904, !4909, !4922, !4928, !4937, !4964, !4969}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4901, file: !4902, line: 42, baseType: !4905, size: 64)
!4905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4901, file: !4902, line: 39, size: 64, elements: !4906)
!4906 = !{!4907, !4908}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4905, file: !4902, line: 40, baseType: !4573, size: 32)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4905, file: !4902, line: 41, baseType: !716, size: 32, offset: 32)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4901, file: !4902, line: 50, baseType: !4910, size: 192)
!4910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4901, file: !4902, line: 45, size: 192, elements: !4911)
!4911 = !{!4912, !4914, !4915, !4921}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4910, file: !4902, line: 46, baseType: !4913, size: 32)
!4913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !432, line: 95, baseType: !112)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4910, file: !4902, line: 47, baseType: !112, size: 32, offset: 32)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4910, file: !4902, line: 48, baseType: !4916, size: 64, offset: 64)
!4916 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4902, line: 11, baseType: !4917)
!4917 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4902, line: 8, size: 64, elements: !4918)
!4918 = !{!4919, !4920}
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4917, file: !4902, line: 9, baseType: !112, size: 32)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4917, file: !4902, line: 10, baseType: !190, size: 64)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4910, file: !4902, line: 49, baseType: !112, size: 32, offset: 128)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4901, file: !4902, line: 57, baseType: !4923, size: 128)
!4923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4901, file: !4902, line: 53, size: 128, elements: !4924)
!4924 = !{!4925, !4926, !4927}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4923, file: !4902, line: 54, baseType: !4573, size: 32)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4923, file: !4902, line: 55, baseType: !716, size: 32, offset: 32)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4923, file: !4902, line: 56, baseType: !4916, size: 64, offset: 64)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4901, file: !4902, line: 66, baseType: !4929, size: 256)
!4929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4901, file: !4902, line: 60, size: 256, elements: !4930)
!4930 = !{!4931, !4932, !4933, !4934, !4936}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4929, file: !4902, line: 61, baseType: !4573, size: 32)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4929, file: !4902, line: 62, baseType: !716, size: 32, offset: 32)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4929, file: !4902, line: 63, baseType: !112, size: 32, offset: 64)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4929, file: !4902, line: 64, baseType: !4935, size: 64, offset: 128)
!4935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !432, line: 94, baseType: !1144)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4929, file: !4902, line: 65, baseType: !4935, size: 64, offset: 192)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4901, file: !4902, line: 105, baseType: !4938, size: 256)
!4938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4901, file: !4902, line: 69, size: 256, elements: !4939)
!4939 = !{!4940, !4941}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4938, file: !4902, line: 70, baseType: !190, size: 64)
!4941 = !DIDerivedType(tag: DW_TAG_member, scope: !4938, file: !4902, line: 79, baseType: !4942, size: 192, offset: 64)
!4942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4938, file: !4902, line: 79, size: 192, elements: !4943)
!4943 = !{!4944, !4945, !4946, !4953, !4958}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4942, file: !4902, line: 81, baseType: !112, size: 32)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4942, file: !4902, line: 86, baseType: !797, size: 16)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4942, file: !4902, line: 92, baseType: !4947, size: 192)
!4947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4942, file: !4902, line: 88, size: 192, elements: !4948)
!4948 = !{!4949, !4951, !4952}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4947, file: !4902, line: 89, baseType: !4950, size: 64)
!4950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 64, elements: !426)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4947, file: !4902, line: 90, baseType: !190, size: 64, offset: 64)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4947, file: !4902, line: 91, baseType: !190, size: 64, offset: 128)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4942, file: !4902, line: 97, baseType: !4954, size: 96)
!4954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4942, file: !4902, line: 94, size: 96, elements: !4955)
!4955 = !{!4956, !4957}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4954, file: !4902, line: 95, baseType: !4950, size: 64)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4954, file: !4902, line: 96, baseType: !188, size: 32, offset: 64)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4942, file: !4902, line: 103, baseType: !4959, size: 128)
!4959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4942, file: !4902, line: 99, size: 128, elements: !4960)
!4960 = !{!4961, !4962, !4963}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4959, file: !4902, line: 100, baseType: !223, size: 64)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4959, file: !4902, line: 101, baseType: !188, size: 32, offset: 64)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4959, file: !4902, line: 102, baseType: !188, size: 32, offset: 96)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4901, file: !4902, line: 111, baseType: !4965, size: 128)
!4965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4901, file: !4902, line: 108, size: 128, elements: !4966)
!4966 = !{!4967, !4968}
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4965, file: !4902, line: 109, baseType: !1103, size: 64)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4965, file: !4902, line: 110, baseType: !112, size: 32, offset: 64)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4901, file: !4902, line: 118, baseType: !4970, size: 128)
!4970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4901, file: !4902, line: 114, size: 128, elements: !4971)
!4971 = !{!4972, !4973, !4974}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4970, file: !4902, line: 115, baseType: !190, size: 64)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4970, file: !4902, line: 116, baseType: !112, size: 32, offset: 64)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4970, file: !4902, line: 117, baseType: !5, size: 32, offset: 96)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !215, file: !216, line: 1208, baseType: !4755, size: 448, offset: 17664)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !215, file: !216, line: 1215, baseType: !289, size: 64, offset: 18112)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !215, file: !216, line: 1217, baseType: !289, size: 64, offset: 18176)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !215, file: !216, line: 1219, baseType: !289, size: 64, offset: 18240)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !215, file: !216, line: 1223, baseType: !4980, size: 64, offset: 18304)
!4980 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4981, line: 99, baseType: !4982)
!4981 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4982 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4981, line: 99, size: 64, elements: !4983)
!4983 = !{!4984}
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4982, file: !4981, line: 99, baseType: !516, size: 64)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !215, file: !216, line: 1225, baseType: !959, size: 32, offset: 18368)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !215, file: !216, line: 1226, baseType: !112, size: 32, offset: 18400)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !215, file: !216, line: 1227, baseType: !112, size: 32, offset: 18432)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !215, file: !216, line: 1231, baseType: !4989, size: 64, offset: 18496)
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !216, line: 1231, flags: DIFlagFwdDecl)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !215, file: !216, line: 1233, baseType: !207, size: 128, offset: 18560)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !215, file: !216, line: 1240, baseType: !4993, size: 64, offset: 18688)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !216, line: 62, flags: DIFlagFwdDecl)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !215, file: !216, line: 1242, baseType: !4996, size: 64, offset: 18752)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !216, line: 1242, flags: DIFlagFwdDecl)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !215, file: !216, line: 1244, baseType: !207, size: 128, offset: 18816)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !215, file: !216, line: 1245, baseType: !5000, size: 64, offset: 18944)
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !216, line: 51, flags: DIFlagFwdDecl)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !215, file: !216, line: 1246, baseType: !629, size: 256, offset: 19008)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !215, file: !216, line: 1247, baseType: !5, size: 32, offset: 19264)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !215, file: !216, line: 1250, baseType: !5005, size: 64, offset: 19328)
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5006 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !216, line: 57, flags: DIFlagFwdDecl)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !215, file: !216, line: 1251, baseType: !629, size: 256, offset: 19392)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !215, file: !216, line: 1252, baseType: !207, size: 128, offset: 19648)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !215, file: !216, line: 1259, baseType: !1584, size: 64, offset: 19776)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !215, file: !216, line: 1260, baseType: !797, size: 16, offset: 19840)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !215, file: !216, line: 1261, baseType: !797, size: 16, offset: 19856)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !215, file: !216, line: 1314, baseType: !5013, size: 64, offset: 19904)
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5014, size: 64)
!5014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5015, line: 62, size: 256, align: 256, elements: !5016)
!5015 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5016 = !{!5017, !5018, !5019, !5020, !5021, !5022, !5023}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5014, file: !5015, line: 75, baseType: !188, size: 32)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5014, file: !5015, line: 90, baseType: !188, size: 32, offset: 32)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5014, file: !5015, line: 112, baseType: !290, size: 64, offset: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5014, file: !5015, line: 132, baseType: !188, size: 32, offset: 128)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5014, file: !5015, line: 140, baseType: !188, size: 32, offset: 160)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5014, file: !5015, line: 149, baseType: !188, size: 32, offset: 192)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5014, file: !5015, line: 154, baseType: !5024, offset: 224)
!5024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, elements: !706)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !215, file: !216, line: 1315, baseType: !186, size: 32, offset: 19968)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !215, file: !216, line: 1316, baseType: !186, size: 32, offset: 20000)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !215, file: !216, line: 1321, baseType: !223, size: 64, offset: 20032)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !215, file: !216, line: 1325, baseType: !112, size: 32, offset: 20096)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !215, file: !216, line: 1326, baseType: !112, size: 32, offset: 20128)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !215, file: !216, line: 1327, baseType: !112, size: 32, offset: 20160)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !215, file: !216, line: 1328, baseType: !112, size: 32, offset: 20192)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !215, file: !216, line: 1329, baseType: !609, size: 128, align: 64, offset: 20224)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !215, file: !216, line: 1332, baseType: !5034, size: 128, offset: 20352)
!5034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5035, line: 51, size: 128, elements: !5036)
!5035 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5036 = !{!5037, !5042, !5043}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5034, file: !5035, line: 60, baseType: !5038, size: 64)
!5038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5039, line: 7, size: 64, elements: !5040)
!5039 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5040 = !{!5041}
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5038, file: !5039, line: 12, baseType: !513, size: 64)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5034, file: !5035, line: 63, baseType: !829, size: 8, offset: 64)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5034, file: !5035, line: 70, baseType: !829, size: 8, offset: 72)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !215, file: !216, line: 1335, baseType: !4264, size: 64, offset: 20480)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !215, file: !216, line: 1337, baseType: !5046, size: 128, offset: 20544)
!5046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5035, line: 39, size: 128, elements: !5047)
!5047 = !{!5048, !5049, !5050}
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5046, file: !5035, line: 40, baseType: !1371, size: 64)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5046, file: !5035, line: 42, baseType: !188, size: 32, offset: 64)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5046, file: !5035, line: 43, baseType: !188, size: 32, offset: 96)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !215, file: !216, line: 1340, baseType: !5052, size: 64, offset: 20672)
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5053, size: 64)
!5053 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !216, line: 69, flags: DIFlagFwdDecl)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !215, file: !216, line: 1351, baseType: !112, size: 32, offset: 20736)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !215, file: !216, line: 1352, baseType: !112, size: 32, offset: 20768)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !215, file: !216, line: 1354, baseType: !223, size: 64, offset: 20800)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !215, file: !216, line: 1364, baseType: !289, size: 64, offset: 20864)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !215, file: !216, line: 1365, baseType: !289, size: 64, offset: 20928)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !215, file: !216, line: 1412, baseType: !223, size: 64, offset: 20992)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !215, file: !216, line: 1453, baseType: !2766, size: 64, offset: 21056)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !215, file: !216, line: 1457, baseType: !5062, size: 64, offset: 21120)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !66, line: 61, size: 576, elements: !5064)
!5064 = !{!5065, !5066, !5085, !5088, !5089, !5122, !5132}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5063, file: !66, line: 62, baseType: !65, size: 32)
!5066 = !DIDerivedType(tag: DW_TAG_member, scope: !5063, file: !66, line: 64, baseType: !5067, size: 192, offset: 64)
!5067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5063, file: !66, line: 64, size: 192, elements: !5068)
!5068 = !{!5069, !5080}
!5069 = !DIDerivedType(tag: DW_TAG_member, scope: !5067, file: !66, line: 65, baseType: !5070, size: 192)
!5070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5067, file: !66, line: 65, size: 192, elements: !5071)
!5071 = !{!5072, !5079}
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5070, file: !66, line: 66, baseType: !5073, size: 128)
!5073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5074, line: 50, size: 128, elements: !5075)
!5074 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5075 = !{!5076, !5077, !5078}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5073, file: !5074, line: 52, baseType: !223, size: 64)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5073, file: !5074, line: 54, baseType: !5, size: 32, offset: 64)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5073, file: !5074, line: 55, baseType: !5, size: 32, offset: 96)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5070, file: !66, line: 67, baseType: !223, size: 64, offset: 128)
!5080 = !DIDerivedType(tag: DW_TAG_member, scope: !5067, file: !66, line: 70, baseType: !5081, size: 192)
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5067, file: !66, line: 70, size: 192, elements: !5082)
!5082 = !{!5083, !5084}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5081, file: !66, line: 71, baseType: !609, size: 128, align: 64)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5081, file: !66, line: 72, baseType: !223, size: 64, offset: 128)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5063, file: !66, line: 76, baseType: !5086, size: 64, offset: 256)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !66, line: 76, flags: DIFlagFwdDecl)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5063, file: !66, line: 77, baseType: !223, size: 64, offset: 320)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5063, file: !66, line: 79, baseType: !5090, size: 64, offset: 384)
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5074, line: 25, size: 256, elements: !5092)
!5092 = !{!5093, !5099, !5103}
!5093 = !DIDerivedType(tag: DW_TAG_member, scope: !5091, file: !5074, line: 26, baseType: !5094, size: 128)
!5094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5091, file: !5074, line: 26, size: 128, elements: !5095)
!5095 = !{!5096, !5098}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5094, file: !5074, line: 27, baseType: !5097, size: 128)
!5097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 128, elements: !4028)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5094, file: !5074, line: 28, baseType: !5097, size: 128)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5091, file: !5074, line: 31, baseType: !5100, size: 64, offset: 128)
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5101, size: 64)
!5101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5102)
!5102 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5074, line: 23, flags: DIFlagFwdDecl)
!5103 = !DIDerivedType(tag: DW_TAG_member, scope: !5091, file: !5074, line: 33, baseType: !5104, size: 64, offset: 192)
!5104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5091, file: !5074, line: 33, size: 64, elements: !5105)
!5105 = !{!5106, !5112, !5117}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5104, file: !5074, line: 38, baseType: !5107, size: 64)
!5107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5104, file: !5074, line: 34, size: 64, elements: !5108)
!5108 = !{!5109, !5110, !5111}
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5107, file: !5074, line: 35, baseType: !761, size: 32)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5107, file: !5074, line: 36, baseType: !399, size: 8, offset: 32)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5107, file: !5074, line: 37, baseType: !399, size: 8, offset: 40)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5104, file: !5074, line: 42, baseType: !5113, size: 16)
!5113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5104, file: !5074, line: 39, size: 16, elements: !5114)
!5114 = !{!5115, !5116}
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5113, file: !5074, line: 40, baseType: !399, size: 8)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5113, file: !5074, line: 41, baseType: !399, size: 8, offset: 8)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5104, file: !5074, line: 46, baseType: !5118, size: 16)
!5118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5104, file: !5074, line: 43, size: 16, elements: !5119)
!5119 = !{!5120, !5121}
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5118, file: !5074, line: 44, baseType: !399, size: 8)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5118, file: !5074, line: 45, baseType: !399, size: 8, offset: 8)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5063, file: !66, line: 81, baseType: !5123, size: 64, offset: 448)
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !66, line: 85, size: 384, elements: !5125)
!5125 = !{!5126, !5127, !5128, !5129, !5130, !5131}
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5124, file: !66, line: 86, baseType: !5086, size: 64)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5124, file: !66, line: 87, baseType: !223, size: 64, offset: 64)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5124, file: !66, line: 88, baseType: !223, size: 64, offset: 128)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5124, file: !66, line: 89, baseType: !223, size: 64, offset: 192)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5124, file: !66, line: 90, baseType: !829, size: 8, offset: 256)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5124, file: !66, line: 92, baseType: !5123, size: 64, offset: 320)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5063, file: !66, line: 82, baseType: !5, size: 32, offset: 512)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !215, file: !216, line: 1463, baseType: !5134, offset: 21184)
!5134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !216, line: 739, elements: !594)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !215, file: !216, line: 1470, baseType: !609, size: 128, align: 64, offset: 21184)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !215, file: !216, line: 1471, baseType: !230, size: 32, offset: 21312)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !215, file: !216, line: 1472, baseType: !112, size: 32, offset: 21344)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !215, file: !216, line: 1474, baseType: !214, size: 64, offset: 21376)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !215, file: !216, line: 1475, baseType: !2350, size: 320, offset: 21440)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !215, file: !216, line: 1478, baseType: !5141, size: 64, offset: 21760)
!5141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5142, size: 64)
!5142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !5143, line: 49, size: 512, elements: !5144)
!5143 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!5144 = !{!5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5154}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5142, file: !5143, line: 50, baseType: !5141, size: 64)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5142, file: !5143, line: 51, baseType: !190, size: 64, offset: 64)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5142, file: !5143, line: 52, baseType: !223, size: 64, offset: 128)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5142, file: !5143, line: 53, baseType: !223, size: 64, offset: 192)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5142, file: !5143, line: 54, baseType: !1758, size: 64, offset: 256)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !5142, file: !5143, line: 56, baseType: !5, size: 32, offset: 320)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !5142, file: !5143, line: 58, baseType: !5, size: 32, offset: 352)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !5142, file: !5143, line: 59, baseType: !5153, size: 64, offset: 384)
!5153 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !208, line: 159, baseType: !289)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !5142, file: !5143, line: 60, baseType: !1942, size: 64, offset: 448)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !215, file: !216, line: 1482, baseType: !230, size: 32, offset: 21824)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !215, file: !216, line: 1489, baseType: !190, size: 64, offset: 21888)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !215, file: !216, line: 1504, baseType: !190, size: 64, offset: 21952)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !215, file: !216, line: 1505, baseType: !290, size: 64, offset: 22016)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !215, file: !216, line: 1506, baseType: !289, size: 64, offset: 22080)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !215, file: !216, line: 1507, baseType: !290, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !215, file: !216, line: 1508, baseType: !290, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !215, file: !216, line: 1509, baseType: !290, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !215, file: !216, line: 1510, baseType: !609, size: 128, align: 64, offset: 22208)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !215, file: !216, line: 1511, baseType: !112, size: 32, offset: 22336)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !215, file: !216, line: 1515, baseType: !5166, size: 64, offset: 22400)
!5166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !248, line: 56, size: 64, elements: !5167)
!5167 = !{!5168}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5166, file: !248, line: 57, baseType: !251, size: 64)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !215, file: !216, line: 1518, baseType: !5166, size: 64, offset: 22464)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !215, file: !216, line: 1528, baseType: !609, size: 128, align: 64, offset: 22528)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !215, file: !216, line: 1552, baseType: !5172, size: 35328, offset: 23040)
!5172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5173, line: 430, size: 35328, elements: !5174)
!5173 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5174 = !{!5175, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5204, !5205, !5206, !5207, !5208, !5209, !5212, !5213, !5214, !5215}
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5172, file: !5173, line: 432, baseType: !5176, size: 192)
!5176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5177, size: 192, elements: !667)
!5177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5178, line: 16, size: 64, elements: !5179)
!5178 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5179 = !{!5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5177, file: !5178, line: 17, baseType: !258, size: 16)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5177, file: !5178, line: 18, baseType: !258, size: 16, offset: 16)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5177, file: !5178, line: 19, baseType: !258, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5177, file: !5178, line: 19, baseType: !258, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5177, file: !5178, line: 19, baseType: !258, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5177, file: !5178, line: 19, baseType: !258, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5177, file: !5178, line: 19, baseType: !258, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5177, file: !5178, line: 20, baseType: !258, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5177, file: !5178, line: 20, baseType: !258, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5177, file: !5178, line: 20, baseType: !258, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5177, file: !5178, line: 20, baseType: !258, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5177, file: !5178, line: 20, baseType: !258, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5177, file: !5178, line: 20, baseType: !258, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5172, file: !5173, line: 436, baseType: !223, size: 64, offset: 192)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5172, file: !5173, line: 440, baseType: !260, size: 16, offset: 256)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5172, file: !5173, line: 441, baseType: !260, size: 16, offset: 272)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5172, file: !5173, line: 442, baseType: !260, size: 16, offset: 288)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5172, file: !5173, line: 443, baseType: !260, size: 16, offset: 304)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5172, file: !5173, line: 447, baseType: !223, size: 64, offset: 320)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5172, file: !5173, line: 448, baseType: !223, size: 64, offset: 384)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5172, file: !5173, line: 459, baseType: !5201, size: 256, offset: 448)
!5201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5202, size: 256, elements: !688)
!5202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5203, size: 64)
!5203 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !5173, line: 428, flags: DIFlagFwdDecl)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5172, file: !5173, line: 461, baseType: !223, size: 64, offset: 704)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5172, file: !5173, line: 463, baseType: !223, size: 64, offset: 768)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5172, file: !5173, line: 465, baseType: !223, size: 64, offset: 832)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5172, file: !5173, line: 466, baseType: !223, size: 64, offset: 896)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5172, file: !5173, line: 467, baseType: !223, size: 64, offset: 960)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5172, file: !5173, line: 473, baseType: !5210, size: 64, offset: 1024)
!5210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5211, size: 64)
!5211 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5173, line: 10, flags: DIFlagFwdDecl)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5172, file: !5173, line: 480, baseType: !223, size: 64, offset: 1088)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5172, file: !5173, line: 482, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5172, file: !5173, line: 491, baseType: !186, size: 32, offset: 1184)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5172, file: !5173, line: 501, baseType: !5216, size: 33792, offset: 1536)
!5216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5217, line: 448, size: 33792, elements: !5218)
!5217 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5218 = !{!5219, !5220, !5221, !5383, !5384, !5390, !5391}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5216, file: !5217, line: 461, baseType: !5, size: 32)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5216, file: !5217, line: 468, baseType: !223, size: 64, offset: 64)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5216, file: !5217, line: 476, baseType: !5222, size: 64, offset: 128)
!5222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5223, size: 64)
!5223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5217, line: 356, size: 33280, align: 512, elements: !5224)
!5224 = !{!5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234}
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5223, file: !5217, line: 358, baseType: !5, size: 32)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5223, file: !5217, line: 361, baseType: !5, size: 32, offset: 32)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5223, file: !5217, line: 364, baseType: !289, size: 64, offset: 64)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5223, file: !5217, line: 367, baseType: !289, size: 64, offset: 128)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5223, file: !5217, line: 370, baseType: !289, size: 64, offset: 192)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5223, file: !5217, line: 373, baseType: !5, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5223, file: !5217, line: 376, baseType: !5, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5223, file: !5217, line: 391, baseType: !5, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5223, file: !5217, line: 394, baseType: !5, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5223, file: !5217, line: 397, baseType: !5235, size: 32768, offset: 512)
!5235 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5217, line: 348, size: 32768, elements: !5236)
!5236 = !{!5237, !5252, !5289, !5366, !5379}
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5235, file: !5217, line: 349, baseType: !5238, size: 896)
!5238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5217, line: 12, size: 896, elements: !5239)
!5239 = !{!5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5251}
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5238, file: !5217, line: 13, baseType: !186, size: 32)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5238, file: !5217, line: 14, baseType: !186, size: 32, offset: 32)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5238, file: !5217, line: 15, baseType: !186, size: 32, offset: 64)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5238, file: !5217, line: 16, baseType: !186, size: 32, offset: 96)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5238, file: !5217, line: 17, baseType: !186, size: 32, offset: 128)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5238, file: !5217, line: 18, baseType: !186, size: 32, offset: 160)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5238, file: !5217, line: 19, baseType: !186, size: 32, offset: 192)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5238, file: !5217, line: 22, baseType: !5248, size: 640, offset: 224)
!5248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 640, elements: !5249)
!5249 = !{!5250}
!5250 = !DISubrange(count: 20)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5238, file: !5217, line: 25, baseType: !186, size: 32, offset: 864)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5235, file: !5217, line: 350, baseType: !5253, size: 4096, align: 128)
!5253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5217, line: 34, size: 4096, align: 128, elements: !5254)
!5254 = !{!5255, !5256, !5257, !5258, !5259, !5274, !5275, !5276, !5278, !5280, !5284}
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5253, file: !5217, line: 35, baseType: !258, size: 16)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5253, file: !5217, line: 36, baseType: !258, size: 16, offset: 16)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5253, file: !5217, line: 37, baseType: !258, size: 16, offset: 32)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5253, file: !5217, line: 38, baseType: !258, size: 16, offset: 48)
!5259 = !DIDerivedType(tag: DW_TAG_member, scope: !5253, file: !5217, line: 39, baseType: !5260, size: 128, offset: 64)
!5260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5253, file: !5217, line: 39, size: 128, elements: !5261)
!5261 = !{!5262, !5267}
!5262 = !DIDerivedType(tag: DW_TAG_member, scope: !5260, file: !5217, line: 40, baseType: !5263, size: 128)
!5263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5260, file: !5217, line: 40, size: 128, elements: !5264)
!5264 = !{!5265, !5266}
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5263, file: !5217, line: 41, baseType: !289, size: 64)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5263, file: !5217, line: 42, baseType: !289, size: 64, offset: 64)
!5267 = !DIDerivedType(tag: DW_TAG_member, scope: !5260, file: !5217, line: 44, baseType: !5268, size: 128)
!5268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5260, file: !5217, line: 44, size: 128, elements: !5269)
!5269 = !{!5270, !5271, !5272, !5273}
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5268, file: !5217, line: 45, baseType: !186, size: 32)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5268, file: !5217, line: 46, baseType: !186, size: 32, offset: 32)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5268, file: !5217, line: 47, baseType: !186, size: 32, offset: 64)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5268, file: !5217, line: 48, baseType: !186, size: 32, offset: 96)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5253, file: !5217, line: 51, baseType: !186, size: 32, offset: 192)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5253, file: !5217, line: 52, baseType: !186, size: 32, offset: 224)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5253, file: !5217, line: 55, baseType: !5277, size: 1024, offset: 256)
!5277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 1024, elements: !2774)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5253, file: !5217, line: 58, baseType: !5279, size: 2048, offset: 1280)
!5279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 2048, elements: !1290)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5253, file: !5217, line: 60, baseType: !5281, size: 384, offset: 3328)
!5281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 384, elements: !5282)
!5282 = !{!5283}
!5283 = !DISubrange(count: 12)
!5284 = !DIDerivedType(tag: DW_TAG_member, scope: !5253, file: !5217, line: 62, baseType: !5285, size: 384, offset: 3712)
!5285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5253, file: !5217, line: 62, size: 384, elements: !5286)
!5286 = !{!5287, !5288}
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5285, file: !5217, line: 63, baseType: !5281, size: 384)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5285, file: !5217, line: 64, baseType: !5281, size: 384)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5235, file: !5217, line: 351, baseType: !5290, size: 1088)
!5290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5217, line: 79, size: 1088, elements: !5291)
!5291 = !{!5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5365}
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5290, file: !5217, line: 80, baseType: !186, size: 32)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5290, file: !5217, line: 81, baseType: !186, size: 32, offset: 32)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5290, file: !5217, line: 82, baseType: !186, size: 32, offset: 64)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5290, file: !5217, line: 83, baseType: !186, size: 32, offset: 96)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5290, file: !5217, line: 84, baseType: !186, size: 32, offset: 128)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5290, file: !5217, line: 85, baseType: !186, size: 32, offset: 160)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5290, file: !5217, line: 86, baseType: !186, size: 32, offset: 192)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5290, file: !5217, line: 88, baseType: !5248, size: 640, offset: 224)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5290, file: !5217, line: 89, baseType: !399, size: 8, offset: 864)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5290, file: !5217, line: 90, baseType: !399, size: 8, offset: 872)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5290, file: !5217, line: 91, baseType: !399, size: 8, offset: 880)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5290, file: !5217, line: 92, baseType: !399, size: 8, offset: 888)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5290, file: !5217, line: 93, baseType: !399, size: 8, offset: 896)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5290, file: !5217, line: 94, baseType: !399, size: 8, offset: 904)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5290, file: !5217, line: 95, baseType: !5307, size: 64, offset: 960)
!5307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5308, size: 64)
!5308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5309, line: 11, size: 128, elements: !5310)
!5309 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5310 = !{!5311, !5312}
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5308, file: !5309, line: 12, baseType: !1103, size: 64)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5308, file: !5309, line: 13, baseType: !5313, size: 64, offset: 64)
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5314, size: 64)
!5314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5315, line: 103, size: 1344, elements: !5316)
!5315 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5316 = !{!5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5345, !5346, !5347}
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5314, file: !5315, line: 109, baseType: !223, size: 64)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5314, file: !5315, line: 110, baseType: !223, size: 64, offset: 64)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5314, file: !5315, line: 111, baseType: !223, size: 64, offset: 128)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5314, file: !5315, line: 112, baseType: !223, size: 64, offset: 192)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5314, file: !5315, line: 113, baseType: !223, size: 64, offset: 256)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5314, file: !5315, line: 114, baseType: !223, size: 64, offset: 320)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5314, file: !5315, line: 117, baseType: !223, size: 64, offset: 384)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5314, file: !5315, line: 118, baseType: !223, size: 64, offset: 448)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5314, file: !5315, line: 119, baseType: !223, size: 64, offset: 512)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5314, file: !5315, line: 120, baseType: !223, size: 64, offset: 576)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5314, file: !5315, line: 121, baseType: !223, size: 64, offset: 640)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5314, file: !5315, line: 122, baseType: !223, size: 64, offset: 704)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5314, file: !5315, line: 123, baseType: !223, size: 64, offset: 768)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5314, file: !5315, line: 124, baseType: !223, size: 64, offset: 832)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5314, file: !5315, line: 125, baseType: !223, size: 64, offset: 896)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5314, file: !5315, line: 139, baseType: !223, size: 64, offset: 960)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5314, file: !5315, line: 142, baseType: !223, size: 64, offset: 1024)
!5334 = !DIDerivedType(tag: DW_TAG_member, scope: !5314, file: !5315, line: 144, baseType: !5335, size: 64, offset: 1088)
!5335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5314, file: !5315, line: 144, size: 64, elements: !5336)
!5336 = !{!5337, !5338, !5339}
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5335, file: !5315, line: 146, baseType: !258, size: 16)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5335, file: !5315, line: 148, baseType: !289, size: 64)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5335, file: !5315, line: 150, baseType: !5340, size: 64)
!5340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5315, line: 59, size: 64, elements: !5341)
!5341 = !{!5342, !5343, !5344}
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5340, file: !5315, line: 61, baseType: !289, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5340, file: !5315, line: 63, baseType: !289, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5340, file: !5315, line: 65, baseType: !289, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5314, file: !5315, line: 153, baseType: !223, size: 64, offset: 1152)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5314, file: !5315, line: 154, baseType: !223, size: 64, offset: 1216)
!5347 = !DIDerivedType(tag: DW_TAG_member, scope: !5314, file: !5315, line: 156, baseType: !5348, size: 64, offset: 1280)
!5348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5314, file: !5315, line: 156, size: 64, elements: !5349)
!5349 = !{!5350, !5351, !5352}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5348, file: !5315, line: 158, baseType: !258, size: 16)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5348, file: !5315, line: 160, baseType: !289, size: 64)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5348, file: !5315, line: 162, baseType: !5353, size: 64)
!5353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5315, line: 69, size: 64, elements: !5354)
!5354 = !{!5355, !5356, !5357, !5358, !5359, !5360, !5361, !5362, !5363, !5364}
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5353, file: !5315, line: 71, baseType: !289, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5353, file: !5315, line: 73, baseType: !289, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5353, file: !5315, line: 75, baseType: !289, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5353, file: !5315, line: 77, baseType: !289, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5353, file: !5315, line: 80, baseType: !289, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5353, file: !5315, line: 83, baseType: !289, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5353, file: !5315, line: 86, baseType: !289, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5353, file: !5315, line: 88, baseType: !289, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5353, file: !5315, line: 93, baseType: !289, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5353, file: !5315, line: 100, baseType: !289, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5290, file: !5217, line: 96, baseType: !186, size: 32, offset: 1024)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5235, file: !5217, line: 352, baseType: !5367, size: 4608, align: 512)
!5367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5217, line: 333, size: 4608, align: 512, elements: !5368)
!5368 = !{!5369, !5370, !5377}
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5367, file: !5217, line: 334, baseType: !5253, size: 4096, align: 128)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5367, file: !5217, line: 335, baseType: !5371, size: 512, offset: 4096)
!5371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5217, line: 312, size: 512, elements: !5372)
!5372 = !{!5373, !5374, !5375}
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5371, file: !5217, line: 313, baseType: !289, size: 64)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5371, file: !5217, line: 314, baseType: !289, size: 64, offset: 64)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5371, file: !5217, line: 315, baseType: !5376, size: 384, offset: 128)
!5376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 384, elements: !816)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5367, file: !5217, line: 336, baseType: !5378, offset: 4608)
!5378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, elements: !706)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5235, file: !5217, line: 353, baseType: !5380, size: 32768)
!5380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 32768, elements: !5381)
!5381 = !{!5382}
!5382 = !DISubrange(count: 4096)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5216, file: !5217, line: 484, baseType: !5222, size: 64, offset: 192)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5216, file: !5217, line: 491, baseType: !5385, size: 128, offset: 256)
!5385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5217, line: 404, size: 128, elements: !5386)
!5386 = !{!5387, !5388, !5389}
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5385, file: !5217, line: 424, baseType: !289, size: 64)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5385, file: !5217, line: 432, baseType: !5, size: 32, offset: 64)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5385, file: !5217, line: 440, baseType: !5, size: 32, offset: 96)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5216, file: !5217, line: 498, baseType: !5385, size: 128, offset: 384)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5216, file: !5217, line: 508, baseType: !5223, size: 33280, align: 512, offset: 512)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "rqw", scope: !192, file: !1, line: 200, baseType: !5393, size: 64, offset: 384)
!5393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5394, size: 64)
!5394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rq_wait", file: !169, line: 22, size: 256, elements: !5395)
!5395 = !{!5396, !5397}
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5394, file: !169, line: 23, baseType: !692, size: 192)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "inflight", scope: !5394, file: !169, line: 24, baseType: !235, size: 32, offset: 192)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !192, file: !1, line: 201, baseType: !5399, size: 64, offset: 448)
!5399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5400, size: 64)
!5400 = !DIDerivedType(tag: DW_TAG_typedef, name: "acquire_inflight_cb_t", file: !169, line: 92, baseType: !5401)
!5401 = !DISubroutineType(types: !5402)
!5402 = !{!829, !5393, !190}
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !192, file: !1, line: 202, baseType: !190, size: 64, offset: 512)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "got_token", scope: !192, file: !1, line: 203, baseType: !829, size: 8, offset: 576)
!5405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5406, size: 64)
!5406 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !211)
!5407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!5408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5409, size: 64)
!5409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5406)
!5410 = !{i32 7, !"Dwarf Version", i32 5}
!5411 = !{i32 2, !"Debug Info Version", i32 3}
!5412 = !{i32 1, !"wchar_size", i32 2}
!5413 = !{i32 8, !"cf-protection-branch", i32 1}
!5414 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5415 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5416 = !{i32 1, !"Code Model", i32 2}
!5417 = !{i32 1, !"override-stack-alignment", i32 8}
!5418 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5419 = distinct !DISubprogram(name: "rq_wait_inc_below", scope: !1, file: !1, line: 21, type: !5420, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5422)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{!829, !5393, !5}
!5422 = !{!5423, !5424}
!5423 = !DILocalVariable(name: "rq_wait", arg: 1, scope: !5419, file: !1, line: 21, type: !5393)
!5424 = !DILocalVariable(name: "limit", arg: 2, scope: !5419, file: !1, line: 21, type: !5)
!5425 = !DILocation(line: 21, column: 40, scope: !5419)
!5426 = !DILocation(line: 21, column: 62, scope: !5419)
!5427 = !DILocation(line: 23, column: 27, scope: !5419)
!5428 = !DILocation(line: 23, column: 36, scope: !5419)
!5429 = !DILocation(line: 23, column: 46, scope: !5419)
!5430 = !DILocation(line: 23, column: 9, scope: !5419)
!5431 = !DILocation(line: 23, column: 2, scope: !5419)
!5432 = distinct !DISubprogram(name: "atomic_inc_below", scope: !1, file: !1, line: 9, type: !5433, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5436)
!5433 = !DISubroutineType(types: !5434)
!5434 = !{!829, !5435, !5}
!5435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!5436 = !{!5437, !5438, !5439}
!5437 = !DILocalVariable(name: "v", arg: 1, scope: !5432, file: !1, line: 9, type: !5435)
!5438 = !DILocalVariable(name: "below", arg: 2, scope: !5432, file: !1, line: 9, type: !5)
!5439 = !DILocalVariable(name: "cur", scope: !5432, file: !1, line: 11, type: !5)
!5440 = !DILocation(line: 9, column: 40, scope: !5432)
!5441 = !DILocation(line: 9, column: 56, scope: !5432)
!5442 = !DILocation(line: 11, column: 2, scope: !5432)
!5443 = !DILocation(line: 11, column: 15, scope: !5432)
!5444 = !DILocation(line: 11, column: 33, scope: !5432)
!5445 = !DILocation(line: 11, column: 21, scope: !5432)
!5446 = !DILocation(line: 13, column: 2, scope: !5432)
!5447 = !DILocation(line: 14, column: 7, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5449, file: !1, line: 14, column: 7)
!5449 = distinct !DILexicalBlock(scope: !5432, file: !1, line: 13, column: 5)
!5450 = !DILocation(line: 14, column: 14, scope: !5448)
!5451 = !DILocation(line: 14, column: 11, scope: !5448)
!5452 = !DILocation(line: 14, column: 7, scope: !5449)
!5453 = !DILocation(line: 15, column: 4, scope: !5448)
!5454 = !DILocation(line: 16, column: 2, scope: !5449)
!5455 = !DILocation(line: 16, column: 31, scope: !5432)
!5456 = !DILocation(line: 16, column: 40, scope: !5432)
!5457 = !DILocation(line: 16, column: 44, scope: !5432)
!5458 = !DILocation(line: 16, column: 12, scope: !5432)
!5459 = !DILocation(line: 16, column: 11, scope: !5432)
!5460 = distinct !{!5460, !5446, !5461, !5462, !5463}
!5461 = !DILocation(line: 16, column: 48, scope: !5432)
!5462 = !{!"llvm.loop.mustprogress"}
!5463 = !{!"llvm.loop.unroll.disable"}
!5464 = !DILocation(line: 18, column: 2, scope: !5432)
!5465 = !DILocation(line: 19, column: 1, scope: !5432)
!5466 = distinct !DISubprogram(name: "__rq_qos_cleanup", scope: !1, file: !1, line: 26, type: !2910, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5467)
!5467 = !{!5468, !5469}
!5468 = !DILocalVariable(name: "rqos", arg: 1, scope: !5466, file: !1, line: 26, type: !2900)
!5469 = !DILocalVariable(name: "bio", arg: 2, scope: !5466, file: !1, line: 26, type: !2789)
!5470 = !DILocation(line: 26, column: 38, scope: !5466)
!5471 = !DILocation(line: 26, column: 56, scope: !5466)
!5472 = !DILocation(line: 28, column: 2, scope: !5466)
!5473 = !DILocation(line: 29, column: 7, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5475, file: !1, line: 29, column: 7)
!5475 = distinct !DILexicalBlock(scope: !5466, file: !1, line: 28, column: 5)
!5476 = !DILocation(line: 29, column: 13, scope: !5474)
!5477 = !DILocation(line: 29, column: 18, scope: !5474)
!5478 = !DILocation(line: 29, column: 7, scope: !5475)
!5479 = !DILocation(line: 30, column: 4, scope: !5474)
!5480 = !DILocation(line: 30, column: 10, scope: !5474)
!5481 = !DILocation(line: 30, column: 15, scope: !5474)
!5482 = !DILocation(line: 30, column: 23, scope: !5474)
!5483 = !DILocation(line: 30, column: 29, scope: !5474)
!5484 = !DILocation(line: 31, column: 10, scope: !5475)
!5485 = !DILocation(line: 31, column: 16, scope: !5475)
!5486 = !DILocation(line: 31, column: 8, scope: !5475)
!5487 = !DILocation(line: 32, column: 2, scope: !5475)
!5488 = !DILocation(line: 32, column: 11, scope: !5466)
!5489 = distinct !{!5489, !5472, !5490, !5462, !5463}
!5490 = !DILocation(line: 32, column: 15, scope: !5466)
!5491 = !DILocation(line: 33, column: 1, scope: !5466)
!5492 = distinct !DISubprogram(name: "__rq_qos_done", scope: !1, file: !1, line: 35, type: !2919, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5493)
!5493 = !{!5494, !5495}
!5494 = !DILocalVariable(name: "rqos", arg: 1, scope: !5492, file: !1, line: 35, type: !2900)
!5495 = !DILocalVariable(name: "rq", arg: 2, scope: !5492, file: !1, line: 35, type: !2884)
!5496 = !DILocation(line: 35, column: 35, scope: !5492)
!5497 = !DILocation(line: 35, column: 57, scope: !5492)
!5498 = !DILocation(line: 37, column: 2, scope: !5492)
!5499 = !DILocation(line: 38, column: 7, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5501, file: !1, line: 38, column: 7)
!5501 = distinct !DILexicalBlock(scope: !5492, file: !1, line: 37, column: 5)
!5502 = !DILocation(line: 38, column: 13, scope: !5500)
!5503 = !DILocation(line: 38, column: 18, scope: !5500)
!5504 = !DILocation(line: 38, column: 7, scope: !5501)
!5505 = !DILocation(line: 39, column: 4, scope: !5500)
!5506 = !DILocation(line: 39, column: 10, scope: !5500)
!5507 = !DILocation(line: 39, column: 15, scope: !5500)
!5508 = !DILocation(line: 39, column: 20, scope: !5500)
!5509 = !DILocation(line: 39, column: 26, scope: !5500)
!5510 = !DILocation(line: 40, column: 10, scope: !5501)
!5511 = !DILocation(line: 40, column: 16, scope: !5501)
!5512 = !DILocation(line: 40, column: 8, scope: !5501)
!5513 = !DILocation(line: 41, column: 2, scope: !5501)
!5514 = !DILocation(line: 41, column: 11, scope: !5492)
!5515 = distinct !{!5515, !5498, !5516, !5462, !5463}
!5516 = !DILocation(line: 41, column: 15, scope: !5492)
!5517 = !DILocation(line: 42, column: 1, scope: !5492)
!5518 = distinct !DISubprogram(name: "__rq_qos_issue", scope: !1, file: !1, line: 44, type: !2919, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5519)
!5519 = !{!5520, !5521}
!5520 = !DILocalVariable(name: "rqos", arg: 1, scope: !5518, file: !1, line: 44, type: !2900)
!5521 = !DILocalVariable(name: "rq", arg: 2, scope: !5518, file: !1, line: 44, type: !2884)
!5522 = !DILocation(line: 44, column: 36, scope: !5518)
!5523 = !DILocation(line: 44, column: 58, scope: !5518)
!5524 = !DILocation(line: 46, column: 2, scope: !5518)
!5525 = !DILocation(line: 47, column: 7, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5527, file: !1, line: 47, column: 7)
!5527 = distinct !DILexicalBlock(scope: !5518, file: !1, line: 46, column: 5)
!5528 = !DILocation(line: 47, column: 13, scope: !5526)
!5529 = !DILocation(line: 47, column: 18, scope: !5526)
!5530 = !DILocation(line: 47, column: 7, scope: !5527)
!5531 = !DILocation(line: 48, column: 4, scope: !5526)
!5532 = !DILocation(line: 48, column: 10, scope: !5526)
!5533 = !DILocation(line: 48, column: 15, scope: !5526)
!5534 = !DILocation(line: 48, column: 21, scope: !5526)
!5535 = !DILocation(line: 48, column: 27, scope: !5526)
!5536 = !DILocation(line: 49, column: 10, scope: !5527)
!5537 = !DILocation(line: 49, column: 16, scope: !5527)
!5538 = !DILocation(line: 49, column: 8, scope: !5527)
!5539 = !DILocation(line: 50, column: 2, scope: !5527)
!5540 = !DILocation(line: 50, column: 11, scope: !5518)
!5541 = distinct !{!5541, !5524, !5542, !5462, !5463}
!5542 = !DILocation(line: 50, column: 15, scope: !5518)
!5543 = !DILocation(line: 51, column: 1, scope: !5518)
!5544 = distinct !DISubprogram(name: "__rq_qos_requeue", scope: !1, file: !1, line: 53, type: !2919, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5545)
!5545 = !{!5546, !5547}
!5546 = !DILocalVariable(name: "rqos", arg: 1, scope: !5544, file: !1, line: 53, type: !2900)
!5547 = !DILocalVariable(name: "rq", arg: 2, scope: !5544, file: !1, line: 53, type: !2884)
!5548 = !DILocation(line: 53, column: 38, scope: !5544)
!5549 = !DILocation(line: 53, column: 60, scope: !5544)
!5550 = !DILocation(line: 55, column: 2, scope: !5544)
!5551 = !DILocation(line: 56, column: 7, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5553, file: !1, line: 56, column: 7)
!5553 = distinct !DILexicalBlock(scope: !5544, file: !1, line: 55, column: 5)
!5554 = !DILocation(line: 56, column: 13, scope: !5552)
!5555 = !DILocation(line: 56, column: 18, scope: !5552)
!5556 = !DILocation(line: 56, column: 7, scope: !5553)
!5557 = !DILocation(line: 57, column: 4, scope: !5552)
!5558 = !DILocation(line: 57, column: 10, scope: !5552)
!5559 = !DILocation(line: 57, column: 15, scope: !5552)
!5560 = !DILocation(line: 57, column: 23, scope: !5552)
!5561 = !DILocation(line: 57, column: 29, scope: !5552)
!5562 = !DILocation(line: 58, column: 10, scope: !5553)
!5563 = !DILocation(line: 58, column: 16, scope: !5553)
!5564 = !DILocation(line: 58, column: 8, scope: !5553)
!5565 = !DILocation(line: 59, column: 2, scope: !5553)
!5566 = !DILocation(line: 59, column: 11, scope: !5544)
!5567 = distinct !{!5567, !5550, !5568, !5462, !5463}
!5568 = !DILocation(line: 59, column: 15, scope: !5544)
!5569 = !DILocation(line: 60, column: 1, scope: !5544)
!5570 = distinct !DISubprogram(name: "__rq_qos_throttle", scope: !1, file: !1, line: 62, type: !2910, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5571)
!5571 = !{!5572, !5573}
!5572 = !DILocalVariable(name: "rqos", arg: 1, scope: !5570, file: !1, line: 62, type: !2900)
!5573 = !DILocalVariable(name: "bio", arg: 2, scope: !5570, file: !1, line: 62, type: !2789)
!5574 = !DILocation(line: 62, column: 39, scope: !5570)
!5575 = !DILocation(line: 62, column: 57, scope: !5570)
!5576 = !DILocation(line: 64, column: 2, scope: !5570)
!5577 = !DILocation(line: 65, column: 7, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5579, file: !1, line: 65, column: 7)
!5579 = distinct !DILexicalBlock(scope: !5570, file: !1, line: 64, column: 5)
!5580 = !DILocation(line: 65, column: 13, scope: !5578)
!5581 = !DILocation(line: 65, column: 18, scope: !5578)
!5582 = !DILocation(line: 65, column: 7, scope: !5579)
!5583 = !DILocation(line: 66, column: 4, scope: !5578)
!5584 = !DILocation(line: 66, column: 10, scope: !5578)
!5585 = !DILocation(line: 66, column: 15, scope: !5578)
!5586 = !DILocation(line: 66, column: 24, scope: !5578)
!5587 = !DILocation(line: 66, column: 30, scope: !5578)
!5588 = !DILocation(line: 67, column: 10, scope: !5579)
!5589 = !DILocation(line: 67, column: 16, scope: !5579)
!5590 = !DILocation(line: 67, column: 8, scope: !5579)
!5591 = !DILocation(line: 68, column: 2, scope: !5579)
!5592 = !DILocation(line: 68, column: 11, scope: !5570)
!5593 = distinct !{!5593, !5576, !5594, !5462, !5463}
!5594 = !DILocation(line: 68, column: 15, scope: !5570)
!5595 = !DILocation(line: 69, column: 1, scope: !5570)
!5596 = distinct !DISubprogram(name: "__rq_qos_track", scope: !1, file: !1, line: 71, type: !2914, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5597)
!5597 = !{!5598, !5599, !5600}
!5598 = !DILocalVariable(name: "rqos", arg: 1, scope: !5596, file: !1, line: 71, type: !2900)
!5599 = !DILocalVariable(name: "rq", arg: 2, scope: !5596, file: !1, line: 71, type: !2884)
!5600 = !DILocalVariable(name: "bio", arg: 3, scope: !5596, file: !1, line: 71, type: !2789)
!5601 = !DILocation(line: 71, column: 36, scope: !5596)
!5602 = !DILocation(line: 71, column: 58, scope: !5596)
!5603 = !DILocation(line: 71, column: 74, scope: !5596)
!5604 = !DILocation(line: 73, column: 2, scope: !5596)
!5605 = !DILocation(line: 74, column: 7, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5607, file: !1, line: 74, column: 7)
!5607 = distinct !DILexicalBlock(scope: !5596, file: !1, line: 73, column: 5)
!5608 = !DILocation(line: 74, column: 13, scope: !5606)
!5609 = !DILocation(line: 74, column: 18, scope: !5606)
!5610 = !DILocation(line: 74, column: 7, scope: !5607)
!5611 = !DILocation(line: 75, column: 4, scope: !5606)
!5612 = !DILocation(line: 75, column: 10, scope: !5606)
!5613 = !DILocation(line: 75, column: 15, scope: !5606)
!5614 = !DILocation(line: 75, column: 21, scope: !5606)
!5615 = !DILocation(line: 75, column: 27, scope: !5606)
!5616 = !DILocation(line: 75, column: 31, scope: !5606)
!5617 = !DILocation(line: 76, column: 10, scope: !5607)
!5618 = !DILocation(line: 76, column: 16, scope: !5607)
!5619 = !DILocation(line: 76, column: 8, scope: !5607)
!5620 = !DILocation(line: 77, column: 2, scope: !5607)
!5621 = !DILocation(line: 77, column: 11, scope: !5596)
!5622 = distinct !{!5622, !5604, !5623, !5462, !5463}
!5623 = !DILocation(line: 77, column: 15, scope: !5596)
!5624 = !DILocation(line: 78, column: 1, scope: !5596)
!5625 = distinct !DISubprogram(name: "__rq_qos_merge", scope: !1, file: !1, line: 80, type: !2914, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5626)
!5626 = !{!5627, !5628, !5629}
!5627 = !DILocalVariable(name: "rqos", arg: 1, scope: !5625, file: !1, line: 80, type: !2900)
!5628 = !DILocalVariable(name: "rq", arg: 2, scope: !5625, file: !1, line: 80, type: !2884)
!5629 = !DILocalVariable(name: "bio", arg: 3, scope: !5625, file: !1, line: 80, type: !2789)
!5630 = !DILocation(line: 80, column: 36, scope: !5625)
!5631 = !DILocation(line: 80, column: 58, scope: !5625)
!5632 = !DILocation(line: 80, column: 74, scope: !5625)
!5633 = !DILocation(line: 82, column: 2, scope: !5625)
!5634 = !DILocation(line: 83, column: 7, scope: !5635)
!5635 = distinct !DILexicalBlock(scope: !5636, file: !1, line: 83, column: 7)
!5636 = distinct !DILexicalBlock(scope: !5625, file: !1, line: 82, column: 5)
!5637 = !DILocation(line: 83, column: 13, scope: !5635)
!5638 = !DILocation(line: 83, column: 18, scope: !5635)
!5639 = !DILocation(line: 83, column: 7, scope: !5636)
!5640 = !DILocation(line: 84, column: 4, scope: !5635)
!5641 = !DILocation(line: 84, column: 10, scope: !5635)
!5642 = !DILocation(line: 84, column: 15, scope: !5635)
!5643 = !DILocation(line: 84, column: 21, scope: !5635)
!5644 = !DILocation(line: 84, column: 27, scope: !5635)
!5645 = !DILocation(line: 84, column: 31, scope: !5635)
!5646 = !DILocation(line: 85, column: 10, scope: !5636)
!5647 = !DILocation(line: 85, column: 16, scope: !5636)
!5648 = !DILocation(line: 85, column: 8, scope: !5636)
!5649 = !DILocation(line: 86, column: 2, scope: !5636)
!5650 = !DILocation(line: 86, column: 11, scope: !5625)
!5651 = distinct !{!5651, !5633, !5652, !5462, !5463}
!5652 = !DILocation(line: 86, column: 15, scope: !5625)
!5653 = !DILocation(line: 87, column: 1, scope: !5625)
!5654 = distinct !DISubprogram(name: "__rq_qos_done_bio", scope: !1, file: !1, line: 89, type: !2910, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5655)
!5655 = !{!5656, !5657}
!5656 = !DILocalVariable(name: "rqos", arg: 1, scope: !5654, file: !1, line: 89, type: !2900)
!5657 = !DILocalVariable(name: "bio", arg: 2, scope: !5654, file: !1, line: 89, type: !2789)
!5658 = !DILocation(line: 89, column: 39, scope: !5654)
!5659 = !DILocation(line: 89, column: 57, scope: !5654)
!5660 = !DILocation(line: 91, column: 2, scope: !5654)
!5661 = !DILocation(line: 92, column: 7, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5663, file: !1, line: 92, column: 7)
!5663 = distinct !DILexicalBlock(scope: !5654, file: !1, line: 91, column: 5)
!5664 = !DILocation(line: 92, column: 13, scope: !5662)
!5665 = !DILocation(line: 92, column: 18, scope: !5662)
!5666 = !DILocation(line: 92, column: 7, scope: !5663)
!5667 = !DILocation(line: 93, column: 4, scope: !5662)
!5668 = !DILocation(line: 93, column: 10, scope: !5662)
!5669 = !DILocation(line: 93, column: 15, scope: !5662)
!5670 = !DILocation(line: 93, column: 24, scope: !5662)
!5671 = !DILocation(line: 93, column: 30, scope: !5662)
!5672 = !DILocation(line: 94, column: 10, scope: !5663)
!5673 = !DILocation(line: 94, column: 16, scope: !5663)
!5674 = !DILocation(line: 94, column: 8, scope: !5663)
!5675 = !DILocation(line: 95, column: 2, scope: !5663)
!5676 = !DILocation(line: 95, column: 11, scope: !5654)
!5677 = distinct !{!5677, !5660, !5678, !5462, !5463}
!5678 = !DILocation(line: 95, column: 15, scope: !5654)
!5679 = !DILocation(line: 96, column: 1, scope: !5654)
!5680 = distinct !DISubprogram(name: "__rq_qos_queue_depth_changed", scope: !1, file: !1, line: 98, type: !2927, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5681)
!5681 = !{!5682}
!5682 = !DILocalVariable(name: "rqos", arg: 1, scope: !5680, file: !1, line: 98, type: !2900)
!5683 = !DILocation(line: 98, column: 50, scope: !5680)
!5684 = !DILocation(line: 100, column: 2, scope: !5680)
!5685 = !DILocation(line: 101, column: 7, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5687, file: !1, line: 101, column: 7)
!5687 = distinct !DILexicalBlock(scope: !5680, file: !1, line: 100, column: 5)
!5688 = !DILocation(line: 101, column: 13, scope: !5686)
!5689 = !DILocation(line: 101, column: 18, scope: !5686)
!5690 = !DILocation(line: 101, column: 7, scope: !5687)
!5691 = !DILocation(line: 102, column: 4, scope: !5686)
!5692 = !DILocation(line: 102, column: 10, scope: !5686)
!5693 = !DILocation(line: 102, column: 15, scope: !5686)
!5694 = !DILocation(line: 102, column: 35, scope: !5686)
!5695 = !DILocation(line: 103, column: 10, scope: !5687)
!5696 = !DILocation(line: 103, column: 16, scope: !5687)
!5697 = !DILocation(line: 103, column: 8, scope: !5687)
!5698 = !DILocation(line: 104, column: 2, scope: !5687)
!5699 = !DILocation(line: 104, column: 11, scope: !5680)
!5700 = distinct !{!5700, !5684, !5701, !5462, !5463}
!5701 = !DILocation(line: 104, column: 15, scope: !5680)
!5702 = !DILocation(line: 105, column: 1, scope: !5680)
!5703 = distinct !DISubprogram(name: "rq_depth_calc_max_depth", scope: !1, file: !1, line: 110, type: !5704, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5714)
!5704 = !DISubroutineType(types: !5705)
!5705 = !{!829, !5706}
!5706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5707, size: 64)
!5707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rq_depth", file: !169, line: 51, size: 160, elements: !5708)
!5708 = !{!5709, !5710, !5711, !5712, !5713}
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !5707, file: !169, line: 52, baseType: !5, size: 32)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "scale_step", scope: !5707, file: !169, line: 54, baseType: !112, size: 32, offset: 32)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "scaled_max", scope: !5707, file: !169, line: 55, baseType: !829, size: 8, offset: 64)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !5707, file: !169, line: 57, baseType: !5, size: 32, offset: 96)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "default_depth", scope: !5707, file: !169, line: 58, baseType: !5, size: 32, offset: 128)
!5714 = !{!5715, !5716, !5717, !5718, !5722, !5723, !5726, !5727}
!5715 = !DILocalVariable(name: "rqd", arg: 1, scope: !5703, file: !1, line: 110, type: !5706)
!5716 = !DILocalVariable(name: "depth", scope: !5703, file: !1, line: 112, type: !5)
!5717 = !DILocalVariable(name: "ret", scope: !5703, file: !1, line: 113, type: !829)
!5718 = !DILocalVariable(name: "__UNIQUE_ID___x346", scope: !5719, file: !1, line: 137, type: !5)
!5719 = distinct !DILexicalBlock(scope: !5720, file: !1, line: 137, column: 11)
!5720 = distinct !DILexicalBlock(scope: !5721, file: !1, line: 129, column: 9)
!5721 = distinct !DILexicalBlock(scope: !5703, file: !1, line: 122, column: 6)
!5722 = !DILocalVariable(name: "__UNIQUE_ID___y347", scope: !5719, file: !1, line: 137, type: !5)
!5723 = !DILocalVariable(name: "__UNIQUE_ID___x348", scope: !5724, file: !1, line: 140, type: !112)
!5724 = distinct !DILexicalBlock(scope: !5725, file: !1, line: 140, column: 32)
!5725 = distinct !DILexicalBlock(scope: !5720, file: !1, line: 139, column: 7)
!5726 = !DILocalVariable(name: "__UNIQUE_ID___y349", scope: !5724, file: !1, line: 140, type: !112)
!5727 = !DILocalVariable(name: "maxd", scope: !5728, file: !1, line: 142, type: !5)
!5728 = distinct !DILexicalBlock(scope: !5729, file: !1, line: 141, column: 33)
!5729 = distinct !DILexicalBlock(scope: !5725, file: !1, line: 141, column: 12)
!5730 = !DILocation(line: 110, column: 47, scope: !5703)
!5731 = !DILocation(line: 112, column: 2, scope: !5703)
!5732 = !DILocation(line: 112, column: 15, scope: !5703)
!5733 = !DILocation(line: 113, column: 2, scope: !5703)
!5734 = !DILocation(line: 113, column: 7, scope: !5703)
!5735 = !DILocation(line: 122, column: 6, scope: !5721)
!5736 = !DILocation(line: 122, column: 11, scope: !5721)
!5737 = !DILocation(line: 122, column: 23, scope: !5721)
!5738 = !DILocation(line: 122, column: 6, scope: !5703)
!5739 = !DILocation(line: 123, column: 7, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5741, file: !1, line: 123, column: 7)
!5741 = distinct !DILexicalBlock(scope: !5721, file: !1, line: 122, column: 29)
!5742 = !DILocation(line: 123, column: 12, scope: !5740)
!5743 = !DILocation(line: 123, column: 23, scope: !5740)
!5744 = !DILocation(line: 123, column: 7, scope: !5741)
!5745 = !DILocation(line: 124, column: 4, scope: !5740)
!5746 = !DILocation(line: 124, column: 9, scope: !5740)
!5747 = !DILocation(line: 124, column: 19, scope: !5740)
!5748 = !DILocation(line: 126, column: 4, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5740, file: !1, line: 125, column: 8)
!5750 = !DILocation(line: 126, column: 9, scope: !5749)
!5751 = !DILocation(line: 126, column: 19, scope: !5749)
!5752 = !DILocation(line: 127, column: 8, scope: !5749)
!5753 = !DILocation(line: 129, column: 2, scope: !5741)
!5754 = !DILocation(line: 137, column: 11, scope: !5719)
!5755 = !DILocation(line: 137, column: 11, scope: !5720)
!5756 = !DILocation(line: 137, column: 9, scope: !5720)
!5757 = !DILocation(line: 139, column: 7, scope: !5725)
!5758 = !DILocation(line: 139, column: 12, scope: !5725)
!5759 = !DILocation(line: 139, column: 23, scope: !5725)
!5760 = !DILocation(line: 139, column: 7, scope: !5720)
!5761 = !DILocation(line: 140, column: 18, scope: !5725)
!5762 = !DILocation(line: 140, column: 24, scope: !5725)
!5763 = !DILocation(line: 140, column: 32, scope: !5724)
!5764 = !DILocation(line: 140, column: 32, scope: !5725)
!5765 = !DILocation(line: 140, column: 29, scope: !5725)
!5766 = !DILocation(line: 140, column: 14, scope: !5725)
!5767 = !DILocation(line: 140, column: 10, scope: !5725)
!5768 = !DILocation(line: 140, column: 4, scope: !5725)
!5769 = !DILocation(line: 141, column: 12, scope: !5729)
!5770 = !DILocation(line: 141, column: 17, scope: !5729)
!5771 = !DILocation(line: 141, column: 28, scope: !5729)
!5772 = !DILocation(line: 141, column: 12, scope: !5725)
!5773 = !DILocation(line: 142, column: 4, scope: !5728)
!5774 = !DILocation(line: 142, column: 17, scope: !5728)
!5775 = !DILocation(line: 142, column: 28, scope: !5728)
!5776 = !DILocation(line: 142, column: 33, scope: !5728)
!5777 = !DILocation(line: 142, column: 26, scope: !5728)
!5778 = !DILocation(line: 142, column: 45, scope: !5728)
!5779 = !DILocation(line: 144, column: 18, scope: !5728)
!5780 = !DILocation(line: 144, column: 24, scope: !5728)
!5781 = !DILocation(line: 144, column: 33, scope: !5728)
!5782 = !DILocation(line: 144, column: 38, scope: !5728)
!5783 = !DILocation(line: 144, column: 32, scope: !5728)
!5784 = !DILocation(line: 144, column: 29, scope: !5728)
!5785 = !DILocation(line: 144, column: 14, scope: !5728)
!5786 = !DILocation(line: 144, column: 10, scope: !5728)
!5787 = !DILocation(line: 145, column: 8, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5728, file: !1, line: 145, column: 8)
!5789 = !DILocation(line: 145, column: 16, scope: !5788)
!5790 = !DILocation(line: 145, column: 14, scope: !5788)
!5791 = !DILocation(line: 145, column: 8, scope: !5728)
!5792 = !DILocation(line: 146, column: 13, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5788, file: !1, line: 145, column: 22)
!5794 = !DILocation(line: 146, column: 11, scope: !5793)
!5795 = !DILocation(line: 147, column: 9, scope: !5793)
!5796 = !DILocation(line: 148, column: 4, scope: !5793)
!5797 = !DILocation(line: 149, column: 3, scope: !5729)
!5798 = !DILocation(line: 149, column: 3, scope: !5728)
!5799 = !DILocation(line: 151, column: 20, scope: !5720)
!5800 = !DILocation(line: 151, column: 3, scope: !5720)
!5801 = !DILocation(line: 151, column: 8, scope: !5720)
!5802 = !DILocation(line: 151, column: 18, scope: !5720)
!5803 = !DILocation(line: 154, column: 9, scope: !5703)
!5804 = !{i8 0, i8 2}
!5805 = !DILocation(line: 155, column: 1, scope: !5703)
!5806 = !DILocation(line: 154, column: 2, scope: !5703)
!5807 = distinct !DISubprogram(name: "rq_depth_scale_up", scope: !1, file: !1, line: 158, type: !5704, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5808)
!5808 = !{!5809}
!5809 = !DILocalVariable(name: "rqd", arg: 1, scope: !5807, file: !1, line: 158, type: !5706)
!5810 = !DILocation(line: 158, column: 41, scope: !5807)
!5811 = !DILocation(line: 163, column: 6, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5807, file: !1, line: 163, column: 6)
!5813 = !DILocation(line: 163, column: 11, scope: !5812)
!5814 = !DILocation(line: 163, column: 6, scope: !5807)
!5815 = !DILocation(line: 164, column: 3, scope: !5812)
!5816 = !DILocation(line: 166, column: 2, scope: !5807)
!5817 = !DILocation(line: 166, column: 7, scope: !5807)
!5818 = !DILocation(line: 166, column: 17, scope: !5807)
!5819 = !DILocation(line: 168, column: 44, scope: !5807)
!5820 = !DILocation(line: 168, column: 20, scope: !5807)
!5821 = !DILocation(line: 168, column: 2, scope: !5807)
!5822 = !DILocation(line: 168, column: 7, scope: !5807)
!5823 = !DILocation(line: 168, column: 18, scope: !5807)
!5824 = !DILocation(line: 169, column: 2, scope: !5807)
!5825 = !DILocation(line: 170, column: 1, scope: !5807)
!5826 = distinct !DISubprogram(name: "rq_depth_scale_down", scope: !1, file: !1, line: 177, type: !5827, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5829)
!5827 = !DISubroutineType(types: !5828)
!5828 = !{!829, !5706, !829}
!5829 = !{!5830, !5831}
!5830 = !DILocalVariable(name: "rqd", arg: 1, scope: !5826, file: !1, line: 177, type: !5706)
!5831 = !DILocalVariable(name: "hard_throttle", arg: 2, scope: !5826, file: !1, line: 177, type: !829)
!5832 = !DILocation(line: 177, column: 43, scope: !5826)
!5833 = !DILocation(line: 177, column: 53, scope: !5826)
!5834 = !DILocation(line: 184, column: 6, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5826, file: !1, line: 184, column: 6)
!5836 = !DILocation(line: 184, column: 11, scope: !5835)
!5837 = !DILocation(line: 184, column: 21, scope: !5835)
!5838 = !DILocation(line: 184, column: 6, scope: !5826)
!5839 = !DILocation(line: 185, column: 3, scope: !5835)
!5840 = !DILocation(line: 187, column: 6, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5826, file: !1, line: 187, column: 6)
!5842 = !DILocation(line: 187, column: 11, scope: !5841)
!5843 = !DILocation(line: 187, column: 22, scope: !5841)
!5844 = !DILocation(line: 187, column: 26, scope: !5841)
!5845 = !DILocation(line: 187, column: 29, scope: !5841)
!5846 = !DILocation(line: 187, column: 6, scope: !5826)
!5847 = !DILocation(line: 188, column: 3, scope: !5841)
!5848 = !DILocation(line: 188, column: 8, scope: !5841)
!5849 = !DILocation(line: 188, column: 19, scope: !5841)
!5850 = !DILocation(line: 190, column: 3, scope: !5841)
!5851 = !DILocation(line: 190, column: 8, scope: !5841)
!5852 = !DILocation(line: 190, column: 18, scope: !5841)
!5853 = !DILocation(line: 192, column: 2, scope: !5826)
!5854 = !DILocation(line: 192, column: 7, scope: !5826)
!5855 = !DILocation(line: 192, column: 18, scope: !5826)
!5856 = !DILocation(line: 193, column: 26, scope: !5826)
!5857 = !DILocation(line: 193, column: 2, scope: !5826)
!5858 = !DILocation(line: 194, column: 2, scope: !5826)
!5859 = !DILocation(line: 195, column: 1, scope: !5826)
!5860 = distinct !DISubprogram(name: "rq_qos_wait", scope: !1, file: !1, line: 243, type: !5861, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5867)
!5861 = !DISubroutineType(types: !5862)
!5862 = !{null, !5393, !190, !5399, !5863}
!5863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5864, size: 64)
!5864 = !DIDerivedType(tag: DW_TAG_typedef, name: "cleanup_cb_t", file: !169, line: 93, baseType: !5865)
!5865 = !DISubroutineType(types: !5866)
!5866 = !{null, !5393, !190}
!5867 = !{!5868, !5869, !5870, !5871, !5872, !5873, !5874, !5880}
!5868 = !DILocalVariable(name: "rqw", arg: 1, scope: !5860, file: !1, line: 243, type: !5393)
!5869 = !DILocalVariable(name: "private_data", arg: 2, scope: !5860, file: !1, line: 243, type: !190)
!5870 = !DILocalVariable(name: "acquire_inflight_cb", arg: 3, scope: !5860, file: !1, line: 244, type: !5399)
!5871 = !DILocalVariable(name: "cleanup_cb", arg: 4, scope: !5860, file: !1, line: 245, type: !5863)
!5872 = !DILocalVariable(name: "data", scope: !5860, file: !1, line: 247, type: !192)
!5873 = !DILocalVariable(name: "has_sleeper", scope: !5860, file: !1, line: 257, type: !829)
!5874 = !DILocalVariable(name: "__ai_ptr", scope: !5875, file: !1, line: 284, type: !2201)
!5875 = distinct !DILexicalBlock(scope: !5876, file: !1, line: 284, column: 3)
!5876 = distinct !DILexicalBlock(scope: !5877, file: !1, line: 284, column: 3)
!5877 = distinct !DILexicalBlock(scope: !5878, file: !1, line: 284, column: 3)
!5878 = distinct !DILexicalBlock(scope: !5879, file: !1, line: 284, column: 3)
!5879 = distinct !DILexicalBlock(scope: !5860, file: !1, line: 265, column: 5)
!5880 = !DILocalVariable(name: "__ret", scope: !5881, file: !1, line: 284, type: !5)
!5881 = distinct !DILexicalBlock(scope: !5875, file: !1, line: 284, column: 3)
!5882 = !DILocation(line: 243, column: 34, scope: !5860)
!5883 = !DILocation(line: 243, column: 45, scope: !5860)
!5884 = !DILocation(line: 244, column: 27, scope: !5860)
!5885 = !DILocation(line: 245, column: 18, scope: !5860)
!5886 = !DILocation(line: 247, column: 2, scope: !5860)
!5887 = !DILocation(line: 247, column: 26, scope: !5860)
!5888 = !DILocation(line: 247, column: 33, scope: !5860)
!5889 = !DILocation(line: 248, column: 9, scope: !5860)
!5890 = !DILocation(line: 250, column: 13, scope: !5860)
!5891 = !DILocation(line: 252, column: 11, scope: !5860)
!5892 = !DILocation(line: 253, column: 10, scope: !5860)
!5893 = !DILocation(line: 254, column: 9, scope: !5860)
!5894 = !DILocation(line: 255, column: 19, scope: !5860)
!5895 = !DILocation(line: 257, column: 2, scope: !5860)
!5896 = !DILocation(line: 257, column: 7, scope: !5860)
!5897 = !DILocation(line: 259, column: 32, scope: !5860)
!5898 = !DILocation(line: 259, column: 37, scope: !5860)
!5899 = !DILocation(line: 259, column: 16, scope: !5860)
!5900 = !DILocation(line: 259, column: 14, scope: !5860)
!5901 = !DILocation(line: 260, column: 7, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5860, file: !1, line: 260, column: 6)
!5903 = !DILocation(line: 260, column: 19, scope: !5902)
!5904 = !DILocation(line: 260, column: 22, scope: !5902)
!5905 = !DILocation(line: 260, column: 42, scope: !5902)
!5906 = !DILocation(line: 260, column: 47, scope: !5902)
!5907 = !DILocation(line: 260, column: 6, scope: !5860)
!5908 = !DILocation(line: 261, column: 3, scope: !5902)
!5909 = !DILocation(line: 263, column: 44, scope: !5860)
!5910 = !DILocation(line: 263, column: 49, scope: !5860)
!5911 = !DILocation(line: 263, column: 61, scope: !5860)
!5912 = !DILocation(line: 263, column: 17, scope: !5860)
!5913 = !DILocation(line: 263, column: 16, scope: !5860)
!5914 = !DILocation(line: 263, column: 14, scope: !5860)
!5915 = !DILocation(line: 265, column: 2, scope: !5860)
!5916 = !DILocation(line: 267, column: 12, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5879, file: !1, line: 267, column: 7)
!5918 = !DILocation(line: 267, column: 7, scope: !5879)
!5919 = !DILocation(line: 268, column: 4, scope: !5917)
!5920 = !DILocation(line: 269, column: 8, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5879, file: !1, line: 269, column: 7)
!5922 = !DILocation(line: 269, column: 20, scope: !5921)
!5923 = !DILocation(line: 269, column: 23, scope: !5921)
!5924 = !DILocation(line: 269, column: 43, scope: !5921)
!5925 = !DILocation(line: 269, column: 48, scope: !5921)
!5926 = !DILocation(line: 269, column: 7, scope: !5879)
!5927 = !DILocation(line: 270, column: 17, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5921, file: !1, line: 269, column: 63)
!5929 = !DILocation(line: 270, column: 22, scope: !5928)
!5930 = !DILocation(line: 270, column: 34, scope: !5928)
!5931 = !DILocation(line: 270, column: 4, scope: !5928)
!5932 = !DILocation(line: 277, column: 4, scope: !5928)
!5933 = !DILocation(line: 277, column: 4, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5928, file: !1, line: 277, column: 4)
!5935 = !DILocation(line: 277, column: 4, scope: !5936)
!5936 = distinct !DILexicalBlock(scope: !5934, file: !1, line: 277, column: 4)
!5937 = !DILocation(line: 277, column: 4, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !5934, file: !1, line: 277, column: 4)
!5939 = !DILocation(line: 277, column: 4, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5938, file: !1, line: 277, column: 4)
!5941 = !{i64 2155976732}
!5942 = !DILocation(line: 278, column: 13, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5928, file: !1, line: 278, column: 8)
!5944 = !DILocation(line: 278, column: 8, scope: !5928)
!5945 = !DILocation(line: 279, column: 5, scope: !5943)
!5946 = !DILocation(line: 279, column: 16, scope: !5943)
!5947 = !DILocation(line: 279, column: 21, scope: !5943)
!5948 = !DILocation(line: 280, column: 4, scope: !5928)
!5949 = !DILocation(line: 282, column: 3, scope: !5879)
!5950 = !DILocation(line: 283, column: 15, scope: !5879)
!5951 = !DILocation(line: 284, column: 3, scope: !5879)
!5952 = !DILocation(line: 284, column: 3, scope: !5878)
!5953 = !DILocation(line: 284, column: 3, scope: !5954)
!5954 = distinct !DILexicalBlock(scope: !5878, file: !1, line: 284, column: 3)
!5955 = !DILocation(line: 284, column: 3, scope: !5877)
!5956 = !DILocation(line: 284, column: 3, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5877, file: !1, line: 284, column: 3)
!5958 = !DILocation(line: 284, column: 3, scope: !5875)
!5959 = !DILocation(line: 284, column: 3, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5875, file: !1, line: 284, column: 3)
!5961 = !DILocation(line: 284, column: 3, scope: !5881)
!5962 = !{i64 2155978359}
!5963 = !DILocation(line: 284, column: 3, scope: !5876)
!5964 = !DILocation(line: 285, column: 2, scope: !5879)
!5965 = distinct !{!5965, !5915, !5966, !5463}
!5966 = !DILocation(line: 285, column: 12, scope: !5860)
!5967 = !DILocation(line: 286, column: 15, scope: !5860)
!5968 = !DILocation(line: 286, column: 20, scope: !5860)
!5969 = !DILocation(line: 286, column: 32, scope: !5860)
!5970 = !DILocation(line: 286, column: 2, scope: !5860)
!5971 = !DILocation(line: 287, column: 1, scope: !5860)
!5972 = distinct !DISubprogram(name: "rq_qos_wake_function", scope: !1, file: !1, line: 206, type: !203, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5973)
!5973 = !{!5974, !5975, !5976, !5977, !5978, !5979}
!5974 = !DILocalVariable(name: "curr", arg: 1, scope: !5972, file: !1, line: 206, type: !205)
!5975 = !DILocalVariable(name: "mode", arg: 2, scope: !5972, file: !1, line: 207, type: !5)
!5976 = !DILocalVariable(name: "wake_flags", arg: 3, scope: !5972, file: !1, line: 207, type: !112)
!5977 = !DILocalVariable(name: "key", arg: 4, scope: !5972, file: !1, line: 207, type: !190)
!5978 = !DILocalVariable(name: "data", scope: !5972, file: !1, line: 209, type: !191)
!5979 = !DILocalVariable(name: "__mptr", scope: !5980, file: !1, line: 209, type: !190)
!5980 = distinct !DILexicalBlock(scope: !5972, file: !1, line: 209, column: 34)
!5981 = !DILocation(line: 206, column: 58, scope: !5972)
!5982 = !DILocation(line: 207, column: 18, scope: !5972)
!5983 = !DILocation(line: 207, column: 28, scope: !5972)
!5984 = !DILocation(line: 207, column: 46, scope: !5972)
!5985 = !DILocation(line: 209, column: 2, scope: !5972)
!5986 = !DILocation(line: 209, column: 27, scope: !5972)
!5987 = !DILocation(line: 209, column: 34, scope: !5980)
!5988 = !DILocation(line: 209, column: 34, scope: !5972)
!5989 = !DILocation(line: 217, column: 7, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5972, file: !1, line: 217, column: 6)
!5991 = !DILocation(line: 217, column: 13, scope: !5990)
!5992 = !DILocation(line: 217, column: 16, scope: !5990)
!5993 = !DILocation(line: 217, column: 22, scope: !5990)
!5994 = !DILocation(line: 217, column: 27, scope: !5990)
!5995 = !DILocation(line: 217, column: 33, scope: !5990)
!5996 = !DILocation(line: 217, column: 6, scope: !5972)
!5997 = !DILocation(line: 218, column: 3, scope: !5990)
!5998 = !DILocation(line: 220, column: 2, scope: !5972)
!5999 = !DILocation(line: 220, column: 8, scope: !5972)
!6000 = !DILocation(line: 220, column: 18, scope: !5972)
!6001 = !DILocation(line: 221, column: 2, scope: !5972)
!6002 = !DILocation(line: 221, column: 2, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !5972, file: !1, line: 221, column: 2)
!6004 = !DILocation(line: 221, column: 2, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !6003, file: !1, line: 221, column: 2)
!6006 = !{i64 2155976480}
!6007 = !DILocation(line: 222, column: 18, scope: !5972)
!6008 = !DILocation(line: 222, column: 24, scope: !5972)
!6009 = !DILocation(line: 222, column: 2, scope: !5972)
!6010 = !DILocation(line: 223, column: 25, scope: !5972)
!6011 = !DILocation(line: 223, column: 31, scope: !5972)
!6012 = !DILocation(line: 223, column: 2, scope: !5972)
!6013 = !DILocation(line: 224, column: 2, scope: !5972)
!6014 = !DILocation(line: 225, column: 1, scope: !5972)
!6015 = distinct !DISubprogram(name: "get_current", scope: !6016, file: !6016, line: 39, type: !6017, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6019)
!6016 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6017 = !DISubroutineType(types: !6018)
!6018 = !{!214}
!6019 = !{!6020, !6022, !6024}
!6020 = !DILocalVariable(name: "pscr_ret__", scope: !6021, file: !6016, line: 41, type: !214)
!6021 = distinct !DILexicalBlock(scope: !6015, file: !6016, line: 41, column: 9)
!6022 = !DILocalVariable(name: "__vpp_verify", scope: !6023, file: !6016, line: 41, type: !1942)
!6023 = distinct !DILexicalBlock(scope: !6021, file: !6016, line: 41, column: 9)
!6024 = !DILocalVariable(name: "pfo_val__", scope: !6025, file: !6016, line: 41, type: !289)
!6025 = distinct !DILexicalBlock(scope: !6021, file: !6016, line: 41, column: 9)
!6026 = !DILocation(line: 41, column: 9, scope: !6021)
!6027 = !DILocation(line: 41, column: 9, scope: !6023)
!6028 = !DILocation(line: 41, column: 9, scope: !6025)
!6029 = !{i64 2148533361}
!6030 = !DILocation(line: 41, column: 9, scope: !6015)
!6031 = !DILocation(line: 41, column: 2, scope: !6015)
!6032 = distinct !DISubprogram(name: "wq_has_sleeper", scope: !196, file: !196, line: 153, type: !6033, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6036)
!6033 = !DISubroutineType(types: !6034)
!6034 = !{!829, !6035}
!6035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!6036 = !{!6037}
!6037 = !DILocalVariable(name: "wq_head", arg: 1, scope: !6032, file: !196, line: 153, type: !6035)
!6038 = !DILocation(line: 153, column: 59, scope: !6032)
!6039 = !DILocation(line: 162, column: 2, scope: !6032)
!6040 = !DILocation(line: 162, column: 2, scope: !6041)
!6041 = distinct !DILexicalBlock(scope: !6032, file: !196, line: 162, column: 2)
!6042 = !DILocation(line: 162, column: 2, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !6041, file: !196, line: 162, column: 2)
!6044 = !{i64 2150006585}
!6045 = !DILocation(line: 163, column: 26, scope: !6032)
!6046 = !DILocation(line: 163, column: 9, scope: !6032)
!6047 = !DILocation(line: 163, column: 2, scope: !6032)
!6048 = !DISubprogram(name: "prepare_to_wait_exclusive", scope: !196, file: !196, line: 1198, type: !6049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6049 = !DISubroutineType(types: !6050)
!6050 = !{!829, !6035, !205, !112}
!6051 = !DISubprogram(name: "finish_wait", scope: !196, file: !196, line: 1200, type: !6052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6052 = !DISubroutineType(types: !6053)
!6053 = !{null, !6035, !205}
!6054 = !DISubprogram(name: "io_schedule", scope: !216, file: !216, line: 313, type: !2466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6055 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6056, file: !6056, line: 94, type: !6057, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6062)
!6056 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6057 = !DISubroutineType(types: !6058)
!6058 = !{null, !6059, !1145}
!6059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6060, size: 64)
!6060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6061)
!6061 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6062 = !{!6063, !6064}
!6063 = !DILocalVariable(name: "v", arg: 1, scope: !6055, file: !6056, line: 94, type: !6059)
!6064 = !DILocalVariable(name: "size", arg: 2, scope: !6055, file: !6056, line: 94, type: !1145)
!6065 = !DILocation(line: 94, column: 79, scope: !6055)
!6066 = !DILocation(line: 94, column: 89, scope: !6055)
!6067 = !DILocation(line: 96, column: 20, scope: !6055)
!6068 = !DILocation(line: 96, column: 23, scope: !6055)
!6069 = !DILocation(line: 96, column: 2, scope: !6055)
!6070 = !DILocation(line: 97, column: 2, scope: !6055)
!6071 = !DILocation(line: 98, column: 1, scope: !6055)
!6072 = distinct !DISubprogram(name: "rq_qos_exit", scope: !1, file: !1, line: 289, type: !6073, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6075)
!6073 = !DISubroutineType(types: !6074)
!6074 = !{null, !2888}
!6075 = !{!6076, !6077}
!6076 = !DILocalVariable(name: "q", arg: 1, scope: !6072, file: !1, line: 289, type: !2888)
!6077 = !DILocalVariable(name: "rqos", scope: !6078, file: !1, line: 293, type: !2900)
!6078 = distinct !DILexicalBlock(scope: !6072, file: !1, line: 292, column: 20)
!6079 = !DILocation(line: 289, column: 40, scope: !6072)
!6080 = !DILocation(line: 291, column: 14, scope: !6072)
!6081 = !DILocation(line: 291, column: 17, scope: !6072)
!6082 = !DILocation(line: 291, column: 2, scope: !6072)
!6083 = !DILocation(line: 292, column: 2, scope: !6072)
!6084 = !DILocation(line: 292, column: 9, scope: !6072)
!6085 = !DILocation(line: 292, column: 12, scope: !6072)
!6086 = !DILocation(line: 293, column: 3, scope: !6078)
!6087 = !DILocation(line: 293, column: 18, scope: !6078)
!6088 = !DILocation(line: 293, column: 25, scope: !6078)
!6089 = !DILocation(line: 293, column: 28, scope: !6078)
!6090 = !DILocation(line: 294, column: 15, scope: !6078)
!6091 = !DILocation(line: 294, column: 21, scope: !6078)
!6092 = !DILocation(line: 294, column: 3, scope: !6078)
!6093 = !DILocation(line: 294, column: 6, scope: !6078)
!6094 = !DILocation(line: 294, column: 13, scope: !6078)
!6095 = !DILocation(line: 295, column: 3, scope: !6078)
!6096 = !DILocation(line: 295, column: 9, scope: !6078)
!6097 = !DILocation(line: 295, column: 14, scope: !6078)
!6098 = !DILocation(line: 295, column: 19, scope: !6078)
!6099 = !DILocation(line: 296, column: 2, scope: !6072)
!6100 = distinct !{!6100, !6083, !6099, !5462, !5463}
!6101 = !DILocation(line: 297, column: 16, scope: !6072)
!6102 = !DILocation(line: 297, column: 19, scope: !6072)
!6103 = !DILocation(line: 297, column: 2, scope: !6072)
!6104 = !DILocation(line: 298, column: 1, scope: !6072)
!6105 = !DISubprogram(name: "mutex_lock", scope: !630, file: !630, line: 227, type: !6106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6106 = !DISubroutineType(types: !6107)
!6107 = !{null, !6108}
!6108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!6109 = !DISubprogram(name: "mutex_unlock", scope: !630, file: !630, line: 246, type: !6106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6110 = distinct !DISubprogram(name: "rq_qos_add", scope: !1, file: !1, line: 300, type: !6111, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6113)
!6111 = !DISubroutineType(types: !6112)
!6112 = !{!112, !2900, !2766, !168, !2904}
!6113 = !{!6114, !6115, !6116, !6117, !6118, !6119}
!6114 = !DILocalVariable(name: "rqos", arg: 1, scope: !6110, file: !1, line: 300, type: !2900)
!6115 = !DILocalVariable(name: "disk", arg: 2, scope: !6110, file: !1, line: 300, type: !2766)
!6116 = !DILocalVariable(name: "id", arg: 3, scope: !6110, file: !1, line: 300, type: !168)
!6117 = !DILocalVariable(name: "ops", arg: 4, scope: !6110, file: !1, line: 301, type: !2904)
!6118 = !DILocalVariable(name: "q", scope: !6110, file: !1, line: 303, type: !2888)
!6119 = !DILabel(scope: !6110, name: "ebusy", file: !1, line: 331)
!6120 = !DILocation(line: 300, column: 31, scope: !6110)
!6121 = !DILocation(line: 300, column: 53, scope: !6110)
!6122 = !DILocation(line: 300, column: 74, scope: !6110)
!6123 = !DILocation(line: 301, column: 28, scope: !6110)
!6124 = !DILocation(line: 303, column: 2, scope: !6110)
!6125 = !DILocation(line: 303, column: 24, scope: !6110)
!6126 = !DILocation(line: 303, column: 28, scope: !6110)
!6127 = !DILocation(line: 303, column: 34, scope: !6110)
!6128 = !DILocation(line: 305, column: 2, scope: !6110)
!6129 = !DILocation(line: 305, column: 2, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6110, file: !1, line: 305, column: 2)
!6131 = !DILocation(line: 307, column: 15, scope: !6110)
!6132 = !DILocation(line: 307, column: 2, scope: !6110)
!6133 = !DILocation(line: 307, column: 8, scope: !6110)
!6134 = !DILocation(line: 307, column: 13, scope: !6110)
!6135 = !DILocation(line: 308, column: 13, scope: !6110)
!6136 = !DILocation(line: 308, column: 2, scope: !6110)
!6137 = !DILocation(line: 308, column: 8, scope: !6110)
!6138 = !DILocation(line: 308, column: 11, scope: !6110)
!6139 = !DILocation(line: 309, column: 14, scope: !6110)
!6140 = !DILocation(line: 309, column: 2, scope: !6110)
!6141 = !DILocation(line: 309, column: 8, scope: !6110)
!6142 = !DILocation(line: 309, column: 12, scope: !6110)
!6143 = !DILocation(line: 315, column: 22, scope: !6110)
!6144 = !DILocation(line: 315, column: 2, scope: !6110)
!6145 = !DILocation(line: 317, column: 16, scope: !6146)
!6146 = distinct !DILexicalBlock(scope: !6110, file: !1, line: 317, column: 6)
!6147 = !DILocation(line: 317, column: 19, scope: !6146)
!6148 = !DILocation(line: 317, column: 25, scope: !6146)
!6149 = !DILocation(line: 317, column: 6, scope: !6146)
!6150 = !DILocation(line: 317, column: 6, scope: !6110)
!6151 = !DILocation(line: 318, column: 3, scope: !6146)
!6152 = !DILocation(line: 319, column: 15, scope: !6110)
!6153 = !DILocation(line: 319, column: 18, scope: !6110)
!6154 = !DILocation(line: 319, column: 2, scope: !6110)
!6155 = !DILocation(line: 319, column: 8, scope: !6110)
!6156 = !DILocation(line: 319, column: 13, scope: !6110)
!6157 = !DILocation(line: 320, column: 14, scope: !6110)
!6158 = !DILocation(line: 320, column: 2, scope: !6110)
!6159 = !DILocation(line: 320, column: 5, scope: !6110)
!6160 = !DILocation(line: 320, column: 12, scope: !6110)
!6161 = !DILocation(line: 322, column: 24, scope: !6110)
!6162 = !DILocation(line: 322, column: 2, scope: !6110)
!6163 = !DILocation(line: 324, column: 6, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6110, file: !1, line: 324, column: 6)
!6165 = !DILocation(line: 324, column: 12, scope: !6164)
!6166 = !DILocation(line: 324, column: 17, scope: !6164)
!6167 = !DILocation(line: 324, column: 6, scope: !6110)
!6168 = !DILocation(line: 325, column: 15, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6164, file: !1, line: 324, column: 32)
!6170 = !DILocation(line: 325, column: 18, scope: !6169)
!6171 = !DILocation(line: 325, column: 3, scope: !6169)
!6172 = !DILocation(line: 326, column: 32, scope: !6169)
!6173 = !DILocation(line: 326, column: 3, scope: !6169)
!6174 = !DILocation(line: 327, column: 17, scope: !6169)
!6175 = !DILocation(line: 327, column: 20, scope: !6169)
!6176 = !DILocation(line: 327, column: 3, scope: !6169)
!6177 = !DILocation(line: 328, column: 2, scope: !6169)
!6178 = !DILocation(line: 330, column: 2, scope: !6110)
!6179 = !DILocation(line: 331, column: 1, scope: !6110)
!6180 = !DILocation(line: 332, column: 24, scope: !6110)
!6181 = !DILocation(line: 332, column: 2, scope: !6110)
!6182 = !DILocation(line: 333, column: 2, scope: !6110)
!6183 = !DILocation(line: 334, column: 1, scope: !6110)
!6184 = !DISubprogram(name: "blk_mq_freeze_queue", scope: !86, file: !86, line: 901, type: !6073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6185 = distinct !DISubprogram(name: "rq_qos_id", scope: !169, file: !169, line: 61, type: !6186, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6188)
!6186 = !DISubroutineType(types: !6187)
!6187 = !{!2900, !2888, !168}
!6188 = !{!6189, !6190, !6191}
!6189 = !DILocalVariable(name: "q", arg: 1, scope: !6185, file: !169, line: 61, type: !2888)
!6190 = !DILocalVariable(name: "id", arg: 2, scope: !6185, file: !169, line: 62, type: !168)
!6191 = !DILocalVariable(name: "rqos", scope: !6185, file: !169, line: 64, type: !2900)
!6192 = !DILocation(line: 61, column: 62, scope: !6185)
!6193 = !DILocation(line: 62, column: 27, scope: !6185)
!6194 = !DILocation(line: 64, column: 2, scope: !6185)
!6195 = !DILocation(line: 64, column: 17, scope: !6185)
!6196 = !DILocation(line: 65, column: 14, scope: !6197)
!6197 = distinct !DILexicalBlock(scope: !6185, file: !169, line: 65, column: 2)
!6198 = !DILocation(line: 65, column: 17, scope: !6197)
!6199 = !DILocation(line: 65, column: 12, scope: !6197)
!6200 = !DILocation(line: 65, column: 7, scope: !6197)
!6201 = !DILocation(line: 65, column: 25, scope: !6202)
!6202 = distinct !DILexicalBlock(scope: !6197, file: !169, line: 65, column: 2)
!6203 = !DILocation(line: 65, column: 2, scope: !6197)
!6204 = !DILocation(line: 66, column: 7, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6206, file: !169, line: 66, column: 7)
!6206 = distinct !DILexicalBlock(scope: !6202, file: !169, line: 65, column: 50)
!6207 = !DILocation(line: 66, column: 13, scope: !6205)
!6208 = !DILocation(line: 66, column: 19, scope: !6205)
!6209 = !DILocation(line: 66, column: 16, scope: !6205)
!6210 = !DILocation(line: 66, column: 7, scope: !6206)
!6211 = !DILocation(line: 67, column: 4, scope: !6205)
!6212 = !DILocation(line: 68, column: 2, scope: !6206)
!6213 = !DILocation(line: 65, column: 38, scope: !6202)
!6214 = !DILocation(line: 65, column: 44, scope: !6202)
!6215 = !DILocation(line: 65, column: 36, scope: !6202)
!6216 = !DILocation(line: 65, column: 2, scope: !6202)
!6217 = distinct !{!6217, !6203, !6218, !5462, !5463}
!6218 = !DILocation(line: 68, column: 2, scope: !6197)
!6219 = !DILocation(line: 69, column: 9, scope: !6185)
!6220 = !DILocation(line: 70, column: 1, scope: !6185)
!6221 = !DILocation(line: 69, column: 2, scope: !6185)
!6222 = !DISubprogram(name: "blk_mq_unfreeze_queue", scope: !86, file: !86, line: 902, type: !6073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6223 = !DISubprogram(name: "blk_mq_debugfs_register_rqos", scope: !2934, file: !2934, line: 36, type: !2927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6224 = distinct !DISubprogram(name: "rq_qos_del", scope: !1, file: !1, line: 336, type: !2927, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6225)
!6225 = !{!6226, !6227, !6228}
!6226 = !DILocalVariable(name: "rqos", arg: 1, scope: !6224, file: !1, line: 336, type: !2900)
!6227 = !DILocalVariable(name: "q", scope: !6224, file: !1, line: 338, type: !2888)
!6228 = !DILocalVariable(name: "cur", scope: !6224, file: !1, line: 339, type: !6229)
!6229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!6230 = !DILocation(line: 336, column: 32, scope: !6224)
!6231 = !DILocation(line: 338, column: 2, scope: !6224)
!6232 = !DILocation(line: 338, column: 24, scope: !6224)
!6233 = !DILocation(line: 338, column: 28, scope: !6224)
!6234 = !DILocation(line: 338, column: 34, scope: !6224)
!6235 = !DILocation(line: 338, column: 40, scope: !6224)
!6236 = !DILocation(line: 339, column: 2, scope: !6224)
!6237 = !DILocation(line: 339, column: 18, scope: !6224)
!6238 = !DILocation(line: 341, column: 2, scope: !6224)
!6239 = !DILocation(line: 341, column: 2, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6224, file: !1, line: 341, column: 2)
!6241 = !DILocation(line: 343, column: 22, scope: !6224)
!6242 = !DILocation(line: 343, column: 2, scope: !6224)
!6243 = !DILocation(line: 344, column: 14, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6224, file: !1, line: 344, column: 2)
!6245 = !DILocation(line: 344, column: 17, scope: !6244)
!6246 = !DILocation(line: 344, column: 11, scope: !6244)
!6247 = !DILocation(line: 344, column: 7, scope: !6244)
!6248 = !DILocation(line: 344, column: 26, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6244, file: !1, line: 344, column: 2)
!6250 = !DILocation(line: 344, column: 25, scope: !6249)
!6251 = !DILocation(line: 344, column: 2, scope: !6244)
!6252 = !DILocation(line: 345, column: 8, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6254, file: !1, line: 345, column: 7)
!6254 = distinct !DILexicalBlock(scope: !6249, file: !1, line: 344, column: 52)
!6255 = !DILocation(line: 345, column: 7, scope: !6253)
!6256 = !DILocation(line: 345, column: 15, scope: !6253)
!6257 = !DILocation(line: 345, column: 12, scope: !6253)
!6258 = !DILocation(line: 345, column: 7, scope: !6254)
!6259 = !DILocation(line: 346, column: 11, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6253, file: !1, line: 345, column: 21)
!6261 = !DILocation(line: 346, column: 17, scope: !6260)
!6262 = !DILocation(line: 346, column: 5, scope: !6260)
!6263 = !DILocation(line: 346, column: 9, scope: !6260)
!6264 = !DILocation(line: 347, column: 4, scope: !6260)
!6265 = !DILocation(line: 349, column: 2, scope: !6254)
!6266 = !DILocation(line: 344, column: 40, scope: !6249)
!6267 = !DILocation(line: 344, column: 39, scope: !6249)
!6268 = !DILocation(line: 344, column: 46, scope: !6249)
!6269 = !DILocation(line: 344, column: 35, scope: !6249)
!6270 = !DILocation(line: 344, column: 2, scope: !6249)
!6271 = distinct !{!6271, !6251, !6272, !5462, !5463}
!6272 = !DILocation(line: 349, column: 2, scope: !6244)
!6273 = !DILocation(line: 350, column: 24, scope: !6224)
!6274 = !DILocation(line: 350, column: 2, scope: !6224)
!6275 = !DILocation(line: 352, column: 14, scope: !6224)
!6276 = !DILocation(line: 352, column: 17, scope: !6224)
!6277 = !DILocation(line: 352, column: 2, scope: !6224)
!6278 = !DILocation(line: 353, column: 33, scope: !6224)
!6279 = !DILocation(line: 353, column: 2, scope: !6224)
!6280 = !DILocation(line: 354, column: 16, scope: !6224)
!6281 = !DILocation(line: 354, column: 19, scope: !6224)
!6282 = !DILocation(line: 354, column: 2, scope: !6224)
!6283 = !DILocation(line: 355, column: 1, scope: !6224)
!6284 = !DISubprogram(name: "blk_mq_debugfs_unregister_rqos", scope: !2934, file: !2934, line: 37, type: !2927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6285 = distinct !DISubprogram(name: "atomic_read", scope: !6286, file: !6286, line: 30, type: !6287, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6291)
!6286 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6287 = !DISubroutineType(types: !6288)
!6288 = !{!112, !6289}
!6289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6290, size: 64)
!6290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!6291 = !{!6292}
!6292 = !DILocalVariable(name: "v", arg: 1, scope: !6285, file: !6286, line: 30, type: !6289)
!6293 = !DILocation(line: 30, column: 29, scope: !6285)
!6294 = !DILocation(line: 32, column: 25, scope: !6285)
!6295 = !DILocation(line: 32, column: 2, scope: !6285)
!6296 = !DILocation(line: 33, column: 25, scope: !6285)
!6297 = !DILocation(line: 33, column: 9, scope: !6285)
!6298 = !DILocation(line: 33, column: 2, scope: !6285)
!6299 = distinct !DISubprogram(name: "atomic_try_cmpxchg", scope: !6286, file: !6286, line: 1270, type: !6300, scopeLine: 1271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6302)
!6300 = !DISubroutineType(types: !6301)
!6301 = !{!829, !5435, !183, !112}
!6302 = !{!6303, !6304, !6305}
!6303 = !DILocalVariable(name: "v", arg: 1, scope: !6299, file: !6286, line: 1270, type: !5435)
!6304 = !DILocalVariable(name: "old", arg: 2, scope: !6299, file: !6286, line: 1270, type: !183)
!6305 = !DILocalVariable(name: "new", arg: 3, scope: !6299, file: !6286, line: 1270, type: !112)
!6306 = !DILocation(line: 1270, column: 30, scope: !6299)
!6307 = !DILocation(line: 1270, column: 38, scope: !6299)
!6308 = !DILocation(line: 1270, column: 47, scope: !6299)
!6309 = !DILocation(line: 1272, column: 2, scope: !6299)
!6310 = !DILocation(line: 1272, column: 2, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6299, file: !6286, line: 1272, column: 2)
!6312 = !DILocation(line: 1273, column: 31, scope: !6299)
!6313 = !DILocation(line: 1273, column: 2, scope: !6299)
!6314 = !DILocation(line: 1274, column: 31, scope: !6299)
!6315 = !DILocation(line: 1274, column: 2, scope: !6299)
!6316 = !DILocation(line: 1275, column: 32, scope: !6299)
!6317 = !DILocation(line: 1275, column: 35, scope: !6299)
!6318 = !DILocation(line: 1275, column: 40, scope: !6299)
!6319 = !DILocation(line: 1275, column: 9, scope: !6299)
!6320 = !DILocation(line: 1275, column: 2, scope: !6299)
!6321 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6056, file: !6056, line: 66, type: !6057, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6322)
!6322 = !{!6323, !6324}
!6323 = !DILocalVariable(name: "v", arg: 1, scope: !6321, file: !6056, line: 66, type: !6059)
!6324 = !DILocalVariable(name: "size", arg: 2, scope: !6321, file: !6056, line: 66, type: !1145)
!6325 = !DILocation(line: 66, column: 73, scope: !6321)
!6326 = !DILocation(line: 66, column: 83, scope: !6321)
!6327 = !DILocation(line: 68, column: 19, scope: !6321)
!6328 = !DILocation(line: 68, column: 22, scope: !6321)
!6329 = !DILocation(line: 68, column: 2, scope: !6321)
!6330 = !DILocation(line: 69, column: 2, scope: !6321)
!6331 = !DILocation(line: 70, column: 1, scope: !6321)
!6332 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6333, file: !6333, line: 442, type: !6287, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6334)
!6333 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6334 = !{!6335}
!6335 = !DILocalVariable(name: "v", arg: 1, scope: !6332, file: !6333, line: 442, type: !6289)
!6336 = !DILocation(line: 442, column: 33, scope: !6332)
!6337 = !DILocation(line: 444, column: 26, scope: !6332)
!6338 = !DILocation(line: 444, column: 9, scope: !6332)
!6339 = !DILocation(line: 444, column: 2, scope: !6332)
!6340 = distinct !DISubprogram(name: "kasan_check_read", scope: !6341, file: !6341, line: 40, type: !6342, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6344)
!6341 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6342 = !DISubroutineType(types: !6343)
!6343 = !{!829, !6059, !5}
!6344 = !{!6345, !6346}
!6345 = !DILocalVariable(name: "p", arg: 1, scope: !6340, file: !6341, line: 40, type: !6059)
!6346 = !DILocalVariable(name: "size", arg: 2, scope: !6340, file: !6341, line: 40, type: !5)
!6347 = !DILocation(line: 40, column: 58, scope: !6340)
!6348 = !DILocation(line: 40, column: 74, scope: !6340)
!6349 = !DILocation(line: 42, column: 2, scope: !6340)
!6350 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6351, file: !6351, line: 229, type: !6352, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6354)
!6351 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6352 = !DISubroutineType(types: !6353)
!6353 = !{null, !6059, !1145, !112}
!6354 = !{!6355, !6356, !6357}
!6355 = !DILocalVariable(name: "ptr", arg: 1, scope: !6350, file: !6351, line: 229, type: !6059)
!6356 = !DILocalVariable(name: "size", arg: 2, scope: !6350, file: !6351, line: 229, type: !1145)
!6357 = !DILocalVariable(name: "type", arg: 3, scope: !6350, file: !6351, line: 230, type: !112)
!6358 = !DILocation(line: 229, column: 60, scope: !6350)
!6359 = !DILocation(line: 229, column: 72, scope: !6350)
!6360 = !DILocation(line: 230, column: 15, scope: !6350)
!6361 = !DILocation(line: 230, column: 23, scope: !6350)
!6362 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6363, file: !6363, line: 17, type: !6287, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6364)
!6363 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6364 = !{!6365}
!6365 = !DILocalVariable(name: "v", arg: 1, scope: !6362, file: !6363, line: 17, type: !6289)
!6366 = !DILocation(line: 17, column: 61, scope: !6362)
!6367 = !DILocation(line: 23, column: 9, scope: !6362)
!6368 = !DILocation(line: 23, column: 2, scope: !6362)
!6369 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg", scope: !6333, file: !6333, line: 2109, type: !6300, scopeLine: 2110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6370)
!6370 = !{!6371, !6372, !6373}
!6371 = !DILocalVariable(name: "v", arg: 1, scope: !6369, file: !6333, line: 2109, type: !5435)
!6372 = !DILocalVariable(name: "old", arg: 2, scope: !6369, file: !6333, line: 2109, type: !183)
!6373 = !DILocalVariable(name: "new", arg: 3, scope: !6369, file: !6333, line: 2109, type: !112)
!6374 = !DILocation(line: 2109, column: 34, scope: !6369)
!6375 = !DILocation(line: 2109, column: 42, scope: !6369)
!6376 = !DILocation(line: 2109, column: 51, scope: !6369)
!6377 = !DILocation(line: 2112, column: 33, scope: !6369)
!6378 = !DILocation(line: 2112, column: 36, scope: !6369)
!6379 = !DILocation(line: 2112, column: 41, scope: !6369)
!6380 = !DILocation(line: 2112, column: 9, scope: !6369)
!6381 = !DILocation(line: 2112, column: 2, scope: !6369)
!6382 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !6363, file: !6363, line: 113, type: !6300, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6383)
!6383 = !{!6384, !6385, !6386, !6387, !6389, !6390, !6391, !6392}
!6384 = !DILocalVariable(name: "v", arg: 1, scope: !6382, file: !6363, line: 113, type: !5435)
!6385 = !DILocalVariable(name: "old", arg: 2, scope: !6382, file: !6363, line: 113, type: !183)
!6386 = !DILocalVariable(name: "new", arg: 3, scope: !6382, file: !6363, line: 113, type: !112)
!6387 = !DILocalVariable(name: "success", scope: !6388, file: !6363, line: 115, type: !829)
!6388 = distinct !DILexicalBlock(scope: !6382, file: !6363, line: 115, column: 9)
!6389 = !DILocalVariable(name: "_old", scope: !6388, file: !6363, line: 115, type: !183)
!6390 = !DILocalVariable(name: "__old", scope: !6388, file: !6363, line: 115, type: !112)
!6391 = !DILocalVariable(name: "__new", scope: !6388, file: !6363, line: 115, type: !112)
!6392 = !DILocalVariable(name: "__ptr", scope: !6388, file: !6363, line: 115, type: !184)
!6393 = !DILocation(line: 113, column: 63, scope: !6382)
!6394 = !DILocation(line: 113, column: 71, scope: !6382)
!6395 = !DILocation(line: 113, column: 80, scope: !6382)
!6396 = !DILocation(line: 115, column: 9, scope: !6388)
!6397 = !{i64 2149090195, i64 2149090234, i64 2149090255, i64 2149090292, i64 2149090315, i64 2149090324, i64 2149090622}
!6398 = !DILocation(line: 115, column: 9, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6388, file: !6363, line: 115, column: 9)
!6400 = !DILocation(line: 115, column: 9, scope: !6382)
!6401 = !DILocation(line: 115, column: 2, scope: !6382)
!6402 = !DISubprogram(name: "wake_up_process", scope: !216, file: !216, line: 1998, type: !6403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6403 = !DISubroutineType(types: !6404)
!6404 = !{!112, !214}
!6405 = distinct !DISubprogram(name: "list_del_init_careful", scope: !6406, file: !6406, line: 387, type: !6407, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6409)
!6406 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6407 = !DISubroutineType(types: !6408)
!6408 = !{null, !211}
!6409 = !{!6410}
!6410 = !DILocalVariable(name: "entry", arg: 1, scope: !6405, file: !6406, line: 387, type: !211)
!6411 = !DILocation(line: 387, column: 60, scope: !6405)
!6412 = !DILocation(line: 389, column: 19, scope: !6405)
!6413 = !DILocation(line: 389, column: 2, scope: !6405)
!6414 = !DILocation(line: 390, column: 2, scope: !6405)
!6415 = !DILocation(line: 390, column: 2, scope: !6416)
!6416 = distinct !DILexicalBlock(scope: !6405, file: !6406, line: 390, column: 2)
!6417 = !DILocation(line: 390, column: 2, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6416, file: !6406, line: 390, column: 2)
!6419 = !DILocation(line: 390, column: 2, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !6416, file: !6406, line: 390, column: 2)
!6421 = !DILocation(line: 391, column: 2, scope: !6405)
!6422 = !DILocation(line: 391, column: 2, scope: !6423)
!6423 = distinct !DILexicalBlock(scope: !6405, file: !6406, line: 391, column: 2)
!6424 = !DILocation(line: 391, column: 2, scope: !6425)
!6425 = distinct !DILexicalBlock(scope: !6423, file: !6406, line: 391, column: 2)
!6426 = !DILocation(line: 391, column: 2, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6423, file: !6406, line: 391, column: 2)
!6428 = !DILocation(line: 391, column: 2, scope: !6429)
!6429 = distinct !DILexicalBlock(scope: !6427, file: !6406, line: 391, column: 2)
!6430 = !{i64 2148379206}
!6431 = !DILocation(line: 391, column: 2, scope: !6432)
!6432 = distinct !DILexicalBlock(scope: !6427, file: !6406, line: 391, column: 2)
!6433 = !DILocation(line: 391, column: 2, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6432, file: !6406, line: 391, column: 2)
!6435 = !DILocation(line: 391, column: 2, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6432, file: !6406, line: 391, column: 2)
!6437 = !DILocation(line: 392, column: 1, scope: !6405)
!6438 = distinct !DISubprogram(name: "__list_del_entry", scope: !6406, file: !6406, line: 213, type: !6407, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6439)
!6439 = !{!6440}
!6440 = !DILocalVariable(name: "entry", arg: 1, scope: !6438, file: !6406, line: 213, type: !211)
!6441 = !DILocation(line: 213, column: 55, scope: !6438)
!6442 = !DILocation(line: 215, column: 30, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6438, file: !6406, line: 215, column: 6)
!6444 = !DILocation(line: 215, column: 7, scope: !6443)
!6445 = !DILocation(line: 215, column: 6, scope: !6438)
!6446 = !DILocation(line: 216, column: 3, scope: !6443)
!6447 = !DILocation(line: 218, column: 13, scope: !6438)
!6448 = !DILocation(line: 218, column: 20, scope: !6438)
!6449 = !DILocation(line: 218, column: 26, scope: !6438)
!6450 = !DILocation(line: 218, column: 33, scope: !6438)
!6451 = !DILocation(line: 218, column: 2, scope: !6438)
!6452 = !DILocation(line: 219, column: 1, scope: !6438)
!6453 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6406, file: !6406, line: 134, type: !6454, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6456)
!6454 = !DISubroutineType(types: !6455)
!6455 = !{!829, !211}
!6456 = !{!6457}
!6457 = !DILocalVariable(name: "entry", arg: 1, scope: !6453, file: !6406, line: 134, type: !211)
!6458 = !DILocation(line: 134, column: 61, scope: !6453)
!6459 = !DILocation(line: 136, column: 2, scope: !6453)
!6460 = distinct !DISubprogram(name: "__list_del", scope: !6406, file: !6406, line: 193, type: !6461, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6463)
!6461 = !DISubroutineType(types: !6462)
!6462 = !{null, !211, !211}
!6463 = !{!6464, !6465}
!6464 = !DILocalVariable(name: "prev", arg: 1, scope: !6460, file: !6406, line: 193, type: !211)
!6465 = !DILocalVariable(name: "next", arg: 2, scope: !6460, file: !6406, line: 193, type: !211)
!6466 = !DILocation(line: 193, column: 50, scope: !6460)
!6467 = !DILocation(line: 193, column: 75, scope: !6460)
!6468 = !DILocation(line: 195, column: 15, scope: !6460)
!6469 = !DILocation(line: 195, column: 2, scope: !6460)
!6470 = !DILocation(line: 195, column: 8, scope: !6460)
!6471 = !DILocation(line: 195, column: 13, scope: !6460)
!6472 = !DILocation(line: 196, column: 2, scope: !6460)
!6473 = !DILocation(line: 196, column: 2, scope: !6474)
!6474 = distinct !DILexicalBlock(scope: !6460, file: !6406, line: 196, column: 2)
!6475 = !DILocation(line: 196, column: 2, scope: !6476)
!6476 = distinct !DILexicalBlock(scope: !6474, file: !6406, line: 196, column: 2)
!6477 = !DILocation(line: 196, column: 2, scope: !6478)
!6478 = distinct !DILexicalBlock(scope: !6474, file: !6406, line: 196, column: 2)
!6479 = !DILocation(line: 197, column: 1, scope: !6460)
!6480 = distinct !DISubprogram(name: "waitqueue_active", scope: !196, file: !196, line: 127, type: !6481, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6483)
!6481 = !DISubroutineType(types: !6482)
!6482 = !{!112, !6035}
!6483 = !{!6484}
!6484 = !DILocalVariable(name: "wq_head", arg: 1, scope: !6480, file: !196, line: 127, type: !6035)
!6485 = !DILocation(line: 127, column: 60, scope: !6480)
!6486 = !DILocation(line: 129, column: 22, scope: !6480)
!6487 = !DILocation(line: 129, column: 31, scope: !6480)
!6488 = !DILocation(line: 129, column: 10, scope: !6480)
!6489 = !DILocation(line: 129, column: 9, scope: !6480)
!6490 = !DILocation(line: 129, column: 2, scope: !6480)
!6491 = distinct !DISubprogram(name: "list_empty", scope: !6406, file: !6406, line: 371, type: !6492, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6496)
!6492 = !DISubroutineType(types: !6493)
!6493 = !{!112, !6494}
!6494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6495, size: 64)
!6495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!6496 = !{!6497}
!6497 = !DILocalVariable(name: "head", arg: 1, scope: !6491, file: !6406, line: 371, type: !6494)
!6498 = !DILocation(line: 371, column: 54, scope: !6491)
!6499 = !DILocation(line: 373, column: 9, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6491, file: !6406, line: 373, column: 9)
!6501 = !DILocation(line: 373, column: 9, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6500, file: !6406, line: 373, column: 9)
!6503 = !DILocation(line: 373, column: 34, scope: !6491)
!6504 = !DILocation(line: 373, column: 31, scope: !6491)
!6505 = !DILocation(line: 373, column: 2, scope: !6491)
!6506 = distinct !DISubprogram(name: "kasan_check_write", scope: !6341, file: !6341, line: 44, type: !6342, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6507)
!6507 = !{!6508, !6509}
!6508 = !DILocalVariable(name: "p", arg: 1, scope: !6506, file: !6341, line: 44, type: !6059)
!6509 = !DILocalVariable(name: "size", arg: 2, scope: !6506, file: !6341, line: 44, type: !5)
!6510 = !DILocation(line: 44, column: 59, scope: !6506)
!6511 = !DILocation(line: 44, column: 75, scope: !6506)
!6512 = !DILocation(line: 46, column: 2, scope: !6506)
