; ModuleID = 'kernel/cgroup/freezer.c'
source_filename = "kernel/cgroup/freezer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.pcpu_hot = type { %union.anon.15 }
%union.anon.15 = type { %struct.anon.16, [16 x i8] }
%struct.anon.16 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.17 }
%union.anon.17 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.cgroup = type { %struct.cgroup_subsys_state, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, [0 x %struct.cgroup_file], i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x ptr] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i64, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.cgroup_file = type { ptr, i64, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.cgroup_bpf = type {}
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, ptr, ptr }
%struct.restart_block = type { i64, ptr, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x ptr], i64, i64, i64, i64, i64, ptr, i64, i8, i32, [40 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.fpu = type { i32, i64, ptr, ptr, %struct.fpu_state_perm, %struct.fpu_state_perm, %struct.fpstate }
%struct.fpu_state_perm = type { i64, i32, i32 }
%struct.fpstate = type { i32, i32, i64, i64, i64, i8, [31 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.10, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.13 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { i64, i64 }
%union.anon.13 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.css_set = type { [14 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [14 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i64, ptr, %struct.sigset_t }
%struct.css_task_iter = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }

@css_set_lock = external dso_local global %struct.spinlock, align 4
@trace_cgroup_path_lock = external dso_local global %struct.spinlock, align 4
@trace_cgroup_path = external dso_local global [1024 x i8], align 16
@.str = private unnamed_addr constant [24 x i8] c"kernel/cgroup/freezer.c\00", align 1, !dbg !0
@cgroup_mutex = external dso_local global %struct.mutex, align 8
@__tracepoint_cgroup_notify_frozen = external dso_local global %struct.tracepoint, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.1 = private unnamed_addr constant [30 x i8] c"include/trace/events/cgroup.h\00", align 1, !dbg !7
@trace_cgroup_notify_frozen.__UNIQUE_ID___addressable___SCK__tp_func_cgroup_notify_frozen398 = internal global ptr @__SCK__tp_func_cgroup_notify_frozen, section ".discard.addressable", align 8, !dbg !13
@__SCK__tp_func_cgroup_notify_frozen = external dso_local global %struct.static_call_key, align 8
@trace_cgroup_notify_frozen.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace399 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !4739
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__tracepoint_cgroup_freeze = external dso_local global %struct.tracepoint, align 8
@trace_cgroup_freeze.__UNIQUE_ID___addressable___SCK__tp_func_cgroup_freeze358 = internal global ptr @__SCK__tp_func_cgroup_freeze, section ".discard.addressable", align 8, !dbg !4741
@__SCK__tp_func_cgroup_freeze = external dso_local global %struct.static_call_key, align 8
@trace_cgroup_freeze.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace359 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !4770
@__tracepoint_cgroup_unfreeze = external dso_local global %struct.tracepoint, align 8
@trace_cgroup_unfreeze.__UNIQUE_ID___addressable___SCK__tp_func_cgroup_unfreeze366 = internal global ptr @__SCK__tp_func_cgroup_unfreeze, section ".discard.addressable", align 8, !dbg !4772
@__SCK__tp_func_cgroup_unfreeze = external dso_local global %struct.static_call_key, align 8
@trace_cgroup_unfreeze.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace367 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !4799
@llvm.compiler.used = appending global [6 x ptr] [ptr @trace_cgroup_notify_frozen.__UNIQUE_ID___addressable___SCK__tp_func_cgroup_notify_frozen398, ptr @trace_cgroup_notify_frozen.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace399, ptr @trace_cgroup_freeze.__UNIQUE_ID___addressable___SCK__tp_func_cgroup_freeze358, ptr @trace_cgroup_freeze.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace359, ptr @trace_cgroup_unfreeze.__UNIQUE_ID___addressable___SCK__tp_func_cgroup_unfreeze366, ptr @trace_cgroup_unfreeze.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace367], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cgroup_update_frozen(ptr noundef %cgrp) #0 align 16 !dbg !4836 {
entry:
  %cgrp.addr = alloca ptr, align 8
  %frozen = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %flags57 = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !4840, metadata !DIExpression()), !dbg !4851
  call void @llvm.lifetime.start.p0(i64 1, ptr %frozen) #11, !dbg !4852
  call void @llvm.dbg.declare(metadata ptr %frozen, metadata !4841, metadata !DIExpression()), !dbg !4853
  br label %do.body, !dbg !4854

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4855

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4855

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %cgrp.addr, align 8, !dbg !4857
  %flags = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 1, !dbg !4857
  %1 = ptrtoint ptr %flags to i64, !dbg !4857
  %cmp = icmp ne i64 %1, 0, !dbg !4857
  %conv = zext i1 %cmp to i32, !dbg !4857
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4857
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !4857

land.lhs.true:                                    ; preds = %do.end
  %3 = load ptr, ptr %cgrp.addr, align 8, !dbg !4857
  %flags1 = getelementptr inbounds %struct.cgroup, ptr %3, i32 0, i32 1, !dbg !4857
  %4 = ptrtoint ptr %flags1 to i64, !dbg !4857
  %cmp2 = icmp ne i64 %4, 0, !dbg !4857
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !4857

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %cgrp.addr, align 8, !dbg !4857
  %flags5 = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 1, !dbg !4857
  %6 = load i64, ptr %flags5, align 8, !dbg !4857
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !4857
  br i1 %7, label %cond.true, label %cond.false, !dbg !4858

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %cgrp.addr, align 8, !dbg !4857
  %flags6 = getelementptr inbounds %struct.cgroup, ptr %8, i32 0, i32 1, !dbg !4857
  %call = call zeroext i1 @const_test_bit(i64 noundef 2, ptr noundef %flags6) #12, !dbg !4857
  br i1 %call, label %land.rhs, label %land.end, !dbg !4857

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %do.end
  %9 = load ptr, ptr %cgrp.addr, align 8, !dbg !4857
  %flags8 = getelementptr inbounds %struct.cgroup, ptr %9, i32 0, i32 1, !dbg !4857
  %call9 = call zeroext i1 @_test_bit(i64 noundef 2, ptr noundef %flags8) #12, !dbg !4857
  br i1 %call9, label %land.rhs, label %land.end, !dbg !4858

land.rhs:                                         ; preds = %cond.false, %cond.true
  %10 = load ptr, ptr %cgrp.addr, align 8, !dbg !4859
  %freezer = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 38, !dbg !4860
  %nr_frozen_tasks = getelementptr inbounds %struct.cgroup_freezer_state, ptr %freezer, i32 0, i32 3, !dbg !4861
  %11 = load i32, ptr %nr_frozen_tasks, align 4, !dbg !4861
  %12 = load ptr, ptr %cgrp.addr, align 8, !dbg !4862
  %call11 = call i32 @__cgroup_task_count(ptr noundef %12) #12, !dbg !4863
  %cmp12 = icmp eq i32 %11, %call11, !dbg !4864
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false, %cond.true
  %13 = phi i1 [ false, %cond.false ], [ false, %cond.true ], [ %cmp12, %land.rhs ], !dbg !4865
  %frombool = zext i1 %13 to i8, !dbg !4866
  store i8 %frombool, ptr %frozen, align 1, !dbg !4866
  %14 = load i8, ptr %frozen, align 1, !dbg !4867, !range !4869, !noundef !1361
  %tobool = trunc i8 %14 to i1, !dbg !4867
  br i1 %tobool, label %if.then, label %if.else, !dbg !4870

if.then:                                          ; preds = %land.end
  %15 = load ptr, ptr %cgrp.addr, align 8, !dbg !4871
  %flags14 = getelementptr inbounds %struct.cgroup, ptr %15, i32 0, i32 1, !dbg !4871
  %16 = ptrtoint ptr %flags14 to i64, !dbg !4871
  %cmp15 = icmp ne i64 %16, 0, !dbg !4871
  %conv16 = zext i1 %cmp15 to i32, !dbg !4871
  %17 = call i1 @llvm.is.constant.i32(i32 %conv16), !dbg !4871
  br i1 %17, label %land.lhs.true17, label %cond.false27, !dbg !4871

land.lhs.true17:                                  ; preds = %if.then
  %18 = load ptr, ptr %cgrp.addr, align 8, !dbg !4871
  %flags18 = getelementptr inbounds %struct.cgroup, ptr %18, i32 0, i32 1, !dbg !4871
  %19 = ptrtoint ptr %flags18 to i64, !dbg !4871
  %cmp19 = icmp ne i64 %19, 0, !dbg !4871
  br i1 %cmp19, label %land.lhs.true21, label %cond.false27, !dbg !4871

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %20 = load ptr, ptr %cgrp.addr, align 8, !dbg !4871
  %flags22 = getelementptr inbounds %struct.cgroup, ptr %20, i32 0, i32 1, !dbg !4871
  %21 = load i64, ptr %flags22, align 8, !dbg !4871
  %22 = call i1 @llvm.is.constant.i64(i64 %21), !dbg !4871
  br i1 %22, label %cond.true23, label %cond.false27, !dbg !4874

cond.true23:                                      ; preds = %land.lhs.true21
  %23 = load ptr, ptr %cgrp.addr, align 8, !dbg !4871
  %flags24 = getelementptr inbounds %struct.cgroup, ptr %23, i32 0, i32 1, !dbg !4871
  %call25 = call zeroext i1 @const_test_bit(i64 noundef 3, ptr noundef %flags24) #12, !dbg !4871
  br i1 %call25, label %if.then31, label %if.end, !dbg !4871

cond.false27:                                     ; preds = %land.lhs.true21, %land.lhs.true17, %if.then
  %24 = load ptr, ptr %cgrp.addr, align 8, !dbg !4871
  %flags28 = getelementptr inbounds %struct.cgroup, ptr %24, i32 0, i32 1, !dbg !4871
  %call29 = call zeroext i1 @_test_bit(i64 noundef 3, ptr noundef %flags28) #12, !dbg !4871
  br i1 %call29, label %if.then31, label %if.end, !dbg !4874

if.then31:                                        ; preds = %cond.false27, %cond.true23
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4875

if.end:                                           ; preds = %cond.false27, %cond.true23
  %25 = load ptr, ptr %cgrp.addr, align 8, !dbg !4876
  %flags32 = getelementptr inbounds %struct.cgroup, ptr %25, i32 0, i32 1, !dbg !4877
  call void @set_bit(i64 noundef 3, ptr noundef %flags32) #12, !dbg !4878
  br label %if.end53, !dbg !4879

if.else:                                          ; preds = %land.end
  %26 = load ptr, ptr %cgrp.addr, align 8, !dbg !4880
  %flags33 = getelementptr inbounds %struct.cgroup, ptr %26, i32 0, i32 1, !dbg !4880
  %27 = ptrtoint ptr %flags33 to i64, !dbg !4880
  %cmp34 = icmp ne i64 %27, 0, !dbg !4880
  %conv35 = zext i1 %cmp34 to i32, !dbg !4880
  %28 = call i1 @llvm.is.constant.i32(i32 %conv35), !dbg !4880
  br i1 %28, label %land.lhs.true36, label %cond.false46, !dbg !4880

land.lhs.true36:                                  ; preds = %if.else
  %29 = load ptr, ptr %cgrp.addr, align 8, !dbg !4880
  %flags37 = getelementptr inbounds %struct.cgroup, ptr %29, i32 0, i32 1, !dbg !4880
  %30 = ptrtoint ptr %flags37 to i64, !dbg !4880
  %cmp38 = icmp ne i64 %30, 0, !dbg !4880
  br i1 %cmp38, label %land.lhs.true40, label %cond.false46, !dbg !4880

land.lhs.true40:                                  ; preds = %land.lhs.true36
  %31 = load ptr, ptr %cgrp.addr, align 8, !dbg !4880
  %flags41 = getelementptr inbounds %struct.cgroup, ptr %31, i32 0, i32 1, !dbg !4880
  %32 = load i64, ptr %flags41, align 8, !dbg !4880
  %33 = call i1 @llvm.is.constant.i64(i64 %32), !dbg !4880
  br i1 %33, label %cond.true42, label %cond.false46, !dbg !4883

cond.true42:                                      ; preds = %land.lhs.true40
  %34 = load ptr, ptr %cgrp.addr, align 8, !dbg !4880
  %flags43 = getelementptr inbounds %struct.cgroup, ptr %34, i32 0, i32 1, !dbg !4880
  %call44 = call zeroext i1 @const_test_bit(i64 noundef 3, ptr noundef %flags43) #12, !dbg !4880
  br i1 %call44, label %if.end51, label %if.then50, !dbg !4880

cond.false46:                                     ; preds = %land.lhs.true40, %land.lhs.true36, %if.else
  %35 = load ptr, ptr %cgrp.addr, align 8, !dbg !4880
  %flags47 = getelementptr inbounds %struct.cgroup, ptr %35, i32 0, i32 1, !dbg !4880
  %call48 = call zeroext i1 @_test_bit(i64 noundef 3, ptr noundef %flags47) #12, !dbg !4880
  br i1 %call48, label %if.end51, label %if.then50, !dbg !4883

if.then50:                                        ; preds = %cond.false46, %cond.true42
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4884

if.end51:                                         ; preds = %cond.false46, %cond.true42
  %36 = load ptr, ptr %cgrp.addr, align 8, !dbg !4885
  %flags52 = getelementptr inbounds %struct.cgroup, ptr %36, i32 0, i32 1, !dbg !4886
  call void @clear_bit(i64 noundef 3, ptr noundef %flags52) #12, !dbg !4887
  br label %if.end53

if.end53:                                         ; preds = %if.end51, %if.end
  %37 = load ptr, ptr %cgrp.addr, align 8, !dbg !4888
  %events_file = getelementptr inbounds %struct.cgroup, ptr %37, i32 0, i32 14, !dbg !4889
  call void @cgroup_file_notify(ptr noundef %events_file) #12, !dbg !4890
  br label %do.body54, !dbg !4891

do.body54:                                        ; preds = %if.end53
  %call55 = call zeroext i1 @trace_cgroup_notify_frozen_enabled() #12, !dbg !4892
  br i1 %call55, label %if.then56, label %if.end71, !dbg !4893

if.then56:                                        ; preds = %do.body54
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags57) #11, !dbg !4894
  call void @llvm.dbg.declare(metadata ptr %flags57, metadata !4842, metadata !DIExpression()), !dbg !4894
  br label %do.body58, !dbg !4894

do.body58:                                        ; preds = %if.then56
  br label %do.body59, !dbg !4895

do.body59:                                        ; preds = %do.body58
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !4896
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4846, metadata !DIExpression()), !dbg !4896
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !4896
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4850, metadata !DIExpression()), !dbg !4896
  %cmp60 = icmp eq ptr %__dummy, %__dummy2, !dbg !4896
  %conv61 = zext i1 %cmp60 to i32, !dbg !4896
  store i32 1, ptr %tmp, align 4, !dbg !4896
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !4897
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !4897
  %38 = load i32, ptr %tmp, align 4, !dbg !4896
  %call62 = call ptr @spinlock_check(ptr noundef @trace_cgroup_path_lock) #12, !dbg !4897
  %call63 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call62) #12, !dbg !4897
  store i64 %call63, ptr %flags57, align 8, !dbg !4897
  br label %do.cond64, !dbg !4897

do.cond64:                                        ; preds = %do.body59
  br label %do.end65, !dbg !4897

do.end65:                                         ; preds = %do.cond64
  br label %do.cond66, !dbg !4895

do.cond66:                                        ; preds = %do.end65
  br label %do.end67, !dbg !4895

do.end67:                                         ; preds = %do.cond66
  %39 = load ptr, ptr %cgrp.addr, align 8, !dbg !4894
  %call68 = call i32 @cgroup_path(ptr noundef %39, ptr noundef @trace_cgroup_path, i64 noundef 1024) #12, !dbg !4894
  %40 = load ptr, ptr %cgrp.addr, align 8, !dbg !4894
  %41 = load i8, ptr %frozen, align 1, !dbg !4894, !range !4869, !noundef !1361
  %tobool69 = trunc i8 %41 to i1, !dbg !4894
  %conv70 = zext i1 %tobool69 to i32, !dbg !4894
  call void @trace_cgroup_notify_frozen(ptr noundef %40, ptr noundef @trace_cgroup_path, i32 noundef %conv70) #12, !dbg !4894
  %42 = load i64, ptr %flags57, align 8, !dbg !4894
  call void @spin_unlock_irqrestore(ptr noundef @trace_cgroup_path_lock, i64 noundef %42) #12, !dbg !4894
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags57) #11, !dbg !4892
  br label %if.end71, !dbg !4894

if.end71:                                         ; preds = %do.end67, %do.body54
  br label %do.cond72, !dbg !4893

do.cond72:                                        ; preds = %if.end71
  br label %do.end73, !dbg !4893

do.end73:                                         ; preds = %do.cond72
  %43 = load ptr, ptr %cgrp.addr, align 8, !dbg !4898
  %44 = load i8, ptr %frozen, align 1, !dbg !4899, !range !4869, !noundef !1361
  %tobool74 = trunc i8 %44 to i1, !dbg !4899
  call void @cgroup_propagate_frozen(ptr noundef %43, i1 noundef zeroext %tobool74) #12, !dbg !4900
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4901
  br label %cleanup, !dbg !4901

cleanup:                                          ; preds = %do.end73, %if.then50, %if.then31
  call void @llvm.lifetime.end.p0(i64 1, ptr %frozen) #11, !dbg !4901
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4901

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !4902 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4910, metadata !DIExpression()), !dbg !4915
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4911, metadata !DIExpression()), !dbg !4916
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !4917
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4912, metadata !DIExpression()), !dbg !4918
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4919
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4920
  %div = udiv i64 %1, 64, !dbg !4920
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4921
  store ptr %add.ptr, ptr %p, align 8, !dbg !4918
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #11, !dbg !4922
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4913, metadata !DIExpression()), !dbg !4923
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4924
  %rem = urem i64 %2, 64, !dbg !4924
  %shl = shl i64 1, %rem, !dbg !4924
  store i64 %shl, ptr %mask, align 8, !dbg !4923
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !4925
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4914, metadata !DIExpression()), !dbg !4926
  %3 = load ptr, ptr %p, align 8, !dbg !4927
  %4 = load i64, ptr %3, align 8, !dbg !4928
  store i64 %4, ptr %val, align 8, !dbg !4926
  %5 = load i64, ptr %val, align 8, !dbg !4929
  %6 = load i64, ptr %mask, align 8, !dbg !4930
  %and = and i64 %5, %6, !dbg !4931
  %tobool = icmp ne i64 %and, 0, !dbg !4932
  %lnot = xor i1 %tobool, true, !dbg !4932
  %lnot1 = xor i1 %lnot, true, !dbg !4933
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !4934
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #11, !dbg !4934
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !4934
  ret i1 %lnot1, !dbg !4935
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !4936 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4939, metadata !DIExpression()), !dbg !4941
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4940, metadata !DIExpression()), !dbg !4942
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4943
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4944
  %div = udiv i64 %1, 64, !dbg !4944
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4945
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !4946
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4947
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4948
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !4949
  ret i1 %call, !dbg !4950
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4951 dso_local i32 @__cgroup_task_count(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !4956 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4962, metadata !DIExpression()), !dbg !4964
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4963, metadata !DIExpression()), !dbg !4965
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4966
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4967
  %div = sdiv i64 %1, 64, !dbg !4967
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4968
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !4969
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4970
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4971
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !4972
  ret void, !dbg !4973
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !4974 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4976, metadata !DIExpression()), !dbg !4978
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4977, metadata !DIExpression()), !dbg !4979
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4980
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4981
  %div = sdiv i64 %1, 64, !dbg !4981
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4982
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !4983
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4984
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4985
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !4986
  ret void, !dbg !4987
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4988 dso_local void @cgroup_file_notify(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @trace_cgroup_notify_frozen_enabled() #6 align 16 !dbg !4992 {
entry:
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_frozen, i32 0, i32 1)) #12, !dbg !4993
  ret i1 %call, !dbg !4993
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4994 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !4999 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5004, metadata !DIExpression()), !dbg !5005
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5006
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5007
  ret ptr %1, !dbg !5008
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cgroup_path(ptr noundef %cgrp, ptr noundef %buf, i64 noundef %buflen) #6 align 16 !dbg !5009 {
entry:
  %cgrp.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !5013, metadata !DIExpression()), !dbg !5016
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5014, metadata !DIExpression()), !dbg !5017
  store i64 %buflen, ptr %buflen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !5015, metadata !DIExpression()), !dbg !5018
  %0 = load ptr, ptr %cgrp.addr, align 8, !dbg !5019
  %kn = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 12, !dbg !5020
  %1 = load ptr, ptr %kn, align 8, !dbg !5020
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !5021
  %3 = load i64, ptr %buflen.addr, align 8, !dbg !5022
  %call = call i32 @kernfs_path(ptr noundef %1, ptr noundef %2, i64 noundef %3) #12, !dbg !5023
  ret i32 %call, !dbg !5024
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_cgroup_notify_frozen(ptr noundef %cgrp, ptr noundef %path, i32 noundef %val) #6 align 16 !dbg !15 {
entry:
  %cgrp.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu396 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !4802, metadata !DIExpression()), !dbg !5025
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !4803, metadata !DIExpression()), !dbg !5025
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4804, metadata !DIExpression()), !dbg !5025
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_frozen, i32 0, i32 1)) #12, !dbg !5026
  br i1 %call, label %if.then, label %if.end68, !dbg !5025

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5026

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #11, !dbg !5027
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !4805, metadata !DIExpression()), !dbg !5027
  store i32 0, ptr %__idx, align 4, !dbg !5027
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #11, !dbg !5028
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4808, metadata !DIExpression()), !dbg !5028
  br label %do.body1, !dbg !5028

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !5029
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4811, metadata !DIExpression()), !dbg !5029
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5029
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5029
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !5028
  br label %do.cond, !dbg !5029

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5029

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #11, !dbg !5030
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4813, metadata !DIExpression()), !dbg !5030
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 2)) #11, !dbg !5030, !srcloc !5031
  store i32 %1, ptr %pfo_val__, align 4, !dbg !5030
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !5030
  %conv = zext i32 %2 to i64, !dbg !5030
  %conv2 = trunc i64 %conv to i32, !dbg !5030
  store i32 %conv2, ptr %tmp, align 4, !dbg !5030
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #11, !dbg !5028
  %3 = load i32, ptr %tmp, align 4, !dbg !5030
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !5028
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !5028
  store i32 %4, ptr %tmp3, align 4, !dbg !5028
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #11, !dbg !5032
  %5 = load i32, ptr %tmp3, align 4, !dbg !5028
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #12, !dbg !5032
  br i1 %call4, label %if.end, label %if.then5, !dbg !5027

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5032

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !5033
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4815, metadata !DIExpression()), !dbg !5033
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !5033
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5034
  %tobool = icmp ne i32 %6, 0, !dbg !5034
  %lnot = xor i1 %tobool, true, !dbg !5034
  %lnot6 = xor i1 %lnot, true, !dbg !5034
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5034
  %conv7 = sext i32 %lnot.ext to i64, !dbg !5034
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !5034
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5034
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !5033

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !5034

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !5035
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4818, metadata !DIExpression()), !dbg !5035
  store i32 2307, ptr %__flags, align 4, !dbg !5035
  br label %do.body11, !dbg !5035

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !5036

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5036

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5035

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !5038
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 205, i32 %7, i64 12) #11, !dbg !5038, !srcloc !5040
  br label %do.cond15, !dbg !5038

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5038

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !5035

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !5041

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5041

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !5034
  br label %do.cond20, !dbg !5035

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !5035

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !5035

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !5033
  %tobool24 = icmp ne i32 %8, 0, !dbg !5033
  %lnot25 = xor i1 %tobool24, true, !dbg !5033
  %lnot27 = xor i1 %lnot25, true, !dbg !5033
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !5033
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !5033
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !5033
  store i64 %expval30, ptr %tmp23, align 8, !dbg !5034
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !5043
  %9 = load i64, ptr %tmp23, align 8, !dbg !5033
  %tobool31 = icmp ne i64 %9, 0, !dbg !5043
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5027

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5043

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !5027

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !5044
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !5044, !srcloc !5046
  br label %do.cond35, !dbg !5044

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !5044

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !5027

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #11, !dbg !5047
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !4821, metadata !DIExpression()), !dbg !5047
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #11, !dbg !5047
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !4823, metadata !DIExpression()), !dbg !5047
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu396) #11, !dbg !5048
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu396, metadata !4824, metadata !DIExpression()), !dbg !5048
  br label %do.body38, !dbg !5049

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !5051

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5051

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_frozen, i32 0, i32 8), align 8, !dbg !5049
  store ptr %10, ptr %tmp41, align 8, !dbg !5051
  %11 = load ptr, ptr %tmp41, align 8, !dbg !5049
  store ptr %11, ptr %__UNIQUE_ID_rcu396, align 8, !dbg !5048
  %12 = load ptr, ptr %__UNIQUE_ID_rcu396, align 8, !dbg !5048
  store ptr %12, ptr %tmp42, align 8, !dbg !5048
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu396) #11, !dbg !5047
  %13 = load ptr, ptr %tmp42, align 8, !dbg !5048
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !5047
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !5053
  %tobool43 = icmp ne ptr %14, null, !dbg !5053
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !5047

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !5055
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !5055
  %16 = load ptr, ptr %data, align 8, !dbg !5055
  store ptr %16, ptr %__data, align 8, !dbg !5055
  store ptr @__SCT__tp_func_cgroup_notify_frozen, ptr %tmp45, align 8, !dbg !5057
  %17 = load ptr, ptr %tmp45, align 8, !dbg !5057
  %18 = load ptr, ptr %__data, align 8, !dbg !5055
  %19 = load ptr, ptr %cgrp.addr, align 8, !dbg !5055
  %20 = load ptr, ptr %path.addr, align 8, !dbg !5055
  %21 = load i32, ptr %val.addr, align 4, !dbg !5055
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, ptr noundef %20, i32 noundef %21) #12, !dbg !5055
  br label %if.end47, !dbg !5055

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #11, !dbg !5027
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #11, !dbg !5027
  br label %do.cond48, !dbg !5047

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !5047

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !5027

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !5059, !srcloc !5061
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !5062
  %lnot52 = xor i1 %call51, true, !dbg !5062
  %lnot54 = xor i1 %lnot52, true, !dbg !5062
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !5062
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !5062
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !5062
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !5062
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !5059

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !5062

do.body60:                                        ; preds = %if.then59
  %22 = call i64 @llvm.read_register.i64(metadata !4826), !dbg !5064
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #11, !dbg !5064, !srcloc !5066
  call void @llvm.write_register.i64(metadata !4826, i64 %23), !dbg !5064
  br label %do.cond61, !dbg !5064

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !5064

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !5064

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !5059

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !5059

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5026
  br label %cleanup, !dbg !5026

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #11, !dbg !5026
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !5027

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !5027

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !5025

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #4 align 16 !dbg !5067 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5071, metadata !DIExpression()), !dbg !5077
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5072, metadata !DIExpression()), !dbg !5078
  br label %do.body, !dbg !5079

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !5080
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5073, metadata !DIExpression()), !dbg !5080
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !5080
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5076, metadata !DIExpression()), !dbg !5080
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5080
  %conv = zext i1 %cmp to i32, !dbg !5080
  store i32 1, ptr %tmp, align 4, !dbg !5080
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !5081
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !5081
  %0 = load i32, ptr %tmp, align 4, !dbg !5080
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5081
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5081
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5081
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #12, !dbg !5081
  br label %do.end, !dbg !5081

do.end:                                           ; preds = %do.body
  ret void, !dbg !5082
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cgroup_propagate_frozen(ptr noundef %cgrp, i1 noundef zeroext %frozen) #0 align 16 !dbg !5083 {
entry:
  %cgrp.addr = alloca ptr, align 8
  %frozen.addr = alloca i8, align 1
  %desc = alloca i32, align 4
  %flags40 = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %flags78 = alloca i64, align 8
  %__dummy81 = alloca i64, align 8
  %__dummy282 = alloca i64, align 8
  %tmp85 = alloca i32, align 4
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !5087, metadata !DIExpression()), !dbg !5116
  %frombool = zext i1 %frozen to i8
  store i8 %frombool, ptr %frozen.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %frozen.addr, metadata !5088, metadata !DIExpression()), !dbg !5117
  call void @llvm.lifetime.start.p0(i64 4, ptr %desc) #11, !dbg !5118
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !5089, metadata !DIExpression()), !dbg !5119
  store i32 1, ptr %desc, align 4, !dbg !5119
  br label %while.cond, !dbg !5120

while.cond:                                       ; preds = %if.end98, %entry
  %0 = load ptr, ptr %cgrp.addr, align 8, !dbg !5121
  %call = call ptr @cgroup_parent(ptr noundef %0) #12, !dbg !5122
  store ptr %call, ptr %cgrp.addr, align 8, !dbg !5123
  %tobool = icmp ne ptr %call, null, !dbg !5120
  br i1 %tobool, label %while.body, label %while.end, !dbg !5120

while.body:                                       ; preds = %while.cond
  %1 = load i8, ptr %frozen.addr, align 1, !dbg !5124, !range !4869, !noundef !1361
  %tobool1 = trunc i8 %1 to i1, !dbg !5124
  br i1 %tobool1, label %if.then, label %if.else, !dbg !5125

if.then:                                          ; preds = %while.body
  %2 = load i32, ptr %desc, align 4, !dbg !5126
  %3 = load ptr, ptr %cgrp.addr, align 8, !dbg !5127
  %freezer = getelementptr inbounds %struct.cgroup, ptr %3, i32 0, i32 38, !dbg !5128
  %nr_frozen_descendants = getelementptr inbounds %struct.cgroup_freezer_state, ptr %freezer, i32 0, i32 2, !dbg !5129
  %4 = load i32, ptr %nr_frozen_descendants, align 4, !dbg !5130
  %add = add i32 %4, %2, !dbg !5130
  store i32 %add, ptr %nr_frozen_descendants, align 4, !dbg !5130
  %5 = load ptr, ptr %cgrp.addr, align 8, !dbg !5131
  %flags = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 1, !dbg !5131
  %6 = ptrtoint ptr %flags to i64, !dbg !5131
  %cmp = icmp ne i64 %6, 0, !dbg !5131
  %conv = zext i1 %cmp to i32, !dbg !5131
  %7 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5131
  br i1 %7, label %land.lhs.true, label %cond.false, !dbg !5131

land.lhs.true:                                    ; preds = %if.then
  %8 = load ptr, ptr %cgrp.addr, align 8, !dbg !5131
  %flags2 = getelementptr inbounds %struct.cgroup, ptr %8, i32 0, i32 1, !dbg !5131
  %9 = ptrtoint ptr %flags2 to i64, !dbg !5131
  %cmp3 = icmp ne i64 %9, 0, !dbg !5131
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !5131

land.lhs.true5:                                   ; preds = %land.lhs.true
  %10 = load ptr, ptr %cgrp.addr, align 8, !dbg !5131
  %flags6 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 1, !dbg !5131
  %11 = load i64, ptr %flags6, align 8, !dbg !5131
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !5131
  br i1 %12, label %cond.true, label %cond.false, !dbg !5132

cond.true:                                        ; preds = %land.lhs.true5
  %13 = load ptr, ptr %cgrp.addr, align 8, !dbg !5131
  %flags7 = getelementptr inbounds %struct.cgroup, ptr %13, i32 0, i32 1, !dbg !5131
  %call8 = call zeroext i1 @const_test_bit(i64 noundef 3, ptr noundef %flags7) #12, !dbg !5131
  br i1 %call8, label %if.end52, label %land.lhs.true13, !dbg !5131

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true, %if.then
  %14 = load ptr, ptr %cgrp.addr, align 8, !dbg !5131
  %flags10 = getelementptr inbounds %struct.cgroup, ptr %14, i32 0, i32 1, !dbg !5131
  %call11 = call zeroext i1 @_test_bit(i64 noundef 3, ptr noundef %flags10) #12, !dbg !5131
  br i1 %call11, label %if.end52, label %land.lhs.true13, !dbg !5132

land.lhs.true13:                                  ; preds = %cond.false, %cond.true
  %15 = load ptr, ptr %cgrp.addr, align 8, !dbg !5133
  %flags14 = getelementptr inbounds %struct.cgroup, ptr %15, i32 0, i32 1, !dbg !5133
  %16 = ptrtoint ptr %flags14 to i64, !dbg !5133
  %cmp15 = icmp ne i64 %16, 0, !dbg !5133
  %conv16 = zext i1 %cmp15 to i32, !dbg !5133
  %17 = call i1 @llvm.is.constant.i32(i32 %conv16), !dbg !5133
  br i1 %17, label %land.lhs.true17, label %cond.false27, !dbg !5133

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %18 = load ptr, ptr %cgrp.addr, align 8, !dbg !5133
  %flags18 = getelementptr inbounds %struct.cgroup, ptr %18, i32 0, i32 1, !dbg !5133
  %19 = ptrtoint ptr %flags18 to i64, !dbg !5133
  %cmp19 = icmp ne i64 %19, 0, !dbg !5133
  br i1 %cmp19, label %land.lhs.true21, label %cond.false27, !dbg !5133

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %20 = load ptr, ptr %cgrp.addr, align 8, !dbg !5133
  %flags22 = getelementptr inbounds %struct.cgroup, ptr %20, i32 0, i32 1, !dbg !5133
  %21 = load i64, ptr %flags22, align 8, !dbg !5133
  %22 = call i1 @llvm.is.constant.i64(i64 %21), !dbg !5133
  br i1 %22, label %cond.true23, label %cond.false27, !dbg !5134

cond.true23:                                      ; preds = %land.lhs.true21
  %23 = load ptr, ptr %cgrp.addr, align 8, !dbg !5133
  %flags24 = getelementptr inbounds %struct.cgroup, ptr %23, i32 0, i32 1, !dbg !5133
  %call25 = call zeroext i1 @const_test_bit(i64 noundef 2, ptr noundef %flags24) #12, !dbg !5133
  br i1 %call25, label %land.lhs.true31, label %if.end52, !dbg !5133

cond.false27:                                     ; preds = %land.lhs.true21, %land.lhs.true17, %land.lhs.true13
  %24 = load ptr, ptr %cgrp.addr, align 8, !dbg !5133
  %flags28 = getelementptr inbounds %struct.cgroup, ptr %24, i32 0, i32 1, !dbg !5133
  %call29 = call zeroext i1 @_test_bit(i64 noundef 2, ptr noundef %flags28) #12, !dbg !5133
  br i1 %call29, label %land.lhs.true31, label %if.end52, !dbg !5134

land.lhs.true31:                                  ; preds = %cond.false27, %cond.true23
  %25 = load ptr, ptr %cgrp.addr, align 8, !dbg !5135
  %freezer32 = getelementptr inbounds %struct.cgroup, ptr %25, i32 0, i32 38, !dbg !5136
  %nr_frozen_descendants33 = getelementptr inbounds %struct.cgroup_freezer_state, ptr %freezer32, i32 0, i32 2, !dbg !5137
  %26 = load i32, ptr %nr_frozen_descendants33, align 4, !dbg !5137
  %27 = load ptr, ptr %cgrp.addr, align 8, !dbg !5138
  %nr_descendants = getelementptr inbounds %struct.cgroup, ptr %27, i32 0, i32 4, !dbg !5139
  %28 = load i32, ptr %nr_descendants, align 8, !dbg !5139
  %cmp34 = icmp eq i32 %26, %28, !dbg !5140
  br i1 %cmp34, label %if.then36, label %if.end52, !dbg !5141

if.then36:                                        ; preds = %land.lhs.true31
  %29 = load ptr, ptr %cgrp.addr, align 8, !dbg !5142
  %flags37 = getelementptr inbounds %struct.cgroup, ptr %29, i32 0, i32 1, !dbg !5143
  call void @set_bit(i64 noundef 3, ptr noundef %flags37) #12, !dbg !5144
  %30 = load ptr, ptr %cgrp.addr, align 8, !dbg !5145
  %events_file = getelementptr inbounds %struct.cgroup, ptr %30, i32 0, i32 14, !dbg !5146
  call void @cgroup_file_notify(ptr noundef %events_file) #12, !dbg !5147
  br label %do.body, !dbg !5148

do.body:                                          ; preds = %if.then36
  %call38 = call zeroext i1 @trace_cgroup_notify_frozen_enabled() #12, !dbg !5149
  br i1 %call38, label %if.then39, label %if.end, !dbg !5150

if.then39:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags40) #11, !dbg !5151
  call void @llvm.dbg.declare(metadata ptr %flags40, metadata !5090, metadata !DIExpression()), !dbg !5151
  br label %do.body41, !dbg !5151

do.body41:                                        ; preds = %if.then39
  br label %do.body42, !dbg !5152

do.body42:                                        ; preds = %do.body41
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !5153
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5099, metadata !DIExpression()), !dbg !5153
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !5153
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5103, metadata !DIExpression()), !dbg !5153
  %cmp43 = icmp eq ptr %__dummy, %__dummy2, !dbg !5153
  %conv44 = zext i1 %cmp43 to i32, !dbg !5153
  store i32 1, ptr %tmp, align 4, !dbg !5153
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !5154
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !5154
  %31 = load i32, ptr %tmp, align 4, !dbg !5153
  %call45 = call ptr @spinlock_check(ptr noundef @trace_cgroup_path_lock) #12, !dbg !5154
  %call46 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call45) #12, !dbg !5154
  store i64 %call46, ptr %flags40, align 8, !dbg !5154
  br label %do.cond, !dbg !5154

do.cond:                                          ; preds = %do.body42
  br label %do.end, !dbg !5154

do.end:                                           ; preds = %do.cond
  br label %do.cond47, !dbg !5152

do.cond47:                                        ; preds = %do.end
  br label %do.end48, !dbg !5152

do.end48:                                         ; preds = %do.cond47
  %32 = load ptr, ptr %cgrp.addr, align 8, !dbg !5151
  %call49 = call i32 @cgroup_path(ptr noundef %32, ptr noundef @trace_cgroup_path, i64 noundef 1024) #12, !dbg !5151
  %33 = load ptr, ptr %cgrp.addr, align 8, !dbg !5151
  call void @trace_cgroup_notify_frozen(ptr noundef %33, ptr noundef @trace_cgroup_path, i32 noundef 1) #12, !dbg !5151
  %34 = load i64, ptr %flags40, align 8, !dbg !5151
  call void @spin_unlock_irqrestore(ptr noundef @trace_cgroup_path_lock, i64 noundef %34) #12, !dbg !5151
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags40) #11, !dbg !5149
  br label %if.end, !dbg !5151

if.end:                                           ; preds = %do.end48, %do.body
  br label %do.cond50, !dbg !5150

do.cond50:                                        ; preds = %if.end
  br label %do.end51, !dbg !5150

do.end51:                                         ; preds = %do.cond50
  %35 = load i32, ptr %desc, align 4, !dbg !5155
  %inc = add i32 %35, 1, !dbg !5155
  store i32 %inc, ptr %desc, align 4, !dbg !5155
  br label %if.end52, !dbg !5156

if.end52:                                         ; preds = %do.end51, %land.lhs.true31, %cond.false27, %cond.true23, %cond.false, %cond.true
  br label %if.end98, !dbg !5157

if.else:                                          ; preds = %while.body
  %36 = load i32, ptr %desc, align 4, !dbg !5158
  %37 = load ptr, ptr %cgrp.addr, align 8, !dbg !5159
  %freezer53 = getelementptr inbounds %struct.cgroup, ptr %37, i32 0, i32 38, !dbg !5160
  %nr_frozen_descendants54 = getelementptr inbounds %struct.cgroup_freezer_state, ptr %freezer53, i32 0, i32 2, !dbg !5161
  %38 = load i32, ptr %nr_frozen_descendants54, align 4, !dbg !5162
  %sub = sub i32 %38, %36, !dbg !5162
  store i32 %sub, ptr %nr_frozen_descendants54, align 4, !dbg !5162
  %39 = load ptr, ptr %cgrp.addr, align 8, !dbg !5163
  %flags55 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 1, !dbg !5163
  %40 = ptrtoint ptr %flags55 to i64, !dbg !5163
  %cmp56 = icmp ne i64 %40, 0, !dbg !5163
  %conv57 = zext i1 %cmp56 to i32, !dbg !5163
  %41 = call i1 @llvm.is.constant.i32(i32 %conv57), !dbg !5163
  br i1 %41, label %land.lhs.true58, label %cond.false68, !dbg !5163

land.lhs.true58:                                  ; preds = %if.else
  %42 = load ptr, ptr %cgrp.addr, align 8, !dbg !5163
  %flags59 = getelementptr inbounds %struct.cgroup, ptr %42, i32 0, i32 1, !dbg !5163
  %43 = ptrtoint ptr %flags59 to i64, !dbg !5163
  %cmp60 = icmp ne i64 %43, 0, !dbg !5163
  br i1 %cmp60, label %land.lhs.true62, label %cond.false68, !dbg !5163

land.lhs.true62:                                  ; preds = %land.lhs.true58
  %44 = load ptr, ptr %cgrp.addr, align 8, !dbg !5163
  %flags63 = getelementptr inbounds %struct.cgroup, ptr %44, i32 0, i32 1, !dbg !5163
  %45 = load i64, ptr %flags63, align 8, !dbg !5163
  %46 = call i1 @llvm.is.constant.i64(i64 %45), !dbg !5163
  br i1 %46, label %cond.true64, label %cond.false68, !dbg !5164

cond.true64:                                      ; preds = %land.lhs.true62
  %47 = load ptr, ptr %cgrp.addr, align 8, !dbg !5163
  %flags65 = getelementptr inbounds %struct.cgroup, ptr %47, i32 0, i32 1, !dbg !5163
  %call66 = call zeroext i1 @const_test_bit(i64 noundef 3, ptr noundef %flags65) #12, !dbg !5163
  br i1 %call66, label %if.then72, label %if.end97, !dbg !5163

cond.false68:                                     ; preds = %land.lhs.true62, %land.lhs.true58, %if.else
  %48 = load ptr, ptr %cgrp.addr, align 8, !dbg !5163
  %flags69 = getelementptr inbounds %struct.cgroup, ptr %48, i32 0, i32 1, !dbg !5163
  %call70 = call zeroext i1 @_test_bit(i64 noundef 3, ptr noundef %flags69) #12, !dbg !5163
  br i1 %call70, label %if.then72, label %if.end97, !dbg !5164

if.then72:                                        ; preds = %cond.false68, %cond.true64
  %49 = load ptr, ptr %cgrp.addr, align 8, !dbg !5165
  %flags73 = getelementptr inbounds %struct.cgroup, ptr %49, i32 0, i32 1, !dbg !5166
  call void @clear_bit(i64 noundef 3, ptr noundef %flags73) #12, !dbg !5167
  %50 = load ptr, ptr %cgrp.addr, align 8, !dbg !5168
  %events_file74 = getelementptr inbounds %struct.cgroup, ptr %50, i32 0, i32 14, !dbg !5169
  call void @cgroup_file_notify(ptr noundef %events_file74) #12, !dbg !5170
  br label %do.body75, !dbg !5171

do.body75:                                        ; preds = %if.then72
  %call76 = call zeroext i1 @trace_cgroup_notify_frozen_enabled() #12, !dbg !5172
  br i1 %call76, label %if.then77, label %if.end93, !dbg !5173

if.then77:                                        ; preds = %do.body75
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags78) #11, !dbg !5174
  call void @llvm.dbg.declare(metadata ptr %flags78, metadata !5104, metadata !DIExpression()), !dbg !5174
  br label %do.body79, !dbg !5174

do.body79:                                        ; preds = %if.then77
  br label %do.body80, !dbg !5175

do.body80:                                        ; preds = %do.body79
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy81) #11, !dbg !5176
  call void @llvm.dbg.declare(metadata ptr %__dummy81, metadata !5111, metadata !DIExpression()), !dbg !5176
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy282) #11, !dbg !5176
  call void @llvm.dbg.declare(metadata ptr %__dummy282, metadata !5115, metadata !DIExpression()), !dbg !5176
  %cmp83 = icmp eq ptr %__dummy81, %__dummy282, !dbg !5176
  %conv84 = zext i1 %cmp83 to i32, !dbg !5176
  store i32 1, ptr %tmp85, align 4, !dbg !5176
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy282) #11, !dbg !5177
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy81) #11, !dbg !5177
  %51 = load i32, ptr %tmp85, align 4, !dbg !5176
  %call86 = call ptr @spinlock_check(ptr noundef @trace_cgroup_path_lock) #12, !dbg !5177
  %call87 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call86) #12, !dbg !5177
  store i64 %call87, ptr %flags78, align 8, !dbg !5177
  br label %do.cond88, !dbg !5177

do.cond88:                                        ; preds = %do.body80
  br label %do.end89, !dbg !5177

do.end89:                                         ; preds = %do.cond88
  br label %do.cond90, !dbg !5175

do.cond90:                                        ; preds = %do.end89
  br label %do.end91, !dbg !5175

do.end91:                                         ; preds = %do.cond90
  %52 = load ptr, ptr %cgrp.addr, align 8, !dbg !5174
  %call92 = call i32 @cgroup_path(ptr noundef %52, ptr noundef @trace_cgroup_path, i64 noundef 1024) #12, !dbg !5174
  %53 = load ptr, ptr %cgrp.addr, align 8, !dbg !5174
  call void @trace_cgroup_notify_frozen(ptr noundef %53, ptr noundef @trace_cgroup_path, i32 noundef 0) #12, !dbg !5174
  %54 = load i64, ptr %flags78, align 8, !dbg !5174
  call void @spin_unlock_irqrestore(ptr noundef @trace_cgroup_path_lock, i64 noundef %54) #12, !dbg !5174
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags78) #11, !dbg !5172
  br label %if.end93, !dbg !5174

if.end93:                                         ; preds = %do.end91, %do.body75
  br label %do.cond94, !dbg !5173

do.cond94:                                        ; preds = %if.end93
  br label %do.end95, !dbg !5173

do.end95:                                         ; preds = %do.cond94
  %55 = load i32, ptr %desc, align 4, !dbg !5178
  %inc96 = add i32 %55, 1, !dbg !5178
  store i32 %inc96, ptr %desc, align 4, !dbg !5178
  br label %if.end97, !dbg !5179

if.end97:                                         ; preds = %do.end95, %cond.false68, %cond.true64
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.end52
  br label %while.cond, !dbg !5120, !llvm.loop !5180

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %desc) #11, !dbg !5184
  ret void, !dbg !5184
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cgroup_enter_frozen() #0 align 16 !dbg !5185 {
entry:
  %cgrp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cgrp) #11, !dbg !5188
  call void @llvm.dbg.declare(metadata ptr %cgrp, metadata !5187, metadata !DIExpression()), !dbg !5189
  %call = call ptr @get_current() #12, !dbg !5190
  %frozen = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 59, !dbg !5192
  %bf.load = load i16, ptr %frozen, align 16, !dbg !5192
  %bf.lshr = lshr i16 %bf.load, 5, !dbg !5192
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5192
  %bf.cast = zext i16 %bf.clear to i32, !dbg !5192
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5190
  br i1 %tobool, label %if.then, label %if.end, !dbg !5193

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5194

if.end:                                           ; preds = %entry
  call void @spin_lock_irq(ptr noundef @css_set_lock) #12, !dbg !5195
  %call1 = call ptr @get_current() #12, !dbg !5196
  %frozen2 = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 59, !dbg !5197
  %bf.load3 = load i16, ptr %frozen2, align 16, !dbg !5198
  %bf.clear4 = and i16 %bf.load3, -33, !dbg !5198
  %bf.set = or i16 %bf.clear4, 32, !dbg !5198
  store i16 %bf.set, ptr %frozen2, align 16, !dbg !5198
  %call5 = call ptr @get_current() #12, !dbg !5199
  %call6 = call ptr @task_dfl_cgroup(ptr noundef %call5) #12, !dbg !5200
  store ptr %call6, ptr %cgrp, align 8, !dbg !5201
  %0 = load ptr, ptr %cgrp, align 8, !dbg !5202
  call void @cgroup_inc_frozen_cnt(ptr noundef %0) #12, !dbg !5203
  %1 = load ptr, ptr %cgrp, align 8, !dbg !5204
  call void @cgroup_update_frozen(ptr noundef %1) #12, !dbg !5205
  call void @spin_unlock_irq(ptr noundef @css_set_lock) #12, !dbg !5206
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5207
  br label %cleanup, !dbg !5207

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cgrp) #11, !dbg !5207
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5207

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #4 align 16 !dbg !5208 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #11, !dbg !5219
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5213, metadata !DIExpression()), !dbg !5219
  br label %do.body, !dbg !5219

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !5220
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5215, metadata !DIExpression()), !dbg !5220
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5220
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5220
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !5219
  br label %do.cond, !dbg !5220

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5220

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #11, !dbg !5221
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5217, metadata !DIExpression()), !dbg !5221
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #13, !dbg !5221, !srcloc !5222
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5221
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5221
  %3 = inttoptr i64 %2 to ptr, !dbg !5221
  store ptr %3, ptr %tmp, align 8, !dbg !5221
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #11, !dbg !5219
  %4 = load ptr, ptr %tmp, align 8, !dbg !5221
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5219
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5219
  store ptr %5, ptr %tmp1, align 8, !dbg !5219
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #11, !dbg !5223
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5219
  ret ptr %6, !dbg !5224
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #4 align 16 !dbg !5225 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5229, metadata !DIExpression()), !dbg !5230
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5231
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5231
  call void @_raw_spin_lock_irq(ptr noundef %1) #12, !dbg !5231
  ret void, !dbg !5232
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_dfl_cgroup(ptr noundef %task) #6 align 16 !dbg !5233 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5237, metadata !DIExpression()), !dbg !5238
  %0 = load ptr, ptr %task.addr, align 8, !dbg !5239
  %call = call ptr @task_css_set(ptr noundef %0) #12, !dbg !5240
  %dfl_cgrp = getelementptr inbounds %struct.css_set, ptr %call, i32 0, i32 3, !dbg !5241
  %1 = load ptr, ptr %dfl_cgrp, align 8, !dbg !5241
  ret ptr %1, !dbg !5242
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cgroup_inc_frozen_cnt(ptr noundef %cgrp) #0 align 16 !dbg !5243 {
entry:
  %cgrp.addr = alloca ptr, align 8
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !5245, metadata !DIExpression()), !dbg !5246
  %0 = load ptr, ptr %cgrp.addr, align 8, !dbg !5247
  %freezer = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 38, !dbg !5248
  %nr_frozen_tasks = getelementptr inbounds %struct.cgroup_freezer_state, ptr %freezer, i32 0, i32 3, !dbg !5249
  %1 = load i32, ptr %nr_frozen_tasks, align 4, !dbg !5250
  %inc = add i32 %1, 1, !dbg !5250
  store i32 %inc, ptr %nr_frozen_tasks, align 4, !dbg !5250
  ret void, !dbg !5251
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #4 align 16 !dbg !5252 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5254, metadata !DIExpression()), !dbg !5255
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5256
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5256
  call void @_raw_spin_unlock_irq(ptr noundef %1) #12, !dbg !5256
  ret void, !dbg !5257
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cgroup_leave_frozen(i1 noundef zeroext %always_leave) #0 align 16 !dbg !5258 {
entry:
  %always_leave.addr = alloca i8, align 1
  %cgrp = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %frombool = zext i1 %always_leave to i8
  store i8 %frombool, ptr %always_leave.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %always_leave.addr, metadata !5262, metadata !DIExpression()), !dbg !5271
  call void @llvm.lifetime.start.p0(i64 8, ptr %cgrp) #11, !dbg !5272
  call void @llvm.dbg.declare(metadata ptr %cgrp, metadata !5263, metadata !DIExpression()), !dbg !5273
  call void @spin_lock_irq(ptr noundef @css_set_lock) #12, !dbg !5274
  %call = call ptr @get_current() #12, !dbg !5275
  %call1 = call ptr @task_dfl_cgroup(ptr noundef %call) #12, !dbg !5276
  store ptr %call1, ptr %cgrp, align 8, !dbg !5277
  %0 = load i8, ptr %always_leave.addr, align 1, !dbg !5278, !range !4869, !noundef !1361
  %tobool = trunc i8 %0 to i1, !dbg !5278
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !5279

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %cgrp, align 8, !dbg !5280
  %flags = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 1, !dbg !5280
  %2 = ptrtoint ptr %flags to i64, !dbg !5280
  %cmp = icmp ne i64 %2, 0, !dbg !5280
  %conv = zext i1 %cmp to i32, !dbg !5280
  %3 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5280
  br i1 %3, label %land.lhs.true, label %cond.false, !dbg !5280

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load ptr, ptr %cgrp, align 8, !dbg !5280
  %flags2 = getelementptr inbounds %struct.cgroup, ptr %4, i32 0, i32 1, !dbg !5280
  %5 = ptrtoint ptr %flags2 to i64, !dbg !5280
  %cmp3 = icmp ne i64 %5, 0, !dbg !5280
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !5280

land.lhs.true5:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %cgrp, align 8, !dbg !5280
  %flags6 = getelementptr inbounds %struct.cgroup, ptr %6, i32 0, i32 1, !dbg !5280
  %7 = load i64, ptr %flags6, align 8, !dbg !5280
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5280
  br i1 %8, label %cond.true, label %cond.false, !dbg !5281

cond.true:                                        ; preds = %land.lhs.true5
  %9 = load ptr, ptr %cgrp, align 8, !dbg !5280
  %flags7 = getelementptr inbounds %struct.cgroup, ptr %9, i32 0, i32 1, !dbg !5280
  %call8 = call zeroext i1 @const_test_bit(i64 noundef 2, ptr noundef %flags7) #12, !dbg !5280
  br i1 %call8, label %if.else, label %if.then, !dbg !5280

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true, %lor.lhs.false
  %10 = load ptr, ptr %cgrp, align 8, !dbg !5280
  %flags10 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 1, !dbg !5280
  %call11 = call zeroext i1 @_test_bit(i64 noundef 2, ptr noundef %flags10) #12, !dbg !5280
  br i1 %call11, label %if.else, label %if.then, !dbg !5281

if.then:                                          ; preds = %cond.false, %cond.true, %entry
  %11 = load ptr, ptr %cgrp, align 8, !dbg !5282
  call void @cgroup_dec_frozen_cnt(ptr noundef %11) #12, !dbg !5283
  %12 = load ptr, ptr %cgrp, align 8, !dbg !5284
  call void @cgroup_update_frozen(ptr noundef %12) #12, !dbg !5285
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !5286
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5264, metadata !DIExpression()), !dbg !5286
  %call13 = call ptr @get_current() #12, !dbg !5286
  %frozen = getelementptr inbounds %struct.task_struct, ptr %call13, i32 0, i32 59, !dbg !5286
  %bf.load = load i16, ptr %frozen, align 16, !dbg !5286
  %bf.lshr = lshr i16 %bf.load, 5, !dbg !5286
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5286
  %bf.cast = zext i16 %bf.clear to i32, !dbg !5286
  %tobool14 = icmp ne i32 %bf.cast, 0, !dbg !5286
  %lnot = xor i1 %tobool14, true, !dbg !5286
  %lnot15 = xor i1 %lnot, true, !dbg !5286
  %lnot16 = xor i1 %lnot15, true, !dbg !5286
  %lnot.ext = zext i1 %lnot16 to i32, !dbg !5286
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5286
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !5287
  %tobool17 = icmp ne i32 %13, 0, !dbg !5287
  %lnot18 = xor i1 %tobool17, true, !dbg !5287
  %lnot20 = xor i1 %lnot18, true, !dbg !5287
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5287
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5287
  %expval = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5287
  %tobool23 = icmp ne i64 %expval, 0, !dbg !5287
  br i1 %tobool23, label %if.then24, label %if.end, !dbg !5286

if.then24:                                        ; preds = %if.then
  br label %do.body, !dbg !5287

do.body:                                          ; preds = %if.then24
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !5288
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5268, metadata !DIExpression()), !dbg !5288
  store i32 2307, ptr %__flags, align 4, !dbg !5288
  br label %do.body25, !dbg !5288

do.body25:                                        ; preds = %do.body
  br label %do.cond, !dbg !5289

do.cond:                                          ; preds = %do.body25
  br label %do.end, !dbg !5289

do.end:                                           ; preds = %do.cond
  br label %do.body26, !dbg !5288

do.body26:                                        ; preds = %do.end
  %14 = load i32, ptr %__flags, align 4, !dbg !5291
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 140, i32 %14, i64 12) #11, !dbg !5291, !srcloc !5293
  br label %do.cond27, !dbg !5291

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !5291

do.end28:                                         ; preds = %do.cond27
  br label %do.body29, !dbg !5288

do.body29:                                        ; preds = %do.end28
  br label %do.cond30, !dbg !5294

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5294

do.end31:                                         ; preds = %do.cond30
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !5287
  br label %do.cond32, !dbg !5288

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !5288

do.end33:                                         ; preds = %do.cond32
  br label %if.end, !dbg !5288

if.end:                                           ; preds = %do.end33, %if.then
  %15 = load i32, ptr %__ret_warn_on, align 4, !dbg !5286
  %tobool34 = icmp ne i32 %15, 0, !dbg !5286
  %lnot35 = xor i1 %tobool34, true, !dbg !5286
  %lnot37 = xor i1 %lnot35, true, !dbg !5286
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !5286
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !5286
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !5286
  store i64 %expval40, ptr %tmp, align 8, !dbg !5287
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !5296
  %16 = load i64, ptr %tmp, align 8, !dbg !5286
  %call41 = call ptr @get_current() #12, !dbg !5297
  %frozen42 = getelementptr inbounds %struct.task_struct, ptr %call41, i32 0, i32 59, !dbg !5298
  %bf.load43 = load i16, ptr %frozen42, align 16, !dbg !5299
  %bf.clear44 = and i16 %bf.load43, -33, !dbg !5299
  %bf.set = or i16 %bf.clear44, 0, !dbg !5299
  store i16 %bf.set, ptr %frozen42, align 16, !dbg !5299
  br label %if.end56, !dbg !5300

if.else:                                          ; preds = %cond.false, %cond.true
  %call45 = call ptr @get_current() #12, !dbg !5301
  %jobctl = getelementptr inbounds %struct.task_struct, ptr %call45, i32 0, i32 55, !dbg !5303
  %17 = load i64, ptr %jobctl, align 32, !dbg !5303
  %and = and i64 %17, 8388608, !dbg !5304
  %tobool46 = icmp ne i64 %and, 0, !dbg !5304
  br i1 %tobool46, label %if.end55, label %if.then47, !dbg !5305

if.then47:                                        ; preds = %if.else
  %call48 = call ptr @get_current() #12, !dbg !5306
  %sighand = getelementptr inbounds %struct.task_struct, ptr %call48, i32 0, i32 105, !dbg !5308
  %18 = load ptr, ptr %sighand, align 8, !dbg !5308
  %siglock = getelementptr inbounds %struct.sighand_struct, ptr %18, i32 0, i32 0, !dbg !5309
  call void @spin_lock(ptr noundef %siglock) #12, !dbg !5310
  %call49 = call ptr @get_current() #12, !dbg !5311
  %jobctl50 = getelementptr inbounds %struct.task_struct, ptr %call49, i32 0, i32 55, !dbg !5312
  %19 = load i64, ptr %jobctl50, align 32, !dbg !5313
  %or = or i64 %19, 8388608, !dbg !5313
  store i64 %or, ptr %jobctl50, align 32, !dbg !5313
  %call51 = call ptr @get_current() #12, !dbg !5314
  call void @set_ti_thread_flag(ptr noundef %call51, i32 noundef 2) #12, !dbg !5314
  %call52 = call ptr @get_current() #12, !dbg !5315
  %sighand53 = getelementptr inbounds %struct.task_struct, ptr %call52, i32 0, i32 105, !dbg !5316
  %20 = load ptr, ptr %sighand53, align 8, !dbg !5316
  %siglock54 = getelementptr inbounds %struct.sighand_struct, ptr %20, i32 0, i32 0, !dbg !5317
  call void @spin_unlock(ptr noundef %siglock54) #12, !dbg !5318
  br label %if.end55, !dbg !5319

if.end55:                                         ; preds = %if.then47, %if.else
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end
  call void @spin_unlock_irq(ptr noundef @css_set_lock) #12, !dbg !5320
  call void @llvm.lifetime.end.p0(i64 8, ptr %cgrp) #11, !dbg !5321
  ret void, !dbg !5321
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cgroup_dec_frozen_cnt(ptr noundef %cgrp) #0 align 16 !dbg !5322 {
entry:
  %cgrp.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !5324, metadata !DIExpression()), !dbg !5330
  %0 = load ptr, ptr %cgrp.addr, align 8, !dbg !5331
  %freezer = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 38, !dbg !5332
  %nr_frozen_tasks = getelementptr inbounds %struct.cgroup_freezer_state, ptr %freezer, i32 0, i32 3, !dbg !5333
  %1 = load i32, ptr %nr_frozen_tasks, align 4, !dbg !5334
  %dec = add i32 %1, -1, !dbg !5334
  store i32 %dec, ptr %nr_frozen_tasks, align 4, !dbg !5334
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !5335
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5325, metadata !DIExpression()), !dbg !5335
  %2 = load ptr, ptr %cgrp.addr, align 8, !dbg !5335
  %freezer1 = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 38, !dbg !5335
  %nr_frozen_tasks2 = getelementptr inbounds %struct.cgroup_freezer_state, ptr %freezer1, i32 0, i32 3, !dbg !5335
  %3 = load i32, ptr %nr_frozen_tasks2, align 4, !dbg !5335
  %cmp = icmp slt i32 %3, 0, !dbg !5335
  %lnot = xor i1 %cmp, true, !dbg !5335
  %lnot3 = xor i1 %lnot, true, !dbg !5335
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5335
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5335
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5336
  %tobool = icmp ne i32 %4, 0, !dbg !5336
  %lnot4 = xor i1 %tobool, true, !dbg !5336
  %lnot6 = xor i1 %lnot4, true, !dbg !5336
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5336
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5336
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5336
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5336
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5335

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5336

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !5337
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5327, metadata !DIExpression()), !dbg !5337
  store i32 2307, ptr %__flags, align 4, !dbg !5337
  br label %do.body9, !dbg !5337

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5338

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5338

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5337

do.body10:                                        ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !5340
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 100, i32 %5, i64 12) #11, !dbg !5340, !srcloc !5342
  br label %do.cond11, !dbg !5340

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5340

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5337

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5343

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5343

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !5336
  br label %do.cond16, !dbg !5337

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5337

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5337

if.end:                                           ; preds = %do.end17, %entry
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5335
  %tobool18 = icmp ne i32 %6, 0, !dbg !5335
  %lnot19 = xor i1 %tobool18, true, !dbg !5335
  %lnot21 = xor i1 %lnot19, true, !dbg !5335
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5335
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5335
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5335
  store i64 %expval24, ptr %tmp, align 8, !dbg !5336
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !5345
  %7 = load i64, ptr %tmp, align 8, !dbg !5335
  ret void, !dbg !5346
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #4 align 16 !dbg !5347 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5349, metadata !DIExpression()), !dbg !5350
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5351
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5351
  call void @_raw_spin_lock(ptr noundef %1) #12, !dbg !5351
  ret void, !dbg !5352
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #6 align 16 !dbg !5353 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !5358, metadata !DIExpression()), !dbg !5360
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !5359, metadata !DIExpression()), !dbg !5361
  %0 = load i32, ptr %flag.addr, align 4, !dbg !5362
  %conv = sext i32 %0 to i64, !dbg !5362
  %1 = load ptr, ptr %ti.addr, align 8, !dbg !5363
  %flags = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 0, !dbg !5364
  call void @set_bit(i64 noundef %conv, ptr noundef %flags) #12, !dbg !5365
  ret void, !dbg !5366
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #4 align 16 !dbg !5367 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5369, metadata !DIExpression()), !dbg !5370
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5371
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5371
  call void @_raw_spin_unlock(ptr noundef %1) #12, !dbg !5371
  ret void, !dbg !5372
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cgroup_freezer_migrate_task(ptr noundef %task, ptr noundef %src, ptr noundef %dst) #0 align 16 !dbg !5373 {
entry:
  %task.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5377, metadata !DIExpression()), !dbg !5380
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5378, metadata !DIExpression()), !dbg !5381
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5379, metadata !DIExpression()), !dbg !5382
  br label %do.body, !dbg !5383

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5384

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %task.addr, align 8, !dbg !5386
  %flags = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4, !dbg !5388
  %1 = load i32, ptr %flags, align 4, !dbg !5388
  %and = and i32 %1, 2097152, !dbg !5389
  %tobool = icmp ne i32 %and, 0, !dbg !5389
  br i1 %tobool, label %if.then, label %if.end, !dbg !5390

if.then:                                          ; preds = %do.end
  br label %return, !dbg !5391

if.end:                                           ; preds = %do.end
  %2 = load ptr, ptr %src.addr, align 8, !dbg !5392
  %flags1 = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 1, !dbg !5392
  %3 = ptrtoint ptr %flags1 to i64, !dbg !5392
  %cmp = icmp ne i64 %3, 0, !dbg !5392
  %conv = zext i1 %cmp to i32, !dbg !5392
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5392
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !5392

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %src.addr, align 8, !dbg !5392
  %flags2 = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 1, !dbg !5392
  %6 = ptrtoint ptr %flags2 to i64, !dbg !5392
  %cmp3 = icmp ne i64 %6, 0, !dbg !5392
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !5392

land.lhs.true5:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %src.addr, align 8, !dbg !5392
  %flags6 = getelementptr inbounds %struct.cgroup, ptr %7, i32 0, i32 1, !dbg !5392
  %8 = load i64, ptr %flags6, align 8, !dbg !5392
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !5392
  br i1 %9, label %cond.true, label %cond.false, !dbg !5394

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load ptr, ptr %src.addr, align 8, !dbg !5392
  %flags7 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 1, !dbg !5392
  %call = call zeroext i1 @const_test_bit(i64 noundef 2, ptr noundef %flags7) #12, !dbg !5392
  br i1 %call, label %if.end33, label %land.lhs.true12, !dbg !5392

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true, %if.end
  %11 = load ptr, ptr %src.addr, align 8, !dbg !5392
  %flags9 = getelementptr inbounds %struct.cgroup, ptr %11, i32 0, i32 1, !dbg !5392
  %call10 = call zeroext i1 @_test_bit(i64 noundef 2, ptr noundef %flags9) #12, !dbg !5392
  br i1 %call10, label %if.end33, label %land.lhs.true12, !dbg !5394

land.lhs.true12:                                  ; preds = %cond.false, %cond.true
  %12 = load ptr, ptr %dst.addr, align 8, !dbg !5395
  %flags13 = getelementptr inbounds %struct.cgroup, ptr %12, i32 0, i32 1, !dbg !5395
  %13 = ptrtoint ptr %flags13 to i64, !dbg !5395
  %cmp14 = icmp ne i64 %13, 0, !dbg !5395
  %conv15 = zext i1 %cmp14 to i32, !dbg !5395
  %14 = call i1 @llvm.is.constant.i32(i32 %conv15), !dbg !5395
  br i1 %14, label %land.lhs.true16, label %cond.false26, !dbg !5395

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %15 = load ptr, ptr %dst.addr, align 8, !dbg !5395
  %flags17 = getelementptr inbounds %struct.cgroup, ptr %15, i32 0, i32 1, !dbg !5395
  %16 = ptrtoint ptr %flags17 to i64, !dbg !5395
  %cmp18 = icmp ne i64 %16, 0, !dbg !5395
  br i1 %cmp18, label %land.lhs.true20, label %cond.false26, !dbg !5395

land.lhs.true20:                                  ; preds = %land.lhs.true16
  %17 = load ptr, ptr %dst.addr, align 8, !dbg !5395
  %flags21 = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 1, !dbg !5395
  %18 = load i64, ptr %flags21, align 8, !dbg !5395
  %19 = call i1 @llvm.is.constant.i64(i64 %18), !dbg !5395
  br i1 %19, label %cond.true22, label %cond.false26, !dbg !5396

cond.true22:                                      ; preds = %land.lhs.true20
  %20 = load ptr, ptr %dst.addr, align 8, !dbg !5395
  %flags23 = getelementptr inbounds %struct.cgroup, ptr %20, i32 0, i32 1, !dbg !5395
  %call24 = call zeroext i1 @const_test_bit(i64 noundef 2, ptr noundef %flags23) #12, !dbg !5395
  br i1 %call24, label %if.end33, label %land.lhs.true30, !dbg !5395

cond.false26:                                     ; preds = %land.lhs.true20, %land.lhs.true16, %land.lhs.true12
  %21 = load ptr, ptr %dst.addr, align 8, !dbg !5395
  %flags27 = getelementptr inbounds %struct.cgroup, ptr %21, i32 0, i32 1, !dbg !5395
  %call28 = call zeroext i1 @_test_bit(i64 noundef 2, ptr noundef %flags27) #12, !dbg !5395
  br i1 %call28, label %if.end33, label %land.lhs.true30, !dbg !5396

land.lhs.true30:                                  ; preds = %cond.false26, %cond.true22
  %22 = load ptr, ptr %task.addr, align 8, !dbg !5397
  %frozen = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 59, !dbg !5398
  %bf.load = load i16, ptr %frozen, align 16, !dbg !5398
  %bf.lshr = lshr i16 %bf.load, 5, !dbg !5398
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5398
  %bf.cast = zext i16 %bf.clear to i32, !dbg !5398
  %tobool31 = icmp ne i32 %bf.cast, 0, !dbg !5397
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !5399

if.then32:                                        ; preds = %land.lhs.true30
  br label %return, !dbg !5400

if.end33:                                         ; preds = %land.lhs.true30, %cond.false26, %cond.true22, %cond.false, %cond.true
  %23 = load ptr, ptr %task.addr, align 8, !dbg !5401
  %frozen34 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 59, !dbg !5403
  %bf.load35 = load i16, ptr %frozen34, align 16, !dbg !5403
  %bf.lshr36 = lshr i16 %bf.load35, 5, !dbg !5403
  %bf.clear37 = and i16 %bf.lshr36, 1, !dbg !5403
  %bf.cast38 = zext i16 %bf.clear37 to i32, !dbg !5403
  %tobool39 = icmp ne i32 %bf.cast38, 0, !dbg !5401
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !5404

if.then40:                                        ; preds = %if.end33
  %24 = load ptr, ptr %dst.addr, align 8, !dbg !5405
  call void @cgroup_inc_frozen_cnt(ptr noundef %24) #12, !dbg !5407
  %25 = load ptr, ptr %src.addr, align 8, !dbg !5408
  call void @cgroup_dec_frozen_cnt(ptr noundef %25) #12, !dbg !5409
  br label %if.end41, !dbg !5410

if.end41:                                         ; preds = %if.then40, %if.end33
  %26 = load ptr, ptr %dst.addr, align 8, !dbg !5411
  call void @cgroup_update_frozen(ptr noundef %26) #12, !dbg !5412
  %27 = load ptr, ptr %src.addr, align 8, !dbg !5413
  call void @cgroup_update_frozen(ptr noundef %27) #12, !dbg !5414
  %28 = load ptr, ptr %task.addr, align 8, !dbg !5415
  %29 = load ptr, ptr %dst.addr, align 8, !dbg !5416
  %flags42 = getelementptr inbounds %struct.cgroup, ptr %29, i32 0, i32 1, !dbg !5416
  %30 = ptrtoint ptr %flags42 to i64, !dbg !5416
  %cmp43 = icmp ne i64 %30, 0, !dbg !5416
  %conv44 = zext i1 %cmp43 to i32, !dbg !5416
  %31 = call i1 @llvm.is.constant.i32(i32 %conv44), !dbg !5416
  br i1 %31, label %land.lhs.true45, label %cond.false55, !dbg !5416

land.lhs.true45:                                  ; preds = %if.end41
  %32 = load ptr, ptr %dst.addr, align 8, !dbg !5416
  %flags46 = getelementptr inbounds %struct.cgroup, ptr %32, i32 0, i32 1, !dbg !5416
  %33 = ptrtoint ptr %flags46 to i64, !dbg !5416
  %cmp47 = icmp ne i64 %33, 0, !dbg !5416
  br i1 %cmp47, label %land.lhs.true49, label %cond.false55, !dbg !5416

land.lhs.true49:                                  ; preds = %land.lhs.true45
  %34 = load ptr, ptr %dst.addr, align 8, !dbg !5416
  %flags50 = getelementptr inbounds %struct.cgroup, ptr %34, i32 0, i32 1, !dbg !5416
  %35 = load i64, ptr %flags50, align 8, !dbg !5416
  %36 = call i1 @llvm.is.constant.i64(i64 %35), !dbg !5416
  br i1 %36, label %cond.true51, label %cond.false55, !dbg !5416

cond.true51:                                      ; preds = %land.lhs.true49
  %37 = load ptr, ptr %dst.addr, align 8, !dbg !5416
  %flags52 = getelementptr inbounds %struct.cgroup, ptr %37, i32 0, i32 1, !dbg !5416
  %call53 = call zeroext i1 @const_test_bit(i64 noundef 2, ptr noundef %flags52) #12, !dbg !5416
  %conv54 = zext i1 %call53 to i32, !dbg !5416
  br label %cond.end, !dbg !5416

cond.false55:                                     ; preds = %land.lhs.true49, %land.lhs.true45, %if.end41
  %38 = load ptr, ptr %dst.addr, align 8, !dbg !5416
  %flags56 = getelementptr inbounds %struct.cgroup, ptr %38, i32 0, i32 1, !dbg !5416
  %call57 = call zeroext i1 @_test_bit(i64 noundef 2, ptr noundef %flags56) #12, !dbg !5416
  %conv58 = zext i1 %call57 to i32, !dbg !5416
  br label %cond.end, !dbg !5416

cond.end:                                         ; preds = %cond.false55, %cond.true51
  %cond = phi i32 [ %conv54, %cond.true51 ], [ %conv58, %cond.false55 ], !dbg !5416
  %tobool59 = icmp ne i32 %cond, 0, !dbg !5416
  call void @cgroup_freeze_task(ptr noundef %28, i1 noundef zeroext %tobool59) #12, !dbg !5417
  br label %return, !dbg !5418

return:                                           ; preds = %cond.end, %if.then32, %if.then
  ret void, !dbg !5418
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cgroup_freeze_task(ptr noundef %task, i1 noundef zeroext %freeze) #0 align 16 !dbg !5419 {
entry:
  %task.addr = alloca ptr, align 8
  %freeze.addr = alloca i8, align 1
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5423, metadata !DIExpression()), !dbg !5426
  %frombool = zext i1 %freeze to i8
  store i8 %frombool, ptr %freeze.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %freeze.addr, metadata !5424, metadata !DIExpression()), !dbg !5427
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !5428
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5425, metadata !DIExpression()), !dbg !5429
  %0 = load ptr, ptr %task.addr, align 8, !dbg !5430
  %call = call ptr @lock_task_sighand(ptr noundef %0, ptr noundef %flags) #12, !dbg !5432
  %tobool = icmp ne ptr %call, null, !dbg !5432
  br i1 %tobool, label %if.end, label %if.then, !dbg !5433

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5434

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %freeze.addr, align 1, !dbg !5435, !range !4869, !noundef !1361
  %tobool1 = trunc i8 %1 to i1, !dbg !5435
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !5437

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %task.addr, align 8, !dbg !5438
  %jobctl = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 55, !dbg !5440
  %3 = load i64, ptr %jobctl, align 32, !dbg !5441
  %or = or i64 %3, 8388608, !dbg !5441
  store i64 %or, ptr %jobctl, align 32, !dbg !5441
  %4 = load ptr, ptr %task.addr, align 8, !dbg !5442
  call void @signal_wake_up(ptr noundef %4, i1 noundef zeroext false) #12, !dbg !5443
  br label %if.end5, !dbg !5444

if.else:                                          ; preds = %if.end
  %5 = load ptr, ptr %task.addr, align 8, !dbg !5445
  %jobctl3 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 55, !dbg !5447
  %6 = load i64, ptr %jobctl3, align 32, !dbg !5448
  %and = and i64 %6, -8388609, !dbg !5448
  store i64 %and, ptr %jobctl3, align 32, !dbg !5448
  %7 = load ptr, ptr %task.addr, align 8, !dbg !5449
  %call4 = call i32 @wake_up_process(ptr noundef %7) #12, !dbg !5450
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %8 = load ptr, ptr %task.addr, align 8, !dbg !5451
  call void @unlock_task_sighand(ptr noundef %8, ptr noundef %flags) #12, !dbg !5452
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5453
  br label %cleanup, !dbg !5453

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !5453
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5453

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cgroup_freeze(ptr noundef %cgrp, i1 noundef zeroext %freeze) #0 align 16 !dbg !5454 {
entry:
  %cgrp.addr = alloca ptr, align 8
  %freeze.addr = alloca i8, align 1
  %css = alloca ptr, align 8
  %dsct = alloca ptr, align 8
  %applied = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp76 = alloca i32, align 4
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !5456, metadata !DIExpression()), !dbg !5482
  %frombool = zext i1 %freeze to i8
  store i8 %frombool, ptr %freeze.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %freeze.addr, metadata !5457, metadata !DIExpression()), !dbg !5483
  call void @llvm.lifetime.start.p0(i64 8, ptr %css) #11, !dbg !5484
  call void @llvm.dbg.declare(metadata ptr %css, metadata !5458, metadata !DIExpression()), !dbg !5485
  call void @llvm.lifetime.start.p0(i64 8, ptr %dsct) #11, !dbg !5486
  call void @llvm.dbg.declare(metadata ptr %dsct, metadata !5459, metadata !DIExpression()), !dbg !5487
  call void @llvm.lifetime.start.p0(i64 1, ptr %applied) #11, !dbg !5488
  call void @llvm.dbg.declare(metadata ptr %applied, metadata !5460, metadata !DIExpression()), !dbg !5489
  store i8 0, ptr %applied, align 1, !dbg !5489
  br label %do.body, !dbg !5490

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5491

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5491

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %cgrp.addr, align 8, !dbg !5493
  %freezer = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 38, !dbg !5495
  %freeze1 = getelementptr inbounds %struct.cgroup_freezer_state, ptr %freezer, i32 0, i32 0, !dbg !5496
  %1 = load i8, ptr %freeze1, align 4, !dbg !5496, !range !4869, !noundef !1361
  %tobool = trunc i8 %1 to i1, !dbg !5496
  %conv = zext i1 %tobool to i32, !dbg !5493
  %2 = load i8, ptr %freeze.addr, align 1, !dbg !5497, !range !4869, !noundef !1361
  %tobool2 = trunc i8 %2 to i1, !dbg !5497
  %conv3 = zext i1 %tobool2 to i32, !dbg !5497
  %cmp = icmp eq i32 %conv, %conv3, !dbg !5498
  br i1 %cmp, label %if.then, label %if.end, !dbg !5499

if.then:                                          ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5500

if.end:                                           ; preds = %do.end
  %3 = load i8, ptr %freeze.addr, align 1, !dbg !5501, !range !4869, !noundef !1361
  %tobool5 = trunc i8 %3 to i1, !dbg !5501
  %4 = load ptr, ptr %cgrp.addr, align 8, !dbg !5502
  %freezer6 = getelementptr inbounds %struct.cgroup, ptr %4, i32 0, i32 38, !dbg !5503
  %freeze7 = getelementptr inbounds %struct.cgroup_freezer_state, ptr %freezer6, i32 0, i32 0, !dbg !5504
  %frombool8 = zext i1 %tobool5 to i8, !dbg !5505
  store i8 %frombool8, ptr %freeze7, align 4, !dbg !5505
  %5 = load ptr, ptr %cgrp.addr, align 8, !dbg !5506
  %self = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 0, !dbg !5506
  %call = call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef %self) #12, !dbg !5506
  store ptr %call, ptr %css, align 8, !dbg !5506
  br label %for.cond, !dbg !5506

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load ptr, ptr %css, align 8, !dbg !5507
  %tobool9 = icmp ne ptr %6, null, !dbg !5506
  br i1 %tobool9, label %for.body, label %for.end, !dbg !5506

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %css, align 8, !dbg !5508
  %cgroup = getelementptr inbounds %struct.cgroup_subsys_state, ptr %7, i32 0, i32 0, !dbg !5509
  %8 = load ptr, ptr %cgroup, align 8, !dbg !5509
  store ptr %8, ptr %dsct, align 8, !dbg !5510
  %9 = load ptr, ptr %dsct, align 8, !dbg !5511
  %call10 = call zeroext i1 @cgroup_is_dead(ptr noundef %9) #12, !dbg !5513
  br i1 %call10, label %if.then11, label %if.end12, !dbg !5514

if.then11:                                        ; preds = %for.body
  br label %for.inc, !dbg !5515

if.end12:                                         ; preds = %for.body
  %10 = load i8, ptr %freeze.addr, align 1, !dbg !5516, !range !4869, !noundef !1361
  %tobool13 = trunc i8 %10 to i1, !dbg !5516
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !5517

if.then14:                                        ; preds = %if.end12
  %11 = load ptr, ptr %dsct, align 8, !dbg !5518
  %freezer15 = getelementptr inbounds %struct.cgroup, ptr %11, i32 0, i32 38, !dbg !5520
  %e_freeze = getelementptr inbounds %struct.cgroup_freezer_state, ptr %freezer15, i32 0, i32 1, !dbg !5521
  %12 = load i32, ptr %e_freeze, align 4, !dbg !5522
  %inc = add i32 %12, 1, !dbg !5522
  store i32 %inc, ptr %e_freeze, align 4, !dbg !5522
  %13 = load ptr, ptr %dsct, align 8, !dbg !5523
  %freezer16 = getelementptr inbounds %struct.cgroup, ptr %13, i32 0, i32 38, !dbg !5525
  %e_freeze17 = getelementptr inbounds %struct.cgroup_freezer_state, ptr %freezer16, i32 0, i32 1, !dbg !5526
  %14 = load i32, ptr %e_freeze17, align 4, !dbg !5526
  %cmp18 = icmp sgt i32 %14, 1, !dbg !5527
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !5528

if.then20:                                        ; preds = %if.then14
  br label %for.inc, !dbg !5529

if.end21:                                         ; preds = %if.then14
  br label %if.end63, !dbg !5530

if.else:                                          ; preds = %if.end12
  %15 = load ptr, ptr %dsct, align 8, !dbg !5531
  %freezer22 = getelementptr inbounds %struct.cgroup, ptr %15, i32 0, i32 38, !dbg !5532
  %e_freeze23 = getelementptr inbounds %struct.cgroup_freezer_state, ptr %freezer22, i32 0, i32 1, !dbg !5533
  %16 = load i32, ptr %e_freeze23, align 4, !dbg !5534
  %dec = add i32 %16, -1, !dbg !5534
  store i32 %dec, ptr %e_freeze23, align 4, !dbg !5534
  %17 = load ptr, ptr %dsct, align 8, !dbg !5535
  %freezer24 = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 38, !dbg !5537
  %e_freeze25 = getelementptr inbounds %struct.cgroup_freezer_state, ptr %freezer24, i32 0, i32 1, !dbg !5538
  %18 = load i32, ptr %e_freeze25, align 4, !dbg !5538
  %cmp26 = icmp sgt i32 %18, 0, !dbg !5539
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !5540

if.then28:                                        ; preds = %if.else
  br label %for.inc, !dbg !5541

if.end29:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !5542
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5461, metadata !DIExpression()), !dbg !5542
  %19 = load ptr, ptr %dsct, align 8, !dbg !5542
  %freezer30 = getelementptr inbounds %struct.cgroup, ptr %19, i32 0, i32 38, !dbg !5542
  %e_freeze31 = getelementptr inbounds %struct.cgroup_freezer_state, ptr %freezer30, i32 0, i32 1, !dbg !5542
  %20 = load i32, ptr %e_freeze31, align 4, !dbg !5542
  %cmp32 = icmp slt i32 %20, 0, !dbg !5542
  %lnot = xor i1 %cmp32, true, !dbg !5542
  %lnot34 = xor i1 %lnot, true, !dbg !5542
  %lnot.ext = zext i1 %lnot34 to i32, !dbg !5542
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5542
  %21 = load i32, ptr %__ret_warn_on, align 4, !dbg !5543
  %tobool35 = icmp ne i32 %21, 0, !dbg !5543
  %lnot36 = xor i1 %tobool35, true, !dbg !5543
  %lnot38 = xor i1 %lnot36, true, !dbg !5543
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !5543
  %conv40 = sext i32 %lnot.ext39 to i64, !dbg !5543
  %expval = call i64 @llvm.expect.i64(i64 %conv40, i64 0), !dbg !5543
  %tobool41 = icmp ne i64 %expval, 0, !dbg !5543
  br i1 %tobool41, label %if.then42, label %if.end55, !dbg !5542

if.then42:                                        ; preds = %if.end29
  br label %do.body43, !dbg !5543

do.body43:                                        ; preds = %if.then42
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !5544
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5468, metadata !DIExpression()), !dbg !5544
  store i32 2307, ptr %__flags, align 4, !dbg !5544
  br label %do.body44, !dbg !5544

do.body44:                                        ; preds = %do.body43
  br label %do.cond45, !dbg !5545

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !5545

do.end46:                                         ; preds = %do.cond45
  br label %do.body47, !dbg !5544

do.body47:                                        ; preds = %do.end46
  %22 = load i32, ptr %__flags, align 4, !dbg !5547
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 300, i32 %22, i64 12) #11, !dbg !5547, !srcloc !5549
  br label %do.cond48, !dbg !5547

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !5547

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !5544

do.body50:                                        ; preds = %do.end49
  br label %do.cond51, !dbg !5550

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !5550

do.end52:                                         ; preds = %do.cond51
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !5543
  br label %do.cond53, !dbg !5544

do.cond53:                                        ; preds = %do.end52
  br label %do.end54, !dbg !5544

do.end54:                                         ; preds = %do.cond53
  br label %if.end55, !dbg !5544

if.end55:                                         ; preds = %do.end54, %if.end29
  %23 = load i32, ptr %__ret_warn_on, align 4, !dbg !5542
  %tobool56 = icmp ne i32 %23, 0, !dbg !5542
  %lnot57 = xor i1 %tobool56, true, !dbg !5542
  %lnot59 = xor i1 %lnot57, true, !dbg !5542
  %lnot.ext60 = zext i1 %lnot59 to i32, !dbg !5542
  %conv61 = sext i32 %lnot.ext60 to i64, !dbg !5542
  %expval62 = call i64 @llvm.expect.i64(i64 %conv61, i64 0), !dbg !5542
  store i64 %expval62, ptr %tmp, align 8, !dbg !5543
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !5552
  %24 = load i64, ptr %tmp, align 8, !dbg !5542
  br label %if.end63

if.end63:                                         ; preds = %if.end55, %if.end21
  %25 = load ptr, ptr %dsct, align 8, !dbg !5553
  %26 = load i8, ptr %freeze.addr, align 1, !dbg !5554, !range !4869, !noundef !1361
  %tobool64 = trunc i8 %26 to i1, !dbg !5554
  call void @cgroup_do_freeze(ptr noundef %25, i1 noundef zeroext %tobool64) #12, !dbg !5555
  store i8 1, ptr %applied, align 1, !dbg !5556
  br label %for.inc, !dbg !5557

for.inc:                                          ; preds = %if.end63, %if.then28, %if.then20, %if.then11
  %27 = load ptr, ptr %css, align 8, !dbg !5507
  %28 = load ptr, ptr %cgrp.addr, align 8, !dbg !5507
  %self65 = getelementptr inbounds %struct.cgroup, ptr %28, i32 0, i32 0, !dbg !5507
  %call66 = call ptr @css_next_descendant_pre(ptr noundef %27, ptr noundef %self65) #12, !dbg !5507
  store ptr %call66, ptr %css, align 8, !dbg !5507
  br label %for.cond, !dbg !5507, !llvm.loop !5558

for.end:                                          ; preds = %for.cond
  %29 = load i8, ptr %applied, align 1, !dbg !5560, !range !4869, !noundef !1361
  %tobool67 = trunc i8 %29 to i1, !dbg !5560
  br i1 %tobool67, label %if.end101, label %if.then68, !dbg !5561

if.then68:                                        ; preds = %for.end
  br label %do.body69, !dbg !5562

do.body69:                                        ; preds = %if.then68
  %call70 = call zeroext i1 @trace_cgroup_notify_frozen_enabled() #12, !dbg !5563
  br i1 %call70, label %if.then71, label %if.end98, !dbg !5564

if.then71:                                        ; preds = %do.body69
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !5565
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5471, metadata !DIExpression()), !dbg !5565
  br label %do.body72, !dbg !5565

do.body72:                                        ; preds = %if.then71
  br label %do.body73, !dbg !5566

do.body73:                                        ; preds = %do.body72
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !5567
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5477, metadata !DIExpression()), !dbg !5567
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !5567
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5481, metadata !DIExpression()), !dbg !5567
  %cmp74 = icmp eq ptr %__dummy, %__dummy2, !dbg !5567
  %conv75 = zext i1 %cmp74 to i32, !dbg !5567
  store i32 1, ptr %tmp76, align 4, !dbg !5567
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !5568
  %30 = load i32, ptr %tmp76, align 4, !dbg !5567
  %call77 = call ptr @spinlock_check(ptr noundef @trace_cgroup_path_lock) #12, !dbg !5568
  %call78 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call77) #12, !dbg !5568
  store i64 %call78, ptr %flags, align 8, !dbg !5568
  br label %do.cond79, !dbg !5568

do.cond79:                                        ; preds = %do.body73
  br label %do.end80, !dbg !5568

do.end80:                                         ; preds = %do.cond79
  br label %do.cond81, !dbg !5566

do.cond81:                                        ; preds = %do.end80
  br label %do.end82, !dbg !5566

do.end82:                                         ; preds = %do.cond81
  %31 = load ptr, ptr %cgrp.addr, align 8, !dbg !5565
  %call83 = call i32 @cgroup_path(ptr noundef %31, ptr noundef @trace_cgroup_path, i64 noundef 1024) #12, !dbg !5565
  %32 = load ptr, ptr %cgrp.addr, align 8, !dbg !5565
  %33 = load ptr, ptr %cgrp.addr, align 8, !dbg !5565
  %flags84 = getelementptr inbounds %struct.cgroup, ptr %33, i32 0, i32 1, !dbg !5565
  %34 = ptrtoint ptr %flags84 to i64, !dbg !5565
  %cmp85 = icmp ne i64 %34, 0, !dbg !5565
  %conv86 = zext i1 %cmp85 to i32, !dbg !5565
  %35 = call i1 @llvm.is.constant.i32(i32 %conv86), !dbg !5565
  br i1 %35, label %land.lhs.true, label %cond.false, !dbg !5565

land.lhs.true:                                    ; preds = %do.end82
  %36 = load ptr, ptr %cgrp.addr, align 8, !dbg !5565
  %flags87 = getelementptr inbounds %struct.cgroup, ptr %36, i32 0, i32 1, !dbg !5565
  %37 = ptrtoint ptr %flags87 to i64, !dbg !5565
  %cmp88 = icmp ne i64 %37, 0, !dbg !5565
  br i1 %cmp88, label %land.lhs.true90, label %cond.false, !dbg !5565

land.lhs.true90:                                  ; preds = %land.lhs.true
  %38 = load ptr, ptr %cgrp.addr, align 8, !dbg !5565
  %flags91 = getelementptr inbounds %struct.cgroup, ptr %38, i32 0, i32 1, !dbg !5565
  %39 = load i64, ptr %flags91, align 8, !dbg !5565
  %40 = call i1 @llvm.is.constant.i64(i64 %39), !dbg !5565
  br i1 %40, label %cond.true, label %cond.false, !dbg !5565

cond.true:                                        ; preds = %land.lhs.true90
  %41 = load ptr, ptr %cgrp.addr, align 8, !dbg !5565
  %flags92 = getelementptr inbounds %struct.cgroup, ptr %41, i32 0, i32 1, !dbg !5565
  %call93 = call zeroext i1 @const_test_bit(i64 noundef 3, ptr noundef %flags92) #12, !dbg !5565
  %conv94 = zext i1 %call93 to i32, !dbg !5565
  br label %cond.end, !dbg !5565

cond.false:                                       ; preds = %land.lhs.true90, %land.lhs.true, %do.end82
  %42 = load ptr, ptr %cgrp.addr, align 8, !dbg !5565
  %flags95 = getelementptr inbounds %struct.cgroup, ptr %42, i32 0, i32 1, !dbg !5565
  %call96 = call zeroext i1 @_test_bit(i64 noundef 3, ptr noundef %flags95) #12, !dbg !5565
  %conv97 = zext i1 %call96 to i32, !dbg !5565
  br label %cond.end, !dbg !5565

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv94, %cond.true ], [ %conv97, %cond.false ], !dbg !5565
  call void @trace_cgroup_notify_frozen(ptr noundef %32, ptr noundef @trace_cgroup_path, i32 noundef %cond) #12, !dbg !5565
  %43 = load i64, ptr %flags, align 8, !dbg !5565
  call void @spin_unlock_irqrestore(ptr noundef @trace_cgroup_path_lock, i64 noundef %43) #12, !dbg !5565
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !5563
  br label %if.end98, !dbg !5565

if.end98:                                         ; preds = %cond.end, %do.body69
  br label %do.cond99, !dbg !5564

do.cond99:                                        ; preds = %if.end98
  br label %do.end100, !dbg !5564

do.end100:                                        ; preds = %do.cond99
  %44 = load ptr, ptr %cgrp.addr, align 8, !dbg !5569
  %events_file = getelementptr inbounds %struct.cgroup, ptr %44, i32 0, i32 14, !dbg !5570
  call void @cgroup_file_notify(ptr noundef %events_file) #12, !dbg !5571
  br label %if.end101, !dbg !5572

if.end101:                                        ; preds = %do.end100, %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5573
  br label %cleanup, !dbg !5573

cleanup:                                          ; preds = %if.end101, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %applied) #11, !dbg !5573
  call void @llvm.lifetime.end.p0(i64 8, ptr %dsct) #11, !dbg !5573
  call void @llvm.lifetime.end.p0(i64 8, ptr %css) #11, !dbg !5573
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5573

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5574 dso_local ptr @css_next_descendant_pre(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cgroup_is_dead(ptr noundef %cgrp) #6 align 16 !dbg !5577 {
entry:
  %cgrp.addr = alloca ptr, align 8
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !5581, metadata !DIExpression()), !dbg !5582
  %0 = load ptr, ptr %cgrp.addr, align 8, !dbg !5583
  %self = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 0, !dbg !5584
  %flags = getelementptr inbounds %struct.cgroup_subsys_state, ptr %self, i32 0, i32 7, !dbg !5585
  %1 = load i32, ptr %flags, align 4, !dbg !5585
  %and = and i32 %1, 2, !dbg !5586
  %tobool = icmp ne i32 %and, 0, !dbg !5587
  %lnot = xor i1 %tobool, true, !dbg !5587
  ret i1 %lnot, !dbg !5588
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cgroup_do_freeze(ptr noundef %cgrp, i1 noundef zeroext %freeze) #0 align 16 !dbg !5589 {
entry:
  %cgrp.addr = alloca ptr, align 8
  %freeze.addr = alloca i8, align 1
  %it = alloca %struct.css_task_iter, align 8
  %task = alloca ptr, align 8
  %flags6 = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %flags23 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %__dummy227 = alloca i64, align 8
  %tmp30 = alloca i32, align 4
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !5591, metadata !DIExpression()), !dbg !5628
  %frombool = zext i1 %freeze to i8
  store i8 %frombool, ptr %freeze.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %freeze.addr, metadata !5592, metadata !DIExpression()), !dbg !5629
  call void @llvm.lifetime.start.p0(i64 104, ptr %it) #11, !dbg !5630
  call void @llvm.dbg.declare(metadata ptr %it, metadata !5593, metadata !DIExpression()), !dbg !5631
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #11, !dbg !5632
  call void @llvm.dbg.declare(metadata ptr %task, metadata !5608, metadata !DIExpression()), !dbg !5633
  br label %do.body, !dbg !5634

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5635

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5635

do.end:                                           ; preds = %do.cond
  call void @spin_lock_irq(ptr noundef @css_set_lock) #12, !dbg !5637
  %0 = load i8, ptr %freeze.addr, align 1, !dbg !5638, !range !4869, !noundef !1361
  %tobool = trunc i8 %0 to i1, !dbg !5638
  br i1 %tobool, label %if.then, label %if.else, !dbg !5640

if.then:                                          ; preds = %do.end
  %1 = load ptr, ptr %cgrp.addr, align 8, !dbg !5641
  %flags = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 1, !dbg !5642
  call void @set_bit(i64 noundef 2, ptr noundef %flags) #12, !dbg !5643
  br label %if.end, !dbg !5643

if.else:                                          ; preds = %do.end
  %2 = load ptr, ptr %cgrp.addr, align 8, !dbg !5644
  %flags1 = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 1, !dbg !5645
  call void @clear_bit(i64 noundef 2, ptr noundef %flags1) #12, !dbg !5646
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @spin_unlock_irq(ptr noundef @css_set_lock) #12, !dbg !5647
  %3 = load i8, ptr %freeze.addr, align 1, !dbg !5648, !range !4869, !noundef !1361
  %tobool2 = trunc i8 %3 to i1, !dbg !5648
  br i1 %tobool2, label %if.then3, label %if.else19, !dbg !5649

if.then3:                                         ; preds = %if.end
  br label %do.body4, !dbg !5650

do.body4:                                         ; preds = %if.then3
  %call = call zeroext i1 @trace_cgroup_freeze_enabled() #12, !dbg !5651
  br i1 %call, label %if.then5, label %if.end16, !dbg !5652

if.then5:                                         ; preds = %do.body4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags6) #11, !dbg !5653
  call void @llvm.dbg.declare(metadata ptr %flags6, metadata !5609, metadata !DIExpression()), !dbg !5653
  br label %do.body7, !dbg !5653

do.body7:                                         ; preds = %if.then5
  br label %do.body8, !dbg !5654

do.body8:                                         ; preds = %do.body7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !5655
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5614, metadata !DIExpression()), !dbg !5655
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !5655
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5618, metadata !DIExpression()), !dbg !5655
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5655
  %conv = zext i1 %cmp to i32, !dbg !5655
  store i32 1, ptr %tmp, align 4, !dbg !5655
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !5656
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !5656
  %4 = load i32, ptr %tmp, align 4, !dbg !5655
  %call9 = call ptr @spinlock_check(ptr noundef @trace_cgroup_path_lock) #12, !dbg !5656
  %call10 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call9) #12, !dbg !5656
  store i64 %call10, ptr %flags6, align 8, !dbg !5656
  br label %do.cond11, !dbg !5656

do.cond11:                                        ; preds = %do.body8
  br label %do.end12, !dbg !5656

do.end12:                                         ; preds = %do.cond11
  br label %do.cond13, !dbg !5654

do.cond13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !5654

do.end14:                                         ; preds = %do.cond13
  %5 = load ptr, ptr %cgrp.addr, align 8, !dbg !5653
  %call15 = call i32 @cgroup_path(ptr noundef %5, ptr noundef @trace_cgroup_path, i64 noundef 1024) #12, !dbg !5653
  %6 = load ptr, ptr %cgrp.addr, align 8, !dbg !5653
  call void @trace_cgroup_freeze(ptr noundef %6, ptr noundef @trace_cgroup_path) #12, !dbg !5653
  %7 = load i64, ptr %flags6, align 8, !dbg !5653
  call void @spin_unlock_irqrestore(ptr noundef @trace_cgroup_path_lock, i64 noundef %7) #12, !dbg !5653
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags6) #11, !dbg !5651
  br label %if.end16, !dbg !5653

if.end16:                                         ; preds = %do.end14, %do.body4
  br label %do.cond17, !dbg !5652

do.cond17:                                        ; preds = %if.end16
  br label %do.end18, !dbg !5652

do.end18:                                         ; preds = %do.cond17
  br label %if.end41, !dbg !5652

if.else19:                                        ; preds = %if.end
  br label %do.body20, !dbg !5657

do.body20:                                        ; preds = %if.else19
  %call21 = call zeroext i1 @trace_cgroup_unfreeze_enabled() #12, !dbg !5658
  br i1 %call21, label %if.then22, label %if.end38, !dbg !5659

if.then22:                                        ; preds = %do.body20
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags23) #11, !dbg !5660
  call void @llvm.dbg.declare(metadata ptr %flags23, metadata !5619, metadata !DIExpression()), !dbg !5660
  br label %do.body24, !dbg !5660

do.body24:                                        ; preds = %if.then22
  br label %do.body25, !dbg !5661

do.body25:                                        ; preds = %do.body24
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy26) #11, !dbg !5662
  call void @llvm.dbg.declare(metadata ptr %__dummy26, metadata !5623, metadata !DIExpression()), !dbg !5662
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy227) #11, !dbg !5662
  call void @llvm.dbg.declare(metadata ptr %__dummy227, metadata !5627, metadata !DIExpression()), !dbg !5662
  %cmp28 = icmp eq ptr %__dummy26, %__dummy227, !dbg !5662
  %conv29 = zext i1 %cmp28 to i32, !dbg !5662
  store i32 1, ptr %tmp30, align 4, !dbg !5662
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy227) #11, !dbg !5663
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy26) #11, !dbg !5663
  %8 = load i32, ptr %tmp30, align 4, !dbg !5662
  %call31 = call ptr @spinlock_check(ptr noundef @trace_cgroup_path_lock) #12, !dbg !5663
  %call32 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call31) #12, !dbg !5663
  store i64 %call32, ptr %flags23, align 8, !dbg !5663
  br label %do.cond33, !dbg !5663

do.cond33:                                        ; preds = %do.body25
  br label %do.end34, !dbg !5663

do.end34:                                         ; preds = %do.cond33
  br label %do.cond35, !dbg !5661

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !5661

do.end36:                                         ; preds = %do.cond35
  %9 = load ptr, ptr %cgrp.addr, align 8, !dbg !5660
  %call37 = call i32 @cgroup_path(ptr noundef %9, ptr noundef @trace_cgroup_path, i64 noundef 1024) #12, !dbg !5660
  %10 = load ptr, ptr %cgrp.addr, align 8, !dbg !5660
  call void @trace_cgroup_unfreeze(ptr noundef %10, ptr noundef @trace_cgroup_path) #12, !dbg !5660
  %11 = load i64, ptr %flags23, align 8, !dbg !5660
  call void @spin_unlock_irqrestore(ptr noundef @trace_cgroup_path_lock, i64 noundef %11) #12, !dbg !5660
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags23) #11, !dbg !5658
  br label %if.end38, !dbg !5660

if.end38:                                         ; preds = %do.end36, %do.body20
  br label %do.cond39, !dbg !5659

do.cond39:                                        ; preds = %if.end38
  br label %do.end40, !dbg !5659

do.end40:                                         ; preds = %do.cond39
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %do.end18
  %12 = load ptr, ptr %cgrp.addr, align 8, !dbg !5664
  %self = getelementptr inbounds %struct.cgroup, ptr %12, i32 0, i32 0, !dbg !5665
  call void @css_task_iter_start(ptr noundef %self, i32 noundef 0, ptr noundef %it) #12, !dbg !5666
  br label %while.cond, !dbg !5667

while.cond:                                       ; preds = %if.end47, %if.then46, %if.end41
  %call42 = call ptr @css_task_iter_next(ptr noundef %it) #12, !dbg !5668
  store ptr %call42, ptr %task, align 8, !dbg !5669
  %tobool43 = icmp ne ptr %call42, null, !dbg !5667
  br i1 %tobool43, label %while.body, label %while.end, !dbg !5667

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr %task, align 8, !dbg !5670
  %flags44 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 4, !dbg !5673
  %14 = load i32, ptr %flags44, align 4, !dbg !5673
  %and = and i32 %14, 2097152, !dbg !5674
  %tobool45 = icmp ne i32 %and, 0, !dbg !5674
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !5675

if.then46:                                        ; preds = %while.body
  br label %while.cond, !dbg !5676, !llvm.loop !5677

if.end47:                                         ; preds = %while.body
  %15 = load ptr, ptr %task, align 8, !dbg !5679
  %16 = load i8, ptr %freeze.addr, align 1, !dbg !5680, !range !4869, !noundef !1361
  %tobool48 = trunc i8 %16 to i1, !dbg !5680
  call void @cgroup_freeze_task(ptr noundef %15, i1 noundef zeroext %tobool48) #12, !dbg !5681
  br label %while.cond, !dbg !5667, !llvm.loop !5677

while.end:                                        ; preds = %while.cond
  call void @css_task_iter_end(ptr noundef %it) #12, !dbg !5682
  call void @spin_lock_irq(ptr noundef @css_set_lock) #12, !dbg !5683
  %17 = load ptr, ptr %cgrp.addr, align 8, !dbg !5684
  %nr_descendants = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 4, !dbg !5686
  %18 = load i32, ptr %nr_descendants, align 8, !dbg !5686
  %19 = load ptr, ptr %cgrp.addr, align 8, !dbg !5687
  %freezer = getelementptr inbounds %struct.cgroup, ptr %19, i32 0, i32 38, !dbg !5688
  %nr_frozen_descendants = getelementptr inbounds %struct.cgroup_freezer_state, ptr %freezer, i32 0, i32 2, !dbg !5689
  %20 = load i32, ptr %nr_frozen_descendants, align 4, !dbg !5689
  %cmp49 = icmp eq i32 %18, %20, !dbg !5690
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !5691

if.then51:                                        ; preds = %while.end
  %21 = load ptr, ptr %cgrp.addr, align 8, !dbg !5692
  call void @cgroup_update_frozen(ptr noundef %21) #12, !dbg !5693
  br label %if.end52, !dbg !5693

if.end52:                                         ; preds = %if.then51, %while.end
  call void @spin_unlock_irq(ptr noundef @css_set_lock) #12, !dbg !5694
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #11, !dbg !5695
  call void @llvm.lifetime.end.p0(i64 104, ptr %it) #11, !dbg !5695
  ret void, !dbg !5695
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !5696 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5704, metadata !DIExpression()), !dbg !5706
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5705, metadata !DIExpression()), !dbg !5707
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5708
  %1 = load i64, ptr %size.addr, align 8, !dbg !5709
  %conv = trunc i64 %1 to i32, !dbg !5709
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !5710
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5711
  %3 = load i64, ptr %size.addr, align 8, !dbg !5711
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !5711
  ret void, !dbg !5712
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5713 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5716, metadata !DIExpression()), !dbg !5718
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5717, metadata !DIExpression()), !dbg !5719
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5720
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5721
  br i1 %1, label %cond.true, label %cond.false, !dbg !5721

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5722
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5723
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !5724
  %conv = zext i1 %call to i32, !dbg !5724
  br label %cond.end, !dbg !5721

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5725
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5726
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !5727
  %conv2 = zext i1 %call1 to i32, !dbg !5727
  br label %cond.end, !dbg !5721

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5721
  %tobool = icmp ne i32 %cond, 0, !dbg !5721
  ret i1 %tobool, !dbg !5728
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !5729 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5734, metadata !DIExpression()), !dbg !5736
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5735, metadata !DIExpression()), !dbg !5737
  ret i1 true, !dbg !5738
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !5739 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5744, metadata !DIExpression()), !dbg !5747
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5745, metadata !DIExpression()), !dbg !5748
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5746, metadata !DIExpression()), !dbg !5749
  ret void, !dbg !5750
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5751 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5755, metadata !DIExpression()), !dbg !5757
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5756, metadata !DIExpression()), !dbg !5758
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5759
  %and = and i64 %0, 63, !dbg !5760
  %shl = shl i64 1, %and, !dbg !5761
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5762
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5763
  %shr = ashr i64 %2, 6, !dbg !5764
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5762
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5762
  %and1 = and i64 %shl, %3, !dbg !5765
  %cmp = icmp ne i64 %and1, 0, !dbg !5766
  ret i1 %cmp, !dbg !5767
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5768 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5770, metadata !DIExpression()), !dbg !5773
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5771, metadata !DIExpression()), !dbg !5774
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !5775
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5772, metadata !DIExpression()), !dbg !5776
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5777
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5778
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !5779, !srcloc !5780
  %3 = icmp ult i8 %2, 2, !dbg !5779
  call void @llvm.assume(i1 %3), !dbg !5779
  store i8 %2, ptr %oldbit, align 1, !dbg !5779
  %4 = load i8, ptr %oldbit, align 1, !dbg !5781, !range !4869, !noundef !1361
  %tobool = trunc i8 %4 to i1, !dbg !5781
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !5782
  ret i1 %tobool, !dbg !5783
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !5784 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5786, metadata !DIExpression()), !dbg !5788
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5787, metadata !DIExpression()), !dbg !5789
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5790
  %1 = load i64, ptr %size.addr, align 8, !dbg !5791
  %conv = trunc i64 %1 to i32, !dbg !5791
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !5792
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5793
  %3 = load i64, ptr %size.addr, align 8, !dbg !5793
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #12, !dbg !5793
  ret void, !dbg !5794
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5795 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5797, metadata !DIExpression()), !dbg !5799
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5798, metadata !DIExpression()), !dbg !5800
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5801
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5803
  br i1 %1, label %if.then, label %if.else, !dbg !5804

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5805
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5805
  %shr = ashr i64 %3, 3, !dbg !5805
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !5805
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5807
  %and = and i64 %4, 7, !dbg !5807
  %sh_prom = trunc i64 %and to i32, !dbg !5807
  %shl = shl i32 1, %sh_prom, !dbg !5807
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #11, !dbg !5808, !srcloc !5809
  br label %if.end, !dbg !5810

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5811
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5813
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #11, !dbg !5814, !srcloc !5815
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5816
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !5817 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5819, metadata !DIExpression()), !dbg !5821
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5820, metadata !DIExpression()), !dbg !5822
  ret i1 true, !dbg !5823
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5824 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5826, metadata !DIExpression()), !dbg !5828
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5827, metadata !DIExpression()), !dbg !5829
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5830
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5832
  br i1 %1, label %if.then, label %if.else, !dbg !5833

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5834
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5834
  %shr = ashr i64 %3, 3, !dbg !5834
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !5834
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5836
  %and = and i64 %4, 7, !dbg !5836
  %sh_prom = trunc i64 %and to i32, !dbg !5836
  %shl = shl i32 1, %sh_prom, !dbg !5836
  %not = xor i32 %shl, -1, !dbg !5837
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #11, !dbg !5838, !srcloc !5839
  br label %if.end, !dbg !5840

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5841
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5843
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #11, !dbg !5844, !srcloc !5845
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5846
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #4 align 16 !dbg !5847 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5863, metadata !DIExpression()), !dbg !5864
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5865
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #12, !dbg !5866
  ret i1 %call, !dbg !5867
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #4 align 16 !dbg !5868 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5873, metadata !DIExpression()), !dbg !5876
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !5874, metadata !DIExpression()), !dbg !5877
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5878
  %1 = load i8, ptr %branch.addr, align 1, !dbg !5879, !range !4869, !noundef !1361
  %tobool = trunc i8 %1 to i1, !dbg !5879
  %conv = zext i1 %tobool to i32, !dbg !5879
  %or = or i32 2, %conv, !dbg !5880
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #11
          to label %asm.fallthrough [label %l_yes], !dbg !5881, !srcloc !5882

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5883
  br label %return, !dbg !5883

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !5875), !dbg !5884
  store i1 true, ptr %retval, align 1, !dbg !5885
  br label %return, !dbg !5885

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !5886
  ret i1 %2, !dbg !5886
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_path(ptr noundef %kn, ptr noundef %buf, i64 noundef %buflen) #6 align 16 !dbg !5887 {
entry:
  %kn.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5891, metadata !DIExpression()), !dbg !5894
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5892, metadata !DIExpression()), !dbg !5895
  store i64 %buflen, ptr %buflen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !5893, metadata !DIExpression()), !dbg !5896
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !5897
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !5898
  %2 = load i64, ptr %buflen.addr, align 8, !dbg !5899
  %call = call i32 @kernfs_path_from_node(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %2) #12, !dbg !5900
  ret i32 %call, !dbg !5901
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5902 dso_local i32 @kernfs_path_from_node(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #6 align 16 !dbg !5905 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5909, metadata !DIExpression()), !dbg !5910
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5911
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #12, !dbg !5912
  ret i1 %call, !dbg !5913
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #4 align 16 !dbg !5914 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5917, metadata !DIExpression()), !dbg !5924
  br label %do.body, !dbg !5925

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #11, !dbg !5926
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !5918, metadata !DIExpression()), !dbg !5926
  %0 = load i32, ptr %val.addr, align 4, !dbg !5926
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5926
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5926

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !5926
  %cmp = icmp eq i32 %2, 1, !dbg !5926
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !5926

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !5926
  %cmp1 = icmp eq i32 %3, -1, !dbg !5926
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !5926

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !5926
  br label %cond.end, !dbg !5926

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !5926

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !5926
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !5926
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !5927
  %cmp2 = icmp eq i32 %5, 1, !dbg !5927
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5926

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !5928, !srcloc !5930
  br label %if.end8, !dbg !5927

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !5931
  %cmp3 = icmp eq i32 %6, -1, !dbg !5931
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !5927

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !5932, !srcloc !5934
  br label %if.end, !dbg !5931

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !5931

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #11, !dbg !5935
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !5920, metadata !DIExpression()), !dbg !5935
  %7 = load i32, ptr %val.addr, align 4, !dbg !5935
  %conv = sext i32 %7 to i64, !dbg !5935
  %and = and i64 %conv, 4294967295, !dbg !5935
  %conv7 = trunc i64 %and to i32, !dbg !5935
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !5935
  %8 = load i32, ptr %pto_val__, align 4, !dbg !5935
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !5935, !srcloc !5936
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #11, !dbg !5931
  br label %do.cond, !dbg !5935

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5935

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #11, !dbg !5925
  br label %do.end10, !dbg !5926

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !5937
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_cgroup_notify_frozen(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #4 align 16 !dbg !5938 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #11, !dbg !5942
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5940, metadata !DIExpression()), !dbg !5942
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !5942, !srcloc !5943
  %1 = icmp ult i8 %0, 2, !dbg !5942
  call void @llvm.assume(i1 %1), !dbg !5942
  store i8 %0, ptr %c, align 1, !dbg !5942
  %2 = load i8, ptr %c, align 1, !dbg !5942, !range !4869, !noundef !1361
  %tobool = trunc i8 %2 to i1, !dbg !5942
  %frombool = zext i1 %tobool to i8, !dbg !5942
  store i8 %frombool, ptr %tmp, align 1, !dbg !5942
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #11, !dbg !5944
  %3 = load i8, ptr %tmp, align 1, !dbg !5942, !range !4869, !noundef !1361
  %tobool1 = trunc i8 %3 to i1, !dbg !5942
  ret i1 %tobool1, !dbg !5945
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #4 align 16 !dbg !5946 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5950, metadata !DIExpression()), !dbg !5952
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !5951, metadata !DIExpression()), !dbg !5953
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5954
  %call = call i32 @cpumask_check(i32 noundef %0) #12, !dbg !5954
  %conv = zext i32 %call to i64, !dbg !5954
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !5954
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !5954
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5954
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #12, !dbg !5954
  ret i1 %call1, !dbg !5955
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #4 align 16 !dbg !5956 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5960, metadata !DIExpression()), !dbg !5961
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5962
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #12, !dbg !5963
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !5964
  ret i32 %1, !dbg !5965
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #4 align 16 !dbg !5966 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5970, metadata !DIExpression()), !dbg !5972
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !5971, metadata !DIExpression()), !dbg !5973
  ret void, !dbg !5974
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5975 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @cgroup_parent(ptr noundef %cgrp) #6 align 16 !dbg !5978 {
entry:
  %retval = alloca ptr, align 8
  %cgrp.addr = alloca ptr, align 8
  %parent_css = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !5982, metadata !DIExpression()), !dbg !5987
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_css) #11, !dbg !5988
  call void @llvm.dbg.declare(metadata ptr %parent_css, metadata !5983, metadata !DIExpression()), !dbg !5989
  %0 = load ptr, ptr %cgrp.addr, align 8, !dbg !5990
  %self = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 0, !dbg !5991
  %parent = getelementptr inbounds %struct.cgroup_subsys_state, ptr %self, i32 0, i32 12, !dbg !5992
  %1 = load ptr, ptr %parent, align 8, !dbg !5992
  store ptr %1, ptr %parent_css, align 8, !dbg !5989
  %2 = load ptr, ptr %parent_css, align 8, !dbg !5993
  %tobool = icmp ne ptr %2, null, !dbg !5993
  br i1 %tobool, label %if.then, label %if.end, !dbg !5994

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5995
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5984, metadata !DIExpression()), !dbg !5995
  %3 = load ptr, ptr %parent_css, align 8, !dbg !5995
  store ptr %3, ptr %__mptr, align 8, !dbg !5995
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5995
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !5995
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5995
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5996
  %5 = load ptr, ptr %tmp, align 8, !dbg !5995
  store ptr %5, ptr %retval, align 8, !dbg !5997
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5997

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5998
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5998

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_css) #11, !dbg !5999
  %6 = load ptr, ptr %retval, align 8, !dbg !5999
  ret ptr %6, !dbg !5999
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6000 dso_local void @_raw_spin_lock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_css_set(ptr noundef %task) #6 align 16 !dbg !6003 {
entry:
  %task.addr = alloca ptr, align 8
  %__UNIQUE_ID_rcu258 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6007, metadata !DIExpression()), !dbg !6010
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu258) #11, !dbg !6011
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu258, metadata !6008, metadata !DIExpression()), !dbg !6011
  br label %do.body, !dbg !6012

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6014

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6014

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %task.addr, align 8, !dbg !6012
  %cgroups = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 143, !dbg !6012
  %1 = load volatile ptr, ptr %cgroups, align 8, !dbg !6012
  store ptr %1, ptr %tmp, align 8, !dbg !6014
  %2 = load ptr, ptr %tmp, align 8, !dbg !6012
  store ptr %2, ptr %__UNIQUE_ID_rcu258, align 8, !dbg !6011
  br label %do.body1, !dbg !6011

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !6016

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !6016

do.end3:                                          ; preds = %do.cond2
  %3 = load ptr, ptr %__UNIQUE_ID_rcu258, align 8, !dbg !6011
  store ptr %3, ptr %tmp4, align 8, !dbg !6016
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu258) #11, !dbg !6018
  %4 = load ptr, ptr %tmp4, align 8, !dbg !6011
  ret ptr %4, !dbg !6019
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6020 dso_local void @_raw_spin_unlock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6021 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6022 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lock_task_sighand(ptr noundef %task, ptr noundef %flags) #6 align 16 !dbg !6023 {
entry:
  %task.addr = alloca ptr, align 8
  %flags.addr = alloca ptr, align 8
  %ret = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6027, metadata !DIExpression()), !dbg !6030
  store ptr %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6028, metadata !DIExpression()), !dbg !6031
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11, !dbg !6032
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6029, metadata !DIExpression()), !dbg !6033
  %0 = load ptr, ptr %task.addr, align 8, !dbg !6034
  %1 = load ptr, ptr %flags.addr, align 8, !dbg !6035
  %call = call ptr @__lock_task_sighand(ptr noundef %0, ptr noundef %1) #12, !dbg !6036
  store ptr %call, ptr %ret, align 8, !dbg !6037
  %2 = load ptr, ptr %ret, align 8, !dbg !6038
  %3 = load ptr, ptr %ret, align 8, !dbg !6039
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11, !dbg !6040
  ret ptr %3, !dbg !6041
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @signal_wake_up(ptr noundef %t, i1 noundef zeroext %fatal) #6 align 16 !dbg !6042 {
entry:
  %t.addr = alloca ptr, align 8
  %fatal.addr = alloca i8, align 1
  %state = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !6044, metadata !DIExpression()), !dbg !6047
  %frombool = zext i1 %fatal to i8
  store i8 %frombool, ptr %fatal.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %fatal.addr, metadata !6045, metadata !DIExpression()), !dbg !6048
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #11, !dbg !6049
  call void @llvm.dbg.declare(metadata ptr %state, metadata !6046, metadata !DIExpression()), !dbg !6050
  store i32 0, ptr %state, align 4, !dbg !6050
  %0 = load i8, ptr %fatal.addr, align 1, !dbg !6051, !range !4869, !noundef !1361
  %tobool = trunc i8 %0 to i1, !dbg !6051
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6053

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %t.addr, align 8, !dbg !6054
  %jobctl = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 55, !dbg !6055
  %2 = load i64, ptr %jobctl, align 32, !dbg !6055
  %and = and i64 %2, 16777216, !dbg !6056
  %tobool1 = icmp ne i64 %and, 0, !dbg !6056
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6057

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %t.addr, align 8, !dbg !6058
  %jobctl2 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 55, !dbg !6060
  %4 = load i64, ptr %jobctl2, align 32, !dbg !6061
  %and3 = and i64 %4, -201326593, !dbg !6061
  store i64 %and3, ptr %jobctl2, align 32, !dbg !6061
  store i32 264, ptr %state, align 4, !dbg !6062
  br label %if.end, !dbg !6063

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load ptr, ptr %t.addr, align 8, !dbg !6064
  %6 = load i32, ptr %state, align 4, !dbg !6065
  call void @signal_wake_up_state(ptr noundef %5, i32 noundef %6) #12, !dbg !6066
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #11, !dbg !6067
  ret void, !dbg !6067
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6068 dso_local i32 @wake_up_process(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @unlock_task_sighand(ptr noundef %task, ptr noundef %flags) #6 align 16 !dbg !6071 {
entry:
  %task.addr = alloca ptr, align 8
  %flags.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6075, metadata !DIExpression()), !dbg !6077
  store ptr %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6076, metadata !DIExpression()), !dbg !6078
  %0 = load ptr, ptr %task.addr, align 8, !dbg !6079
  %sighand = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 105, !dbg !6080
  %1 = load ptr, ptr %sighand, align 8, !dbg !6080
  %siglock = getelementptr inbounds %struct.sighand_struct, ptr %1, i32 0, i32 0, !dbg !6081
  %2 = load ptr, ptr %flags.addr, align 8, !dbg !6082
  %3 = load i64, ptr %2, align 8, !dbg !6083
  call void @spin_unlock_irqrestore(ptr noundef %siglock, i64 noundef %3) #12, !dbg !6084
  ret void, !dbg !6085
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6086 dso_local ptr @__lock_task_sighand(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6087 dso_local void @signal_wake_up_state(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @trace_cgroup_freeze_enabled() #6 align 16 !dbg !6090 {
entry:
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_freeze, i32 0, i32 1)) #12, !dbg !6091
  ret i1 %call, !dbg !6091
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_cgroup_freeze(ptr noundef %cgrp, ptr noundef %path) #6 align 16 !dbg !4743 {
entry:
  %cgrp.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu356 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !4747, metadata !DIExpression()), !dbg !6092
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !4748, metadata !DIExpression()), !dbg !6092
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_freeze, i32 0, i32 1)) #12, !dbg !6093
  br i1 %call, label %if.then, label %if.end68, !dbg !6092

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6093

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #11, !dbg !6094
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !4749, metadata !DIExpression()), !dbg !6094
  store i32 0, ptr %__idx, align 4, !dbg !6094
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #11, !dbg !6095
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4752, metadata !DIExpression()), !dbg !6095
  br label %do.body1, !dbg !6095

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6096
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4755, metadata !DIExpression()), !dbg !6096
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6096
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6096
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6095
  br label %do.cond, !dbg !6096

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6096

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #11, !dbg !6097
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4757, metadata !DIExpression()), !dbg !6097
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 2)) #11, !dbg !6097, !srcloc !6098
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6097
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6097
  %conv = zext i32 %2 to i64, !dbg !6097
  %conv2 = trunc i64 %conv to i32, !dbg !6097
  store i32 %conv2, ptr %tmp, align 4, !dbg !6097
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #11, !dbg !6095
  %3 = load i32, ptr %tmp, align 4, !dbg !6097
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6095
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6095
  store i32 %4, ptr %tmp3, align 4, !dbg !6095
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #11, !dbg !6099
  %5 = load i32, ptr %tmp3, align 4, !dbg !6095
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #12, !dbg !6099
  br i1 %call4, label %if.end, label %if.then5, !dbg !6094

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6099

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6100
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4759, metadata !DIExpression()), !dbg !6100
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !6100
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6101
  %tobool = icmp ne i32 %6, 0, !dbg !6101
  %lnot = xor i1 %tobool, true, !dbg !6101
  %lnot6 = xor i1 %lnot, true, !dbg !6101
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6101
  %conv7 = sext i32 %lnot.ext to i64, !dbg !6101
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6101
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6101
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !6100

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !6101

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !6102
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4762, metadata !DIExpression()), !dbg !6102
  store i32 2307, ptr %__flags, align 4, !dbg !6102
  br label %do.body11, !dbg !6102

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !6103

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6103

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6102

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !6105
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 111, i32 %7, i64 12) #11, !dbg !6105, !srcloc !6107
  br label %do.cond15, !dbg !6105

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6105

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6102

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6108

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6108

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !6101
  br label %do.cond20, !dbg !6102

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6102

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !6102

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6100
  %tobool24 = icmp ne i32 %8, 0, !dbg !6100
  %lnot25 = xor i1 %tobool24, true, !dbg !6100
  %lnot27 = xor i1 %lnot25, true, !dbg !6100
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6100
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6100
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6100
  store i64 %expval30, ptr %tmp23, align 8, !dbg !6101
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6110
  %9 = load i64, ptr %tmp23, align 8, !dbg !6100
  %tobool31 = icmp ne i64 %9, 0, !dbg !6110
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6094

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6110

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !6094

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !6111
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !6111, !srcloc !6113
  br label %do.cond35, !dbg !6111

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !6111

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6094

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #11, !dbg !6114
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !4765, metadata !DIExpression()), !dbg !6114
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #11, !dbg !6114
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !4767, metadata !DIExpression()), !dbg !6114
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu356) #11, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu356, metadata !4768, metadata !DIExpression()), !dbg !6115
  br label %do.body38, !dbg !6116

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !6118

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !6118

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_freeze, i32 0, i32 8), align 8, !dbg !6116
  store ptr %10, ptr %tmp41, align 8, !dbg !6118
  %11 = load ptr, ptr %tmp41, align 8, !dbg !6116
  store ptr %11, ptr %__UNIQUE_ID_rcu356, align 8, !dbg !6115
  %12 = load ptr, ptr %__UNIQUE_ID_rcu356, align 8, !dbg !6115
  store ptr %12, ptr %tmp42, align 8, !dbg !6115
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu356) #11, !dbg !6114
  %13 = load ptr, ptr %tmp42, align 8, !dbg !6115
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !6114
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !6120
  %tobool43 = icmp ne ptr %14, null, !dbg !6120
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !6114

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6122
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !6122
  %16 = load ptr, ptr %data, align 8, !dbg !6122
  store ptr %16, ptr %__data, align 8, !dbg !6122
  store ptr @__SCT__tp_func_cgroup_freeze, ptr %tmp45, align 8, !dbg !6124
  %17 = load ptr, ptr %tmp45, align 8, !dbg !6124
  %18 = load ptr, ptr %__data, align 8, !dbg !6122
  %19 = load ptr, ptr %cgrp.addr, align 8, !dbg !6122
  %20 = load ptr, ptr %path.addr, align 8, !dbg !6122
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, ptr noundef %20) #12, !dbg !6122
  br label %if.end47, !dbg !6122

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #11, !dbg !6094
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #11, !dbg !6094
  br label %do.cond48, !dbg !6114

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !6114

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !6094

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !6126, !srcloc !6128
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !6129
  %lnot52 = xor i1 %call51, true, !dbg !6129
  %lnot54 = xor i1 %lnot52, true, !dbg !6129
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !6129
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !6129
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !6129
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !6129
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !6126

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !6129

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !4826), !dbg !6131
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #11, !dbg !6131, !srcloc !6133
  call void @llvm.write_register.i64(metadata !4826, i64 %22), !dbg !6131
  br label %do.cond61, !dbg !6131

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !6131

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !6131

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !6126

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !6126

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6093
  br label %cleanup, !dbg !6093

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #11, !dbg !6093
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !6094

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !6094

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !6092

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @trace_cgroup_unfreeze_enabled() #6 align 16 !dbg !6134 {
entry:
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_unfreeze, i32 0, i32 1)) #12, !dbg !6135
  ret i1 %call, !dbg !6135
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_cgroup_unfreeze(ptr noundef %cgrp, ptr noundef %path) #6 align 16 !dbg !4774 {
entry:
  %cgrp.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu364 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !4776, metadata !DIExpression()), !dbg !6136
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !4777, metadata !DIExpression()), !dbg !6136
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_unfreeze, i32 0, i32 1)) #12, !dbg !6137
  br i1 %call, label %if.then, label %if.end68, !dbg !6136

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6137

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #11, !dbg !6138
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !4778, metadata !DIExpression()), !dbg !6138
  store i32 0, ptr %__idx, align 4, !dbg !6138
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #11, !dbg !6139
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4781, metadata !DIExpression()), !dbg !6139
  br label %do.body1, !dbg !6139

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6140
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4784, metadata !DIExpression()), !dbg !6140
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6140
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6140
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6139
  br label %do.cond, !dbg !6140

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6140

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #11, !dbg !6141
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4786, metadata !DIExpression()), !dbg !6141
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 2)) #11, !dbg !6141, !srcloc !6142
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6141
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6141
  %conv = zext i32 %2 to i64, !dbg !6141
  %conv2 = trunc i64 %conv to i32, !dbg !6141
  store i32 %conv2, ptr %tmp, align 4, !dbg !6141
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #11, !dbg !6139
  %3 = load i32, ptr %tmp, align 4, !dbg !6141
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6139
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6139
  store i32 %4, ptr %tmp3, align 4, !dbg !6139
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #11, !dbg !6143
  %5 = load i32, ptr %tmp3, align 4, !dbg !6139
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #12, !dbg !6143
  br i1 %call4, label %if.end, label %if.then5, !dbg !6138

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6143

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6144
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4788, metadata !DIExpression()), !dbg !6144
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !6144
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6145
  %tobool = icmp ne i32 %6, 0, !dbg !6145
  %lnot = xor i1 %tobool, true, !dbg !6145
  %lnot6 = xor i1 %lnot, true, !dbg !6145
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6145
  %conv7 = sext i32 %lnot.ext to i64, !dbg !6145
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6145
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6145
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !6144

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !6145

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !6146
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4791, metadata !DIExpression()), !dbg !6146
  store i32 2307, ptr %__flags, align 4, !dbg !6146
  br label %do.body11, !dbg !6146

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !6147

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6147

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6146

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !6149
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 118, i32 %7, i64 12) #11, !dbg !6149, !srcloc !6151
  br label %do.cond15, !dbg !6149

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6149

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6146

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6152

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6152

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !6145
  br label %do.cond20, !dbg !6146

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6146

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !6146

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6144
  %tobool24 = icmp ne i32 %8, 0, !dbg !6144
  %lnot25 = xor i1 %tobool24, true, !dbg !6144
  %lnot27 = xor i1 %lnot25, true, !dbg !6144
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6144
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6144
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6144
  store i64 %expval30, ptr %tmp23, align 8, !dbg !6145
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !6154
  %9 = load i64, ptr %tmp23, align 8, !dbg !6144
  %tobool31 = icmp ne i64 %9, 0, !dbg !6154
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6138

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6154

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !6138

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !6155
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !6155, !srcloc !6157
  br label %do.cond35, !dbg !6155

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !6155

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6138

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #11, !dbg !6158
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !4794, metadata !DIExpression()), !dbg !6158
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #11, !dbg !6158
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !4796, metadata !DIExpression()), !dbg !6158
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu364) #11, !dbg !6159
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu364, metadata !4797, metadata !DIExpression()), !dbg !6159
  br label %do.body38, !dbg !6160

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !6162

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !6162

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_unfreeze, i32 0, i32 8), align 8, !dbg !6160
  store ptr %10, ptr %tmp41, align 8, !dbg !6162
  %11 = load ptr, ptr %tmp41, align 8, !dbg !6160
  store ptr %11, ptr %__UNIQUE_ID_rcu364, align 8, !dbg !6159
  %12 = load ptr, ptr %__UNIQUE_ID_rcu364, align 8, !dbg !6159
  store ptr %12, ptr %tmp42, align 8, !dbg !6159
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu364) #11, !dbg !6158
  %13 = load ptr, ptr %tmp42, align 8, !dbg !6159
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !6158
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !6164
  %tobool43 = icmp ne ptr %14, null, !dbg !6164
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !6158

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6166
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !6166
  %16 = load ptr, ptr %data, align 8, !dbg !6166
  store ptr %16, ptr %__data, align 8, !dbg !6166
  store ptr @__SCT__tp_func_cgroup_unfreeze, ptr %tmp45, align 8, !dbg !6168
  %17 = load ptr, ptr %tmp45, align 8, !dbg !6168
  %18 = load ptr, ptr %__data, align 8, !dbg !6166
  %19 = load ptr, ptr %cgrp.addr, align 8, !dbg !6166
  %20 = load ptr, ptr %path.addr, align 8, !dbg !6166
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, ptr noundef %20) #12, !dbg !6166
  br label %if.end47, !dbg !6166

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #11, !dbg !6138
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #11, !dbg !6138
  br label %do.cond48, !dbg !6158

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !6158

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !6138

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !6170, !srcloc !6172
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !6173
  %lnot52 = xor i1 %call51, true, !dbg !6173
  %lnot54 = xor i1 %lnot52, true, !dbg !6173
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !6173
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !6173
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !6173
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !6173
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !6170

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !6173

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !4826), !dbg !6175
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #11, !dbg !6175, !srcloc !6177
  call void @llvm.write_register.i64(metadata !4826, i64 %22), !dbg !6175
  br label %do.cond61, !dbg !6175

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !6175

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !6175

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !6170

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !6170

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6137
  br label %cleanup, !dbg !6137

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #11, !dbg !6137
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !6138

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !6138

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !6136

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6178 dso_local void @css_task_iter_start(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6182 dso_local ptr @css_task_iter_next(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6185 dso_local void @css_task_iter_end(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_cgroup_freeze(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_cgroup_unfreeze(ptr noundef, ptr noundef, ptr noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { nounwind memory(none) }

!llvm.dbg.cu = !{!4695}
!llvm.named.register.rsp = !{!4826}
!llvm.module.flags = !{!4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834}
!llvm.ident = !{!4835}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/cgroup/freezer.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9e929b6820ce5ddb6a9aebb960d71e62")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 24)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 200, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./include/trace/events/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f6f5abf1ac0ece4620624779382e91a")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 30)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_cgroup_notify_frozen398", scope: !15, file: !9, line: 200, type: !145, isLocal: true, isDefinition: true)
!15 = distinct !DISubprogram(name: "trace_cgroup_notify_frozen", scope: !9, file: !9, line: 200, type: !16, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !4801)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !414, !39}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !20, line: 389, size: 7872, elements: !21)
!20 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!21 = !{!22, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4633, !4634, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4682, !4685, !4686, !4693}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !19, file: !20, line: 391, baseType: !23, size: 1600)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !20, line: 152, size: 1600, elements: !24)
!24 = !{!25, !26, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4614}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !23, file: !20, line: 154, baseType: !18, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !23, file: !20, line: 157, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !20, line: 669, size: 1984, elements: !29)
!29 = !{!30, !35, !40, !44, !45, !46, !47, !51, !4492, !4493, !4508, !4512, !4513, !4514, !4518, !4522, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4552, !4559, !4560, !4597, !4598}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !28, file: !20, line: 670, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !28, file: !20, line: 671, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !34}
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !28, file: !20, line: 672, baseType: !41, size: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !34}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !28, file: !20, line: 673, baseType: !41, size: 64, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !28, file: !20, line: 674, baseType: !41, size: 64, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !28, file: !20, line: 675, baseType: !41, size: 64, offset: 320)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !28, file: !20, line: 676, baseType: !48, size: 64, offset: 384)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !34, !39}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !28, file: !20, line: 677, baseType: !52, size: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!39, !55, !34}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !57, line: 17, size: 960, elements: !58)
!57 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!58 = !{!59, !61, !68, !69, !70, !71, !75, !76, !136, !159, !160, !4491}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !56, file: !57, line: 18, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !56, file: !57, line: 19, baseType: !62, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !63, line: 61, baseType: !64)
!63 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !65, line: 72, baseType: !66)
!65 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !65, line: 16, baseType: !67)
!67 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !56, file: !57, line: 20, baseType: !62, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !56, file: !57, line: 21, baseType: !62, size: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !56, file: !57, line: 22, baseType: !62, size: 64, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !56, file: !57, line: 23, baseType: !72, size: 64, offset: 320)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !63, line: 52, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !65, line: 88, baseType: !74)
!74 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !56, file: !57, line: 24, baseType: !72, size: 64, offset: 384)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !56, file: !57, line: 25, baseType: !77, size: 256, offset: 448)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !78, line: 66, size: 256, elements: !79)
!78 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!79 = !{!80, !91, !125, !130}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !77, file: !78, line: 67, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !82, line: 13, baseType: !83)
!82 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !63, line: 181, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 179, size: 64, elements: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !84, file: !63, line: 180, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !88, line: 22, baseType: !89)
!88 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !90, line: 30, baseType: !74)
!90 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!91 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !77, file: !78, line: 68, baseType: !92, size: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !93, line: 23, baseType: !94)
!93 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !93, line: 14, size: 32, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !94, file: !93, line: 15, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !98, line: 44, baseType: !99)
!98 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !98, line: 14, size: 32, elements: !100)
!100 = !{!101}
!101 = !DIDerivedType(tag: DW_TAG_member, scope: !99, file: !98, line: 15, baseType: !102, size: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !99, file: !98, line: 15, size: 32, elements: !103)
!103 = !{!104, !109, !117}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !102, file: !98, line: 16, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !63, line: 174, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 172, size: 32, elements: !107)
!107 = !{!108}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !106, file: !63, line: 173, baseType: !39, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, scope: !102, file: !98, line: 24, baseType: !110, size: 16)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !102, file: !98, line: 24, size: 16, elements: !111)
!111 = !{!112, !116}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !110, file: !98, line: 25, baseType: !113, size: 8)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !88, line: 17, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !90, line: 21, baseType: !115)
!115 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !110, file: !98, line: 26, baseType: !113, size: 8, offset: 8)
!117 = !DIDerivedType(tag: DW_TAG_member, scope: !102, file: !98, line: 28, baseType: !118, size: 32)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !102, file: !98, line: 28, size: 32, elements: !119)
!119 = !{!120, !124}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !118, file: !98, line: 29, baseType: !121, size: 16)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !88, line: 19, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !90, line: 24, baseType: !123)
!123 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !118, file: !98, line: 30, baseType: !121, size: 16, offset: 16)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !77, file: !78, line: 70, baseType: !126, size: 32, offset: 96)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !127, line: 15, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !126, file: !127, line: 20, baseType: !105, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !77, file: !78, line: 72, baseType: !131, size: 128, offset: 128)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !63, line: 190, size: 128, elements: !132)
!132 = !{!133, !135}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !131, file: !63, line: 191, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !131, file: !63, line: 191, baseType: !134, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !56, file: !57, line: 26, baseType: !137, size: 64, offset: 704)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !57, line: 32, size: 256, elements: !140)
!140 = !{!141, !147, !151, !155}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !139, file: !57, line: 33, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!145, !55, !146}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !139, file: !57, line: 34, baseType: !148, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !55, !145}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !139, file: !57, line: 35, baseType: !152, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!145, !55, !145, !146}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !139, file: !57, line: 36, baseType: !156, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!39, !55, !145}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !56, file: !57, line: 27, baseType: !39, size: 32, offset: 768)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !56, file: !57, line: 28, baseType: !161, size: 64, offset: 832)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !164, line: 994, size: 1856, align: 64, elements: !165)
!164 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!165 = !{!166, !186, !195, !197, !198, !199, !200, !201, !290, !691, !700, !4481, !4482, !4483, !4484, !4485, !4486, !4488, !4489, !4490}
!166 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !164, line: 995, baseType: !167, size: 128)
!167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !164, line: 995, size: 128, elements: !168)
!168 = !{!169, !175, !184}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !167, file: !164, line: 996, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !171, line: 60, size: 64, elements: !172)
!171 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !170, file: !171, line: 61, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !167, file: !164, line: 997, baseType: !176, size: 128, align: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !63, line: 232, size: 128, align: 64, elements: !177)
!177 = !{!178, !180}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !176, file: !63, line: 233, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !176, file: !63, line: 234, baseType: !181, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !179}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !167, file: !164, line: 998, baseType: !185, size: 32)
!185 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !163, file: !164, line: 1005, baseType: !187, size: 32, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !188, line: 29, baseType: !189)
!188 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !188, line: 17, size: 32, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, scope: !189, file: !188, line: 18, baseType: !192, size: 32)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !189, file: !188, line: 18, size: 32, elements: !193)
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !192, file: !188, line: 19, baseType: !94, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !163, file: !164, line: 1006, baseType: !196, size: 32, offset: 160)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !63, line: 156, baseType: !185)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !163, file: !164, line: 1007, baseType: !81, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !163, file: !164, line: 1008, baseType: !77, size: 256, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !163, file: !164, line: 1009, baseType: !72, size: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !163, file: !164, line: 1010, baseType: !185, size: 32, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !163, file: !164, line: 1011, baseType: !202, size: 256, offset: 640)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !164, line: 948, size: 256, elements: !203)
!203 = !{!204, !227, !272, !280, !288, !289}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !202, file: !164, line: 949, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !206, line: 34, baseType: !207)
!206 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !206, line: 25, size: 64, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !207, file: !206, line: 26, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !211, line: 27, baseType: !212)
!211 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !211, line: 13, size: 64, elements: !213)
!213 = !{!214, !226}
!214 = !DIDerivedType(tag: DW_TAG_member, scope: !212, file: !211, line: 14, baseType: !215, size: 32)
!215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !212, file: !211, line: 14, size: 32, elements: !216)
!216 = !{!217, !218}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !215, file: !211, line: 15, baseType: !105, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, scope: !215, file: !211, line: 16, baseType: !219, size: 32)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !211, line: 16, size: 32, elements: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !219, file: !211, line: 18, baseType: !113, size: 8)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !219, file: !211, line: 19, baseType: !223, size: 24, offset: 8)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 24, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 3)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !212, file: !211, line: 26, baseType: !97, size: 32, offset: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !202, file: !164, line: 950, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !230, line: 59, size: 768, elements: !231)
!230 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!231 = !{!232, !238, !239, !240, !253, !254, !261, !262}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !229, file: !230, line: 61, baseType: !233, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !234, line: 113, baseType: !235)
!234 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !234, line: 111, size: 32, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !235, file: !234, line: 112, baseType: !105, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !229, file: !230, line: 62, baseType: !185, size: 32, offset: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !229, file: !230, line: 63, baseType: !187, size: 32, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !229, file: !230, line: 65, baseType: !241, size: 256, offset: 128)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 256, elements: !251)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !63, line: 194, size: 64, elements: !243)
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !242, file: !63, line: 195, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !63, line: 198, size: 128, elements: !247)
!247 = !{!248, !249}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !246, file: !63, line: 199, baseType: !245, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !246, file: !63, line: 199, baseType: !250, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!251 = !{!252}
!252 = !DISubrange(count: 4)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !229, file: !230, line: 66, baseType: !242, size: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !229, file: !230, line: 68, baseType: !255, size: 192, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !256, line: 41, baseType: !257)
!256 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !256, line: 37, size: 192, elements: !258)
!258 = !{!259, !260}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !257, file: !256, line: 38, baseType: !187, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !257, file: !256, line: 39, baseType: !131, size: 128, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !229, file: !230, line: 69, baseType: !176, size: 128, align: 64, offset: 640)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !229, file: !230, line: 70, baseType: !263, offset: 768)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, elements: !270)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !230, line: 54, size: 128, elements: !265)
!265 = !{!266, !267}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !264, file: !230, line: 55, baseType: !39, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !264, file: !230, line: 56, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !230, line: 56, flags: DIFlagFwdDecl)
!270 = !{!271}
!271 = !DISubrange(count: -1)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !202, file: !164, line: 951, baseType: !273, size: 32, offset: 128)
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !230, line: 9, baseType: !185, size: 32, elements: !274)
!274 = !{!275, !276, !277, !278, !279}
!275 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!276 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!277 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!278 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!279 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !202, file: !164, line: 952, baseType: !281, size: 32, offset: 160)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !282, line: 23, baseType: !283)
!282 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !282, line: 21, size: 32, elements: !284)
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !283, file: !282, line: 22, baseType: !286, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !63, line: 37, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !65, line: 49, baseType: !185)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !202, file: !164, line: 952, baseType: !281, size: 32, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !202, file: !164, line: 953, baseType: !39, size: 32, offset: 224)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !163, file: !164, line: 1012, baseType: !291, size: 64, offset: 896)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !294, line: 110, size: 1472, elements: !295)
!294 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!295 = !{!296, !297, !298, !305, !306, !307, !308, !309, !310, !311, !312, !321, !322, !323, !324, !325, !326, !460, !461, !462, !463, !464, !495, !677, !678, !686}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !293, file: !294, line: 111, baseType: !81, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !293, file: !294, line: 112, baseType: !281, size: 32, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !293, file: !294, line: 113, baseType: !299, size: 32, offset: 96)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !282, line: 28, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !282, line: 26, size: 32, elements: !301)
!301 = !{!302}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !300, file: !282, line: 27, baseType: !303, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !63, line: 38, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !65, line: 50, baseType: !185)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !293, file: !294, line: 114, baseType: !281, size: 32, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !293, file: !294, line: 115, baseType: !299, size: 32, offset: 160)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !293, file: !294, line: 116, baseType: !281, size: 32, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !293, file: !294, line: 117, baseType: !299, size: 32, offset: 224)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !293, file: !294, line: 118, baseType: !281, size: 32, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !293, file: !294, line: 119, baseType: !299, size: 32, offset: 288)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !293, file: !294, line: 120, baseType: !185, size: 32, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !293, file: !294, line: 121, baseType: !313, size: 64, offset: 384)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !314, line: 24, baseType: !315)
!314 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !314, line: 24, size: 64, elements: !316)
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !315, file: !314, line: 24, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !88, line: 23, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !90, line: 31, baseType: !320)
!320 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !293, file: !294, line: 122, baseType: !313, size: 64, offset: 448)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !293, file: !294, line: 123, baseType: !313, size: 64, offset: 512)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !293, file: !294, line: 124, baseType: !313, size: 64, offset: 576)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !293, file: !294, line: 125, baseType: !313, size: 64, offset: 640)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !293, file: !294, line: 127, baseType: !115, size: 8, offset: 704)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !293, file: !294, line: 129, baseType: !327, size: 64, offset: 768)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !329, line: 195, size: 1728, elements: !330)
!329 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!330 = !{!331, !332, !337, !349, !358, !361, !362, !369, !370, !371, !372, !377, !378, !379, !381, !382, !424, !445}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !328, file: !329, line: 196, baseType: !233, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !328, file: !329, line: 197, baseType: !333, size: 32, offset: 32)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !329, line: 28, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !63, line: 104, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !88, line: 20, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !90, line: 26, baseType: !39)
!337 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !329, line: 198, baseType: !338, size: 192, offset: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !329, line: 198, size: 192, elements: !339)
!339 = !{!340, !341}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !338, file: !329, line: 199, baseType: !131, size: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !338, file: !329, line: 200, baseType: !342, size: 192, align: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !343, line: 5, size: 192, align: 64, elements: !344)
!343 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!344 = !{!345, !346, !348}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !342, file: !343, line: 6, baseType: !67, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !342, file: !343, line: 7, baseType: !347, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !342, file: !343, line: 8, baseType: !347, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !328, file: !329, line: 205, baseType: !350, size: 320, offset: 256)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !351, line: 48, size: 320, elements: !352)
!351 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!352 = !{!353, !354, !355, !356, !357}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !350, file: !351, line: 49, baseType: !81, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !350, file: !351, line: 55, baseType: !81, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !350, file: !351, line: 57, baseType: !126, size: 32, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !350, file: !351, line: 59, baseType: !92, size: 32, offset: 160)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !350, file: !351, line: 60, baseType: !131, size: 128, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !328, file: !329, line: 206, baseType: !359, size: 64, offset: 576)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !329, line: 206, flags: DIFlagFwdDecl)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !328, file: !329, line: 207, baseType: !145, size: 64, offset: 640)
!362 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !329, line: 208, baseType: !363, size: 64, offset: 704)
!363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !329, line: 208, size: 64, elements: !364)
!364 = !{!365, !368}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !363, file: !329, line: 209, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !367, line: 8, baseType: !89)
!367 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!368 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !363, file: !329, line: 210, baseType: !366, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !328, file: !329, line: 212, baseType: !366, size: 64, offset: 768)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !328, file: !329, line: 213, baseType: !281, size: 32, offset: 832)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !328, file: !329, line: 214, baseType: !299, size: 32, offset: 864)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !328, file: !329, line: 215, baseType: !373, size: 32, offset: 896)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !329, line: 31, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !63, line: 110, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !88, line: 21, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !90, line: 27, baseType: !185)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !328, file: !329, line: 216, baseType: !123, size: 16, offset: 928)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !328, file: !329, line: 217, baseType: !123, size: 16, offset: 944)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !328, file: !329, line: 221, baseType: !380, size: 16, offset: 960)
!380 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !328, file: !329, line: 228, baseType: !67, size: 64, offset: 1024)
!382 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !329, line: 245, baseType: !383, size: 320, offset: 1088)
!383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !329, line: 245, size: 320, elements: !384)
!384 = !{!385, !416}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !383, file: !329, line: 246, baseType: !386, size: 320)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !329, line: 114, size: 320, elements: !387)
!387 = !{!388, !389, !401, !404, !413}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !386, file: !329, line: 116, baseType: !67, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !329, line: 117, baseType: !390, size: 64, offset: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !329, line: 117, size: 64, elements: !391)
!391 = !{!392, !400}
!392 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !329, line: 118, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !390, file: !329, line: 118, size: 64, elements: !394)
!394 = !{!395, !396}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !393, file: !329, line: 120, baseType: !121, size: 16)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !393, file: !329, line: 121, baseType: !397, size: 48, offset: 16)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 6)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !390, file: !329, line: 127, baseType: !67, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !386, file: !329, line: 129, baseType: !402, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !329, line: 102, flags: DIFlagFwdDecl)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !386, file: !329, line: 130, baseType: !405, size: 64, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !329, line: 108, size: 192, elements: !407)
!407 = !{!408, !409, !410}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !406, file: !329, line: 109, baseType: !176, size: 128, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !406, file: !329, line: 110, baseType: !233, size: 32, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !406, file: !329, line: 111, baseType: !411, size: 8, offset: 160)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !63, line: 35, baseType: !412)
!412 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !386, file: !329, line: 131, baseType: !414, size: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!416 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !329, line: 247, baseType: !417, size: 320)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !383, file: !329, line: 247, size: 320, elements: !418)
!418 = !{!419, !420, !421, !422, !423}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !417, file: !329, line: 248, baseType: !67, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !417, file: !329, line: 249, baseType: !67, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !417, file: !329, line: 250, baseType: !402, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !417, file: !329, line: 251, baseType: !405, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !417, file: !329, line: 252, baseType: !60, size: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !329, line: 260, baseType: !425, size: 256, offset: 1408)
!425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !329, line: 260, size: 256, elements: !426)
!426 = !{!427, !433}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !425, file: !329, line: 261, baseType: !428, size: 256)
!428 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !329, line: 134, size: 256, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !428, file: !329, line: 135, baseType: !145, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !428, file: !329, line: 136, baseType: !432, size: 256)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 256, elements: !251)
!433 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !329, line: 262, baseType: !434, size: 256)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !425, file: !329, line: 262, size: 256, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !434, file: !329, line: 264, baseType: !131, size: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !434, file: !329, line: 265, baseType: !438, size: 128, offset: 128)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !439, line: 22, size: 128, elements: !440)
!439 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!440 = !{!441, !444}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !438, file: !439, line: 23, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !439, line: 23, flags: DIFlagFwdDecl)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !438, file: !439, line: 24, baseType: !67, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !328, file: !329, line: 280, baseType: !446, size: 64, offset: 1664)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !329, line: 176, size: 192, elements: !448)
!448 = !{!449, !458, !459}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !447, file: !329, line: 177, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !329, line: 171, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!39, !327, !454, !456, !327}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !447, file: !329, line: 178, baseType: !327, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !447, file: !329, line: 179, baseType: !402, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !293, file: !294, line: 130, baseType: !327, size: 64, offset: 832)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !293, file: !294, line: 131, baseType: !327, size: 64, offset: 896)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !293, file: !294, line: 132, baseType: !327, size: 64, offset: 960)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !293, file: !294, line: 135, baseType: !145, size: 64, offset: 1024)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !293, file: !294, line: 137, baseType: !465, size: 64, offset: 1088)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !467, line: 14, size: 1088, elements: !468)
!467 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!468 = !{!469, !470, !479, !480, !481, !482, !483, !484}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !466, file: !467, line: 15, baseType: !233, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !466, file: !467, line: 17, baseType: !471, size: 320, offset: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !472, line: 22, size: 320, elements: !473)
!472 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!473 = !{!474, !475, !476, !477}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !471, file: !472, line: 23, baseType: !92, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !471, file: !472, line: 24, baseType: !87, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !471, file: !472, line: 26, baseType: !131, size: 128, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !471, file: !472, line: 28, baseType: !478, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !466, file: !467, line: 19, baseType: !67, size: 64, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !466, file: !467, line: 20, baseType: !81, size: 64, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !466, file: !467, line: 23, baseType: !246, size: 128, offset: 512)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !466, file: !467, line: 24, baseType: !281, size: 32, offset: 640)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !466, file: !467, line: 29, baseType: !81, size: 64, offset: 704)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !466, file: !467, line: 36, baseType: !485, size: 320, offset: 768)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !486, line: 15, size: 320, elements: !487)
!486 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!487 = !{!488, !489, !490, !491, !492, !493, !494}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !485, file: !486, line: 16, baseType: !92, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !485, file: !486, line: 18, baseType: !39, size: 32, offset: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !485, file: !486, line: 19, baseType: !39, size: 32, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !485, file: !486, line: 20, baseType: !39, size: 32, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !485, file: !486, line: 21, baseType: !39, size: 32, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !485, file: !486, line: 22, baseType: !67, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !486, line: 23, baseType: !67, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !293, file: !294, line: 138, baseType: !496, size: 64, offset: 1152)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !498, line: 68, size: 4800, elements: !499)
!498 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!499 = !{!500, !522, !523, !524, !525, !526, !527, !528, !539, !540, !541, !542, !543, !544, !556, !657, !658, !672, !675}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !497, file: !498, line: 69, baseType: !501, size: 576)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !498, line: 23, size: 576, elements: !502)
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !501, file: !498, line: 24, baseType: !375, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, scope: !501, file: !498, line: 25, baseType: !505, size: 512, offset: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !501, file: !498, line: 25, size: 512, elements: !506)
!506 = !{!507, !516}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !505, file: !498, line: 26, baseType: !508, size: 480)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 480, elements: !514)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !498, line: 17, size: 96, elements: !510)
!510 = !{!511, !512, !513}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !509, file: !498, line: 18, baseType: !375, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !509, file: !498, line: 19, baseType: !375, size: 32, offset: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !509, file: !498, line: 20, baseType: !375, size: 32, offset: 64)
!514 = !{!515}
!515 = !DISubrange(count: 5)
!516 = !DIDerivedType(tag: DW_TAG_member, scope: !505, file: !498, line: 27, baseType: !517, size: 128)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !505, file: !498, line: 27, size: 128, elements: !518)
!518 = !{!519, !521}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !517, file: !498, line: 28, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !517, file: !498, line: 29, baseType: !520, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !497, file: !498, line: 70, baseType: !501, size: 576, offset: 576)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !497, file: !498, line: 71, baseType: !501, size: 576, offset: 1152)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !497, file: !498, line: 72, baseType: !496, size: 64, offset: 1728)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !497, file: !498, line: 73, baseType: !39, size: 32, offset: 1792)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !497, file: !498, line: 74, baseType: !281, size: 32, offset: 1824)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !497, file: !498, line: 75, baseType: !299, size: 32, offset: 1856)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !497, file: !498, line: 76, baseType: !529, size: 192, offset: 1920)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !530, line: 9, size: 192, elements: !531)
!530 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!531 = !{!532, !533, !537, !538}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !529, file: !530, line: 10, baseType: !81, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !529, file: !530, line: 11, baseType: !534, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !536)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !530, line: 7, flags: DIFlagFwdDecl)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !529, file: !530, line: 12, baseType: !185, size: 32, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !529, file: !530, line: 13, baseType: !233, size: 32, offset: 160)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !497, file: !498, line: 77, baseType: !67, size: 64, offset: 2112)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !497, file: !498, line: 80, baseType: !411, size: 8, offset: 2176)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !497, file: !498, line: 88, baseType: !131, size: 128, offset: 2240)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !497, file: !498, line: 89, baseType: !327, size: 64, offset: 2368)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !497, file: !498, line: 90, baseType: !350, size: 320, offset: 2432)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !497, file: !498, line: 97, baseType: !545, size: 256, offset: 2752)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !546, line: 98, size: 256, elements: !547)
!546 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!547 = !{!548, !549, !550}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !545, file: !546, line: 99, baseType: !81, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !545, file: !546, line: 100, baseType: !131, size: 128, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !545, file: !546, line: 101, baseType: !551, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !546, line: 21, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !555}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !497, file: !498, line: 99, baseType: !557, size: 768, offset: 3008)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !558, line: 199, size: 768, elements: !559)
!558 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!559 = !{!560, !565}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !557, file: !558, line: 200, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!39, !564}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !557, file: !558, line: 201, baseType: !566, size: 704, offset: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !558, line: 193, size: 704, elements: !567)
!567 = !{!568, !653}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !566, file: !558, line: 195, baseType: !569, size: 640)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !558, line: 173, size: 640, elements: !570)
!570 = !{!571, !610, !622, !623, !643, !644, !646, !652}
!571 = !DIDerivedType(tag: DW_TAG_member, scope: !569, file: !558, line: 174, baseType: !572, size: 192)
!572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !569, file: !558, line: 174, size: 192, elements: !573)
!573 = !{!574, !609}
!574 = !DIDerivedType(tag: DW_TAG_member, scope: !572, file: !558, line: 175, baseType: !575, size: 192)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !572, file: !558, line: 175, size: 192, elements: !576)
!576 = !{!577, !605, !606, !607, !608}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !575, file: !558, line: 176, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !558, line: 135, size: 512, elements: !580)
!580 = !{!581, !582, !583, !584, !586, !591, !597, !603, !604}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !579, file: !558, line: 136, baseType: !414, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !579, file: !558, line: 137, baseType: !145, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !579, file: !558, line: 138, baseType: !39, size: 32, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !579, file: !558, line: 139, baseType: !585, size: 16, offset: 160)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !63, line: 24, baseType: !123)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !579, file: !558, line: 150, baseType: !587, size: 32, offset: 192)
!587 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !579, file: !558, line: 147, baseType: !185, size: 32, elements: !588)
!588 = !{!589, !590}
!589 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!590 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !579, file: !558, line: 151, baseType: !592, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !558, line: 64, baseType: !594)
!594 = !DISubroutineType(types: !595)
!595 = !{!39, !578, !39, !145, !596, !146}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !579, file: !558, line: 152, baseType: !598, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !558, line: 117, size: 256, elements: !600)
!600 = !{!601, !602}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !599, file: !558, line: 118, baseType: !105, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !599, file: !558, line: 119, baseType: !255, size: 192, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !579, file: !558, line: 153, baseType: !145, size: 64, offset: 384)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !579, file: !558, line: 154, baseType: !145, size: 64, offset: 448)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !575, file: !558, line: 177, baseType: !39, size: 32, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !575, file: !558, line: 178, baseType: !39, size: 32, offset: 96)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !575, file: !558, line: 179, baseType: !39, size: 32, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !575, file: !558, line: 180, baseType: !39, size: 32, offset: 160)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !572, file: !558, line: 182, baseType: !176, size: 128, align: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !569, file: !558, line: 184, baseType: !611, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !613, line: 26, size: 256, elements: !614)
!613 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !612, file: !613, line: 27, baseType: !185, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !612, file: !613, line: 28, baseType: !617, size: 192, offset: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !618, line: 43, size: 192, elements: !619)
!618 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !617, file: !618, line: 44, baseType: !92, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !617, file: !618, line: 45, baseType: !131, size: 128, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !569, file: !558, line: 185, baseType: !578, size: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !569, file: !558, line: 186, baseType: !624, size: 64, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !558, line: 204, size: 960, elements: !626)
!626 = !{!627, !628, !632, !639}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !625, file: !558, line: 205, baseType: !557, size: 768)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !625, file: !558, line: 206, baseType: !629, size: 64, offset: 768)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!564, !624}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !625, file: !558, line: 207, baseType: !633, size: 64, offset: 832)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !636, !637, !638}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !625, file: !558, line: 209, baseType: !640, size: 64, offset: 896)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!39, !636, !578}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !569, file: !558, line: 187, baseType: !564, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !569, file: !558, line: 188, baseType: !645, size: 64, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !569, file: !558, line: 189, baseType: !647, size: 64, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !558, line: 157, size: 256, elements: !649)
!649 = !{!650, !651}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !648, file: !558, line: 158, baseType: !342, size: 192, align: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !648, file: !558, line: 159, baseType: !636, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !569, file: !558, line: 190, baseType: !242, size: 64, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !566, file: !558, line: 196, baseType: !654, size: 64, offset: 640)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !343, line: 12, size: 64, elements: !655)
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !654, file: !343, line: 13, baseType: !347, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !497, file: !498, line: 100, baseType: !636, size: 64, offset: 3776)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !497, file: !498, line: 102, baseType: !659, size: 64, offset: 3840)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !498, line: 107, size: 1152, elements: !661)
!661 = !{!662, !663, !664, !665, !666, !670}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !660, file: !498, line: 108, baseType: !246, size: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !660, file: !498, line: 109, baseType: !496, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !660, file: !498, line: 110, baseType: !281, size: 32, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !660, file: !498, line: 111, baseType: !105, size: 32, offset: 224)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !660, file: !498, line: 112, baseType: !667, size: 640, offset: 256)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 640, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 10)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !660, file: !498, line: 113, baseType: !671, size: 256, offset: 896)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 256, elements: !251)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !497, file: !498, line: 103, baseType: !673, size: 640, offset: 3904)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 640, elements: !668)
!674 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !497, file: !498, line: 104, baseType: !676, size: 256, offset: 4544)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 256, elements: !251)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !293, file: !294, line: 139, baseType: !659, size: 64, offset: 1216)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !293, file: !294, line: 140, baseType: !679, size: 64, offset: 1280)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !294, line: 25, size: 64, elements: !681)
!681 = !{!682, !683, !684}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !680, file: !294, line: 26, baseType: !105, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !680, file: !294, line: 27, baseType: !39, size: 32, offset: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !680, file: !294, line: 28, baseType: !685, offset: 64)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, elements: !270)
!686 = !DIDerivedType(tag: DW_TAG_member, scope: !293, file: !294, line: 142, baseType: !687, size: 128, offset: 1344)
!687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !293, file: !294, line: 142, size: 128, elements: !688)
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !687, file: !294, line: 143, baseType: !39, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !687, file: !294, line: 144, baseType: !176, size: 128, align: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !163, file: !164, line: 1013, baseType: !692, size: 256, offset: 960)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !164, line: 970, size: 256, elements: !693)
!693 = !{!694, !695, !696, !697, !698, !699}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !692, file: !164, line: 971, baseType: !67, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !692, file: !164, line: 972, baseType: !185, size: 32, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !692, file: !164, line: 973, baseType: !185, size: 32, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !692, file: !164, line: 974, baseType: !185, size: 32, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !692, file: !164, line: 975, baseType: !185, size: 32, offset: 160)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !692, file: !164, line: 976, baseType: !72, size: 64, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !163, file: !164, line: 1014, baseType: !701, size: 128, offset: 1216)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !702, line: 8, size: 128, elements: !703)
!702 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!703 = !{!704, !4480}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !701, file: !702, line: 9, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !707, line: 70, size: 256, elements: !708)
!707 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!708 = !{!709, !4477, !4478, !4479}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !706, file: !707, line: 71, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !712, line: 82, size: 1536, elements: !713)
!712 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!713 = !{!714, !715, !725, !733, !734, !749, !4444, !4446, !4459, !4460, !4461, !4462, !4463, !4469, !4470, !4471}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !711, file: !712, line: 84, baseType: !185, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !711, file: !712, line: 85, baseType: !716, size: 32, offset: 32)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !717, line: 275, baseType: !718)
!717 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !717, line: 275, size: 32, elements: !719)
!719 = !{!720}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !718, file: !717, line: 275, baseType: !721, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !717, line: 69, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !717, line: 64, size: 32, elements: !723)
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !722, file: !717, line: 65, baseType: !185, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !711, file: !712, line: 86, baseType: !726, size: 128, offset: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !727, line: 38, size: 128, elements: !728)
!727 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!728 = !{!729, !731}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !726, file: !727, line: 39, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !726, file: !727, line: 39, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !711, file: !712, line: 87, baseType: !710, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !711, file: !712, line: 88, baseType: !735, size: 128, offset: 256)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !712, line: 49, size: 128, elements: !736)
!736 = !{!737, !746}
!737 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !712, line: 50, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !735, file: !712, line: 50, size: 64, elements: !739)
!739 = !{!740, !745}
!740 = !DIDerivedType(tag: DW_TAG_member, scope: !738, file: !712, line: 51, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !738, file: !712, line: 51, size: 64, elements: !742)
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !741, file: !712, line: 52, baseType: !375, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !741, file: !712, line: 52, baseType: !375, size: 32, offset: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !738, file: !712, line: 54, baseType: !318, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !735, file: !712, line: 56, baseType: !747, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !711, file: !712, line: 89, baseType: !750, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !164, line: 641, size: 4800, elements: !752)
!752 = !{!753, !754, !755, !756, !757, !758, !759, !762, !763, !958, !4260, !4261, !4262, !4263, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4426, !4429, !4430, !4431, !4440, !4441, !4442, !4443}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !751, file: !164, line: 642, baseType: !585, size: 16)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !751, file: !164, line: 643, baseType: !123, size: 16, offset: 16)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !751, file: !164, line: 644, baseType: !281, size: 32, offset: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !751, file: !164, line: 645, baseType: !131, size: 128, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !751, file: !164, line: 646, baseType: !299, size: 32, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !751, file: !164, line: 647, baseType: !185, size: 32, offset: 224)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !751, file: !164, line: 650, baseType: !760, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !164, line: 607, flags: DIFlagFwdDecl)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !751, file: !164, line: 651, baseType: !760, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !751, file: !164, line: 654, baseType: !764, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !164, line: 1966, size: 2048, align: 512, elements: !767)
!767 = !{!768, !772, !785, !791, !795, !799, !803, !807, !811, !815, !819, !820, !826, !830, !868, !899, !906, !912, !916, !920, !924, !928, !932, !938, !942}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !766, file: !164, line: 1967, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!710, !750, !710, !185}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !766, file: !164, line: 1968, baseType: !773, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!414, !710, !750, !776}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !778, line: 10, size: 128, elements: !779)
!778 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!779 = !{!780, !784}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !777, file: !778, line: 11, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !145}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !777, file: !778, line: 12, baseType: !145, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !766, file: !164, line: 1969, baseType: !786, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!39, !789, !750, !39}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !314, line: 42, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !766, file: !164, line: 1970, baseType: !792, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!760, !750, !39, !411}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !766, file: !164, line: 1972, baseType: !796, size: 64, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!39, !710, !60, !39}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !766, file: !164, line: 1974, baseType: !800, size: 64, offset: 320)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!39, !789, !750, !710, !585, !411}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !766, file: !164, line: 1976, baseType: !804, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!39, !710, !750, !710}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !766, file: !164, line: 1977, baseType: !808, size: 64, offset: 448)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!39, !750, !710}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !766, file: !164, line: 1978, baseType: !812, size: 64, offset: 512)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!39, !789, !750, !710, !414}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !766, file: !164, line: 1980, baseType: !816, size: 64, offset: 576)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!39, !789, !750, !710, !585}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !766, file: !164, line: 1982, baseType: !808, size: 64, offset: 640)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !766, file: !164, line: 1983, baseType: !821, size: 64, offset: 704)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!39, !789, !750, !710, !585, !824}
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !63, line: 21, baseType: !825)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !63, line: 18, baseType: !375)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !766, file: !164, line: 1985, baseType: !827, size: 64, offset: 768)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!39, !789, !750, !710, !750, !710, !185}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !766, file: !164, line: 1987, baseType: !831, size: 64, offset: 832)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!39, !789, !710, !834}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !164, line: 226, size: 640, elements: !836)
!836 = !{!837, !838, !839, !849, !858, !859, !864, !865, !866}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !835, file: !164, line: 227, baseType: !185, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !835, file: !164, line: 228, baseType: !585, size: 16, offset: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !835, file: !164, line: 241, baseType: !840, size: 32, offset: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !835, file: !164, line: 241, size: 32, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !840, file: !164, line: 242, baseType: !281, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !840, file: !164, line: 243, baseType: !844, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !845, line: 16, baseType: !846)
!845 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !845, line: 14, size: 32, elements: !847)
!847 = !{!848}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !846, file: !845, line: 15, baseType: !286, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, scope: !835, file: !164, line: 245, baseType: !850, size: 32, offset: 96)
!850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !835, file: !164, line: 245, size: 32, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !850, file: !164, line: 246, baseType: !299, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !850, file: !164, line: 247, baseType: !854, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !845, line: 20, baseType: !855)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !845, line: 18, size: 32, elements: !856)
!856 = !{!857}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !855, file: !845, line: 19, baseType: !303, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !835, file: !164, line: 249, baseType: !72, size: 64, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !835, file: !164, line: 250, baseType: !860, size: 128, offset: 192)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !367, line: 13, size: 128, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !860, file: !367, line: 14, baseType: !366, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !860, file: !367, line: 15, baseType: !674, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !835, file: !164, line: 251, baseType: !860, size: 128, offset: 320)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !835, file: !164, line: 252, baseType: !860, size: 128, offset: 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !835, file: !164, line: 259, baseType: !867, size: 64, offset: 576)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !766, file: !164, line: 1988, baseType: !869, size: 64, offset: 896)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!39, !789, !872, !874, !375, !185}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !701)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !876, line: 22, size: 1280, elements: !877)
!876 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!877 = !{!878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !875, file: !876, line: 23, baseType: !375, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !875, file: !876, line: 24, baseType: !585, size: 16, offset: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !875, file: !876, line: 25, baseType: !185, size: 32, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !875, file: !876, line: 26, baseType: !374, size: 32, offset: 96)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !875, file: !876, line: 27, baseType: !318, size: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !875, file: !876, line: 28, baseType: !318, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !875, file: !876, line: 41, baseType: !318, size: 64, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !875, file: !876, line: 42, baseType: !824, size: 32, offset: 320)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !875, file: !876, line: 43, baseType: !824, size: 32, offset: 352)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !875, file: !876, line: 44, baseType: !281, size: 32, offset: 384)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !875, file: !876, line: 45, baseType: !299, size: 32, offset: 416)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !875, file: !876, line: 46, baseType: !72, size: 64, offset: 448)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !875, file: !876, line: 47, baseType: !860, size: 128, offset: 512)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !875, file: !876, line: 48, baseType: !860, size: 128, offset: 640)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !875, file: !876, line: 49, baseType: !860, size: 128, offset: 768)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !875, file: !876, line: 50, baseType: !860, size: 128, offset: 896)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !875, file: !876, line: 51, baseType: !318, size: 64, offset: 1024)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !875, file: !876, line: 52, baseType: !318, size: 64, offset: 1088)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !875, file: !876, line: 53, baseType: !375, size: 32, offset: 1152)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !875, file: !876, line: 54, baseType: !375, size: 32, offset: 1184)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !875, file: !876, line: 55, baseType: !318, size: 64, offset: 1216)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !766, file: !164, line: 1990, baseType: !900, size: 64, offset: 960)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!903, !710, !60, !62}
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !63, line: 66, baseType: !904)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !65, line: 73, baseType: !905)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !65, line: 15, baseType: !674)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !766, file: !164, line: 1991, baseType: !907, size: 64, offset: 1024)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!39, !750, !910, !318, !318}
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !164, line: 55, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !766, file: !164, line: 1993, baseType: !913, size: 64, offset: 1088)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!39, !750, !39}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !766, file: !164, line: 1994, baseType: !917, size: 64, offset: 1152)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!39, !750, !710, !867, !185, !585}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !766, file: !164, line: 1997, baseType: !921, size: 64, offset: 1216)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!39, !789, !750, !867, !585}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !766, file: !164, line: 1999, baseType: !925, size: 64, offset: 1280)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!760, !789, !710, !39}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !766, file: !164, line: 2001, baseType: !929, size: 64, offset: 1344)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!39, !789, !710, !760, !39}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !766, file: !164, line: 2003, baseType: !933, size: 64, offset: 1408)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!39, !789, !710, !936}
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !164, line: 76, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !766, file: !164, line: 2005, baseType: !939, size: 64, offset: 1472)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!39, !710, !936}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !766, file: !164, line: 2006, baseType: !943, size: 64, offset: 1536)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!946, !750}
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !164, line: 3192, size: 192, elements: !948)
!948 = !{!949, !957}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !947, file: !164, line: 3193, baseType: !950, size: 128)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !951, line: 296, size: 128, elements: !952)
!951 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!952 = !{!953, !954, !956}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !950, file: !951, line: 297, baseType: !187, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !950, file: !951, line: 299, baseType: !955, size: 32, offset: 32)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !63, line: 154, baseType: !185)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !950, file: !951, line: 300, baseType: !145, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !947, file: !164, line: 3194, baseType: !375, size: 32, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !751, file: !164, line: 655, baseType: !959, size: 64, offset: 448)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !164, line: 1190, size: 10752, elements: !961)
!961 = !{!962, !963, !964, !965, !966, !967, !2462, !2604, !2644, !2727, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2744, !2748, !2749, !2752, !2755, !2758, !2761, !2762, !2763, !2804, !4136, !4137, !4138, !4139, !4140, !4141, !4144, !4145, !4152, !4153, !4154, !4155, !4214, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !960, file: !164, line: 1191, baseType: !131, size: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !960, file: !164, line: 1192, baseType: !824, size: 32, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !960, file: !164, line: 1193, baseType: !115, size: 8, offset: 160)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !960, file: !164, line: 1194, baseType: !67, size: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !960, file: !164, line: 1195, baseType: !72, size: 64, offset: 256)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !960, file: !164, line: 1196, baseType: !968, size: 64, offset: 320)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !164, line: 2366, size: 576, elements: !970)
!970 = !{!971, !972, !973, !2414, !2441, !2445, !2449, !2450, !2451, !2452, !2454, !2455, !2456, !2458, !2459, !2460, !2461}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !969, file: !164, line: 2367, baseType: !414, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !969, file: !164, line: 2368, baseType: !39, size: 32, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !969, file: !164, line: 2376, baseType: !974, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!39, !977}
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !979, line: 90, size: 1216, elements: !980)
!979 = !DIFile(filename: "./include/linux/fs_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58f4e15024eca636c2bdb50c4534d2c5")
!980 = !{!981, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1046, !1047, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2400, !2410, !2411, !2412, !2413}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !978, file: !979, line: 91, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context_operations", file: !979, line: 115, size: 384, elements: !985)
!985 = !{!986, !990, !994, !1031, !1035, !1036}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !984, file: !979, line: 116, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !977}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !984, file: !979, line: 117, baseType: !991, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!39, !977, !977}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "parse_param", scope: !984, file: !979, line: 118, baseType: !995, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!39, !977, !998}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter", file: !979, line: 63, size: 320, elements: !1000)
!1000 = !{!1001, !1002, !1011, !1029, !1030}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !999, file: !979, line: 64, baseType: !414, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !999, file: !979, line: 65, baseType: !1003, size: 8, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!1003 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_value_type", file: !979, line: 51, baseType: !185, size: 32, elements: !1004)
!1004 = !{!1005, !1006, !1007, !1008, !1009, !1010}
!1005 = !DIEnumerator(name: "fs_value_is_undefined", value: 0)
!1006 = !DIEnumerator(name: "fs_value_is_flag", value: 1)
!1007 = !DIEnumerator(name: "fs_value_is_string", value: 2)
!1008 = !DIEnumerator(name: "fs_value_is_blob", value: 3)
!1009 = !DIEnumerator(name: "fs_value_is_filename", value: 4)
!1010 = !DIEnumerator(name: "fs_value_is_file", value: 5)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !999, file: !979, line: 66, baseType: !1012, size: 64, offset: 128)
!1012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !999, file: !979, line: 66, size: 64, elements: !1013)
!1013 = !{!1014, !1015, !1016, !1028}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1012, file: !979, line: 67, baseType: !60, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !1012, file: !979, line: 68, baseType: !145, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1012, file: !979, line: 69, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filename", file: !164, line: 2470, size: 256, elements: !1019)
!1019 = !{!1020, !1021, !1022, !1023, !1026}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1018, file: !164, line: 2471, baseType: !414, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !1018, file: !164, line: 2472, baseType: !414, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1018, file: !164, line: 2473, baseType: !105, size: 32, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !1018, file: !164, line: 2474, baseType: !1024, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_names", file: !164, line: 2469, flags: DIFlagFwdDecl)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !1018, file: !164, line: 2475, baseType: !1027, offset: 256)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, elements: !270)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1012, file: !979, line: 70, baseType: !867, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !999, file: !979, line: 72, baseType: !62, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "dirfd", scope: !999, file: !979, line: 73, baseType: !39, size: 32, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "parse_monolithic", scope: !984, file: !979, line: 119, baseType: !1032, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!39, !977, !145}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "get_tree", scope: !984, file: !979, line: 120, baseType: !974, size: 64, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !984, file: !979, line: 121, baseType: !974, size: 64, offset: 320)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "uapi_mutex", scope: !978, file: !979, line: 92, baseType: !77, size: 256, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "fs_type", scope: !978, file: !979, line: 93, baseType: !968, size: 64, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "fs_private", scope: !978, file: !979, line: 94, baseType: !145, size: 64, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "sget_key", scope: !978, file: !979, line: 95, baseType: !145, size: 64, offset: 448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !978, file: !979, line: 96, baseType: !710, size: 64, offset: 512)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !978, file: !979, line: 97, baseType: !496, size: 64, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !978, file: !979, line: 98, baseType: !1044, size: 64, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !329, line: 34, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !978, file: !979, line: 99, baseType: !291, size: 64, offset: 704)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !978, file: !979, line: 100, baseType: !1048, size: 128, offset: 768)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p_log", file: !979, line: 76, size: 128, elements: !1049)
!1049 = !{!1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !1048, file: !979, line: 77, baseType: !414, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1048, file: !979, line: 78, baseType: !1052, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fc_log", file: !979, line: 173, size: 640, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1058, !1059, !2384}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1053, file: !979, line: 174, baseType: !233, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1053, file: !979, line: 175, baseType: !113, size: 8, offset: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1053, file: !979, line: 176, baseType: !113, size: 8, offset: 40)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !1053, file: !979, line: 177, baseType: !113, size: 8, offset: 48)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1053, file: !979, line: 178, baseType: !1060, size: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1062, line: 402, size: 9216, align: 512, elements: !1063)
!1062 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!1063 = !{!1064, !1071, !1072, !1076, !2036, !2062, !2063, !2064, !2065, !2069, !2072, !2073, !2074, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2142, !2146, !2166, !2184, !2185, !2186, !2187, !2196, !2219, !2220, !2223, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2237, !2238, !2337, !2345, !2346, !2347, !2349, !2353, !2354, !2363, !2364, !2365, !2366, !2368, !2369, !2370, !2377, !2378, !2379, !2383}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1061, file: !1062, line: 403, baseType: !1065, size: 32)
!1065 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !1062, line: 312, baseType: !185, size: 32, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070}
!1067 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!1068 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!1069 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!1070 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1061, file: !1062, line: 406, baseType: !131, size: 128, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1061, file: !1062, line: 409, baseType: !1073, size: 448, offset: 192)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1074)
!1074 = !{!1075}
!1075 = !DISubrange(count: 56)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1061, file: !1062, line: 417, baseType: !1077, size: 768, offset: 640)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !1062, line: 45, size: 768, elements: !1078)
!1078 = !{!1079, !2030, !2031, !2032, !2035}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1077, file: !1062, line: 46, baseType: !1080, size: 512)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1081, line: 64, size: 512, elements: !1082)
!1081 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1082 = !{!1083, !1084, !1085, !1087, !1131, !1924, !2020, !2025, !2026, !2027, !2028, !2029}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1080, file: !1081, line: 65, baseType: !414, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1080, file: !1081, line: 66, baseType: !131, size: 128, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1080, file: !1081, line: 67, baseType: !1086, size: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1080, file: !1081, line: 68, baseType: !1088, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1081, line: 168, size: 768, elements: !1090)
!1090 = !{!1091, !1092, !1093, !1094}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1089, file: !1081, line: 169, baseType: !131, size: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1089, file: !1081, line: 170, baseType: !187, size: 32, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1089, file: !1081, line: 171, baseType: !1080, size: 512, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1089, file: !1081, line: 172, baseType: !1095, size: 64, offset: 704)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1097)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1081, line: 133, size: 192, elements: !1098)
!1098 = !{!1099, !1106, !1111}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1097, file: !1081, line: 134, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1101)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!39, !1104}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1080)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1097, file: !1081, line: 135, baseType: !1107, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1108)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!414, !1104}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1097, file: !1081, line: 136, baseType: !1112, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1113)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!39, !1104, !1116}
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1081, line: 125, size: 20736, elements: !1118)
!1118 = !{!1119, !1121, !1125, !1126, !1130}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1117, file: !1081, line: 126, baseType: !1120, size: 192)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 192, elements: !224)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1117, file: !1081, line: 127, baseType: !1122, size: 4096, offset: 192)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 4096, elements: !1123)
!1123 = !{!1124}
!1124 = !DISubrange(count: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1117, file: !1081, line: 128, baseType: !39, size: 32, offset: 4288)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1117, file: !1081, line: 129, baseType: !1127, size: 16384, offset: 4320)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1128)
!1128 = !{!1129}
!1129 = !DISubrange(count: 2048)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1117, file: !1081, line: 130, baseType: !39, size: 32, offset: 20704)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1080, file: !1081, line: 69, baseType: !1132, size: 64, offset: 320)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1134)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1081, line: 116, size: 384, elements: !1135)
!1135 = !{!1136, !1140, !1159, !1881, !1916, !1920}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1134, file: !1081, line: 117, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !1086}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1134, file: !1081, line: 118, baseType: !1141, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1143)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1144, line: 254, size: 128, elements: !1145)
!1144 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1145 = !{!1146, !1155}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1143, file: !1144, line: 255, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!903, !1086, !1150, !60}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1144, line: 30, size: 128, elements: !1152)
!1152 = !{!1153, !1154}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1151, file: !1144, line: 31, baseType: !414, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1151, file: !1144, line: 32, baseType: !585, size: 16, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1143, file: !1144, line: 256, baseType: !1156, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!903, !1086, !1150, !414, !62}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1134, file: !1081, line: 119, baseType: !1160, size: 64, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1163)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1144, line: 84, size: 320, elements: !1164)
!1164 = !{!1165, !1166, !1170, !1877, !1879}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1163, file: !1144, line: 85, baseType: !414, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1163, file: !1144, line: 86, baseType: !1167, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!585, !1086, !1150, !39}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1163, file: !1144, line: 88, baseType: !1171, size: 64, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!585, !1086, !1174, !39}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1144, line: 175, size: 512, elements: !1176)
!1176 = !{!1177, !1178, !1179, !1180, !1868, !1872, !1873}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1175, file: !1144, line: 176, baseType: !1151, size: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1175, file: !1144, line: 177, baseType: !62, size: 64, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1175, file: !1144, line: 178, baseType: !145, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1175, file: !1144, line: 179, baseType: !1181, size: 64, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!1184}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !164, line: 472, size: 1536, align: 64, elements: !1186)
!1186 = !{!1187, !1188, !1189, !1190, !1191, !1192, !1197, !1198, !1199, !1860, !1861, !1862, !1865, !1866, !1867}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1185, file: !164, line: 473, baseType: !750, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1185, file: !164, line: 474, baseType: !950, size: 128, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1185, file: !164, line: 475, baseType: !350, size: 320, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1185, file: !164, line: 476, baseType: !955, size: 32, offset: 512)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1185, file: !164, line: 477, baseType: !105, size: 32, offset: 544)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1185, file: !164, line: 482, baseType: !1193, size: 128, offset: 576)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !343, line: 26, size: 128, elements: !1194)
!1194 = !{!1195, !1196}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1193, file: !343, line: 27, baseType: !654, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1193, file: !343, line: 28, baseType: !347, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1185, file: !164, line: 483, baseType: !67, size: 64, offset: 704)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1185, file: !164, line: 484, baseType: !67, size: 64, offset: 768)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1185, file: !164, line: 485, baseType: !1200, size: 64, offset: 832)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1202)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !164, line: 404, size: 1280, elements: !1203)
!1203 = !{!1204, !1678, !1748, !1752, !1756, !1762, !1768, !1772, !1777, !1781, !1785, !1789, !1817, !1828, !1832, !1836, !1841, !1845, !1852, !1856}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1202, file: !164, line: 405, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!39, !1208, !1676}
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1210, line: 74, size: 512, align: 128, elements: !1211)
!1210 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1211 = !{!1212, !1213, !1670, !1675}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1209, file: !1210, line: 75, baseType: !67, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !1210, line: 83, baseType: !1214, size: 320, offset: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1209, file: !1210, line: 83, size: 320, elements: !1215)
!1215 = !{!1216, !1237, !1251, !1255, !1669}
!1216 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !1210, line: 84, baseType: !1217, size: 320)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1214, file: !1210, line: 84, size: 320, elements: !1218)
!1218 = !{!1219, !1230, !1231, !1236}
!1219 = !DIDerivedType(tag: DW_TAG_member, scope: !1217, file: !1210, line: 90, baseType: !1220, size: 128)
!1220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1217, file: !1210, line: 90, size: 128, elements: !1221)
!1221 = !{!1222, !1223, !1228, !1229}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1220, file: !1210, line: 91, baseType: !131, size: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !1210, line: 94, baseType: !1224, size: 128)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !1210, line: 94, size: 128, elements: !1225)
!1225 = !{!1226, !1227}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1224, file: !1210, line: 96, baseType: !145, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1224, file: !1210, line: 98, baseType: !185, size: 32, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1220, file: !1210, line: 102, baseType: !131, size: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1220, file: !1210, line: 103, baseType: !131, size: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1217, file: !1210, line: 106, baseType: !1184, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, scope: !1217, file: !1210, line: 107, baseType: !1232, size: 64, offset: 192)
!1232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1217, file: !1210, line: 107, size: 64, elements: !1233)
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1232, file: !1210, line: 108, baseType: !67, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1232, file: !1210, line: 109, baseType: !67, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1217, file: !1210, line: 117, baseType: !67, size: 64, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !1210, line: 119, baseType: !1238, size: 320)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1214, file: !1210, line: 119, size: 320, elements: !1239)
!1239 = !{!1240, !1241, !1244, !1245, !1246}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1238, file: !1210, line: 124, baseType: !67, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1238, file: !1210, line: 125, baseType: !1242, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1210, line: 125, flags: DIFlagFwdDecl)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1238, file: !1210, line: 126, baseType: !67, size: 64, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1238, file: !1210, line: 127, baseType: !67, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !1210, line: 128, baseType: !1247, size: 64, offset: 256)
!1247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1238, file: !1210, line: 128, size: 64, elements: !1248)
!1248 = !{!1249, !1250}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1247, file: !1210, line: 133, baseType: !67, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1247, file: !1210, line: 138, baseType: !81, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !1210, line: 141, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1214, file: !1210, line: 141, size: 64, elements: !1253)
!1253 = !{!1254}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1252, file: !1210, line: 142, baseType: !67, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !1210, line: 144, baseType: !1256, size: 128)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1214, file: !1210, line: 144, size: 128, elements: !1257)
!1257 = !{!1258, !1668}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1256, file: !1210, line: 146, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1261, line: 126, size: 1216, elements: !1262)
!1261 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!1262 = !{!1263, !1273, !1294, !1295, !1303, !1304, !1305, !1650, !1651, !1652}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1260, file: !1261, line: 127, baseType: !1264, size: 384)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !1261, line: 21, size: 384, elements: !1265)
!1265 = !{!1266, !1267, !1269, !1270, !1271, !1272}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1264, file: !1261, line: 22, baseType: !67, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1264, file: !1261, line: 23, baseType: !1268, size: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1264, file: !1261, line: 24, baseType: !1268, size: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1264, file: !1261, line: 25, baseType: !67, size: 64, offset: 192)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1264, file: !1261, line: 26, baseType: !67, size: 64, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1264, file: !1261, line: 27, baseType: !67, size: 64, offset: 320)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1260, file: !1261, line: 128, baseType: !1274, size: 128, offset: 384)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1275, line: 105, size: 128, elements: !1276)
!1275 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1276 = !{!1277, !1278}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1274, file: !1275, line: 110, baseType: !67, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1274, file: !1275, line: 118, baseType: !1279, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1275, line: 95, size: 448, elements: !1281)
!1281 = !{!1282, !1283, !1289, !1290, !1291, !1292, !1293}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1280, file: !1275, line: 96, baseType: !81, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1280, file: !1275, line: 97, baseType: !1284, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1275, line: 60, baseType: !1286)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !1288}
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1280, file: !1275, line: 98, baseType: !1284, size: 64, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1280, file: !1275, line: 99, baseType: !411, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1280, file: !1275, line: 100, baseType: !411, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1280, file: !1275, line: 101, baseType: !176, size: 128, align: 64, offset: 256)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1280, file: !1275, line: 102, baseType: !1288, size: 64, offset: 384)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1260, file: !1261, line: 129, baseType: !612, size: 256, offset: 512)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1260, file: !1261, line: 130, baseType: !1296, size: 32, offset: 768)
!1296 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !1261, line: 68, baseType: !185, size: 32, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1301, !1302}
!1298 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!1299 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!1300 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!1301 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!1302 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1260, file: !1261, line: 131, baseType: !185, size: 32, offset: 800)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1260, file: !1261, line: 132, baseType: !67, size: 64, offset: 832)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1260, file: !1261, line: 133, baseType: !1306, size: 64, offset: 896)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1308)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !1261, line: 77, size: 192, elements: !1309)
!1309 = !{!1310, !1314, !1646}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1308, file: !1261, line: 83, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{null, !1208}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1308, file: !1261, line: 89, baseType: !1315, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !1210, line: 1184, baseType: !185)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1321, line: 512, size: 896, elements: !1322)
!1321 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1322 = !{!1323, !1598, !1614, !1621, !1628, !1638, !1639, !1640, !1642, !1644}
!1323 = !DIDerivedType(tag: DW_TAG_member, scope: !1320, file: !1321, line: 513, baseType: !1324, size: 320)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1320, file: !1321, line: 513, size: 320, elements: !1325)
!1325 = !{!1326, !1594, !1595, !1596, !1597}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1324, file: !1321, line: 514, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1210, line: 625, size: 1344, elements: !1329)
!1329 = !{!1330, !1339, !1498, !1504, !1511, !1512, !1517, !1518, !1523, !1524, !1527, !1587, !1588, !1589, !1590, !1591, !1592}
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1328, file: !1210, line: 628, baseType: !1331, size: 128)
!1331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1328, file: !1210, line: 628, size: 128, elements: !1332)
!1332 = !{!1333, !1338}
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1331, file: !1210, line: 629, baseType: !1334, size: 128)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1331, file: !1210, line: 629, size: 128, elements: !1335)
!1335 = !{!1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1334, file: !1210, line: 631, baseType: !67, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1334, file: !1210, line: 632, baseType: !67, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1331, file: !1210, line: 635, baseType: !176, size: 128, align: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1328, file: !1210, line: 639, baseType: !1340, size: 64, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1210, line: 733, size: 10240, elements: !1342)
!1342 = !{!1343, !1496}
!1343 = !DIDerivedType(tag: DW_TAG_member, scope: !1341, file: !1210, line: 734, baseType: !1344, size: 10240)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1341, file: !1210, line: 734, size: 10240, elements: !1345)
!1345 = !{!1346, !1350, !1364, !1368, !1369, !1370, !1371, !1372, !1373, !1382, !1383, !1384, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1423, !1425, !1428, !1475, !1476, !1477, !1480, !1481, !1482, !1485, !1486, !1487, !1494, !1495}
!1346 = !DIDerivedType(tag: DW_TAG_member, scope: !1344, file: !1210, line: 739, baseType: !1347, size: 512, align: 512)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1344, file: !1210, line: 739, size: 512, align: 512, elements: !1348)
!1348 = !{!1349}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1347, file: !1210, line: 747, baseType: !105, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1344, file: !1210, line: 750, baseType: !1351, size: 128, offset: 512)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1352, line: 218, size: 128, elements: !1353)
!1352 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1353 = !{!1354, !1362, !1363}
!1354 = !DIDerivedType(tag: DW_TAG_member, scope: !1351, file: !1352, line: 219, baseType: !1355, size: 32)
!1355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1351, file: !1352, line: 219, size: 32, elements: !1356)
!1356 = !{!1357, !1358}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1355, file: !1352, line: 220, baseType: !187, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1355, file: !1352, line: 221, baseType: !1359)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1352, line: 197, baseType: !1360)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1352, line: 197, elements: !1361)
!1361 = !{}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1351, file: !1352, line: 223, baseType: !185, size: 32, offset: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1351, file: !1352, line: 224, baseType: !145, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1344, file: !1210, line: 752, baseType: !1365, size: 64, offset: 640)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!67, !867, !67, !67, !67, !67}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1344, file: !1210, line: 756, baseType: !67, size: 64, offset: 704)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1344, file: !1210, line: 757, baseType: !67, size: 64, offset: 768)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1344, file: !1210, line: 760, baseType: !67, size: 64, offset: 832)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1344, file: !1210, line: 761, baseType: !67, size: 64, offset: 896)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1344, file: !1210, line: 763, baseType: !67, size: 64, offset: 960)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1344, file: !1210, line: 764, baseType: !1374, size: 64, offset: 1024)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1376, line: 299, baseType: !1377)
!1376 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1376, line: 299, size: 64, elements: !1378)
!1378 = !{!1379}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1377, file: !1376, line: 299, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1381, line: 18, baseType: !67)
!1381 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1344, file: !1210, line: 773, baseType: !105, size: 32, offset: 1088)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1344, file: !1210, line: 785, baseType: !105, size: 32, offset: 1120)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1344, file: !1210, line: 795, baseType: !1385, size: 64, offset: 1152)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1210, line: 726, size: 128, elements: !1387)
!1387 = !{!1388, !1389}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1386, file: !1210, line: 727, baseType: !318, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1386, file: !1210, line: 728, baseType: !39, size: 32, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1344, file: !1210, line: 801, baseType: !67, size: 64, offset: 1216)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1344, file: !1210, line: 804, baseType: !81, size: 64, offset: 1280)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1344, file: !1210, line: 806, baseType: !39, size: 32, offset: 1344)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1344, file: !1210, line: 808, baseType: !187, size: 32, offset: 1376)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1344, file: !1210, line: 823, baseType: !350, size: 320, offset: 1408)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1344, file: !1210, line: 825, baseType: !131, size: 128, offset: 1728)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1344, file: !1210, line: 845, baseType: !39, size: 32, offset: 1856)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1344, file: !1210, line: 849, baseType: !67, size: 64, offset: 1920)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1344, file: !1210, line: 850, baseType: !67, size: 64, offset: 1984)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1344, file: !1210, line: 852, baseType: !67, size: 64, offset: 2048)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1344, file: !1210, line: 853, baseType: !67, size: 64, offset: 2112)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1344, file: !1210, line: 854, baseType: !83, size: 64, offset: 2176)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1344, file: !1210, line: 855, baseType: !67, size: 64, offset: 2240)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1344, file: !1210, line: 856, baseType: !67, size: 64, offset: 2304)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1344, file: !1210, line: 857, baseType: !67, size: 64, offset: 2368)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1344, file: !1210, line: 858, baseType: !67, size: 64, offset: 2432)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1344, file: !1210, line: 865, baseType: !721, size: 32, offset: 2496)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1344, file: !1210, line: 867, baseType: !187, size: 32, offset: 2528)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1344, file: !1210, line: 869, baseType: !67, size: 64, offset: 2560)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1344, file: !1210, line: 869, baseType: !67, size: 64, offset: 2624)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1344, file: !1210, line: 869, baseType: !67, size: 64, offset: 2688)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1344, file: !1210, line: 869, baseType: !67, size: 64, offset: 2752)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1344, file: !1210, line: 870, baseType: !67, size: 64, offset: 2816)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1344, file: !1210, line: 870, baseType: !67, size: 64, offset: 2880)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1344, file: !1210, line: 870, baseType: !67, size: 64, offset: 2944)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1344, file: !1210, line: 871, baseType: !67, size: 64, offset: 3008)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1344, file: !1210, line: 871, baseType: !67, size: 64, offset: 3072)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1344, file: !1210, line: 871, baseType: !67, size: 64, offset: 3136)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1344, file: !1210, line: 871, baseType: !67, size: 64, offset: 3200)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1344, file: !1210, line: 873, baseType: !1420, size: 3328, offset: 3264)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 3328, elements: !1421)
!1421 = !{!1422}
!1422 = !DISubrange(count: 52)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1344, file: !1210, line: 875, baseType: !1424, size: 1280, offset: 6592)
!1424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 1280, elements: !251)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1344, file: !1210, line: 877, baseType: !1426, size: 64, offset: 7872)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1210, line: 877, flags: DIFlagFwdDecl)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1344, file: !1210, line: 880, baseType: !1429, size: 1088, offset: 7936)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1430, line: 72, baseType: !1431)
!1430 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1430, line: 23, size: 1088, elements: !1432)
!1432 = !{!1433, !1434, !1435, !1436, !1437, !1440, !1441, !1442, !1443, !1470, !1471, !1472}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1431, file: !1430, line: 28, baseType: !318, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1431, file: !1430, line: 38, baseType: !83, size: 64, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1431, file: !1430, line: 40, baseType: !67, size: 64, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1431, file: !1430, line: 43, baseType: !350, size: 320, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1431, file: !1430, line: 44, baseType: !1438, size: 64, offset: 512)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1430, line: 44, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1431, file: !1430, line: 48, baseType: !67, size: 64, offset: 576)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1431, file: !1430, line: 59, baseType: !77, size: 256, offset: 640)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1431, file: !1430, line: 60, baseType: !145, size: 64, offset: 896)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1431, file: !1430, line: 61, baseType: !1444, size: 64, offset: 960)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1446)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1447, line: 13, size: 1216, elements: !1448)
!1447 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1448 = !{!1449, !1450, !1451, !1452, !1453, !1454, !1455, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1446, file: !1447, line: 14, baseType: !145, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1446, file: !1447, line: 15, baseType: !67, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1446, file: !1447, line: 17, baseType: !67, size: 64, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1446, file: !1447, line: 17, baseType: !67, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1446, file: !1447, line: 18, baseType: !67, size: 64, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1446, file: !1447, line: 18, baseType: !67, size: 64, offset: 320)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1446, file: !1447, line: 19, baseType: !1456, size: 64, offset: 384)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1446, file: !1447, line: 21, baseType: !674, size: 64, offset: 448)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1446, file: !1447, line: 23, baseType: !674, size: 64, offset: 512)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1446, file: !1447, line: 24, baseType: !674, size: 64, offset: 576)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1446, file: !1447, line: 25, baseType: !674, size: 64, offset: 640)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1446, file: !1447, line: 26, baseType: !674, size: 64, offset: 704)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1446, file: !1447, line: 27, baseType: !674, size: 64, offset: 768)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1446, file: !1447, line: 28, baseType: !674, size: 64, offset: 832)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1446, file: !1447, line: 29, baseType: !674, size: 64, offset: 896)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1446, file: !1447, line: 30, baseType: !674, size: 64, offset: 960)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1446, file: !1447, line: 31, baseType: !674, size: 64, offset: 1024)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1446, file: !1447, line: 32, baseType: !674, size: 64, offset: 1088)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1446, file: !1447, line: 33, baseType: !674, size: 64, offset: 1152)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1431, file: !1430, line: 63, baseType: !105, size: 32, offset: 1024)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1431, file: !1430, line: 69, baseType: !121, size: 16, offset: 1056)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1431, file: !1430, line: 70, baseType: !1473, size: 16, offset: 1072)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !88, line: 18, baseType: !1474)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !90, line: 23, baseType: !380)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1344, file: !1210, line: 882, baseType: !67, size: 64, offset: 9024)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1344, file: !1210, line: 885, baseType: !187, size: 32, offset: 9088)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1344, file: !1210, line: 886, baseType: !1478, size: 64, offset: 9152)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1210, line: 732, flags: DIFlagFwdDecl)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1344, file: !1210, line: 901, baseType: !496, size: 64, offset: 9216)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1344, file: !1210, line: 904, baseType: !867, size: 64, offset: 9280)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1344, file: !1210, line: 906, baseType: !1483, size: 64, offset: 9344)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1210, line: 906, flags: DIFlagFwdDecl)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1344, file: !1210, line: 930, baseType: !105, size: 32, offset: 9408)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1344, file: !1210, line: 933, baseType: !105, size: 32, offset: 9440)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1344, file: !1210, line: 935, baseType: !1488, size: 64, offset: 9472)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1489, line: 103, size: 64, elements: !1490)
!1489 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!1490 = !{!1491}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1488, file: !1489, line: 104, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !1489, line: 101, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1344, file: !1210, line: 940, baseType: !81, size: 64, offset: 9536)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1344, file: !1210, line: 942, baseType: !545, size: 256, offset: 9600)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1341, file: !1210, line: 986, baseType: !1497, offset: 10240)
!1497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, elements: !270)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1328, file: !1210, line: 640, baseType: !1499, size: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1376, line: 297, baseType: !1500)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1376, line: 297, size: 64, elements: !1501)
!1501 = !{!1502}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1500, file: !1376, line: 297, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1381, line: 19, baseType: !67)
!1504 = !DIDerivedType(tag: DW_TAG_member, scope: !1328, file: !1210, line: 646, baseType: !1505, size: 64, offset: 256)
!1505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1328, file: !1210, line: 646, size: 64, elements: !1506)
!1506 = !{!1507, !1510}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1505, file: !1210, line: 647, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1509)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1210, line: 542, baseType: !67)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1505, file: !1210, line: 648, baseType: !1509, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1328, file: !1210, line: 666, baseType: !39, size: 32, offset: 320)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1328, file: !1210, line: 667, baseType: !1513, size: 64, offset: 384)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1210, line: 579, size: 320, elements: !1515)
!1515 = !{!1516}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1514, file: !1210, line: 580, baseType: !350, size: 320)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1328, file: !1210, line: 670, baseType: !411, size: 8, offset: 448)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1328, file: !1210, line: 681, baseType: !1519, size: 256, offset: 512)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1328, file: !1210, line: 678, size: 256, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1519, file: !1210, line: 679, baseType: !342, size: 192, align: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1519, file: !1210, line: 680, baseType: !67, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1328, file: !1210, line: 689, baseType: !131, size: 128, offset: 768)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1328, file: !1210, line: 691, baseType: !1525, size: 64, offset: 896)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1210, line: 691, flags: DIFlagFwdDecl)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1328, file: !1210, line: 694, baseType: !1528, size: 64, offset: 960)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1530)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1321, line: 563, size: 1024, elements: !1531)
!1531 = !{!1532, !1536, !1537, !1541, !1545, !1549, !1550, !1554, !1558, !1562, !1563, !1564, !1568, !1572, !1579, !1583}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1530, file: !1321, line: 564, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !1327}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1530, file: !1321, line: 569, baseType: !1533, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1530, file: !1321, line: 571, baseType: !1538, size: 64, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!39, !1327, !67}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1530, file: !1321, line: 572, baseType: !1542, size: 64, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!39, !1327}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1530, file: !1321, line: 578, baseType: !1546, size: 64, offset: 256)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!39, !1327, !67, !67, !67}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1530, file: !1321, line: 580, baseType: !1315, size: 64, offset: 320)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1530, file: !1321, line: 581, baseType: !1551, size: 64, offset: 384)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!1318, !1319, !185}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1530, file: !1321, line: 582, baseType: !1555, size: 64, offset: 448)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!1318, !1319, !67, !67}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1530, file: !1321, line: 584, baseType: !1559, size: 64, offset: 512)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!67, !1327}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1530, file: !1321, line: 588, baseType: !1315, size: 64, offset: 576)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1530, file: !1321, line: 591, baseType: !1315, size: 64, offset: 640)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1530, file: !1321, line: 597, baseType: !1565, size: 64, offset: 704)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!39, !1327, !67, !145, !39, !39}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1530, file: !1321, line: 603, baseType: !1569, size: 64, offset: 768)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!414, !1327}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1530, file: !1321, line: 613, baseType: !1573, size: 64, offset: 832)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!39, !1327, !1576}
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1578, line: 54, flags: DIFlagFwdDecl)
!1578 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1530, file: !1321, line: 625, baseType: !1580, size: 64, offset: 896)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!1576, !1327, !67}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1530, file: !1321, line: 633, baseType: !1584, size: 64, offset: 960)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!1208, !1327, !67}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1328, file: !1210, line: 697, baseType: !67, size: 64, offset: 1024)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1328, file: !1210, line: 699, baseType: !867, size: 64, offset: 1088)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1328, file: !1210, line: 700, baseType: !145, size: 64, offset: 1152)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1328, file: !1210, line: 711, baseType: !81, size: 64, offset: 1216)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1328, file: !1210, line: 717, baseType: !1576, size: 64, offset: 1280)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1328, file: !1210, line: 722, baseType: !1593, offset: 1344)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1210, line: 570, elements: !1361)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1324, file: !1321, line: 515, baseType: !955, size: 32, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1324, file: !1321, line: 516, baseType: !67, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1324, file: !1321, line: 517, baseType: !67, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1324, file: !1321, line: 518, baseType: !67, size: 64, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1320, file: !1321, line: 520, baseType: !1599, size: 32, offset: 320)
!1599 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !1210, line: 1325, baseType: !185, size: 32, elements: !1600)
!1600 = !{!1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613}
!1601 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!1602 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!1603 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!1604 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!1605 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!1606 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!1607 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!1608 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!1609 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!1610 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!1611 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!1612 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!1613 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1320, file: !1321, line: 522, baseType: !1615, size: 64, offset: 384)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1381, line: 22, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1381, line: 22, size: 64, elements: !1618)
!1618 = !{!1619}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1617, file: !1381, line: 22, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1381, line: 15, baseType: !67)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1320, file: !1321, line: 524, baseType: !1622, size: 64, offset: 448)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1376, line: 372, baseType: !1624)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1376, line: 372, size: 64, elements: !1625)
!1625 = !{!1626}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1624, file: !1376, line: 372, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1381, line: 16, baseType: !67)
!1628 = !DIDerivedType(tag: DW_TAG_member, scope: !1320, file: !1321, line: 527, baseType: !1629, size: 64, offset: 512)
!1629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1320, file: !1321, line: 527, size: 64, elements: !1630)
!1630 = !{!1631, !1637}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1629, file: !1321, line: 528, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1381, line: 21, baseType: !1633)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1381, line: 21, size: 64, elements: !1634)
!1634 = !{!1635}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1633, file: !1381, line: 21, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1381, line: 14, baseType: !67)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1629, file: !1321, line: 529, baseType: !1616, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1320, file: !1321, line: 534, baseType: !1208, size: 64, offset: 576)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1320, file: !1321, line: 535, baseType: !1208, size: 64, offset: 640)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1320, file: !1321, line: 541, baseType: !1641, size: 64, offset: 704)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1320, file: !1321, line: 545, baseType: !1643, size: 64, offset: 768)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1320, file: !1321, line: 549, baseType: !1645, size: 64, offset: 832)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1376, line: 520, baseType: !1208)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1308, file: !1261, line: 100, baseType: !1647, size: 64, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!39, !1259, !67, !67, !39}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1260, file: !1261, line: 134, baseType: !145, size: 64, offset: 960)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1260, file: !1261, line: 135, baseType: !39, size: 32, offset: 1024)
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !1261, line: 136, baseType: !1653, size: 128, offset: 1088)
!1653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1260, file: !1261, line: 136, size: 128, elements: !1654)
!1654 = !{!1655, !1661}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1653, file: !1261, line: 137, baseType: !1656, size: 128)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1657, line: 6, size: 128, elements: !1658)
!1657 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1656, file: !1657, line: 7, baseType: !318, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1656, file: !1657, line: 8, baseType: !318, size: 64, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1653, file: !1261, line: 138, baseType: !1662)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1653, file: !1261, line: 138, elements: !1663)
!1663 = !{!1664, !1666}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1662, file: !1261, line: 138, baseType: !1665)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !1261, line: 138, elements: !1361)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1662, file: !1261, line: 138, baseType: !1667)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1656, elements: !270)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1256, file: !1210, line: 147, baseType: !145, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1214, file: !1210, line: 161, baseType: !176, size: 128, align: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !1210, line: 164, baseType: !1671, size: 32, offset: 384)
!1671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1209, file: !1210, line: 164, size: 32, elements: !1672)
!1672 = !{!1673, !1674}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1671, file: !1210, line: 169, baseType: !105, size: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1671, file: !1210, line: 177, baseType: !185, size: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1209, file: !1210, line: 181, baseType: !105, size: 32, offset: 416)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !164, line: 309, flags: DIFlagFwdDecl)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1202, file: !164, line: 406, baseType: !1679, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!39, !867, !1682}
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1210, line: 293, size: 1536, elements: !1684)
!1684 = !{!1685, !1715, !1729}
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !1210, line: 295, baseType: !1686, size: 512)
!1686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1683, file: !1210, line: 295, size: 512, elements: !1687)
!1687 = !{!1688, !1714}
!1688 = !DIDerivedType(tag: DW_TAG_member, scope: !1686, file: !1210, line: 296, baseType: !1689, size: 448)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1686, file: !1210, line: 296, size: 448, elements: !1690)
!1690 = !{!1691, !1692, !1701, !1702, !1703, !1712, !1713}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1689, file: !1210, line: 298, baseType: !67, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, scope: !1689, file: !1210, line: 299, baseType: !1693, size: 128, offset: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1689, file: !1210, line: 299, size: 128, elements: !1694)
!1694 = !{!1695, !1696}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1693, file: !1210, line: 300, baseType: !131, size: 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1693, file: !1210, line: 302, baseType: !1697, size: 128)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1693, file: !1210, line: 302, size: 128, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1697, file: !1210, line: 303, baseType: !145, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1697, file: !1210, line: 305, baseType: !185, size: 32, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1689, file: !1210, line: 310, baseType: !1184, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1689, file: !1210, line: 311, baseType: !67, size: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_member, scope: !1689, file: !1210, line: 312, baseType: !1704, size: 64, offset: 320)
!1704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1689, file: !1210, line: 312, size: 64, elements: !1705)
!1705 = !{!1706, !1707}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1704, file: !1210, line: 313, baseType: !145, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1704, file: !1210, line: 314, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1210, line: 257, baseType: !1709)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1210, line: 255, size: 64, elements: !1710)
!1710 = !{!1711}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1709, file: !1210, line: 256, baseType: !67, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1689, file: !1210, line: 316, baseType: !105, size: 32, offset: 384)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1689, file: !1210, line: 317, baseType: !105, size: 32, offset: 416)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1686, file: !1210, line: 323, baseType: !1209, size: 512, align: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !1210, line: 325, baseType: !1716, size: 512, offset: 512)
!1716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1683, file: !1210, line: 325, size: 512, elements: !1717)
!1717 = !{!1718, !1728}
!1718 = !DIDerivedType(tag: DW_TAG_member, scope: !1716, file: !1210, line: 326, baseType: !1719, size: 320)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1716, file: !1210, line: 326, size: 320, elements: !1720)
!1720 = !{!1721, !1722, !1723, !1724, !1725, !1726, !1727}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1719, file: !1210, line: 327, baseType: !67, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1719, file: !1210, line: 328, baseType: !67, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1719, file: !1210, line: 329, baseType: !67, size: 64, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1719, file: !1210, line: 331, baseType: !105, size: 32, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1719, file: !1210, line: 332, baseType: !105, size: 32, offset: 224)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1719, file: !1210, line: 333, baseType: !105, size: 32, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1719, file: !1210, line: 335, baseType: !185, size: 32, offset: 288)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1716, file: !1210, line: 339, baseType: !1209, size: 512, align: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !1210, line: 341, baseType: !1730, size: 512, offset: 1024)
!1730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1683, file: !1210, line: 341, size: 512, elements: !1731)
!1731 = !{!1732, !1741, !1747}
!1732 = !DIDerivedType(tag: DW_TAG_member, scope: !1730, file: !1210, line: 342, baseType: !1733, size: 384)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1730, file: !1210, line: 342, size: 384, elements: !1734)
!1734 = !{!1735, !1736, !1737, !1738, !1739, !1740}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1733, file: !1210, line: 343, baseType: !67, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1733, file: !1210, line: 344, baseType: !67, size: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1733, file: !1210, line: 346, baseType: !145, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1733, file: !1210, line: 347, baseType: !145, size: 64, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1733, file: !1210, line: 348, baseType: !145, size: 64, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1733, file: !1210, line: 349, baseType: !145, size: 64, offset: 320)
!1741 = !DIDerivedType(tag: DW_TAG_member, scope: !1730, file: !1210, line: 352, baseType: !1742, size: 256)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1730, file: !1210, line: 352, size: 256, elements: !1743)
!1743 = !{!1744, !1745, !1746}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1742, file: !1210, line: 353, baseType: !67, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1742, file: !1210, line: 354, baseType: !67, size: 64, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1742, file: !1210, line: 356, baseType: !131, size: 128, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1730, file: !1210, line: 359, baseType: !1209, size: 512, align: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1202, file: !164, line: 409, baseType: !1749, size: 64, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!39, !1184, !1676}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1202, file: !164, line: 412, baseType: !1753, size: 64, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!411, !1184, !1682}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1202, file: !164, line: 414, baseType: !1757, size: 64, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{null, !1760}
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !164, line: 310, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1202, file: !164, line: 416, baseType: !1763, size: 64, offset: 320)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!39, !867, !1184, !72, !185, !1766, !1767}
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1202, file: !164, line: 419, baseType: !1769, size: 64, offset: 384)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!39, !867, !1184, !72, !185, !185, !1208, !145}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1202, file: !164, line: 424, baseType: !1773, size: 64, offset: 448)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!1776, !1184, !1776}
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !63, line: 131, baseType: !318)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1202, file: !164, line: 425, baseType: !1778, size: 64, offset: 512)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{null, !1682, !62, !62}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1202, file: !164, line: 426, baseType: !1782, size: 64, offset: 576)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!411, !1682, !955}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1202, file: !164, line: 427, baseType: !1786, size: 64, offset: 640)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{null, !1682}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1202, file: !164, line: 428, baseType: !1790, size: 64, offset: 704)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!903, !1793, !1815}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !164, line: 373, size: 384, elements: !1795)
!1795 = !{!1796, !1797, !1798, !1802, !1803, !1804, !1805}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1794, file: !164, line: 374, baseType: !867, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1794, file: !164, line: 375, baseType: !72, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1794, file: !164, line: 376, baseType: !1799, size: 64, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{null, !1793, !674}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1794, file: !164, line: 377, baseType: !145, size: 64, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1794, file: !164, line: 378, baseType: !39, size: 32, offset: 256)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1794, file: !164, line: 379, baseType: !121, size: 16, offset: 288)
!1805 = !DIDerivedType(tag: DW_TAG_member, scope: !1794, file: !164, line: 380, baseType: !1806, size: 64, offset: 320)
!1806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1794, file: !164, line: 380, size: 64, elements: !1807)
!1807 = !{!1808, !1811}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1806, file: !164, line: 386, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !164, line: 386, flags: DIFlagFwdDecl)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1806, file: !164, line: 395, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!903, !145}
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !164, line: 69, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1202, file: !164, line: 433, baseType: !1818, size: 64, offset: 768)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!39, !1184, !1682, !1682, !1821}
!1821 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !1822, line: 15, baseType: !185, size: 32, elements: !1823)
!1822 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!1823 = !{!1824, !1825, !1826, !1827}
!1824 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!1825 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!1826 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!1827 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1202, file: !164, line: 435, baseType: !1829, size: 64, offset: 832)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!39, !1682}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1202, file: !164, line: 436, baseType: !1833, size: 64, offset: 896)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!411, !1682, !62, !62}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1202, file: !164, line: 438, baseType: !1837, size: 64, offset: 960)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{null, !1682, !1840, !1840}
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1202, file: !164, line: 439, baseType: !1842, size: 64, offset: 1024)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!39, !1184, !1208}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1202, file: !164, line: 442, baseType: !1846, size: 64, offset: 1088)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!39, !1849, !867, !1851}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !164, line: 66, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1202, file: !164, line: 444, baseType: !1853, size: 64, offset: 1152)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{null, !867}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1202, file: !164, line: 445, baseType: !1857, size: 64, offset: 1216)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!39, !1793, !1815}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1185, file: !164, line: 486, baseType: !67, size: 64, offset: 896)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1185, file: !164, line: 487, baseType: !350, size: 320, offset: 960)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1185, file: !164, line: 488, baseType: !1863, size: 32, offset: 1280)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1864, line: 8, baseType: !375)
!1864 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1185, file: !164, line: 489, baseType: !187, size: 32, offset: 1312)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1185, file: !164, line: 490, baseType: !131, size: 128, offset: 1344)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1185, file: !164, line: 491, baseType: !145, size: 64, offset: 1472)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1175, file: !1144, line: 180, baseType: !1869, size: 64, offset: 320)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!903, !867, !1086, !1174, !60, !72, !62}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1175, file: !1144, line: 182, baseType: !1869, size: 64, offset: 384)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1175, file: !1144, line: 184, baseType: !1874, size: 64, offset: 448)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!39, !867, !1086, !1174, !1327}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1163, file: !1144, line: 90, baseType: !1878, size: 64, offset: 192)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1163, file: !1144, line: 91, baseType: !1880, size: 64, offset: 256)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1134, file: !1081, line: 120, baseType: !1882, size: 64, offset: 192)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!1885, !1104}
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1887)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !1888, line: 39, size: 384, elements: !1889)
!1888 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!1889 = !{!1890, !1896, !1900, !1904, !1911, !1915}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1887, file: !1888, line: 40, baseType: !1891, size: 32)
!1891 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !1888, line: 26, baseType: !185, size: 32, elements: !1892)
!1892 = !{!1893, !1894, !1895}
!1893 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!1894 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!1895 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1887, file: !1888, line: 41, baseType: !1897, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!411}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1887, file: !1888, line: 42, baseType: !1901, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!145}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1887, file: !1888, line: 43, baseType: !1905, size: 64, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!1456, !1908}
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1910, line: 177, flags: DIFlagFwdDecl)
!1910 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1887, file: !1888, line: 44, baseType: !1912, size: 64, offset: 256)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!1456}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1887, file: !1888, line: 45, baseType: !781, size: 64, offset: 320)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1134, file: !1081, line: 121, baseType: !1917, size: 64, offset: 256)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!1456, !1104}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1134, file: !1081, line: 122, baseType: !1921, size: 64, offset: 320)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{null, !1104, !637, !638}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1080, file: !1081, line: 70, baseType: !1925, size: 64, offset: 384)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1927, line: 190, size: 1152, elements: !1928)
!1927 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1928 = !{!1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !2012, !2013, !2014, !2015, !2016, !2019}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1926, file: !1927, line: 191, baseType: !105, size: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1926, file: !1927, line: 192, baseType: !105, size: 32, offset: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1926, file: !1927, line: 202, baseType: !1925, size: 64, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1926, file: !1927, line: 203, baseType: !414, size: 64, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1926, file: !1927, line: 205, baseType: !342, size: 192, align: 64, offset: 192)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1926, file: !1927, line: 207, baseType: !1456, size: 64, offset: 384)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1926, file: !1927, line: 208, baseType: !185, size: 32, offset: 448)
!1936 = !DIDerivedType(tag: DW_TAG_member, scope: !1926, file: !1927, line: 209, baseType: !1937, size: 256, offset: 512)
!1937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1926, file: !1927, line: 209, size: 256, elements: !1938)
!1938 = !{!1939, !1948, !1952}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1937, file: !1927, line: 210, baseType: !1940, size: 256)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1927, line: 153, size: 256, elements: !1941)
!1941 = !{!1942, !1943, !1944, !1947}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1940, file: !1927, line: 154, baseType: !67, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1940, file: !1927, line: 156, baseType: !654, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1940, file: !1927, line: 162, baseType: !1945, size: 64, offset: 128)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1927, line: 162, flags: DIFlagFwdDecl)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1940, file: !1927, line: 167, baseType: !67, size: 64, offset: 192)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1937, file: !1927, line: 211, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1927, line: 170, size: 64, elements: !1950)
!1950 = !{!1951}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1949, file: !1927, line: 171, baseType: !1925, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1937, file: !1927, line: 212, baseType: !1953, size: 256)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1927, line: 174, size: 256, elements: !1954)
!1954 = !{!1955, !2007, !2010, !2011}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1953, file: !1927, line: 175, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1958)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1927, line: 271, size: 768, elements: !1959)
!1959 = !{!1960, !1980, !1984, !1985, !1986, !1987, !1988, !1992, !1993, !1994, !1995, !2003}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1958, file: !1927, line: 276, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!39, !1964}
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1927, line: 251, size: 1216, elements: !1966)
!1966 = !{!1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1965, file: !1927, line: 253, baseType: !1925, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1965, file: !1927, line: 254, baseType: !867, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1965, file: !1927, line: 255, baseType: !55, size: 64, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1965, file: !1927, line: 256, baseType: !145, size: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1965, file: !1927, line: 259, baseType: !77, size: 256, offset: 256)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1965, file: !1927, line: 260, baseType: !77, size: 256, offset: 512)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1965, file: !1927, line: 261, baseType: !39, size: 32, offset: 768)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1965, file: !1927, line: 262, baseType: !131, size: 128, offset: 832)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1965, file: !1927, line: 263, baseType: !60, size: 64, offset: 960)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1965, file: !1927, line: 265, baseType: !62, size: 64, offset: 1024)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1965, file: !1927, line: 266, baseType: !411, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1965, file: !1927, line: 267, baseType: !411, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1965, file: !1927, line: 268, baseType: !1528, size: 64, offset: 1152)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1958, file: !1927, line: 277, baseType: !1981, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !1964}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1958, file: !1927, line: 290, baseType: !156, size: 64, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1958, file: !1927, line: 292, baseType: !142, size: 64, offset: 192)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1958, file: !1927, line: 293, baseType: !152, size: 64, offset: 256)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1958, file: !1927, line: 294, baseType: !148, size: 64, offset: 320)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1958, file: !1927, line: 296, baseType: !1989, size: 64, offset: 384)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!903, !1964, !60, !62, !72}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1958, file: !1927, line: 306, baseType: !62, size: 64, offset: 448)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1958, file: !1927, line: 313, baseType: !411, size: 8, offset: 512)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1958, file: !1927, line: 314, baseType: !1989, size: 64, offset: 576)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1958, file: !1927, line: 317, baseType: !1996, size: 64, offset: 640)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!1999, !1964, !2001}
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2000, line: 59, baseType: !185)
!2000 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !164, line: 61, flags: DIFlagFwdDecl)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1958, file: !1927, line: 320, baseType: !2004, size: 64, offset: 704)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!39, !1964, !1327}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1953, file: !1927, line: 176, baseType: !2008, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1927, line: 35, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1953, file: !1927, line: 177, baseType: !72, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1953, file: !1927, line: 178, baseType: !1925, size: 64, offset: 192)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1926, file: !1927, line: 215, baseType: !145, size: 64, offset: 768)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1926, file: !1927, line: 221, baseType: !318, size: 64, offset: 832)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1926, file: !1927, line: 223, baseType: !123, size: 16, offset: 896)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1926, file: !1927, line: 224, baseType: !585, size: 16, offset: 912)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1926, file: !1927, line: 225, baseType: !2017, size: 64, offset: 960)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1927, line: 36, flags: DIFlagFwdDecl)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1926, file: !1927, line: 227, baseType: !176, size: 128, align: 64, offset: 1024)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1080, file: !1081, line: 71, baseType: !2021, size: 32, offset: 448)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2022, line: 19, size: 32, elements: !2023)
!2022 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2023 = !{!2024}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2021, file: !2022, line: 20, baseType: !233, size: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1080, file: !1081, line: 73, baseType: !185, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1080, file: !1081, line: 74, baseType: !185, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1080, file: !1081, line: 75, baseType: !185, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1080, file: !1081, line: 76, baseType: !185, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1080, file: !1081, line: 77, baseType: !185, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1077, file: !1062, line: 47, baseType: !1060, size: 64, offset: 512)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1077, file: !1062, line: 48, baseType: !1086, size: 64, offset: 576)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1077, file: !1062, line: 49, baseType: !2033, size: 64, offset: 640)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !1062, line: 49, flags: DIFlagFwdDecl)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1077, file: !1062, line: 50, baseType: !611, size: 64, offset: 704)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1061, file: !1062, line: 418, baseType: !2037, size: 64, offset: 1408)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !1062, line: 53, size: 448, elements: !2039)
!2039 = !{!2040, !2041, !2046, !2050, !2054, !2058}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2038, file: !1062, line: 54, baseType: !1151, size: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2038, file: !1062, line: 55, baseType: !2042, size: 64, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!903, !2037, !2045, !60}
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2038, file: !1062, line: 57, baseType: !2047, size: 64, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!903, !2037, !2045, !414, !62}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2038, file: !1062, line: 59, baseType: !2051, size: 64, offset: 256)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !1060, !414}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2038, file: !1062, line: 60, baseType: !2055, size: 64, offset: 320)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!39, !1060}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2038, file: !1062, line: 61, baseType: !2059, size: 64, offset: 384)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null, !1060}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1061, file: !1062, line: 419, baseType: !414, size: 64, offset: 1472)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1061, file: !1062, line: 420, baseType: !414, size: 64, offset: 1536)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1061, file: !1062, line: 421, baseType: !1086, size: 64, offset: 1600)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1061, file: !1062, line: 424, baseType: !2066, size: 64, offset: 1664)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2068)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !1062, line: 424, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1061, file: !1062, line: 425, baseType: !2070, size: 64, offset: 1728)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1061, file: !1062, line: 426, baseType: !185, size: 32, offset: 1792)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1061, file: !1062, line: 435, baseType: !77, size: 256, offset: 1856)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1061, file: !1062, line: 437, baseType: !2075, size: 64, offset: 2112)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2077, line: 69, size: 320, elements: !2078)
!2077 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2078 = !{!2079, !2080, !2081, !2098, !2100, !2104, !2105}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2076, file: !2077, line: 70, baseType: !414, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2076, file: !2077, line: 71, baseType: !1060, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2076, file: !2077, line: 72, baseType: !2082, size: 64, offset: 128)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2084)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2077, line: 47, size: 256, elements: !2085)
!2085 = !{!2086, !2087, !2093, !2097}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2084, file: !2077, line: 49, baseType: !185, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2084, file: !2077, line: 51, baseType: !2088, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!39, !414, !2091}
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2076)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2084, file: !2077, line: 53, baseType: !2094, size: 64, offset: 128)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!39, !60, !2091}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2084, file: !2077, line: 55, baseType: !781, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2076, file: !2077, line: 73, baseType: !2099, size: 16, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2076, file: !2077, line: 74, baseType: !2101, size: 8, offset: 208)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !88, line: 16, baseType: !2102)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !90, line: 20, baseType: !2103)
!2103 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2076, file: !2077, line: 75, baseType: !113, size: 8, offset: 216)
!2105 = !DIDerivedType(tag: DW_TAG_member, scope: !2076, file: !2077, line: 76, baseType: !2106, size: 64, offset: 256)
!2106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2076, file: !2077, line: 76, size: 64, elements: !2107)
!2107 = !{!2108, !2109, !2116}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2106, file: !2077, line: 77, baseType: !145, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2106, file: !2077, line: 78, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2112)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2077, line: 86, size: 128, elements: !2113)
!2113 = !{!2114, !2115}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2112, file: !2077, line: 87, baseType: !185, size: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2112, file: !2077, line: 88, baseType: !60, size: 64, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2106, file: !2077, line: 79, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2119)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2077, line: 92, size: 256, elements: !2120)
!2120 = !{!2121, !2122, !2123, !2125, !2126}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2119, file: !2077, line: 94, baseType: !185, size: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2119, file: !2077, line: 95, baseType: !185, size: 32, offset: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2119, file: !2077, line: 96, baseType: !2124, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2119, file: !2077, line: 97, baseType: !2082, size: 64, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2119, file: !2077, line: 98, baseType: !145, size: 64, offset: 192)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1061, file: !1062, line: 438, baseType: !185, size: 32, offset: 2176)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1061, file: !1062, line: 441, baseType: !185, size: 32, offset: 2208)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1061, file: !1062, line: 442, baseType: !2066, size: 64, offset: 2240)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1061, file: !1062, line: 443, baseType: !2070, size: 64, offset: 2304)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1061, file: !1062, line: 444, baseType: !411, size: 8, offset: 2368)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1061, file: !1062, line: 451, baseType: !411, size: 8, offset: 2376)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1061, file: !1062, line: 454, baseType: !185, size: 32, offset: 2400)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1061, file: !1062, line: 455, baseType: !2135, size: 64, offset: 2432)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2137, line: 23, size: 96, elements: !2138)
!2137 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2138 = !{!2139, !2140, !2141}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2136, file: !2137, line: 24, baseType: !39, size: 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2136, file: !2137, line: 24, baseType: !39, size: 32, offset: 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2136, file: !2137, line: 24, baseType: !39, size: 32, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1061, file: !1062, line: 458, baseType: !2143, size: 64, offset: 2496)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!39}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1061, file: !1062, line: 460, baseType: !2147, size: 4032, align: 512, offset: 2560)
!2147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2148, size: 4032, elements: !2164)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !1062, line: 362, size: 576, elements: !2149)
!2149 = !{!2150, !2151, !2152}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2148, file: !1062, line: 363, baseType: !145, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2148, file: !1062, line: 364, baseType: !185, size: 32, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2148, file: !1062, line: 367, baseType: !2153, size: 448, offset: 128)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !1062, line: 319, size: 448, elements: !2154)
!2154 = !{!2155, !2156}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2153, file: !1062, line: 320, baseType: !1060, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2153, file: !1062, line: 321, baseType: !2157, size: 384, offset: 64)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2158, line: 40, size: 384, elements: !2159)
!2158 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2159 = !{!2160}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2157, file: !2158, line: 41, baseType: !2161, size: 384, align: 64)
!2161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 384, align: 64, elements: !2162)
!2162 = !{!2163}
!2163 = !DISubrange(count: 2)
!2164 = !{!2165}
!2165 = !DISubrange(count: 7)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1061, file: !1062, line: 463, baseType: !2167, size: 192, offset: 6592)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2168, line: 8, size: 192, elements: !2169)
!2168 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2169 = !{!2170, !2171, !2173}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2167, file: !2168, line: 10, baseType: !185, size: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2167, file: !2168, line: 11, baseType: !2172, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2167, file: !2168, line: 12, baseType: !2174, size: 64, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2176, line: 59, size: 48, elements: !2177)
!2176 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2177 = !{!2178, !2179, !2180, !2181, !2182, !2183}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2175, file: !2176, line: 60, baseType: !1473, size: 16)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2175, file: !2176, line: 61, baseType: !1473, size: 16, offset: 16)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2175, file: !2176, line: 63, baseType: !185, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2175, file: !2176, line: 64, baseType: !185, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2175, file: !2176, line: 65, baseType: !185, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2175, file: !2176, line: 66, baseType: !185, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1061, file: !1062, line: 465, baseType: !67, size: 64, offset: 6784)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1061, file: !1062, line: 469, baseType: !185, size: 32, offset: 6848)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1061, file: !1062, line: 470, baseType: !131, size: 128, offset: 6912)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1061, file: !1062, line: 471, baseType: !2188, size: 64, offset: 7040)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2190, line: 33, size: 96, elements: !2191)
!2190 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2191 = !{!2192, !2193, !2194, !2195}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2189, file: !2190, line: 37, baseType: !39, size: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2189, file: !2190, line: 43, baseType: !39, size: 32, offset: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2189, file: !2190, line: 45, baseType: !123, size: 16, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2189, file: !2190, line: 47, baseType: !123, size: 16, offset: 80)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1061, file: !1062, line: 476, baseType: !2197, size: 64, offset: 7104)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !1062, line: 378, size: 256, elements: !2199)
!2199 = !{!2200, !2216, !2217, !2218}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2198, file: !1062, line: 379, baseType: !2201, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2203, line: 204, baseType: !2204)
!2203 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2203, line: 197, size: 192, elements: !2205)
!2205 = !{!2206, !2208, !2209, !2210, !2212, !2214}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2204, file: !2203, line: 198, baseType: !2207, size: 32)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2203, line: 21, baseType: !376)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2204, file: !2203, line: 199, baseType: !115, size: 8, offset: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2204, file: !2203, line: 200, baseType: !115, size: 8, offset: 40)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2204, file: !2203, line: 201, baseType: !2211, size: 16, offset: 48)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2203, line: 17, baseType: !122)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2204, file: !2203, line: 202, baseType: !2213, size: 64, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2203, line: 16, baseType: !319)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2204, file: !2203, line: 203, baseType: !2215, size: 64, offset: 128)
!2215 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2203, line: 22, baseType: !319)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2198, file: !1062, line: 380, baseType: !185, size: 32, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2198, file: !1062, line: 381, baseType: !60, size: 64, offset: 128)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2198, file: !1062, line: 382, baseType: !60, size: 64, offset: 192)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1061, file: !1062, line: 477, baseType: !2198, size: 256, offset: 7168)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1061, file: !1062, line: 480, baseType: !2221, size: 64, offset: 7424)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !1062, line: 480, flags: DIFlagFwdDecl)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1061, file: !1062, line: 483, baseType: !2224, size: 64, offset: 7488)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !1062, line: 483, flags: DIFlagFwdDecl)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1061, file: !1062, line: 488, baseType: !60, size: 64, offset: 7552)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1061, file: !1062, line: 492, baseType: !145, size: 64, offset: 7616)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1061, file: !1062, line: 493, baseType: !185, size: 32, offset: 7680)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1061, file: !1062, line: 495, baseType: !145, size: 64, offset: 7744)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1061, file: !1062, line: 496, baseType: !185, size: 32, offset: 7808)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1061, file: !1062, line: 499, baseType: !185, size: 32, offset: 7840)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1061, file: !1062, line: 500, baseType: !2233, size: 64, offset: 7872)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2235, line: 45, baseType: !2236)
!2235 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1061, file: !1062, line: 503, baseType: !185, size: 32, offset: 7936)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1061, file: !1062, line: 504, baseType: !2239, size: 64, offset: 8000)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2242, line: 96, size: 192, elements: !2243)
!2242 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2243 = !{!2244, !2245, !2298, !2301}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2241, file: !2242, line: 97, baseType: !185, size: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2241, file: !2242, line: 98, baseType: !2246, size: 64, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2242, line: 24, size: 3072, elements: !2248)
!2248 = !{!2249, !2251, !2252, !2253, !2254, !2267, !2268, !2269, !2270, !2282, !2283, !2284, !2295, !2296, !2297}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2247, file: !2242, line: 26, baseType: !2250, size: 128)
!2250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 128, elements: !2162)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2247, file: !2242, line: 27, baseType: !2250, size: 128, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2247, file: !2242, line: 28, baseType: !39, size: 32, offset: 256)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2247, file: !2242, line: 31, baseType: !187, size: 32, align: 512, offset: 512)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2247, file: !2242, line: 32, baseType: !2255, size: 960, offset: 576)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2256, line: 206, size: 960, elements: !2257)
!2256 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2257 = !{!2258, !2259, !2262, !2264, !2265, !2266}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2255, file: !2256, line: 207, baseType: !179, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2255, file: !2256, line: 208, baseType: !2260, size: 256, offset: 64)
!2260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2261, size: 256, elements: !251)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2255, file: !2256, line: 209, baseType: !2263, size: 256, offset: 320)
!2263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 256, elements: !251)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2255, file: !2256, line: 213, baseType: !674, size: 64, offset: 576)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2255, file: !2256, line: 215, baseType: !676, size: 256, offset: 640)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2255, file: !2256, line: 216, baseType: !113, size: 8, offset: 896)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2247, file: !2242, line: 33, baseType: !67, size: 64, offset: 1536)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2247, file: !2242, line: 34, baseType: !67, size: 64, offset: 1600)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2247, file: !2242, line: 35, baseType: !411, size: 8, offset: 1664)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2247, file: !2242, line: 36, baseType: !2271, size: 320, offset: 1728)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2272, line: 11, size: 320, elements: !2273)
!2272 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2273 = !{!2274, !2275, !2276, !2281}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2271, file: !2272, line: 16, baseType: !246, size: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2271, file: !2272, line: 17, baseType: !67, size: 64, offset: 128)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2271, file: !2272, line: 18, baseType: !2277, size: 64, offset: 192)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{null, !2280}
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2271, file: !2272, line: 19, baseType: !375, size: 32, offset: 256)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2247, file: !2242, line: 37, baseType: !545, size: 256, offset: 2048)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2247, file: !2242, line: 38, baseType: !176, size: 128, align: 64, offset: 2304)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2247, file: !2242, line: 39, baseType: !2285, size: 64, offset: 2432)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2242, line: 49, size: 768, elements: !2287)
!2287 = !{!2288, !2289, !2290, !2291, !2292, !2293, !2294}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2286, file: !2242, line: 50, baseType: !187, size: 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2286, file: !2242, line: 51, baseType: !2263, size: 256, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2286, file: !2242, line: 53, baseType: !2263, size: 256, offset: 320)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2286, file: !2242, line: 54, baseType: !67, size: 64, offset: 576)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2286, file: !2242, line: 55, baseType: !2285, size: 64, offset: 640)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2286, file: !2242, line: 56, baseType: !39, size: 32, offset: 704)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2286, file: !2242, line: 57, baseType: !39, size: 32, offset: 736)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2247, file: !2242, line: 40, baseType: !67, size: 64, offset: 2496)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2247, file: !2242, line: 42, baseType: !39, size: 32, offset: 2560)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2247, file: !2242, line: 43, baseType: !2240, size: 64, offset: 2624)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2241, file: !2242, line: 99, baseType: !2299, offset: 128)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2300, line: 211, elements: !1361)
!2300 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2241, file: !2242, line: 100, baseType: !2302, size: 64, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2242, line: 63, size: 3008, elements: !2304)
!2304 = !{!2305, !2306, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2336}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2303, file: !2242, line: 64, baseType: !2285, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2303, file: !2242, line: 65, baseType: !2307, size: 192, offset: 64)
!2307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2285, size: 192, elements: !224)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2303, file: !2242, line: 67, baseType: !39, size: 32, offset: 256)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2303, file: !2242, line: 68, baseType: !77, size: 256, offset: 320)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2303, file: !2242, line: 69, baseType: !187, size: 32, offset: 576)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2303, file: !2242, line: 70, baseType: !77, size: 256, offset: 640)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2303, file: !2242, line: 71, baseType: !67, size: 64, offset: 896)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2303, file: !2242, line: 72, baseType: !67, size: 64, offset: 960)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2303, file: !2242, line: 73, baseType: !67, size: 64, offset: 1024)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2303, file: !2242, line: 74, baseType: !67, size: 64, offset: 1088)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2303, file: !2242, line: 75, baseType: !67, size: 64, offset: 1152)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2303, file: !2242, line: 76, baseType: !67, size: 64, offset: 1216)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2303, file: !2242, line: 77, baseType: !67, size: 64, offset: 1280)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2303, file: !2242, line: 78, baseType: !67, size: 64, offset: 1344)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2303, file: !2242, line: 79, baseType: !411, size: 8, offset: 1408)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2303, file: !2242, line: 80, baseType: !67, size: 64, offset: 1472)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2303, file: !2242, line: 81, baseType: !77, size: 256, offset: 1536)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2303, file: !2242, line: 82, baseType: !612, size: 256, offset: 1792)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2303, file: !2242, line: 84, baseType: !105, size: 32, offset: 2048)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2303, file: !2242, line: 87, baseType: !67, size: 64, offset: 2112)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2303, file: !2242, line: 88, baseType: !67, size: 64, offset: 2176)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2303, file: !2242, line: 89, baseType: !2328, size: 704, offset: 2240)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !546, line: 111, size: 704, elements: !2329)
!2329 = !{!2330, !2331, !2332, !2335}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2328, file: !546, line: 112, baseType: !545, size: 256)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2328, file: !546, line: 113, baseType: !2271, size: 320, offset: 256)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2328, file: !546, line: 116, baseType: !2333, size: 64, offset: 576)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !546, line: 18, flags: DIFlagFwdDecl)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2328, file: !546, line: 117, baseType: !39, size: 32, offset: 640)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2303, file: !2242, line: 90, baseType: !2240, size: 64, offset: 2944)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1061, file: !1062, line: 515, baseType: !2338, size: 64, offset: 8064)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2340, line: 117, size: 128, elements: !2341)
!2340 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2341 = !{!2342, !2343, !2344}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2339, file: !2340, line: 118, baseType: !335, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2339, file: !2340, line: 119, baseType: !335, size: 32, offset: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2339, file: !2340, line: 120, baseType: !674, size: 64, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1061, file: !1062, line: 516, baseType: !185, size: 32, offset: 8128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1061, file: !1062, line: 519, baseType: !185, size: 32, offset: 8160)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1061, file: !1062, line: 520, baseType: !2348, size: 64, offset: 8192)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1061, file: !1062, line: 523, baseType: !2350, size: 64, offset: 8256)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !1062, line: 523, flags: DIFlagFwdDecl)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1061, file: !1062, line: 524, baseType: !185, size: 32, offset: 8320)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1061, file: !1062, line: 525, baseType: !2355, size: 64, offset: 8384)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !2358, line: 28, size: 192, elements: !2359)
!2358 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!2359 = !{!2360, !2361, !2362}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2357, file: !2358, line: 29, baseType: !414, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !2357, file: !2358, line: 30, baseType: !414, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !2357, file: !2358, line: 31, baseType: !67, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1061, file: !1062, line: 526, baseType: !185, size: 32, offset: 8448)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1061, file: !1062, line: 533, baseType: !145, size: 64, offset: 8512)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1061, file: !1062, line: 534, baseType: !185, size: 32, offset: 8576)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1061, file: !1062, line: 535, baseType: !2367, size: 64, offset: 8640)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1061, file: !1062, line: 536, baseType: !185, size: 32, offset: 8704)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1061, file: !1062, line: 539, baseType: !39, size: 32, offset: 8736)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1061, file: !1062, line: 540, baseType: !2371, size: 64, offset: 8768)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2373, line: 32, size: 64, elements: !2374)
!2373 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2374 = !{!2375, !2376}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2372, file: !2373, line: 33, baseType: !335, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2372, file: !2373, line: 34, baseType: !335, size: 32, offset: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1061, file: !1062, line: 563, baseType: !131, size: 128, offset: 8832)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1061, file: !1062, line: 565, baseType: !131, size: 128, offset: 8960)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1061, file: !1062, line: 568, baseType: !2380, size: 64, offset: 9088)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{null}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1061, file: !1062, line: 570, baseType: !105, size: 32, offset: 9152)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1053, file: !979, line: 179, baseType: !2385, size: 512, offset: 128)
!2385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 512, elements: !2386)
!2386 = !{!2387}
!2387 = !DISubrange(count: 8)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !978, file: !979, line: 101, baseType: !414, size: 64, offset: 896)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !978, file: !979, line: 102, baseType: !145, size: 64, offset: 960)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !978, file: !979, line: 103, baseType: !145, size: 64, offset: 1024)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags", scope: !978, file: !979, line: 104, baseType: !185, size: 32, offset: 1088)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags_mask", scope: !978, file: !979, line: 105, baseType: !185, size: 32, offset: 1120)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !978, file: !979, line: 106, baseType: !185, size: 32, offset: 1152)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !978, file: !979, line: 107, baseType: !2395, size: 8, offset: 1184, flags: DIFlagBitField, extraData: i64 1184)
!2395 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_purpose", file: !979, line: 29, baseType: !185, size: 32, elements: !2396)
!2396 = !{!2397, !2398, !2399}
!2397 = !DIEnumerator(name: "FS_CONTEXT_FOR_MOUNT", value: 0)
!2398 = !DIEnumerator(name: "FS_CONTEXT_FOR_SUBMOUNT", value: 1)
!2399 = !DIEnumerator(name: "FS_CONTEXT_FOR_RECONFIGURE", value: 2)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !978, file: !979, line: 108, baseType: !2401, size: 8, offset: 1192, flags: DIFlagBitField, extraData: i64 1184)
!2401 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_phase", file: !979, line: 38, baseType: !185, size: 32, elements: !2402)
!2402 = !{!2403, !2404, !2405, !2406, !2407, !2408, !2409}
!2403 = !DIEnumerator(name: "FS_CONTEXT_CREATE_PARAMS", value: 0)
!2404 = !DIEnumerator(name: "FS_CONTEXT_CREATING", value: 1)
!2405 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_MOUNT", value: 2)
!2406 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_RECONF", value: 3)
!2407 = !DIEnumerator(name: "FS_CONTEXT_RECONF_PARAMS", value: 4)
!2408 = !DIEnumerator(name: "FS_CONTEXT_RECONFIGURING", value: 5)
!2409 = !DIEnumerator(name: "FS_CONTEXT_FAILED", value: 6)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !978, file: !979, line: 109, baseType: !411, size: 1, offset: 1200, flags: DIFlagBitField, extraData: i64 1184)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !978, file: !979, line: 110, baseType: !411, size: 1, offset: 1201, flags: DIFlagBitField, extraData: i64 1184)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "oldapi", scope: !978, file: !979, line: 111, baseType: !411, size: 1, offset: 1202, flags: DIFlagBitField, extraData: i64 1184)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !978, file: !979, line: 112, baseType: !411, size: 1, offset: 1203, flags: DIFlagBitField, extraData: i64 1184)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !969, file: !164, line: 2377, baseType: !2415, size: 64, offset: 192)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2417)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !2418, line: 39, size: 256, elements: !2419)
!2418 = !DIFile(filename: "./include/linux/fs_parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7e6f8b2e05f10a6300994e1bfb8d6d3")
!2419 = !{!2420, !2421, !2438, !2439, !2440}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2417, file: !2418, line: 40, baseType: !414, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2417, file: !2418, line: 41, baseType: !2422, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "fs_param_type", file: !2418, line: 22, baseType: !2424)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!39, !2426, !2415, !998, !2427}
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parse_result", file: !2418, line: 53, size: 128, elements: !2429)
!2429 = !{!2430, !2431}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "negated", scope: !2428, file: !2418, line: 54, baseType: !411, size: 8)
!2431 = !DIDerivedType(tag: DW_TAG_member, scope: !2428, file: !2418, line: 55, baseType: !2432, size: 64, offset: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2428, file: !2418, line: 55, size: 64, elements: !2433)
!2433 = !{!2434, !2435, !2436, !2437}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !2432, file: !2418, line: 56, baseType: !411, size: 8)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "int_32", scope: !2432, file: !2418, line: 57, baseType: !39, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "uint_32", scope: !2432, file: !2418, line: 58, baseType: !185, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "uint_64", scope: !2432, file: !2418, line: 59, baseType: !318, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !2417, file: !2418, line: 42, baseType: !113, size: 8, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2417, file: !2418, line: 43, baseType: !123, size: 16, offset: 144)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2417, file: !2418, line: 47, baseType: !1456, size: 64, offset: 192)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !969, file: !164, line: 2378, baseType: !2442, size: 64, offset: 256)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!710, !968, !39, !414, !145}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !969, file: !164, line: 2380, baseType: !2446, size: 64, offset: 320)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{null, !959}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !969, file: !164, line: 2381, baseType: !1060, size: 64, offset: 384)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !969, file: !164, line: 2382, baseType: !968, size: 64, offset: 448)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !969, file: !164, line: 2383, baseType: !242, size: 64, offset: 512)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !969, file: !164, line: 2385, baseType: !2453, offset: 576)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2300, line: 206, elements: !1361)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !969, file: !164, line: 2386, baseType: !2453, offset: 576)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !969, file: !164, line: 2387, baseType: !2453, offset: 576)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !969, file: !164, line: 2388, baseType: !2457, offset: 576)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2453, elements: !224)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !969, file: !164, line: 2390, baseType: !2453, offset: 576)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !969, file: !164, line: 2391, baseType: !2453, offset: 576)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !969, file: !164, line: 2392, baseType: !2453, offset: 576)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !969, file: !164, line: 2393, baseType: !2453, offset: 576)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !960, file: !164, line: 1197, baseType: !2463, size: 64, offset: 384)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2465)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !164, line: 2057, size: 1664, elements: !2466)
!2466 = !{!2467, !2471, !2475, !2476, !2480, !2484, !2488, !2489, !2490, !2494, !2502, !2506, !2507, !2508, !2514, !2518, !2519, !2523, !2524, !2525, !2526, !2530, !2534, !2587, !2602, !2603}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2465, file: !164, line: 2058, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!750, !959}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2465, file: !164, line: 2059, baseType: !2472, size: 64, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{null, !750}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2465, file: !164, line: 2060, baseType: !2472, size: 64, offset: 128)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2465, file: !164, line: 2062, baseType: !2477, size: 64, offset: 192)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{null, !750, !39}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2465, file: !164, line: 2063, baseType: !2481, size: 64, offset: 256)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!39, !750, !1676}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2465, file: !164, line: 2064, baseType: !2485, size: 64, offset: 320)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!39, !750}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2465, file: !164, line: 2065, baseType: !2472, size: 64, offset: 384)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2465, file: !164, line: 2066, baseType: !2446, size: 64, offset: 448)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2465, file: !164, line: 2067, baseType: !2491, size: 64, offset: 512)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!39, !959, !39}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2465, file: !164, line: 2068, baseType: !2495, size: 64, offset: 576)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!39, !959, !2498}
!2498 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !164, line: 2052, baseType: !185, size: 32, elements: !2499)
!2499 = !{!2500, !2501}
!2500 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!2501 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2465, file: !164, line: 2069, baseType: !2503, size: 64, offset: 640)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!39, !959}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2465, file: !164, line: 2070, baseType: !2495, size: 64, offset: 704)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2465, file: !164, line: 2071, baseType: !2503, size: 64, offset: 768)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2465, file: !164, line: 2072, baseType: !2509, size: 64, offset: 832)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!39, !710, !2512}
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !164, line: 62, flags: DIFlagFwdDecl)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2465, file: !164, line: 2073, baseType: !2515, size: 64, offset: 896)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!39, !959, !2172, !60}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2465, file: !164, line: 2074, baseType: !2446, size: 64, offset: 960)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2465, file: !164, line: 2076, baseType: !2520, size: 64, offset: 1024)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!39, !55, !710}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2465, file: !164, line: 2077, baseType: !2520, size: 64, offset: 1088)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2465, file: !164, line: 2078, baseType: !2520, size: 64, offset: 1152)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2465, file: !164, line: 2079, baseType: !2520, size: 64, offset: 1216)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2465, file: !164, line: 2081, baseType: !2527, size: 64, offset: 1280)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!903, !959, !39, !60, !62, !72}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2465, file: !164, line: 2082, baseType: !2531, size: 64, offset: 1344)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!903, !959, !39, !414, !62, !72}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2465, file: !164, line: 2083, baseType: !2535, size: 64, offset: 1408)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!2538, !750}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !2541, line: 296, size: 1664, elements: !2542)
!2541 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!2542 = !{!2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2572, !2573, !2574}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2540, file: !2541, line: 297, baseType: !246, size: 128)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2540, file: !2541, line: 298, baseType: !131, size: 128, offset: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2540, file: !2541, line: 299, baseType: !131, size: 128, offset: 256)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2540, file: !2541, line: 300, baseType: !131, size: 128, offset: 384)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2540, file: !2541, line: 301, baseType: !77, size: 256, offset: 512)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2540, file: !2541, line: 302, baseType: !187, size: 32, offset: 768)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2540, file: !2541, line: 303, baseType: !105, size: 32, offset: 800)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2540, file: !2541, line: 304, baseType: !959, size: 64, offset: 832)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2540, file: !2541, line: 305, baseType: !2552, size: 64, offset: 896)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !2541, line: 68, size: 64, elements: !2553)
!2553 = !{!2554, !2566}
!2554 = !DIDerivedType(tag: DW_TAG_member, scope: !2552, file: !2541, line: 69, baseType: !2555, size: 32)
!2555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2552, file: !2541, line: 69, size: 32, elements: !2556)
!2556 = !{!2557, !2558, !2559}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2555, file: !2541, line: 70, baseType: !281, size: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2555, file: !2541, line: 71, baseType: !299, size: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2555, file: !2541, line: 72, baseType: !2560, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2561, line: 24, baseType: !2562)
!2561 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2561, line: 22, size: 32, elements: !2563)
!2563 = !{!2564}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2562, file: !2561, line: 23, baseType: !2565, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2561, line: 20, baseType: !287)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2552, file: !2541, line: 74, baseType: !2567, size: 32, offset: 32)
!2567 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !2541, line: 54, baseType: !185, size: 32, elements: !2568)
!2568 = !{!2569, !2570, !2571}
!2569 = !DIEnumerator(name: "USRQUOTA", value: 0)
!2570 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!2571 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2540, file: !2541, line: 306, baseType: !72, size: 64, offset: 960)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2540, file: !2541, line: 307, baseType: !67, size: 64, offset: 1024)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2540, file: !2541, line: 308, baseType: !2575, size: 576, offset: 1088)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !2541, line: 205, size: 576, elements: !2576)
!2576 = !{!2577, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2575, file: !2541, line: 206, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !2541, line: 66, baseType: !74)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2575, file: !2541, line: 207, baseType: !2578, size: 64, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2575, file: !2541, line: 208, baseType: !2578, size: 64, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2575, file: !2541, line: 209, baseType: !2578, size: 64, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2575, file: !2541, line: 210, baseType: !2578, size: 64, offset: 256)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2575, file: !2541, line: 211, baseType: !2578, size: 64, offset: 320)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2575, file: !2541, line: 212, baseType: !2578, size: 64, offset: 384)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2575, file: !2541, line: 213, baseType: !366, size: 64, offset: 448)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2575, file: !2541, line: 214, baseType: !366, size: 64, offset: 512)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2465, file: !164, line: 2085, baseType: !2588, size: 64, offset: 1472)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!674, !959, !2591}
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2593, line: 15, size: 256, elements: !2594)
!2593 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2594 = !{!2595, !2596, !2597, !2598, !2599}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2592, file: !2593, line: 16, baseType: !955, size: 32)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2592, file: !2593, line: 19, baseType: !39, size: 32, offset: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2592, file: !2593, line: 26, baseType: !67, size: 64, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2592, file: !2593, line: 33, baseType: !67, size: 64, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2592, file: !2593, line: 36, baseType: !2600, size: 64, offset: 192)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2593, line: 36, flags: DIFlagFwdDecl)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2465, file: !164, line: 2087, baseType: !2588, size: 64, offset: 1536)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2465, file: !164, line: 2089, baseType: !2446, size: 64, offset: 1600)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !960, file: !164, line: 1198, baseType: !2605, size: 64, offset: 448)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2607)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !2541, line: 324, size: 704, elements: !2608)
!2608 = !{!2609, !2613, !2617, !2621, !2622, !2623, !2624, !2625, !2630, !2635, !2639}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2607, file: !2541, line: 325, baseType: !2610, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!39, !2539}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2607, file: !2541, line: 326, baseType: !2614, size: 64, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!2539, !959, !39}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2607, file: !2541, line: 327, baseType: !2618, size: 64, offset: 128)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{null, !2539}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2607, file: !2541, line: 328, baseType: !2610, size: 64, offset: 192)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2607, file: !2541, line: 329, baseType: !2610, size: 64, offset: 256)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2607, file: !2541, line: 330, baseType: !2610, size: 64, offset: 320)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2607, file: !2541, line: 331, baseType: !2491, size: 64, offset: 384)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2607, file: !2541, line: 334, baseType: !2626, size: 64, offset: 448)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!2629, !750}
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2607, file: !2541, line: 335, baseType: !2631, size: 64, offset: 512)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!39, !750, !2634}
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2607, file: !2541, line: 337, baseType: !2636, size: 64, offset: 576)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!39, !750, !2629}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2607, file: !2541, line: 339, baseType: !2640, size: 64, offset: 640)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!39, !959, !2643}
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !960, file: !164, line: 1199, baseType: !2645, size: 64, offset: 512)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2647)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !2541, line: 430, size: 704, elements: !2648)
!2648 = !{!2649, !2653, !2654, !2658, !2659, !2660, !2675, !2698, !2702, !2703, !2726}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2647, file: !2541, line: 431, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!39, !959, !39, !39, !872}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2647, file: !2541, line: 432, baseType: !2491, size: 64, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2647, file: !2541, line: 433, baseType: !2655, size: 64, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!39, !959, !185}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2647, file: !2541, line: 434, baseType: !2655, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2647, file: !2541, line: 435, baseType: !2491, size: 64, offset: 256)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2647, file: !2541, line: 436, baseType: !2661, size: 64, offset: 320)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!39, !959, !39, !2664}
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !2541, line: 417, size: 256, elements: !2666)
!2666 = !{!2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2665, file: !2541, line: 418, baseType: !39, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2665, file: !2541, line: 419, baseType: !185, size: 32, offset: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2665, file: !2541, line: 420, baseType: !185, size: 32, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2665, file: !2541, line: 422, baseType: !185, size: 32, offset: 96)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2665, file: !2541, line: 423, baseType: !185, size: 32, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2665, file: !2541, line: 424, baseType: !185, size: 32, offset: 160)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2665, file: !2541, line: 425, baseType: !185, size: 32, offset: 192)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2665, file: !2541, line: 426, baseType: !185, size: 32, offset: 224)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2647, file: !2541, line: 437, baseType: !2676, size: 64, offset: 384)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!39, !959, !2552, !2679}
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !2541, line: 345, size: 960, elements: !2681)
!2681 = !{!2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2680, file: !2541, line: 346, baseType: !39, size: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2680, file: !2541, line: 347, baseType: !318, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2680, file: !2541, line: 348, baseType: !318, size: 64, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2680, file: !2541, line: 349, baseType: !318, size: 64, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2680, file: !2541, line: 350, baseType: !318, size: 64, offset: 256)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2680, file: !2541, line: 351, baseType: !318, size: 64, offset: 320)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2680, file: !2541, line: 352, baseType: !318, size: 64, offset: 384)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2680, file: !2541, line: 353, baseType: !87, size: 64, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2680, file: !2541, line: 355, baseType: !87, size: 64, offset: 512)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2680, file: !2541, line: 356, baseType: !39, size: 32, offset: 576)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2680, file: !2541, line: 357, baseType: !39, size: 32, offset: 608)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2680, file: !2541, line: 358, baseType: !318, size: 64, offset: 640)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2680, file: !2541, line: 359, baseType: !318, size: 64, offset: 704)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2680, file: !2541, line: 360, baseType: !318, size: 64, offset: 768)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2680, file: !2541, line: 361, baseType: !87, size: 64, offset: 832)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2680, file: !2541, line: 362, baseType: !39, size: 32, offset: 896)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2647, file: !2541, line: 438, baseType: !2699, size: 64, offset: 448)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!39, !959, !2643, !2679}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2647, file: !2541, line: 440, baseType: !2676, size: 64, offset: 512)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2647, file: !2541, line: 441, baseType: !2704, size: 64, offset: 576)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!39, !959, !2707}
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !2541, line: 411, size: 1408, elements: !2709)
!2709 = !{!2710, !2711}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2708, file: !2541, line: 412, baseType: !185, size: 32)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2708, file: !2541, line: 413, baseType: !2712, size: 1344, offset: 64)
!2712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2713, size: 1344, elements: !224)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !2541, line: 397, size: 448, elements: !2714)
!2714 = !{!2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2725}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2713, file: !2541, line: 398, baseType: !185, size: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2713, file: !2541, line: 399, baseType: !185, size: 32, offset: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2713, file: !2541, line: 401, baseType: !185, size: 32, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2713, file: !2541, line: 402, baseType: !185, size: 32, offset: 96)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2713, file: !2541, line: 403, baseType: !185, size: 32, offset: 128)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2713, file: !2541, line: 404, baseType: !185, size: 32, offset: 160)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2713, file: !2541, line: 405, baseType: !185, size: 32, offset: 192)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2713, file: !2541, line: 406, baseType: !320, size: 64, offset: 256)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2713, file: !2541, line: 407, baseType: !2724, size: 64, offset: 320)
!2724 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !63, line: 132, baseType: !318)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2713, file: !2541, line: 408, baseType: !2724, size: 64, offset: 384)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2647, file: !2541, line: 442, baseType: !2655, size: 64, offset: 640)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !960, file: !164, line: 1200, baseType: !2728, size: 64, offset: 576)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2730)
!2730 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !164, line: 54, flags: DIFlagFwdDecl)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !960, file: !164, line: 1201, baseType: !67, size: 64, offset: 640)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !960, file: !164, line: 1202, baseType: !67, size: 64, offset: 704)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !960, file: !164, line: 1203, baseType: !67, size: 64, offset: 768)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !960, file: !164, line: 1204, baseType: !710, size: 64, offset: 832)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !960, file: !164, line: 1205, baseType: !350, size: 320, offset: 896)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !960, file: !164, line: 1206, baseType: !39, size: 32, offset: 1216)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !960, file: !164, line: 1207, baseType: !105, size: 32, offset: 1248)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !960, file: !164, line: 1209, baseType: !145, size: 64, offset: 1280)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !960, file: !164, line: 1211, baseType: !2740, size: 64, offset: 1344)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2743)
!2743 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !164, line: 1211, flags: DIFlagFwdDecl)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !960, file: !164, line: 1223, baseType: !2745, size: 64, offset: 1408)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !727, line: 34, size: 64, elements: !2746)
!2746 = !{!2747}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2745, file: !727, line: 35, baseType: !730, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !960, file: !164, line: 1224, baseType: !131, size: 128, offset: 1472)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !960, file: !164, line: 1225, baseType: !2750, size: 64, offset: 1600)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !164, line: 1225, flags: DIFlagFwdDecl)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !960, file: !164, line: 1226, baseType: !2753, size: 64, offset: 1664)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !164, line: 1226, flags: DIFlagFwdDecl)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !960, file: !164, line: 1227, baseType: !2756, size: 64, offset: 1728)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !164, line: 50, flags: DIFlagFwdDecl)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !960, file: !164, line: 1228, baseType: !2759, size: 64, offset: 1792)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !164, line: 1228, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !960, file: !164, line: 1229, baseType: !246, size: 128, offset: 1856)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !960, file: !164, line: 1230, baseType: !185, size: 32, offset: 1984)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !960, file: !164, line: 1231, baseType: !2764, size: 2496, offset: 2048)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !2541, line: 521, size: 2496, elements: !2765)
!2765 = !{!2766, !2767, !2768, !2770, !2802}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2764, file: !2541, line: 522, baseType: !185, size: 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2764, file: !2541, line: 523, baseType: !350, size: 320, offset: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2764, file: !2541, line: 524, baseType: !2769, size: 192, offset: 384)
!2769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !750, size: 192, elements: !224)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2764, file: !2541, line: 525, baseType: !2771, size: 1728, offset: 576)
!2771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2772, size: 1728, elements: !224)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !2541, line: 222, size: 576, elements: !2773)
!2773 = !{!2774, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2772, file: !2541, line: 223, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !2541, line: 445, size: 256, elements: !2777)
!2777 = !{!2778, !2779, !2792, !2793}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2776, file: !2541, line: 446, baseType: !39, size: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2776, file: !2541, line: 447, baseType: !2780, size: 64, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2782)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !2541, line: 312, size: 512, elements: !2783)
!2783 = !{!2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2782, file: !2541, line: 313, baseType: !2491, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2782, file: !2541, line: 314, baseType: !2491, size: 64, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2782, file: !2541, line: 315, baseType: !2491, size: 64, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2782, file: !2541, line: 316, baseType: !2491, size: 64, offset: 192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2782, file: !2541, line: 317, baseType: !2610, size: 64, offset: 256)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2782, file: !2541, line: 318, baseType: !2610, size: 64, offset: 320)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2782, file: !2541, line: 319, baseType: !2610, size: 64, offset: 384)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2782, file: !2541, line: 320, baseType: !2640, size: 64, offset: 448)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2776, file: !2541, line: 448, baseType: !1060, size: 64, offset: 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2776, file: !2541, line: 449, baseType: !2775, size: 64, offset: 192)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2772, file: !2541, line: 224, baseType: !39, size: 32, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2772, file: !2541, line: 226, baseType: !131, size: 128, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2772, file: !2541, line: 227, baseType: !67, size: 64, offset: 256)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2772, file: !2541, line: 228, baseType: !185, size: 32, offset: 320)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2772, file: !2541, line: 229, baseType: !185, size: 32, offset: 352)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2772, file: !2541, line: 230, baseType: !2578, size: 64, offset: 384)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2772, file: !2541, line: 231, baseType: !2578, size: 64, offset: 448)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2772, file: !2541, line: 232, baseType: !145, size: 64, offset: 512)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2764, file: !2541, line: 526, baseType: !2803, size: 192, offset: 2304)
!2803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2780, size: 192, elements: !224)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !960, file: !164, line: 1233, baseType: !2805, size: 2368, offset: 4544)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !164, line: 1184, size: 2368, elements: !2806)
!2806 = !{!2807, !2808, !2809}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2805, file: !164, line: 1185, baseType: !123, size: 16)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2805, file: !164, line: 1186, baseType: !123, size: 16, offset: 16)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2805, file: !164, line: 1187, baseType: !2810, size: 2304, offset: 64)
!2810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2811, size: 2304, elements: !224)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2812, line: 12, size: 768, elements: !2813)
!2812 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2813 = !{!2814, !2822, !2823, !4134, !4135}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2811, file: !2812, line: 13, baseType: !2815, size: 384)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2816, line: 17, size: 384, elements: !2817)
!2816 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2817 = !{!2818, !2819, !2820, !2821}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2815, file: !2816, line: 18, baseType: !39, size: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2815, file: !2816, line: 19, baseType: !39, size: 32, offset: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2815, file: !2816, line: 20, baseType: !255, size: 192, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2815, file: !2816, line: 22, baseType: !176, size: 128, align: 64, offset: 256)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2811, file: !2812, line: 14, baseType: !2124, size: 64, offset: 384)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2811, file: !2812, line: 15, baseType: !2824, size: 64, offset: 448)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2825, line: 16, size: 64, elements: !2826)
!2825 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2826 = !{!2827}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2824, file: !2825, line: 17, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1578, line: 746, size: 58368, elements: !2830)
!2830 = !{!2831, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2911, !2922, !3013, !3017, !3020, !3051, !3052, !3053, !3054, !3065, !3067, !3068, !3069, !3070, !3071, !3072, !3083, !3084, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3101, !3102, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3196, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3244, !3250, !3251, !3252, !3253, !3254, !3258, !3261, !3268, !3273, !3276, !3279, !3282, !3341, !3542, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3580, !3581, !3582, !3591, !3599, !3600, !3601, !3602, !3603, !3608, !3609, !3610, !3613, !3614, !3617, !3620, !3623, !3631, !3634, !3635, !3721, !3722, !3723, !3724, !3725, !3731, !3732, !3733, !3734, !3735, !3736, !3739, !3742, !3743, !3746, !3747, !3748, !3751, !3752, !3753, !3754, !3755, !3756, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3788, !3791, !3797, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3809, !3887, !3889, !3890, !3891, !3892, !3893, !3894, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3911, !3912, !3913}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2829, file: !1578, line: 752, baseType: !2832, size: 192)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2833, line: 56, size: 192, elements: !2834)
!2833 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2834 = !{!2835, !2836, !2837, !2838}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2832, file: !2833, line: 57, baseType: !67, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2832, file: !2833, line: 58, baseType: !67, size: 64, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2832, file: !2833, line: 59, baseType: !375, size: 32, offset: 128)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2832, file: !2833, line: 61, baseType: !375, size: 32, offset: 160)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2829, file: !1578, line: 754, baseType: !185, size: 32, offset: 192)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2829, file: !1578, line: 767, baseType: !145, size: 64, offset: 256)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2829, file: !1578, line: 768, baseType: !233, size: 32, offset: 320)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2829, file: !1578, line: 770, baseType: !185, size: 32, offset: 352)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2829, file: !1578, line: 771, baseType: !185, size: 32, offset: 384)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2829, file: !1578, line: 774, baseType: !39, size: 32, offset: 416)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2829, file: !1578, line: 775, baseType: !2846, size: 128, offset: 448)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2847, line: 58, size: 128, elements: !2848)
!2847 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2848 = !{!2849, !2850, !2855, !2856}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2846, file: !2847, line: 59, baseType: !170, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, scope: !2846, file: !2847, line: 60, baseType: !2851, size: 32, offset: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2846, file: !2847, line: 60, size: 32, elements: !2852)
!2852 = !{!2853, !2854}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2851, file: !2847, line: 61, baseType: !185, size: 32)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2851, file: !2847, line: 62, baseType: !105, size: 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2846, file: !2847, line: 65, baseType: !121, size: 16, offset: 96)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2846, file: !2847, line: 65, baseType: !121, size: 16, offset: 112)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2829, file: !1578, line: 776, baseType: !185, size: 32, offset: 576)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2829, file: !1578, line: 777, baseType: !67, size: 64, offset: 640)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2829, file: !1578, line: 778, baseType: !2828, size: 64, offset: 704)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2829, file: !1578, line: 787, baseType: !39, size: 32, offset: 768)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2829, file: !1578, line: 788, baseType: !39, size: 32, offset: 800)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2829, file: !1578, line: 790, baseType: !39, size: 32, offset: 832)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2829, file: !1578, line: 792, baseType: !39, size: 32, offset: 864)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2829, file: !1578, line: 793, baseType: !39, size: 32, offset: 896)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2829, file: !1578, line: 794, baseType: !39, size: 32, offset: 928)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2829, file: !1578, line: 795, baseType: !185, size: 32, offset: 960)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2829, file: !1578, line: 797, baseType: !2868, size: 2048, offset: 1024)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1578, line: 551, size: 2048, elements: !2869)
!2869 = !{!2870, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2890, !2893, !2894, !2895}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2868, file: !1578, line: 553, baseType: !2871, size: 128)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1578, line: 411, size: 128, elements: !2872)
!2872 = !{!2873, !2874}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2871, file: !1578, line: 412, baseType: !67, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2871, file: !1578, line: 413, baseType: !375, size: 32, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2868, file: !1578, line: 554, baseType: !342, size: 192, align: 64, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2868, file: !1578, line: 555, baseType: !318, size: 64, offset: 320)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2868, file: !1578, line: 556, baseType: !318, size: 64, offset: 384)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2868, file: !1578, line: 558, baseType: !131, size: 128, offset: 448)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2868, file: !1578, line: 559, baseType: !185, size: 32, offset: 576)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2868, file: !1578, line: 561, baseType: !318, size: 64, offset: 640)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2868, file: !1578, line: 562, baseType: !318, size: 64, offset: 704)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2868, file: !1578, line: 563, baseType: !318, size: 64, offset: 768)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2868, file: !1578, line: 564, baseType: !318, size: 64, offset: 832)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2868, file: !1578, line: 565, baseType: !87, size: 64, offset: 896)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2868, file: !1578, line: 566, baseType: !318, size: 64, offset: 960)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2868, file: !1578, line: 568, baseType: !318, size: 64, offset: 1024)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2868, file: !1578, line: 571, baseType: !39, size: 32, offset: 1088)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2868, file: !1578, line: 572, baseType: !2889, size: 64, offset: 1152)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2868, file: !1578, line: 574, baseType: !2891, size: 64, offset: 1216)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1578, line: 49, flags: DIFlagFwdDecl)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2868, file: !1578, line: 576, baseType: !2891, size: 64, offset: 1280)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2868, file: !1578, line: 578, baseType: !67, size: 64, offset: 1344)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2868, file: !1578, line: 588, baseType: !2896, size: 512, align: 512, offset: 1536)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1578, line: 497, size: 512, align: 512, elements: !2897)
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2896, file: !1578, line: 498, baseType: !318, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2896, file: !1578, line: 499, baseType: !318, size: 64, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2896, file: !1578, line: 500, baseType: !318, size: 64, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2896, file: !1578, line: 501, baseType: !375, size: 32, offset: 192)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2896, file: !1578, line: 502, baseType: !375, size: 32, offset: 224)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2896, file: !1578, line: 503, baseType: !67, size: 64, offset: 256)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2896, file: !1578, line: 504, baseType: !67, size: 64, offset: 320)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2896, file: !1578, line: 505, baseType: !67, size: 64, offset: 384)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2896, file: !1578, line: 506, baseType: !2907, size: 64, align: 64, offset: 448)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1578, line: 445, size: 64, align: 64, elements: !2908)
!2908 = !{!2909, !2910}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2907, file: !1578, line: 446, baseType: !185, size: 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2907, file: !1578, line: 447, baseType: !185, size: 32, offset: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2829, file: !1578, line: 798, baseType: !2912, size: 384, offset: 3072)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1578, line: 592, size: 384, elements: !2913)
!2913 = !{!2914, !2915, !2916, !2917, !2918, !2919, !2920}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2912, file: !1578, line: 593, baseType: !131, size: 128)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2912, file: !1578, line: 594, baseType: !67, size: 64, offset: 128)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2912, file: !1578, line: 595, baseType: !67, size: 64, offset: 192)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2912, file: !1578, line: 596, baseType: !185, size: 32, offset: 256)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2912, file: !1578, line: 597, baseType: !123, size: 16, offset: 288)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2912, file: !1578, line: 598, baseType: !123, size: 16, offset: 304)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2912, file: !1578, line: 600, baseType: !2921, size: 64, offset: 320)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2829, file: !1578, line: 799, baseType: !2923, size: 1792, offset: 3456)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1578, line: 610, size: 1792, elements: !2924)
!2924 = !{!2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !3010, !3011}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2923, file: !1578, line: 611, baseType: !342, size: 192, align: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2923, file: !1578, line: 618, baseType: !318, size: 64, offset: 192)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2923, file: !1578, line: 619, baseType: !318, size: 64, offset: 256)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2923, file: !1578, line: 620, baseType: !318, size: 64, offset: 320)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2923, file: !1578, line: 621, baseType: !318, size: 64, offset: 384)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2923, file: !1578, line: 622, baseType: !318, size: 64, offset: 448)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2923, file: !1578, line: 629, baseType: !87, size: 64, offset: 512)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2923, file: !1578, line: 630, baseType: !318, size: 64, offset: 576)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2923, file: !1578, line: 631, baseType: !185, size: 32, offset: 640)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2923, file: !1578, line: 653, baseType: !185, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2923, file: !1578, line: 654, baseType: !185, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2923, file: !1578, line: 655, baseType: !185, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2923, file: !1578, line: 656, baseType: !185, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2923, file: !1578, line: 662, baseType: !2939, size: 512, offset: 704)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !2940, line: 118, size: 512, elements: !2941)
!2940 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!2941 = !{!2942, !2950, !2951, !2960, !3006, !3007, !3008, !3009}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2939, file: !2940, line: 119, baseType: !2943, size: 256)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2944, line: 9, size: 256, elements: !2945)
!2944 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2945 = !{!2946, !2947}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2943, file: !2944, line: 10, baseType: !342, size: 192, align: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2943, file: !2944, line: 11, baseType: !2948, size: 64, offset: 192)
!2948 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2949, line: 29, baseType: !87)
!2949 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2939, file: !2940, line: 120, baseType: !2948, size: 64, offset: 256)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2939, file: !2940, line: 121, baseType: !2952, size: 64, offset: 320)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!2955, !2959}
!2955 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !2940, line: 65, baseType: !185, size: 32, elements: !2956)
!2956 = !{!2957, !2958}
!2957 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!2958 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2939, file: !2940, line: 122, baseType: !2961, size: 64, offset: 384)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !2940, line: 159, size: 512, align: 512, elements: !2963)
!2963 = !{!2964, !2987, !2988, !2991, !2996, !2997, !3001, !3005}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2962, file: !2940, line: 160, baseType: !2965, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !2940, line: 215, size: 4608, align: 512, elements: !2967)
!2967 = !{!2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2966, file: !2940, line: 216, baseType: !92, size: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2966, file: !2940, line: 217, baseType: !185, size: 32, offset: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2966, file: !2940, line: 218, baseType: !185, size: 32, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2966, file: !2940, line: 219, baseType: !185, size: 32, offset: 96)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2966, file: !2940, line: 220, baseType: !185, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2966, file: !2940, line: 221, baseType: !185, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2966, file: !2940, line: 222, baseType: !185, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2966, file: !2940, line: 223, baseType: !185, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2966, file: !2940, line: 224, baseType: !185, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2966, file: !2940, line: 226, baseType: !185, size: 32, offset: 160)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2966, file: !2940, line: 227, baseType: !123, size: 16, offset: 192)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2966, file: !2940, line: 228, baseType: !123, size: 16, offset: 208)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2966, file: !2940, line: 229, baseType: !185, size: 32, offset: 224)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2966, file: !2940, line: 235, baseType: !2948, size: 64, offset: 256)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2966, file: !2940, line: 236, baseType: !2959, size: 64, offset: 320)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2966, file: !2940, line: 237, baseType: !2948, size: 64, offset: 384)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2966, file: !2940, line: 238, baseType: !2959, size: 64, offset: 448)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2966, file: !2940, line: 239, baseType: !2986, size: 4096, align: 512, offset: 512)
!2986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2962, size: 4096, align: 512, elements: !2386)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2962, file: !2940, line: 161, baseType: !185, size: 32, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2962, file: !2940, line: 162, baseType: !2989, size: 32, offset: 96)
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !63, line: 32, baseType: !2990)
!2990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !65, line: 96, baseType: !39)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2962, file: !2940, line: 163, baseType: !2992, size: 32, offset: 128)
!2992 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !717, line: 274, baseType: !2993)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !717, line: 274, size: 32, elements: !2994)
!2994 = !{!2995}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2993, file: !717, line: 274, baseType: !721, size: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2962, file: !2940, line: 164, baseType: !2959, size: 64, offset: 192)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2962, file: !2940, line: 165, baseType: !2998, size: 128, offset: 256)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2944, line: 14, size: 128, elements: !2999)
!2999 = !{!3000}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2998, file: !2944, line: 15, baseType: !1193, size: 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2962, file: !2940, line: 166, baseType: !3002, size: 64, offset: 384)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!2948}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2962, file: !2940, line: 167, baseType: !2948, size: 64, offset: 448)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2939, file: !2940, line: 123, baseType: !113, size: 8, offset: 448)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2939, file: !2940, line: 124, baseType: !113, size: 8, offset: 456)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2939, file: !2940, line: 125, baseType: !113, size: 8, offset: 464)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2939, file: !2940, line: 126, baseType: !113, size: 8, offset: 472)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2923, file: !1578, line: 671, baseType: !2939, size: 512, offset: 1216)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2923, file: !1578, line: 679, baseType: !3012, size: 64, offset: 1728)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2829, file: !1578, line: 800, baseType: !3014, size: 64, offset: 5248)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3016)
!3016 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1578, line: 800, flags: DIFlagFwdDecl)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2829, file: !1578, line: 809, baseType: !3018, size: 64, offset: 5312)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1578, line: 70, flags: DIFlagFwdDecl)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2829, file: !1578, line: 825, baseType: !3021, size: 2048, align: 512, offset: 5632)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1578, line: 509, size: 2048, align: 512, elements: !3022)
!3022 = !{!3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3021, file: !1578, line: 511, baseType: !318, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3021, file: !1578, line: 512, baseType: !318, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3021, file: !1578, line: 513, baseType: !318, size: 64, offset: 128)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3021, file: !1578, line: 514, baseType: !318, size: 64, offset: 192)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3021, file: !1578, line: 515, baseType: !318, size: 64, offset: 256)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3021, file: !1578, line: 516, baseType: !318, size: 64, offset: 320)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3021, file: !1578, line: 518, baseType: !318, size: 64, offset: 384)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3021, file: !1578, line: 519, baseType: !318, size: 64, offset: 448)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3021, file: !1578, line: 520, baseType: !87, size: 64, offset: 512)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3021, file: !1578, line: 522, baseType: !318, size: 64, offset: 576)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3021, file: !1578, line: 523, baseType: !318, size: 64, offset: 640)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3021, file: !1578, line: 524, baseType: !87, size: 64, offset: 704)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3021, file: !1578, line: 526, baseType: !87, size: 64, offset: 768)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3021, file: !1578, line: 527, baseType: !318, size: 64, offset: 832)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3021, file: !1578, line: 529, baseType: !318, size: 64, offset: 896)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3021, file: !1578, line: 530, baseType: !318, size: 64, offset: 960)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3021, file: !1578, line: 531, baseType: !318, size: 64, offset: 1024)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3021, file: !1578, line: 532, baseType: !318, size: 64, offset: 1088)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3021, file: !1578, line: 533, baseType: !318, size: 64, offset: 1152)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3021, file: !1578, line: 535, baseType: !318, size: 64, offset: 1216)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3021, file: !1578, line: 536, baseType: !318, size: 64, offset: 1280)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3021, file: !1578, line: 537, baseType: !318, size: 64, offset: 1344)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3021, file: !1578, line: 538, baseType: !318, size: 64, offset: 1408)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3021, file: !1578, line: 539, baseType: !318, size: 64, offset: 1472)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3021, file: !1578, line: 540, baseType: !318, size: 64, offset: 1536)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3021, file: !1578, line: 541, baseType: !318, size: 64, offset: 1600)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3021, file: !1578, line: 542, baseType: !318, size: 64, offset: 1664)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3021, file: !1578, line: 543, baseType: !318, size: 64, offset: 1728)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2829, file: !1578, line: 833, baseType: !185, size: 32, offset: 7680)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2829, file: !1578, line: 836, baseType: !185, size: 32, offset: 7712)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2829, file: !1578, line: 837, baseType: !39, size: 32, offset: 7744)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2829, file: !1578, line: 838, baseType: !3055, size: 64, offset: 7808)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3057)
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3058, line: 19, baseType: !3059)
!3058 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3058, line: 19, size: 64, elements: !3060)
!3060 = !{!3061}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3059, file: !3058, line: 19, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 64, elements: !3063)
!3063 = !{!3064}
!3064 = !DISubrange(count: 1)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2829, file: !1578, line: 839, baseType: !3066, size: 64, offset: 7872)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2829, file: !1578, line: 840, baseType: !3057, size: 64, offset: 7936)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2829, file: !1578, line: 841, baseType: !145, size: 64, offset: 8000)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2829, file: !1578, line: 843, baseType: !123, size: 16, offset: 8064)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2829, file: !1578, line: 845, baseType: !123, size: 16, offset: 8080)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2829, file: !1578, line: 848, baseType: !39, size: 32, offset: 8096)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2829, file: !1578, line: 849, baseType: !3073, size: 32, offset: 8128)
!3073 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1578, line: 718, size: 32, elements: !3074)
!3074 = !{!3075, !3082}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3073, file: !1578, line: 724, baseType: !3076, size: 32)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3073, file: !1578, line: 719, size: 32, elements: !3077)
!3077 = !{!3078, !3079, !3080, !3081}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3076, file: !1578, line: 720, baseType: !113, size: 8)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3076, file: !1578, line: 721, baseType: !113, size: 8, offset: 8)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3076, file: !1578, line: 722, baseType: !113, size: 8, offset: 16)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3076, file: !1578, line: 723, baseType: !113, size: 8, offset: 24)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3073, file: !1578, line: 725, baseType: !375, size: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2829, file: !1578, line: 850, baseType: !131, size: 128, offset: 8192)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2829, file: !1578, line: 851, baseType: !3085, size: 64, offset: 8320)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1578, line: 60, flags: DIFlagFwdDecl)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2829, file: !1578, line: 855, baseType: !67, size: 64, offset: 8384)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2829, file: !1578, line: 856, baseType: !113, size: 8, offset: 8448)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2829, file: !1578, line: 857, baseType: !113, size: 8, offset: 8456)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2829, file: !1578, line: 858, baseType: !39, size: 32, offset: 8480)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2829, file: !1578, line: 859, baseType: !131, size: 128, offset: 8512)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2829, file: !1578, line: 860, baseType: !39, size: 32, offset: 8640)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2829, file: !1578, line: 861, baseType: !131, size: 128, offset: 8704)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2829, file: !1578, line: 873, baseType: !3095, size: 256, offset: 8832)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1578, line: 376, size: 256, elements: !3096)
!3096 = !{!3097, !3098, !3099, !3100}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3095, file: !1578, line: 381, baseType: !67, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3095, file: !1578, line: 384, baseType: !320, size: 64, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3095, file: !1578, line: 389, baseType: !320, size: 64, offset: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3095, file: !1578, line: 392, baseType: !320, size: 64, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2829, file: !1578, line: 875, baseType: !131, size: 128, offset: 9088)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2829, file: !1578, line: 877, baseType: !3103, size: 320, offset: 9216)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3104, line: 86, size: 320, elements: !3105)
!3104 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3105 = !{!3106, !3107, !3108}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3103, file: !3104, line: 87, baseType: !39, size: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3103, file: !3104, line: 88, baseType: !131, size: 128, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3103, file: !3104, line: 89, baseType: !131, size: 128, offset: 192)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2829, file: !1578, line: 878, baseType: !342, size: 192, align: 64, offset: 9536)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2829, file: !1578, line: 881, baseType: !1340, size: 64, offset: 9728)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2829, file: !1578, line: 882, baseType: !1340, size: 64, offset: 9792)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2829, file: !1578, line: 884, baseType: !39, size: 32, offset: 9856)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2829, file: !1578, line: 885, baseType: !39, size: 32, offset: 9888)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2829, file: !1578, line: 886, baseType: !39, size: 32, offset: 9920)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2829, file: !1578, line: 888, baseType: !39, size: 32, offset: 9952)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2829, file: !1578, line: 890, baseType: !67, size: 64, offset: 9984)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2829, file: !1578, line: 893, baseType: !185, size: 32, offset: 10048)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2829, file: !1578, line: 896, baseType: !185, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2829, file: !1578, line: 897, baseType: !185, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2829, file: !1578, line: 898, baseType: !185, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2829, file: !1578, line: 899, baseType: !185, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2829, file: !1578, line: 919, baseType: !185, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2829, file: !1578, line: 922, baseType: !185, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2829, file: !1578, line: 923, baseType: !185, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2829, file: !1578, line: 925, baseType: !185, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2829, file: !1578, line: 939, baseType: !185, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2829, file: !1578, line: 941, baseType: !185, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2829, file: !1578, line: 944, baseType: !185, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2829, file: !1578, line: 956, baseType: !185, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2829, file: !1578, line: 962, baseType: !185, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2829, file: !1578, line: 966, baseType: !185, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2829, file: !1578, line: 969, baseType: !67, size: 64, offset: 10176)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2829, file: !1578, line: 971, baseType: !3134, size: 448, offset: 10240)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !3135, line: 25, size: 448, elements: !3136)
!3135 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!3136 = !{!3137, !3138, !3143}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3134, file: !3135, line: 26, baseType: !67, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3134, file: !3135, line: 27, baseType: !3139, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!674, !3142}
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, scope: !3134, file: !3135, line: 28, baseType: !3144, size: 320, offset: 128)
!3144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3134, file: !3135, line: 28, size: 320, elements: !3145)
!3145 = !{!3146, !3156, !3186}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3144, file: !3135, line: 37, baseType: !3147, size: 320)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3144, file: !3135, line: 30, size: 320, elements: !3148)
!3148 = !{!3149, !3151, !3152, !3153, !3154, !3155}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3147, file: !3135, line: 31, baseType: !3150, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3147, file: !3135, line: 32, baseType: !375, size: 32, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3147, file: !3135, line: 33, baseType: !375, size: 32, offset: 96)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3147, file: !3135, line: 34, baseType: !375, size: 32, offset: 128)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3147, file: !3135, line: 35, baseType: !318, size: 64, offset: 192)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3147, file: !3135, line: 36, baseType: !3150, size: 64, offset: 256)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3144, file: !3135, line: 47, baseType: !3157, size: 192)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3144, file: !3135, line: 39, size: 192, elements: !3158)
!3158 = !{!3159, !3160, !3166, !3185}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3157, file: !3135, line: 40, baseType: !2989, size: 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3157, file: !3135, line: 41, baseType: !3161, size: 32, offset: 32)
!3161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !3135, line: 16, baseType: !185, size: 32, elements: !3162)
!3162 = !{!3163, !3164, !3165}
!3163 = !DIEnumerator(name: "TT_NONE", value: 0)
!3164 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!3165 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!3166 = !DIDerivedType(tag: DW_TAG_member, scope: !3157, file: !3135, line: 42, baseType: !3167, size: 64, offset: 64)
!3167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3157, file: !3135, line: 42, size: 64, elements: !3168)
!3168 = !{!3169, !3177}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3167, file: !3135, line: 43, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3172, line: 7, size: 128, elements: !3173)
!3172 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3173 = !{!3174, !3176}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3171, file: !3172, line: 8, baseType: !3175, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !65, line: 93, baseType: !74)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3171, file: !3172, line: 9, baseType: !74, size: 64, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3167, file: !3135, line: 44, baseType: !3178, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3180, line: 7, size: 64, elements: !3181)
!3180 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3181 = !{!3182, !3184}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3179, file: !3180, line: 8, baseType: !3183, size: 32)
!3183 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3180, line: 5, baseType: !335)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3179, file: !3180, line: 9, baseType: !335, size: 32, offset: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3157, file: !3135, line: 46, baseType: !318, size: 64, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3144, file: !3135, line: 55, baseType: !3187, size: 256)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3144, file: !3135, line: 49, size: 256, elements: !3188)
!3188 = !{!3189, !3192, !3193, !3194, !3195}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3187, file: !3135, line: 50, baseType: !3190, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3135, line: 14, flags: DIFlagFwdDecl)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3187, file: !3135, line: 51, baseType: !39, size: 32, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3187, file: !3135, line: 52, baseType: !39, size: 32, offset: 96)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3187, file: !3135, line: 53, baseType: !67, size: 64, offset: 128)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3187, file: !3135, line: 54, baseType: !67, size: 64, offset: 192)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2829, file: !1578, line: 973, baseType: !3197, size: 32, offset: 10688)
!3197 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !63, line: 27, baseType: !3198)
!3198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !65, line: 28, baseType: !39)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2829, file: !1578, line: 974, baseType: !3197, size: 32, offset: 10720)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2829, file: !1578, line: 978, baseType: !67, size: 64, offset: 10752)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2829, file: !1578, line: 987, baseType: !2828, size: 64, offset: 10816)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2829, file: !1578, line: 990, baseType: !2828, size: 64, offset: 10880)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2829, file: !1578, line: 995, baseType: !131, size: 128, offset: 10944)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2829, file: !1578, line: 996, baseType: !131, size: 128, offset: 11072)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2829, file: !1578, line: 997, baseType: !2828, size: 64, offset: 11200)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2829, file: !1578, line: 1005, baseType: !131, size: 128, offset: 11264)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2829, file: !1578, line: 1006, baseType: !131, size: 128, offset: 11392)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2829, file: !1578, line: 1009, baseType: !228, size: 64, offset: 11520)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2829, file: !1578, line: 1010, baseType: !3210, size: 512, offset: 11584)
!3210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 512, elements: !251)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2829, file: !1578, line: 1011, baseType: !131, size: 128, offset: 12096)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2829, file: !1578, line: 1012, baseType: !131, size: 128, offset: 12224)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2829, file: !1578, line: 1014, baseType: !611, size: 64, offset: 12352)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2829, file: !1578, line: 1017, baseType: !2172, size: 64, offset: 12416)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2829, file: !1578, line: 1020, baseType: !2172, size: 64, offset: 12480)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2829, file: !1578, line: 1023, baseType: !145, size: 64, offset: 12544)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2829, file: !1578, line: 1025, baseType: !318, size: 64, offset: 12608)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2829, file: !1578, line: 1026, baseType: !318, size: 64, offset: 12672)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2829, file: !1578, line: 1031, baseType: !318, size: 64, offset: 12736)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2829, file: !1578, line: 1032, baseType: !3221, size: 192, offset: 12800)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1578, line: 324, size: 192, elements: !3222)
!3222 = !{!3223, !3224, !3225}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3221, file: !1578, line: 326, baseType: !318, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3221, file: !1578, line: 327, baseType: !318, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3221, file: !1578, line: 328, baseType: !92, size: 32, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2829, file: !1578, line: 1041, baseType: !67, size: 64, offset: 12992)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2829, file: !1578, line: 1042, baseType: !67, size: 64, offset: 13056)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2829, file: !1578, line: 1045, baseType: !318, size: 64, offset: 13120)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2829, file: !1578, line: 1048, baseType: !318, size: 64, offset: 13184)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2829, file: !1578, line: 1051, baseType: !67, size: 64, offset: 13248)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2829, file: !1578, line: 1052, baseType: !67, size: 64, offset: 13312)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2829, file: !1578, line: 1055, baseType: !3233, size: 640, offset: 13376)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3234, line: 132, size: 640, elements: !3235)
!3234 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3235 = !{!3236, !3242, !3243}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3233, file: !3234, line: 133, baseType: !3237, size: 576)
!3237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3238, size: 576, elements: !224)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3234, line: 117, size: 192, elements: !3239)
!3239 = !{!3240, !3241}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3238, file: !3234, line: 118, baseType: !318, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3238, file: !3234, line: 119, baseType: !2998, size: 128, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3233, file: !3234, line: 134, baseType: !185, size: 32, offset: 576)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3233, file: !3234, line: 135, baseType: !185, size: 32, offset: 608)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2829, file: !1578, line: 1058, baseType: !3245, size: 448, offset: 14016)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3234, line: 144, size: 448, elements: !3246)
!3246 = !{!3247, !3248, !3249}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3245, file: !3234, line: 145, baseType: !176, size: 128, align: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3245, file: !3234, line: 146, baseType: !77, size: 256, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3245, file: !3234, line: 147, baseType: !185, size: 32, offset: 384)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2829, file: !1578, line: 1064, baseType: !291, size: 64, offset: 14464)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2829, file: !1578, line: 1067, baseType: !291, size: 64, offset: 14528)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2829, file: !1578, line: 1070, baseType: !291, size: 64, offset: 14592)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2829, file: !1578, line: 1074, baseType: !327, size: 64, offset: 14656)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2829, file: !1578, line: 1084, baseType: !3255, size: 128, offset: 14720)
!3255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3256)
!3256 = !{!3257}
!3257 = !DISubrange(count: 16)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2829, file: !1578, line: 1086, baseType: !3259, size: 64, offset: 14848)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1578, line: 55, flags: DIFlagFwdDecl)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2829, file: !1578, line: 1089, baseType: !3262, size: 64, offset: 14912)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3263, line: 12, size: 64, elements: !3264)
!3263 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3264 = !{!3265}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3262, file: !3263, line: 13, baseType: !3266, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3263, line: 8, flags: DIFlagFwdDecl)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2829, file: !1578, line: 1090, baseType: !3269, size: 128, offset: 14976)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3270, line: 13, size: 128, elements: !3271)
!3270 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3271 = !{!3272}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3269, file: !3270, line: 14, baseType: !131, size: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2829, file: !1578, line: 1097, baseType: !3274, size: 64, offset: 15104)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1578, line: 50, flags: DIFlagFwdDecl)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2829, file: !1578, line: 1100, baseType: !3277, size: 64, offset: 15168)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1578, line: 1100, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2829, file: !1578, line: 1103, baseType: !3280, size: 64, offset: 15232)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1578, line: 53, flags: DIFlagFwdDecl)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2829, file: !1578, line: 1107, baseType: !3283, size: 64, offset: 15296)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3285, line: 31, size: 576, elements: !3286)
!3285 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3286 = !{!3287, !3288, !3291, !3294, !3297, !3298, !3299, !3302, !3303}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3284, file: !3285, line: 32, baseType: !233, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3284, file: !3285, line: 33, baseType: !3289, size: 64, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3285, line: 9, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3284, file: !3285, line: 34, baseType: !3292, size: 64, offset: 128)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3285, line: 10, flags: DIFlagFwdDecl)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3284, file: !3285, line: 35, baseType: !3295, size: 64, offset: 192)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3285, line: 8, flags: DIFlagFwdDecl)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3284, file: !3285, line: 36, baseType: !268, size: 64, offset: 256)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3284, file: !3285, line: 37, baseType: !1044, size: 64, offset: 320)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3284, file: !3285, line: 38, baseType: !3300, size: 64, offset: 384)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3285, line: 38, flags: DIFlagFwdDecl)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3284, file: !3285, line: 39, baseType: !3300, size: 64, offset: 448)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3284, file: !3285, line: 40, baseType: !3304, size: 64, offset: 512)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3306, line: 771, size: 384, elements: !3307)
!3306 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!3307 = !{!3308, !3309, !3310, !3311}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3305, file: !3306, line: 772, baseType: !529, size: 192)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3305, file: !3306, line: 773, baseType: !496, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3305, file: !3306, line: 774, baseType: !659, size: 64, offset: 256)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !3305, file: !3306, line: 775, baseType: !3312, size: 64, offset: 320)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !20, line: 209, size: 4736, elements: !3314)
!3314 = !{!3315, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3313, file: !20, line: 215, baseType: !3316, size: 896)
!3316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 896, elements: !3317)
!3317 = !{!3318}
!3318 = !DISubrange(count: 14)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3313, file: !20, line: 218, baseType: !233, size: 32, offset: 896)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3313, file: !20, line: 226, baseType: !3312, size: 64, offset: 960)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3313, file: !20, line: 229, baseType: !18, size: 64, offset: 1024)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3313, file: !20, line: 232, baseType: !39, size: 32, offset: 1088)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3313, file: !20, line: 241, baseType: !131, size: 128, offset: 1152)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3313, file: !20, line: 242, baseType: !131, size: 128, offset: 1280)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3313, file: !20, line: 243, baseType: !131, size: 128, offset: 1408)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3313, file: !20, line: 246, baseType: !131, size: 128, offset: 1536)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3313, file: !20, line: 255, baseType: !3328, size: 1792, offset: 1664)
!3328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 1792, elements: !3317)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3313, file: !20, line: 258, baseType: !131, size: 128, offset: 3456)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3313, file: !20, line: 259, baseType: !131, size: 128, offset: 3584)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3313, file: !20, line: 265, baseType: !246, size: 128, offset: 3712)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3313, file: !20, line: 271, baseType: !131, size: 128, offset: 3840)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3313, file: !20, line: 277, baseType: !131, size: 128, offset: 3968)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3313, file: !20, line: 278, baseType: !131, size: 128, offset: 4096)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3313, file: !20, line: 279, baseType: !131, size: 128, offset: 4224)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3313, file: !20, line: 288, baseType: !18, size: 64, offset: 4352)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3313, file: !20, line: 289, baseType: !18, size: 64, offset: 4416)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3313, file: !20, line: 290, baseType: !3312, size: 64, offset: 4480)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3313, file: !20, line: 293, baseType: !411, size: 8, offset: 4544)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3313, file: !20, line: 296, baseType: !176, size: 128, align: 64, offset: 4608)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2829, file: !1578, line: 1110, baseType: !3342, size: 64, offset: 15360)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3344, line: 93, size: 8768, elements: !3345)
!3344 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3345 = !{!3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3394, !3403, !3404, !3406, !3407, !3408, !3411, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3449, !3450, !3457, !3467, !3532, !3533, !3536, !3537, !3538, !3539, !3540, !3541}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3343, file: !3344, line: 94, baseType: !233, size: 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3343, file: !3344, line: 95, baseType: !105, size: 32, offset: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3343, file: !3344, line: 96, baseType: !39, size: 32, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3343, file: !3344, line: 97, baseType: !39, size: 32, offset: 96)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3343, file: !3344, line: 98, baseType: !131, size: 128, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3343, file: !3344, line: 100, baseType: !255, size: 192, offset: 256)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3343, file: !3344, line: 103, baseType: !2828, size: 64, offset: 448)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3343, file: !3344, line: 106, baseType: !3354, size: 192, offset: 512)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3355, line: 32, size: 192, elements: !3356)
!3355 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3356 = !{!3357, !3358}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3354, file: !3355, line: 33, baseType: !131, size: 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3354, file: !3355, line: 34, baseType: !3359, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3360, line: 25, baseType: !3361)
!3360 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3360, line: 23, size: 64, elements: !3362)
!3362 = !{!3363}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3361, file: !3360, line: 24, baseType: !3062, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3343, file: !3344, line: 109, baseType: !242, size: 64, offset: 704)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3343, file: !3344, line: 112, baseType: !39, size: 32, offset: 768)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3343, file: !3344, line: 114, baseType: !39, size: 32, offset: 800)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3343, file: !3344, line: 115, baseType: !2828, size: 64, offset: 832)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3343, file: !3344, line: 118, baseType: !39, size: 32, offset: 896)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3343, file: !3344, line: 119, baseType: !185, size: 32, offset: 928)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3343, file: !3344, line: 121, baseType: !3371, size: 64, offset: 960)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3344, line: 80, size: 448, elements: !3373)
!3373 = !{!3374, !3375, !3381}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3372, file: !3344, line: 81, baseType: !105, size: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3372, file: !3344, line: 82, baseType: !3376, size: 128, offset: 64)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3344, line: 75, size: 128, elements: !3377)
!3377 = !{!3378, !3379}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3376, file: !3344, line: 76, baseType: !2828, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3376, file: !3344, line: 77, baseType: !3380, size: 64, offset: 64)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3372, file: !3344, line: 83, baseType: !612, size: 256, offset: 192)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3343, file: !3344, line: 132, baseType: !185, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3343, file: !3344, line: 133, baseType: !185, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3343, file: !3344, line: 138, baseType: !185, size: 32, offset: 1056)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3343, file: !3344, line: 139, baseType: !131, size: 128, offset: 1088)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3343, file: !3344, line: 142, baseType: !2939, size: 512, offset: 1216)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3343, file: !3344, line: 143, baseType: !2948, size: 64, offset: 1728)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3343, file: !3344, line: 150, baseType: !3389, size: 256, offset: 1792)
!3389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3390, size: 256, elements: !2162)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3344, line: 38, size: 128, elements: !3391)
!3391 = !{!3392, !3393}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3390, file: !3344, line: 39, baseType: !318, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3390, file: !3344, line: 40, baseType: !318, size: 64, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3343, file: !3344, line: 156, baseType: !3395, size: 192, offset: 2048)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3344, line: 66, size: 192, elements: !3396)
!3396 = !{!3397}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3395, file: !3344, line: 67, baseType: !3398, size: 192)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3344, line: 47, size: 192, elements: !3399)
!3399 = !{!3400, !3401, !3402}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3398, file: !3344, line: 48, baseType: !83, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3398, file: !3344, line: 49, baseType: !83, size: 64, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3398, file: !3344, line: 50, baseType: !83, size: 64, offset: 128)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3343, file: !3344, line: 160, baseType: !3233, size: 640, offset: 2240)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3343, file: !3344, line: 163, baseType: !3405, size: 256, offset: 2880)
!3405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 256, elements: !251)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3343, file: !3344, line: 169, baseType: !228, size: 64, offset: 3136)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3343, file: !3344, line: 172, baseType: !39, size: 32, offset: 3200)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3343, file: !3344, line: 174, baseType: !3409, size: 64, offset: 3264)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3344, line: 174, flags: DIFlagFwdDecl)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3343, file: !3344, line: 185, baseType: !3412, size: 64, offset: 3328)
!3412 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !717, line: 860, baseType: !3413)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !717, line: 853, size: 64, elements: !3414)
!3414 = !{!3415, !3416}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3413, file: !717, line: 858, baseType: !716, size: 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3413, file: !717, line: 859, baseType: !187, size: 32, offset: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3343, file: !3344, line: 186, baseType: !318, size: 64, offset: 3392)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3343, file: !3344, line: 186, baseType: !318, size: 64, offset: 3456)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3343, file: !3344, line: 186, baseType: !318, size: 64, offset: 3520)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3343, file: !3344, line: 186, baseType: !318, size: 64, offset: 3584)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3343, file: !3344, line: 187, baseType: !318, size: 64, offset: 3648)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3343, file: !3344, line: 188, baseType: !318, size: 64, offset: 3712)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3343, file: !3344, line: 189, baseType: !3221, size: 192, offset: 3776)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3343, file: !3344, line: 190, baseType: !67, size: 64, offset: 3968)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3343, file: !3344, line: 190, baseType: !67, size: 64, offset: 4032)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3343, file: !3344, line: 190, baseType: !67, size: 64, offset: 4096)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3343, file: !3344, line: 190, baseType: !67, size: 64, offset: 4160)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3343, file: !3344, line: 191, baseType: !67, size: 64, offset: 4224)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3343, file: !3344, line: 191, baseType: !67, size: 64, offset: 4288)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3343, file: !3344, line: 191, baseType: !67, size: 64, offset: 4352)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3343, file: !3344, line: 191, baseType: !67, size: 64, offset: 4416)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3343, file: !3344, line: 192, baseType: !67, size: 64, offset: 4480)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3343, file: !3344, line: 192, baseType: !67, size: 64, offset: 4544)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3343, file: !3344, line: 192, baseType: !67, size: 64, offset: 4608)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3343, file: !3344, line: 192, baseType: !67, size: 64, offset: 4672)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3343, file: !3344, line: 193, baseType: !67, size: 64, offset: 4736)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3343, file: !3344, line: 193, baseType: !67, size: 64, offset: 4800)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3343, file: !3344, line: 194, baseType: !3439, size: 448, offset: 4864)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3440, line: 12, size: 448, elements: !3441)
!3440 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3441 = !{!3442, !3443, !3444, !3445, !3446, !3447, !3448}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3439, file: !3440, line: 15, baseType: !318, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3439, file: !3440, line: 17, baseType: !318, size: 64, offset: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3439, file: !3440, line: 19, baseType: !318, size: 64, offset: 128)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3439, file: !3440, line: 21, baseType: !318, size: 64, offset: 192)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3439, file: !3440, line: 29, baseType: !318, size: 64, offset: 256)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3439, file: !3440, line: 35, baseType: !318, size: 64, offset: 320)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3439, file: !3440, line: 44, baseType: !318, size: 64, offset: 384)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3343, file: !3344, line: 202, baseType: !320, size: 64, offset: 5312)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3343, file: !3344, line: 213, baseType: !3451, size: 2048, offset: 5376)
!3451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3452, size: 2048, elements: !3256)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3453, line: 43, size: 128, elements: !3454)
!3453 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3454 = !{!3455, !3456}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3452, file: !3453, line: 44, baseType: !66, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3452, file: !3453, line: 45, baseType: !66, size: 64, offset: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3343, file: !3344, line: 216, baseType: !3458, size: 448, offset: 7424)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3344, line: 30, size: 448, elements: !3459)
!3459 = !{!3460, !3461, !3462, !3463, !3464, !3465, !3466}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3458, file: !3344, line: 31, baseType: !39, size: 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3458, file: !3344, line: 32, baseType: !674, size: 64, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3458, file: !3344, line: 33, baseType: !67, size: 64, offset: 128)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3458, file: !3344, line: 34, baseType: !318, size: 64, offset: 192)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3458, file: !3344, line: 34, baseType: !318, size: 64, offset: 256)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3458, file: !3344, line: 35, baseType: !67, size: 64, offset: 320)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3458, file: !3344, line: 35, baseType: !67, size: 64, offset: 384)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3343, file: !3344, line: 219, baseType: !3468, size: 64, offset: 7872)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3470, line: 41, size: 3456, elements: !3471)
!3470 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!3471 = !{!3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3488, !3489, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3469, file: !3470, line: 47, baseType: !122, size: 16)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3469, file: !3470, line: 48, baseType: !376, size: 32, offset: 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3469, file: !3470, line: 54, baseType: !114, size: 8, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !3469, file: !3470, line: 55, baseType: !114, size: 8, offset: 72)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !3469, file: !3470, line: 73, baseType: !319, size: 64, align: 64, offset: 128)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !3469, file: !3470, line: 74, baseType: !319, size: 64, offset: 192)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !3469, file: !3470, line: 81, baseType: !319, size: 64, offset: 256)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !3469, file: !3470, line: 82, baseType: !319, size: 64, offset: 320)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !3469, file: !3470, line: 85, baseType: !319, size: 64, offset: 384)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !3469, file: !3470, line: 86, baseType: !319, size: 64, offset: 448)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !3469, file: !3470, line: 94, baseType: !319, size: 64, offset: 512)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !3469, file: !3470, line: 102, baseType: !319, size: 64, offset: 576)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !3469, file: !3470, line: 107, baseType: !3485, size: 256, offset: 640)
!3485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !3486)
!3486 = !{!3487}
!3487 = !DISubrange(count: 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !3469, file: !3470, line: 108, baseType: !114, size: 8, align: 64, offset: 896)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !3469, file: !3470, line: 110, baseType: !3490, size: 24, offset: 904)
!3490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 24, elements: !224)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !3469, file: !3470, line: 111, baseType: !376, size: 32, align: 64, offset: 960)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !3469, file: !3470, line: 113, baseType: !376, size: 32, offset: 992)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !3469, file: !3470, line: 114, baseType: !376, size: 32, offset: 1024)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !3469, file: !3470, line: 115, baseType: !376, size: 32, offset: 1056)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !3469, file: !3470, line: 117, baseType: !376, size: 32, offset: 1088)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !3469, file: !3470, line: 118, baseType: !319, size: 64, align: 64, offset: 1152)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3469, file: !3470, line: 120, baseType: !319, size: 64, offset: 1216)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3469, file: !3470, line: 121, baseType: !319, size: 64, offset: 1280)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3469, file: !3470, line: 122, baseType: !319, size: 64, offset: 1344)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3469, file: !3470, line: 123, baseType: !319, size: 64, offset: 1408)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !3469, file: !3470, line: 133, baseType: !319, size: 64, offset: 1472)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !3469, file: !3470, line: 137, baseType: !319, size: 64, offset: 1536)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !3469, file: !3470, line: 142, baseType: !319, size: 64, offset: 1600)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !3469, file: !3470, line: 143, baseType: !319, size: 64, offset: 1664)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !3469, file: !3470, line: 146, baseType: !319, size: 64, offset: 1728)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !3469, file: !3470, line: 147, baseType: !319, size: 64, offset: 1792)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !3469, file: !3470, line: 148, baseType: !319, size: 64, offset: 1856)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !3469, file: !3470, line: 149, baseType: !319, size: 64, offset: 1920)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3469, file: !3470, line: 154, baseType: !319, size: 64, offset: 1984)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3469, file: !3470, line: 155, baseType: !319, size: 64, offset: 2048)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3469, file: !3470, line: 156, baseType: !319, size: 64, offset: 2112)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3469, file: !3470, line: 158, baseType: !319, size: 64, offset: 2176)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3469, file: !3470, line: 159, baseType: !319, size: 64, offset: 2240)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !3469, file: !3470, line: 162, baseType: !319, size: 64, offset: 2304)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !3469, file: !3470, line: 163, baseType: !319, size: 64, offset: 2368)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !3469, file: !3470, line: 164, baseType: !319, size: 64, offset: 2432)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !3469, file: !3470, line: 167, baseType: !319, size: 64, offset: 2496)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !3469, file: !3470, line: 168, baseType: !319, size: 64, offset: 2560)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !3469, file: !3470, line: 171, baseType: !319, size: 64, offset: 2624)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !3469, file: !3470, line: 172, baseType: !319, size: 64, offset: 2688)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !3469, file: !3470, line: 175, baseType: !319, size: 64, offset: 2752)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !3469, file: !3470, line: 178, baseType: !319, size: 64, offset: 2816)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !3469, file: !3470, line: 179, baseType: !319, size: 64, offset: 2880)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !3469, file: !3470, line: 182, baseType: !376, size: 32, offset: 2944)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !3469, file: !3470, line: 186, baseType: !319, size: 64, align: 64, offset: 3008)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !3469, file: !3470, line: 194, baseType: !319, size: 64, offset: 3072)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !3469, file: !3470, line: 195, baseType: !319, size: 64, offset: 3136)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !3469, file: !3470, line: 199, baseType: !319, size: 64, offset: 3200)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !3469, file: !3470, line: 200, baseType: !319, size: 64, offset: 3264)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !3469, file: !3470, line: 203, baseType: !319, size: 64, offset: 3328)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !3469, file: !3470, line: 204, baseType: !319, size: 64, offset: 3392)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3343, file: !3344, line: 222, baseType: !185, size: 32, offset: 7936)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3343, file: !3344, line: 223, baseType: !3534, size: 64, offset: 8000)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3344, line: 223, flags: DIFlagFwdDecl)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3343, file: !3344, line: 230, baseType: !411, size: 8, offset: 8064)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3343, file: !3344, line: 231, baseType: !380, size: 16, offset: 8080)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3343, file: !3344, line: 232, baseType: !380, size: 16, offset: 8096)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3343, file: !3344, line: 234, baseType: !1340, size: 64, offset: 8128)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3343, file: !3344, line: 237, baseType: !77, size: 256, offset: 8192)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3343, file: !3344, line: 243, baseType: !350, size: 320, offset: 8448)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2829, file: !1578, line: 1111, baseType: !3543, size: 64, offset: 15424)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3344, line: 20, size: 16640, elements: !3545)
!3545 = !{!3546, !3547, !3548, !3549}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3544, file: !3344, line: 21, baseType: !187, size: 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3544, file: !3344, line: 22, baseType: !233, size: 32, offset: 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3544, file: !3344, line: 23, baseType: !255, size: 192, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3544, file: !3344, line: 24, baseType: !3550, size: 16384, offset: 256)
!3550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3551, size: 16384, elements: !1123)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3355, line: 51, size: 256, elements: !3552)
!3552 = !{!3553}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3551, file: !3355, line: 52, baseType: !3554, size: 256)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3355, line: 37, size: 256, elements: !3555)
!3555 = !{!3556, !3563, !3564, !3568}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3554, file: !3355, line: 39, baseType: !3557, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3558, line: 83, baseType: !3559)
!3558 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3558, line: 82, baseType: !3561)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{null, !39}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3554, file: !3355, line: 40, baseType: !67, size: 64, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3554, file: !3355, line: 46, baseType: !3565, size: 64, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3558, line: 86, baseType: !3566)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3558, line: 85, baseType: !2381)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3554, file: !3355, line: 48, baseType: !3359, size: 64, offset: 192)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2829, file: !1578, line: 1112, baseType: !3359, size: 64, offset: 15488)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2829, file: !1578, line: 1113, baseType: !3359, size: 64, offset: 15552)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2829, file: !1578, line: 1115, baseType: !3359, size: 64, offset: 15616)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2829, file: !1578, line: 1116, baseType: !3354, size: 192, offset: 15680)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2829, file: !1578, line: 1117, baseType: !67, size: 64, offset: 15872)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2829, file: !1578, line: 1118, baseType: !62, size: 64, offset: 15936)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2829, file: !1578, line: 1119, baseType: !185, size: 32, offset: 16000)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2829, file: !1578, line: 1121, baseType: !179, size: 64, offset: 16064)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2829, file: !1578, line: 1125, baseType: !3578, size: 64, offset: 16128)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1578, line: 43, flags: DIFlagFwdDecl)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2829, file: !1578, line: 1127, baseType: !281, size: 32, offset: 16192)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2829, file: !1578, line: 1128, baseType: !185, size: 32, offset: 16224)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2829, file: !1578, line: 1130, baseType: !3583, size: 128, offset: 16256)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3584, line: 37, size: 128, elements: !3585)
!3584 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3585 = !{!3586, !3587, !3588}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3583, file: !3584, line: 38, baseType: !39, size: 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3583, file: !3584, line: 39, baseType: !105, size: 32, offset: 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3583, file: !3584, line: 40, baseType: !3589, size: 64, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3584, line: 24, flags: DIFlagFwdDecl)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2829, file: !1578, line: 1131, baseType: !3592, size: 256, offset: 16384)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3593, line: 12, size: 256, elements: !3594)
!3593 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3594 = !{!3595, !3596, !3597, !3598}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3592, file: !3593, line: 13, baseType: !60, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3592, file: !3593, line: 14, baseType: !67, size: 64, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3592, file: !3593, line: 15, baseType: !67, size: 64, offset: 128)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3592, file: !3593, line: 16, baseType: !411, size: 8, offset: 192)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2829, file: !1578, line: 1134, baseType: !318, size: 64, offset: 16640)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2829, file: !1578, line: 1135, baseType: !318, size: 64, offset: 16704)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2829, file: !1578, line: 1138, baseType: !187, size: 32, offset: 16768)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2829, file: !1578, line: 1141, baseType: !92, size: 32, offset: 16800)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2829, file: !1578, line: 1143, baseType: !3604, size: 64, offset: 16832)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1578, line: 735, size: 64, elements: !3605)
!3605 = !{!3606}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3604, file: !1578, line: 736, baseType: !3607, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2829, file: !1578, line: 1147, baseType: !1193, size: 128, offset: 16896)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2829, file: !1578, line: 1149, baseType: !2828, size: 64, offset: 17024)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2829, file: !1578, line: 1151, baseType: !3611, size: 64, offset: 17088)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1578, line: 1151, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2829, file: !1578, line: 1188, baseType: !145, size: 64, offset: 17152)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2829, file: !1578, line: 1191, baseType: !3615, size: 64, offset: 17216)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1578, line: 44, flags: DIFlagFwdDecl)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2829, file: !1578, line: 1194, baseType: !3618, size: 64, offset: 17280)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1578, line: 45, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2829, file: !1578, line: 1197, baseType: !3621, size: 64, offset: 17344)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1578, line: 61, flags: DIFlagFwdDecl)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2829, file: !1578, line: 1199, baseType: !3624, size: 64, offset: 17408)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3626, line: 99, size: 128, elements: !3627)
!3626 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3627 = !{!3628, !3629, !3630}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3625, file: !3626, line: 100, baseType: !81, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3625, file: !3626, line: 101, baseType: !105, size: 32, offset: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3625, file: !3626, line: 103, baseType: !123, size: 16, offset: 96)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2829, file: !1578, line: 1202, baseType: !3632, size: 64, offset: 17472)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1578, line: 48, flags: DIFlagFwdDecl)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2829, file: !1578, line: 1205, baseType: !67, size: 64, offset: 17536)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2829, file: !1578, line: 1206, baseType: !3636, size: 64, offset: 17600)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3355, line: 14, baseType: !3638)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3355, line: 12, size: 384, elements: !3639)
!3639 = !{!3640}
!3640 = !DIDerivedType(tag: DW_TAG_member, scope: !3638, file: !3355, line: 13, baseType: !3641, size: 384)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3638, file: !3355, line: 13, size: 384, elements: !3642)
!3642 = !{!3643, !3644, !3645, !3646}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3641, file: !3355, line: 13, baseType: !39, size: 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3641, file: !3355, line: 13, baseType: !39, size: 32, offset: 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3641, file: !3355, line: 13, baseType: !39, size: 32, offset: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3641, file: !3355, line: 13, baseType: !3647, size: 256, offset: 128)
!3647 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3648, line: 37, size: 256, elements: !3649)
!3648 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3649 = !{!3650, !3655, !3668, !3674, !3683, !3710, !3715}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3647, file: !3648, line: 42, baseType: !3651, size: 64)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3647, file: !3648, line: 39, size: 64, elements: !3652)
!3652 = !{!3653, !3654}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3651, file: !3648, line: 40, baseType: !3198, size: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3651, file: !3648, line: 41, baseType: !287, size: 32, offset: 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3647, file: !3648, line: 50, baseType: !3656, size: 192)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3647, file: !3648, line: 45, size: 192, elements: !3657)
!3657 = !{!3658, !3660, !3661, !3667}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3656, file: !3648, line: 46, baseType: !3659, size: 32)
!3659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !65, line: 95, baseType: !39)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3656, file: !3648, line: 47, baseType: !39, size: 32, offset: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3656, file: !3648, line: 48, baseType: !3662, size: 64, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3648, line: 11, baseType: !3663)
!3663 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3648, line: 8, size: 64, elements: !3664)
!3664 = !{!3665, !3666}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3663, file: !3648, line: 9, baseType: !39, size: 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3663, file: !3648, line: 10, baseType: !145, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3656, file: !3648, line: 49, baseType: !39, size: 32, offset: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3647, file: !3648, line: 57, baseType: !3669, size: 128)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3647, file: !3648, line: 53, size: 128, elements: !3670)
!3670 = !{!3671, !3672, !3673}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3669, file: !3648, line: 54, baseType: !3198, size: 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3669, file: !3648, line: 55, baseType: !287, size: 32, offset: 32)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3669, file: !3648, line: 56, baseType: !3662, size: 64, offset: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3647, file: !3648, line: 66, baseType: !3675, size: 256)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3647, file: !3648, line: 60, size: 256, elements: !3676)
!3676 = !{!3677, !3678, !3679, !3680, !3682}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3675, file: !3648, line: 61, baseType: !3198, size: 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3675, file: !3648, line: 62, baseType: !287, size: 32, offset: 32)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3675, file: !3648, line: 63, baseType: !39, size: 32, offset: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3675, file: !3648, line: 64, baseType: !3681, size: 64, offset: 128)
!3681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !65, line: 94, baseType: !905)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3675, file: !3648, line: 65, baseType: !3681, size: 64, offset: 192)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3647, file: !3648, line: 105, baseType: !3684, size: 256)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3647, file: !3648, line: 69, size: 256, elements: !3685)
!3685 = !{!3686, !3687}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3684, file: !3648, line: 70, baseType: !145, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, scope: !3684, file: !3648, line: 79, baseType: !3688, size: 192, offset: 64)
!3688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3684, file: !3648, line: 79, size: 192, elements: !3689)
!3689 = !{!3690, !3691, !3692, !3699, !3704}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3688, file: !3648, line: 81, baseType: !39, size: 32)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3688, file: !3648, line: 86, baseType: !380, size: 16)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3688, file: !3648, line: 92, baseType: !3693, size: 192)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3688, file: !3648, line: 88, size: 192, elements: !3694)
!3694 = !{!3695, !3697, !3698}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3693, file: !3648, line: 89, baseType: !3696, size: 64)
!3696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2386)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3693, file: !3648, line: 90, baseType: !145, size: 64, offset: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3693, file: !3648, line: 91, baseType: !145, size: 64, offset: 128)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3688, file: !3648, line: 97, baseType: !3700, size: 96)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3688, file: !3648, line: 94, size: 96, elements: !3701)
!3701 = !{!3702, !3703}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3700, file: !3648, line: 95, baseType: !3696, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3700, file: !3648, line: 96, baseType: !376, size: 32, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3688, file: !3648, line: 103, baseType: !3705, size: 128)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3688, file: !3648, line: 99, size: 128, elements: !3706)
!3706 = !{!3707, !3708, !3709}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3705, file: !3648, line: 100, baseType: !67, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3705, file: !3648, line: 101, baseType: !376, size: 32, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3705, file: !3648, line: 102, baseType: !376, size: 32, offset: 96)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3647, file: !3648, line: 111, baseType: !3711, size: 128)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3647, file: !3648, line: 108, size: 128, elements: !3712)
!3712 = !{!3713, !3714}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3711, file: !3648, line: 109, baseType: !674, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3711, file: !3648, line: 110, baseType: !39, size: 32, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3647, file: !3648, line: 118, baseType: !3716, size: 128)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3647, file: !3648, line: 114, size: 128, elements: !3717)
!3717 = !{!3718, !3719, !3720}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3716, file: !3648, line: 115, baseType: !145, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3716, file: !3648, line: 116, baseType: !39, size: 32, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3716, file: !3648, line: 117, baseType: !185, size: 32, offset: 96)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2829, file: !1578, line: 1208, baseType: !3439, size: 448, offset: 17664)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2829, file: !1578, line: 1215, baseType: !318, size: 64, offset: 18112)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2829, file: !1578, line: 1217, baseType: !318, size: 64, offset: 18176)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2829, file: !1578, line: 1219, baseType: !318, size: 64, offset: 18240)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2829, file: !1578, line: 1223, baseType: !3726, size: 64, offset: 18304)
!3726 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3727, line: 99, baseType: !3728)
!3727 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3727, line: 99, size: 64, elements: !3729)
!3729 = !{!3730}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3728, file: !3727, line: 99, baseType: !3062, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2829, file: !1578, line: 1225, baseType: !716, size: 32, offset: 18368)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2829, file: !1578, line: 1226, baseType: !39, size: 32, offset: 18400)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2829, file: !1578, line: 1227, baseType: !39, size: 32, offset: 18432)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2829, file: !1578, line: 1231, baseType: !3312, size: 64, offset: 18496)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2829, file: !1578, line: 1233, baseType: !131, size: 128, offset: 18560)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2829, file: !1578, line: 1240, baseType: !3737, size: 64, offset: 18688)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1578, line: 62, flags: DIFlagFwdDecl)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2829, file: !1578, line: 1242, baseType: !3740, size: 64, offset: 18752)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1578, line: 1242, flags: DIFlagFwdDecl)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2829, file: !1578, line: 1244, baseType: !131, size: 128, offset: 18816)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2829, file: !1578, line: 1245, baseType: !3744, size: 64, offset: 18944)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1578, line: 51, flags: DIFlagFwdDecl)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2829, file: !1578, line: 1246, baseType: !77, size: 256, offset: 19008)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2829, file: !1578, line: 1247, baseType: !185, size: 32, offset: 19264)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2829, file: !1578, line: 1250, baseType: !3749, size: 64, offset: 19328)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1578, line: 57, flags: DIFlagFwdDecl)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2829, file: !1578, line: 1251, baseType: !77, size: 256, offset: 19392)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2829, file: !1578, line: 1252, baseType: !131, size: 128, offset: 19648)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2829, file: !1578, line: 1259, baseType: !1576, size: 64, offset: 19776)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2829, file: !1578, line: 1260, baseType: !380, size: 16, offset: 19840)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2829, file: !1578, line: 1261, baseType: !380, size: 16, offset: 19856)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2829, file: !1578, line: 1314, baseType: !3757, size: 64, offset: 19904)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3759, line: 62, size: 256, align: 256, elements: !3760)
!3759 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3760 = !{!3761, !3762, !3763, !3764, !3765, !3766, !3767}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3758, file: !3759, line: 75, baseType: !376, size: 32)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3758, file: !3759, line: 90, baseType: !376, size: 32, offset: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3758, file: !3759, line: 112, baseType: !319, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3758, file: !3759, line: 132, baseType: !376, size: 32, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3758, file: !3759, line: 140, baseType: !376, size: 32, offset: 160)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3758, file: !3759, line: 149, baseType: !376, size: 32, offset: 192)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3758, file: !3759, line: 154, baseType: !3768, offset: 224)
!3768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !270)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2829, file: !1578, line: 1315, baseType: !375, size: 32, offset: 19968)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2829, file: !1578, line: 1316, baseType: !375, size: 32, offset: 20000)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2829, file: !1578, line: 1321, baseType: !67, size: 64, offset: 20032)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2829, file: !1578, line: 1325, baseType: !39, size: 32, offset: 20096)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2829, file: !1578, line: 1326, baseType: !39, size: 32, offset: 20128)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2829, file: !1578, line: 1327, baseType: !39, size: 32, offset: 20160)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2829, file: !1578, line: 1328, baseType: !39, size: 32, offset: 20192)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2829, file: !1578, line: 1329, baseType: !176, size: 128, align: 64, offset: 20224)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2829, file: !1578, line: 1332, baseType: !3778, size: 128, offset: 20352)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3779, line: 51, size: 128, elements: !3780)
!3779 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3780 = !{!3781, !3786, !3787}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3778, file: !3779, line: 60, baseType: !3782, size: 64)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3783, line: 7, size: 64, elements: !3784)
!3783 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3784 = !{!3785}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3782, file: !3783, line: 12, baseType: !3059, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3778, file: !3779, line: 63, baseType: !411, size: 8, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3778, file: !3779, line: 70, baseType: !411, size: 8, offset: 72)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2829, file: !1578, line: 1335, baseType: !3789, size: 64, offset: 20480)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1578, line: 59, flags: DIFlagFwdDecl)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2829, file: !1578, line: 1337, baseType: !3792, size: 128, offset: 20544)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3779, line: 39, size: 128, elements: !3793)
!3793 = !{!3794, !3795, !3796}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3792, file: !3779, line: 40, baseType: !1208, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3792, file: !3779, line: 42, baseType: !376, size: 32, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3792, file: !3779, line: 43, baseType: !376, size: 32, offset: 96)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2829, file: !1578, line: 1340, baseType: !3798, size: 64, offset: 20672)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1578, line: 69, flags: DIFlagFwdDecl)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2829, file: !1578, line: 1351, baseType: !39, size: 32, offset: 20736)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2829, file: !1578, line: 1352, baseType: !39, size: 32, offset: 20768)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2829, file: !1578, line: 1354, baseType: !67, size: 64, offset: 20800)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2829, file: !1578, line: 1364, baseType: !318, size: 64, offset: 20864)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2829, file: !1578, line: 1365, baseType: !318, size: 64, offset: 20928)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2829, file: !1578, line: 1412, baseType: !67, size: 64, offset: 20992)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2829, file: !1578, line: 1453, baseType: !3807, size: 64, offset: 21056)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1578, line: 1453, flags: DIFlagFwdDecl)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2829, file: !1578, line: 1457, baseType: !3810, size: 64, offset: 21120)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !1489, line: 61, size: 576, elements: !3812)
!3812 = !{!3813, !3820, !3839, !3842, !3843, !3876, !3886}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3811, file: !1489, line: 62, baseType: !3814, size: 32)
!3814 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !1489, line: 51, baseType: !185, size: 32, elements: !3815)
!3815 = !{!3816, !3817, !3818, !3819}
!3816 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!3817 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!3818 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!3819 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!3820 = !DIDerivedType(tag: DW_TAG_member, scope: !3811, file: !1489, line: 64, baseType: !3821, size: 192, offset: 64)
!3821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3811, file: !1489, line: 64, size: 192, elements: !3822)
!3822 = !{!3823, !3834}
!3823 = !DIDerivedType(tag: DW_TAG_member, scope: !3821, file: !1489, line: 65, baseType: !3824, size: 192)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3821, file: !1489, line: 65, size: 192, elements: !3825)
!3825 = !{!3826, !3833}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3824, file: !1489, line: 66, baseType: !3827, size: 128)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3828, line: 50, size: 128, elements: !3829)
!3828 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3829 = !{!3830, !3831, !3832}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3827, file: !3828, line: 52, baseType: !67, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3827, file: !3828, line: 54, baseType: !185, size: 32, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3827, file: !3828, line: 55, baseType: !185, size: 32, offset: 96)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3824, file: !1489, line: 67, baseType: !67, size: 64, offset: 128)
!3834 = !DIDerivedType(tag: DW_TAG_member, scope: !3821, file: !1489, line: 70, baseType: !3835, size: 192)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3821, file: !1489, line: 70, size: 192, elements: !3836)
!3836 = !{!3837, !3838}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3835, file: !1489, line: 71, baseType: !176, size: 128, align: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3835, file: !1489, line: 72, baseType: !67, size: 64, offset: 128)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3811, file: !1489, line: 76, baseType: !3840, size: 64, offset: 256)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !1489, line: 76, flags: DIFlagFwdDecl)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3811, file: !1489, line: 77, baseType: !67, size: 64, offset: 320)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3811, file: !1489, line: 79, baseType: !3844, size: 64, offset: 384)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3828, line: 25, size: 256, elements: !3846)
!3846 = !{!3847, !3853, !3857}
!3847 = !DIDerivedType(tag: DW_TAG_member, scope: !3845, file: !3828, line: 26, baseType: !3848, size: 128)
!3848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3845, file: !3828, line: 26, size: 128, elements: !3849)
!3849 = !{!3850, !3852}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3848, file: !3828, line: 27, baseType: !3851, size: 128)
!3851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 128, elements: !3256)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3848, file: !3828, line: 28, baseType: !3851, size: 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3845, file: !3828, line: 31, baseType: !3854, size: 64, offset: 128)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3856)
!3856 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3828, line: 23, flags: DIFlagFwdDecl)
!3857 = !DIDerivedType(tag: DW_TAG_member, scope: !3845, file: !3828, line: 33, baseType: !3858, size: 64, offset: 192)
!3858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3845, file: !3828, line: 33, size: 64, elements: !3859)
!3859 = !{!3860, !3866, !3871}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3858, file: !3828, line: 38, baseType: !3861, size: 64)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3858, file: !3828, line: 34, size: 64, elements: !3862)
!3862 = !{!3863, !3864, !3865}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3861, file: !3828, line: 35, baseType: !335, size: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3861, file: !3828, line: 36, baseType: !113, size: 8, offset: 32)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3861, file: !3828, line: 37, baseType: !113, size: 8, offset: 40)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3858, file: !3828, line: 42, baseType: !3867, size: 16)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3858, file: !3828, line: 39, size: 16, elements: !3868)
!3868 = !{!3869, !3870}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3867, file: !3828, line: 40, baseType: !113, size: 8)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3867, file: !3828, line: 41, baseType: !113, size: 8, offset: 8)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3858, file: !3828, line: 46, baseType: !3872, size: 16)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3858, file: !3828, line: 43, size: 16, elements: !3873)
!3873 = !{!3874, !3875}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3872, file: !3828, line: 44, baseType: !113, size: 8)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3872, file: !3828, line: 45, baseType: !113, size: 8, offset: 8)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3811, file: !1489, line: 81, baseType: !3877, size: 64, offset: 448)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !1489, line: 85, size: 384, elements: !3879)
!3879 = !{!3880, !3881, !3882, !3883, !3884, !3885}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3878, file: !1489, line: 86, baseType: !3840, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3878, file: !1489, line: 87, baseType: !67, size: 64, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3878, file: !1489, line: 88, baseType: !67, size: 64, offset: 128)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3878, file: !1489, line: 89, baseType: !67, size: 64, offset: 192)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3878, file: !1489, line: 90, baseType: !411, size: 8, offset: 256)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3878, file: !1489, line: 92, baseType: !3877, size: 64, offset: 320)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3811, file: !1489, line: 82, baseType: !185, size: 32, offset: 512)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2829, file: !1578, line: 1463, baseType: !3888, offset: 21184)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1578, line: 739, elements: !1361)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2829, file: !1578, line: 1470, baseType: !176, size: 128, align: 64, offset: 21184)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2829, file: !1578, line: 1471, baseType: !233, size: 32, offset: 21312)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2829, file: !1578, line: 1472, baseType: !39, size: 32, offset: 21344)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2829, file: !1578, line: 1474, baseType: !2828, size: 64, offset: 21376)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2829, file: !1578, line: 1475, baseType: !2271, size: 320, offset: 21440)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2829, file: !1578, line: 1478, baseType: !3895, size: 64, offset: 21760)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1578, line: 1478, flags: DIFlagFwdDecl)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2829, file: !1578, line: 1482, baseType: !233, size: 32, offset: 21824)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2829, file: !1578, line: 1489, baseType: !145, size: 64, offset: 21888)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2829, file: !1578, line: 1504, baseType: !145, size: 64, offset: 21952)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2829, file: !1578, line: 1505, baseType: !319, size: 64, offset: 22016)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2829, file: !1578, line: 1506, baseType: !318, size: 64, offset: 22080)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2829, file: !1578, line: 1507, baseType: !319, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2829, file: !1578, line: 1508, baseType: !319, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2829, file: !1578, line: 1509, baseType: !319, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2829, file: !1578, line: 1510, baseType: !176, size: 128, align: 64, offset: 22208)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2829, file: !1578, line: 1511, baseType: !39, size: 32, offset: 22336)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2829, file: !1578, line: 1515, baseType: !3908, size: 64, offset: 22400)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !171, line: 56, size: 64, elements: !3909)
!3909 = !{!3910}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3908, file: !171, line: 57, baseType: !174, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2829, file: !1578, line: 1518, baseType: !3908, size: 64, offset: 22464)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2829, file: !1578, line: 1528, baseType: !176, size: 128, align: 64, offset: 22528)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2829, file: !1578, line: 1552, baseType: !3914, size: 35328, offset: 23040)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3915, line: 430, size: 35328, elements: !3916)
!3915 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3916 = !{!3917, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3946, !3947, !3948, !3949, !3950, !3951, !3954, !3955, !3956, !3957}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3914, file: !3915, line: 432, baseType: !3918, size: 192)
!3918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3919, size: 192, elements: !224)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3920, line: 16, size: 64, elements: !3921)
!3920 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3921 = !{!3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3919, file: !3920, line: 17, baseType: !121, size: 16)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3919, file: !3920, line: 18, baseType: !121, size: 16, offset: 16)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3919, file: !3920, line: 19, baseType: !121, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3919, file: !3920, line: 19, baseType: !121, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3919, file: !3920, line: 19, baseType: !121, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3919, file: !3920, line: 19, baseType: !121, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3919, file: !3920, line: 19, baseType: !121, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3919, file: !3920, line: 20, baseType: !121, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3919, file: !3920, line: 20, baseType: !121, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3919, file: !3920, line: 20, baseType: !121, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3919, file: !3920, line: 20, baseType: !121, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3919, file: !3920, line: 20, baseType: !121, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3919, file: !3920, line: 20, baseType: !121, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3914, file: !3915, line: 436, baseType: !67, size: 64, offset: 192)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3914, file: !3915, line: 440, baseType: !123, size: 16, offset: 256)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3914, file: !3915, line: 441, baseType: !123, size: 16, offset: 272)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3914, file: !3915, line: 442, baseType: !123, size: 16, offset: 288)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3914, file: !3915, line: 443, baseType: !123, size: 16, offset: 304)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3914, file: !3915, line: 447, baseType: !67, size: 64, offset: 320)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3914, file: !3915, line: 448, baseType: !67, size: 64, offset: 384)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3914, file: !3915, line: 459, baseType: !3943, size: 256, offset: 448)
!3943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3944, size: 256, elements: !251)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3915, line: 428, flags: DIFlagFwdDecl)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3914, file: !3915, line: 461, baseType: !67, size: 64, offset: 704)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3914, file: !3915, line: 463, baseType: !67, size: 64, offset: 768)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3914, file: !3915, line: 465, baseType: !67, size: 64, offset: 832)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3914, file: !3915, line: 466, baseType: !67, size: 64, offset: 896)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3914, file: !3915, line: 467, baseType: !67, size: 64, offset: 960)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3914, file: !3915, line: 473, baseType: !3952, size: 64, offset: 1024)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3915, line: 10, flags: DIFlagFwdDecl)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3914, file: !3915, line: 480, baseType: !67, size: 64, offset: 1088)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3914, file: !3915, line: 482, baseType: !185, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3914, file: !3915, line: 491, baseType: !375, size: 32, offset: 1184)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3914, file: !3915, line: 501, baseType: !3958, size: 33792, offset: 1536)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3959, line: 448, size: 33792, elements: !3960)
!3959 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3960 = !{!3961, !3962, !3963, !4125, !4126, !4132, !4133}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3958, file: !3959, line: 461, baseType: !185, size: 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3958, file: !3959, line: 468, baseType: !67, size: 64, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3958, file: !3959, line: 476, baseType: !3964, size: 64, offset: 128)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3959, line: 356, size: 33280, align: 512, elements: !3966)
!3966 = !{!3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3965, file: !3959, line: 358, baseType: !185, size: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3965, file: !3959, line: 361, baseType: !185, size: 32, offset: 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3965, file: !3959, line: 364, baseType: !318, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3965, file: !3959, line: 367, baseType: !318, size: 64, offset: 128)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3965, file: !3959, line: 370, baseType: !318, size: 64, offset: 192)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3965, file: !3959, line: 373, baseType: !185, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3965, file: !3959, line: 376, baseType: !185, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3965, file: !3959, line: 391, baseType: !185, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3965, file: !3959, line: 394, baseType: !185, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3965, file: !3959, line: 397, baseType: !3977, size: 32768, offset: 512)
!3977 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3959, line: 348, size: 32768, elements: !3978)
!3978 = !{!3979, !3994, !4031, !4108, !4121}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3977, file: !3959, line: 349, baseType: !3980, size: 896)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3959, line: 12, size: 896, elements: !3981)
!3981 = !{!3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3993}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3980, file: !3959, line: 13, baseType: !375, size: 32)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3980, file: !3959, line: 14, baseType: !375, size: 32, offset: 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3980, file: !3959, line: 15, baseType: !375, size: 32, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3980, file: !3959, line: 16, baseType: !375, size: 32, offset: 96)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3980, file: !3959, line: 17, baseType: !375, size: 32, offset: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3980, file: !3959, line: 18, baseType: !375, size: 32, offset: 160)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3980, file: !3959, line: 19, baseType: !375, size: 32, offset: 192)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3980, file: !3959, line: 22, baseType: !3990, size: 640, offset: 224)
!3990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 640, elements: !3991)
!3991 = !{!3992}
!3992 = !DISubrange(count: 20)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3980, file: !3959, line: 25, baseType: !375, size: 32, offset: 864)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3977, file: !3959, line: 350, baseType: !3995, size: 4096, align: 128)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3959, line: 34, size: 4096, align: 128, elements: !3996)
!3996 = !{!3997, !3998, !3999, !4000, !4001, !4016, !4017, !4018, !4020, !4022, !4026}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3995, file: !3959, line: 35, baseType: !121, size: 16)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3995, file: !3959, line: 36, baseType: !121, size: 16, offset: 16)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3995, file: !3959, line: 37, baseType: !121, size: 16, offset: 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3995, file: !3959, line: 38, baseType: !121, size: 16, offset: 48)
!4001 = !DIDerivedType(tag: DW_TAG_member, scope: !3995, file: !3959, line: 39, baseType: !4002, size: 128, offset: 64)
!4002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3995, file: !3959, line: 39, size: 128, elements: !4003)
!4003 = !{!4004, !4009}
!4004 = !DIDerivedType(tag: DW_TAG_member, scope: !4002, file: !3959, line: 40, baseType: !4005, size: 128)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4002, file: !3959, line: 40, size: 128, elements: !4006)
!4006 = !{!4007, !4008}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4005, file: !3959, line: 41, baseType: !318, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4005, file: !3959, line: 42, baseType: !318, size: 64, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, scope: !4002, file: !3959, line: 44, baseType: !4010, size: 128)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4002, file: !3959, line: 44, size: 128, elements: !4011)
!4011 = !{!4012, !4013, !4014, !4015}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4010, file: !3959, line: 45, baseType: !375, size: 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4010, file: !3959, line: 46, baseType: !375, size: 32, offset: 32)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4010, file: !3959, line: 47, baseType: !375, size: 32, offset: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4010, file: !3959, line: 48, baseType: !375, size: 32, offset: 96)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3995, file: !3959, line: 51, baseType: !375, size: 32, offset: 192)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3995, file: !3959, line: 52, baseType: !375, size: 32, offset: 224)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3995, file: !3959, line: 55, baseType: !4019, size: 1024, offset: 256)
!4019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 1024, elements: !3486)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3995, file: !3959, line: 58, baseType: !4021, size: 2048, offset: 1280)
!4021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 2048, elements: !1123)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3995, file: !3959, line: 60, baseType: !4023, size: 384, offset: 3328)
!4023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 384, elements: !4024)
!4024 = !{!4025}
!4025 = !DISubrange(count: 12)
!4026 = !DIDerivedType(tag: DW_TAG_member, scope: !3995, file: !3959, line: 62, baseType: !4027, size: 384, offset: 3712)
!4027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3995, file: !3959, line: 62, size: 384, elements: !4028)
!4028 = !{!4029, !4030}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4027, file: !3959, line: 63, baseType: !4023, size: 384)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4027, file: !3959, line: 64, baseType: !4023, size: 384)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3977, file: !3959, line: 351, baseType: !4032, size: 1088)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3959, line: 79, size: 1088, elements: !4033)
!4033 = !{!4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4107}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4032, file: !3959, line: 80, baseType: !375, size: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4032, file: !3959, line: 81, baseType: !375, size: 32, offset: 32)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4032, file: !3959, line: 82, baseType: !375, size: 32, offset: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4032, file: !3959, line: 83, baseType: !375, size: 32, offset: 96)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4032, file: !3959, line: 84, baseType: !375, size: 32, offset: 128)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4032, file: !3959, line: 85, baseType: !375, size: 32, offset: 160)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4032, file: !3959, line: 86, baseType: !375, size: 32, offset: 192)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4032, file: !3959, line: 88, baseType: !3990, size: 640, offset: 224)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4032, file: !3959, line: 89, baseType: !113, size: 8, offset: 864)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4032, file: !3959, line: 90, baseType: !113, size: 8, offset: 872)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4032, file: !3959, line: 91, baseType: !113, size: 8, offset: 880)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4032, file: !3959, line: 92, baseType: !113, size: 8, offset: 888)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4032, file: !3959, line: 93, baseType: !113, size: 8, offset: 896)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4032, file: !3959, line: 94, baseType: !113, size: 8, offset: 904)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4032, file: !3959, line: 95, baseType: !4049, size: 64, offset: 960)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4051, line: 11, size: 128, elements: !4052)
!4051 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4052 = !{!4053, !4054}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4050, file: !4051, line: 12, baseType: !674, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4050, file: !4051, line: 13, baseType: !4055, size: 64, offset: 64)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4057, line: 103, size: 1344, elements: !4058)
!4057 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4058 = !{!4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4087, !4088, !4089}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4056, file: !4057, line: 109, baseType: !67, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4056, file: !4057, line: 110, baseType: !67, size: 64, offset: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4056, file: !4057, line: 111, baseType: !67, size: 64, offset: 128)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4056, file: !4057, line: 112, baseType: !67, size: 64, offset: 192)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4056, file: !4057, line: 113, baseType: !67, size: 64, offset: 256)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4056, file: !4057, line: 114, baseType: !67, size: 64, offset: 320)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4056, file: !4057, line: 117, baseType: !67, size: 64, offset: 384)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4056, file: !4057, line: 118, baseType: !67, size: 64, offset: 448)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4056, file: !4057, line: 119, baseType: !67, size: 64, offset: 512)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4056, file: !4057, line: 120, baseType: !67, size: 64, offset: 576)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4056, file: !4057, line: 121, baseType: !67, size: 64, offset: 640)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4056, file: !4057, line: 122, baseType: !67, size: 64, offset: 704)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4056, file: !4057, line: 123, baseType: !67, size: 64, offset: 768)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4056, file: !4057, line: 124, baseType: !67, size: 64, offset: 832)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4056, file: !4057, line: 125, baseType: !67, size: 64, offset: 896)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4056, file: !4057, line: 139, baseType: !67, size: 64, offset: 960)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4056, file: !4057, line: 142, baseType: !67, size: 64, offset: 1024)
!4076 = !DIDerivedType(tag: DW_TAG_member, scope: !4056, file: !4057, line: 144, baseType: !4077, size: 64, offset: 1088)
!4077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4056, file: !4057, line: 144, size: 64, elements: !4078)
!4078 = !{!4079, !4080, !4081}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4077, file: !4057, line: 146, baseType: !121, size: 16)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4077, file: !4057, line: 148, baseType: !318, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4077, file: !4057, line: 150, baseType: !4082, size: 64)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4057, line: 59, size: 64, elements: !4083)
!4083 = !{!4084, !4085, !4086}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4082, file: !4057, line: 61, baseType: !318, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4082, file: !4057, line: 63, baseType: !318, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4082, file: !4057, line: 65, baseType: !318, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4056, file: !4057, line: 153, baseType: !67, size: 64, offset: 1152)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4056, file: !4057, line: 154, baseType: !67, size: 64, offset: 1216)
!4089 = !DIDerivedType(tag: DW_TAG_member, scope: !4056, file: !4057, line: 156, baseType: !4090, size: 64, offset: 1280)
!4090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4056, file: !4057, line: 156, size: 64, elements: !4091)
!4091 = !{!4092, !4093, !4094}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4090, file: !4057, line: 158, baseType: !121, size: 16)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4090, file: !4057, line: 160, baseType: !318, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4090, file: !4057, line: 162, baseType: !4095, size: 64)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4057, line: 69, size: 64, elements: !4096)
!4096 = !{!4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4095, file: !4057, line: 71, baseType: !318, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4095, file: !4057, line: 73, baseType: !318, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4095, file: !4057, line: 75, baseType: !318, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4095, file: !4057, line: 77, baseType: !318, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4095, file: !4057, line: 80, baseType: !318, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4095, file: !4057, line: 83, baseType: !318, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4095, file: !4057, line: 86, baseType: !318, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4095, file: !4057, line: 88, baseType: !318, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4095, file: !4057, line: 93, baseType: !318, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4095, file: !4057, line: 100, baseType: !318, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4032, file: !3959, line: 96, baseType: !375, size: 32, offset: 1024)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3977, file: !3959, line: 352, baseType: !4109, size: 4608, align: 512)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3959, line: 333, size: 4608, align: 512, elements: !4110)
!4110 = !{!4111, !4112, !4119}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4109, file: !3959, line: 334, baseType: !3995, size: 4096, align: 128)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4109, file: !3959, line: 335, baseType: !4113, size: 512, offset: 4096)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3959, line: 312, size: 512, elements: !4114)
!4114 = !{!4115, !4116, !4117}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4113, file: !3959, line: 313, baseType: !318, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4113, file: !3959, line: 314, baseType: !318, size: 64, offset: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4113, file: !3959, line: 315, baseType: !4118, size: 384, offset: 128)
!4118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 384, elements: !398)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4109, file: !3959, line: 336, baseType: !4120, offset: 4608)
!4120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, elements: !270)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3977, file: !3959, line: 353, baseType: !4122, size: 32768)
!4122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 32768, elements: !4123)
!4123 = !{!4124}
!4124 = !DISubrange(count: 4096)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3958, file: !3959, line: 484, baseType: !3964, size: 64, offset: 192)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3958, file: !3959, line: 491, baseType: !4127, size: 128, offset: 256)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3959, line: 404, size: 128, elements: !4128)
!4128 = !{!4129, !4130, !4131}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4127, file: !3959, line: 424, baseType: !318, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4127, file: !3959, line: 432, baseType: !185, size: 32, offset: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4127, file: !3959, line: 440, baseType: !185, size: 32, offset: 96)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3958, file: !3959, line: 498, baseType: !4127, size: 128, offset: 384)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3958, file: !3959, line: 508, baseType: !3965, size: 33280, align: 512, offset: 512)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2811, file: !2812, line: 16, baseType: !255, size: 192, offset: 512)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2811, file: !2812, line: 17, baseType: !105, size: 32, offset: 704)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !960, file: !164, line: 1240, baseType: !145, size: 64, offset: 6912)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !960, file: !164, line: 1243, baseType: !375, size: 32, offset: 6976)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !960, file: !164, line: 1245, baseType: !366, size: 64, offset: 7040)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !960, file: !164, line: 1246, baseType: !366, size: 64, offset: 7104)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !960, file: !164, line: 1248, baseType: !376, size: 32, offset: 7168)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !960, file: !164, line: 1249, baseType: !4142, size: 64, offset: 7232)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !164, line: 634, flags: DIFlagFwdDecl)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !960, file: !164, line: 1252, baseType: !3485, size: 256, offset: 7296)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !960, file: !164, line: 1253, baseType: !4146, size: 128, offset: 7552)
!4146 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4147, line: 21, baseType: !4148)
!4147 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4147, line: 19, size: 128, elements: !4149)
!4149 = !{!4150}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4148, file: !4147, line: 20, baseType: !4151, size: 128)
!4151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 128, elements: !3256)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !960, file: !164, line: 1255, baseType: !185, size: 32, offset: 7680)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !960, file: !164, line: 1261, baseType: !77, size: 256, offset: 7744)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !960, file: !164, line: 1267, baseType: !414, size: 64, offset: 8000)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !960, file: !164, line: 1269, baseType: !4156, size: 64, offset: 8064)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4158)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !712, line: 128, size: 1024, align: 512, elements: !4159)
!4159 = !{!4160, !4164, !4165, !4172, !4178, !4182, !4186, !4190, !4191, !4195, !4199, !4204, !4208}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4158, file: !712, line: 129, baseType: !4161, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!39, !710, !185}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4158, file: !712, line: 130, baseType: !4161, size: 64, offset: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4158, file: !712, line: 131, baseType: !4166, size: 64, offset: 128)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!39, !4169, !4171}
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !711)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4158, file: !712, line: 132, baseType: !4173, size: 64, offset: 192)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!39, !4169, !185, !414, !4176}
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !735)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4158, file: !712, line: 134, baseType: !4179, size: 64, offset: 256)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!39, !4169}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4158, file: !712, line: 135, baseType: !4183, size: 64, offset: 320)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!39, !710}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4158, file: !712, line: 136, baseType: !4187, size: 64, offset: 384)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{null, !710}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4158, file: !712, line: 137, baseType: !4187, size: 64, offset: 448)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4158, file: !712, line: 138, baseType: !4192, size: 64, offset: 512)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{null, !710, !750}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4158, file: !712, line: 139, baseType: !4196, size: 64, offset: 576)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!60, !710, !60, !39}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4158, file: !712, line: 140, baseType: !4200, size: 64, offset: 640)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!705, !4203}
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4158, file: !712, line: 141, baseType: !4205, size: 64, offset: 704)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!39, !872, !411}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4158, file: !712, line: 142, baseType: !4209, size: 64, offset: 768)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!710, !710, !4212}
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !751)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !960, file: !164, line: 1271, baseType: !4215, size: 448, offset: 8128)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2593, line: 63, size: 448, elements: !4216)
!4216 = !{!4217, !4222, !4223, !4224, !4225, !4226, !4227}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4215, file: !2593, line: 64, baseType: !4218, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!67, !4221, !2591}
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4215, file: !2593, line: 66, baseType: !4218, size: 64, offset: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4215, file: !2593, line: 69, baseType: !674, size: 64, offset: 128)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4215, file: !2593, line: 70, baseType: !39, size: 32, offset: 192)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4215, file: !2593, line: 71, baseType: !185, size: 32, offset: 224)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4215, file: !2593, line: 74, baseType: !131, size: 128, offset: 256)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4215, file: !2593, line: 85, baseType: !4228, size: 64, offset: 384)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !960, file: !164, line: 1274, baseType: !81, size: 64, offset: 8576)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !960, file: !164, line: 1280, baseType: !81, size: 64, offset: 8640)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !960, file: !164, line: 1283, baseType: !39, size: 32, offset: 8704)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !960, file: !164, line: 1286, baseType: !1863, size: 32, offset: 8736)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !960, file: !164, line: 1289, baseType: !2333, size: 64, offset: 8768)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !960, file: !164, line: 1290, baseType: !242, size: 64, offset: 8832)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !960, file: !164, line: 1297, baseType: !496, size: 64, offset: 8896)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !960, file: !164, line: 1304, baseType: !4237, size: 64, offset: 8960)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4238, line: 49, size: 64, elements: !4239)
!4238 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4239 = !{!4240}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4237, file: !4238, line: 50, baseType: !4241, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4238, line: 41, size: 512, align: 512, elements: !4243)
!4243 = !{!4244, !4245, !4250}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4242, file: !4238, line: 43, baseType: !187, size: 32)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4242, file: !4238, line: 45, baseType: !4246, size: 192, offset: 64)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4238, line: 29, size: 192, elements: !4247)
!4247 = !{!4248, !4249}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4246, file: !4238, line: 30, baseType: !131, size: 128)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4246, file: !4238, line: 32, baseType: !674, size: 64, offset: 128)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4242, file: !4238, line: 46, baseType: !674, size: 64, offset: 256)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !960, file: !164, line: 1305, baseType: !4237, size: 64, offset: 9024)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !960, file: !164, line: 1306, baseType: !176, size: 128, align: 64, offset: 9088)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !960, file: !164, line: 1307, baseType: !545, size: 256, offset: 9216)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !960, file: !164, line: 1309, baseType: !77, size: 256, offset: 9472)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !960, file: !164, line: 1314, baseType: !39, size: 32, offset: 9728)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !960, file: !164, line: 1317, baseType: !187, size: 32, align: 512, offset: 10240)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !960, file: !164, line: 1318, baseType: !131, size: 128, offset: 10304)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !960, file: !164, line: 1320, baseType: !187, size: 32, offset: 10432)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !960, file: !164, line: 1321, baseType: !131, size: 128, offset: 10496)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !751, file: !164, line: 656, baseType: !1184, size: 64, offset: 512)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !751, file: !164, line: 659, baseType: !145, size: 64, offset: 576)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !751, file: !164, line: 663, baseType: !67, size: 64, offset: 640)
!4263 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !164, line: 671, baseType: !4264, size: 32, offset: 704)
!4264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !164, line: 671, size: 32, elements: !4265)
!4265 = !{!4266, !4268}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4264, file: !164, line: 672, baseType: !4267, size: 32)
!4267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4264, file: !164, line: 673, baseType: !185, size: 32)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !751, file: !164, line: 675, baseType: !824, size: 32, offset: 736)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !751, file: !164, line: 676, baseType: !72, size: 64, offset: 768)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !751, file: !164, line: 677, baseType: !860, size: 128, offset: 832)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !751, file: !164, line: 678, baseType: !860, size: 128, offset: 960)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !751, file: !164, line: 679, baseType: !860, size: 128, offset: 1088)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !751, file: !164, line: 680, baseType: !187, size: 32, offset: 1216)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !751, file: !164, line: 681, baseType: !123, size: 16, offset: 1248)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !751, file: !164, line: 682, baseType: !113, size: 8, offset: 1264)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !751, file: !164, line: 683, baseType: !113, size: 8, offset: 1272)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !751, file: !164, line: 684, baseType: !2724, size: 64, offset: 1280)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !751, file: !164, line: 691, baseType: !67, size: 64, offset: 1344)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !751, file: !164, line: 692, baseType: !350, size: 320, offset: 1408)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !751, file: !164, line: 694, baseType: !67, size: 64, offset: 1728)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !751, file: !164, line: 695, baseType: !67, size: 64, offset: 1792)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !751, file: !164, line: 697, baseType: !246, size: 128, offset: 1856)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !751, file: !164, line: 698, baseType: !131, size: 128, offset: 1984)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !751, file: !164, line: 707, baseType: !131, size: 128, offset: 2112)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !751, file: !164, line: 708, baseType: !131, size: 128, offset: 2240)
!4287 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !164, line: 709, baseType: !4288, size: 128, offset: 2368)
!4288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !164, line: 709, size: 128, elements: !4289)
!4289 = !{!4290, !4291}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4288, file: !164, line: 710, baseType: !242, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4288, file: !164, line: 711, baseType: !176, size: 128, align: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !751, file: !164, line: 713, baseType: !83, size: 64, offset: 2496)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !751, file: !164, line: 714, baseType: !83, size: 64, offset: 2560)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !751, file: !164, line: 715, baseType: !105, size: 32, offset: 2624)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !751, file: !164, line: 716, baseType: !105, size: 32, offset: 2656)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !751, file: !164, line: 717, baseType: !105, size: 32, offset: 2688)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !751, file: !164, line: 719, baseType: !105, size: 32, offset: 2720)
!4298 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !164, line: 721, baseType: !4299, size: 64, offset: 2752)
!4299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !164, line: 721, size: 64, elements: !4300)
!4300 = !{!4301, !4425}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4299, file: !164, line: 722, baseType: !4302, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4304)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !164, line: 1914, size: 2112, elements: !4305)
!4305 = !{!4306, !4307, !4311, !4315, !4319, !4320, !4321, !4327, !4340, !4344, !4348, !4349, !4353, !4354, !4358, !4363, !4364, !4368, !4372, !4378, !4379, !4383, !4384, !4388, !4392, !4393, !4398, !4402, !4406, !4410, !4414, !4415, !4421}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4304, file: !164, line: 1915, baseType: !1060, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4304, file: !164, line: 1916, baseType: !4308, size: 64, offset: 64)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!72, !867, !72, !39}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4304, file: !164, line: 1917, baseType: !4312, size: 64, offset: 128)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!903, !867, !60, !62, !146}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4304, file: !164, line: 1918, baseType: !4316, size: 64, offset: 192)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!903, !867, !414, !62, !146}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4304, file: !164, line: 1919, baseType: !1790, size: 64, offset: 256)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4304, file: !164, line: 1920, baseType: !1790, size: 64, offset: 320)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4304, file: !164, line: 1921, baseType: !4322, size: 64, offset: 384)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!39, !1793, !4325, !185}
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !164, line: 53, flags: DIFlagFwdDecl)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4304, file: !164, line: 1923, baseType: !4328, size: 64, offset: 448)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!39, !867, !4331}
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !164, line: 1858, size: 128, elements: !4333)
!4333 = !{!4334, !4339}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4332, file: !164, line: 1859, baseType: !4335, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !164, line: 1855, baseType: !4336)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!411, !4331, !414, !39, !72, !318, !185}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4332, file: !164, line: 1860, baseType: !72, size: 64, offset: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4304, file: !164, line: 1924, baseType: !4341, size: 64, offset: 512)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!1999, !867, !2001}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4304, file: !164, line: 1925, baseType: !4345, size: 64, offset: 576)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!674, !867, !185, !67}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4304, file: !164, line: 1926, baseType: !4345, size: 64, offset: 640)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4304, file: !164, line: 1927, baseType: !4350, size: 64, offset: 704)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!39, !867, !1327}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4304, file: !164, line: 1928, baseType: !67, size: 64, offset: 768)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4304, file: !164, line: 1929, baseType: !4355, size: 64, offset: 832)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!39, !750, !867}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4304, file: !164, line: 1930, baseType: !4359, size: 64, offset: 896)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!39, !867, !4362}
!4362 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !164, line: 1061, baseType: !145)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4304, file: !164, line: 1931, baseType: !4355, size: 64, offset: 960)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4304, file: !164, line: 1932, baseType: !4365, size: 64, offset: 1024)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!39, !867, !72, !72, !39}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4304, file: !164, line: 1933, baseType: !4369, size: 64, offset: 1088)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!39, !39, !867, !39}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4304, file: !164, line: 1934, baseType: !4373, size: 64, offset: 1152)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!39, !867, !39, !4376}
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !164, line: 1063, flags: DIFlagFwdDecl)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4304, file: !164, line: 1935, baseType: !1365, size: 64, offset: 1216)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4304, file: !164, line: 1936, baseType: !4380, size: 64, offset: 1280)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!39, !39}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4304, file: !164, line: 1937, baseType: !4373, size: 64, offset: 1344)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4304, file: !164, line: 1938, baseType: !4385, size: 64, offset: 1408)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!903, !3789, !867, !146, !62, !185}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4304, file: !164, line: 1939, baseType: !4389, size: 64, offset: 1472)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!903, !867, !146, !3789, !62, !185}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4304, file: !164, line: 1940, baseType: !1853, size: 64, offset: 1536)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4304, file: !164, line: 1941, baseType: !4394, size: 64, offset: 1600)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!39, !867, !39, !4397, !1767}
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4304, file: !164, line: 1942, baseType: !4399, size: 64, offset: 1664)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{!674, !867, !39, !72, !72}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4304, file: !164, line: 1944, baseType: !4403, size: 64, offset: 1728)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{null, !55, !867}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4304, file: !164, line: 1948, baseType: !4407, size: 64, offset: 1792)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!903, !867, !72, !867, !72, !62, !185}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4304, file: !164, line: 1950, baseType: !4411, size: 64, offset: 1856)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!72, !867, !72, !867, !72, !72, !185}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4304, file: !164, line: 1953, baseType: !4365, size: 64, offset: 1920)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4304, file: !164, line: 1954, baseType: !4416, size: 64, offset: 1984)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!39, !4419, !185}
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !164, line: 1911, flags: DIFlagFwdDecl)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4304, file: !164, line: 1955, baseType: !4422, size: 64, offset: 2048)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!39, !4419, !4325, !185}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4299, file: !164, line: 723, baseType: !2472, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !751, file: !164, line: 725, baseType: !4427, size: 64, offset: 2816)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !164, line: 725, flags: DIFlagFwdDecl)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !751, file: !164, line: 726, baseType: !1185, size: 1536, align: 64, offset: 2880)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !751, file: !164, line: 727, baseType: !131, size: 128, offset: 4416)
!4431 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !164, line: 728, baseType: !4432, size: 64, offset: 4544)
!4432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !164, line: 728, size: 64, elements: !4433)
!4433 = !{!4434, !4435, !4438, !4439}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4432, file: !164, line: 729, baseType: !3789, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4432, file: !164, line: 730, baseType: !4436, size: 64)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !164, line: 730, flags: DIFlagFwdDecl)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4432, file: !164, line: 731, baseType: !60, size: 64)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4432, file: !164, line: 732, baseType: !185, size: 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !751, file: !164, line: 735, baseType: !376, size: 32, offset: 4608)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !751, file: !164, line: 738, baseType: !376, size: 32, offset: 4640)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !751, file: !164, line: 739, baseType: !4142, size: 64, offset: 4672)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !751, file: !164, line: 750, baseType: !145, size: 64, offset: 4736)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !711, file: !712, line: 91, baseType: !4445, size: 256, offset: 448)
!4445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 256, elements: !3486)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !711, file: !712, line: 94, baseType: !4447, size: 64, offset: 704)
!4447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4448, line: 25, size: 64, elements: !4449)
!4448 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4449 = !{!4450}
!4450 = !DIDerivedType(tag: DW_TAG_member, scope: !4447, file: !4448, line: 26, baseType: !4451, size: 64)
!4451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4447, file: !4448, line: 26, size: 64, elements: !4452)
!4452 = !{!4453, !4454}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4451, file: !4448, line: 28, baseType: !319, size: 64, align: 64)
!4454 = !DIDerivedType(tag: DW_TAG_member, scope: !4451, file: !4448, line: 30, baseType: !4455, size: 64)
!4455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4451, file: !4448, line: 30, size: 64, elements: !4456)
!4456 = !{!4457, !4458}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4455, file: !4448, line: 31, baseType: !187, size: 32)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4455, file: !4448, line: 32, baseType: !39, size: 32, offset: 32)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !711, file: !712, line: 95, baseType: !4156, size: 64, offset: 768)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !711, file: !712, line: 96, baseType: !959, size: 64, offset: 832)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !711, file: !712, line: 97, baseType: !67, size: 64, offset: 896)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !711, file: !712, line: 98, baseType: !145, size: 64, offset: 960)
!4463 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !712, line: 100, baseType: !4464, size: 128, offset: 1024)
!4464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !712, line: 100, size: 128, elements: !4465)
!4465 = !{!4466, !4467}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4464, file: !712, line: 101, baseType: !131, size: 128)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4464, file: !712, line: 102, baseType: !4468, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !711, file: !712, line: 104, baseType: !131, size: 128, offset: 1152)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !711, file: !712, line: 105, baseType: !131, size: 128, offset: 1280)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !711, file: !712, line: 113, baseType: !4472, size: 128, offset: 1408)
!4472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !712, line: 109, size: 128, elements: !4473)
!4473 = !{!4474, !4475, !4476}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4472, file: !712, line: 110, baseType: !246, size: 128)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4472, file: !712, line: 111, baseType: !726, size: 128)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4472, file: !712, line: 112, baseType: !176, size: 128, align: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !706, file: !707, line: 72, baseType: !959, size: 64, offset: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !706, file: !707, line: 73, baseType: !39, size: 32, offset: 128)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !706, file: !707, line: 74, baseType: !789, size: 64, offset: 192)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !701, file: !702, line: 10, baseType: !710, size: 64, offset: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !163, file: !164, line: 1015, baseType: !750, size: 64, offset: 1344)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !163, file: !164, line: 1016, baseType: !4302, size: 64, offset: 1408)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !163, file: !164, line: 1018, baseType: !318, size: 64, offset: 1472)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !163, file: !164, line: 1020, baseType: !145, size: 64, offset: 1536)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !163, file: !164, line: 1023, baseType: !145, size: 64, offset: 1600)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !163, file: !164, line: 1027, baseType: !4487, size: 64, offset: 1664)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !163, file: !164, line: 1029, baseType: !1184, size: 64, offset: 1728)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !163, file: !164, line: 1030, baseType: !1863, size: 32, offset: 1792)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !163, file: !164, line: 1031, baseType: !1863, size: 32, offset: 1824)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !56, file: !57, line: 29, baseType: !145, size: 64, offset: 896)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !28, file: !20, line: 679, baseType: !52, size: 64, offset: 512)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !28, file: !20, line: 682, baseType: !4494, size: 64, offset: 576)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{!39, !4497}
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4499, line: 107, size: 512, elements: !4500)
!4499 = !DIFile(filename: "kernel/cgroup/cgroup-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5755a84507a6826ba0951aadf2c370ce")
!4500 = !{!4501, !4502, !4503, !4504, !4505, !4506, !4507}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "src_csets", scope: !4498, file: !4499, line: 109, baseType: !131, size: 128)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "dst_csets", scope: !4498, file: !4499, line: 110, baseType: !131, size: 128, offset: 128)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4498, file: !4499, line: 113, baseType: !39, size: 32, offset: 256)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "ssid", scope: !4498, file: !4499, line: 116, baseType: !39, size: 32, offset: 288)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "csets", scope: !4498, file: !4499, line: 129, baseType: !134, size: 64, offset: 320)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "cur_cset", scope: !4498, file: !4499, line: 130, baseType: !3312, size: 64, offset: 384)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "cur_task", scope: !4498, file: !4499, line: 131, baseType: !2828, size: 64, offset: 448)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !28, file: !20, line: 683, baseType: !4509, size: 64, offset: 640)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{null, !4497}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !28, file: !20, line: 684, baseType: !4509, size: 64, offset: 704)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !28, file: !20, line: 685, baseType: !2380, size: 64, offset: 768)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !28, file: !20, line: 686, baseType: !4515, size: 64, offset: 832)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!39, !2828, !3312}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !28, file: !20, line: 688, baseType: !4519, size: 64, offset: 896)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{null, !2828, !3312}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !28, file: !20, line: 689, baseType: !4523, size: 64, offset: 960)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{null, !2828}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !28, file: !20, line: 690, baseType: !4523, size: 64, offset: 1024)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !28, file: !20, line: 691, baseType: !4523, size: 64, offset: 1088)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !28, file: !20, line: 692, baseType: !41, size: 64, offset: 1152)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !28, file: !20, line: 694, baseType: !411, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !28, file: !20, line: 707, baseType: !411, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !28, file: !20, line: 719, baseType: !411, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !28, file: !20, line: 722, baseType: !39, size: 32, offset: 1248)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !28, file: !20, line: 723, baseType: !414, size: 64, offset: 1280)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !28, file: !20, line: 726, baseType: !414, size: 64, offset: 1344)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !28, file: !20, line: 729, baseType: !4536, size: 64, offset: 1408)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !20, line: 537, size: 41664, elements: !4538)
!4538 = !{!4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4550}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4537, file: !20, line: 538, baseType: !1945, size: 64)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4537, file: !20, line: 541, baseType: !185, size: 32, offset: 64)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4537, file: !20, line: 544, baseType: !39, size: 32, offset: 96)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4537, file: !20, line: 547, baseType: !131, size: 128, offset: 128)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4537, file: !20, line: 548, baseType: !176, size: 128, align: 64, offset: 256)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4537, file: !20, line: 555, baseType: !19, size: 7872, offset: 384)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4537, file: !20, line: 558, baseType: !18, size: 64, offset: 8256)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4537, file: !20, line: 561, baseType: !105, size: 32, offset: 8320)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4537, file: !20, line: 564, baseType: !185, size: 32, offset: 8352)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4537, file: !20, line: 567, baseType: !4549, size: 32768, offset: 8384)
!4549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !4123)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4537, file: !20, line: 570, baseType: !4551, size: 512, offset: 41152)
!4551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1123)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !28, file: !20, line: 732, baseType: !4553, size: 192, offset: 1472)
!4553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4554, line: 19, size: 192, elements: !4555)
!4554 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4555 = !{!4556, !4557, !4558}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4553, file: !4554, line: 20, baseType: !950, size: 128)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4553, file: !4554, line: 21, baseType: !185, size: 32, offset: 128)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4553, file: !4554, line: 22, baseType: !185, size: 32, offset: 160)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !28, file: !20, line: 738, baseType: !131, size: 128, offset: 1664)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !28, file: !20, line: 744, baseType: !4561, size: 64, offset: 1792)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !20, line: 580, size: 1728, elements: !4563)
!4563 = !{!4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4573, !4574, !4575, !4579, !4583, !4584, !4585, !4586, !4587, !4591, !4595, !4596}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4562, file: !20, line: 586, baseType: !4551, size: 512)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4562, file: !20, line: 587, baseType: !67, size: 64, offset: 512)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4562, file: !20, line: 593, baseType: !62, size: 64, offset: 576)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4562, file: !20, line: 596, baseType: !185, size: 32, offset: 640)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4562, file: !20, line: 604, baseType: !185, size: 32, offset: 672)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4562, file: !20, line: 610, baseType: !27, size: 64, offset: 704)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4562, file: !20, line: 611, baseType: !131, size: 128, offset: 768)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4562, file: !20, line: 612, baseType: !4572, size: 64, offset: 896)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4562, file: !20, line: 614, baseType: !1961, size: 64, offset: 960)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4562, file: !20, line: 615, baseType: !1981, size: 64, offset: 1024)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4562, file: !20, line: 621, baseType: !4576, size: 64, offset: 1088)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!318, !34, !4561}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4562, file: !20, line: 625, baseType: !4580, size: 64, offset: 1152)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!87, !34, !4561}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4562, file: !20, line: 628, baseType: !156, size: 64, offset: 1216)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4562, file: !20, line: 631, baseType: !142, size: 64, offset: 1280)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4562, file: !20, line: 632, baseType: !152, size: 64, offset: 1344)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4562, file: !20, line: 633, baseType: !148, size: 64, offset: 1408)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4562, file: !20, line: 640, baseType: !4588, size: 64, offset: 1472)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!39, !34, !4561, !318}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4562, file: !20, line: 645, baseType: !4592, size: 64, offset: 1536)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!39, !34, !4561, !87}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4562, file: !20, line: 654, baseType: !1989, size: 64, offset: 1600)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4562, file: !20, line: 657, baseType: !1996, size: 64, offset: 1664)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !28, file: !20, line: 745, baseType: !4561, size: 64, offset: 1856)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !28, file: !20, line: 754, baseType: !185, size: 32, offset: 1920)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !23, file: !20, line: 160, baseType: !1274, size: 128, offset: 128)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !23, file: !20, line: 163, baseType: !131, size: 128, offset: 256)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !23, file: !20, line: 164, baseType: !131, size: 128, offset: 384)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !23, file: !20, line: 167, baseType: !131, size: 128, offset: 512)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !23, file: !20, line: 173, baseType: !39, size: 32, offset: 640)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !23, file: !20, line: 175, baseType: !185, size: 32, offset: 672)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !23, file: !20, line: 183, baseType: !318, size: 64, offset: 704)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !23, file: !20, line: 189, baseType: !105, size: 32, offset: 768)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !23, file: !20, line: 192, baseType: !545, size: 256, offset: 832)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !23, file: !20, line: 193, baseType: !4609, size: 448, offset: 1088)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !546, line: 120, size: 448, elements: !4610)
!4610 = !{!4611, !4612, !4613}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4609, file: !546, line: 121, baseType: !545, size: 256)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4609, file: !546, line: 122, baseType: !176, size: 128, align: 64, offset: 256)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4609, file: !546, line: 125, baseType: !2333, size: 64, offset: 384)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !23, file: !20, line: 199, baseType: !34, size: 64, offset: 1536)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !19, file: !20, line: 393, baseType: !67, size: 64, offset: 1600)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !19, file: !20, line: 401, baseType: !39, size: 32, offset: 1664)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !19, file: !20, line: 404, baseType: !39, size: 32, offset: 1696)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !19, file: !20, line: 417, baseType: !39, size: 32, offset: 1728)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !19, file: !20, line: 418, baseType: !39, size: 32, offset: 1760)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !19, file: !20, line: 419, baseType: !39, size: 32, offset: 1792)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !19, file: !20, line: 432, baseType: !39, size: 32, offset: 1824)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !19, file: !20, line: 433, baseType: !39, size: 32, offset: 1856)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !19, file: !20, line: 434, baseType: !39, size: 32, offset: 1888)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !19, file: !20, line: 436, baseType: !39, size: 32, offset: 1920)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !19, file: !20, line: 439, baseType: !185, size: 32, offset: 1952)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !19, file: !20, line: 441, baseType: !1925, size: 64, offset: 1984)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !19, file: !20, line: 442, baseType: !4628, size: 448, offset: 2048)
!4628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !20, line: 138, size: 448, elements: !4629)
!4629 = !{!4630, !4631, !4632}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4628, file: !20, line: 140, baseType: !1925, size: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4628, file: !20, line: 141, baseType: !67, size: 64, offset: 64)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4628, file: !20, line: 142, baseType: !2271, size: 320, offset: 128)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !19, file: !20, line: 443, baseType: !4628, size: 448, offset: 2496)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !19, file: !20, line: 446, baseType: !4635, offset: 2944)
!4635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4628, elements: !4636)
!4636 = !{!4637}
!4637 = !DISubrange(count: 0)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !19, file: !20, line: 455, baseType: !121, size: 16, offset: 2944)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !19, file: !20, line: 456, baseType: !121, size: 16, offset: 2960)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !19, file: !20, line: 457, baseType: !121, size: 16, offset: 2976)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !19, file: !20, line: 458, baseType: !121, size: 16, offset: 2992)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !19, file: !20, line: 461, baseType: !3316, size: 896, offset: 3008)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !19, file: !20, line: 463, baseType: !4536, size: 64, offset: 3904)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !19, file: !20, line: 469, baseType: !131, size: 128, offset: 3968)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !19, file: !20, line: 478, baseType: !3328, size: 1792, offset: 4096)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !19, file: !20, line: 487, baseType: !18, size: 64, offset: 5888)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !19, file: !20, line: 488, baseType: !18, size: 64, offset: 5952)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !19, file: !20, line: 491, baseType: !4649, size: 64, offset: 6016)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !20, line: 327, size: 896, elements: !4651)
!4651 = !{!4652, !4655, !4665, !4666, !4667, !4668, !4669}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4650, file: !20, line: 332, baseType: !4653)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4654, line: 64, elements: !1361)
!4654 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4650, file: !20, line: 333, baseType: !4656, size: 192)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !20, line: 299, size: 192, elements: !4657)
!4657 = !{!4658}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4656, file: !20, line: 300, baseType: !4659, size: 192)
!4659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4660, line: 17, size: 192, elements: !4661)
!4660 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4661 = !{!4662, !4663, !4664}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4659, file: !4660, line: 18, baseType: !318, size: 64)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4659, file: !4660, line: 19, baseType: !318, size: 64, offset: 64)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4659, file: !4660, line: 20, baseType: !320, size: 64, offset: 128)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4650, file: !20, line: 339, baseType: !4656, size: 192, offset: 192)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4650, file: !20, line: 347, baseType: !4656, size: 192, offset: 384)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4650, file: !20, line: 353, baseType: !4656, size: 192, offset: 576)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4650, file: !20, line: 366, baseType: !18, size: 64, offset: 768)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4650, file: !20, line: 367, baseType: !18, size: 64, offset: 832)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !19, file: !20, line: 492, baseType: !131, size: 128, offset: 6080)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !19, file: !20, line: 495, baseType: !4656, size: 192, offset: 6208)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !19, file: !20, line: 496, baseType: !4656, size: 192, offset: 6400)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !19, file: !20, line: 497, baseType: !3221, size: 192, offset: 6592)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !19, file: !20, line: 503, baseType: !131, size: 128, offset: 6784)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !19, file: !20, line: 504, baseType: !77, size: 256, offset: 6912)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !19, file: !20, line: 507, baseType: !255, size: 192, offset: 7168)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !19, file: !20, line: 510, baseType: !545, size: 256, offset: 7360)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !19, file: !20, line: 513, baseType: !4679, size: 64, offset: 7616)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4681, line: 214, elements: !1361)
!4681 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !19, file: !20, line: 516, baseType: !4683, offset: 7680)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4684, line: 76, elements: !1361)
!4684 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !19, file: !20, line: 519, baseType: !105, size: 32, offset: 7680)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !19, file: !20, line: 522, baseType: !4687, size: 128, offset: 7712)
!4687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !20, line: 370, size: 128, elements: !4688)
!4688 = !{!4689, !4690, !4691, !4692}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4687, file: !20, line: 372, baseType: !411, size: 8)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4687, file: !20, line: 375, baseType: !39, size: 32, offset: 32)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4687, file: !20, line: 380, baseType: !39, size: 32, offset: 64)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4687, file: !20, line: 386, baseType: !39, size: 32, offset: 96)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !19, file: !20, line: 529, baseType: !4694, offset: 7872)
!4694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !270)
!4695 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/cgroup/.freezer.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/cgroup/freezer\22 -D KBUILD_BASENAME=\22freezer\22 -D KBUILD_MODNAME=\22freezer\22 -D __KBUILD_MODNAME=kmod_freezer -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/cgroup/freezer.ll kernel/cgroup/freezer.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4696, retainedTypes: !4715, globals: !4738, splitDebugInlining: false, nameTableKind: None)
!4696 = !{!273, !587, !1003, !1065, !1296, !1599, !1821, !1891, !2395, !2401, !2498, !2567, !2955, !3161, !3814, !4697, !4703, !4708}
!4697 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 59, baseType: !185, size: 32, elements: !4698)
!4698 = !{!4699, !4700, !4701, !4702}
!4699 = !DIEnumerator(name: "CGRP_NOTIFY_ON_RELEASE", value: 0)
!4700 = !DIEnumerator(name: "CGRP_CPUSET_CLONE_CHILDREN", value: 1)
!4701 = !DIEnumerator(name: "CGRP_FREEZE", value: 2)
!4702 = !DIEnumerator(name: "CGRP_FROZEN", value: 3)
!4703 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4704, line: 10, baseType: !185, size: 32, elements: !4705)
!4704 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!4705 = !{!4706, !4707}
!4706 = !DIEnumerator(name: "false", value: 0)
!4707 = !DIEnumerator(name: "true", value: 1)
!4708 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 50, baseType: !185, size: 32, elements: !4709)
!4709 = !{!4710, !4711, !4712, !4713, !4714}
!4710 = !DIEnumerator(name: "CSS_NO_REF", value: 1)
!4711 = !DIEnumerator(name: "CSS_ONLINE", value: 2)
!4712 = !DIEnumerator(name: "CSS_RELEASED", value: 4)
!4713 = !DIEnumerator(name: "CSS_VISIBLE", value: 8)
!4714 = !DIEnumerator(name: "CSS_DYING", value: 16)
!4715 = !{!4716, !145, !4717, !4718, !2367, !4719, !4721, !2172, !39, !67, !4723, !4726, !4732, !185, !375, !18, !4734, !2828, !3312, !4735}
!4716 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !63, line: 42, baseType: !67)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !674)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4725)
!4725 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4726)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2235, line: 26, size: 192, elements: !4728)
!4728 = !{!4729, !4730, !4731}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4727, file: !2235, line: 27, baseType: !145, size: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4727, file: !2235, line: 28, baseType: !145, size: 64, offset: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4727, file: !2235, line: 29, baseType: !39, size: 32, offset: 128)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3059)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4737)
!4737 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3312)
!4738 = !{!0, !7, !13, !4739, !4741, !4770, !4772, !4799}
!4739 = !DIGlobalVariableExpression(var: !4740, expr: !DIExpression())
!4740 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace399", scope: !15, file: !9, line: 200, type: !145, isLocal: true, isDefinition: true)
!4741 = !DIGlobalVariableExpression(var: !4742, expr: !DIExpression())
!4742 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_cgroup_freeze358", scope: !4743, file: !9, line: 106, type: !145, isLocal: true, isDefinition: true)
!4743 = distinct !DISubprogram(name: "trace_cgroup_freeze", scope: !9, file: !9, line: 106, type: !4744, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !4746)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{null, !18, !414}
!4746 = !{!4747, !4748, !4749, !4752, !4755, !4757, !4759, !4762, !4765, !4767, !4768}
!4747 = !DILocalVariable(name: "cgrp", arg: 1, scope: !4743, file: !9, line: 106, type: !18)
!4748 = !DILocalVariable(name: "path", arg: 2, scope: !4743, file: !9, line: 106, type: !414)
!4749 = !DILocalVariable(name: "__idx", scope: !4750, file: !9, line: 106, type: !39)
!4750 = distinct !DILexicalBlock(scope: !4751, file: !9, line: 106, column: 1)
!4751 = distinct !DILexicalBlock(scope: !4743, file: !9, line: 106, column: 1)
!4752 = !DILocalVariable(name: "pscr_ret__", scope: !4753, file: !9, line: 106, type: !39)
!4753 = distinct !DILexicalBlock(scope: !4754, file: !9, line: 106, column: 1)
!4754 = distinct !DILexicalBlock(scope: !4750, file: !9, line: 106, column: 1)
!4755 = !DILocalVariable(name: "__vpp_verify", scope: !4756, file: !9, line: 106, type: !1456)
!4756 = distinct !DILexicalBlock(scope: !4753, file: !9, line: 106, column: 1)
!4757 = !DILocalVariable(name: "pfo_val__", scope: !4758, file: !9, line: 106, type: !375)
!4758 = distinct !DILexicalBlock(scope: !4753, file: !9, line: 106, column: 1)
!4759 = !DILocalVariable(name: "__ret_warn_on", scope: !4760, file: !9, line: 106, type: !39)
!4760 = distinct !DILexicalBlock(scope: !4761, file: !9, line: 106, column: 1)
!4761 = distinct !DILexicalBlock(scope: !4750, file: !9, line: 106, column: 1)
!4762 = !DILocalVariable(name: "__flags", scope: !4763, file: !9, line: 106, type: !39)
!4763 = distinct !DILexicalBlock(scope: !4764, file: !9, line: 106, column: 1)
!4764 = distinct !DILexicalBlock(scope: !4760, file: !9, line: 106, column: 1)
!4765 = !DILocalVariable(name: "it_func_ptr", scope: !4766, file: !9, line: 106, type: !4726)
!4766 = distinct !DILexicalBlock(scope: !4750, file: !9, line: 106, column: 1)
!4767 = !DILocalVariable(name: "__data", scope: !4766, file: !9, line: 106, type: !145)
!4768 = !DILocalVariable(name: "__UNIQUE_ID_rcu356", scope: !4769, file: !9, line: 106, type: !4726)
!4769 = distinct !DILexicalBlock(scope: !4766, file: !9, line: 106, column: 1)
!4770 = !DIGlobalVariableExpression(var: !4771, expr: !DIExpression())
!4771 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace359", scope: !4743, file: !9, line: 106, type: !145, isLocal: true, isDefinition: true)
!4772 = !DIGlobalVariableExpression(var: !4773, expr: !DIExpression())
!4773 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_cgroup_unfreeze366", scope: !4774, file: !9, line: 113, type: !145, isLocal: true, isDefinition: true)
!4774 = distinct !DISubprogram(name: "trace_cgroup_unfreeze", scope: !9, file: !9, line: 113, type: !4744, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !4775)
!4775 = !{!4776, !4777, !4778, !4781, !4784, !4786, !4788, !4791, !4794, !4796, !4797}
!4776 = !DILocalVariable(name: "cgrp", arg: 1, scope: !4774, file: !9, line: 113, type: !18)
!4777 = !DILocalVariable(name: "path", arg: 2, scope: !4774, file: !9, line: 113, type: !414)
!4778 = !DILocalVariable(name: "__idx", scope: !4779, file: !9, line: 113, type: !39)
!4779 = distinct !DILexicalBlock(scope: !4780, file: !9, line: 113, column: 1)
!4780 = distinct !DILexicalBlock(scope: !4774, file: !9, line: 113, column: 1)
!4781 = !DILocalVariable(name: "pscr_ret__", scope: !4782, file: !9, line: 113, type: !39)
!4782 = distinct !DILexicalBlock(scope: !4783, file: !9, line: 113, column: 1)
!4783 = distinct !DILexicalBlock(scope: !4779, file: !9, line: 113, column: 1)
!4784 = !DILocalVariable(name: "__vpp_verify", scope: !4785, file: !9, line: 113, type: !1456)
!4785 = distinct !DILexicalBlock(scope: !4782, file: !9, line: 113, column: 1)
!4786 = !DILocalVariable(name: "pfo_val__", scope: !4787, file: !9, line: 113, type: !375)
!4787 = distinct !DILexicalBlock(scope: !4782, file: !9, line: 113, column: 1)
!4788 = !DILocalVariable(name: "__ret_warn_on", scope: !4789, file: !9, line: 113, type: !39)
!4789 = distinct !DILexicalBlock(scope: !4790, file: !9, line: 113, column: 1)
!4790 = distinct !DILexicalBlock(scope: !4779, file: !9, line: 113, column: 1)
!4791 = !DILocalVariable(name: "__flags", scope: !4792, file: !9, line: 113, type: !39)
!4792 = distinct !DILexicalBlock(scope: !4793, file: !9, line: 113, column: 1)
!4793 = distinct !DILexicalBlock(scope: !4789, file: !9, line: 113, column: 1)
!4794 = !DILocalVariable(name: "it_func_ptr", scope: !4795, file: !9, line: 113, type: !4726)
!4795 = distinct !DILexicalBlock(scope: !4779, file: !9, line: 113, column: 1)
!4796 = !DILocalVariable(name: "__data", scope: !4795, file: !9, line: 113, type: !145)
!4797 = !DILocalVariable(name: "__UNIQUE_ID_rcu364", scope: !4798, file: !9, line: 113, type: !4726)
!4798 = distinct !DILexicalBlock(scope: !4795, file: !9, line: 113, column: 1)
!4799 = !DIGlobalVariableExpression(var: !4800, expr: !DIExpression())
!4800 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace367", scope: !4774, file: !9, line: 113, type: !145, isLocal: true, isDefinition: true)
!4801 = !{!4802, !4803, !4804, !4805, !4808, !4811, !4813, !4815, !4818, !4821, !4823, !4824}
!4802 = !DILocalVariable(name: "cgrp", arg: 1, scope: !15, file: !9, line: 200, type: !18)
!4803 = !DILocalVariable(name: "path", arg: 2, scope: !15, file: !9, line: 200, type: !414)
!4804 = !DILocalVariable(name: "val", arg: 3, scope: !15, file: !9, line: 200, type: !39)
!4805 = !DILocalVariable(name: "__idx", scope: !4806, file: !9, line: 200, type: !39)
!4806 = distinct !DILexicalBlock(scope: !4807, file: !9, line: 200, column: 1)
!4807 = distinct !DILexicalBlock(scope: !15, file: !9, line: 200, column: 1)
!4808 = !DILocalVariable(name: "pscr_ret__", scope: !4809, file: !9, line: 200, type: !39)
!4809 = distinct !DILexicalBlock(scope: !4810, file: !9, line: 200, column: 1)
!4810 = distinct !DILexicalBlock(scope: !4806, file: !9, line: 200, column: 1)
!4811 = !DILocalVariable(name: "__vpp_verify", scope: !4812, file: !9, line: 200, type: !1456)
!4812 = distinct !DILexicalBlock(scope: !4809, file: !9, line: 200, column: 1)
!4813 = !DILocalVariable(name: "pfo_val__", scope: !4814, file: !9, line: 200, type: !375)
!4814 = distinct !DILexicalBlock(scope: !4809, file: !9, line: 200, column: 1)
!4815 = !DILocalVariable(name: "__ret_warn_on", scope: !4816, file: !9, line: 200, type: !39)
!4816 = distinct !DILexicalBlock(scope: !4817, file: !9, line: 200, column: 1)
!4817 = distinct !DILexicalBlock(scope: !4806, file: !9, line: 200, column: 1)
!4818 = !DILocalVariable(name: "__flags", scope: !4819, file: !9, line: 200, type: !39)
!4819 = distinct !DILexicalBlock(scope: !4820, file: !9, line: 200, column: 1)
!4820 = distinct !DILexicalBlock(scope: !4816, file: !9, line: 200, column: 1)
!4821 = !DILocalVariable(name: "it_func_ptr", scope: !4822, file: !9, line: 200, type: !4726)
!4822 = distinct !DILexicalBlock(scope: !4806, file: !9, line: 200, column: 1)
!4823 = !DILocalVariable(name: "__data", scope: !4822, file: !9, line: 200, type: !145)
!4824 = !DILocalVariable(name: "__UNIQUE_ID_rcu396", scope: !4825, file: !9, line: 200, type: !4726)
!4825 = distinct !DILexicalBlock(scope: !4822, file: !9, line: 200, column: 1)
!4826 = !{!"rsp"}
!4827 = !{i32 7, !"Dwarf Version", i32 5}
!4828 = !{i32 2, !"Debug Info Version", i32 3}
!4829 = !{i32 1, !"wchar_size", i32 2}
!4830 = !{i32 8, !"cf-protection-branch", i32 1}
!4831 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4832 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4833 = !{i32 1, !"Code Model", i32 2}
!4834 = !{i32 1, !"override-stack-alignment", i32 8}
!4835 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4836 = distinct !DISubprogram(name: "cgroup_update_frozen", scope: !2, file: !2, line: 52, type: !4837, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !4839)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{null, !18}
!4839 = !{!4840, !4841, !4842, !4846, !4850}
!4840 = !DILocalVariable(name: "cgrp", arg: 1, scope: !4836, file: !2, line: 52, type: !18)
!4841 = !DILocalVariable(name: "frozen", scope: !4836, file: !2, line: 54, type: !411)
!4842 = !DILocalVariable(name: "flags", scope: !4843, file: !2, line: 80, type: !67)
!4843 = distinct !DILexicalBlock(scope: !4844, file: !2, line: 80, column: 2)
!4844 = distinct !DILexicalBlock(scope: !4845, file: !2, line: 80, column: 2)
!4845 = distinct !DILexicalBlock(scope: !4836, file: !2, line: 80, column: 2)
!4846 = !DILocalVariable(name: "__dummy", scope: !4847, file: !2, line: 80, type: !67)
!4847 = distinct !DILexicalBlock(scope: !4848, file: !2, line: 80, column: 2)
!4848 = distinct !DILexicalBlock(scope: !4849, file: !2, line: 80, column: 2)
!4849 = distinct !DILexicalBlock(scope: !4843, file: !2, line: 80, column: 2)
!4850 = !DILocalVariable(name: "__dummy2", scope: !4847, file: !2, line: 80, type: !67)
!4851 = !DILocation(line: 52, column: 42, scope: !4836)
!4852 = !DILocation(line: 54, column: 2, scope: !4836)
!4853 = !DILocation(line: 54, column: 7, scope: !4836)
!4854 = !DILocation(line: 56, column: 2, scope: !4836)
!4855 = !DILocation(line: 56, column: 2, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4836, file: !2, line: 56, column: 2)
!4857 = !DILocation(line: 63, column: 11, scope: !4836)
!4858 = !DILocation(line: 63, column: 47, scope: !4836)
!4859 = !DILocation(line: 64, column: 3, scope: !4836)
!4860 = !DILocation(line: 64, column: 9, scope: !4836)
!4861 = !DILocation(line: 64, column: 17, scope: !4836)
!4862 = !DILocation(line: 64, column: 56, scope: !4836)
!4863 = !DILocation(line: 64, column: 36, scope: !4836)
!4864 = !DILocation(line: 64, column: 33, scope: !4836)
!4865 = !DILocation(line: 0, scope: !4836)
!4866 = !DILocation(line: 63, column: 9, scope: !4836)
!4867 = !DILocation(line: 66, column: 6, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4836, file: !2, line: 66, column: 6)
!4869 = !{i8 0, i8 2}
!4870 = !DILocation(line: 66, column: 6, scope: !4836)
!4871 = !DILocation(line: 68, column: 7, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4873, file: !2, line: 68, column: 7)
!4873 = distinct !DILexicalBlock(scope: !4868, file: !2, line: 66, column: 14)
!4874 = !DILocation(line: 68, column: 7, scope: !4873)
!4875 = !DILocation(line: 69, column: 4, scope: !4872)
!4876 = !DILocation(line: 71, column: 25, scope: !4873)
!4877 = !DILocation(line: 71, column: 31, scope: !4873)
!4878 = !DILocation(line: 71, column: 3, scope: !4873)
!4879 = !DILocation(line: 72, column: 2, scope: !4873)
!4880 = !DILocation(line: 74, column: 8, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4882, file: !2, line: 74, column: 7)
!4882 = distinct !DILexicalBlock(scope: !4868, file: !2, line: 72, column: 9)
!4883 = !DILocation(line: 74, column: 7, scope: !4882)
!4884 = !DILocation(line: 75, column: 4, scope: !4881)
!4885 = !DILocation(line: 77, column: 27, scope: !4882)
!4886 = !DILocation(line: 77, column: 33, scope: !4882)
!4887 = !DILocation(line: 77, column: 3, scope: !4882)
!4888 = !DILocation(line: 79, column: 22, scope: !4836)
!4889 = !DILocation(line: 79, column: 28, scope: !4836)
!4890 = !DILocation(line: 79, column: 2, scope: !4836)
!4891 = !DILocation(line: 80, column: 2, scope: !4836)
!4892 = !DILocation(line: 80, column: 2, scope: !4844)
!4893 = !DILocation(line: 80, column: 2, scope: !4845)
!4894 = !DILocation(line: 80, column: 2, scope: !4843)
!4895 = !DILocation(line: 80, column: 2, scope: !4849)
!4896 = !DILocation(line: 80, column: 2, scope: !4847)
!4897 = !DILocation(line: 80, column: 2, scope: !4848)
!4898 = !DILocation(line: 83, column: 26, scope: !4836)
!4899 = !DILocation(line: 83, column: 32, scope: !4836)
!4900 = !DILocation(line: 83, column: 2, scope: !4836)
!4901 = !DILocation(line: 84, column: 1, scope: !4836)
!4902 = distinct !DISubprogram(name: "const_test_bit", scope: !4903, file: !4903, line: 166, type: !4904, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !4909)
!4903 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!411, !67, !4906}
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4908)
!4908 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!4909 = !{!4910, !4911, !4912, !4913, !4914}
!4910 = !DILocalVariable(name: "nr", arg: 1, scope: !4902, file: !4903, line: 166, type: !67)
!4911 = !DILocalVariable(name: "addr", arg: 2, scope: !4902, file: !4903, line: 166, type: !4906)
!4912 = !DILocalVariable(name: "p", scope: !4902, file: !4903, line: 168, type: !4717)
!4913 = !DILocalVariable(name: "mask", scope: !4902, file: !4903, line: 169, type: !67)
!4914 = !DILocalVariable(name: "val", scope: !4902, file: !4903, line: 170, type: !67)
!4915 = !DILocation(line: 166, column: 30, scope: !4902)
!4916 = !DILocation(line: 166, column: 64, scope: !4902)
!4917 = !DILocation(line: 168, column: 2, scope: !4902)
!4918 = !DILocation(line: 168, column: 23, scope: !4902)
!4919 = !DILocation(line: 168, column: 50, scope: !4902)
!4920 = !DILocation(line: 168, column: 57, scope: !4902)
!4921 = !DILocation(line: 168, column: 55, scope: !4902)
!4922 = !DILocation(line: 169, column: 2, scope: !4902)
!4923 = !DILocation(line: 169, column: 16, scope: !4902)
!4924 = !DILocation(line: 169, column: 23, scope: !4902)
!4925 = !DILocation(line: 170, column: 2, scope: !4902)
!4926 = !DILocation(line: 170, column: 16, scope: !4902)
!4927 = !DILocation(line: 170, column: 23, scope: !4902)
!4928 = !DILocation(line: 170, column: 22, scope: !4902)
!4929 = !DILocation(line: 172, column: 12, scope: !4902)
!4930 = !DILocation(line: 172, column: 18, scope: !4902)
!4931 = !DILocation(line: 172, column: 16, scope: !4902)
!4932 = !DILocation(line: 172, column: 10, scope: !4902)
!4933 = !DILocation(line: 172, column: 9, scope: !4902)
!4934 = !DILocation(line: 173, column: 1, scope: !4902)
!4935 = !DILocation(line: 172, column: 2, scope: !4902)
!4936 = distinct !DISubprogram(name: "_test_bit", scope: !4937, file: !4937, line: 139, type: !4904, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !4938)
!4937 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!4938 = !{!4939, !4940}
!4939 = !DILocalVariable(name: "nr", arg: 1, scope: !4936, file: !4937, line: 139, type: !67)
!4940 = !DILocalVariable(name: "addr", arg: 2, scope: !4936, file: !4937, line: 139, type: !4906)
!4941 = !DILocation(line: 139, column: 25, scope: !4936)
!4942 = !DILocation(line: 139, column: 59, scope: !4936)
!4943 = !DILocation(line: 141, column: 25, scope: !4936)
!4944 = !DILocation(line: 141, column: 32, scope: !4936)
!4945 = !DILocation(line: 141, column: 30, scope: !4936)
!4946 = !DILocation(line: 141, column: 2, scope: !4936)
!4947 = !DILocation(line: 142, column: 23, scope: !4936)
!4948 = !DILocation(line: 142, column: 27, scope: !4936)
!4949 = !DILocation(line: 142, column: 9, scope: !4936)
!4950 = !DILocation(line: 142, column: 2, scope: !4936)
!4951 = !DISubprogram(name: "__cgroup_task_count", scope: !4499, file: !4499, line: 265, type: !4952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4952 = !DISubroutineType(types: !4953)
!4953 = !{!39, !4954}
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!4956 = distinct !DISubprogram(name: "set_bit", scope: !4957, file: !4957, line: 26, type: !4958, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !4961)
!4957 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!4958 = !DISubroutineType(types: !4959)
!4959 = !{null, !674, !4960}
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4908, size: 64)
!4961 = !{!4962, !4963}
!4962 = !DILocalVariable(name: "nr", arg: 1, scope: !4956, file: !4957, line: 26, type: !674)
!4963 = !DILocalVariable(name: "addr", arg: 2, scope: !4956, file: !4957, line: 26, type: !4960)
!4964 = !DILocation(line: 26, column: 42, scope: !4956)
!4965 = !DILocation(line: 26, column: 70, scope: !4956)
!4966 = !DILocation(line: 28, column: 26, scope: !4956)
!4967 = !DILocation(line: 28, column: 33, scope: !4956)
!4968 = !DILocation(line: 28, column: 31, scope: !4956)
!4969 = !DILocation(line: 28, column: 2, scope: !4956)
!4970 = !DILocation(line: 29, column: 15, scope: !4956)
!4971 = !DILocation(line: 29, column: 19, scope: !4956)
!4972 = !DILocation(line: 29, column: 2, scope: !4956)
!4973 = !DILocation(line: 30, column: 1, scope: !4956)
!4974 = distinct !DISubprogram(name: "clear_bit", scope: !4957, file: !4957, line: 39, type: !4958, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !4975)
!4975 = !{!4976, !4977}
!4976 = !DILocalVariable(name: "nr", arg: 1, scope: !4974, file: !4957, line: 39, type: !674)
!4977 = !DILocalVariable(name: "addr", arg: 2, scope: !4974, file: !4957, line: 39, type: !4960)
!4978 = !DILocation(line: 39, column: 44, scope: !4974)
!4979 = !DILocation(line: 39, column: 72, scope: !4974)
!4980 = !DILocation(line: 41, column: 26, scope: !4974)
!4981 = !DILocation(line: 41, column: 33, scope: !4974)
!4982 = !DILocation(line: 41, column: 31, scope: !4974)
!4983 = !DILocation(line: 41, column: 2, scope: !4974)
!4984 = !DILocation(line: 42, column: 17, scope: !4974)
!4985 = !DILocation(line: 42, column: 21, scope: !4974)
!4986 = !DILocation(line: 42, column: 2, scope: !4974)
!4987 = !DILocation(line: 43, column: 1, scope: !4974)
!4988 = !DISubprogram(name: "cgroup_file_notify", scope: !3306, file: !3306, line: 118, type: !4989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{null, !4991}
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4992 = distinct !DISubprogram(name: "trace_cgroup_notify_frozen_enabled", scope: !9, file: !9, line: 200, type: !1898, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695)
!4993 = !DILocation(line: 200, column: 1, scope: !4992)
!4994 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !4995, file: !4995, line: 32, type: !4996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4995 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4996 = !DISubroutineType(types: !4997)
!4997 = !{!67, !4998}
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!4999 = distinct !DISubprogram(name: "spinlock_check", scope: !5000, file: !5000, line: 324, type: !5001, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5003)
!5000 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5001 = !DISubroutineType(types: !5002)
!5002 = !{!4998, !1643}
!5003 = !{!5004}
!5004 = !DILocalVariable(name: "lock", arg: 1, scope: !4999, file: !5000, line: 324, type: !1643)
!5005 = !DILocation(line: 324, column: 67, scope: !4999)
!5006 = !DILocation(line: 326, column: 10, scope: !4999)
!5007 = !DILocation(line: 326, column: 16, scope: !4999)
!5008 = !DILocation(line: 326, column: 2, scope: !4999)
!5009 = distinct !DISubprogram(name: "cgroup_path", scope: !3306, file: !3306, line: 599, type: !5010, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5012)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!39, !18, !60, !62}
!5012 = !{!5013, !5014, !5015}
!5013 = !DILocalVariable(name: "cgrp", arg: 1, scope: !5009, file: !3306, line: 599, type: !18)
!5014 = !DILocalVariable(name: "buf", arg: 2, scope: !5009, file: !3306, line: 599, type: !60)
!5015 = !DILocalVariable(name: "buflen", arg: 3, scope: !5009, file: !3306, line: 599, type: !62)
!5016 = !DILocation(line: 599, column: 46, scope: !5009)
!5017 = !DILocation(line: 599, column: 58, scope: !5009)
!5018 = !DILocation(line: 599, column: 70, scope: !5009)
!5019 = !DILocation(line: 601, column: 21, scope: !5009)
!5020 = !DILocation(line: 601, column: 27, scope: !5009)
!5021 = !DILocation(line: 601, column: 31, scope: !5009)
!5022 = !DILocation(line: 601, column: 36, scope: !5009)
!5023 = !DILocation(line: 601, column: 9, scope: !5009)
!5024 = !DILocation(line: 601, column: 2, scope: !5009)
!5025 = !DILocation(line: 200, column: 1, scope: !15)
!5026 = !DILocation(line: 200, column: 1, scope: !4807)
!5027 = !DILocation(line: 200, column: 1, scope: !4806)
!5028 = !DILocation(line: 200, column: 1, scope: !4809)
!5029 = !DILocation(line: 200, column: 1, scope: !4812)
!5030 = !DILocation(line: 200, column: 1, scope: !4814)
!5031 = !{i64 2155482192}
!5032 = !DILocation(line: 200, column: 1, scope: !4810)
!5033 = !DILocation(line: 200, column: 1, scope: !4816)
!5034 = !DILocation(line: 200, column: 1, scope: !4820)
!5035 = !DILocation(line: 200, column: 1, scope: !4819)
!5036 = !DILocation(line: 200, column: 1, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !4819, file: !9, line: 200, column: 1)
!5038 = !DILocation(line: 200, column: 1, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !4819, file: !9, line: 200, column: 1)
!5040 = !{i64 2155483406, i64 2155483435, i64 2155483481, i64 2155483539, i64 2155483593, i64 2155483647, i64 2155483702, i64 2155483733, i64 2155484041, i64 2155484047, i64 2155484094, i64 2155484117, i64 2155484143}
!5041 = !DILocation(line: 200, column: 1, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !4819, file: !9, line: 200, column: 1)
!5043 = !DILocation(line: 200, column: 1, scope: !4817)
!5044 = !DILocation(line: 200, column: 1, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !4806, file: !9, line: 200, column: 1)
!5046 = !{i64 2155484497}
!5047 = !DILocation(line: 200, column: 1, scope: !4822)
!5048 = !DILocation(line: 200, column: 1, scope: !4825)
!5049 = !DILocation(line: 200, column: 1, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !4825, file: !9, line: 200, column: 1)
!5051 = !DILocation(line: 200, column: 1, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5050, file: !9, line: 200, column: 1)
!5053 = !DILocation(line: 200, column: 1, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !4822, file: !9, line: 200, column: 1)
!5055 = !DILocation(line: 200, column: 1, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5054, file: !9, line: 200, column: 1)
!5057 = !DILocation(line: 200, column: 1, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5056, file: !9, line: 200, column: 1)
!5059 = !DILocation(line: 200, column: 1, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !4806, file: !9, line: 200, column: 1)
!5061 = !{i64 2155491234}
!5062 = !DILocation(line: 200, column: 1, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5060, file: !9, line: 200, column: 1)
!5064 = !DILocation(line: 200, column: 1, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5063, file: !9, line: 200, column: 1)
!5066 = !{i64 2155491393}
!5067 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5000, file: !5000, line: 404, type: !5068, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5070)
!5068 = !DISubroutineType(types: !5069)
!5069 = !{null, !1643, !67}
!5070 = !{!5071, !5072, !5073, !5076}
!5071 = !DILocalVariable(name: "lock", arg: 1, scope: !5067, file: !5000, line: 404, type: !1643)
!5072 = !DILocalVariable(name: "flags", arg: 2, scope: !5067, file: !5000, line: 404, type: !67)
!5073 = !DILocalVariable(name: "__dummy", scope: !5074, file: !5000, line: 406, type: !67)
!5074 = distinct !DILexicalBlock(scope: !5075, file: !5000, line: 406, column: 2)
!5075 = distinct !DILexicalBlock(scope: !5067, file: !5000, line: 406, column: 2)
!5076 = !DILocalVariable(name: "__dummy2", scope: !5074, file: !5000, line: 406, type: !67)
!5077 = !DILocation(line: 404, column: 64, scope: !5067)
!5078 = !DILocation(line: 404, column: 84, scope: !5067)
!5079 = !DILocation(line: 406, column: 2, scope: !5067)
!5080 = !DILocation(line: 406, column: 2, scope: !5074)
!5081 = !DILocation(line: 406, column: 2, scope: !5075)
!5082 = !DILocation(line: 407, column: 1, scope: !5067)
!5083 = distinct !DISubprogram(name: "cgroup_propagate_frozen", scope: !2, file: !2, line: 14, type: !5084, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5086)
!5084 = !DISubroutineType(types: !5085)
!5085 = !{null, !18, !411}
!5086 = !{!5087, !5088, !5089, !5090, !5099, !5103, !5104, !5111, !5115}
!5087 = !DILocalVariable(name: "cgrp", arg: 1, scope: !5083, file: !2, line: 14, type: !18)
!5088 = !DILocalVariable(name: "frozen", arg: 2, scope: !5083, file: !2, line: 14, type: !411)
!5089 = !DILocalVariable(name: "desc", scope: !5083, file: !2, line: 16, type: !39)
!5090 = !DILocalVariable(name: "flags", scope: !5091, file: !2, line: 33, type: !67)
!5091 = distinct !DILexicalBlock(scope: !5092, file: !2, line: 33, column: 5)
!5092 = distinct !DILexicalBlock(scope: !5093, file: !2, line: 33, column: 5)
!5093 = distinct !DILexicalBlock(scope: !5094, file: !2, line: 33, column: 5)
!5094 = distinct !DILexicalBlock(scope: !5095, file: !2, line: 30, column: 30)
!5095 = distinct !DILexicalBlock(scope: !5096, file: !2, line: 27, column: 8)
!5096 = distinct !DILexicalBlock(scope: !5097, file: !2, line: 25, column: 15)
!5097 = distinct !DILexicalBlock(scope: !5098, file: !2, line: 25, column: 7)
!5098 = distinct !DILexicalBlock(scope: !5083, file: !2, line: 24, column: 39)
!5099 = !DILocalVariable(name: "__dummy", scope: !5100, file: !2, line: 33, type: !67)
!5100 = distinct !DILexicalBlock(scope: !5101, file: !2, line: 33, column: 5)
!5101 = distinct !DILexicalBlock(scope: !5102, file: !2, line: 33, column: 5)
!5102 = distinct !DILexicalBlock(scope: !5091, file: !2, line: 33, column: 5)
!5103 = !DILocalVariable(name: "__dummy2", scope: !5100, file: !2, line: 33, type: !67)
!5104 = !DILocalVariable(name: "flags", scope: !5105, file: !2, line: 41, type: !67)
!5105 = distinct !DILexicalBlock(scope: !5106, file: !2, line: 41, column: 5)
!5106 = distinct !DILexicalBlock(scope: !5107, file: !2, line: 41, column: 5)
!5107 = distinct !DILexicalBlock(scope: !5108, file: !2, line: 41, column: 5)
!5108 = distinct !DILexicalBlock(scope: !5109, file: !2, line: 38, column: 45)
!5109 = distinct !DILexicalBlock(scope: !5110, file: !2, line: 38, column: 8)
!5110 = distinct !DILexicalBlock(scope: !5097, file: !2, line: 36, column: 10)
!5111 = !DILocalVariable(name: "__dummy", scope: !5112, file: !2, line: 41, type: !67)
!5112 = distinct !DILexicalBlock(scope: !5113, file: !2, line: 41, column: 5)
!5113 = distinct !DILexicalBlock(scope: !5114, file: !2, line: 41, column: 5)
!5114 = distinct !DILexicalBlock(scope: !5105, file: !2, line: 41, column: 5)
!5115 = !DILocalVariable(name: "__dummy2", scope: !5112, file: !2, line: 41, type: !67)
!5116 = !DILocation(line: 14, column: 52, scope: !5083)
!5117 = !DILocation(line: 14, column: 63, scope: !5083)
!5118 = !DILocation(line: 16, column: 2, scope: !5083)
!5119 = !DILocation(line: 16, column: 6, scope: !5083)
!5120 = !DILocation(line: 24, column: 2, scope: !5083)
!5121 = !DILocation(line: 24, column: 31, scope: !5083)
!5122 = !DILocation(line: 24, column: 17, scope: !5083)
!5123 = !DILocation(line: 24, column: 15, scope: !5083)
!5124 = !DILocation(line: 25, column: 7, scope: !5097)
!5125 = !DILocation(line: 25, column: 7, scope: !5098)
!5126 = !DILocation(line: 26, column: 43, scope: !5096)
!5127 = !DILocation(line: 26, column: 4, scope: !5096)
!5128 = !DILocation(line: 26, column: 10, scope: !5096)
!5129 = !DILocation(line: 26, column: 18, scope: !5096)
!5130 = !DILocation(line: 26, column: 40, scope: !5096)
!5131 = !DILocation(line: 27, column: 9, scope: !5095)
!5132 = !DILocation(line: 27, column: 45, scope: !5095)
!5133 = !DILocation(line: 28, column: 8, scope: !5095)
!5134 = !DILocation(line: 28, column: 44, scope: !5095)
!5135 = !DILocation(line: 29, column: 8, scope: !5095)
!5136 = !DILocation(line: 29, column: 14, scope: !5095)
!5137 = !DILocation(line: 29, column: 22, scope: !5095)
!5138 = !DILocation(line: 30, column: 8, scope: !5095)
!5139 = !DILocation(line: 30, column: 14, scope: !5095)
!5140 = !DILocation(line: 29, column: 44, scope: !5095)
!5141 = !DILocation(line: 27, column: 8, scope: !5096)
!5142 = !DILocation(line: 31, column: 27, scope: !5094)
!5143 = !DILocation(line: 31, column: 33, scope: !5094)
!5144 = !DILocation(line: 31, column: 5, scope: !5094)
!5145 = !DILocation(line: 32, column: 25, scope: !5094)
!5146 = !DILocation(line: 32, column: 31, scope: !5094)
!5147 = !DILocation(line: 32, column: 5, scope: !5094)
!5148 = !DILocation(line: 33, column: 5, scope: !5094)
!5149 = !DILocation(line: 33, column: 5, scope: !5092)
!5150 = !DILocation(line: 33, column: 5, scope: !5093)
!5151 = !DILocation(line: 33, column: 5, scope: !5091)
!5152 = !DILocation(line: 33, column: 5, scope: !5102)
!5153 = !DILocation(line: 33, column: 5, scope: !5100)
!5154 = !DILocation(line: 33, column: 5, scope: !5101)
!5155 = !DILocation(line: 34, column: 9, scope: !5094)
!5156 = !DILocation(line: 35, column: 4, scope: !5094)
!5157 = !DILocation(line: 36, column: 3, scope: !5096)
!5158 = !DILocation(line: 37, column: 43, scope: !5110)
!5159 = !DILocation(line: 37, column: 4, scope: !5110)
!5160 = !DILocation(line: 37, column: 10, scope: !5110)
!5161 = !DILocation(line: 37, column: 18, scope: !5110)
!5162 = !DILocation(line: 37, column: 40, scope: !5110)
!5163 = !DILocation(line: 38, column: 8, scope: !5109)
!5164 = !DILocation(line: 38, column: 8, scope: !5110)
!5165 = !DILocation(line: 39, column: 29, scope: !5108)
!5166 = !DILocation(line: 39, column: 35, scope: !5108)
!5167 = !DILocation(line: 39, column: 5, scope: !5108)
!5168 = !DILocation(line: 40, column: 25, scope: !5108)
!5169 = !DILocation(line: 40, column: 31, scope: !5108)
!5170 = !DILocation(line: 40, column: 5, scope: !5108)
!5171 = !DILocation(line: 41, column: 5, scope: !5108)
!5172 = !DILocation(line: 41, column: 5, scope: !5106)
!5173 = !DILocation(line: 41, column: 5, scope: !5107)
!5174 = !DILocation(line: 41, column: 5, scope: !5105)
!5175 = !DILocation(line: 41, column: 5, scope: !5114)
!5176 = !DILocation(line: 41, column: 5, scope: !5112)
!5177 = !DILocation(line: 41, column: 5, scope: !5113)
!5178 = !DILocation(line: 42, column: 9, scope: !5108)
!5179 = !DILocation(line: 43, column: 4, scope: !5108)
!5180 = distinct !{!5180, !5120, !5181, !5182, !5183}
!5181 = !DILocation(line: 45, column: 2, scope: !5083)
!5182 = !{!"llvm.loop.mustprogress"}
!5183 = !{!"llvm.loop.unroll.disable"}
!5184 = !DILocation(line: 46, column: 1, scope: !5083)
!5185 = distinct !DISubprogram(name: "cgroup_enter_frozen", scope: !2, file: !2, line: 107, type: !2381, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5186)
!5186 = !{!5187}
!5187 = !DILocalVariable(name: "cgrp", scope: !5185, file: !2, line: 109, type: !18)
!5188 = !DILocation(line: 109, column: 2, scope: !5185)
!5189 = !DILocation(line: 109, column: 17, scope: !5185)
!5190 = !DILocation(line: 111, column: 6, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5185, file: !2, line: 111, column: 6)
!5192 = !DILocation(line: 111, column: 15, scope: !5191)
!5193 = !DILocation(line: 111, column: 6, scope: !5185)
!5194 = !DILocation(line: 112, column: 3, scope: !5191)
!5195 = !DILocation(line: 114, column: 2, scope: !5185)
!5196 = !DILocation(line: 115, column: 2, scope: !5185)
!5197 = !DILocation(line: 115, column: 11, scope: !5185)
!5198 = !DILocation(line: 115, column: 18, scope: !5185)
!5199 = !DILocation(line: 116, column: 25, scope: !5185)
!5200 = !DILocation(line: 116, column: 9, scope: !5185)
!5201 = !DILocation(line: 116, column: 7, scope: !5185)
!5202 = !DILocation(line: 117, column: 24, scope: !5185)
!5203 = !DILocation(line: 117, column: 2, scope: !5185)
!5204 = !DILocation(line: 118, column: 23, scope: !5185)
!5205 = !DILocation(line: 118, column: 2, scope: !5185)
!5206 = !DILocation(line: 119, column: 2, scope: !5185)
!5207 = !DILocation(line: 120, column: 1, scope: !5185)
!5208 = distinct !DISubprogram(name: "get_current", scope: !5209, file: !5209, line: 39, type: !5210, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5212)
!5209 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5210 = !DISubroutineType(types: !5211)
!5211 = !{!2828}
!5212 = !{!5213, !5215, !5217}
!5213 = !DILocalVariable(name: "pscr_ret__", scope: !5214, file: !5209, line: 41, type: !2828)
!5214 = distinct !DILexicalBlock(scope: !5208, file: !5209, line: 41, column: 9)
!5215 = !DILocalVariable(name: "__vpp_verify", scope: !5216, file: !5209, line: 41, type: !1456)
!5216 = distinct !DILexicalBlock(scope: !5214, file: !5209, line: 41, column: 9)
!5217 = !DILocalVariable(name: "pfo_val__", scope: !5218, file: !5209, line: 41, type: !318)
!5218 = distinct !DILexicalBlock(scope: !5214, file: !5209, line: 41, column: 9)
!5219 = !DILocation(line: 41, column: 9, scope: !5214)
!5220 = !DILocation(line: 41, column: 9, scope: !5216)
!5221 = !DILocation(line: 41, column: 9, scope: !5218)
!5222 = !{i64 2148224010}
!5223 = !DILocation(line: 41, column: 9, scope: !5208)
!5224 = !DILocation(line: 41, column: 2, scope: !5208)
!5225 = distinct !DISubprogram(name: "spin_lock_irq", scope: !5000, file: !5000, line: 374, type: !5226, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5228)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{null, !1643}
!5228 = !{!5229}
!5229 = !DILocalVariable(name: "lock", arg: 1, scope: !5225, file: !5000, line: 374, type: !1643)
!5230 = !DILocation(line: 374, column: 55, scope: !5225)
!5231 = !DILocation(line: 376, column: 2, scope: !5225)
!5232 = !DILocation(line: 377, column: 1, scope: !5225)
!5233 = distinct !DISubprogram(name: "task_dfl_cgroup", scope: !3306, file: !3306, line: 490, type: !5234, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5236)
!5234 = !DISubroutineType(types: !5235)
!5235 = !{!18, !2828}
!5236 = !{!5237}
!5237 = !DILocalVariable(name: "task", arg: 1, scope: !5233, file: !3306, line: 490, type: !2828)
!5238 = !DILocation(line: 490, column: 66, scope: !5233)
!5239 = !DILocation(line: 492, column: 22, scope: !5233)
!5240 = !DILocation(line: 492, column: 9, scope: !5233)
!5241 = !DILocation(line: 492, column: 29, scope: !5233)
!5242 = !DILocation(line: 492, column: 2, scope: !5233)
!5243 = distinct !DISubprogram(name: "cgroup_inc_frozen_cnt", scope: !2, file: !2, line: 89, type: !4837, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5244)
!5244 = !{!5245}
!5245 = !DILocalVariable(name: "cgrp", arg: 1, scope: !5243, file: !2, line: 89, type: !18)
!5246 = !DILocation(line: 89, column: 50, scope: !5243)
!5247 = !DILocation(line: 91, column: 2, scope: !5243)
!5248 = !DILocation(line: 91, column: 8, scope: !5243)
!5249 = !DILocation(line: 91, column: 16, scope: !5243)
!5250 = !DILocation(line: 91, column: 31, scope: !5243)
!5251 = !DILocation(line: 92, column: 1, scope: !5243)
!5252 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !5000, file: !5000, line: 399, type: !5226, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5253)
!5253 = !{!5254}
!5254 = !DILocalVariable(name: "lock", arg: 1, scope: !5252, file: !5000, line: 399, type: !1643)
!5255 = !DILocation(line: 399, column: 57, scope: !5252)
!5256 = !DILocation(line: 401, column: 2, scope: !5252)
!5257 = !DILocation(line: 402, column: 1, scope: !5252)
!5258 = distinct !DISubprogram(name: "cgroup_leave_frozen", scope: !2, file: !2, line: 131, type: !5259, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5261)
!5259 = !DISubroutineType(types: !5260)
!5260 = !{null, !411}
!5261 = !{!5262, !5263, !5264, !5268}
!5262 = !DILocalVariable(name: "always_leave", arg: 1, scope: !5258, file: !2, line: 131, type: !411)
!5263 = !DILocalVariable(name: "cgrp", scope: !5258, file: !2, line: 133, type: !18)
!5264 = !DILocalVariable(name: "__ret_warn_on", scope: !5265, file: !2, line: 140, type: !39)
!5265 = distinct !DILexicalBlock(scope: !5266, file: !2, line: 140, column: 3)
!5266 = distinct !DILexicalBlock(scope: !5267, file: !2, line: 137, column: 60)
!5267 = distinct !DILexicalBlock(scope: !5258, file: !2, line: 137, column: 6)
!5268 = !DILocalVariable(name: "__flags", scope: !5269, file: !2, line: 140, type: !39)
!5269 = distinct !DILexicalBlock(scope: !5270, file: !2, line: 140, column: 3)
!5270 = distinct !DILexicalBlock(scope: !5265, file: !2, line: 140, column: 3)
!5271 = !DILocation(line: 131, column: 31, scope: !5258)
!5272 = !DILocation(line: 133, column: 2, scope: !5258)
!5273 = !DILocation(line: 133, column: 17, scope: !5258)
!5274 = !DILocation(line: 135, column: 2, scope: !5258)
!5275 = !DILocation(line: 136, column: 25, scope: !5258)
!5276 = !DILocation(line: 136, column: 9, scope: !5258)
!5277 = !DILocation(line: 136, column: 7, scope: !5258)
!5278 = !DILocation(line: 137, column: 6, scope: !5267)
!5279 = !DILocation(line: 137, column: 19, scope: !5267)
!5280 = !DILocation(line: 137, column: 23, scope: !5267)
!5281 = !DILocation(line: 137, column: 6, scope: !5258)
!5282 = !DILocation(line: 138, column: 25, scope: !5266)
!5283 = !DILocation(line: 138, column: 3, scope: !5266)
!5284 = !DILocation(line: 139, column: 24, scope: !5266)
!5285 = !DILocation(line: 139, column: 3, scope: !5266)
!5286 = !DILocation(line: 140, column: 3, scope: !5265)
!5287 = !DILocation(line: 140, column: 3, scope: !5270)
!5288 = !DILocation(line: 140, column: 3, scope: !5269)
!5289 = !DILocation(line: 140, column: 3, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5269, file: !2, line: 140, column: 3)
!5291 = !DILocation(line: 140, column: 3, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5269, file: !2, line: 140, column: 3)
!5293 = !{i64 2155526339, i64 2155526368, i64 2155526414, i64 2155526472, i64 2155526526, i64 2155526580, i64 2155526635, i64 2155526666, i64 2155526974, i64 2155526980, i64 2155527027, i64 2155527050, i64 2155527076}
!5294 = !DILocation(line: 140, column: 3, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5269, file: !2, line: 140, column: 3)
!5296 = !DILocation(line: 140, column: 3, scope: !5266)
!5297 = !DILocation(line: 141, column: 3, scope: !5266)
!5298 = !DILocation(line: 141, column: 12, scope: !5266)
!5299 = !DILocation(line: 141, column: 19, scope: !5266)
!5300 = !DILocation(line: 142, column: 2, scope: !5266)
!5301 = !DILocation(line: 142, column: 15, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5267, file: !2, line: 142, column: 13)
!5303 = !DILocation(line: 142, column: 24, scope: !5302)
!5304 = !DILocation(line: 142, column: 31, scope: !5302)
!5305 = !DILocation(line: 142, column: 13, scope: !5267)
!5306 = !DILocation(line: 143, column: 14, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5302, file: !2, line: 142, column: 54)
!5308 = !DILocation(line: 143, column: 23, scope: !5307)
!5309 = !DILocation(line: 143, column: 32, scope: !5307)
!5310 = !DILocation(line: 143, column: 3, scope: !5307)
!5311 = !DILocation(line: 144, column: 3, scope: !5307)
!5312 = !DILocation(line: 144, column: 12, scope: !5307)
!5313 = !DILocation(line: 144, column: 19, scope: !5307)
!5314 = !DILocation(line: 145, column: 3, scope: !5307)
!5315 = !DILocation(line: 146, column: 16, scope: !5307)
!5316 = !DILocation(line: 146, column: 25, scope: !5307)
!5317 = !DILocation(line: 146, column: 34, scope: !5307)
!5318 = !DILocation(line: 146, column: 3, scope: !5307)
!5319 = !DILocation(line: 147, column: 2, scope: !5307)
!5320 = !DILocation(line: 148, column: 2, scope: !5258)
!5321 = !DILocation(line: 149, column: 1, scope: !5258)
!5322 = distinct !DISubprogram(name: "cgroup_dec_frozen_cnt", scope: !2, file: !2, line: 97, type: !4837, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5323)
!5323 = !{!5324, !5325, !5327}
!5324 = !DILocalVariable(name: "cgrp", arg: 1, scope: !5322, file: !2, line: 97, type: !18)
!5325 = !DILocalVariable(name: "__ret_warn_on", scope: !5326, file: !2, line: 100, type: !39)
!5326 = distinct !DILexicalBlock(scope: !5322, file: !2, line: 100, column: 2)
!5327 = !DILocalVariable(name: "__flags", scope: !5328, file: !2, line: 100, type: !39)
!5328 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 100, column: 2)
!5329 = distinct !DILexicalBlock(scope: !5326, file: !2, line: 100, column: 2)
!5330 = !DILocation(line: 97, column: 50, scope: !5322)
!5331 = !DILocation(line: 99, column: 2, scope: !5322)
!5332 = !DILocation(line: 99, column: 8, scope: !5322)
!5333 = !DILocation(line: 99, column: 16, scope: !5322)
!5334 = !DILocation(line: 99, column: 31, scope: !5322)
!5335 = !DILocation(line: 100, column: 2, scope: !5326)
!5336 = !DILocation(line: 100, column: 2, scope: !5329)
!5337 = !DILocation(line: 100, column: 2, scope: !5328)
!5338 = !DILocation(line: 100, column: 2, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5328, file: !2, line: 100, column: 2)
!5340 = !DILocation(line: 100, column: 2, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5328, file: !2, line: 100, column: 2)
!5342 = !{i64 2155524269, i64 2155524298, i64 2155524344, i64 2155524402, i64 2155524456, i64 2155524510, i64 2155524565, i64 2155524596, i64 2155524904, i64 2155524910, i64 2155524957, i64 2155524980, i64 2155525006}
!5343 = !DILocation(line: 100, column: 2, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5328, file: !2, line: 100, column: 2)
!5345 = !DILocation(line: 100, column: 2, scope: !5322)
!5346 = !DILocation(line: 101, column: 1, scope: !5322)
!5347 = distinct !DISubprogram(name: "spin_lock", scope: !5000, file: !5000, line: 349, type: !5226, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5348)
!5348 = !{!5349}
!5349 = !DILocalVariable(name: "lock", arg: 1, scope: !5347, file: !5000, line: 349, type: !1643)
!5350 = !DILocation(line: 349, column: 51, scope: !5347)
!5351 = !DILocation(line: 351, column: 2, scope: !5347)
!5352 = !DILocation(line: 352, column: 1, scope: !5347)
!5353 = distinct !DISubprogram(name: "set_ti_thread_flag", scope: !5354, file: !5354, line: 87, type: !5355, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5357)
!5354 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!5355 = !DISubroutineType(types: !5356)
!5356 = !{null, !4718, !39}
!5357 = !{!5358, !5359}
!5358 = !DILocalVariable(name: "ti", arg: 1, scope: !5353, file: !5354, line: 87, type: !4718)
!5359 = !DILocalVariable(name: "flag", arg: 2, scope: !5353, file: !5354, line: 87, type: !39)
!5360 = !DILocation(line: 87, column: 59, scope: !5353)
!5361 = !DILocation(line: 87, column: 67, scope: !5353)
!5362 = !DILocation(line: 89, column: 10, scope: !5353)
!5363 = !DILocation(line: 89, column: 34, scope: !5353)
!5364 = !DILocation(line: 89, column: 38, scope: !5353)
!5365 = !DILocation(line: 89, column: 2, scope: !5353)
!5366 = !DILocation(line: 90, column: 1, scope: !5353)
!5367 = distinct !DISubprogram(name: "spin_unlock", scope: !5000, file: !5000, line: 389, type: !5226, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5368)
!5368 = !{!5369}
!5369 = !DILocalVariable(name: "lock", arg: 1, scope: !5367, file: !5000, line: 389, type: !1643)
!5370 = !DILocation(line: 389, column: 53, scope: !5367)
!5371 = !DILocation(line: 391, column: 2, scope: !5367)
!5372 = !DILocation(line: 392, column: 1, scope: !5367)
!5373 = distinct !DISubprogram(name: "cgroup_freezer_migrate_task", scope: !2, file: !2, line: 222, type: !5374, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5376)
!5374 = !DISubroutineType(types: !5375)
!5375 = !{null, !2828, !18, !18}
!5376 = !{!5377, !5378, !5379}
!5377 = !DILocalVariable(name: "task", arg: 1, scope: !5373, file: !2, line: 222, type: !2828)
!5378 = !DILocalVariable(name: "src", arg: 2, scope: !5373, file: !2, line: 223, type: !18)
!5379 = !DILocalVariable(name: "dst", arg: 3, scope: !5373, file: !2, line: 223, type: !18)
!5380 = !DILocation(line: 222, column: 54, scope: !5373)
!5381 = !DILocation(line: 223, column: 21, scope: !5373)
!5382 = !DILocation(line: 223, column: 41, scope: !5373)
!5383 = !DILocation(line: 225, column: 2, scope: !5373)
!5384 = !DILocation(line: 225, column: 2, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5373, file: !2, line: 225, column: 2)
!5386 = !DILocation(line: 230, column: 6, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5373, file: !2, line: 230, column: 6)
!5388 = !DILocation(line: 230, column: 12, scope: !5387)
!5389 = !DILocation(line: 230, column: 18, scope: !5387)
!5390 = !DILocation(line: 230, column: 6, scope: !5373)
!5391 = !DILocation(line: 231, column: 3, scope: !5387)
!5392 = !DILocation(line: 237, column: 7, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5373, file: !2, line: 237, column: 6)
!5394 = !DILocation(line: 237, column: 42, scope: !5393)
!5395 = !DILocation(line: 238, column: 7, scope: !5393)
!5396 = !DILocation(line: 238, column: 42, scope: !5393)
!5397 = !DILocation(line: 239, column: 7, scope: !5393)
!5398 = !DILocation(line: 239, column: 13, scope: !5393)
!5399 = !DILocation(line: 237, column: 6, scope: !5373)
!5400 = !DILocation(line: 240, column: 3, scope: !5393)
!5401 = !DILocation(line: 247, column: 6, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5373, file: !2, line: 247, column: 6)
!5403 = !DILocation(line: 247, column: 12, scope: !5402)
!5404 = !DILocation(line: 247, column: 6, scope: !5373)
!5405 = !DILocation(line: 248, column: 25, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5402, file: !2, line: 247, column: 20)
!5407 = !DILocation(line: 248, column: 3, scope: !5406)
!5408 = !DILocation(line: 249, column: 25, scope: !5406)
!5409 = !DILocation(line: 249, column: 3, scope: !5406)
!5410 = !DILocation(line: 250, column: 2, scope: !5406)
!5411 = !DILocation(line: 251, column: 23, scope: !5373)
!5412 = !DILocation(line: 251, column: 2, scope: !5373)
!5413 = !DILocation(line: 252, column: 23, scope: !5373)
!5414 = !DILocation(line: 252, column: 2, scope: !5373)
!5415 = !DILocation(line: 257, column: 21, scope: !5373)
!5416 = !DILocation(line: 257, column: 27, scope: !5373)
!5417 = !DILocation(line: 257, column: 2, scope: !5373)
!5418 = !DILocation(line: 258, column: 1, scope: !5373)
!5419 = distinct !DISubprogram(name: "cgroup_freeze_task", scope: !2, file: !2, line: 155, type: !5420, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5422)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{null, !2828, !411}
!5422 = !{!5423, !5424, !5425}
!5423 = !DILocalVariable(name: "task", arg: 1, scope: !5419, file: !2, line: 155, type: !2828)
!5424 = !DILocalVariable(name: "freeze", arg: 2, scope: !5419, file: !2, line: 155, type: !411)
!5425 = !DILocalVariable(name: "flags", scope: !5419, file: !2, line: 157, type: !67)
!5426 = !DILocation(line: 155, column: 52, scope: !5419)
!5427 = !DILocation(line: 155, column: 63, scope: !5419)
!5428 = !DILocation(line: 157, column: 2, scope: !5419)
!5429 = !DILocation(line: 157, column: 16, scope: !5419)
!5430 = !DILocation(line: 160, column: 25, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5419, file: !2, line: 160, column: 6)
!5432 = !DILocation(line: 160, column: 7, scope: !5431)
!5433 = !DILocation(line: 160, column: 6, scope: !5419)
!5434 = !DILocation(line: 161, column: 3, scope: !5431)
!5435 = !DILocation(line: 163, column: 6, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5419, file: !2, line: 163, column: 6)
!5437 = !DILocation(line: 163, column: 6, scope: !5419)
!5438 = !DILocation(line: 164, column: 3, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5436, file: !2, line: 163, column: 14)
!5440 = !DILocation(line: 164, column: 9, scope: !5439)
!5441 = !DILocation(line: 164, column: 16, scope: !5439)
!5442 = !DILocation(line: 165, column: 18, scope: !5439)
!5443 = !DILocation(line: 165, column: 3, scope: !5439)
!5444 = !DILocation(line: 166, column: 2, scope: !5439)
!5445 = !DILocation(line: 167, column: 3, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5436, file: !2, line: 166, column: 9)
!5447 = !DILocation(line: 167, column: 9, scope: !5446)
!5448 = !DILocation(line: 167, column: 16, scope: !5446)
!5449 = !DILocation(line: 168, column: 19, scope: !5446)
!5450 = !DILocation(line: 168, column: 3, scope: !5446)
!5451 = !DILocation(line: 171, column: 22, scope: !5419)
!5452 = !DILocation(line: 171, column: 2, scope: !5419)
!5453 = !DILocation(line: 172, column: 1, scope: !5419)
!5454 = distinct !DISubprogram(name: "cgroup_freeze", scope: !2, file: !2, line: 260, type: !5084, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5455)
!5455 = !{!5456, !5457, !5458, !5459, !5460, !5461, !5468, !5471, !5477, !5481}
!5456 = !DILocalVariable(name: "cgrp", arg: 1, scope: !5454, file: !2, line: 260, type: !18)
!5457 = !DILocalVariable(name: "freeze", arg: 2, scope: !5454, file: !2, line: 260, type: !411)
!5458 = !DILocalVariable(name: "css", scope: !5454, file: !2, line: 262, type: !34)
!5459 = !DILocalVariable(name: "dsct", scope: !5454, file: !2, line: 263, type: !18)
!5460 = !DILocalVariable(name: "applied", scope: !5454, file: !2, line: 264, type: !411)
!5461 = !DILocalVariable(name: "__ret_warn_on", scope: !5462, file: !2, line: 300, type: !39)
!5462 = distinct !DILexicalBlock(scope: !5463, file: !2, line: 300, column: 4)
!5463 = distinct !DILexicalBlock(scope: !5464, file: !2, line: 292, column: 10)
!5464 = distinct !DILexicalBlock(scope: !5465, file: !2, line: 285, column: 7)
!5465 = distinct !DILexicalBlock(scope: !5466, file: !2, line: 279, column: 48)
!5466 = distinct !DILexicalBlock(scope: !5467, file: !2, line: 279, column: 2)
!5467 = distinct !DILexicalBlock(scope: !5454, file: !2, line: 279, column: 2)
!5468 = !DILocalVariable(name: "__flags", scope: !5469, file: !2, line: 300, type: !39)
!5469 = distinct !DILexicalBlock(scope: !5470, file: !2, line: 300, column: 4)
!5470 = distinct !DILexicalBlock(scope: !5462, file: !2, line: 300, column: 4)
!5471 = !DILocalVariable(name: "flags", scope: !5472, file: !2, line: 319, type: !67)
!5472 = distinct !DILexicalBlock(scope: !5473, file: !2, line: 319, column: 3)
!5473 = distinct !DILexicalBlock(scope: !5474, file: !2, line: 319, column: 3)
!5474 = distinct !DILexicalBlock(scope: !5475, file: !2, line: 319, column: 3)
!5475 = distinct !DILexicalBlock(scope: !5476, file: !2, line: 318, column: 16)
!5476 = distinct !DILexicalBlock(scope: !5454, file: !2, line: 318, column: 6)
!5477 = !DILocalVariable(name: "__dummy", scope: !5478, file: !2, line: 319, type: !67)
!5478 = distinct !DILexicalBlock(scope: !5479, file: !2, line: 319, column: 3)
!5479 = distinct !DILexicalBlock(scope: !5480, file: !2, line: 319, column: 3)
!5480 = distinct !DILexicalBlock(scope: !5472, file: !2, line: 319, column: 3)
!5481 = !DILocalVariable(name: "__dummy2", scope: !5478, file: !2, line: 319, type: !67)
!5482 = !DILocation(line: 260, column: 35, scope: !5454)
!5483 = !DILocation(line: 260, column: 46, scope: !5454)
!5484 = !DILocation(line: 262, column: 2, scope: !5454)
!5485 = !DILocation(line: 262, column: 30, scope: !5454)
!5486 = !DILocation(line: 263, column: 2, scope: !5454)
!5487 = !DILocation(line: 263, column: 17, scope: !5454)
!5488 = !DILocation(line: 264, column: 2, scope: !5454)
!5489 = !DILocation(line: 264, column: 7, scope: !5454)
!5490 = !DILocation(line: 266, column: 2, scope: !5454)
!5491 = !DILocation(line: 266, column: 2, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5454, file: !2, line: 266, column: 2)
!5493 = !DILocation(line: 271, column: 6, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5454, file: !2, line: 271, column: 6)
!5495 = !DILocation(line: 271, column: 12, scope: !5494)
!5496 = !DILocation(line: 271, column: 20, scope: !5494)
!5497 = !DILocation(line: 271, column: 30, scope: !5494)
!5498 = !DILocation(line: 271, column: 27, scope: !5494)
!5499 = !DILocation(line: 271, column: 6, scope: !5454)
!5500 = !DILocation(line: 272, column: 3, scope: !5494)
!5501 = !DILocation(line: 274, column: 25, scope: !5454)
!5502 = !DILocation(line: 274, column: 2, scope: !5454)
!5503 = !DILocation(line: 274, column: 8, scope: !5454)
!5504 = !DILocation(line: 274, column: 16, scope: !5454)
!5505 = !DILocation(line: 274, column: 23, scope: !5454)
!5506 = !DILocation(line: 279, column: 2, scope: !5467)
!5507 = !DILocation(line: 279, column: 2, scope: !5466)
!5508 = !DILocation(line: 280, column: 10, scope: !5465)
!5509 = !DILocation(line: 280, column: 15, scope: !5465)
!5510 = !DILocation(line: 280, column: 8, scope: !5465)
!5511 = !DILocation(line: 282, column: 22, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5465, file: !2, line: 282, column: 7)
!5513 = !DILocation(line: 282, column: 7, scope: !5512)
!5514 = !DILocation(line: 282, column: 7, scope: !5465)
!5515 = !DILocation(line: 283, column: 4, scope: !5512)
!5516 = !DILocation(line: 285, column: 7, scope: !5464)
!5517 = !DILocation(line: 285, column: 7, scope: !5465)
!5518 = !DILocation(line: 286, column: 4, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5464, file: !2, line: 285, column: 15)
!5520 = !DILocation(line: 286, column: 10, scope: !5519)
!5521 = !DILocation(line: 286, column: 18, scope: !5519)
!5522 = !DILocation(line: 286, column: 26, scope: !5519)
!5523 = !DILocation(line: 290, column: 8, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5519, file: !2, line: 290, column: 8)
!5525 = !DILocation(line: 290, column: 14, scope: !5524)
!5526 = !DILocation(line: 290, column: 22, scope: !5524)
!5527 = !DILocation(line: 290, column: 31, scope: !5524)
!5528 = !DILocation(line: 290, column: 8, scope: !5519)
!5529 = !DILocation(line: 291, column: 5, scope: !5524)
!5530 = !DILocation(line: 292, column: 3, scope: !5519)
!5531 = !DILocation(line: 293, column: 4, scope: !5463)
!5532 = !DILocation(line: 293, column: 10, scope: !5463)
!5533 = !DILocation(line: 293, column: 18, scope: !5463)
!5534 = !DILocation(line: 293, column: 26, scope: !5463)
!5535 = !DILocation(line: 297, column: 8, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5463, file: !2, line: 297, column: 8)
!5537 = !DILocation(line: 297, column: 14, scope: !5536)
!5538 = !DILocation(line: 297, column: 22, scope: !5536)
!5539 = !DILocation(line: 297, column: 31, scope: !5536)
!5540 = !DILocation(line: 297, column: 8, scope: !5463)
!5541 = !DILocation(line: 298, column: 5, scope: !5536)
!5542 = !DILocation(line: 300, column: 4, scope: !5462)
!5543 = !DILocation(line: 300, column: 4, scope: !5470)
!5544 = !DILocation(line: 300, column: 4, scope: !5469)
!5545 = !DILocation(line: 300, column: 4, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5469, file: !2, line: 300, column: 4)
!5547 = !DILocation(line: 300, column: 4, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5469, file: !2, line: 300, column: 4)
!5549 = !{i64 2155531610, i64 2155531639, i64 2155531685, i64 2155531743, i64 2155531797, i64 2155531851, i64 2155531906, i64 2155531937, i64 2155532245, i64 2155532251, i64 2155532298, i64 2155532321, i64 2155532347}
!5550 = !DILocation(line: 300, column: 4, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5469, file: !2, line: 300, column: 4)
!5552 = !DILocation(line: 300, column: 4, scope: !5463)
!5553 = !DILocation(line: 306, column: 20, scope: !5465)
!5554 = !DILocation(line: 306, column: 26, scope: !5465)
!5555 = !DILocation(line: 306, column: 3, scope: !5465)
!5556 = !DILocation(line: 307, column: 11, scope: !5465)
!5557 = !DILocation(line: 308, column: 2, scope: !5465)
!5558 = distinct !{!5558, !5506, !5559, !5182, !5183}
!5559 = !DILocation(line: 308, column: 2, scope: !5467)
!5560 = !DILocation(line: 318, column: 7, scope: !5476)
!5561 = !DILocation(line: 318, column: 6, scope: !5454)
!5562 = !DILocation(line: 319, column: 3, scope: !5475)
!5563 = !DILocation(line: 319, column: 3, scope: !5473)
!5564 = !DILocation(line: 319, column: 3, scope: !5474)
!5565 = !DILocation(line: 319, column: 3, scope: !5472)
!5566 = !DILocation(line: 319, column: 3, scope: !5480)
!5567 = !DILocation(line: 319, column: 3, scope: !5478)
!5568 = !DILocation(line: 319, column: 3, scope: !5479)
!5569 = !DILocation(line: 321, column: 23, scope: !5475)
!5570 = !DILocation(line: 321, column: 29, scope: !5475)
!5571 = !DILocation(line: 321, column: 3, scope: !5475)
!5572 = !DILocation(line: 322, column: 2, scope: !5475)
!5573 = !DILocation(line: 323, column: 1, scope: !5454)
!5574 = !DISubprogram(name: "css_next_descendant_pre", scope: !3306, file: !3306, line: 147, type: !5575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5575 = !DISubroutineType(types: !5576)
!5576 = !{!34, !34, !34}
!5577 = distinct !DISubprogram(name: "cgroup_is_dead", scope: !4499, file: !4499, line: 185, type: !5578, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5580)
!5578 = !DISubroutineType(types: !5579)
!5579 = !{!411, !4954}
!5580 = !{!5581}
!5581 = !DILocalVariable(name: "cgrp", arg: 1, scope: !5577, file: !4499, line: 185, type: !4954)
!5582 = !DILocation(line: 185, column: 56, scope: !5577)
!5583 = !DILocation(line: 187, column: 11, scope: !5577)
!5584 = !DILocation(line: 187, column: 17, scope: !5577)
!5585 = !DILocation(line: 187, column: 22, scope: !5577)
!5586 = !DILocation(line: 187, column: 28, scope: !5577)
!5587 = !DILocation(line: 187, column: 9, scope: !5577)
!5588 = !DILocation(line: 187, column: 2, scope: !5577)
!5589 = distinct !DISubprogram(name: "cgroup_do_freeze", scope: !2, file: !2, line: 177, type: !5084, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5590)
!5590 = !{!5591, !5592, !5593, !5608, !5609, !5614, !5618, !5619, !5623, !5627}
!5591 = !DILocalVariable(name: "cgrp", arg: 1, scope: !5589, file: !2, line: 177, type: !18)
!5592 = !DILocalVariable(name: "freeze", arg: 2, scope: !5589, file: !2, line: 177, type: !411)
!5593 = !DILocalVariable(name: "it", scope: !5589, file: !2, line: 179, type: !5594)
!5594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_task_iter", file: !3306, line: 52, size: 832, elements: !5595)
!5595 = !{!5596, !5597, !5598, !5599, !5600, !5601, !5602, !5603, !5604, !5605, !5606, !5607}
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5594, file: !3306, line: 53, baseType: !27, size: 64)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5594, file: !3306, line: 54, baseType: !185, size: 32, offset: 64)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "cset_pos", scope: !5594, file: !3306, line: 56, baseType: !134, size: 64, offset: 128)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "cset_head", scope: !5594, file: !3306, line: 57, baseType: !134, size: 64, offset: 192)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "tcset_pos", scope: !5594, file: !3306, line: 59, baseType: !134, size: 64, offset: 256)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "tcset_head", scope: !5594, file: !3306, line: 60, baseType: !134, size: 64, offset: 320)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "task_pos", scope: !5594, file: !3306, line: 62, baseType: !134, size: 64, offset: 384)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "cur_tasks_head", scope: !5594, file: !3306, line: 64, baseType: !134, size: 64, offset: 448)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "cur_cset", scope: !5594, file: !3306, line: 65, baseType: !3312, size: 64, offset: 512)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "cur_dcset", scope: !5594, file: !3306, line: 66, baseType: !3312, size: 64, offset: 576)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "cur_task", scope: !5594, file: !3306, line: 67, baseType: !2828, size: 64, offset: 640)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "iters_node", scope: !5594, file: !3306, line: 68, baseType: !131, size: 128, offset: 704)
!5608 = !DILocalVariable(name: "task", scope: !5589, file: !2, line: 180, type: !2828)
!5609 = !DILocalVariable(name: "flags", scope: !5610, file: !2, line: 192, type: !67)
!5610 = distinct !DILexicalBlock(scope: !5611, file: !2, line: 192, column: 3)
!5611 = distinct !DILexicalBlock(scope: !5612, file: !2, line: 192, column: 3)
!5612 = distinct !DILexicalBlock(scope: !5613, file: !2, line: 192, column: 3)
!5613 = distinct !DILexicalBlock(scope: !5589, file: !2, line: 191, column: 6)
!5614 = !DILocalVariable(name: "__dummy", scope: !5615, file: !2, line: 192, type: !67)
!5615 = distinct !DILexicalBlock(scope: !5616, file: !2, line: 192, column: 3)
!5616 = distinct !DILexicalBlock(scope: !5617, file: !2, line: 192, column: 3)
!5617 = distinct !DILexicalBlock(scope: !5610, file: !2, line: 192, column: 3)
!5618 = !DILocalVariable(name: "__dummy2", scope: !5615, file: !2, line: 192, type: !67)
!5619 = !DILocalVariable(name: "flags", scope: !5620, file: !2, line: 194, type: !67)
!5620 = distinct !DILexicalBlock(scope: !5621, file: !2, line: 194, column: 3)
!5621 = distinct !DILexicalBlock(scope: !5622, file: !2, line: 194, column: 3)
!5622 = distinct !DILexicalBlock(scope: !5613, file: !2, line: 194, column: 3)
!5623 = !DILocalVariable(name: "__dummy", scope: !5624, file: !2, line: 194, type: !67)
!5624 = distinct !DILexicalBlock(scope: !5625, file: !2, line: 194, column: 3)
!5625 = distinct !DILexicalBlock(scope: !5626, file: !2, line: 194, column: 3)
!5626 = distinct !DILexicalBlock(scope: !5620, file: !2, line: 194, column: 3)
!5627 = !DILocalVariable(name: "__dummy2", scope: !5624, file: !2, line: 194, type: !67)
!5628 = !DILocation(line: 177, column: 45, scope: !5589)
!5629 = !DILocation(line: 177, column: 56, scope: !5589)
!5630 = !DILocation(line: 179, column: 2, scope: !5589)
!5631 = !DILocation(line: 179, column: 23, scope: !5589)
!5632 = !DILocation(line: 180, column: 2, scope: !5589)
!5633 = !DILocation(line: 180, column: 22, scope: !5589)
!5634 = !DILocation(line: 182, column: 2, scope: !5589)
!5635 = !DILocation(line: 182, column: 2, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5589, file: !2, line: 182, column: 2)
!5637 = !DILocation(line: 184, column: 2, scope: !5589)
!5638 = !DILocation(line: 185, column: 6, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5589, file: !2, line: 185, column: 6)
!5640 = !DILocation(line: 185, column: 6, scope: !5589)
!5641 = !DILocation(line: 186, column: 25, scope: !5639)
!5642 = !DILocation(line: 186, column: 31, scope: !5639)
!5643 = !DILocation(line: 186, column: 3, scope: !5639)
!5644 = !DILocation(line: 188, column: 27, scope: !5639)
!5645 = !DILocation(line: 188, column: 33, scope: !5639)
!5646 = !DILocation(line: 188, column: 3, scope: !5639)
!5647 = !DILocation(line: 189, column: 2, scope: !5589)
!5648 = !DILocation(line: 191, column: 6, scope: !5613)
!5649 = !DILocation(line: 191, column: 6, scope: !5589)
!5650 = !DILocation(line: 192, column: 3, scope: !5613)
!5651 = !DILocation(line: 192, column: 3, scope: !5611)
!5652 = !DILocation(line: 192, column: 3, scope: !5612)
!5653 = !DILocation(line: 192, column: 3, scope: !5610)
!5654 = !DILocation(line: 192, column: 3, scope: !5617)
!5655 = !DILocation(line: 192, column: 3, scope: !5615)
!5656 = !DILocation(line: 192, column: 3, scope: !5616)
!5657 = !DILocation(line: 194, column: 3, scope: !5613)
!5658 = !DILocation(line: 194, column: 3, scope: !5621)
!5659 = !DILocation(line: 194, column: 3, scope: !5622)
!5660 = !DILocation(line: 194, column: 3, scope: !5620)
!5661 = !DILocation(line: 194, column: 3, scope: !5626)
!5662 = !DILocation(line: 194, column: 3, scope: !5624)
!5663 = !DILocation(line: 194, column: 3, scope: !5625)
!5664 = !DILocation(line: 196, column: 23, scope: !5589)
!5665 = !DILocation(line: 196, column: 29, scope: !5589)
!5666 = !DILocation(line: 196, column: 2, scope: !5589)
!5667 = !DILocation(line: 197, column: 2, scope: !5589)
!5668 = !DILocation(line: 197, column: 17, scope: !5589)
!5669 = !DILocation(line: 197, column: 15, scope: !5589)
!5670 = !DILocation(line: 202, column: 7, scope: !5671)
!5671 = distinct !DILexicalBlock(scope: !5672, file: !2, line: 202, column: 7)
!5672 = distinct !DILexicalBlock(scope: !5589, file: !2, line: 197, column: 43)
!5673 = !DILocation(line: 202, column: 13, scope: !5671)
!5674 = !DILocation(line: 202, column: 19, scope: !5671)
!5675 = !DILocation(line: 202, column: 7, scope: !5672)
!5676 = !DILocation(line: 203, column: 4, scope: !5671)
!5677 = distinct !{!5677, !5667, !5678, !5182, !5183}
!5678 = !DILocation(line: 205, column: 2, scope: !5589)
!5679 = !DILocation(line: 204, column: 22, scope: !5672)
!5680 = !DILocation(line: 204, column: 28, scope: !5672)
!5681 = !DILocation(line: 204, column: 3, scope: !5672)
!5682 = !DILocation(line: 206, column: 2, scope: !5589)
!5683 = !DILocation(line: 212, column: 2, scope: !5589)
!5684 = !DILocation(line: 213, column: 6, scope: !5685)
!5685 = distinct !DILexicalBlock(scope: !5589, file: !2, line: 213, column: 6)
!5686 = !DILocation(line: 213, column: 12, scope: !5685)
!5687 = !DILocation(line: 213, column: 30, scope: !5685)
!5688 = !DILocation(line: 213, column: 36, scope: !5685)
!5689 = !DILocation(line: 213, column: 44, scope: !5685)
!5690 = !DILocation(line: 213, column: 27, scope: !5685)
!5691 = !DILocation(line: 213, column: 6, scope: !5589)
!5692 = !DILocation(line: 214, column: 24, scope: !5685)
!5693 = !DILocation(line: 214, column: 3, scope: !5685)
!5694 = !DILocation(line: 215, column: 2, scope: !5589)
!5695 = !DILocation(line: 216, column: 1, scope: !5589)
!5696 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5697, file: !5697, line: 66, type: !5698, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5703)
!5697 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5698 = !DISubroutineType(types: !5699)
!5699 = !{null, !5700, !62}
!5700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5701, size: 64)
!5701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5702)
!5702 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5703 = !{!5704, !5705}
!5704 = !DILocalVariable(name: "v", arg: 1, scope: !5696, file: !5697, line: 66, type: !5700)
!5705 = !DILocalVariable(name: "size", arg: 2, scope: !5696, file: !5697, line: 66, type: !62)
!5706 = !DILocation(line: 66, column: 73, scope: !5696)
!5707 = !DILocation(line: 66, column: 83, scope: !5696)
!5708 = !DILocation(line: 68, column: 19, scope: !5696)
!5709 = !DILocation(line: 68, column: 22, scope: !5696)
!5710 = !DILocation(line: 68, column: 2, scope: !5696)
!5711 = !DILocation(line: 69, column: 2, scope: !5696)
!5712 = !DILocation(line: 70, column: 1, scope: !5696)
!5713 = distinct !DISubprogram(name: "arch_test_bit", scope: !5714, file: !5714, line: 237, type: !4904, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5715)
!5714 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5715 = !{!5716, !5717}
!5716 = !DILocalVariable(name: "nr", arg: 1, scope: !5713, file: !5714, line: 237, type: !67)
!5717 = !DILocalVariable(name: "addr", arg: 2, scope: !5713, file: !5714, line: 237, type: !4906)
!5718 = !DILocation(line: 237, column: 29, scope: !5713)
!5719 = !DILocation(line: 237, column: 63, scope: !5713)
!5720 = !DILocation(line: 239, column: 30, scope: !5713)
!5721 = !DILocation(line: 239, column: 9, scope: !5713)
!5722 = !DILocation(line: 239, column: 54, scope: !5713)
!5723 = !DILocation(line: 239, column: 58, scope: !5713)
!5724 = !DILocation(line: 239, column: 36, scope: !5713)
!5725 = !DILocation(line: 240, column: 26, scope: !5713)
!5726 = !DILocation(line: 240, column: 30, scope: !5713)
!5727 = !DILocation(line: 240, column: 8, scope: !5713)
!5728 = !DILocation(line: 239, column: 2, scope: !5713)
!5729 = distinct !DISubprogram(name: "kasan_check_read", scope: !5730, file: !5730, line: 40, type: !5731, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5733)
!5730 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5731 = !DISubroutineType(types: !5732)
!5732 = !{!411, !5700, !185}
!5733 = !{!5734, !5735}
!5734 = !DILocalVariable(name: "p", arg: 1, scope: !5729, file: !5730, line: 40, type: !5700)
!5735 = !DILocalVariable(name: "size", arg: 2, scope: !5729, file: !5730, line: 40, type: !185)
!5736 = !DILocation(line: 40, column: 58, scope: !5729)
!5737 = !DILocation(line: 40, column: 74, scope: !5729)
!5738 = !DILocation(line: 42, column: 2, scope: !5729)
!5739 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5740, file: !5740, line: 229, type: !5741, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5743)
!5740 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5741 = !DISubroutineType(types: !5742)
!5742 = !{null, !5700, !62, !39}
!5743 = !{!5744, !5745, !5746}
!5744 = !DILocalVariable(name: "ptr", arg: 1, scope: !5739, file: !5740, line: 229, type: !5700)
!5745 = !DILocalVariable(name: "size", arg: 2, scope: !5739, file: !5740, line: 229, type: !62)
!5746 = !DILocalVariable(name: "type", arg: 3, scope: !5739, file: !5740, line: 230, type: !39)
!5747 = !DILocation(line: 229, column: 60, scope: !5739)
!5748 = !DILocation(line: 229, column: 72, scope: !5739)
!5749 = !DILocation(line: 230, column: 15, scope: !5739)
!5750 = !DILocation(line: 230, column: 23, scope: !5739)
!5751 = distinct !DISubprogram(name: "constant_test_bit", scope: !5714, file: !5714, line: 204, type: !5752, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5754)
!5752 = !DISubroutineType(types: !5753)
!5753 = !{!411, !674, !4906}
!5754 = !{!5755, !5756}
!5755 = !DILocalVariable(name: "nr", arg: 1, scope: !5751, file: !5714, line: 204, type: !674)
!5756 = !DILocalVariable(name: "addr", arg: 2, scope: !5751, file: !5714, line: 204, type: !4906)
!5757 = !DILocation(line: 204, column: 52, scope: !5751)
!5758 = !DILocation(line: 204, column: 86, scope: !5751)
!5759 = !DILocation(line: 206, column: 19, scope: !5751)
!5760 = !DILocation(line: 206, column: 22, scope: !5751)
!5761 = !DILocation(line: 206, column: 15, scope: !5751)
!5762 = !DILocation(line: 207, column: 4, scope: !5751)
!5763 = !DILocation(line: 207, column: 9, scope: !5751)
!5764 = !DILocation(line: 207, column: 12, scope: !5751)
!5765 = !DILocation(line: 206, column: 44, scope: !5751)
!5766 = !DILocation(line: 207, column: 37, scope: !5751)
!5767 = !DILocation(line: 206, column: 2, scope: !5751)
!5768 = distinct !DISubprogram(name: "variable_test_bit", scope: !5714, file: !5714, line: 224, type: !5752, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5769)
!5769 = !{!5770, !5771, !5772}
!5770 = !DILocalVariable(name: "nr", arg: 1, scope: !5768, file: !5714, line: 224, type: !674)
!5771 = !DILocalVariable(name: "addr", arg: 2, scope: !5768, file: !5714, line: 224, type: !4906)
!5772 = !DILocalVariable(name: "oldbit", scope: !5768, file: !5714, line: 226, type: !411)
!5773 = !DILocation(line: 224, column: 52, scope: !5768)
!5774 = !DILocation(line: 224, column: 86, scope: !5768)
!5775 = !DILocation(line: 226, column: 2, scope: !5768)
!5776 = !DILocation(line: 226, column: 7, scope: !5768)
!5777 = !DILocation(line: 231, column: 33, scope: !5768)
!5778 = !DILocation(line: 231, column: 46, scope: !5768)
!5779 = !DILocation(line: 228, column: 2, scope: !5768)
!5780 = !{i64 2147931818, i64 2147931892}
!5781 = !DILocation(line: 233, column: 9, scope: !5768)
!5782 = !DILocation(line: 234, column: 1, scope: !5768)
!5783 = !DILocation(line: 233, column: 2, scope: !5768)
!5784 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5697, file: !5697, line: 80, type: !5698, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5785)
!5785 = !{!5786, !5787}
!5786 = !DILocalVariable(name: "v", arg: 1, scope: !5784, file: !5697, line: 80, type: !5700)
!5787 = !DILocalVariable(name: "size", arg: 2, scope: !5784, file: !5697, line: 80, type: !62)
!5788 = !DILocation(line: 80, column: 74, scope: !5784)
!5789 = !DILocation(line: 80, column: 84, scope: !5784)
!5790 = !DILocation(line: 82, column: 20, scope: !5784)
!5791 = !DILocation(line: 82, column: 23, scope: !5784)
!5792 = !DILocation(line: 82, column: 2, scope: !5784)
!5793 = !DILocation(line: 83, column: 2, scope: !5784)
!5794 = !DILocation(line: 84, column: 1, scope: !5784)
!5795 = distinct !DISubprogram(name: "arch_set_bit", scope: !5714, file: !5714, line: 52, type: !4958, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5796)
!5796 = !{!5797, !5798}
!5797 = !DILocalVariable(name: "nr", arg: 1, scope: !5795, file: !5714, line: 52, type: !674)
!5798 = !DILocalVariable(name: "addr", arg: 2, scope: !5795, file: !5714, line: 52, type: !4960)
!5799 = !DILocation(line: 52, column: 19, scope: !5795)
!5800 = !DILocation(line: 52, column: 47, scope: !5795)
!5801 = !DILocation(line: 54, column: 27, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5795, file: !5714, line: 54, column: 6)
!5803 = !DILocation(line: 54, column: 6, scope: !5802)
!5804 = !DILocation(line: 54, column: 6, scope: !5795)
!5805 = !DILocation(line: 56, column: 6, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5802, file: !5714, line: 54, column: 32)
!5807 = !DILocation(line: 57, column: 12, scope: !5806)
!5808 = !DILocation(line: 55, column: 3, scope: !5806)
!5809 = !{i64 2147918206, i64 2147918245, i64 2147918266, i64 2147918303, i64 2147918326, i64 2147918196}
!5810 = !DILocation(line: 59, column: 2, scope: !5806)
!5811 = !DILocation(line: 61, column: 8, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5802, file: !5714, line: 59, column: 9)
!5813 = !DILocation(line: 61, column: 32, scope: !5812)
!5814 = !DILocation(line: 60, column: 3, scope: !5812)
!5815 = !{i64 2147918491, i64 2147918530, i64 2147918551, i64 2147918588, i64 2147918611, i64 2147918481}
!5816 = !DILocation(line: 63, column: 1, scope: !5795)
!5817 = distinct !DISubprogram(name: "kasan_check_write", scope: !5730, file: !5730, line: 44, type: !5731, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5818)
!5818 = !{!5819, !5820}
!5819 = !DILocalVariable(name: "p", arg: 1, scope: !5817, file: !5730, line: 44, type: !5700)
!5820 = !DILocalVariable(name: "size", arg: 2, scope: !5817, file: !5730, line: 44, type: !185)
!5821 = !DILocation(line: 44, column: 59, scope: !5817)
!5822 = !DILocation(line: 44, column: 75, scope: !5817)
!5823 = !DILocation(line: 46, column: 2, scope: !5817)
!5824 = distinct !DISubprogram(name: "arch_clear_bit", scope: !5714, file: !5714, line: 72, type: !4958, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5825)
!5825 = !{!5826, !5827}
!5826 = !DILocalVariable(name: "nr", arg: 1, scope: !5824, file: !5714, line: 72, type: !674)
!5827 = !DILocalVariable(name: "addr", arg: 2, scope: !5824, file: !5714, line: 72, type: !4960)
!5828 = !DILocation(line: 72, column: 21, scope: !5824)
!5829 = !DILocation(line: 72, column: 49, scope: !5824)
!5830 = !DILocation(line: 74, column: 27, scope: !5831)
!5831 = distinct !DILexicalBlock(scope: !5824, file: !5714, line: 74, column: 6)
!5832 = !DILocation(line: 74, column: 6, scope: !5831)
!5833 = !DILocation(line: 74, column: 6, scope: !5824)
!5834 = !DILocation(line: 76, column: 6, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5831, file: !5714, line: 74, column: 32)
!5836 = !DILocation(line: 77, column: 13, scope: !5835)
!5837 = !DILocation(line: 77, column: 12, scope: !5835)
!5838 = !DILocation(line: 75, column: 3, scope: !5835)
!5839 = !{i64 2147919494, i64 2147919533, i64 2147919554, i64 2147919591, i64 2147919614, i64 2147919484}
!5840 = !DILocation(line: 78, column: 2, scope: !5835)
!5841 = !DILocation(line: 80, column: 8, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5831, file: !5714, line: 78, column: 9)
!5843 = !DILocation(line: 80, column: 32, scope: !5842)
!5844 = !DILocation(line: 79, column: 3, scope: !5842)
!5845 = !{i64 2147919779, i64 2147919818, i64 2147919839, i64 2147919876, i64 2147919899, i64 2147919769}
!5846 = !DILocation(line: 82, column: 1, scope: !5824)
!5847 = distinct !DISubprogram(name: "static_key_false", scope: !2340, file: !2340, line: 205, type: !5848, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5862)
!5848 = !DISubroutineType(types: !5849)
!5849 = !{!411, !5850}
!5850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5851, size: 64)
!5851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2340, line: 85, size: 128, elements: !5852)
!5852 = !{!5853, !5854}
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5851, file: !2340, line: 86, baseType: !105, size: 32)
!5854 = !DIDerivedType(tag: DW_TAG_member, scope: !5851, file: !2340, line: 101, baseType: !5855, size: 64, offset: 64)
!5855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5851, file: !2340, line: 101, size: 64, elements: !5856)
!5856 = !{!5857, !5858, !5859}
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5855, file: !2340, line: 102, baseType: !67, size: 64)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5855, file: !2340, line: 103, baseType: !2338, size: 64)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5855, file: !2340, line: 104, baseType: !5860, size: 64)
!5860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5861, size: 64)
!5861 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2340, line: 104, flags: DIFlagFwdDecl)
!5862 = !{!5863}
!5863 = !DILocalVariable(name: "key", arg: 1, scope: !5847, file: !2340, line: 205, type: !5850)
!5864 = !DILocation(line: 205, column: 65, scope: !5847)
!5865 = !DILocation(line: 207, column: 28, scope: !5847)
!5866 = !DILocation(line: 207, column: 9, scope: !5847)
!5867 = !DILocation(line: 207, column: 2, scope: !5847)
!5868 = distinct !DISubprogram(name: "arch_static_branch", scope: !5869, file: !5869, line: 25, type: !5870, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5872)
!5869 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!5870 = !DISubroutineType(types: !5871)
!5871 = !{!411, !5850, !411}
!5872 = !{!5873, !5874, !5875}
!5873 = !DILocalVariable(name: "key", arg: 1, scope: !5868, file: !5869, line: 25, type: !5850)
!5874 = !DILocalVariable(name: "branch", arg: 2, scope: !5868, file: !5869, line: 25, type: !411)
!5875 = !DILabel(scope: !5868, name: "l_yes", file: !5869, line: 33)
!5876 = !DILocation(line: 25, column: 67, scope: !5868)
!5877 = !DILocation(line: 25, column: 77, scope: !5868)
!5878 = !DILocation(line: 30, column: 13, scope: !5868)
!5879 = !DILocation(line: 30, column: 28, scope: !5868)
!5880 = !DILocation(line: 30, column: 26, scope: !5868)
!5881 = !DILocation(line: 27, column: 2, scope: !5868)
!5882 = !{i64 1513012, i64 1513056, i64 2148997739, i64 2148997760, i64 2148997786, i64 2148997819, i64 2148997853, i64 2148997877}
!5883 = !DILocation(line: 32, column: 2, scope: !5868)
!5884 = !DILocation(line: 33, column: 1, scope: !5868)
!5885 = !DILocation(line: 34, column: 2, scope: !5868)
!5886 = !DILocation(line: 35, column: 1, scope: !5868)
!5887 = distinct !DISubprogram(name: "kernfs_path", scope: !1927, file: !1927, line: 595, type: !5888, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5890)
!5888 = !DISubroutineType(types: !5889)
!5889 = !{!39, !1925, !60, !62}
!5890 = !{!5891, !5892, !5893}
!5891 = !DILocalVariable(name: "kn", arg: 1, scope: !5887, file: !1927, line: 595, type: !1925)
!5892 = !DILocalVariable(name: "buf", arg: 2, scope: !5887, file: !1927, line: 595, type: !60)
!5893 = !DILocalVariable(name: "buflen", arg: 3, scope: !5887, file: !1927, line: 595, type: !62)
!5894 = !DILocation(line: 595, column: 51, scope: !5887)
!5895 = !DILocation(line: 595, column: 61, scope: !5887)
!5896 = !DILocation(line: 595, column: 73, scope: !5887)
!5897 = !DILocation(line: 597, column: 31, scope: !5887)
!5898 = !DILocation(line: 597, column: 41, scope: !5887)
!5899 = !DILocation(line: 597, column: 46, scope: !5887)
!5900 = !DILocation(line: 597, column: 9, scope: !5887)
!5901 = !DILocation(line: 597, column: 2, scope: !5887)
!5902 = !DISubprogram(name: "kernfs_path_from_node", scope: !1927, file: !1927, line: 397, type: !5903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5903 = !DISubroutineType(types: !5904)
!5904 = !{!39, !1925, !1925, !60, !62}
!5905 = distinct !DISubprogram(name: "cpu_online", scope: !3058, file: !3058, line: 1080, type: !5906, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5908)
!5906 = !DISubroutineType(types: !5907)
!5907 = !{!411, !185}
!5908 = !{!5909}
!5909 = !DILocalVariable(name: "cpu", arg: 1, scope: !5905, file: !3058, line: 1080, type: !185)
!5910 = !DILocation(line: 1080, column: 44, scope: !5905)
!5911 = !DILocation(line: 1082, column: 26, scope: !5905)
!5912 = !DILocation(line: 1082, column: 9, scope: !5905)
!5913 = !DILocation(line: 1082, column: 2, scope: !5905)
!5914 = distinct !DISubprogram(name: "__preempt_count_add", scope: !5915, file: !5915, line: 78, type: !3561, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5916)
!5915 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!5916 = !{!5917, !5918, !5920}
!5917 = !DILocalVariable(name: "val", arg: 1, scope: !5914, file: !5915, line: 78, type: !39)
!5918 = !DILocalVariable(name: "pao_ID__", scope: !5919, file: !5915, line: 80, type: !2236)
!5919 = distinct !DILexicalBlock(scope: !5914, file: !5915, line: 80, column: 2)
!5920 = !DILocalVariable(name: "pto_val__", scope: !5921, file: !5915, line: 80, type: !375)
!5921 = distinct !DILexicalBlock(scope: !5922, file: !5915, line: 80, column: 2)
!5922 = distinct !DILexicalBlock(scope: !5923, file: !5915, line: 80, column: 2)
!5923 = distinct !DILexicalBlock(scope: !5919, file: !5915, line: 80, column: 2)
!5924 = !DILocation(line: 78, column: 53, scope: !5914)
!5925 = !DILocation(line: 80, column: 2, scope: !5914)
!5926 = !DILocation(line: 80, column: 2, scope: !5919)
!5927 = !DILocation(line: 80, column: 2, scope: !5923)
!5928 = !DILocation(line: 80, column: 2, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5923, file: !5915, line: 80, column: 2)
!5930 = !{i64 2149620915}
!5931 = !DILocation(line: 80, column: 2, scope: !5922)
!5932 = !DILocation(line: 80, column: 2, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5922, file: !5915, line: 80, column: 2)
!5934 = !{i64 2149621210}
!5935 = !DILocation(line: 80, column: 2, scope: !5921)
!5936 = !{i64 2149621915}
!5937 = !DILocation(line: 81, column: 1, scope: !5914)
!5938 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !5915, file: !5915, line: 93, type: !1898, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5939)
!5939 = !{!5940}
!5940 = !DILocalVariable(name: "c", scope: !5941, file: !5915, line: 95, type: !411)
!5941 = distinct !DILexicalBlock(scope: !5938, file: !5915, line: 95, column: 9)
!5942 = !DILocation(line: 95, column: 9, scope: !5941)
!5943 = !{i64 2149625271, i64 2149625364}
!5944 = !DILocation(line: 95, column: 9, scope: !5938)
!5945 = !DILocation(line: 95, column: 2, scope: !5938)
!5946 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !3058, file: !3058, line: 502, type: !5947, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5949)
!5947 = !DISubroutineType(types: !5948)
!5948 = !{!411, !39, !4732}
!5949 = !{!5950, !5951}
!5950 = !DILocalVariable(name: "cpu", arg: 1, scope: !5946, file: !3058, line: 502, type: !39)
!5951 = !DILocalVariable(name: "cpumask", arg: 2, scope: !5946, file: !3058, line: 502, type: !4732)
!5952 = !DILocation(line: 502, column: 50, scope: !5946)
!5953 = !DILocation(line: 502, column: 77, scope: !5946)
!5954 = !DILocation(line: 504, column: 9, scope: !5946)
!5955 = !DILocation(line: 504, column: 2, scope: !5946)
!5956 = distinct !DISubprogram(name: "cpumask_check", scope: !3058, file: !3058, line: 148, type: !5957, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5959)
!5957 = !DISubroutineType(types: !5958)
!5958 = !{!185, !185}
!5959 = !{!5960}
!5960 = !DILocalVariable(name: "cpu", arg: 1, scope: !5956, file: !3058, line: 148, type: !185)
!5961 = !DILocation(line: 148, column: 64, scope: !5956)
!5962 = !DILocation(line: 150, column: 20, scope: !5956)
!5963 = !DILocation(line: 150, column: 2, scope: !5956)
!5964 = !DILocation(line: 151, column: 9, scope: !5956)
!5965 = !DILocation(line: 151, column: 2, scope: !5956)
!5966 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !3058, file: !3058, line: 140, type: !5967, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5969)
!5967 = !DISubroutineType(types: !5968)
!5968 = !{null, !185, !185}
!5969 = !{!5970, !5971}
!5970 = !DILocalVariable(name: "cpu", arg: 1, scope: !5966, file: !3058, line: 140, type: !185)
!5971 = !DILocalVariable(name: "bits", arg: 2, scope: !5966, file: !3058, line: 140, type: !185)
!5972 = !DILocation(line: 140, column: 60, scope: !5966)
!5973 = !DILocation(line: 140, column: 78, scope: !5966)
!5974 = !DILocation(line: 145, column: 1, scope: !5966)
!5975 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !4995, file: !4995, line: 43, type: !5976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5976 = !DISubroutineType(types: !5977)
!5977 = !{null, !4998, !67}
!5978 = distinct !DISubprogram(name: "cgroup_parent", scope: !3306, file: !3306, line: 495, type: !5979, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !5981)
!5979 = !DISubroutineType(types: !5980)
!5980 = !{!18, !18}
!5981 = !{!5982, !5983, !5984}
!5982 = !DILocalVariable(name: "cgrp", arg: 1, scope: !5978, file: !3306, line: 495, type: !18)
!5983 = !DILocalVariable(name: "parent_css", scope: !5978, file: !3306, line: 497, type: !34)
!5984 = !DILocalVariable(name: "__mptr", scope: !5985, file: !3306, line: 500, type: !145)
!5985 = distinct !DILexicalBlock(scope: !5986, file: !3306, line: 500, column: 10)
!5986 = distinct !DILexicalBlock(scope: !5978, file: !3306, line: 499, column: 6)
!5987 = !DILocation(line: 495, column: 59, scope: !5978)
!5988 = !DILocation(line: 497, column: 2, scope: !5978)
!5989 = !DILocation(line: 497, column: 30, scope: !5978)
!5990 = !DILocation(line: 497, column: 43, scope: !5978)
!5991 = !DILocation(line: 497, column: 49, scope: !5978)
!5992 = !DILocation(line: 497, column: 54, scope: !5978)
!5993 = !DILocation(line: 499, column: 6, scope: !5986)
!5994 = !DILocation(line: 499, column: 6, scope: !5978)
!5995 = !DILocation(line: 500, column: 10, scope: !5985)
!5996 = !DILocation(line: 500, column: 10, scope: !5986)
!5997 = !DILocation(line: 500, column: 3, scope: !5986)
!5998 = !DILocation(line: 501, column: 2, scope: !5978)
!5999 = !DILocation(line: 502, column: 1, scope: !5978)
!6000 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !4995, file: !4995, line: 29, type: !6001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6001 = !DISubroutineType(types: !6002)
!6002 = !{null, !4998}
!6003 = distinct !DISubprogram(name: "task_css_set", scope: !3306, file: !3306, line: 421, type: !6004, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !6006)
!6004 = !DISubroutineType(types: !6005)
!6005 = !{!3312, !2828}
!6006 = !{!6007, !6008}
!6007 = !DILocalVariable(name: "task", arg: 1, scope: !6003, file: !3306, line: 421, type: !2828)
!6008 = !DILocalVariable(name: "__UNIQUE_ID_rcu258", scope: !6009, file: !3306, line: 423, type: !3312)
!6009 = distinct !DILexicalBlock(scope: !6003, file: !3306, line: 423, column: 9)
!6010 = !DILocation(line: 421, column: 64, scope: !6003)
!6011 = !DILocation(line: 423, column: 9, scope: !6009)
!6012 = !DILocation(line: 423, column: 9, scope: !6013)
!6013 = distinct !DILexicalBlock(scope: !6009, file: !3306, line: 423, column: 9)
!6014 = !DILocation(line: 423, column: 9, scope: !6015)
!6015 = distinct !DILexicalBlock(scope: !6013, file: !3306, line: 423, column: 9)
!6016 = !DILocation(line: 423, column: 9, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !6009, file: !3306, line: 423, column: 9)
!6018 = !DILocation(line: 423, column: 9, scope: !6003)
!6019 = !DILocation(line: 423, column: 2, scope: !6003)
!6020 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !4995, file: !4995, line: 41, type: !6001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6021 = !DISubprogram(name: "_raw_spin_lock", scope: !4995, file: !4995, line: 22, type: !6001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6022 = !DISubprogram(name: "_raw_spin_unlock", scope: !4995, file: !4995, line: 39, type: !6001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6023 = distinct !DISubprogram(name: "lock_task_sighand", scope: !3344, file: !3344, line: 737, type: !6024, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !6026)
!6024 = !DISubroutineType(types: !6025)
!6025 = !{!3543, !2828, !2367}
!6026 = !{!6027, !6028, !6029}
!6027 = !DILocalVariable(name: "task", arg: 1, scope: !6023, file: !3344, line: 737, type: !2828)
!6028 = !DILocalVariable(name: "flags", arg: 2, scope: !6023, file: !3344, line: 738, type: !2367)
!6029 = !DILocalVariable(name: "ret", scope: !6023, file: !3344, line: 740, type: !3543)
!6030 = !DILocation(line: 737, column: 76, scope: !6023)
!6031 = !DILocation(line: 738, column: 29, scope: !6023)
!6032 = !DILocation(line: 740, column: 2, scope: !6023)
!6033 = !DILocation(line: 740, column: 25, scope: !6023)
!6034 = !DILocation(line: 742, column: 28, scope: !6023)
!6035 = !DILocation(line: 742, column: 34, scope: !6023)
!6036 = !DILocation(line: 742, column: 8, scope: !6023)
!6037 = !DILocation(line: 742, column: 6, scope: !6023)
!6038 = !DILocation(line: 743, column: 8, scope: !6023)
!6039 = !DILocation(line: 744, column: 9, scope: !6023)
!6040 = !DILocation(line: 745, column: 1, scope: !6023)
!6041 = !DILocation(line: 744, column: 2, scope: !6023)
!6042 = distinct !DISubprogram(name: "signal_wake_up", scope: !3344, file: !3344, line: 450, type: !5420, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !6043)
!6043 = !{!6044, !6045, !6046}
!6044 = !DILocalVariable(name: "t", arg: 1, scope: !6042, file: !3344, line: 450, type: !2828)
!6045 = !DILocalVariable(name: "fatal", arg: 2, scope: !6042, file: !3344, line: 450, type: !411)
!6046 = !DILocalVariable(name: "state", scope: !6042, file: !3344, line: 452, type: !185)
!6047 = !DILocation(line: 450, column: 55, scope: !6042)
!6048 = !DILocation(line: 450, column: 63, scope: !6042)
!6049 = !DILocation(line: 452, column: 2, scope: !6042)
!6050 = !DILocation(line: 452, column: 15, scope: !6042)
!6051 = !DILocation(line: 453, column: 6, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !6042, file: !3344, line: 453, column: 6)
!6053 = !DILocation(line: 453, column: 12, scope: !6052)
!6054 = !DILocation(line: 453, column: 17, scope: !6052)
!6055 = !DILocation(line: 453, column: 20, scope: !6052)
!6056 = !DILocation(line: 453, column: 27, scope: !6052)
!6057 = !DILocation(line: 453, column: 6, scope: !6042)
!6058 = !DILocation(line: 454, column: 3, scope: !6059)
!6059 = distinct !DILexicalBlock(scope: !6052, file: !3344, line: 453, column: 52)
!6060 = !DILocation(line: 454, column: 6, scope: !6059)
!6061 = !DILocation(line: 454, column: 13, scope: !6059)
!6062 = !DILocation(line: 455, column: 9, scope: !6059)
!6063 = !DILocation(line: 456, column: 2, scope: !6059)
!6064 = !DILocation(line: 457, column: 23, scope: !6042)
!6065 = !DILocation(line: 457, column: 26, scope: !6042)
!6066 = !DILocation(line: 457, column: 2, scope: !6042)
!6067 = !DILocation(line: 458, column: 1, scope: !6042)
!6068 = !DISubprogram(name: "wake_up_process", scope: !1578, file: !1578, line: 1998, type: !6069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6069 = !DISubroutineType(types: !6070)
!6070 = !{!39, !2828}
!6071 = distinct !DISubprogram(name: "unlock_task_sighand", scope: !3344, file: !3344, line: 747, type: !6072, scopeLine: 749, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695, retainedNodes: !6074)
!6072 = !DISubroutineType(types: !6073)
!6073 = !{null, !2828, !2367}
!6074 = !{!6075, !6076}
!6075 = !DILocalVariable(name: "task", arg: 1, scope: !6071, file: !3344, line: 747, type: !2828)
!6076 = !DILocalVariable(name: "flags", arg: 2, scope: !6071, file: !3344, line: 748, type: !2367)
!6077 = !DILocation(line: 747, column: 60, scope: !6071)
!6078 = !DILocation(line: 748, column: 22, scope: !6071)
!6079 = !DILocation(line: 750, column: 26, scope: !6071)
!6080 = !DILocation(line: 750, column: 32, scope: !6071)
!6081 = !DILocation(line: 750, column: 41, scope: !6071)
!6082 = !DILocation(line: 750, column: 51, scope: !6071)
!6083 = !DILocation(line: 750, column: 50, scope: !6071)
!6084 = !DILocation(line: 750, column: 2, scope: !6071)
!6085 = !DILocation(line: 751, column: 1, scope: !6071)
!6086 = !DISubprogram(name: "__lock_task_sighand", scope: !3344, file: !3344, line: 734, type: !6024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6087 = !DISubprogram(name: "signal_wake_up_state", scope: !3344, file: !3344, line: 448, type: !6088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6088 = !DISubroutineType(types: !6089)
!6089 = !{null, !2828, !185}
!6090 = distinct !DISubprogram(name: "trace_cgroup_freeze_enabled", scope: !9, file: !9, line: 106, type: !1898, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695)
!6091 = !DILocation(line: 106, column: 1, scope: !6090)
!6092 = !DILocation(line: 106, column: 1, scope: !4743)
!6093 = !DILocation(line: 106, column: 1, scope: !4751)
!6094 = !DILocation(line: 106, column: 1, scope: !4750)
!6095 = !DILocation(line: 106, column: 1, scope: !4753)
!6096 = !DILocation(line: 106, column: 1, scope: !4756)
!6097 = !DILocation(line: 106, column: 1, scope: !4758)
!6098 = !{i64 2155231917}
!6099 = !DILocation(line: 106, column: 1, scope: !4754)
!6100 = !DILocation(line: 106, column: 1, scope: !4760)
!6101 = !DILocation(line: 106, column: 1, scope: !4764)
!6102 = !DILocation(line: 106, column: 1, scope: !4763)
!6103 = !DILocation(line: 106, column: 1, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !4763, file: !9, line: 106, column: 1)
!6105 = !DILocation(line: 106, column: 1, scope: !6106)
!6106 = distinct !DILexicalBlock(scope: !4763, file: !9, line: 106, column: 1)
!6107 = !{i64 2155233114, i64 2155233143, i64 2155233189, i64 2155233247, i64 2155233301, i64 2155233355, i64 2155233410, i64 2155233441, i64 2155233749, i64 2155233755, i64 2155233802, i64 2155233825, i64 2155233851}
!6108 = !DILocation(line: 106, column: 1, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !4763, file: !9, line: 106, column: 1)
!6110 = !DILocation(line: 106, column: 1, scope: !4761)
!6111 = !DILocation(line: 106, column: 1, scope: !6112)
!6112 = distinct !DILexicalBlock(scope: !4750, file: !9, line: 106, column: 1)
!6113 = !{i64 2155238266}
!6114 = !DILocation(line: 106, column: 1, scope: !4766)
!6115 = !DILocation(line: 106, column: 1, scope: !4769)
!6116 = !DILocation(line: 106, column: 1, scope: !6117)
!6117 = distinct !DILexicalBlock(scope: !4769, file: !9, line: 106, column: 1)
!6118 = !DILocation(line: 106, column: 1, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6117, file: !9, line: 106, column: 1)
!6120 = !DILocation(line: 106, column: 1, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !4766, file: !9, line: 106, column: 1)
!6122 = !DILocation(line: 106, column: 1, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6121, file: !9, line: 106, column: 1)
!6124 = !DILocation(line: 106, column: 1, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !6123, file: !9, line: 106, column: 1)
!6126 = !DILocation(line: 106, column: 1, scope: !6127)
!6127 = distinct !DILexicalBlock(scope: !4750, file: !9, line: 106, column: 1)
!6128 = !{i64 2155244566}
!6129 = !DILocation(line: 106, column: 1, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6127, file: !9, line: 106, column: 1)
!6131 = !DILocation(line: 106, column: 1, scope: !6132)
!6132 = distinct !DILexicalBlock(scope: !6130, file: !9, line: 106, column: 1)
!6133 = !{i64 2155244725}
!6134 = distinct !DISubprogram(name: "trace_cgroup_unfreeze_enabled", scope: !9, file: !9, line: 113, type: !1898, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4695)
!6135 = !DILocation(line: 113, column: 1, scope: !6134)
!6136 = !DILocation(line: 113, column: 1, scope: !4774)
!6137 = !DILocation(line: 113, column: 1, scope: !4780)
!6138 = !DILocation(line: 113, column: 1, scope: !4779)
!6139 = !DILocation(line: 113, column: 1, scope: !4782)
!6140 = !DILocation(line: 113, column: 1, scope: !4785)
!6141 = !DILocation(line: 113, column: 1, scope: !4787)
!6142 = !{i64 2155281375}
!6143 = !DILocation(line: 113, column: 1, scope: !4783)
!6144 = !DILocation(line: 113, column: 1, scope: !4789)
!6145 = !DILocation(line: 113, column: 1, scope: !4793)
!6146 = !DILocation(line: 113, column: 1, scope: !4792)
!6147 = !DILocation(line: 113, column: 1, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !4792, file: !9, line: 113, column: 1)
!6149 = !DILocation(line: 113, column: 1, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !4792, file: !9, line: 113, column: 1)
!6151 = !{i64 2155282574, i64 2155282603, i64 2155282649, i64 2155282707, i64 2155282761, i64 2155282815, i64 2155282870, i64 2155282901, i64 2155283209, i64 2155283215, i64 2155283262, i64 2155283285, i64 2155283311}
!6152 = !DILocation(line: 113, column: 1, scope: !6153)
!6153 = distinct !DILexicalBlock(scope: !4792, file: !9, line: 113, column: 1)
!6154 = !DILocation(line: 113, column: 1, scope: !4790)
!6155 = !DILocation(line: 113, column: 1, scope: !6156)
!6156 = distinct !DILexicalBlock(scope: !4779, file: !9, line: 113, column: 1)
!6157 = !{i64 2155283665}
!6158 = !DILocation(line: 113, column: 1, scope: !4795)
!6159 = !DILocation(line: 113, column: 1, scope: !4798)
!6160 = !DILocation(line: 113, column: 1, scope: !6161)
!6161 = distinct !DILexicalBlock(scope: !4798, file: !9, line: 113, column: 1)
!6162 = !DILocation(line: 113, column: 1, scope: !6163)
!6163 = distinct !DILexicalBlock(scope: !6161, file: !9, line: 113, column: 1)
!6164 = !DILocation(line: 113, column: 1, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !4795, file: !9, line: 113, column: 1)
!6166 = !DILocation(line: 113, column: 1, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6165, file: !9, line: 113, column: 1)
!6168 = !DILocation(line: 113, column: 1, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6167, file: !9, line: 113, column: 1)
!6170 = !DILocation(line: 113, column: 1, scope: !6171)
!6171 = distinct !DILexicalBlock(scope: !4779, file: !9, line: 113, column: 1)
!6172 = !{i64 2155290087}
!6173 = !DILocation(line: 113, column: 1, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6171, file: !9, line: 113, column: 1)
!6175 = !DILocation(line: 113, column: 1, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6174, file: !9, line: 113, column: 1)
!6177 = !{i64 2155290246}
!6178 = !DISubprogram(name: "css_task_iter_start", scope: !3306, file: !3306, line: 158, type: !6179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6179 = !DISubroutineType(types: !6180)
!6180 = !{null, !34, !185, !6181}
!6181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5594, size: 64)
!6182 = !DISubprogram(name: "css_task_iter_next", scope: !3306, file: !3306, line: 160, type: !6183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6183 = !DISubroutineType(types: !6184)
!6184 = !{!2828, !6181}
!6185 = !DISubprogram(name: "css_task_iter_end", scope: !3306, file: !3306, line: 161, type: !6186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6186 = !DISubroutineType(types: !6187)
!6187 = !{null, !6181}
