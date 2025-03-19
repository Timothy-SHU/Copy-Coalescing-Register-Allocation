; ModuleID = 'kernel/cgroup/legacy_freezer.c'
source_filename = "kernel/cgroup/legacy_freezer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cftype = type { [64 x i8], i64, i64, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.css_set = type { [14 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [14 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.freezer = type { %struct.cgroup_subsys_state, i32 }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i64, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
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
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.css_task_iter = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.percpu_ref_data = type { %struct.atomic64_t, ptr, ptr, i8, %struct.callback_head, ptr }

@files = internal global [4 x %struct.cftype] [%struct.cftype { [64 x i8] c"state\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @freezer_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @freezer_write, ptr null }, %struct.cftype { [64 x i8] c"self_freezing\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @freezer_self_freezing_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.cftype { [64 x i8] c"parent_freezing\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @freezer_parent_freezing_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.cftype zeroinitializer], align 16, !dbg !0
@freezer_cgrp_subsys = hidden global %struct.cgroup_subsys { ptr @freezer_css_alloc, ptr @freezer_css_online, ptr @freezer_css_offline, ptr null, ptr @freezer_css_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @freezer_attach, ptr null, ptr null, ptr null, ptr @freezer_fork, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, %struct.idr zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @files, i32 0 }, align 8, !dbg !4437
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4439
@freezer_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @freezer_mutex, i64 16), ptr getelementptr (i8, ptr @freezer_mutex, i64 16) } }, align 8, !dbg !4444
@freezer_active = external dso_local global %struct.static_key_false, align 8
@init_css_set = external dso_local global %struct.css_set, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"include/linux/percpu-refcount.h\00", align 1, !dbg !4446
@.str.2 = private unnamed_addr constant [7 x i8] c"FROZEN\00", align 1, !dbg !4448
@.str.3 = private unnamed_addr constant [9 x i8] c"FREEZING\00", align 1, !dbg !4451
@.str.4 = private unnamed_addr constant [7 x i8] c"THAWED\00", align 1, !dbg !4456

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @cgroup_freezing(ptr noundef %task) #0 align 16 !dbg !4468 {
entry:
  %task.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  %state = alloca i32, align 4
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4472, metadata !DIExpression()), !dbg !4475
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #14, !dbg !4476
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4473, metadata !DIExpression()), !dbg !4477
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #14, !dbg !4478
  call void @llvm.dbg.declare(metadata ptr %state, metadata !4474, metadata !DIExpression()), !dbg !4479
  call void @rcu_read_lock() #15, !dbg !4480
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4481
  %call = call ptr @task_freezer(ptr noundef %0) #15, !dbg !4482
  %state1 = getelementptr inbounds %struct.freezer, ptr %call, i32 0, i32 1, !dbg !4483
  %1 = load i32, ptr %state1, align 8, !dbg !4483
  store i32 %1, ptr %state, align 4, !dbg !4484
  %2 = load i32, ptr %state, align 4, !dbg !4485
  %and = and i32 %2, 6, !dbg !4486
  %tobool = icmp ne i32 %and, 0, !dbg !4486
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4487

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %state, align 4, !dbg !4488
  %and2 = and i32 %3, 8, !dbg !4489
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4490
  %lnot = xor i1 %tobool3, true, !dbg !4490
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !4491
  %frombool = zext i1 %4 to i8, !dbg !4492
  store i8 %frombool, ptr %ret, align 1, !dbg !4492
  call void @rcu_read_unlock() #15, !dbg !4493
  %5 = load i8, ptr %ret, align 1, !dbg !4494, !range !4495, !noundef !1509
  %tobool4 = trunc i8 %5 to i1, !dbg !4494
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #14, !dbg !4496
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #14, !dbg !4496
  ret i1 %tobool4, !dbg !4497
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #3 align 16 !dbg !4498 {
entry:
  call void @__rcu_read_lock() #15, !dbg !4500
  br label %do.body, !dbg !4501

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4502

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4504

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4505

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4507
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_freezer(ptr noundef %task) #4 align 16 !dbg !4508 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4512, metadata !DIExpression()), !dbg !4513
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4514
  %call = call ptr @task_css(ptr noundef %0, i32 noundef 5) #15, !dbg !4515
  %call1 = call ptr @css_freezer(ptr noundef %call) #15, !dbg !4516
  ret ptr %call1, !dbg !4517
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #4 align 16 !dbg !4518 {
entry:
  br label %do.body, !dbg !4519

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4520

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #15, !dbg !4522
  br label %do.body1, !dbg !4523

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4524

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4526
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @freezer_css_alloc(ptr noundef %parent_css) #0 align 16 !dbg !4527 {
entry:
  %retval = alloca ptr, align 8
  %parent_css.addr = alloca ptr, align 8
  %freezer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent_css, ptr %parent_css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent_css.addr, metadata !4529, metadata !DIExpression()), !dbg !4531
  call void @llvm.lifetime.start.p0(i64 8, ptr %freezer) #14, !dbg !4532
  call void @llvm.dbg.declare(metadata ptr %freezer, metadata !4530, metadata !DIExpression()), !dbg !4533
  %call = call noalias ptr @kzalloc(i64 noundef 208, i32 noundef 3264) #16, !dbg !4534
  store ptr %call, ptr %freezer, align 8, !dbg !4535
  %0 = load ptr, ptr %freezer, align 8, !dbg !4536
  %tobool = icmp ne ptr %0, null, !dbg !4536
  br i1 %tobool, label %if.end, label %if.then, !dbg !4538

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #15, !dbg !4539
  store ptr %call1, ptr %retval, align 8, !dbg !4540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4540

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %freezer, align 8, !dbg !4541
  %css = getelementptr inbounds %struct.freezer, ptr %1, i32 0, i32 0, !dbg !4542
  store ptr %css, ptr %retval, align 8, !dbg !4543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4543

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %freezer) #14, !dbg !4544
  %2 = load ptr, ptr %retval, align 8, !dbg !4544
  ret ptr %2, !dbg !4544
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @freezer_css_online(ptr noundef %css) #0 align 16 !dbg !4545 {
entry:
  %css.addr = alloca ptr, align 8
  %freezer = alloca ptr, align 8
  %parent = alloca ptr, align 8
  store ptr %css, ptr %css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %css.addr, metadata !4547, metadata !DIExpression()), !dbg !4550
  call void @llvm.lifetime.start.p0(i64 8, ptr %freezer) #14, !dbg !4551
  call void @llvm.dbg.declare(metadata ptr %freezer, metadata !4548, metadata !DIExpression()), !dbg !4552
  %0 = load ptr, ptr %css.addr, align 8, !dbg !4553
  %call = call ptr @css_freezer(ptr noundef %0) #15, !dbg !4554
  store ptr %call, ptr %freezer, align 8, !dbg !4552
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #14, !dbg !4555
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4549, metadata !DIExpression()), !dbg !4556
  %1 = load ptr, ptr %freezer, align 8, !dbg !4557
  %call1 = call ptr @parent_freezer(ptr noundef %1) #15, !dbg !4558
  store ptr %call1, ptr %parent, align 8, !dbg !4556
  call void @cpus_read_lock() #15, !dbg !4559
  call void @mutex_lock(ptr noundef @freezer_mutex) #15, !dbg !4560
  %2 = load ptr, ptr %freezer, align 8, !dbg !4561
  %state = getelementptr inbounds %struct.freezer, ptr %2, i32 0, i32 1, !dbg !4562
  %3 = load i32, ptr %state, align 8, !dbg !4563
  %or = or i32 %3, 1, !dbg !4563
  store i32 %or, ptr %state, align 8, !dbg !4563
  %4 = load ptr, ptr %parent, align 8, !dbg !4564
  %tobool = icmp ne ptr %4, null, !dbg !4564
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4566

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %parent, align 8, !dbg !4567
  %state2 = getelementptr inbounds %struct.freezer, ptr %5, i32 0, i32 1, !dbg !4568
  %6 = load i32, ptr %state2, align 8, !dbg !4568
  %and = and i32 %6, 6, !dbg !4569
  %tobool3 = icmp ne i32 %and, 0, !dbg !4569
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4570

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %freezer, align 8, !dbg !4571
  %state4 = getelementptr inbounds %struct.freezer, ptr %7, i32 0, i32 1, !dbg !4573
  %8 = load i32, ptr %state4, align 8, !dbg !4574
  %or5 = or i32 %8, 12, !dbg !4574
  store i32 %or5, ptr %state4, align 8, !dbg !4574
  %call6 = call zeroext i1 @static_key_slow_inc_cpuslocked(ptr noundef @freezer_active) #15, !dbg !4575
  br label %if.end, !dbg !4576

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @mutex_unlock(ptr noundef @freezer_mutex) #15, !dbg !4577
  call void @cpus_read_unlock() #15, !dbg !4578
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #14, !dbg !4579
  call void @llvm.lifetime.end.p0(i64 8, ptr %freezer) #14, !dbg !4579
  ret i32 0, !dbg !4580
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @freezer_css_offline(ptr noundef %css) #0 align 16 !dbg !4581 {
entry:
  %css.addr = alloca ptr, align 8
  %freezer = alloca ptr, align 8
  store ptr %css, ptr %css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %css.addr, metadata !4583, metadata !DIExpression()), !dbg !4585
  call void @llvm.lifetime.start.p0(i64 8, ptr %freezer) #14, !dbg !4586
  call void @llvm.dbg.declare(metadata ptr %freezer, metadata !4584, metadata !DIExpression()), !dbg !4587
  %0 = load ptr, ptr %css.addr, align 8, !dbg !4588
  %call = call ptr @css_freezer(ptr noundef %0) #15, !dbg !4589
  store ptr %call, ptr %freezer, align 8, !dbg !4587
  call void @cpus_read_lock() #15, !dbg !4590
  call void @mutex_lock(ptr noundef @freezer_mutex) #15, !dbg !4591
  %1 = load ptr, ptr %freezer, align 8, !dbg !4592
  %state = getelementptr inbounds %struct.freezer, ptr %1, i32 0, i32 1, !dbg !4594
  %2 = load i32, ptr %state, align 8, !dbg !4594
  %and = and i32 %2, 6, !dbg !4595
  %tobool = icmp ne i32 %and, 0, !dbg !4595
  br i1 %tobool, label %if.then, label %if.end, !dbg !4596

if.then:                                          ; preds = %entry
  call void @static_key_slow_dec_cpuslocked(ptr noundef @freezer_active) #15, !dbg !4597
  br label %if.end, !dbg !4597

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %freezer, align 8, !dbg !4598
  %state1 = getelementptr inbounds %struct.freezer, ptr %3, i32 0, i32 1, !dbg !4599
  store i32 0, ptr %state1, align 8, !dbg !4600
  call void @mutex_unlock(ptr noundef @freezer_mutex) #15, !dbg !4601
  call void @cpus_read_unlock() #15, !dbg !4602
  call void @llvm.lifetime.end.p0(i64 8, ptr %freezer) #14, !dbg !4603
  ret void, !dbg !4603
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @freezer_css_free(ptr noundef %css) #0 align 16 !dbg !4604 {
entry:
  %css.addr = alloca ptr, align 8
  store ptr %css, ptr %css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %css.addr, metadata !4606, metadata !DIExpression()), !dbg !4607
  %0 = load ptr, ptr %css.addr, align 8, !dbg !4608
  %call = call ptr @css_freezer(ptr noundef %0) #15, !dbg !4609
  call void @kfree(ptr noundef %call) #15, !dbg !4610
  ret void, !dbg !4611
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @freezer_attach(ptr noundef %tset) #0 align 16 !dbg !4612 {
entry:
  %tset.addr = alloca ptr, align 8
  %task = alloca ptr, align 8
  %new_css = alloca ptr, align 8
  %freezer = alloca ptr, align 8
  store ptr %tset, ptr %tset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tset.addr, metadata !4614, metadata !DIExpression()), !dbg !4621
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #14, !dbg !4622
  call void @llvm.dbg.declare(metadata ptr %task, metadata !4615, metadata !DIExpression()), !dbg !4623
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_css) #14, !dbg !4624
  call void @llvm.dbg.declare(metadata ptr %new_css, metadata !4616, metadata !DIExpression()), !dbg !4625
  call void @mutex_lock(ptr noundef @freezer_mutex) #15, !dbg !4626
  %0 = load ptr, ptr %tset.addr, align 8, !dbg !4627
  %call = call ptr @cgroup_taskset_first(ptr noundef %0, ptr noundef %new_css) #15, !dbg !4627
  store ptr %call, ptr %task, align 8, !dbg !4627
  br label %for.cond, !dbg !4627

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %task, align 8, !dbg !4628
  %tobool = icmp ne ptr %1, null, !dbg !4627
  br i1 %tobool, label %for.body, label %for.end, !dbg !4627

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %freezer) #14, !dbg !4629
  call void @llvm.dbg.declare(metadata ptr %freezer, metadata !4617, metadata !DIExpression()), !dbg !4630
  %2 = load ptr, ptr %new_css, align 8, !dbg !4631
  %call1 = call ptr @css_freezer(ptr noundef %2) #15, !dbg !4632
  store ptr %call1, ptr %freezer, align 8, !dbg !4630
  %3 = load ptr, ptr %freezer, align 8, !dbg !4633
  %state = getelementptr inbounds %struct.freezer, ptr %3, i32 0, i32 1, !dbg !4635
  %4 = load i32, ptr %state, align 8, !dbg !4635
  %and = and i32 %4, 6, !dbg !4636
  %tobool2 = icmp ne i32 %and, 0, !dbg !4636
  br i1 %tobool2, label %if.else, label %if.then, !dbg !4637

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %task, align 8, !dbg !4638
  call void @__thaw_task(ptr noundef %5) #15, !dbg !4640
  br label %if.end, !dbg !4641

if.else:                                          ; preds = %for.body
  %6 = load ptr, ptr %task, align 8, !dbg !4642
  %call3 = call zeroext i1 @freeze_task(ptr noundef %6) #15, !dbg !4644
  br label %while.cond, !dbg !4645

while.cond:                                       ; preds = %while.body, %if.else
  %7 = load ptr, ptr %freezer, align 8, !dbg !4646
  %tobool4 = icmp ne ptr %7, null, !dbg !4646
  br i1 %tobool4, label %land.rhs, label %land.end, !dbg !4647

land.rhs:                                         ; preds = %while.cond
  %8 = load ptr, ptr %freezer, align 8, !dbg !4648
  %state5 = getelementptr inbounds %struct.freezer, ptr %8, i32 0, i32 1, !dbg !4649
  %9 = load i32, ptr %state5, align 8, !dbg !4649
  %and6 = and i32 %9, 8, !dbg !4650
  %tobool7 = icmp ne i32 %and6, 0, !dbg !4647
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %tobool7, %land.rhs ], !dbg !4651
  br i1 %10, label %while.body, label %while.end, !dbg !4645

while.body:                                       ; preds = %land.end
  %11 = load ptr, ptr %freezer, align 8, !dbg !4652
  %state8 = getelementptr inbounds %struct.freezer, ptr %11, i32 0, i32 1, !dbg !4654
  %12 = load i32, ptr %state8, align 8, !dbg !4655
  %and9 = and i32 %12, -9, !dbg !4655
  store i32 %and9, ptr %state8, align 8, !dbg !4655
  %13 = load ptr, ptr %freezer, align 8, !dbg !4656
  %call10 = call ptr @parent_freezer(ptr noundef %13) #15, !dbg !4657
  store ptr %call10, ptr %freezer, align 8, !dbg !4658
  br label %while.cond, !dbg !4645, !llvm.loop !4659

while.end:                                        ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %freezer) #14, !dbg !4663
  br label %for.inc, !dbg !4664

for.inc:                                          ; preds = %if.end
  %14 = load ptr, ptr %tset.addr, align 8, !dbg !4628
  %call11 = call ptr @cgroup_taskset_next(ptr noundef %14, ptr noundef %new_css) #15, !dbg !4628
  store ptr %call11, ptr %task, align 8, !dbg !4628
  br label %for.cond, !dbg !4628, !llvm.loop !4665

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @freezer_mutex) #15, !dbg !4667
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_css) #14, !dbg !4668
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #14, !dbg !4668
  ret void, !dbg !4668
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @freezer_fork(ptr noundef %task) #0 align 16 !dbg !4669 {
entry:
  %task.addr = alloca ptr, align 8
  %freezer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4671, metadata !DIExpression()), !dbg !4673
  call void @llvm.lifetime.start.p0(i64 8, ptr %freezer) #14, !dbg !4674
  call void @llvm.dbg.declare(metadata ptr %freezer, metadata !4672, metadata !DIExpression()), !dbg !4675
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4676
  %call = call zeroext i1 @task_css_is_root(ptr noundef %0, i32 noundef 5) #15, !dbg !4678
  br i1 %call, label %if.then, label %if.end, !dbg !4679

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4680

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @freezer_mutex) #15, !dbg !4681
  call void @rcu_read_lock() #15, !dbg !4682
  %1 = load ptr, ptr %task.addr, align 8, !dbg !4683
  %call1 = call ptr @task_freezer(ptr noundef %1) #15, !dbg !4684
  store ptr %call1, ptr %freezer, align 8, !dbg !4685
  %2 = load ptr, ptr %freezer, align 8, !dbg !4686
  %state = getelementptr inbounds %struct.freezer, ptr %2, i32 0, i32 1, !dbg !4688
  %3 = load i32, ptr %state, align 8, !dbg !4688
  %and = and i32 %3, 6, !dbg !4689
  %tobool = icmp ne i32 %and, 0, !dbg !4689
  br i1 %tobool, label %if.then2, label %if.end4, !dbg !4690

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %task.addr, align 8, !dbg !4691
  %call3 = call zeroext i1 @freeze_task(ptr noundef %4) #15, !dbg !4692
  br label %if.end4, !dbg !4692

if.end4:                                          ; preds = %if.then2, %if.end
  call void @rcu_read_unlock() #15, !dbg !4693
  call void @mutex_unlock(ptr noundef @freezer_mutex) #15, !dbg !4694
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4695
  br label %cleanup, !dbg !4695

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %freezer) #14, !dbg !4695
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4695

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4696 dso_local void @__rcu_read_lock() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @css_freezer(ptr noundef %css) #4 align 16 !dbg !4697 {
entry:
  %css.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %css, ptr %css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %css.addr, metadata !4701, metadata !DIExpression()), !dbg !4704
  %0 = load ptr, ptr %css.addr, align 8, !dbg !4705
  %tobool = icmp ne ptr %0, null, !dbg !4705
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4705

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !4706
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4702, metadata !DIExpression()), !dbg !4706
  %1 = load ptr, ptr %css.addr, align 8, !dbg !4706
  store ptr %1, ptr %__mptr, align 8, !dbg !4706
  %2 = load ptr, ptr %__mptr, align 8, !dbg !4706
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !4706
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4706
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !4707
  %3 = load ptr, ptr %tmp, align 8, !dbg !4706
  br label %cond.end, !dbg !4705

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4705

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ null, %cond.false ], !dbg !4705
  ret ptr %cond, !dbg !4708
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_css(ptr noundef %task, i32 noundef %subsys_id) #4 align 16 !dbg !4709 {
entry:
  %task.addr = alloca ptr, align 8
  %subsys_id.addr = alloca i32, align 4
  %__UNIQUE_ID_rcu260 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4713, metadata !DIExpression()), !dbg !4717
  store i32 %subsys_id, ptr %subsys_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subsys_id.addr, metadata !4714, metadata !DIExpression()), !dbg !4718
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu260) #14, !dbg !4719
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu260, metadata !4715, metadata !DIExpression()), !dbg !4719
  br label %do.body, !dbg !4720

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4722

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4722

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4720
  %cgroups = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 143, !dbg !4720
  %1 = load volatile ptr, ptr %cgroups, align 8, !dbg !4720
  store ptr %1, ptr %tmp, align 8, !dbg !4722
  %2 = load ptr, ptr %tmp, align 8, !dbg !4720
  store ptr %2, ptr %__UNIQUE_ID_rcu260, align 8, !dbg !4719
  br label %do.body1, !dbg !4719

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !4724

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4724

do.end3:                                          ; preds = %do.cond2
  %3 = load ptr, ptr %__UNIQUE_ID_rcu260, align 8, !dbg !4719
  store ptr %3, ptr %tmp4, align 8, !dbg !4724
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu260) #14, !dbg !4726
  %4 = load ptr, ptr %tmp4, align 8, !dbg !4719
  %subsys = getelementptr inbounds %struct.css_set, ptr %4, i32 0, i32 0, !dbg !4726
  %5 = load i32, ptr %subsys_id.addr, align 4, !dbg !4726
  %idxprom = sext i32 %5 to i64, !dbg !4726
  %arrayidx = getelementptr [14 x ptr], ptr %subsys, i64 0, i64 %idxprom, !dbg !4726
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !4726
  ret ptr %6, !dbg !4727
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4728 dso_local void @__rcu_read_unlock() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !4729 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4733, metadata !DIExpression()), !dbg !4735
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4734, metadata !DIExpression()), !dbg !4736
  %0 = load i64, ptr %size.addr, align 8, !dbg !4737
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4738
  %or = or i32 %1, 256, !dbg !4739
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !4740
  ret ptr %call, !dbg !4741
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !4742 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4747, metadata !DIExpression()), !dbg !4748
  %0 = load i64, ptr %error.addr, align 8, !dbg !4749
  %1 = inttoptr i64 %0 to ptr, !dbg !4750
  ret ptr %1, !dbg !4751
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !4752 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4754, metadata !DIExpression()), !dbg !4759
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4755, metadata !DIExpression()), !dbg !4760
  %0 = load i64, ptr %size.addr, align 8, !dbg !4761
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4762
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4763

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4764
  %tobool = icmp ne i64 %2, 0, !dbg !4764
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4765

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !4766
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4756, metadata !DIExpression()), !dbg !4767
  %3 = load i64, ptr %size.addr, align 8, !dbg !4768
  %cmp = icmp ugt i64 %3, 8192, !dbg !4770
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4771

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4772
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4773
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !4774
  store ptr %call, ptr %retval, align 8, !dbg !4775
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4775

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4776
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !4776
  store i32 %call2, ptr %index, align 4, !dbg !4777
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4778
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4779
  %9 = ptrtoint ptr %8 to i64, !dbg !4779
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !4780
  %idxprom = zext i32 %call3 to i64, !dbg !4781
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4781
  %10 = load i32, ptr %index, align 4, !dbg !4782
  %idxprom4 = zext i32 %10 to i64, !dbg !4781
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4781
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4781
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4783
  %13 = load i64, ptr %size.addr, align 8, !dbg !4784
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !4785
  store ptr %call6, ptr %retval, align 8, !dbg !4786
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4786

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !4787
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4788
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4789
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !4790
  store ptr %call8, ptr %retval, align 8, !dbg !4791
  br label %return, !dbg !4791

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4792
  ret ptr %16, !dbg !4792
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4793 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #3 align 16 !dbg !4794 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4798, metadata !DIExpression()), !dbg !4800
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4799, metadata !DIExpression()), !dbg !4801
  %0 = load i64, ptr %size.addr, align 8, !dbg !4802
  %tobool = icmp ne i64 %0, 0, !dbg !4802
  br i1 %tobool, label %if.end, label %if.then, !dbg !4804

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4805
  br label %return, !dbg !4805

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4806
  %cmp = icmp ule i64 %1, 8, !dbg !4808
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4809

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4810
  br label %return, !dbg !4810

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4811
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4813
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4814

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4815
  %cmp4 = icmp ule i64 %3, 96, !dbg !4816
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4817

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4818
  br label %return, !dbg !4818

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4819
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4821
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4822

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4823
  %cmp9 = icmp ule i64 %5, 192, !dbg !4824
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4825

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4826
  br label %return, !dbg !4826

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4827
  %cmp12 = icmp ule i64 %6, 8, !dbg !4829
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4830

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4831
  br label %return, !dbg !4831

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4832
  %cmp15 = icmp ule i64 %7, 16, !dbg !4834
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4835

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4836
  br label %return, !dbg !4836

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4837
  %cmp18 = icmp ule i64 %8, 32, !dbg !4839
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4840

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4841
  br label %return, !dbg !4841

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4842
  %cmp21 = icmp ule i64 %9, 64, !dbg !4844
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4845

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4846
  br label %return, !dbg !4846

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4847
  %cmp24 = icmp ule i64 %10, 128, !dbg !4849
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4850

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4851
  br label %return, !dbg !4851

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4852
  %cmp27 = icmp ule i64 %11, 256, !dbg !4854
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4855

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4856
  br label %return, !dbg !4856

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4857
  %cmp30 = icmp ule i64 %12, 512, !dbg !4859
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4860

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4861
  br label %return, !dbg !4861

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4862
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4864
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4865

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4866
  br label %return, !dbg !4866

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4867
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4869
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4870

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4871
  br label %return, !dbg !4871

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4872
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4874
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4875

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4876
  br label %return, !dbg !4876

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4877
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4879
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4880

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4881
  br label %return, !dbg !4881

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4882
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4884
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4885

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4886
  br label %return, !dbg !4886

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4887
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4889
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4890

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4891
  br label %return, !dbg !4891

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4892
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4894
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4895

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4896
  br label %return, !dbg !4896

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4897
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4899
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4900

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4901
  br label %return, !dbg !4901

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4902
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4904
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4905

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4906
  br label %return, !dbg !4906

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4907
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4909
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4910

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4911
  br label %return, !dbg !4911

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4912
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4914
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4915

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4916
  br label %return, !dbg !4916

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4917
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4919
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4920

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4921
  br label %return, !dbg !4921

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4922, !range !4495, !noundef !1509
  %tobool69 = trunc i8 %25 to i1, !dbg !4922
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4924

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4925

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #18, !dbg !4926, !srcloc !4929
  unreachable, !dbg !4926

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4930

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4931

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4932

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4934

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4932

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #14, !dbg !4936, !srcloc !4938
  br label %do.end75, !dbg !4936

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4932

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4939
  br label %return, !dbg !4939

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4940
  ret i32 %26, !dbg !4940
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4941 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #3 align 16 !dbg !4946 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4950, metadata !DIExpression()), !dbg !4952
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4951, metadata !DIExpression()), !dbg !4953
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4954
  %and = and i32 %0, 17, !dbg !4954
  %cmp = icmp eq i32 %and, 0, !dbg !4954
  %lnot = xor i1 %cmp, true, !dbg !4954
  %lnot1 = xor i1 %lnot, true, !dbg !4954
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4954
  %conv = sext i32 %lnot.ext to i64, !dbg !4954
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4954
  %tobool = icmp ne i64 %expval, 0, !dbg !4954
  br i1 %tobool, label %if.then, label %if.end, !dbg !4956

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4957
  br label %return, !dbg !4957

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4958
  %and2 = and i32 %1, 1, !dbg !4960
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4960
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4961

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4962
  br label %return, !dbg !4962

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4963
  br label %return, !dbg !4963

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4965
  ret i32 %2, !dbg !4965
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4966 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4967 dso_local void @__compiletime_assert_117() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @parent_freezer(ptr noundef %freezer) #0 align 16 !dbg !4968 {
entry:
  %freezer.addr = alloca ptr, align 8
  store ptr %freezer, ptr %freezer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %freezer.addr, metadata !4972, metadata !DIExpression()), !dbg !4973
  %0 = load ptr, ptr %freezer.addr, align 8, !dbg !4974
  %css = getelementptr inbounds %struct.freezer, ptr %0, i32 0, i32 0, !dbg !4975
  %parent = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 12, !dbg !4976
  %1 = load ptr, ptr %parent, align 8, !dbg !4976
  %call = call ptr @css_freezer(ptr noundef %1) #15, !dbg !4977
  ret ptr %call, !dbg !4978
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4979 dso_local void @cpus_read_lock() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4981 dso_local void @mutex_lock(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4985 dso_local zeroext i1 @static_key_slow_inc_cpuslocked(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5000 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5001 dso_local void @cpus_read_unlock() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5002 dso_local void @static_key_slow_dec_cpuslocked(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5005 dso_local void @kfree(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5008 dso_local ptr @cgroup_taskset_first(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5012 dso_local void @__thaw_task(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5014 dso_local zeroext i1 @freeze_task(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5015 dso_local ptr @cgroup_taskset_next(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @task_css_is_root(ptr noundef %task, i32 noundef %subsys_id) #4 align 16 !dbg !5016 {
entry:
  %task.addr = alloca ptr, align 8
  %subsys_id.addr = alloca i32, align 4
  %__UNIQUE_ID_rcu262 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5020, metadata !DIExpression()), !dbg !5024
  store i32 %subsys_id, ptr %subsys_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subsys_id.addr, metadata !5021, metadata !DIExpression()), !dbg !5025
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu262) #14, !dbg !5026
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu262, metadata !5022, metadata !DIExpression()), !dbg !5026
  br label %do.body, !dbg !5027

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5029

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5029

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %task.addr, align 8, !dbg !5027
  %cgroups = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 143, !dbg !5027
  %1 = load volatile ptr, ptr %cgroups, align 8, !dbg !5027
  store ptr %1, ptr %tmp, align 8, !dbg !5029
  %2 = load ptr, ptr %tmp, align 8, !dbg !5027
  store ptr %2, ptr %__UNIQUE_ID_rcu262, align 8, !dbg !5026
  br label %do.body1, !dbg !5026

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !5031

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !5031

do.end3:                                          ; preds = %do.cond2
  %3 = load ptr, ptr %__UNIQUE_ID_rcu262, align 8, !dbg !5026
  store ptr %3, ptr %tmp4, align 8, !dbg !5031
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu262) #14, !dbg !5033
  %4 = load ptr, ptr %tmp4, align 8, !dbg !5026
  %subsys = getelementptr inbounds %struct.css_set, ptr %4, i32 0, i32 0, !dbg !5033
  %5 = load i32, ptr %subsys_id.addr, align 4, !dbg !5033
  %idxprom = sext i32 %5 to i64, !dbg !5033
  %arrayidx = getelementptr [14 x ptr], ptr %subsys, i64 0, i64 %idxprom, !dbg !5033
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !5033
  %7 = load i32, ptr %subsys_id.addr, align 4, !dbg !5034
  %idxprom5 = sext i32 %7 to i64, !dbg !5035
  %arrayidx6 = getelementptr [14 x ptr], ptr @init_css_set, i64 0, i64 %idxprom5, !dbg !5035
  %8 = load ptr, ptr %arrayidx6, align 8, !dbg !5035
  %cmp = icmp eq ptr %6, %8, !dbg !5036
  ret i1 %cmp, !dbg !5037
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @freezer_read(ptr noundef %m, ptr noundef %v) #0 align 16 !dbg !5038 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %css = alloca ptr, align 8
  %pos = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5040, metadata !DIExpression()), !dbg !5044
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5041, metadata !DIExpression()), !dbg !5045
  call void @llvm.lifetime.start.p0(i64 8, ptr %css) #14, !dbg !5046
  call void @llvm.dbg.declare(metadata ptr %css, metadata !5042, metadata !DIExpression()), !dbg !5047
  %0 = load ptr, ptr %m.addr, align 8, !dbg !5048
  %call = call ptr @seq_css(ptr noundef %0) #15, !dbg !5049
  store ptr %call, ptr %css, align 8, !dbg !5047
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #14, !dbg !5046
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5043, metadata !DIExpression()), !dbg !5050
  call void @mutex_lock(ptr noundef @freezer_mutex) #15, !dbg !5051
  call void @rcu_read_lock() #15, !dbg !5052
  %1 = load ptr, ptr %css, align 8, !dbg !5053
  %call1 = call ptr @css_next_descendant_post(ptr noundef null, ptr noundef %1) #15, !dbg !5053
  store ptr %call1, ptr %pos, align 8, !dbg !5053
  br label %for.cond, !dbg !5053

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %pos, align 8, !dbg !5055
  %tobool = icmp ne ptr %2, null, !dbg !5053
  br i1 %tobool, label %for.body, label %for.end, !dbg !5053

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pos, align 8, !dbg !5057
  %call2 = call zeroext i1 @css_tryget_online(ptr noundef %3) #15, !dbg !5060
  br i1 %call2, label %if.end, label %if.then, !dbg !5061

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5062

if.end:                                           ; preds = %for.body
  call void @rcu_read_unlock() #15, !dbg !5063
  %4 = load ptr, ptr %pos, align 8, !dbg !5064
  call void @update_if_frozen(ptr noundef %4) #15, !dbg !5065
  call void @rcu_read_lock() #15, !dbg !5066
  %5 = load ptr, ptr %pos, align 8, !dbg !5067
  call void @css_put(ptr noundef %5) #15, !dbg !5068
  br label %for.inc, !dbg !5069

for.inc:                                          ; preds = %if.end, %if.then
  %6 = load ptr, ptr %pos, align 8, !dbg !5055
  %7 = load ptr, ptr %css, align 8, !dbg !5055
  %call3 = call ptr @css_next_descendant_post(ptr noundef %6, ptr noundef %7) #15, !dbg !5055
  store ptr %call3, ptr %pos, align 8, !dbg !5055
  br label %for.cond, !dbg !5055, !llvm.loop !5070

for.end:                                          ; preds = %for.cond
  call void @rcu_read_unlock() #15, !dbg !5072
  call void @mutex_unlock(ptr noundef @freezer_mutex) #15, !dbg !5073
  %8 = load ptr, ptr %m.addr, align 8, !dbg !5074
  %9 = load ptr, ptr %css, align 8, !dbg !5075
  %call4 = call ptr @css_freezer(ptr noundef %9) #15, !dbg !5076
  %state = getelementptr inbounds %struct.freezer, ptr %call4, i32 0, i32 1, !dbg !5077
  %10 = load i32, ptr %state, align 8, !dbg !5077
  %call5 = call ptr @freezer_state_strs(i32 noundef %10) #15, !dbg !5078
  call void @seq_puts(ptr noundef %8, ptr noundef %call5) #15, !dbg !5079
  %11 = load ptr, ptr %m.addr, align 8, !dbg !5080
  call void @seq_putc(ptr noundef %11, i8 noundef zeroext 10) #15, !dbg !5081
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #14, !dbg !5082
  call void @llvm.lifetime.end.p0(i64 8, ptr %css) #14, !dbg !5082
  ret i32 0, !dbg !5083
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @freezer_write(ptr noundef %of, ptr noundef %buf, i64 noundef %nbytes, i64 noundef %off) #0 align 16 !dbg !5084 {
entry:
  %retval = alloca i64, align 8
  %of.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %nbytes.addr = alloca i64, align 8
  %off.addr = alloca i64, align 8
  %freeze = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %of, ptr %of.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %of.addr, metadata !5086, metadata !DIExpression()), !dbg !5091
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5087, metadata !DIExpression()), !dbg !5092
  store i64 %nbytes, ptr %nbytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbytes.addr, metadata !5088, metadata !DIExpression()), !dbg !5093
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5089, metadata !DIExpression()), !dbg !5094
  call void @llvm.lifetime.start.p0(i64 1, ptr %freeze) #14, !dbg !5095
  call void @llvm.dbg.declare(metadata ptr %freeze, metadata !5090, metadata !DIExpression()), !dbg !5096
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5097
  %call = call ptr @strstrip(ptr noundef %0) #15, !dbg !5098
  store ptr %call, ptr %buf.addr, align 8, !dbg !5099
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !5100
  %call1 = call ptr @freezer_state_strs(i32 noundef 0) #15, !dbg !5102
  %call2 = call i32 @strcmp(ptr noundef %1, ptr noundef %call1) #15, !dbg !5103
  %cmp = icmp eq i32 %call2, 0, !dbg !5104
  br i1 %cmp, label %if.then, label %if.else, !dbg !5105

if.then:                                          ; preds = %entry
  store i8 0, ptr %freeze, align 1, !dbg !5106
  br label %if.end8, !dbg !5107

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !5108
  %call3 = call ptr @freezer_state_strs(i32 noundef 8) #15, !dbg !5110
  %call4 = call i32 @strcmp(ptr noundef %2, ptr noundef %call3) #15, !dbg !5111
  %cmp5 = icmp eq i32 %call4, 0, !dbg !5112
  br i1 %cmp5, label %if.then6, label %if.else7, !dbg !5113

if.then6:                                         ; preds = %if.else
  store i8 1, ptr %freeze, align 1, !dbg !5114
  br label %if.end, !dbg !5115

if.else7:                                         ; preds = %if.else
  store i64 -22, ptr %retval, align 8, !dbg !5116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5116

if.end:                                           ; preds = %if.then6
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %3 = load ptr, ptr %of.addr, align 8, !dbg !5117
  %call9 = call ptr @of_css(ptr noundef %3) #15, !dbg !5118
  %call10 = call ptr @css_freezer(ptr noundef %call9) #15, !dbg !5119
  %4 = load i8, ptr %freeze, align 1, !dbg !5120, !range !4495, !noundef !1509
  %tobool = trunc i8 %4 to i1, !dbg !5120
  call void @freezer_change_state(ptr noundef %call10, i1 noundef zeroext %tobool) #15, !dbg !5121
  %5 = load i64, ptr %nbytes.addr, align 8, !dbg !5122
  store i64 %5, ptr %retval, align 8, !dbg !5123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5123

cleanup:                                          ; preds = %if.end8, %if.else7
  call void @llvm.lifetime.end.p0(i64 1, ptr %freeze) #14, !dbg !5124
  %6 = load i64, ptr %retval, align 8, !dbg !5124
  ret i64 %6, !dbg !5124
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @freezer_self_freezing_read(ptr noundef %css, ptr noundef %cft) #0 align 16 !dbg !5125 {
entry:
  %css.addr = alloca ptr, align 8
  %cft.addr = alloca ptr, align 8
  %freezer = alloca ptr, align 8
  store ptr %css, ptr %css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %css.addr, metadata !5127, metadata !DIExpression()), !dbg !5130
  store ptr %cft, ptr %cft.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cft.addr, metadata !5128, metadata !DIExpression()), !dbg !5131
  call void @llvm.lifetime.start.p0(i64 8, ptr %freezer) #14, !dbg !5132
  call void @llvm.dbg.declare(metadata ptr %freezer, metadata !5129, metadata !DIExpression()), !dbg !5133
  %0 = load ptr, ptr %css.addr, align 8, !dbg !5134
  %call = call ptr @css_freezer(ptr noundef %0) #15, !dbg !5135
  store ptr %call, ptr %freezer, align 8, !dbg !5133
  %1 = load ptr, ptr %freezer, align 8, !dbg !5136
  %state = getelementptr inbounds %struct.freezer, ptr %1, i32 0, i32 1, !dbg !5137
  %2 = load i32, ptr %state, align 8, !dbg !5137
  %and = and i32 %2, 2, !dbg !5138
  %tobool = icmp ne i32 %and, 0, !dbg !5139
  %conv = zext i1 %tobool to i64, !dbg !5139
  call void @llvm.lifetime.end.p0(i64 8, ptr %freezer) #14, !dbg !5140
  ret i64 %conv, !dbg !5141
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @freezer_parent_freezing_read(ptr noundef %css, ptr noundef %cft) #0 align 16 !dbg !5142 {
entry:
  %css.addr = alloca ptr, align 8
  %cft.addr = alloca ptr, align 8
  %freezer = alloca ptr, align 8
  store ptr %css, ptr %css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %css.addr, metadata !5144, metadata !DIExpression()), !dbg !5147
  store ptr %cft, ptr %cft.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cft.addr, metadata !5145, metadata !DIExpression()), !dbg !5148
  call void @llvm.lifetime.start.p0(i64 8, ptr %freezer) #14, !dbg !5149
  call void @llvm.dbg.declare(metadata ptr %freezer, metadata !5146, metadata !DIExpression()), !dbg !5150
  %0 = load ptr, ptr %css.addr, align 8, !dbg !5151
  %call = call ptr @css_freezer(ptr noundef %0) #15, !dbg !5152
  store ptr %call, ptr %freezer, align 8, !dbg !5150
  %1 = load ptr, ptr %freezer, align 8, !dbg !5153
  %state = getelementptr inbounds %struct.freezer, ptr %1, i32 0, i32 1, !dbg !5154
  %2 = load i32, ptr %state, align 8, !dbg !5154
  %and = and i32 %2, 4, !dbg !5155
  %tobool = icmp ne i32 %and, 0, !dbg !5156
  %conv = zext i1 %tobool to i64, !dbg !5156
  call void @llvm.lifetime.end.p0(i64 8, ptr %freezer) #14, !dbg !5157
  ret i64 %conv, !dbg !5158
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @seq_css(ptr noundef %seq) #4 align 16 !dbg !5159 {
entry:
  %seq.addr = alloca ptr, align 8
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !5163, metadata !DIExpression()), !dbg !5164
  %0 = load ptr, ptr %seq.addr, align 8, !dbg !5165
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !5166
  %1 = load ptr, ptr %private, align 8, !dbg !5166
  %call = call ptr @of_css(ptr noundef %1) #15, !dbg !5167
  ret ptr %call, !dbg !5168
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5169 dso_local ptr @css_next_descendant_post(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @css_tryget_online(ptr noundef %css) #4 align 16 !dbg !5172 {
entry:
  %retval = alloca i1, align 1
  %css.addr = alloca ptr, align 8
  store ptr %css, ptr %css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %css.addr, metadata !5177, metadata !DIExpression()), !dbg !5178
  %0 = load ptr, ptr %css.addr, align 8, !dbg !5179
  %flags = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 7, !dbg !5181
  %1 = load i32, ptr %flags, align 4, !dbg !5181
  %and = and i32 %1, 1, !dbg !5182
  %tobool = icmp ne i32 %and, 0, !dbg !5182
  br i1 %tobool, label %if.end, label %if.then, !dbg !5183

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %css.addr, align 8, !dbg !5184
  %refcnt = getelementptr inbounds %struct.cgroup_subsys_state, ptr %2, i32 0, i32 2, !dbg !5185
  %call = call zeroext i1 @percpu_ref_tryget_live(ptr noundef %refcnt) #15, !dbg !5186
  store i1 %call, ptr %retval, align 1, !dbg !5187
  br label %return, !dbg !5187

if.end:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5188
  br label %return, !dbg !5188

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, ptr %retval, align 1, !dbg !5189
  ret i1 %3, !dbg !5189
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @update_if_frozen(ptr noundef %css) #0 align 16 !dbg !5190 {
entry:
  %css.addr = alloca ptr, align 8
  %freezer = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %it = alloca %struct.css_task_iter, align 8
  %task = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %child = alloca ptr, align 8
  store ptr %css, ptr %css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %css.addr, metadata !5192, metadata !DIExpression()), !dbg !5216
  call void @llvm.lifetime.start.p0(i64 8, ptr %freezer) #14, !dbg !5217
  call void @llvm.dbg.declare(metadata ptr %freezer, metadata !5193, metadata !DIExpression()), !dbg !5218
  %0 = load ptr, ptr %css.addr, align 8, !dbg !5219
  %call = call ptr @css_freezer(ptr noundef %0) #15, !dbg !5220
  store ptr %call, ptr %freezer, align 8, !dbg !5218
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #14, !dbg !5221
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5194, metadata !DIExpression()), !dbg !5222
  call void @llvm.lifetime.start.p0(i64 104, ptr %it) #14, !dbg !5223
  call void @llvm.dbg.declare(metadata ptr %it, metadata !5195, metadata !DIExpression()), !dbg !5224
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #14, !dbg !5225
  call void @llvm.dbg.declare(metadata ptr %task, metadata !5210, metadata !DIExpression()), !dbg !5226
  br label %do.body, !dbg !5227

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5228

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5228

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %freezer, align 8, !dbg !5230
  %state = getelementptr inbounds %struct.freezer, ptr %1, i32 0, i32 1, !dbg !5232
  %2 = load i32, ptr %state, align 8, !dbg !5232
  %and = and i32 %2, 6, !dbg !5233
  %tobool = icmp ne i32 %and, 0, !dbg !5233
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5234

lor.lhs.false:                                    ; preds = %do.end
  %3 = load ptr, ptr %freezer, align 8, !dbg !5235
  %state1 = getelementptr inbounds %struct.freezer, ptr %3, i32 0, i32 1, !dbg !5236
  %4 = load i32, ptr %state1, align 8, !dbg !5236
  %and2 = and i32 %4, 8, !dbg !5237
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5237
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5238

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24, !dbg !5239

if.end:                                           ; preds = %lor.lhs.false
  call void @rcu_read_lock() #15, !dbg !5240
  %5 = load ptr, ptr %css.addr, align 8, !dbg !5241
  %call4 = call ptr @css_next_child(ptr noundef null, ptr noundef %5) #15, !dbg !5241
  store ptr %call4, ptr %pos, align 8, !dbg !5241
  br label %for.cond, !dbg !5241

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load ptr, ptr %pos, align 8, !dbg !5242
  %tobool5 = icmp ne ptr %6, null, !dbg !5241
  br i1 %tobool5, label %for.body, label %for.end, !dbg !5241

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #14, !dbg !5243
  call void @llvm.dbg.declare(metadata ptr %child, metadata !5211, metadata !DIExpression()), !dbg !5244
  %7 = load ptr, ptr %pos, align 8, !dbg !5245
  %call6 = call ptr @css_freezer(ptr noundef %7) #15, !dbg !5246
  store ptr %call6, ptr %child, align 8, !dbg !5244
  %8 = load ptr, ptr %child, align 8, !dbg !5247
  %state7 = getelementptr inbounds %struct.freezer, ptr %8, i32 0, i32 1, !dbg !5249
  %9 = load i32, ptr %state7, align 8, !dbg !5249
  %and8 = and i32 %9, 1, !dbg !5250
  %tobool9 = icmp ne i32 %and8, 0, !dbg !5250
  br i1 %tobool9, label %land.lhs.true, label %if.end14, !dbg !5251

land.lhs.true:                                    ; preds = %for.body
  %10 = load ptr, ptr %child, align 8, !dbg !5252
  %state10 = getelementptr inbounds %struct.freezer, ptr %10, i32 0, i32 1, !dbg !5253
  %11 = load i32, ptr %state10, align 8, !dbg !5253
  %and11 = and i32 %11, 8, !dbg !5254
  %tobool12 = icmp ne i32 %and11, 0, !dbg !5254
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !5255

if.then13:                                        ; preds = %land.lhs.true
  call void @rcu_read_unlock() #15, !dbg !5256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5258

if.end14:                                         ; preds = %land.lhs.true, %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5259
  br label %cleanup, !dbg !5259

cleanup:                                          ; preds = %if.end14, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #14, !dbg !5259
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup24 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5260

for.inc:                                          ; preds = %cleanup.cont
  %12 = load ptr, ptr %pos, align 8, !dbg !5242
  %13 = load ptr, ptr %css.addr, align 8, !dbg !5242
  %call15 = call ptr @css_next_child(ptr noundef %12, ptr noundef %13) #15, !dbg !5242
  store ptr %call15, ptr %pos, align 8, !dbg !5242
  br label %for.cond, !dbg !5242, !llvm.loop !5261

for.end:                                          ; preds = %for.cond
  call void @rcu_read_unlock() #15, !dbg !5263
  %14 = load ptr, ptr %css.addr, align 8, !dbg !5264
  call void @css_task_iter_start(ptr noundef %14, i32 noundef 0, ptr noundef %it) #15, !dbg !5265
  br label %while.cond, !dbg !5266

while.cond:                                       ; preds = %if.end22, %for.end
  %call16 = call ptr @css_task_iter_next(ptr noundef %it) #15, !dbg !5267
  store ptr %call16, ptr %task, align 8, !dbg !5268
  %tobool17 = icmp ne ptr %call16, null, !dbg !5266
  br i1 %tobool17, label %while.body, label %while.end, !dbg !5266

while.body:                                       ; preds = %while.cond
  %15 = load ptr, ptr %task, align 8, !dbg !5269
  %call18 = call zeroext i1 @freezing(ptr noundef %15) #15, !dbg !5272
  br i1 %call18, label %land.lhs.true19, label %if.end22, !dbg !5273

land.lhs.true19:                                  ; preds = %while.body
  %16 = load ptr, ptr %task, align 8, !dbg !5274
  %call20 = call zeroext i1 @frozen(ptr noundef %16) #15, !dbg !5275
  br i1 %call20, label %if.end22, label %if.then21, !dbg !5276

if.then21:                                        ; preds = %land.lhs.true19
  br label %out_iter_end, !dbg !5277

if.end22:                                         ; preds = %land.lhs.true19, %while.body
  br label %while.cond, !dbg !5266, !llvm.loop !5278

while.end:                                        ; preds = %while.cond
  %17 = load ptr, ptr %freezer, align 8, !dbg !5280
  %state23 = getelementptr inbounds %struct.freezer, ptr %17, i32 0, i32 1, !dbg !5281
  %18 = load i32, ptr %state23, align 8, !dbg !5282
  %or = or i32 %18, 8, !dbg !5282
  store i32 %or, ptr %state23, align 8, !dbg !5282
  br label %out_iter_end, !dbg !5280

out_iter_end:                                     ; preds = %while.end, %if.then21
  call void @llvm.dbg.label(metadata !5215), !dbg !5283
  call void @css_task_iter_end(ptr noundef %it) #15, !dbg !5284
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5285
  br label %cleanup24, !dbg !5285

cleanup24:                                        ; preds = %out_iter_end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #14, !dbg !5285
  call void @llvm.lifetime.end.p0(i64 104, ptr %it) #14, !dbg !5285
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #14, !dbg !5285
  call void @llvm.lifetime.end.p0(i64 8, ptr %freezer) #14, !dbg !5285
  %cleanup.dest28 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest28, label %unreachable [
    i32 0, label %cleanup.cont29
    i32 1, label %cleanup.cont29
  ]

cleanup.cont29:                                   ; preds = %cleanup24, %cleanup24
  ret void, !dbg !5285

unreachable:                                      ; preds = %cleanup24
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @css_put(ptr noundef %css) #4 align 16 !dbg !5286 {
entry:
  %css.addr = alloca ptr, align 8
  store ptr %css, ptr %css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %css.addr, metadata !5288, metadata !DIExpression()), !dbg !5289
  %0 = load ptr, ptr %css.addr, align 8, !dbg !5290
  %flags = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 7, !dbg !5292
  %1 = load i32, ptr %flags, align 4, !dbg !5292
  %and = and i32 %1, 1, !dbg !5293
  %tobool = icmp ne i32 %and, 0, !dbg !5293
  br i1 %tobool, label %if.end, label %if.then, !dbg !5294

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %css.addr, align 8, !dbg !5295
  %refcnt = getelementptr inbounds %struct.cgroup_subsys_state, ptr %2, i32 0, i32 2, !dbg !5296
  call void @percpu_ref_put(ptr noundef %refcnt) #15, !dbg !5297
  br label %if.end, !dbg !5297

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5298
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5299 dso_local void @seq_puts(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @freezer_state_strs(i32 noundef %state) #0 align 16 !dbg !5302 {
entry:
  %retval = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5306, metadata !DIExpression()), !dbg !5307
  %0 = load i32, ptr %state.addr, align 4, !dbg !5308
  %and = and i32 %0, 8, !dbg !5310
  %tobool = icmp ne i32 %and, 0, !dbg !5310
  br i1 %tobool, label %if.then, label %if.end, !dbg !5311

if.then:                                          ; preds = %entry
  store ptr @.str.2, ptr %retval, align 8, !dbg !5312
  br label %return, !dbg !5312

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %state.addr, align 4, !dbg !5313
  %and1 = and i32 %1, 6, !dbg !5315
  %tobool2 = icmp ne i32 %and1, 0, !dbg !5315
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5316

if.then3:                                         ; preds = %if.end
  store ptr @.str.3, ptr %retval, align 8, !dbg !5317
  br label %return, !dbg !5317

if.end4:                                          ; preds = %if.end
  store ptr @.str.4, ptr %retval, align 8, !dbg !5318
  br label %return, !dbg !5318

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %2 = load ptr, ptr %retval, align 8, !dbg !5319
  ret ptr %2, !dbg !5319
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5320 dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5323 dso_local ptr @of_css(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @percpu_ref_tryget_live(ptr noundef %ref) #4 align 16 !dbg !5326 {
entry:
  %ref.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !5330, metadata !DIExpression()), !dbg !5332
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #14, !dbg !5333
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5331, metadata !DIExpression()), !dbg !5334
  store i8 0, ptr %ret, align 1, !dbg !5334
  call void @rcu_read_lock() #15, !dbg !5335
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !5336
  %call = call zeroext i1 @percpu_ref_tryget_live_rcu(ptr noundef %0) #15, !dbg !5337
  %frombool = zext i1 %call to i8, !dbg !5338
  store i8 %frombool, ptr %ret, align 1, !dbg !5338
  call void @rcu_read_unlock() #15, !dbg !5339
  %1 = load i8, ptr %ret, align 1, !dbg !5340, !range !4495, !noundef !1509
  %tobool = trunc i8 %1 to i1, !dbg !5340
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #14, !dbg !5341
  ret i1 %tobool, !dbg !5342
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @percpu_ref_tryget_live_rcu(ptr noundef %ref) #4 align 16 !dbg !5343 {
entry:
  %ref.addr = alloca ptr, align 8
  %percpu_count = alloca ptr, align 8
  %ret = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %pao_ID__ = alloca i32, align 4
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !5345, metadata !DIExpression()), !dbg !5360
  call void @llvm.lifetime.start.p0(i64 8, ptr %percpu_count) #14, !dbg !5361
  call void @llvm.dbg.declare(metadata ptr %percpu_count, metadata !5346, metadata !DIExpression()), !dbg !5362
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #14, !dbg !5363
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5347, metadata !DIExpression()), !dbg !5364
  store i8 0, ptr %ret, align 1, !dbg !5364
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5365
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5348, metadata !DIExpression()), !dbg !5365
  %call = call i32 @rcu_read_lock_held() #15, !dbg !5365
  %tobool = icmp ne i32 %call, 0, !dbg !5365
  %lnot = xor i1 %tobool, true, !dbg !5365
  %lnot1 = xor i1 %lnot, true, !dbg !5365
  %lnot2 = xor i1 %lnot1, true, !dbg !5365
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5365
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5365
  %0 = load i32, ptr %__ret_warn_on, align 4, !dbg !5366
  %tobool3 = icmp ne i32 %0, 0, !dbg !5366
  %lnot4 = xor i1 %tobool3, true, !dbg !5366
  %lnot6 = xor i1 %lnot4, true, !dbg !5366
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5366
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5366
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5366
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5366
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5365

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5366

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !5367
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5350, metadata !DIExpression()), !dbg !5367
  store i32 2307, ptr %__flags, align 4, !dbg !5367
  br label %do.body9, !dbg !5367

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5368

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5368

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5367

do.body10:                                        ; preds = %do.end
  %1 = load i32, ptr %__flags, align 4, !dbg !5370
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 280, i32 %1, i64 12) #14, !dbg !5370, !srcloc !5372
  br label %do.cond11, !dbg !5370

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5370

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5367

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5373

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5373

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !5366
  br label %do.cond16, !dbg !5367

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5367

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5367

if.end:                                           ; preds = %do.end17, %entry
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5365
  %tobool18 = icmp ne i32 %2, 0, !dbg !5365
  %lnot19 = xor i1 %tobool18, true, !dbg !5365
  %lnot21 = xor i1 %lnot19, true, !dbg !5365
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5365
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5365
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5365
  store i64 %expval24, ptr %tmp, align 8, !dbg !5366
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5375
  %3 = load i64, ptr %tmp, align 8, !dbg !5365
  %4 = load ptr, ptr %ref.addr, align 8, !dbg !5376
  %call25 = call zeroext i1 @__ref_is_percpu(ptr noundef %4, ptr noundef %percpu_count) #15, !dbg !5376
  %lnot26 = xor i1 %call25, true, !dbg !5376
  %lnot28 = xor i1 %lnot26, true, !dbg !5376
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !5376
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !5376
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 1), !dbg !5376
  %tobool32 = icmp ne i64 %expval31, 0, !dbg !5376
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !5377

if.then33:                                        ; preds = %if.end
  br label %do.body34, !dbg !5378

do.body34:                                        ; preds = %if.then33
  br label %do.body35, !dbg !5379

do.body35:                                        ; preds = %do.body34
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5380
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5353, metadata !DIExpression()), !dbg !5380
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5380
  %5 = load ptr, ptr %__vpp_verify, align 8, !dbg !5380
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5379
  br label %do.cond36, !dbg !5380

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !5380

do.end37:                                         ; preds = %do.cond36
  br label %do.body38, !dbg !5379

do.body38:                                        ; preds = %do.end37
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #14, !dbg !5381
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !5358, metadata !DIExpression()), !dbg !5381
  store i32 1, ptr %pao_ID__, align 4, !dbg !5381
  %6 = load ptr, ptr %percpu_count, align 8, !dbg !5382
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %6, ptr elementtype(i64) %6) #14, !dbg !5382, !srcloc !5385
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #14, !dbg !5379
  br label %do.cond39, !dbg !5381

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5381

do.end40:                                         ; preds = %do.cond39
  br label %do.cond41, !dbg !5379

do.cond41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !5379

do.end42:                                         ; preds = %do.cond41
  store i8 1, ptr %ret, align 1, !dbg !5386
  br label %if.end47, !dbg !5387

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %ref.addr, align 8, !dbg !5388
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, ptr %7, i32 0, i32 0, !dbg !5390
  %8 = load i64, ptr %percpu_count_ptr, align 8, !dbg !5390
  %and = and i64 %8, 2, !dbg !5391
  %tobool43 = icmp ne i64 %and, 0, !dbg !5391
  br i1 %tobool43, label %if.end46, label %if.then44, !dbg !5392

if.then44:                                        ; preds = %if.else
  %9 = load ptr, ptr %ref.addr, align 8, !dbg !5393
  %data = getelementptr inbounds %struct.percpu_ref, ptr %9, i32 0, i32 1, !dbg !5395
  %10 = load ptr, ptr %data, align 8, !dbg !5395
  %count = getelementptr inbounds %struct.percpu_ref_data, ptr %10, i32 0, i32 0, !dbg !5396
  %call45 = call zeroext i1 @atomic_long_inc_not_zero(ptr noundef %count) #15, !dbg !5397
  %frombool = zext i1 %call45 to i8, !dbg !5398
  store i8 %frombool, ptr %ret, align 1, !dbg !5398
  br label %if.end46, !dbg !5399

if.end46:                                         ; preds = %if.then44, %if.else
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %do.end42
  %11 = load i8, ptr %ret, align 1, !dbg !5400, !range !4495, !noundef !1509
  %tobool48 = trunc i8 %11 to i1, !dbg !5400
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #14, !dbg !5401
  call void @llvm.lifetime.end.p0(i64 8, ptr %percpu_count) #14, !dbg !5401
  ret i1 %tobool48, !dbg !5402
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rcu_read_lock_held() #4 align 16 !dbg !5403 {
entry:
  ret i32 1, !dbg !5404
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__ref_is_percpu(ptr noundef %ref, ptr noundef %percpu_countp) #4 align 16 !dbg !5405 {
entry:
  %retval = alloca i1, align 1
  %ref.addr = alloca ptr, align 8
  %percpu_countp.addr = alloca ptr, align 8
  %percpu_ptr = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !5410, metadata !DIExpression()), !dbg !5413
  store ptr %percpu_countp, ptr %percpu_countp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %percpu_countp.addr, metadata !5411, metadata !DIExpression()), !dbg !5414
  call void @llvm.lifetime.start.p0(i64 8, ptr %percpu_ptr) #14, !dbg !5415
  call void @llvm.dbg.declare(metadata ptr %percpu_ptr, metadata !5412, metadata !DIExpression()), !dbg !5416
  br label %do.body, !dbg !5417

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5419

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5419

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !5417
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, ptr %0, i32 0, i32 0, !dbg !5417
  %1 = load volatile i64, ptr %percpu_count_ptr, align 8, !dbg !5417
  store i64 %1, ptr %tmp, align 8, !dbg !5419
  %2 = load i64, ptr %tmp, align 8, !dbg !5417
  store i64 %2, ptr %percpu_ptr, align 8, !dbg !5421
  %3 = load i64, ptr %percpu_ptr, align 8, !dbg !5422
  %and = and i64 %3, 3, !dbg !5422
  %tobool = icmp ne i64 %and, 0, !dbg !5422
  %lnot = xor i1 %tobool, true, !dbg !5422
  %lnot1 = xor i1 %lnot, true, !dbg !5422
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5422
  %conv = sext i32 %lnot.ext to i64, !dbg !5422
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5422
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5422
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5424

if.then:                                          ; preds = %do.end
  store i1 false, ptr %retval, align 1, !dbg !5425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5425

if.end:                                           ; preds = %do.end
  %4 = load i64, ptr %percpu_ptr, align 8, !dbg !5426
  %5 = inttoptr i64 %4 to ptr, !dbg !5427
  %6 = load ptr, ptr %percpu_countp.addr, align 8, !dbg !5428
  store ptr %5, ptr %6, align 8, !dbg !5429
  store i1 true, ptr %retval, align 1, !dbg !5430
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5430

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %percpu_ptr) #14, !dbg !5431
  %7 = load i1, ptr %retval, align 1, !dbg !5431
  ret i1 %7, !dbg !5431
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_long_inc_not_zero(ptr noundef %v) #3 align 16 !dbg !5432 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5437, metadata !DIExpression()), !dbg !5438
  br label %do.body, !dbg !5439

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5440

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5442
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #15, !dbg !5443
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5444
  %call = call zeroext i1 @raw_atomic_long_inc_not_zero(ptr noundef %1) #15, !dbg !5445
  ret i1 %call, !dbg !5446
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !5447 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5455, metadata !DIExpression()), !dbg !5457
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5456, metadata !DIExpression()), !dbg !5458
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5459
  %1 = load i64, ptr %size.addr, align 8, !dbg !5460
  %conv = trunc i64 %1 to i32, !dbg !5460
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !5461
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5462
  %3 = load i64, ptr %size.addr, align 8, !dbg !5462
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #15, !dbg !5462
  ret void, !dbg !5463
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_long_inc_not_zero(ptr noundef %v) #3 align 16 !dbg !5464 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5466, metadata !DIExpression()), !dbg !5467
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5468
  %call = call zeroext i1 @raw_atomic64_inc_not_zero(ptr noundef %0) #15, !dbg !5469
  ret i1 %call, !dbg !5470
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !5471 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5476, metadata !DIExpression()), !dbg !5478
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5477, metadata !DIExpression()), !dbg !5479
  ret i1 true, !dbg !5480
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !5481 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5486, metadata !DIExpression()), !dbg !5489
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5487, metadata !DIExpression()), !dbg !5490
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5488, metadata !DIExpression()), !dbg !5491
  ret void, !dbg !5492
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_inc_not_zero(ptr noundef %v) #3 align 16 !dbg !5493 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5499, metadata !DIExpression()), !dbg !5500
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5501
  %call = call zeroext i1 @raw_atomic64_add_unless(ptr noundef %0, i64 noundef 1, i64 noundef 0) #15, !dbg !5502
  ret i1 %call, !dbg !5503
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_add_unless(ptr noundef %v, i64 noundef %a, i64 noundef %u) #3 align 16 !dbg !5504 {
entry:
  %v.addr = alloca ptr, align 8
  %a.addr = alloca i64, align 8
  %u.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5508, metadata !DIExpression()), !dbg !5511
  store i64 %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !5509, metadata !DIExpression()), !dbg !5512
  store i64 %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !5510, metadata !DIExpression()), !dbg !5513
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5514
  %1 = load i64, ptr %a.addr, align 8, !dbg !5515
  %2 = load i64, ptr %u.addr, align 8, !dbg !5516
  %call = call i64 @raw_atomic64_fetch_add_unless(ptr noundef %0, i64 noundef %1, i64 noundef %2) #15, !dbg !5517
  %3 = load i64, ptr %u.addr, align 8, !dbg !5518
  %cmp = icmp ne i64 %call, %3, !dbg !5519
  ret i1 %cmp, !dbg !5520
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_fetch_add_unless(ptr noundef %v, i64 noundef %a, i64 noundef %u) #3 align 16 !dbg !5521 {
entry:
  %v.addr = alloca ptr, align 8
  %a.addr = alloca i64, align 8
  %u.addr = alloca i64, align 8
  %c = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5525, metadata !DIExpression()), !dbg !5529
  store i64 %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !5526, metadata !DIExpression()), !dbg !5530
  store i64 %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !5527, metadata !DIExpression()), !dbg !5531
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #14, !dbg !5532
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5528, metadata !DIExpression()), !dbg !5533
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5534
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #15, !dbg !5535
  store i64 %call, ptr %c, align 8, !dbg !5533
  br label %do.body, !dbg !5536

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i64, ptr %c, align 8, !dbg !5537
  %2 = load i64, ptr %u.addr, align 8, !dbg !5537
  %cmp = icmp eq i64 %1, %2, !dbg !5537
  %lnot = xor i1 %cmp, true, !dbg !5537
  %lnot1 = xor i1 %lnot, true, !dbg !5537
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5537
  %conv = sext i32 %lnot.ext to i64, !dbg !5537
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5537
  %tobool = icmp ne i64 %expval, 0, !dbg !5537
  br i1 %tobool, label %if.then, label %if.end, !dbg !5540

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !5541

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !5542

do.cond:                                          ; preds = %if.end
  %3 = load ptr, ptr %v.addr, align 8, !dbg !5543
  %4 = load i64, ptr %c, align 8, !dbg !5544
  %5 = load i64, ptr %a.addr, align 8, !dbg !5545
  %add = add i64 %4, %5, !dbg !5546
  %call2 = call zeroext i1 @raw_atomic64_try_cmpxchg(ptr noundef %3, ptr noundef %c, i64 noundef %add) #15, !dbg !5547
  %lnot3 = xor i1 %call2, true, !dbg !5548
  br i1 %lnot3, label %do.body, label %do.end, !dbg !5542, !llvm.loop !5549

do.end:                                           ; preds = %do.cond, %if.then
  %6 = load i64, ptr %c, align 8, !dbg !5551
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #14, !dbg !5552
  ret i64 %6, !dbg !5553
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #3 align 16 !dbg !5554 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5560, metadata !DIExpression()), !dbg !5561
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5562
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #15, !dbg !5563
  ret i64 %call, !dbg !5564
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_try_cmpxchg(ptr noundef %v, ptr noundef %old, i64 noundef %new) #3 align 16 !dbg !5565 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5569, metadata !DIExpression()), !dbg !5572
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !5570, metadata !DIExpression()), !dbg !5573
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5571, metadata !DIExpression()), !dbg !5574
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5575
  %1 = load ptr, ptr %old.addr, align 8, !dbg !5576
  %2 = load i64, ptr %new.addr, align 8, !dbg !5577
  %call = call zeroext i1 @arch_atomic64_try_cmpxchg(ptr noundef %0, ptr noundef %1, i64 noundef %2) #15, !dbg !5578
  ret i1 %call, !dbg !5579
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #3 align 16 !dbg !5580 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5583, metadata !DIExpression()), !dbg !5584
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5585
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !5585
  %1 = load volatile i64, ptr %counter, align 8, !dbg !5585
  ret i64 %1, !dbg !5586
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic64_try_cmpxchg(ptr noundef %v, ptr noundef %old, i64 noundef %new) #3 align 16 !dbg !5587 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5589, metadata !DIExpression()), !dbg !5598
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !5590, metadata !DIExpression()), !dbg !5599
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5591, metadata !DIExpression()), !dbg !5600
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #14, !dbg !5601
  call void @llvm.dbg.declare(metadata ptr %success, metadata !5592, metadata !DIExpression()), !dbg !5601
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #14, !dbg !5601
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !5594, metadata !DIExpression()), !dbg !5601
  %0 = load ptr, ptr %old.addr, align 8, !dbg !5601
  store ptr %0, ptr %_old, align 8, !dbg !5601
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #14, !dbg !5601
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !5595, metadata !DIExpression()), !dbg !5601
  %1 = load ptr, ptr %_old, align 8, !dbg !5601
  %2 = load i64, ptr %1, align 8, !dbg !5601
  store i64 %2, ptr %__old, align 8, !dbg !5601
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #14, !dbg !5601
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !5596, metadata !DIExpression()), !dbg !5601
  %3 = load i64, ptr %new.addr, align 8, !dbg !5601
  store i64 %3, ptr %__new, align 8, !dbg !5601
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !5601
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5597, metadata !DIExpression()), !dbg !5601
  %4 = load ptr, ptr %v.addr, align 8, !dbg !5601
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %4, i32 0, i32 0, !dbg !5601
  store ptr %counter, ptr %__ptr, align 8, !dbg !5601
  %5 = load ptr, ptr %__ptr, align 8, !dbg !5601
  %6 = load i64, ptr %__old, align 8, !dbg !5601
  %7 = load i64, ptr %__new, align 8, !dbg !5601
  %8 = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %7, ptr elementtype(i64) %5, i64 %6) #14, !dbg !5601, !srcloc !5602
  %asmresult = extractvalue { i8, i64 } %8, 0, !dbg !5601
  %asmresult1 = extractvalue { i8, i64 } %8, 1, !dbg !5601
  %9 = icmp ult i8 %asmresult, 2, !dbg !5601
  call void @llvm.assume(i1 %9), !dbg !5601
  store i8 %asmresult, ptr %success, align 1, !dbg !5601
  store i64 %asmresult1, ptr %__old, align 8, !dbg !5601
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !5601
  %10 = load i8, ptr %success, align 1, !dbg !5603, !range !4495, !noundef !1509
  %tobool = trunc i8 %10 to i1, !dbg !5603
  %lnot = xor i1 %tobool, true, !dbg !5603
  %lnot2 = xor i1 %lnot, true, !dbg !5603
  %lnot3 = xor i1 %lnot2, true, !dbg !5603
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5603
  %conv = sext i32 %lnot.ext to i64, !dbg !5603
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5603
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5603
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5601

if.then:                                          ; preds = %entry
  %11 = load i64, ptr %__old, align 8, !dbg !5603
  %12 = load ptr, ptr %_old, align 8, !dbg !5603
  store i64 %11, ptr %12, align 8, !dbg !5603
  br label %if.end, !dbg !5603

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !5601, !range !4495, !noundef !1509
  %tobool5 = trunc i8 %13 to i1, !dbg !5601
  %lnot6 = xor i1 %tobool5, true, !dbg !5601
  %lnot8 = xor i1 %lnot6, true, !dbg !5601
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !5601
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !5601
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !5601
  store i64 %expval11, ptr %tmp, align 8, !dbg !5603
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #14, !dbg !5605
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #14, !dbg !5605
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #14, !dbg !5605
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #14, !dbg !5605
  %14 = load i64, ptr %tmp, align 8, !dbg !5601
  %tobool12 = icmp ne i64 %14, 0, !dbg !5605
  ret i1 %tobool12, !dbg !5606
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5607 dso_local ptr @css_next_child(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5608 dso_local void @css_task_iter_start(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5612 dso_local ptr @css_task_iter_next(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @freezing(ptr noundef %p) #4 align 16 !dbg !5615 {
entry:
  %retval = alloca i1, align 1
  %p.addr = alloca ptr, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5617, metadata !DIExpression()), !dbg !5621
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #14, !dbg !5622
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !5618, metadata !DIExpression()), !dbg !5622
  %call = call zeroext i1 @arch_static_branch(ptr noundef @freezer_active, i1 noundef zeroext false) #15, !dbg !5623
  %frombool = zext i1 %call to i8, !dbg !5623
  store i8 %frombool, ptr %branch, align 1, !dbg !5623
  %0 = load i8, ptr %branch, align 1, !dbg !5622, !range !4495, !noundef !1509
  %tobool = trunc i8 %0 to i1, !dbg !5622
  %lnot = xor i1 %tobool, true, !dbg !5622
  %lnot1 = xor i1 %lnot, true, !dbg !5622
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5622
  %conv = sext i32 %lnot.ext to i64, !dbg !5622
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5622
  store i64 %expval, ptr %tmp, align 8, !dbg !5626
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #14, !dbg !5627
  %1 = load i64, ptr %tmp, align 8, !dbg !5622
  %tobool2 = icmp ne i64 %1, 0, !dbg !5627
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5628

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !5629
  %call3 = call zeroext i1 @freezing_slow_path(ptr noundef %2) #15, !dbg !5630
  store i1 %call3, ptr %retval, align 1, !dbg !5631
  br label %return, !dbg !5631

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5632
  br label %return, !dbg !5632

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, ptr %retval, align 1, !dbg !5633
  ret i1 %3, !dbg !5633
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5634 dso_local zeroext i1 @frozen(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5635 dso_local void @css_task_iter_end(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #3 align 16 !dbg !5638 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5643, metadata !DIExpression()), !dbg !5646
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !5644, metadata !DIExpression()), !dbg !5647
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5648
  %1 = load i8, ptr %branch.addr, align 1, !dbg !5649, !range !4495, !noundef !1509
  %tobool = trunc i8 %1 to i1, !dbg !5649
  %conv = zext i1 %tobool to i32, !dbg !5649
  %or = or i32 2, %conv, !dbg !5650
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #14
          to label %asm.fallthrough [label %l_yes], !dbg !5651, !srcloc !5652

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5653
  br label %return, !dbg !5653

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !5645), !dbg !5654
  store i1 true, ptr %retval, align 1, !dbg !5655
  br label %return, !dbg !5655

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !5656
  ret i1 %2, !dbg !5656
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5657 dso_local zeroext i1 @freezing_slow_path(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_ref_put(ptr noundef %ref) #4 align 16 !dbg !5658 {
entry:
  %ref.addr = alloca ptr, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !5660, metadata !DIExpression()), !dbg !5661
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !5662
  call void @percpu_ref_put_many(ptr noundef %0, i64 noundef 1) #15, !dbg !5663
  ret void, !dbg !5664
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_ref_put_many(ptr noundef %ref, i64 noundef %nr) #4 align 16 !dbg !5665 {
entry:
  %ref.addr = alloca ptr, align 8
  %nr.addr = alloca i64, align 8
  %percpu_count = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i64, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !5669, metadata !DIExpression()), !dbg !5682
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5670, metadata !DIExpression()), !dbg !5683
  call void @llvm.lifetime.start.p0(i64 8, ptr %percpu_count) #14, !dbg !5684
  call void @llvm.dbg.declare(metadata ptr %percpu_count, metadata !5671, metadata !DIExpression()), !dbg !5685
  call void @rcu_read_lock() #15, !dbg !5686
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !5687
  %call = call zeroext i1 @__ref_is_percpu(ptr noundef %0, ptr noundef %percpu_count) #15, !dbg !5688
  br i1 %call, label %if.then, label %if.else23, !dbg !5689

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5690

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !5691

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5692
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5672, metadata !DIExpression()), !dbg !5692
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5692
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !5692
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5691
  br label %do.cond, !dbg !5692

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5692

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !5691

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #14, !dbg !5693
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !5676, metadata !DIExpression()), !dbg !5693
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5693
  %sub = sub i64 0, %2, !dbg !5693
  %3 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5693
  br i1 %3, label %land.lhs.true, label %cond.false, !dbg !5693

land.lhs.true:                                    ; preds = %do.body2
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5693
  %sub3 = sub i64 0, %4, !dbg !5693
  %cmp = icmp eq i64 %sub3, 1, !dbg !5693
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !5693

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load i64, ptr %nr.addr, align 8, !dbg !5693
  %sub4 = sub i64 0, %5, !dbg !5693
  %cmp5 = icmp eq i64 %sub4, -1, !dbg !5693
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !5693

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5693
  %sub6 = sub i64 0, %6, !dbg !5693
  %conv = trunc i64 %sub6 to i32, !dbg !5693
  br label %cond.end, !dbg !5693

cond.false:                                       ; preds = %lor.lhs.false, %do.body2
  br label %cond.end, !dbg !5693

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ], !dbg !5693
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !5693
  %7 = load i32, ptr %pao_ID__, align 4, !dbg !5694
  %cmp7 = icmp eq i32 %7, 1, !dbg !5694
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !5693

if.then9:                                         ; preds = %cond.end
  %8 = load ptr, ptr %percpu_count, align 8, !dbg !5695
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %8, ptr elementtype(i64) %8) #14, !dbg !5695, !srcloc !5697
  br label %if.end18, !dbg !5694

if.else:                                          ; preds = %cond.end
  %9 = load i32, ptr %pao_ID__, align 4, !dbg !5698
  %cmp10 = icmp eq i32 %9, -1, !dbg !5698
  br i1 %cmp10, label %if.then12, label %if.else13, !dbg !5694

if.then12:                                        ; preds = %if.else
  %10 = load ptr, ptr %percpu_count, align 8, !dbg !5699
  call void asm sideeffect "decq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %10, ptr elementtype(i64) %10) #14, !dbg !5699, !srcloc !5701
  br label %if.end, !dbg !5698

if.else13:                                        ; preds = %if.else
  br label %do.body14, !dbg !5698

do.body14:                                        ; preds = %if.else13
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #14, !dbg !5702
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !5678, metadata !DIExpression()), !dbg !5702
  %11 = load i64, ptr %nr.addr, align 8, !dbg !5702
  %sub15 = sub i64 0, %11, !dbg !5702
  store i64 %sub15, ptr %pto_val__, align 8, !dbg !5702
  %12 = load ptr, ptr %percpu_count, align 8, !dbg !5702
  %13 = load i64, ptr %pto_val__, align 8, !dbg !5702
  call void asm sideeffect "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %12, i64 %13, ptr elementtype(i64) %12) #14, !dbg !5702, !srcloc !5703
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #14, !dbg !5698
  br label %do.cond16, !dbg !5702

do.cond16:                                        ; preds = %do.body14
  br label %do.end17, !dbg !5702

do.end17:                                         ; preds = %do.cond16
  br label %if.end

if.end:                                           ; preds = %do.end17, %if.then12
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #14, !dbg !5691
  br label %do.cond19, !dbg !5693

do.cond19:                                        ; preds = %if.end18
  br label %do.end20, !dbg !5693

do.end20:                                         ; preds = %do.cond19
  br label %do.cond21, !dbg !5691

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !5691

do.end22:                                         ; preds = %do.cond21
  br label %if.end30, !dbg !5691

if.else23:                                        ; preds = %entry
  %14 = load i64, ptr %nr.addr, align 8, !dbg !5704
  %15 = load ptr, ptr %ref.addr, align 8, !dbg !5704
  %data = getelementptr inbounds %struct.percpu_ref, ptr %15, i32 0, i32 1, !dbg !5704
  %16 = load ptr, ptr %data, align 8, !dbg !5704
  %count = getelementptr inbounds %struct.percpu_ref_data, ptr %16, i32 0, i32 0, !dbg !5704
  %call24 = call zeroext i1 @atomic_long_sub_and_test(i64 noundef %14, ptr noundef %count) #15, !dbg !5704
  %lnot = xor i1 %call24, true, !dbg !5704
  %lnot25 = xor i1 %lnot, true, !dbg !5704
  %lnot.ext = zext i1 %lnot25 to i32, !dbg !5704
  %conv26 = sext i32 %lnot.ext to i64, !dbg !5704
  %expval = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !5704
  %tobool = icmp ne i64 %expval, 0, !dbg !5704
  br i1 %tobool, label %if.then27, label %if.end29, !dbg !5706

if.then27:                                        ; preds = %if.else23
  %17 = load ptr, ptr %ref.addr, align 8, !dbg !5707
  %data28 = getelementptr inbounds %struct.percpu_ref, ptr %17, i32 0, i32 1, !dbg !5708
  %18 = load ptr, ptr %data28, align 8, !dbg !5708
  %release = getelementptr inbounds %struct.percpu_ref_data, ptr %18, i32 0, i32 1, !dbg !5709
  %19 = load ptr, ptr %release, align 8, !dbg !5709
  %20 = load ptr, ptr %ref.addr, align 8, !dbg !5710
  call void %19(ptr noundef %20) #15, !dbg !5707
  br label %if.end29, !dbg !5707

if.end29:                                         ; preds = %if.then27, %if.else23
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %do.end22
  call void @rcu_read_unlock() #15, !dbg !5711
  call void @llvm.lifetime.end.p0(i64 8, ptr %percpu_count) #14, !dbg !5712
  ret void, !dbg !5712
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_long_sub_and_test(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !5713 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5717, metadata !DIExpression()), !dbg !5719
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5718, metadata !DIExpression()), !dbg !5720
  br label %do.body, !dbg !5721

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5722

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5724
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #15, !dbg !5725
  %1 = load i64, ptr %i.addr, align 8, !dbg !5726
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5727
  %call = call zeroext i1 @raw_atomic_long_sub_and_test(i64 noundef %1, ptr noundef %2) #15, !dbg !5728
  ret i1 %call, !dbg !5729
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_long_sub_and_test(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !5730 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5732, metadata !DIExpression()), !dbg !5734
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5733, metadata !DIExpression()), !dbg !5735
  %0 = load i64, ptr %i.addr, align 8, !dbg !5736
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5737
  %call = call zeroext i1 @raw_atomic64_sub_and_test(i64 noundef %0, ptr noundef %1) #15, !dbg !5738
  ret i1 %call, !dbg !5739
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_sub_and_test(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !5740 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5744, metadata !DIExpression()), !dbg !5746
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5745, metadata !DIExpression()), !dbg !5747
  %0 = load i64, ptr %i.addr, align 8, !dbg !5748
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5749
  %call = call zeroext i1 @arch_atomic64_sub_and_test(i64 noundef %0, ptr noundef %1) #15, !dbg !5750
  ret i1 %call, !dbg !5751
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic64_sub_and_test(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !5752 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5754, metadata !DIExpression()), !dbg !5758
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5755, metadata !DIExpression()), !dbg !5759
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #14, !dbg !5760
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5756, metadata !DIExpression()), !dbg !5760
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5760
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !5760
  %1 = load i64, ptr %i.addr, align 8, !dbg !5760
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; subq $2, $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter) #14, !dbg !5760, !srcloc !5761
  %3 = icmp ult i8 %2, 2, !dbg !5760
  call void @llvm.assume(i1 %3), !dbg !5760
  store i8 %2, ptr %c, align 1, !dbg !5760
  %4 = load i8, ptr %c, align 1, !dbg !5760, !range !4495, !noundef !1509
  %tobool = trunc i8 %4 to i1, !dbg !5760
  %frombool = zext i1 %tobool to i8, !dbg !5760
  store i8 %frombool, ptr %tmp, align 1, !dbg !5760
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #14, !dbg !5762
  %5 = load i8, ptr %tmp, align 1, !dbg !5760, !range !4495, !noundef !1509
  %tobool1 = trunc i8 %5 to i1, !dbg !5760
  ret i1 %tobool1, !dbg !5763
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @strstrip(ptr noundef %str) #4 align 16 !dbg !5764 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5769, metadata !DIExpression()), !dbg !5770
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5771
  %call = call ptr @strim(ptr noundef %0) #15, !dbg !5772
  ret ptr %call, !dbg !5773
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5774 dso_local i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @freezer_change_state(ptr noundef %freezer, i1 noundef zeroext %freeze) #0 align 16 !dbg !5777 {
entry:
  %freezer.addr = alloca ptr, align 8
  %freeze.addr = alloca i8, align 1
  %pos = alloca ptr, align 8
  %pos_f = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %freezer, ptr %freezer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %freezer.addr, metadata !5781, metadata !DIExpression()), !dbg !5789
  %frombool = zext i1 %freeze to i8
  store i8 %frombool, ptr %freeze.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %freeze.addr, metadata !5782, metadata !DIExpression()), !dbg !5790
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #14, !dbg !5791
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5783, metadata !DIExpression()), !dbg !5792
  call void @cpus_read_lock() #15, !dbg !5793
  call void @mutex_lock(ptr noundef @freezer_mutex) #15, !dbg !5794
  call void @rcu_read_lock() #15, !dbg !5795
  %0 = load ptr, ptr %freezer.addr, align 8, !dbg !5796
  %css = getelementptr inbounds %struct.freezer, ptr %0, i32 0, i32 0, !dbg !5796
  %call = call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef %css) #15, !dbg !5796
  store ptr %call, ptr %pos, align 8, !dbg !5796
  br label %for.cond, !dbg !5796

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %pos, align 8, !dbg !5797
  %tobool = icmp ne ptr %1, null, !dbg !5796
  br i1 %tobool, label %for.body, label %for.end, !dbg !5796

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos_f) #14, !dbg !5798
  call void @llvm.dbg.declare(metadata ptr %pos_f, metadata !5784, metadata !DIExpression()), !dbg !5799
  %2 = load ptr, ptr %pos, align 8, !dbg !5800
  %call1 = call ptr @css_freezer(ptr noundef %2) #15, !dbg !5801
  store ptr %call1, ptr %pos_f, align 8, !dbg !5799
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #14, !dbg !5802
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !5788, metadata !DIExpression()), !dbg !5803
  %3 = load ptr, ptr %pos_f, align 8, !dbg !5804
  %call2 = call ptr @parent_freezer(ptr noundef %3) #15, !dbg !5805
  store ptr %call2, ptr %parent, align 8, !dbg !5803
  %4 = load ptr, ptr %pos, align 8, !dbg !5806
  %call3 = call zeroext i1 @css_tryget_online(ptr noundef %4) #15, !dbg !5808
  br i1 %call3, label %if.end, label %if.then, !dbg !5809

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5810

if.end:                                           ; preds = %for.body
  call void @rcu_read_unlock() #15, !dbg !5811
  %5 = load ptr, ptr %pos_f, align 8, !dbg !5812
  %6 = load ptr, ptr %freezer.addr, align 8, !dbg !5814
  %cmp = icmp eq ptr %5, %6, !dbg !5815
  br i1 %cmp, label %if.then4, label %if.else, !dbg !5816

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %pos_f, align 8, !dbg !5817
  %8 = load i8, ptr %freeze.addr, align 1, !dbg !5818, !range !4495, !noundef !1509
  %tobool5 = trunc i8 %8 to i1, !dbg !5818
  call void @freezer_apply_state(ptr noundef %7, i1 noundef zeroext %tobool5, i32 noundef 2) #15, !dbg !5819
  br label %if.end7, !dbg !5819

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %pos_f, align 8, !dbg !5820
  %10 = load ptr, ptr %parent, align 8, !dbg !5821
  %state = getelementptr inbounds %struct.freezer, ptr %10, i32 0, i32 1, !dbg !5822
  %11 = load i32, ptr %state, align 8, !dbg !5822
  %and = and i32 %11, 6, !dbg !5823
  %tobool6 = icmp ne i32 %and, 0, !dbg !5821
  call void @freezer_apply_state(ptr noundef %9, i1 noundef zeroext %tobool6, i32 noundef 4) #15, !dbg !5824
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  call void @rcu_read_lock() #15, !dbg !5825
  %12 = load ptr, ptr %pos, align 8, !dbg !5826
  call void @css_put(ptr noundef %12) #15, !dbg !5827
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5828
  br label %cleanup, !dbg !5828

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #14, !dbg !5828
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos_f) #14, !dbg !5828
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5829

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %13 = load ptr, ptr %pos, align 8, !dbg !5797
  %14 = load ptr, ptr %freezer.addr, align 8, !dbg !5797
  %css9 = getelementptr inbounds %struct.freezer, ptr %14, i32 0, i32 0, !dbg !5797
  %call10 = call ptr @css_next_descendant_pre(ptr noundef %13, ptr noundef %css9) #15, !dbg !5797
  store ptr %call10, ptr %pos, align 8, !dbg !5797
  br label %for.cond, !dbg !5797, !llvm.loop !5830

for.end:                                          ; preds = %for.cond
  call void @rcu_read_unlock() #15, !dbg !5832
  call void @mutex_unlock(ptr noundef @freezer_mutex) #15, !dbg !5833
  call void @cpus_read_unlock() #15, !dbg !5834
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #14, !dbg !5835
  ret void, !dbg !5835

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5836 dso_local ptr @strim(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5837 dso_local ptr @css_next_descendant_pre(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @freezer_apply_state(ptr noundef %freezer, i1 noundef zeroext %freeze, i32 noundef %state) #0 align 16 !dbg !5838 {
entry:
  %freezer.addr = alloca ptr, align 8
  %freeze.addr = alloca i8, align 1
  %state.addr = alloca i32, align 4
  %was_freezing = alloca i8, align 1
  store ptr %freezer, ptr %freezer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %freezer.addr, metadata !5842, metadata !DIExpression()), !dbg !5848
  %frombool = zext i1 %freeze to i8
  store i8 %frombool, ptr %freeze.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %freeze.addr, metadata !5843, metadata !DIExpression()), !dbg !5849
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5844, metadata !DIExpression()), !dbg !5850
  br label %do.body, !dbg !5851

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5852

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %freezer.addr, align 8, !dbg !5854
  %state1 = getelementptr inbounds %struct.freezer, ptr %0, i32 0, i32 1, !dbg !5856
  %1 = load i32, ptr %state1, align 8, !dbg !5856
  %and = and i32 %1, 1, !dbg !5857
  %tobool = icmp ne i32 %and, 0, !dbg !5857
  br i1 %tobool, label %if.end, label %if.then, !dbg !5858

if.then:                                          ; preds = %do.end
  br label %if.end26, !dbg !5859

if.end:                                           ; preds = %do.end
  %2 = load i8, ptr %freeze.addr, align 1, !dbg !5860, !range !4495, !noundef !1509
  %tobool2 = trunc i8 %2 to i1, !dbg !5860
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !5861

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %freezer.addr, align 8, !dbg !5862
  %state4 = getelementptr inbounds %struct.freezer, ptr %3, i32 0, i32 1, !dbg !5865
  %4 = load i32, ptr %state4, align 8, !dbg !5865
  %and5 = and i32 %4, 6, !dbg !5866
  %tobool6 = icmp ne i32 %and5, 0, !dbg !5866
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !5867

if.then7:                                         ; preds = %if.then3
  %call = call zeroext i1 @static_key_slow_inc_cpuslocked(ptr noundef @freezer_active) #15, !dbg !5868
  br label %if.end8, !dbg !5868

if.end8:                                          ; preds = %if.then7, %if.then3
  %5 = load i32, ptr %state.addr, align 4, !dbg !5869
  %6 = load ptr, ptr %freezer.addr, align 8, !dbg !5870
  %state9 = getelementptr inbounds %struct.freezer, ptr %6, i32 0, i32 1, !dbg !5871
  %7 = load i32, ptr %state9, align 8, !dbg !5872
  %or = or i32 %7, %5, !dbg !5872
  store i32 %or, ptr %state9, align 8, !dbg !5872
  %8 = load ptr, ptr %freezer.addr, align 8, !dbg !5873
  call void @freeze_cgroup(ptr noundef %8) #15, !dbg !5874
  br label %if.end26, !dbg !5875

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %was_freezing) #14, !dbg !5876
  call void @llvm.dbg.declare(metadata ptr %was_freezing, metadata !5845, metadata !DIExpression()), !dbg !5877
  %9 = load ptr, ptr %freezer.addr, align 8, !dbg !5878
  %state10 = getelementptr inbounds %struct.freezer, ptr %9, i32 0, i32 1, !dbg !5879
  %10 = load i32, ptr %state10, align 8, !dbg !5879
  %and11 = and i32 %10, 6, !dbg !5880
  %tobool12 = icmp ne i32 %and11, 0, !dbg !5878
  %frombool13 = zext i1 %tobool12 to i8, !dbg !5877
  store i8 %frombool13, ptr %was_freezing, align 1, !dbg !5877
  %11 = load i32, ptr %state.addr, align 4, !dbg !5881
  %not = xor i32 %11, -1, !dbg !5882
  %12 = load ptr, ptr %freezer.addr, align 8, !dbg !5883
  %state14 = getelementptr inbounds %struct.freezer, ptr %12, i32 0, i32 1, !dbg !5884
  %13 = load i32, ptr %state14, align 8, !dbg !5885
  %and15 = and i32 %13, %not, !dbg !5885
  store i32 %and15, ptr %state14, align 8, !dbg !5885
  %14 = load ptr, ptr %freezer.addr, align 8, !dbg !5886
  %state16 = getelementptr inbounds %struct.freezer, ptr %14, i32 0, i32 1, !dbg !5888
  %15 = load i32, ptr %state16, align 8, !dbg !5888
  %and17 = and i32 %15, 6, !dbg !5889
  %tobool18 = icmp ne i32 %and17, 0, !dbg !5889
  br i1 %tobool18, label %if.end25, label %if.then19, !dbg !5890

if.then19:                                        ; preds = %if.else
  %16 = load ptr, ptr %freezer.addr, align 8, !dbg !5891
  %state20 = getelementptr inbounds %struct.freezer, ptr %16, i32 0, i32 1, !dbg !5893
  %17 = load i32, ptr %state20, align 8, !dbg !5894
  %and21 = and i32 %17, -9, !dbg !5894
  store i32 %and21, ptr %state20, align 8, !dbg !5894
  %18 = load i8, ptr %was_freezing, align 1, !dbg !5895, !range !4495, !noundef !1509
  %tobool22 = trunc i8 %18 to i1, !dbg !5895
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !5897

if.then23:                                        ; preds = %if.then19
  call void @static_key_slow_dec_cpuslocked(ptr noundef @freezer_active) #15, !dbg !5898
  br label %if.end24, !dbg !5898

if.end24:                                         ; preds = %if.then23, %if.then19
  %19 = load ptr, ptr %freezer.addr, align 8, !dbg !5899
  call void @unfreeze_cgroup(ptr noundef %19) #15, !dbg !5900
  br label %if.end25, !dbg !5901

if.end25:                                         ; preds = %if.end24, %if.else
  call void @llvm.lifetime.end.p0(i64 1, ptr %was_freezing) #14, !dbg !5902
  br label %if.end26

if.end26:                                         ; preds = %if.then, %if.end25, %if.end8
  ret void, !dbg !5903
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @freeze_cgroup(ptr noundef %freezer) #0 align 16 !dbg !5904 {
entry:
  %freezer.addr = alloca ptr, align 8
  %it = alloca %struct.css_task_iter, align 8
  %task = alloca ptr, align 8
  store ptr %freezer, ptr %freezer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %freezer.addr, metadata !5908, metadata !DIExpression()), !dbg !5911
  call void @llvm.lifetime.start.p0(i64 104, ptr %it) #14, !dbg !5912
  call void @llvm.dbg.declare(metadata ptr %it, metadata !5909, metadata !DIExpression()), !dbg !5913
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #14, !dbg !5914
  call void @llvm.dbg.declare(metadata ptr %task, metadata !5910, metadata !DIExpression()), !dbg !5915
  %0 = load ptr, ptr %freezer.addr, align 8, !dbg !5916
  %css = getelementptr inbounds %struct.freezer, ptr %0, i32 0, i32 0, !dbg !5917
  call void @css_task_iter_start(ptr noundef %css, i32 noundef 0, ptr noundef %it) #15, !dbg !5918
  br label %while.cond, !dbg !5919

while.cond:                                       ; preds = %while.body, %entry
  %call = call ptr @css_task_iter_next(ptr noundef %it) #15, !dbg !5920
  store ptr %call, ptr %task, align 8, !dbg !5921
  %tobool = icmp ne ptr %call, null, !dbg !5919
  br i1 %tobool, label %while.body, label %while.end, !dbg !5919

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %task, align 8, !dbg !5922
  %call1 = call zeroext i1 @freeze_task(ptr noundef %1) #15, !dbg !5923
  br label %while.cond, !dbg !5919, !llvm.loop !5924

while.end:                                        ; preds = %while.cond
  call void @css_task_iter_end(ptr noundef %it) #15, !dbg !5926
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #14, !dbg !5927
  call void @llvm.lifetime.end.p0(i64 104, ptr %it) #14, !dbg !5927
  ret void, !dbg !5927
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @unfreeze_cgroup(ptr noundef %freezer) #0 align 16 !dbg !5928 {
entry:
  %freezer.addr = alloca ptr, align 8
  %it = alloca %struct.css_task_iter, align 8
  %task = alloca ptr, align 8
  store ptr %freezer, ptr %freezer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %freezer.addr, metadata !5930, metadata !DIExpression()), !dbg !5933
  call void @llvm.lifetime.start.p0(i64 104, ptr %it) #14, !dbg !5934
  call void @llvm.dbg.declare(metadata ptr %it, metadata !5931, metadata !DIExpression()), !dbg !5935
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #14, !dbg !5936
  call void @llvm.dbg.declare(metadata ptr %task, metadata !5932, metadata !DIExpression()), !dbg !5937
  %0 = load ptr, ptr %freezer.addr, align 8, !dbg !5938
  %css = getelementptr inbounds %struct.freezer, ptr %0, i32 0, i32 0, !dbg !5939
  call void @css_task_iter_start(ptr noundef %css, i32 noundef 0, ptr noundef %it) #15, !dbg !5940
  br label %while.cond, !dbg !5941

while.cond:                                       ; preds = %while.body, %entry
  %call = call ptr @css_task_iter_next(ptr noundef %it) #15, !dbg !5942
  store ptr %call, ptr %task, align 8, !dbg !5943
  %tobool = icmp ne ptr %call, null, !dbg !5941
  br i1 %tobool, label %while.body, label %while.end, !dbg !5941

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %task, align 8, !dbg !5944
  call void @__thaw_task(ptr noundef %1) #15, !dbg !5945
  br label %while.cond, !dbg !5941, !llvm.loop !5946

while.end:                                        ; preds = %while.cond
  call void @css_task_iter_end(ptr noundef %it) #15, !dbg !5948
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #14, !dbg !5949
  call void @llvm.lifetime.end.p0(i64 104, ptr %it) #14, !dbg !5949
  ret void, !dbg !5949
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466}
!llvm.ident = !{!4467}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "files", scope: !2, file: !3, line: 459, type: !4458, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/cgroup/.legacy_freezer.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/cgroup/legacy_freezer\22 -D KBUILD_BASENAME=\22legacy_freezer\22 -D KBUILD_MODNAME=\22legacy_freezer\22 -D __KBUILD_MODNAME=kmod_legacy_freezer -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/cgroup/legacy_freezer.ll kernel/cgroup/legacy_freezer.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !213, globals: !4436, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/cgroup/legacy_freezer.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e8f200fd3c79b9391bf13a19203b1da")
!4 = !{!5, !11, !19, !115, !122, !129, !135, !140, !146, !152, !159, !166, !184, !189, !199, !206}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !12, line: 9, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!15 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!16 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!17 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!18 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !21, file: !20, line: 147, baseType: !7, size: 32, elements: !112)
!20 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !20, line: 135, size: 512, elements: !22)
!22 = !{!23, !27, !29, !31, !35, !36, !52, !110, !111}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !21, file: !20, line: 136, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !21, file: !20, line: 137, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !21, file: !20, line: 138, baseType: !30, size: 32, offset: 128)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !21, file: !20, line: 139, baseType: !32, size: 16, offset: 160)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !33, line: 24, baseType: !34)
!33 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !21, file: !20, line: 150, baseType: !19, size: 32, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !21, file: !20, line: 151, baseType: !37, size: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !20, line: 64, baseType: !39)
!39 = !DISubroutineType(types: !40)
!40 = !{!30, !41, !30, !28, !42, !48}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 61, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !45, line: 72, baseType: !46)
!45 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !45, line: 16, baseType: !47)
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !33, line: 52, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !45, line: 88, baseType: !51)
!51 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !21, file: !20, line: 152, baseType: !53, size: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !20, line: 117, size: 256, elements: !55)
!55 = !{!56, !61}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !54, file: !20, line: 118, baseType: !57, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !33, line: 174, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 172, size: 32, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !58, file: !33, line: 173, baseType: !30, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !54, file: !20, line: 119, baseType: !62, size: 192, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !63, line: 41, baseType: !64)
!63 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !63, line: 37, size: 192, elements: !65)
!65 = !{!66, !104}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !64, file: !63, line: 38, baseType: !67, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !68, line: 29, baseType: !69)
!68 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !68, line: 17, size: 32, elements: !70)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, scope: !69, file: !68, line: 18, baseType: !72, size: 32)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !69, file: !68, line: 18, size: 32, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !72, file: !68, line: 19, baseType: !75, size: 32)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !76, line: 14, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !75, file: !76, line: 15, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !80, line: 44, baseType: !81)
!80 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !80, line: 14, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !80, line: 15, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !80, line: 15, size: 32, elements: !85)
!85 = !{!86, !87, !97}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !84, file: !80, line: 16, baseType: !57, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !80, line: 24, baseType: !88, size: 16)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !80, line: 24, size: 16, elements: !89)
!89 = !{!90, !96}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !88, file: !80, line: 25, baseType: !91, size: 8)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !92, line: 17, baseType: !93)
!92 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !94, line: 21, baseType: !95)
!94 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!95 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !88, file: !80, line: 26, baseType: !91, size: 8, offset: 8)
!97 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !80, line: 28, baseType: !98, size: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !80, line: 28, size: 32, elements: !99)
!99 = !{!100, !103}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !98, file: !80, line: 29, baseType: !101, size: 16)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !92, line: 19, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !94, line: 24, baseType: !34)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !98, file: !80, line: 30, baseType: !101, size: 16, offset: 16)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !64, file: !63, line: 39, baseType: !105, size: 128, offset: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !33, line: 190, size: 128, elements: !106)
!106 = !{!107, !109}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !33, line: 191, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !105, file: !33, line: 191, baseType: !108, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !21, file: !20, line: 153, baseType: !28, size: 64, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !21, file: !20, line: 154, baseType: !28, size: 64, offset: 448)
!112 = !{!113, !114}
!113 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!114 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !116, line: 312, baseType: !7, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!117 = !{!118, !119, !120, !121}
!118 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!119 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!120 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!121 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !123, line: 15, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!124 = !{!125, !126, !127, !128}
!125 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!126 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!127 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!128 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !130, line: 26, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!133 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!134 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !136, line: 2052, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!137 = !{!138, !139}
!138 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!139 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
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
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freezer_state_flags", file: !3, line: 34, baseType: !7, size: 32, elements: !160)
!160 = !{!161, !162, !163, !164, !165}
!161 = !DIEnumerator(name: "CGROUP_FREEZER_ONLINE", value: 1)
!162 = !DIEnumerator(name: "CGROUP_FREEZING_SELF", value: 2)
!163 = !DIEnumerator(name: "CGROUP_FREEZING_PARENT", value: 4)
!164 = !DIEnumerator(name: "CGROUP_FROZEN", value: 8)
!165 = !DIEnumerator(name: "CGROUP_FREEZING", value: 6)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cgroup_subsys_id", file: !167, line: 43, baseType: !7, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!168 = !{!169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!169 = !DIEnumerator(name: "cpuset_cgrp_id", value: 0)
!170 = !DIEnumerator(name: "cpu_cgrp_id", value: 1)
!171 = !DIEnumerator(name: "cpuacct_cgrp_id", value: 2)
!172 = !DIEnumerator(name: "io_cgrp_id", value: 3)
!173 = !DIEnumerator(name: "devices_cgrp_id", value: 4)
!174 = !DIEnumerator(name: "freezer_cgrp_id", value: 5)
!175 = !DIEnumerator(name: "net_cls_cgrp_id", value: 6)
!176 = !DIEnumerator(name: "perf_event_cgrp_id", value: 7)
!177 = !DIEnumerator(name: "net_prio_cgrp_id", value: 8)
!178 = !DIEnumerator(name: "hugetlb_cgrp_id", value: 9)
!179 = !DIEnumerator(name: "pids_cgrp_id", value: 10)
!180 = !DIEnumerator(name: "rdma_cgrp_id", value: 11)
!181 = !DIEnumerator(name: "misc_cgrp_id", value: 12)
!182 = !DIEnumerator(name: "debug_cgrp_id", value: 13)
!183 = !DIEnumerator(name: "CGROUP_SUBSYS_COUNT", value: 14)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !185, line: 10, baseType: !7, size: 32, elements: !186)
!185 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!186 = !{!187, !188}
!187 = !DIEnumerator(name: "false", value: 0)
!188 = !DIEnumerator(name: "true", value: 1)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !190, line: 364, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!191 = !{!192, !193, !194, !195, !196, !197, !198}
!192 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!193 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!194 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!195 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!196 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!197 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!198 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !167, line: 50, baseType: !7, size: 32, elements: !200)
!200 = !{!201, !202, !203, !204, !205}
!201 = !DIEnumerator(name: "CSS_NO_REF", value: 1)
!202 = !DIEnumerator(name: "CSS_ONLINE", value: 2)
!203 = !DIEnumerator(name: "CSS_RELEASED", value: 4)
!204 = !DIEnumerator(name: "CSS_VISIBLE", value: 8)
!205 = !DIEnumerator(name: "CSS_DYING", value: 16)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !207, line: 63, baseType: !7, size: 32, elements: !208)
!207 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!208 = !{!209, !210, !211, !212}
!209 = !DIEnumerator(name: "__PERCPU_REF_ATOMIC", value: 1)
!210 = !DIEnumerator(name: "__PERCPU_REF_DEAD", value: 2)
!211 = !DIEnumerator(name: "__PERCPU_REF_ATOMIC_DEAD", value: 3)
!212 = !DIEnumerator(name: "__PERCPU_REF_FLAG_BITS", value: 2)
!213 = !{!28, !214, !2969, !4424, !1042, !47, !2068, !30, !4427, !4430, !4433, !4434, !445, !531}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freezer", file: !3, line: 44, size: 1664, elements: !216)
!216 = !{!217, !4423}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !215, file: !3, line: 45, baseType: !218, size: 1600)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !167, line: 152, size: 1600, elements: !219)
!219 = !{!220, !4279, !4388, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4422}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !218, file: !167, line: 154, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !167, line: 389, size: 7872, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !4195, !4201, !4202, !4206, !4207, !4208, !4209, !4210, !4211, !4228, !4229, !4230, !4231, !4232, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4266, !4269, !4270, !4277}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !222, file: !167, line: 391, baseType: !218, size: 1600)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !222, file: !167, line: 393, baseType: !47, size: 64, offset: 1600)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !222, file: !167, line: 401, baseType: !30, size: 32, offset: 1664)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !222, file: !167, line: 404, baseType: !30, size: 32, offset: 1696)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !222, file: !167, line: 417, baseType: !30, size: 32, offset: 1728)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !222, file: !167, line: 418, baseType: !30, size: 32, offset: 1760)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !222, file: !167, line: 419, baseType: !30, size: 32, offset: 1792)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !222, file: !167, line: 432, baseType: !30, size: 32, offset: 1824)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !222, file: !167, line: 433, baseType: !30, size: 32, offset: 1856)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !222, file: !167, line: 434, baseType: !30, size: 32, offset: 1888)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !222, file: !167, line: 436, baseType: !30, size: 32, offset: 1920)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !222, file: !167, line: 439, baseType: !7, size: 32, offset: 1952)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !222, file: !167, line: 441, baseType: !237, size: 64, offset: 1984)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !239, line: 190, size: 1152, elements: !240)
!239 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!240 = !{!241, !242, !243, !244, !245, !253, !256, !257, !4187, !4188, !4189, !4190, !4191, !4194}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !238, file: !239, line: 191, baseType: !57, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !238, file: !239, line: 192, baseType: !57, size: 32, offset: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !238, file: !239, line: 202, baseType: !237, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !238, file: !239, line: 203, baseType: !24, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !238, file: !239, line: 205, baseType: !246, size: 192, align: 64, offset: 192)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !247, line: 5, size: 192, align: 64, elements: !248)
!247 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!248 = !{!249, !250, !252}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !246, file: !247, line: 6, baseType: !47, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !246, file: !247, line: 7, baseType: !251, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !246, file: !247, line: 8, baseType: !251, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !238, file: !239, line: 207, baseType: !254, size: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !238, file: !239, line: 208, baseType: !7, size: 32, offset: 448)
!257 = !DIDerivedType(tag: DW_TAG_member, scope: !238, file: !239, line: 209, baseType: !258, size: 256, offset: 512)
!258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !238, file: !239, line: 209, size: 256, elements: !259)
!259 = !{!260, !272, !276}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !258, file: !239, line: 210, baseType: !261, size: 256)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !239, line: 153, size: 256, elements: !262)
!262 = !{!263, !264, !268, !271}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !261, file: !239, line: 154, baseType: !47, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !261, file: !239, line: 156, baseType: !265, size: 64, offset: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !247, line: 12, size: 64, elements: !266)
!266 = !{!267}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !265, file: !247, line: 13, baseType: !251, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !261, file: !239, line: 162, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !239, line: 162, flags: DIFlagFwdDecl)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !261, file: !239, line: 167, baseType: !47, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !258, file: !239, line: 211, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !239, line: 170, size: 64, elements: !274)
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !273, file: !239, line: 171, baseType: !237, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !258, file: !239, line: 212, baseType: !277, size: 256)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !239, line: 174, size: 256, elements: !278)
!278 = !{!279, !4182, !4185, !4186}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !277, file: !239, line: 175, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !239, line: 271, size: 768, elements: !283)
!283 = !{!284, !4159, !4163, !4164, !4165, !4166, !4167, !4171, !4172, !4173, !4174, !4178}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !282, file: !239, line: 276, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!30, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !239, line: 251, size: 1216, elements: !290)
!290 = !{!291, !292, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !289, file: !239, line: 253, baseType: !237, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !289, file: !239, line: 254, baseType: !293, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !136, line: 994, size: 1856, align: 64, elements: !295)
!295 = !{!296, !315, !316, !318, !327, !340, !341, !342, !417, !779, !788, !4138, !4139, !4140, !4141, !4142, !4143, !4145, !4146, !4147}
!296 = !DIDerivedType(tag: DW_TAG_member, scope: !294, file: !136, line: 995, baseType: !297, size: 128)
!297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !294, file: !136, line: 995, size: 128, elements: !298)
!298 = !{!299, !305, !314}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !297, file: !136, line: 996, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !301, line: 60, size: 64, elements: !302)
!301 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !301, line: 61, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !297, file: !136, line: 997, baseType: !306, size: 128, align: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !33, line: 232, size: 128, align: 64, elements: !307)
!307 = !{!308, !310}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !306, file: !33, line: 233, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !306, file: !33, line: 234, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !309}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !297, file: !136, line: 998, baseType: !7, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !294, file: !136, line: 1005, baseType: !67, size: 32, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !294, file: !136, line: 1006, baseType: !317, size: 32, offset: 160)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !33, line: 156, baseType: !7)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !294, file: !136, line: 1007, baseType: !319, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !320, line: 13, baseType: !321)
!320 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !33, line: 181, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 179, size: 64, elements: !323)
!323 = !{!324}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !322, file: !33, line: 180, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !92, line: 22, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !94, line: 30, baseType: !51)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !294, file: !136, line: 1008, baseType: !328, size: 256, offset: 256)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !329, line: 66, size: 256, elements: !330)
!329 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!330 = !{!331, !332, !334, !339}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !328, file: !329, line: 67, baseType: !319, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !328, file: !329, line: 68, baseType: !333, size: 32, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !76, line: 23, baseType: !75)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !328, file: !329, line: 70, baseType: !335, size: 32, offset: 96)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !336, line: 15, size: 32, elements: !337)
!336 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !335, file: !336, line: 20, baseType: !57, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !328, file: !329, line: 72, baseType: !105, size: 128, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !294, file: !136, line: 1009, baseType: !49, size: 64, offset: 512)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !294, file: !136, line: 1010, baseType: !7, size: 32, offset: 576)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !294, file: !136, line: 1011, baseType: !343, size: 256, offset: 640)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !136, line: 948, size: 256, elements: !344)
!344 = !{!345, !368, !406, !407, !415, !416}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !343, file: !136, line: 949, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !347, line: 34, baseType: !348)
!347 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 25, size: 64, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !348, file: !347, line: 26, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !352, line: 27, baseType: !353)
!352 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !352, line: 13, size: 64, elements: !354)
!354 = !{!355, !367}
!355 = !DIDerivedType(tag: DW_TAG_member, scope: !353, file: !352, line: 14, baseType: !356, size: 32)
!356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !353, file: !352, line: 14, size: 32, elements: !357)
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !356, file: !352, line: 15, baseType: !57, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, scope: !356, file: !352, line: 16, baseType: !360, size: 32)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !356, file: !352, line: 16, size: 32, elements: !361)
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !360, file: !352, line: 18, baseType: !91, size: 8)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !360, file: !352, line: 19, baseType: !364, size: 24, offset: 8)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 24, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 3)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !353, file: !352, line: 26, baseType: !79, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !343, file: !136, line: 950, baseType: !369, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !12, line: 59, size: 768, elements: !371)
!371 = !{!372, !378, !379, !380, !393, !394, !395, !396}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !370, file: !12, line: 61, baseType: !373, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !374, line: 113, baseType: !375)
!374 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !374, line: 111, size: 32, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !375, file: !374, line: 112, baseType: !57, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !370, file: !12, line: 62, baseType: !7, size: 32, offset: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !370, file: !12, line: 63, baseType: !67, size: 32, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !370, file: !12, line: 65, baseType: !381, size: 256, offset: 128)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 256, elements: !391)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !33, line: 194, size: 64, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !382, file: !33, line: 195, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !33, line: 198, size: 128, elements: !387)
!387 = !{!388, !389}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !386, file: !33, line: 199, baseType: !385, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !386, file: !33, line: 199, baseType: !390, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!391 = !{!392}
!392 = !DISubrange(count: 4)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !370, file: !12, line: 66, baseType: !382, size: 64, offset: 384)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !370, file: !12, line: 68, baseType: !62, size: 192, offset: 448)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !370, file: !12, line: 69, baseType: !306, size: 128, align: 64, offset: 640)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !370, file: !12, line: 70, baseType: !397, offset: 768)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, elements: !404)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !12, line: 54, size: 128, elements: !399)
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !398, file: !12, line: 55, baseType: !30, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !398, file: !12, line: 56, baseType: !402, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !12, line: 56, flags: DIFlagFwdDecl)
!404 = !{!405}
!405 = !DISubrange(count: -1)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !343, file: !136, line: 951, baseType: !11, size: 32, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !343, file: !136, line: 952, baseType: !408, size: 32, offset: 160)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !409, line: 23, baseType: !410)
!409 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 21, size: 32, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !410, file: !409, line: 22, baseType: !413, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !33, line: 37, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !45, line: 49, baseType: !7)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !343, file: !136, line: 952, baseType: !408, size: 32, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !343, file: !136, line: 953, baseType: !30, size: 32, offset: 224)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !294, file: !136, line: 1012, baseType: !418, size: 64, offset: 896)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !421, line: 110, size: 1472, elements: !422)
!421 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!422 = !{!423, !424, !425, !432, !433, !434, !435, !436, !437, !438, !439, !448, !449, !450, !451, !452, !453, !579, !580, !581, !582, !583, !614, !765, !766, !774}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !420, file: !421, line: 111, baseType: !319, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !420, file: !421, line: 112, baseType: !408, size: 32, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !420, file: !421, line: 113, baseType: !426, size: 32, offset: 96)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !409, line: 28, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 26, size: 32, elements: !428)
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !427, file: !409, line: 27, baseType: !430, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !33, line: 38, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !45, line: 50, baseType: !7)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !420, file: !421, line: 114, baseType: !408, size: 32, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !420, file: !421, line: 115, baseType: !426, size: 32, offset: 160)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !420, file: !421, line: 116, baseType: !408, size: 32, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !420, file: !421, line: 117, baseType: !426, size: 32, offset: 224)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !420, file: !421, line: 118, baseType: !408, size: 32, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !420, file: !421, line: 119, baseType: !426, size: 32, offset: 288)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !420, file: !421, line: 120, baseType: !7, size: 32, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !420, file: !421, line: 121, baseType: !440, size: 64, offset: 384)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !441, line: 24, baseType: !442)
!441 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 24, size: 64, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !442, file: !441, line: 24, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !92, line: 23, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !94, line: 31, baseType: !447)
!447 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !420, file: !421, line: 122, baseType: !440, size: 64, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !420, file: !421, line: 123, baseType: !440, size: 64, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !420, file: !421, line: 124, baseType: !440, size: 64, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !420, file: !421, line: 125, baseType: !440, size: 64, offset: 640)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !420, file: !421, line: 127, baseType: !95, size: 8, offset: 704)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !420, file: !421, line: 129, baseType: !454, size: 64, offset: 768)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !456, line: 195, size: 1728, elements: !457)
!456 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!457 = !{!458, !459, !464, !469, !478, !481, !482, !489, !490, !491, !492, !497, !498, !499, !501, !502, !543, !564}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !455, file: !456, line: 196, baseType: !373, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !455, file: !456, line: 197, baseType: !460, size: 32, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !456, line: 28, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !33, line: 104, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !92, line: 20, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !94, line: 26, baseType: !30)
!464 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !456, line: 198, baseType: !465, size: 192, offset: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !456, line: 198, size: 192, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !465, file: !456, line: 199, baseType: !105, size: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !465, file: !456, line: 200, baseType: !246, size: 192, align: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !455, file: !456, line: 205, baseType: !470, size: 320, offset: 256)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !471, line: 48, size: 320, elements: !472)
!471 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!472 = !{!473, !474, !475, !476, !477}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !470, file: !471, line: 49, baseType: !319, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !470, file: !471, line: 55, baseType: !319, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !470, file: !471, line: 57, baseType: !335, size: 32, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !470, file: !471, line: 59, baseType: !333, size: 32, offset: 160)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !470, file: !471, line: 60, baseType: !105, size: 128, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !455, file: !456, line: 206, baseType: !479, size: 64, offset: 576)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !456, line: 206, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !455, file: !456, line: 207, baseType: !28, size: 64, offset: 640)
!482 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !456, line: 208, baseType: !483, size: 64, offset: 704)
!483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !456, line: 208, size: 64, elements: !484)
!484 = !{!485, !488}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !483, file: !456, line: 209, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !487, line: 8, baseType: !326)
!487 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!488 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !483, file: !456, line: 210, baseType: !486, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !455, file: !456, line: 212, baseType: !486, size: 64, offset: 768)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !455, file: !456, line: 213, baseType: !408, size: 32, offset: 832)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !455, file: !456, line: 214, baseType: !426, size: 32, offset: 864)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !455, file: !456, line: 215, baseType: !493, size: 32, offset: 896)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !456, line: 31, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !33, line: 110, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !92, line: 21, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !94, line: 27, baseType: !7)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !455, file: !456, line: 216, baseType: !34, size: 16, offset: 928)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !455, file: !456, line: 217, baseType: !34, size: 16, offset: 944)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !455, file: !456, line: 221, baseType: !500, size: 16, offset: 960)
!500 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !456, line: 228, baseType: !47, size: 64, offset: 1024)
!502 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !456, line: 245, baseType: !503, size: 320, offset: 1088)
!503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !456, line: 245, size: 320, elements: !504)
!504 = !{!505, !534}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !503, file: !456, line: 246, baseType: !506, size: 320)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !456, line: 114, size: 320, elements: !507)
!507 = !{!508, !509, !521, !524, !533}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !506, file: !456, line: 116, baseType: !47, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, scope: !506, file: !456, line: 117, baseType: !510, size: 64, offset: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !506, file: !456, line: 117, size: 64, elements: !511)
!511 = !{!512, !520}
!512 = !DIDerivedType(tag: DW_TAG_member, scope: !510, file: !456, line: 118, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !510, file: !456, line: 118, size: 64, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !513, file: !456, line: 120, baseType: !101, size: 16)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !513, file: !456, line: 121, baseType: !517, size: 48, offset: 16)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 48, elements: !518)
!518 = !{!519}
!519 = !DISubrange(count: 6)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !510, file: !456, line: 127, baseType: !47, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !506, file: !456, line: 129, baseType: !522, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !456, line: 102, flags: DIFlagFwdDecl)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !506, file: !456, line: 130, baseType: !525, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !456, line: 108, size: 192, elements: !527)
!527 = !{!528, !529, !530}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !526, file: !456, line: 109, baseType: !306, size: 128, align: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !526, file: !456, line: 110, baseType: !373, size: 32, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !526, file: !456, line: 111, baseType: !531, size: 8, offset: 160)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !33, line: 35, baseType: !532)
!532 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !506, file: !456, line: 131, baseType: !24, size: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, scope: !503, file: !456, line: 247, baseType: !535, size: 320)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !503, file: !456, line: 247, size: 320, elements: !536)
!536 = !{!537, !538, !539, !540, !541}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !535, file: !456, line: 248, baseType: !47, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !535, file: !456, line: 249, baseType: !47, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !535, file: !456, line: 250, baseType: !522, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !535, file: !456, line: 251, baseType: !525, size: 64, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !535, file: !456, line: 252, baseType: !542, size: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !456, line: 260, baseType: !544, size: 256, offset: 1408)
!544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !456, line: 260, size: 256, elements: !545)
!545 = !{!546, !552}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !544, file: !456, line: 261, baseType: !547, size: 256)
!547 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !456, line: 134, size: 256, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !547, file: !456, line: 135, baseType: !28, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !547, file: !456, line: 136, baseType: !551, size: 256)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !391)
!552 = !DIDerivedType(tag: DW_TAG_member, scope: !544, file: !456, line: 262, baseType: !553, size: 256)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !544, file: !456, line: 262, size: 256, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !553, file: !456, line: 264, baseType: !105, size: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !553, file: !456, line: 265, baseType: !557, size: 128, offset: 128)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !558, line: 22, size: 128, elements: !559)
!558 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!559 = !{!560, !563}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !557, file: !558, line: 23, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !558, line: 23, flags: DIFlagFwdDecl)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !557, file: !558, line: 24, baseType: !47, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !455, file: !456, line: 280, baseType: !565, size: 64, offset: 1664)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !456, line: 176, size: 192, elements: !567)
!567 = !{!568, !577, !578}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !566, file: !456, line: 177, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !456, line: 171, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!30, !454, !573, !575, !454}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !566, file: !456, line: 178, baseType: !454, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !566, file: !456, line: 179, baseType: !522, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !420, file: !421, line: 130, baseType: !454, size: 64, offset: 832)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !420, file: !421, line: 131, baseType: !454, size: 64, offset: 896)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !420, file: !421, line: 132, baseType: !454, size: 64, offset: 960)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !420, file: !421, line: 135, baseType: !28, size: 64, offset: 1024)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !420, file: !421, line: 137, baseType: !584, size: 64, offset: 1088)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !586, line: 14, size: 1088, elements: !587)
!586 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!587 = !{!588, !589, !598, !599, !600, !601, !602, !603}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !585, file: !586, line: 15, baseType: !373, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !585, file: !586, line: 17, baseType: !590, size: 320, offset: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !591, line: 22, size: 320, elements: !592)
!591 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!592 = !{!593, !594, !595, !596}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !590, file: !591, line: 23, baseType: !333, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !590, file: !591, line: 24, baseType: !325, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !590, file: !591, line: 26, baseType: !105, size: 128, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !590, file: !591, line: 28, baseType: !597, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !585, file: !586, line: 19, baseType: !47, size: 64, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !585, file: !586, line: 20, baseType: !319, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !585, file: !586, line: 23, baseType: !386, size: 128, offset: 512)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !585, file: !586, line: 24, baseType: !408, size: 32, offset: 640)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !585, file: !586, line: 29, baseType: !319, size: 64, offset: 704)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !585, file: !586, line: 36, baseType: !604, size: 320, offset: 768)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !605, line: 15, size: 320, elements: !606)
!605 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!606 = !{!607, !608, !609, !610, !611, !612, !613}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !604, file: !605, line: 16, baseType: !333, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !604, file: !605, line: 18, baseType: !30, size: 32, offset: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !604, file: !605, line: 19, baseType: !30, size: 32, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !604, file: !605, line: 20, baseType: !30, size: 32, offset: 96)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !604, file: !605, line: 21, baseType: !30, size: 32, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !604, file: !605, line: 22, baseType: !47, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !604, file: !605, line: 23, baseType: !47, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !420, file: !421, line: 138, baseType: !615, size: 64, offset: 1152)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !617, line: 68, size: 4800, elements: !618)
!617 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!618 = !{!619, !641, !642, !643, !644, !645, !646, !647, !658, !659, !660, !661, !662, !663, !675, !745, !746, !760, !763}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !616, file: !617, line: 69, baseType: !620, size: 576)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !617, line: 23, size: 576, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !620, file: !617, line: 24, baseType: !495, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, scope: !620, file: !617, line: 25, baseType: !624, size: 512, offset: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !620, file: !617, line: 25, size: 512, elements: !625)
!625 = !{!626, !635}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !624, file: !617, line: 26, baseType: !627, size: 480)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 480, elements: !633)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !617, line: 17, size: 96, elements: !629)
!629 = !{!630, !631, !632}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !628, file: !617, line: 18, baseType: !495, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !628, file: !617, line: 19, baseType: !495, size: 32, offset: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !628, file: !617, line: 20, baseType: !495, size: 32, offset: 64)
!633 = !{!634}
!634 = !DISubrange(count: 5)
!635 = !DIDerivedType(tag: DW_TAG_member, scope: !624, file: !617, line: 27, baseType: !636, size: 128)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !624, file: !617, line: 27, size: 128, elements: !637)
!637 = !{!638, !640}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !636, file: !617, line: 28, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !636, file: !617, line: 29, baseType: !639, size: 64, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !616, file: !617, line: 70, baseType: !620, size: 576, offset: 576)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !616, file: !617, line: 71, baseType: !620, size: 576, offset: 1152)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !616, file: !617, line: 72, baseType: !615, size: 64, offset: 1728)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !616, file: !617, line: 73, baseType: !30, size: 32, offset: 1792)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !616, file: !617, line: 74, baseType: !408, size: 32, offset: 1824)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !616, file: !617, line: 75, baseType: !426, size: 32, offset: 1856)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !616, file: !617, line: 76, baseType: !648, size: 192, offset: 1920)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !649, line: 9, size: 192, elements: !650)
!649 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!650 = !{!651, !652, !656, !657}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !648, file: !649, line: 10, baseType: !319, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !648, file: !649, line: 11, baseType: !653, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !649, line: 7, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !648, file: !649, line: 12, baseType: !7, size: 32, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !648, file: !649, line: 13, baseType: !373, size: 32, offset: 160)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !616, file: !617, line: 77, baseType: !47, size: 64, offset: 2112)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !616, file: !617, line: 80, baseType: !531, size: 8, offset: 2176)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !616, file: !617, line: 88, baseType: !105, size: 128, offset: 2240)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !616, file: !617, line: 89, baseType: !454, size: 64, offset: 2368)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !616, file: !617, line: 90, baseType: !470, size: 320, offset: 2432)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !616, file: !617, line: 97, baseType: !664, size: 256, offset: 2752)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !665, line: 98, size: 256, elements: !666)
!665 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!666 = !{!667, !668, !669}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !664, file: !665, line: 99, baseType: !319, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !664, file: !665, line: 100, baseType: !105, size: 128, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !664, file: !665, line: 101, baseType: !670, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !665, line: 21, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !674}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !616, file: !617, line: 99, baseType: !676, size: 768, offset: 3008)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !20, line: 199, size: 768, elements: !677)
!677 = !{!678, !683}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !676, file: !20, line: 200, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!30, !682}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !676, file: !20, line: 201, baseType: !684, size: 704, offset: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !20, line: 193, size: 704, elements: !685)
!685 = !{!686, !744}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !684, file: !20, line: 195, baseType: !687, size: 640)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !20, line: 173, size: 640, elements: !688)
!688 = !{!689, !701, !713, !714, !734, !735, !737, !743}
!689 = !DIDerivedType(tag: DW_TAG_member, scope: !687, file: !20, line: 174, baseType: !690, size: 192)
!690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !687, file: !20, line: 174, size: 192, elements: !691)
!691 = !{!692, !700}
!692 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !20, line: 175, baseType: !693, size: 192)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !690, file: !20, line: 175, size: 192, elements: !694)
!694 = !{!695, !696, !697, !698, !699}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !693, file: !20, line: 176, baseType: !41, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !693, file: !20, line: 177, baseType: !30, size: 32, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !693, file: !20, line: 178, baseType: !30, size: 32, offset: 96)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !693, file: !20, line: 179, baseType: !30, size: 32, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !693, file: !20, line: 180, baseType: !30, size: 32, offset: 160)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !690, file: !20, line: 182, baseType: !306, size: 128, align: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !687, file: !20, line: 184, baseType: !702, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !704, line: 26, size: 256, elements: !705)
!704 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !703, file: !704, line: 27, baseType: !7, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !703, file: !704, line: 28, baseType: !708, size: 192, offset: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !709, line: 43, size: 192, elements: !710)
!709 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !708, file: !709, line: 44, baseType: !333, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !708, file: !709, line: 45, baseType: !105, size: 128, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !687, file: !20, line: 185, baseType: !41, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !687, file: !20, line: 186, baseType: !715, size: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !20, line: 204, size: 960, elements: !717)
!717 = !{!718, !719, !723, !730}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !716, file: !20, line: 205, baseType: !676, size: 768)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !716, file: !20, line: 206, baseType: !720, size: 64, offset: 768)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!682, !715}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !716, file: !20, line: 207, baseType: !724, size: 64, offset: 832)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !727, !728, !729}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !716, file: !20, line: 209, baseType: !731, size: 64, offset: 896)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!30, !727, !41}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !687, file: !20, line: 187, baseType: !682, size: 64, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !687, file: !20, line: 188, baseType: !736, size: 64, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !687, file: !20, line: 189, baseType: !738, size: 64, offset: 512)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !20, line: 157, size: 256, elements: !740)
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !739, file: !20, line: 158, baseType: !246, size: 192, align: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !739, file: !20, line: 159, baseType: !727, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !687, file: !20, line: 190, baseType: !382, size: 64, offset: 576)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !684, file: !20, line: 196, baseType: !265, size: 64, offset: 640)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !616, file: !617, line: 100, baseType: !727, size: 64, offset: 3776)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !616, file: !617, line: 102, baseType: !747, size: 64, offset: 3840)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !617, line: 107, size: 1152, elements: !749)
!749 = !{!750, !751, !752, !753, !754, !758}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !748, file: !617, line: 108, baseType: !386, size: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !748, file: !617, line: 109, baseType: !615, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !748, file: !617, line: 110, baseType: !408, size: 32, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !748, file: !617, line: 111, baseType: !57, size: 32, offset: 224)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !748, file: !617, line: 112, baseType: !755, size: 640, offset: 256)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 640, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 10)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !748, file: !617, line: 113, baseType: !759, size: 256, offset: 896)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 256, elements: !391)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !616, file: !617, line: 103, baseType: !761, size: 640, offset: 3904)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, size: 640, elements: !756)
!762 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !616, file: !617, line: 104, baseType: !764, size: 256, offset: 4544)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, size: 256, elements: !391)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !420, file: !421, line: 139, baseType: !747, size: 64, offset: 1216)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !420, file: !421, line: 140, baseType: !767, size: 64, offset: 1280)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !421, line: 25, size: 64, elements: !769)
!769 = !{!770, !771, !772}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !768, file: !421, line: 26, baseType: !57, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !768, file: !421, line: 27, baseType: !30, size: 32, offset: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !768, file: !421, line: 28, baseType: !773, offset: 64)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, elements: !404)
!774 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !421, line: 142, baseType: !775, size: 128, offset: 1344)
!775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !421, line: 142, size: 128, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !775, file: !421, line: 143, baseType: !30, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !775, file: !421, line: 144, baseType: !306, size: 128, align: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !294, file: !136, line: 1013, baseType: !780, size: 256, offset: 960)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !136, line: 970, size: 256, elements: !781)
!781 = !{!782, !783, !784, !785, !786, !787}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !780, file: !136, line: 971, baseType: !47, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !780, file: !136, line: 972, baseType: !7, size: 32, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !780, file: !136, line: 973, baseType: !7, size: 32, offset: 96)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !780, file: !136, line: 974, baseType: !7, size: 32, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !780, file: !136, line: 975, baseType: !7, size: 32, offset: 160)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !780, file: !136, line: 976, baseType: !49, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !294, file: !136, line: 1014, baseType: !789, size: 128, offset: 1216)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !790, line: 8, size: 128, elements: !791)
!790 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!791 = !{!792, !4137}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !789, file: !790, line: 9, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !795, line: 70, size: 256, elements: !796)
!795 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!796 = !{!797, !4134, !4135, !4136}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !794, file: !795, line: 71, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !800, line: 82, size: 1536, elements: !801)
!800 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!801 = !{!802, !803, !813, !821, !822, !837, !4101, !4103, !4116, !4117, !4118, !4119, !4120, !4126, !4127, !4128}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !799, file: !800, line: 84, baseType: !7, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !799, file: !800, line: 85, baseType: !804, size: 32, offset: 32)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !805, line: 275, baseType: !806)
!805 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !805, line: 275, size: 32, elements: !807)
!807 = !{!808}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !806, file: !805, line: 275, baseType: !809, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !805, line: 69, baseType: !810)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !805, line: 64, size: 32, elements: !811)
!811 = !{!812}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !810, file: !805, line: 65, baseType: !7, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !799, file: !800, line: 86, baseType: !814, size: 128, offset: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !815, line: 38, size: 128, elements: !816)
!815 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!816 = !{!817, !819}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !814, file: !815, line: 39, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !814, file: !815, line: 39, baseType: !820, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !799, file: !800, line: 87, baseType: !798, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !799, file: !800, line: 88, baseType: !823, size: 128, offset: 256)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !800, line: 49, size: 128, elements: !824)
!824 = !{!825, !834}
!825 = !DIDerivedType(tag: DW_TAG_member, scope: !823, file: !800, line: 50, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !823, file: !800, line: 50, size: 64, elements: !827)
!827 = !{!828, !833}
!828 = !DIDerivedType(tag: DW_TAG_member, scope: !826, file: !800, line: 51, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !826, file: !800, line: 51, size: 64, elements: !830)
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !829, file: !800, line: 52, baseType: !495, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !829, file: !800, line: 52, baseType: !495, size: 32, offset: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !826, file: !800, line: 54, baseType: !445, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !823, file: !800, line: 56, baseType: !835, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !799, file: !800, line: 89, baseType: !838, size: 64, offset: 384)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !136, line: 641, size: 4800, elements: !840)
!840 = !{!841, !842, !843, !844, !845, !846, !847, !850, !851, !1045, !3913, !3914, !3915, !3916, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !4083, !4086, !4087, !4088, !4097, !4098, !4099, !4100}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !839, file: !136, line: 642, baseType: !32, size: 16)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !839, file: !136, line: 643, baseType: !34, size: 16, offset: 16)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !839, file: !136, line: 644, baseType: !408, size: 32, offset: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !839, file: !136, line: 645, baseType: !105, size: 128, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !839, file: !136, line: 646, baseType: !426, size: 32, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !839, file: !136, line: 647, baseType: !7, size: 32, offset: 224)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !839, file: !136, line: 650, baseType: !848, size: 64, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !136, line: 607, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !839, file: !136, line: 651, baseType: !848, size: 64, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !839, file: !136, line: 654, baseType: !852, size: 64, offset: 384)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !136, line: 1966, size: 2048, align: 512, elements: !855)
!855 = !{!856, !860, !873, !879, !883, !887, !891, !895, !899, !903, !907, !908, !914, !918, !955, !986, !993, !999, !1003, !1007, !1011, !1015, !1019, !1025, !1029}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !854, file: !136, line: 1967, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!798, !838, !798, !7}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !854, file: !136, line: 1968, baseType: !861, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!24, !798, !838, !864}
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !866, line: 10, size: 128, elements: !867)
!866 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!867 = !{!868, !872}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !865, file: !866, line: 11, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !28}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !865, file: !866, line: 12, baseType: !28, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !854, file: !136, line: 1969, baseType: !874, size: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!30, !877, !838, !30}
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !441, line: 42, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !854, file: !136, line: 1970, baseType: !880, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!848, !838, !30, !531}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !854, file: !136, line: 1972, baseType: !884, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!30, !798, !542, !30}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !854, file: !136, line: 1974, baseType: !888, size: 64, offset: 320)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!30, !877, !838, !798, !32, !531}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !854, file: !136, line: 1976, baseType: !892, size: 64, offset: 384)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!30, !798, !838, !798}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !854, file: !136, line: 1977, baseType: !896, size: 64, offset: 448)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!30, !838, !798}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !854, file: !136, line: 1978, baseType: !900, size: 64, offset: 512)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!30, !877, !838, !798, !24}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !854, file: !136, line: 1980, baseType: !904, size: 64, offset: 576)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!30, !877, !838, !798, !32}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !854, file: !136, line: 1982, baseType: !896, size: 64, offset: 640)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !854, file: !136, line: 1983, baseType: !909, size: 64, offset: 704)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{!30, !877, !838, !798, !32, !912}
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !33, line: 21, baseType: !913)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !33, line: 18, baseType: !495)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !854, file: !136, line: 1985, baseType: !915, size: 64, offset: 768)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!30, !877, !838, !798, !838, !798, !7}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !854, file: !136, line: 1987, baseType: !919, size: 64, offset: 832)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!30, !877, !798, !922}
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !136, line: 226, size: 640, elements: !924)
!924 = !{!925, !926, !927, !937, !946, !947, !952, !953, !954}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !923, file: !136, line: 227, baseType: !7, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !923, file: !136, line: 228, baseType: !32, size: 16, offset: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !923, file: !136, line: 241, baseType: !928, size: 32, offset: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !923, file: !136, line: 241, size: 32, elements: !929)
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !928, file: !136, line: 242, baseType: !408, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !928, file: !136, line: 243, baseType: !932, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !933, line: 16, baseType: !934)
!933 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !933, line: 14, size: 32, elements: !935)
!935 = !{!936}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !934, file: !933, line: 15, baseType: !413, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, scope: !923, file: !136, line: 245, baseType: !938, size: 32, offset: 96)
!938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !923, file: !136, line: 245, size: 32, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !938, file: !136, line: 246, baseType: !426, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !938, file: !136, line: 247, baseType: !942, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !933, line: 20, baseType: !943)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !933, line: 18, size: 32, elements: !944)
!944 = !{!945}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !943, file: !933, line: 19, baseType: !430, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !923, file: !136, line: 249, baseType: !49, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !923, file: !136, line: 250, baseType: !948, size: 128, offset: 192)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !487, line: 13, size: 128, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !948, file: !487, line: 14, baseType: !486, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !948, file: !487, line: 15, baseType: !762, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !923, file: !136, line: 251, baseType: !948, size: 128, offset: 320)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !923, file: !136, line: 252, baseType: !948, size: 128, offset: 448)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !923, file: !136, line: 259, baseType: !293, size: 64, offset: 576)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !854, file: !136, line: 1988, baseType: !956, size: 64, offset: 896)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!30, !877, !959, !961, !495, !7}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !789)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !963, line: 22, size: 1280, elements: !964)
!963 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!964 = !{!965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !962, file: !963, line: 23, baseType: !495, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !962, file: !963, line: 24, baseType: !32, size: 16, offset: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !962, file: !963, line: 25, baseType: !7, size: 32, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !962, file: !963, line: 26, baseType: !494, size: 32, offset: 96)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !962, file: !963, line: 27, baseType: !445, size: 64, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !962, file: !963, line: 28, baseType: !445, size: 64, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !962, file: !963, line: 41, baseType: !445, size: 64, offset: 256)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !962, file: !963, line: 42, baseType: !912, size: 32, offset: 320)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !962, file: !963, line: 43, baseType: !912, size: 32, offset: 352)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !962, file: !963, line: 44, baseType: !408, size: 32, offset: 384)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !962, file: !963, line: 45, baseType: !426, size: 32, offset: 416)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !962, file: !963, line: 46, baseType: !49, size: 64, offset: 448)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !962, file: !963, line: 47, baseType: !948, size: 128, offset: 512)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !962, file: !963, line: 48, baseType: !948, size: 128, offset: 640)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !962, file: !963, line: 49, baseType: !948, size: 128, offset: 768)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !962, file: !963, line: 50, baseType: !948, size: 128, offset: 896)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !962, file: !963, line: 51, baseType: !445, size: 64, offset: 1024)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !962, file: !963, line: 52, baseType: !445, size: 64, offset: 1088)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !962, file: !963, line: 53, baseType: !495, size: 32, offset: 1152)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !962, file: !963, line: 54, baseType: !495, size: 32, offset: 1184)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !962, file: !963, line: 55, baseType: !445, size: 64, offset: 1216)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !854, file: !136, line: 1990, baseType: !987, size: 64, offset: 960)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!990, !798, !542, !43}
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !33, line: 66, baseType: !991)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !45, line: 73, baseType: !992)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !45, line: 15, baseType: !762)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !854, file: !136, line: 1991, baseType: !994, size: 64, offset: 1024)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!30, !838, !997, !445, !445}
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !136, line: 55, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !854, file: !136, line: 1993, baseType: !1000, size: 64, offset: 1088)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!30, !838, !30}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !854, file: !136, line: 1994, baseType: !1004, size: 64, offset: 1152)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!30, !838, !798, !293, !7, !32}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !854, file: !136, line: 1997, baseType: !1008, size: 64, offset: 1216)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!30, !877, !838, !293, !32}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !854, file: !136, line: 1999, baseType: !1012, size: 64, offset: 1280)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!848, !877, !798, !30}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !854, file: !136, line: 2001, baseType: !1016, size: 64, offset: 1344)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!30, !877, !798, !848, !30}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !854, file: !136, line: 2003, baseType: !1020, size: 64, offset: 1408)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!30, !877, !798, !1023}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !136, line: 76, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !854, file: !136, line: 2005, baseType: !1026, size: 64, offset: 1472)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!30, !798, !1023}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !854, file: !136, line: 2006, baseType: !1030, size: 64, offset: 1536)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!1033, !838}
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !136, line: 3192, size: 192, elements: !1035)
!1035 = !{!1036, !1044}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1034, file: !136, line: 3193, baseType: !1037, size: 128)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1038, line: 296, size: 128, elements: !1039)
!1038 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1039 = !{!1040, !1041, !1043}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1037, file: !1038, line: 297, baseType: !67, size: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1037, file: !1038, line: 299, baseType: !1042, size: 32, offset: 32)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !33, line: 154, baseType: !7)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1037, file: !1038, line: 300, baseType: !28, size: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1034, file: !136, line: 3194, baseType: !495, size: 32, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !839, file: !136, line: 655, baseType: !1046, size: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !136, line: 1190, size: 10752, elements: !1048)
!1048 = !{!1049, !1050, !1051, !1052, !1053, !1054, !2097, !2267, !2307, !2390, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2407, !2411, !2412, !2415, !2418, !2421, !2424, !2425, !2426, !2467, !3789, !3790, !3791, !3792, !3793, !3794, !3797, !3798, !3805, !3806, !3807, !3808, !3867, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1047, file: !136, line: 1191, baseType: !105, size: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1047, file: !136, line: 1192, baseType: !912, size: 32, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1047, file: !136, line: 1193, baseType: !95, size: 8, offset: 160)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1047, file: !136, line: 1194, baseType: !47, size: 64, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1047, file: !136, line: 1195, baseType: !49, size: 64, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1047, file: !136, line: 1196, baseType: !1055, size: 64, offset: 320)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !136, line: 2366, size: 576, elements: !1057)
!1057 = !{!1058, !1059, !1060, !1066, !1070, !1074, !1078, !2085, !2086, !2087, !2089, !2090, !2091, !2093, !2094, !2095, !2096}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1056, file: !136, line: 2367, baseType: !24, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1056, file: !136, line: 2368, baseType: !30, size: 32, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1056, file: !136, line: 2376, baseType: !1061, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!30, !1064}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !795, line: 21, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1056, file: !136, line: 2377, baseType: !1067, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1069)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !136, line: 75, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1056, file: !136, line: 2378, baseType: !1071, size: 64, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!798, !1055, !30, !24, !28}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1056, file: !136, line: 2380, baseType: !1075, size: 64, offset: 320)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{null, !1046}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1056, file: !136, line: 2381, baseType: !1079, size: 64, offset: 384)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !116, line: 402, size: 9216, align: 512, elements: !1081)
!1081 = !{!1082, !1083, !1084, !1088, !1742, !1768, !1769, !1770, !1771, !1775, !1778, !1779, !1780, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1848, !1852, !1872, !1890, !1891, !1892, !1893, !1902, !1925, !1926, !1929, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1943, !1944, !2043, !2051, !2052, !2053, !2055, !2059, !2060, !2064, !2065, !2066, !2067, !2069, !2070, !2071, !2078, !2079, !2080, !2084}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1080, file: !116, line: 403, baseType: !115, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1080, file: !116, line: 406, baseType: !105, size: 128, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1080, file: !116, line: 409, baseType: !1085, size: 448, offset: 192)
!1085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 448, elements: !1086)
!1086 = !{!1087}
!1087 = !DISubrange(count: 56)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1080, file: !116, line: 417, baseType: !1089, size: 768, offset: 640)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !116, line: 45, size: 768, elements: !1090)
!1090 = !{!1091, !1736, !1737, !1738, !1741}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1089, file: !116, line: 46, baseType: !1092, size: 512)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1093, line: 64, size: 512, elements: !1094)
!1093 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1094 = !{!1095, !1096, !1097, !1099, !1143, !1725, !1726, !1731, !1732, !1733, !1734, !1735}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1092, file: !1093, line: 65, baseType: !24, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1092, file: !1093, line: 66, baseType: !105, size: 128, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1092, file: !1093, line: 67, baseType: !1098, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1092, file: !1093, line: 68, baseType: !1100, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1093, line: 168, size: 768, elements: !1102)
!1102 = !{!1103, !1104, !1105, !1106}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1101, file: !1093, line: 169, baseType: !105, size: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1101, file: !1093, line: 170, baseType: !67, size: 32, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1101, file: !1093, line: 171, baseType: !1092, size: 512, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1101, file: !1093, line: 172, baseType: !1107, size: 64, offset: 704)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1109)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1093, line: 133, size: 192, elements: !1110)
!1110 = !{!1111, !1118, !1123}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1109, file: !1093, line: 134, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1113)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!30, !1116}
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1092)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1109, file: !1093, line: 135, baseType: !1119, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1120)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!24, !1116}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1109, file: !1093, line: 136, baseType: !1124, size: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1125)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!30, !1116, !1128}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1093, line: 125, size: 20736, elements: !1130)
!1130 = !{!1131, !1133, !1137, !1138, !1142}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1129, file: !1093, line: 126, baseType: !1132, size: 192)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 192, elements: !365)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1129, file: !1093, line: 127, baseType: !1134, size: 4096, offset: 192)
!1134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 4096, elements: !1135)
!1135 = !{!1136}
!1136 = !DISubrange(count: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1129, file: !1093, line: 128, baseType: !30, size: 32, offset: 4288)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1129, file: !1093, line: 129, baseType: !1139, size: 16384, offset: 4320)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 16384, elements: !1140)
!1140 = !{!1141}
!1141 = !DISubrange(count: 2048)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1129, file: !1093, line: 130, baseType: !30, size: 32, offset: 20704)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1092, file: !1093, line: 69, baseType: !1144, size: 64, offset: 320)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1146)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1093, line: 116, size: 384, elements: !1147)
!1147 = !{!1148, !1152, !1171, !1689, !1717, !1721}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1146, file: !1093, line: 117, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{null, !1098}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1146, file: !1093, line: 118, baseType: !1153, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1155)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1156, line: 254, size: 128, elements: !1157)
!1156 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1157 = !{!1158, !1167}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1155, file: !1156, line: 255, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!990, !1098, !1162, !542}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1156, line: 30, size: 128, elements: !1164)
!1164 = !{!1165, !1166}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1163, file: !1156, line: 31, baseType: !24, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1163, file: !1156, line: 32, baseType: !32, size: 16, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1155, file: !1156, line: 256, baseType: !1168, size: 64, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!990, !1098, !1162, !24, !43}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1146, file: !1093, line: 119, baseType: !1172, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1175)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1156, line: 84, size: 320, elements: !1176)
!1176 = !{!1177, !1178, !1182, !1685, !1687}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1175, file: !1156, line: 85, baseType: !24, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1175, file: !1156, line: 86, baseType: !1179, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!32, !1098, !1162, !30}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1175, file: !1156, line: 88, baseType: !1183, size: 64, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!32, !1098, !1186, !30}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1156, line: 175, size: 512, elements: !1188)
!1188 = !{!1189, !1190, !1191, !1192, !1466, !1470, !1471}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1187, file: !1156, line: 176, baseType: !1163, size: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1187, file: !1156, line: 177, baseType: !43, size: 64, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1187, file: !1156, line: 178, baseType: !28, size: 64, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1187, file: !1156, line: 179, baseType: !1193, size: 64, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!1196}
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !136, line: 472, size: 1536, align: 64, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !1209, !1210, !1211, !1458, !1459, !1460, !1463, !1464, !1465}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1197, file: !136, line: 473, baseType: !838, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1197, file: !136, line: 474, baseType: !1037, size: 128, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1197, file: !136, line: 475, baseType: !470, size: 320, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1197, file: !136, line: 476, baseType: !1042, size: 32, offset: 512)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1197, file: !136, line: 477, baseType: !57, size: 32, offset: 544)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1197, file: !136, line: 482, baseType: !1205, size: 128, offset: 576)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !247, line: 26, size: 128, elements: !1206)
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1205, file: !247, line: 27, baseType: !265, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1205, file: !247, line: 28, baseType: !251, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1197, file: !136, line: 483, baseType: !47, size: 64, offset: 704)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1197, file: !136, line: 484, baseType: !47, size: 64, offset: 768)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1197, file: !136, line: 485, baseType: !1212, size: 64, offset: 832)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1214)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !136, line: 404, size: 1280, elements: !1215)
!1215 = !{!1216, !1283, !1353, !1357, !1361, !1367, !1373, !1377, !1382, !1386, !1390, !1394, !1422, !1426, !1430, !1434, !1439, !1443, !1450, !1454}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1214, file: !136, line: 405, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!30, !1220, !1281}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1222, line: 74, size: 512, align: 128, elements: !1223)
!1222 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1223 = !{!1224, !1225, !1275, !1280}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1221, file: !1222, line: 75, baseType: !47, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1221, file: !1222, line: 83, baseType: !1226, size: 320, offset: 64)
!1226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1221, file: !1222, line: 83, size: 320, elements: !1227)
!1227 = !{!1228, !1249, !1263, !1267, !1274}
!1228 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !1222, line: 84, baseType: !1229, size: 320)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !1222, line: 84, size: 320, elements: !1230)
!1230 = !{!1231, !1242, !1243, !1248}
!1231 = !DIDerivedType(tag: DW_TAG_member, scope: !1229, file: !1222, line: 90, baseType: !1232, size: 128)
!1232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1229, file: !1222, line: 90, size: 128, elements: !1233)
!1233 = !{!1234, !1235, !1240, !1241}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1232, file: !1222, line: 91, baseType: !105, size: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !1222, line: 94, baseType: !1236, size: 128)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1232, file: !1222, line: 94, size: 128, elements: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1236, file: !1222, line: 96, baseType: !28, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1236, file: !1222, line: 98, baseType: !7, size: 32, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1232, file: !1222, line: 102, baseType: !105, size: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1232, file: !1222, line: 103, baseType: !105, size: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1229, file: !1222, line: 106, baseType: !1196, size: 64, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, scope: !1229, file: !1222, line: 107, baseType: !1244, size: 64, offset: 192)
!1244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1229, file: !1222, line: 107, size: 64, elements: !1245)
!1245 = !{!1246, !1247}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1244, file: !1222, line: 108, baseType: !47, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1244, file: !1222, line: 109, baseType: !47, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1229, file: !1222, line: 117, baseType: !47, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !1222, line: 119, baseType: !1250, size: 320)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !1222, line: 119, size: 320, elements: !1251)
!1251 = !{!1252, !1253, !1256, !1257, !1258}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1250, file: !1222, line: 124, baseType: !47, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1250, file: !1222, line: 125, baseType: !1254, size: 64, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1222, line: 125, flags: DIFlagFwdDecl)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1250, file: !1222, line: 126, baseType: !47, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1250, file: !1222, line: 127, baseType: !47, size: 64, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_member, scope: !1250, file: !1222, line: 128, baseType: !1259, size: 64, offset: 256)
!1259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1250, file: !1222, line: 128, size: 64, elements: !1260)
!1260 = !{!1261, !1262}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1259, file: !1222, line: 133, baseType: !47, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1259, file: !1222, line: 138, baseType: !319, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !1222, line: 141, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !1222, line: 141, size: 64, elements: !1265)
!1265 = !{!1266}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1264, file: !1222, line: 142, baseType: !47, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !1222, line: 144, baseType: !1268, size: 128)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !1222, line: 144, size: 128, elements: !1269)
!1269 = !{!1270, !1273}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1268, file: !1222, line: 146, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1222, line: 146, flags: DIFlagFwdDecl)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1268, file: !1222, line: 147, baseType: !28, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1226, file: !1222, line: 161, baseType: !306, size: 128, align: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, scope: !1221, file: !1222, line: 164, baseType: !1276, size: 32, offset: 384)
!1276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1221, file: !1222, line: 164, size: 32, elements: !1277)
!1277 = !{!1278, !1279}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1276, file: !1222, line: 169, baseType: !57, size: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1276, file: !1222, line: 177, baseType: !7, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1221, file: !1222, line: 181, baseType: !57, size: 32, offset: 416)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !136, line: 309, flags: DIFlagFwdDecl)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1214, file: !136, line: 406, baseType: !1284, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!30, !293, !1287}
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1222, line: 293, size: 1536, elements: !1289)
!1289 = !{!1290, !1320, !1334}
!1290 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !1222, line: 295, baseType: !1291, size: 512)
!1291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1288, file: !1222, line: 295, size: 512, elements: !1292)
!1292 = !{!1293, !1319}
!1293 = !DIDerivedType(tag: DW_TAG_member, scope: !1291, file: !1222, line: 296, baseType: !1294, size: 448)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1291, file: !1222, line: 296, size: 448, elements: !1295)
!1295 = !{!1296, !1297, !1306, !1307, !1308, !1317, !1318}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1294, file: !1222, line: 298, baseType: !47, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1294, file: !1222, line: 299, baseType: !1298, size: 128, offset: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1294, file: !1222, line: 299, size: 128, elements: !1299)
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1298, file: !1222, line: 300, baseType: !105, size: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !1222, line: 302, baseType: !1302, size: 128)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1298, file: !1222, line: 302, size: 128, elements: !1303)
!1303 = !{!1304, !1305}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1302, file: !1222, line: 303, baseType: !28, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1302, file: !1222, line: 305, baseType: !7, size: 32, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1294, file: !1222, line: 310, baseType: !1196, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1294, file: !1222, line: 311, baseType: !47, size: 64, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1294, file: !1222, line: 312, baseType: !1309, size: 64, offset: 320)
!1309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1294, file: !1222, line: 312, size: 64, elements: !1310)
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1309, file: !1222, line: 313, baseType: !28, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1309, file: !1222, line: 314, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1222, line: 257, baseType: !1314)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1222, line: 255, size: 64, elements: !1315)
!1315 = !{!1316}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1314, file: !1222, line: 256, baseType: !47, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1294, file: !1222, line: 316, baseType: !57, size: 32, offset: 384)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1294, file: !1222, line: 317, baseType: !57, size: 32, offset: 416)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1291, file: !1222, line: 323, baseType: !1221, size: 512, align: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !1222, line: 325, baseType: !1321, size: 512, offset: 512)
!1321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1288, file: !1222, line: 325, size: 512, elements: !1322)
!1322 = !{!1323, !1333}
!1323 = !DIDerivedType(tag: DW_TAG_member, scope: !1321, file: !1222, line: 326, baseType: !1324, size: 320)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1321, file: !1222, line: 326, size: 320, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329, !1330, !1331, !1332}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1324, file: !1222, line: 327, baseType: !47, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1324, file: !1222, line: 328, baseType: !47, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1324, file: !1222, line: 329, baseType: !47, size: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1324, file: !1222, line: 331, baseType: !57, size: 32, offset: 192)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1324, file: !1222, line: 332, baseType: !57, size: 32, offset: 224)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1324, file: !1222, line: 333, baseType: !57, size: 32, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1324, file: !1222, line: 335, baseType: !7, size: 32, offset: 288)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1321, file: !1222, line: 339, baseType: !1221, size: 512, align: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !1222, line: 341, baseType: !1335, size: 512, offset: 1024)
!1335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1288, file: !1222, line: 341, size: 512, elements: !1336)
!1336 = !{!1337, !1346, !1352}
!1337 = !DIDerivedType(tag: DW_TAG_member, scope: !1335, file: !1222, line: 342, baseType: !1338, size: 384)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1335, file: !1222, line: 342, size: 384, elements: !1339)
!1339 = !{!1340, !1341, !1342, !1343, !1344, !1345}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1338, file: !1222, line: 343, baseType: !47, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1338, file: !1222, line: 344, baseType: !47, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1338, file: !1222, line: 346, baseType: !28, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1338, file: !1222, line: 347, baseType: !28, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1338, file: !1222, line: 348, baseType: !28, size: 64, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1338, file: !1222, line: 349, baseType: !28, size: 64, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_member, scope: !1335, file: !1222, line: 352, baseType: !1347, size: 256)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1335, file: !1222, line: 352, size: 256, elements: !1348)
!1348 = !{!1349, !1350, !1351}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1347, file: !1222, line: 353, baseType: !47, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1347, file: !1222, line: 354, baseType: !47, size: 64, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1347, file: !1222, line: 356, baseType: !105, size: 128, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1335, file: !1222, line: 359, baseType: !1221, size: 512, align: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1214, file: !136, line: 409, baseType: !1354, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!30, !1196, !1281}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1214, file: !136, line: 412, baseType: !1358, size: 64, offset: 192)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!531, !1196, !1287}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1214, file: !136, line: 414, baseType: !1362, size: 64, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !1365}
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !136, line: 310, flags: DIFlagFwdDecl)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1214, file: !136, line: 416, baseType: !1368, size: 64, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!30, !293, !1196, !49, !7, !1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1214, file: !136, line: 419, baseType: !1374, size: 64, offset: 384)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!30, !293, !1196, !49, !7, !7, !1220, !28}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1214, file: !136, line: 424, baseType: !1378, size: 64, offset: 448)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!1381, !1196, !1381}
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !33, line: 131, baseType: !445)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1214, file: !136, line: 425, baseType: !1383, size: 64, offset: 512)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !1287, !43, !43}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1214, file: !136, line: 426, baseType: !1387, size: 64, offset: 576)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!531, !1287, !1042}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1214, file: !136, line: 427, baseType: !1391, size: 64, offset: 640)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !1287}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1214, file: !136, line: 428, baseType: !1395, size: 64, offset: 704)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!990, !1398, !1420}
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !136, line: 373, size: 384, elements: !1400)
!1400 = !{!1401, !1402, !1403, !1407, !1408, !1409, !1410}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1399, file: !136, line: 374, baseType: !293, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1399, file: !136, line: 375, baseType: !49, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1399, file: !136, line: 376, baseType: !1404, size: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{null, !1398, !762}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1399, file: !136, line: 377, baseType: !28, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1399, file: !136, line: 378, baseType: !30, size: 32, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1399, file: !136, line: 379, baseType: !101, size: 16, offset: 288)
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !136, line: 380, baseType: !1411, size: 64, offset: 320)
!1411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1399, file: !136, line: 380, size: 64, elements: !1412)
!1412 = !{!1413, !1416}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1411, file: !136, line: 386, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !136, line: 386, flags: DIFlagFwdDecl)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1411, file: !136, line: 395, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!990, !28}
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !136, line: 69, flags: DIFlagFwdDecl)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1214, file: !136, line: 433, baseType: !1423, size: 64, offset: 768)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!30, !1196, !1287, !1287, !122}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1214, file: !136, line: 435, baseType: !1427, size: 64, offset: 832)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!30, !1287}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1214, file: !136, line: 436, baseType: !1431, size: 64, offset: 896)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!531, !1287, !43, !43}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1214, file: !136, line: 438, baseType: !1435, size: 64, offset: 960)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !1287, !1438, !1438}
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1214, file: !136, line: 439, baseType: !1440, size: 64, offset: 1024)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!30, !1196, !1220}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1214, file: !136, line: 442, baseType: !1444, size: 64, offset: 1088)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!30, !1447, !293, !1449}
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !136, line: 66, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1214, file: !136, line: 444, baseType: !1451, size: 64, offset: 1152)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !293}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1214, file: !136, line: 445, baseType: !1455, size: 64, offset: 1216)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!30, !1398, !1420}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1197, file: !136, line: 486, baseType: !47, size: 64, offset: 896)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1197, file: !136, line: 487, baseType: !470, size: 320, offset: 960)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1197, file: !136, line: 488, baseType: !1461, size: 32, offset: 1280)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1462, line: 8, baseType: !495)
!1462 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1197, file: !136, line: 489, baseType: !67, size: 32, offset: 1312)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1197, file: !136, line: 490, baseType: !105, size: 128, offset: 1344)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1197, file: !136, line: 491, baseType: !28, size: 64, offset: 1472)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1187, file: !1156, line: 180, baseType: !1467, size: 64, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!990, !293, !1098, !1186, !542, !49, !43}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1187, file: !1156, line: 182, baseType: !1467, size: 64, offset: 384)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1187, file: !1156, line: 184, baseType: !1472, size: 64, offset: 448)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!30, !293, !1098, !1186, !1475}
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1222, line: 625, size: 1344, elements: !1477)
!1477 = !{!1478, !1487, !1643, !1649, !1656, !1657, !1662, !1663, !1668, !1669, !1672, !1676, !1677, !1678, !1679, !1680, !1683}
!1478 = !DIDerivedType(tag: DW_TAG_member, scope: !1476, file: !1222, line: 628, baseType: !1479, size: 128)
!1479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1476, file: !1222, line: 628, size: 128, elements: !1480)
!1480 = !{!1481, !1486}
!1481 = !DIDerivedType(tag: DW_TAG_member, scope: !1479, file: !1222, line: 629, baseType: !1482, size: 128)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1479, file: !1222, line: 629, size: 128, elements: !1483)
!1483 = !{!1484, !1485}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1482, file: !1222, line: 631, baseType: !47, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1482, file: !1222, line: 632, baseType: !47, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1479, file: !1222, line: 635, baseType: !306, size: 128, align: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1476, file: !1222, line: 639, baseType: !1488, size: 64, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1222, line: 733, size: 10240, elements: !1490)
!1490 = !{!1491, !1641}
!1491 = !DIDerivedType(tag: DW_TAG_member, scope: !1489, file: !1222, line: 734, baseType: !1492, size: 10240)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1489, file: !1222, line: 734, size: 10240, elements: !1493)
!1493 = !{!1494, !1498, !1512, !1516, !1517, !1518, !1519, !1520, !1521, !1530, !1531, !1532, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1571, !1573, !1576, !1621, !1622, !1623, !1626, !1627, !1628, !1631, !1632, !1633, !1639, !1640}
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1492, file: !1222, line: 739, baseType: !1495, size: 512, align: 512)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1492, file: !1222, line: 739, size: 512, align: 512, elements: !1496)
!1496 = !{!1497}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1495, file: !1222, line: 747, baseType: !57, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1492, file: !1222, line: 750, baseType: !1499, size: 128, offset: 512)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1500, line: 218, size: 128, elements: !1501)
!1500 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1501 = !{!1502, !1510, !1511}
!1502 = !DIDerivedType(tag: DW_TAG_member, scope: !1499, file: !1500, line: 219, baseType: !1503, size: 32)
!1503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1499, file: !1500, line: 219, size: 32, elements: !1504)
!1504 = !{!1505, !1506}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1503, file: !1500, line: 220, baseType: !67, size: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1503, file: !1500, line: 221, baseType: !1507)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1500, line: 197, baseType: !1508)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1500, line: 197, elements: !1509)
!1509 = !{}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1499, file: !1500, line: 223, baseType: !7, size: 32, offset: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1499, file: !1500, line: 224, baseType: !28, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1492, file: !1222, line: 752, baseType: !1513, size: 64, offset: 640)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!47, !293, !47, !47, !47, !47}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1492, file: !1222, line: 756, baseType: !47, size: 64, offset: 704)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1492, file: !1222, line: 757, baseType: !47, size: 64, offset: 768)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1492, file: !1222, line: 760, baseType: !47, size: 64, offset: 832)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1492, file: !1222, line: 761, baseType: !47, size: 64, offset: 896)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1492, file: !1222, line: 763, baseType: !47, size: 64, offset: 960)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1492, file: !1222, line: 764, baseType: !1522, size: 64, offset: 1024)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1524, line: 299, baseType: !1525)
!1524 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1524, line: 299, size: 64, elements: !1526)
!1526 = !{!1527}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1525, file: !1524, line: 299, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1529, line: 18, baseType: !47)
!1529 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1492, file: !1222, line: 773, baseType: !57, size: 32, offset: 1088)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1492, file: !1222, line: 785, baseType: !57, size: 32, offset: 1120)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1492, file: !1222, line: 795, baseType: !1533, size: 64, offset: 1152)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1222, line: 726, size: 128, elements: !1535)
!1535 = !{!1536, !1537}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1534, file: !1222, line: 727, baseType: !445, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1534, file: !1222, line: 728, baseType: !30, size: 32, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1492, file: !1222, line: 801, baseType: !47, size: 64, offset: 1216)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1492, file: !1222, line: 804, baseType: !319, size: 64, offset: 1280)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1492, file: !1222, line: 806, baseType: !30, size: 32, offset: 1344)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1492, file: !1222, line: 808, baseType: !67, size: 32, offset: 1376)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1492, file: !1222, line: 823, baseType: !470, size: 320, offset: 1408)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1492, file: !1222, line: 825, baseType: !105, size: 128, offset: 1728)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1492, file: !1222, line: 845, baseType: !30, size: 32, offset: 1856)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1492, file: !1222, line: 849, baseType: !47, size: 64, offset: 1920)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1492, file: !1222, line: 850, baseType: !47, size: 64, offset: 1984)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1492, file: !1222, line: 852, baseType: !47, size: 64, offset: 2048)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1492, file: !1222, line: 853, baseType: !47, size: 64, offset: 2112)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1492, file: !1222, line: 854, baseType: !321, size: 64, offset: 2176)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1492, file: !1222, line: 855, baseType: !47, size: 64, offset: 2240)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1492, file: !1222, line: 856, baseType: !47, size: 64, offset: 2304)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1492, file: !1222, line: 857, baseType: !47, size: 64, offset: 2368)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1492, file: !1222, line: 858, baseType: !47, size: 64, offset: 2432)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1492, file: !1222, line: 865, baseType: !809, size: 32, offset: 2496)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1492, file: !1222, line: 867, baseType: !67, size: 32, offset: 2528)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1492, file: !1222, line: 869, baseType: !47, size: 64, offset: 2560)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1492, file: !1222, line: 869, baseType: !47, size: 64, offset: 2624)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1492, file: !1222, line: 869, baseType: !47, size: 64, offset: 2688)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1492, file: !1222, line: 869, baseType: !47, size: 64, offset: 2752)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1492, file: !1222, line: 870, baseType: !47, size: 64, offset: 2816)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1492, file: !1222, line: 870, baseType: !47, size: 64, offset: 2880)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1492, file: !1222, line: 870, baseType: !47, size: 64, offset: 2944)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1492, file: !1222, line: 871, baseType: !47, size: 64, offset: 3008)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1492, file: !1222, line: 871, baseType: !47, size: 64, offset: 3072)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1492, file: !1222, line: 871, baseType: !47, size: 64, offset: 3136)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1492, file: !1222, line: 871, baseType: !47, size: 64, offset: 3200)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1492, file: !1222, line: 873, baseType: !1568, size: 3328, offset: 3264)
!1568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 3328, elements: !1569)
!1569 = !{!1570}
!1570 = !DISubrange(count: 52)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1492, file: !1222, line: 875, baseType: !1572, size: 1280, offset: 6592)
!1572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 1280, elements: !391)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1492, file: !1222, line: 877, baseType: !1574, size: 64, offset: 7872)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1222, line: 877, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1492, file: !1222, line: 880, baseType: !1577, size: 1088, offset: 7936)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1578, line: 72, baseType: !1579)
!1578 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1578, line: 23, size: 1088, elements: !1580)
!1580 = !{!1581, !1582, !1583, !1584, !1585, !1588, !1589, !1590, !1591, !1616, !1617, !1618}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1579, file: !1578, line: 28, baseType: !445, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1579, file: !1578, line: 38, baseType: !321, size: 64, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1579, file: !1578, line: 40, baseType: !47, size: 64, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1579, file: !1578, line: 43, baseType: !470, size: 320, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1579, file: !1578, line: 44, baseType: !1586, size: 64, offset: 512)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1578, line: 44, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1579, file: !1578, line: 48, baseType: !47, size: 64, offset: 576)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1579, file: !1578, line: 59, baseType: !328, size: 256, offset: 640)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1579, file: !1578, line: 60, baseType: !28, size: 64, offset: 896)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1579, file: !1578, line: 61, baseType: !1592, size: 64, offset: 960)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1594)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1595, line: 13, size: 1216, elements: !1596)
!1595 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1596 = !{!1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1594, file: !1595, line: 14, baseType: !28, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1594, file: !1595, line: 15, baseType: !47, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1594, file: !1595, line: 17, baseType: !47, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1594, file: !1595, line: 17, baseType: !47, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1594, file: !1595, line: 18, baseType: !47, size: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1594, file: !1595, line: 18, baseType: !47, size: 64, offset: 320)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1594, file: !1595, line: 19, baseType: !254, size: 64, offset: 384)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1594, file: !1595, line: 21, baseType: !762, size: 64, offset: 448)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1594, file: !1595, line: 23, baseType: !762, size: 64, offset: 512)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1594, file: !1595, line: 24, baseType: !762, size: 64, offset: 576)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1594, file: !1595, line: 25, baseType: !762, size: 64, offset: 640)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1594, file: !1595, line: 26, baseType: !762, size: 64, offset: 704)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1594, file: !1595, line: 27, baseType: !762, size: 64, offset: 768)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1594, file: !1595, line: 28, baseType: !762, size: 64, offset: 832)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1594, file: !1595, line: 29, baseType: !762, size: 64, offset: 896)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1594, file: !1595, line: 30, baseType: !762, size: 64, offset: 960)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1594, file: !1595, line: 31, baseType: !762, size: 64, offset: 1024)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1594, file: !1595, line: 32, baseType: !762, size: 64, offset: 1088)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1594, file: !1595, line: 33, baseType: !762, size: 64, offset: 1152)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1579, file: !1578, line: 63, baseType: !57, size: 32, offset: 1024)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1579, file: !1578, line: 69, baseType: !101, size: 16, offset: 1056)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1579, file: !1578, line: 70, baseType: !1619, size: 16, offset: 1072)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !92, line: 18, baseType: !1620)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !94, line: 23, baseType: !500)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1492, file: !1222, line: 882, baseType: !47, size: 64, offset: 9024)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1492, file: !1222, line: 885, baseType: !67, size: 32, offset: 9088)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1492, file: !1222, line: 886, baseType: !1624, size: 64, offset: 9152)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1222, line: 732, flags: DIFlagFwdDecl)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1492, file: !1222, line: 901, baseType: !615, size: 64, offset: 9216)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1492, file: !1222, line: 904, baseType: !293, size: 64, offset: 9280)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1492, file: !1222, line: 906, baseType: !1629, size: 64, offset: 9344)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1222, line: 906, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1492, file: !1222, line: 930, baseType: !57, size: 32, offset: 9408)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1492, file: !1222, line: 933, baseType: !57, size: 32, offset: 9440)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1492, file: !1222, line: 935, baseType: !1634, size: 64, offset: 9472)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !153, line: 103, size: 64, elements: !1635)
!1635 = !{!1636}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1634, file: !153, line: 104, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !153, line: 101, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1492, file: !1222, line: 940, baseType: !319, size: 64, offset: 9536)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1492, file: !1222, line: 942, baseType: !664, size: 256, offset: 9600)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1489, file: !1222, line: 986, baseType: !1642, offset: 10240)
!1642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, elements: !404)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1476, file: !1222, line: 640, baseType: !1644, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1524, line: 297, baseType: !1645)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1524, line: 297, size: 64, elements: !1646)
!1646 = !{!1647}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1645, file: !1524, line: 297, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1529, line: 19, baseType: !47)
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1476, file: !1222, line: 646, baseType: !1650, size: 64, offset: 256)
!1650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1476, file: !1222, line: 646, size: 64, elements: !1651)
!1651 = !{!1652, !1655}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1650, file: !1222, line: 647, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1654)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1222, line: 542, baseType: !47)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1650, file: !1222, line: 648, baseType: !1654, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1476, file: !1222, line: 666, baseType: !30, size: 32, offset: 320)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1476, file: !1222, line: 667, baseType: !1658, size: 64, offset: 384)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1222, line: 579, size: 320, elements: !1660)
!1660 = !{!1661}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1659, file: !1222, line: 580, baseType: !470, size: 320)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1476, file: !1222, line: 670, baseType: !531, size: 8, offset: 448)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1476, file: !1222, line: 681, baseType: !1664, size: 256, offset: 512)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1476, file: !1222, line: 678, size: 256, elements: !1665)
!1665 = !{!1666, !1667}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1664, file: !1222, line: 679, baseType: !246, size: 192, align: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1664, file: !1222, line: 680, baseType: !47, size: 64, offset: 192)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1476, file: !1222, line: 689, baseType: !105, size: 128, offset: 768)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1476, file: !1222, line: 691, baseType: !1670, size: 64, offset: 896)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1222, line: 691, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1476, file: !1222, line: 694, baseType: !1673, size: 64, offset: 960)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1675)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1222, line: 694, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1476, file: !1222, line: 697, baseType: !47, size: 64, offset: 1024)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1476, file: !1222, line: 699, baseType: !293, size: 64, offset: 1088)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1476, file: !1222, line: 700, baseType: !28, size: 64, offset: 1152)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1476, file: !1222, line: 711, baseType: !319, size: 64, offset: 1216)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1476, file: !1222, line: 717, baseType: !1681, size: 64, offset: 1280)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1222, line: 717, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1476, file: !1222, line: 722, baseType: !1684, offset: 1344)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1222, line: 570, elements: !1509)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1175, file: !1156, line: 90, baseType: !1686, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1175, file: !1156, line: 91, baseType: !1688, size: 64, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1146, file: !1093, line: 120, baseType: !1690, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!1693, !1116}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1695)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !130, line: 39, size: 384, elements: !1696)
!1696 = !{!1697, !1698, !1702, !1706, !1712, !1716}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1695, file: !130, line: 40, baseType: !129, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1695, file: !130, line: 41, baseType: !1699, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!531}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1695, file: !130, line: 42, baseType: !1703, size: 64, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!28}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1695, file: !130, line: 43, baseType: !1707, size: 64, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!254, !1710}
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !130, line: 19, flags: DIFlagFwdDecl)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1695, file: !130, line: 44, baseType: !1713, size: 64, offset: 256)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!254}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1695, file: !130, line: 45, baseType: !869, size: 64, offset: 320)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1146, file: !1093, line: 121, baseType: !1718, size: 64, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!254, !1116}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1146, file: !1093, line: 122, baseType: !1722, size: 64, offset: 320)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{null, !1116, !728, !729}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1092, file: !1093, line: 70, baseType: !237, size: 64, offset: 384)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1092, file: !1093, line: 71, baseType: !1727, size: 32, offset: 448)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1728, line: 19, size: 32, elements: !1729)
!1728 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1729 = !{!1730}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1727, file: !1728, line: 20, baseType: !373, size: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1092, file: !1093, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1092, file: !1093, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1092, file: !1093, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1092, file: !1093, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1092, file: !1093, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1089, file: !116, line: 47, baseType: !1079, size: 64, offset: 512)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1089, file: !116, line: 48, baseType: !1098, size: 64, offset: 576)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1089, file: !116, line: 49, baseType: !1739, size: 64, offset: 640)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !116, line: 49, flags: DIFlagFwdDecl)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1089, file: !116, line: 50, baseType: !702, size: 64, offset: 704)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1080, file: !116, line: 418, baseType: !1743, size: 64, offset: 1408)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !116, line: 53, size: 448, elements: !1745)
!1745 = !{!1746, !1747, !1752, !1756, !1760, !1764}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1744, file: !116, line: 54, baseType: !1163, size: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1744, file: !116, line: 55, baseType: !1748, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!990, !1743, !1751, !542}
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1744, file: !116, line: 57, baseType: !1753, size: 64, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!990, !1743, !1751, !24, !43}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1744, file: !116, line: 59, baseType: !1757, size: 64, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{null, !1079, !24}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1744, file: !116, line: 60, baseType: !1761, size: 64, offset: 320)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!30, !1079}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1744, file: !116, line: 61, baseType: !1765, size: 64, offset: 384)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{null, !1079}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1080, file: !116, line: 419, baseType: !24, size: 64, offset: 1472)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1080, file: !116, line: 420, baseType: !24, size: 64, offset: 1536)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1080, file: !116, line: 421, baseType: !1098, size: 64, offset: 1600)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1080, file: !116, line: 424, baseType: !1772, size: 64, offset: 1664)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1774)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !116, line: 424, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1080, file: !116, line: 425, baseType: !1776, size: 64, offset: 1728)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1080, file: !116, line: 426, baseType: !7, size: 32, offset: 1792)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1080, file: !116, line: 435, baseType: !328, size: 256, offset: 1856)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1080, file: !116, line: 437, baseType: !1781, size: 64, offset: 2112)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1783, line: 69, size: 320, elements: !1784)
!1783 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1784 = !{!1785, !1786, !1787, !1804, !1806, !1810, !1811}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1782, file: !1783, line: 70, baseType: !24, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1782, file: !1783, line: 71, baseType: !1079, size: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1782, file: !1783, line: 72, baseType: !1788, size: 64, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1790)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1783, line: 47, size: 256, elements: !1791)
!1791 = !{!1792, !1793, !1799, !1803}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1790, file: !1783, line: 49, baseType: !7, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1790, file: !1783, line: 51, baseType: !1794, size: 64, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!30, !24, !1797}
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1782)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1790, file: !1783, line: 53, baseType: !1800, size: 64, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!30, !542, !1797}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1790, file: !1783, line: 55, baseType: !869, size: 64, offset: 192)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1782, file: !1783, line: 73, baseType: !1805, size: 16, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1782, file: !1783, line: 74, baseType: !1807, size: 8, offset: 208)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !92, line: 16, baseType: !1808)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !94, line: 20, baseType: !1809)
!1809 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1782, file: !1783, line: 75, baseType: !91, size: 8, offset: 216)
!1811 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !1783, line: 76, baseType: !1812, size: 64, offset: 256)
!1812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1782, file: !1783, line: 76, size: 64, elements: !1813)
!1813 = !{!1814, !1815, !1822}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1812, file: !1783, line: 77, baseType: !28, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1812, file: !1783, line: 78, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1818)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1783, line: 86, size: 128, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1818, file: !1783, line: 87, baseType: !7, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1818, file: !1783, line: 88, baseType: !542, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1812, file: !1783, line: 79, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1825)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1783, line: 92, size: 256, elements: !1826)
!1826 = !{!1827, !1828, !1829, !1831, !1832}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1825, file: !1783, line: 94, baseType: !7, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1825, file: !1783, line: 95, baseType: !7, size: 32, offset: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1825, file: !1783, line: 96, baseType: !1830, size: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1825, file: !1783, line: 97, baseType: !1788, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1825, file: !1783, line: 98, baseType: !28, size: 64, offset: 192)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1080, file: !116, line: 438, baseType: !7, size: 32, offset: 2176)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1080, file: !116, line: 441, baseType: !7, size: 32, offset: 2208)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1080, file: !116, line: 442, baseType: !1772, size: 64, offset: 2240)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1080, file: !116, line: 443, baseType: !1776, size: 64, offset: 2304)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1080, file: !116, line: 444, baseType: !531, size: 8, offset: 2368)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1080, file: !116, line: 451, baseType: !531, size: 8, offset: 2376)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1080, file: !116, line: 454, baseType: !7, size: 32, offset: 2400)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1080, file: !116, line: 455, baseType: !1841, size: 64, offset: 2432)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1843, line: 23, size: 96, elements: !1844)
!1843 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1844 = !{!1845, !1846, !1847}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1842, file: !1843, line: 24, baseType: !30, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1842, file: !1843, line: 24, baseType: !30, size: 32, offset: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1842, file: !1843, line: 24, baseType: !30, size: 32, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1080, file: !116, line: 458, baseType: !1849, size: 64, offset: 2496)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!30}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1080, file: !116, line: 460, baseType: !1853, size: 4032, align: 512, offset: 2560)
!1853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1854, size: 4032, elements: !1870)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !116, line: 362, size: 576, elements: !1855)
!1855 = !{!1856, !1857, !1858}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1854, file: !116, line: 363, baseType: !28, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1854, file: !116, line: 364, baseType: !7, size: 32, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1854, file: !116, line: 367, baseType: !1859, size: 448, offset: 128)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !116, line: 319, size: 448, elements: !1860)
!1860 = !{!1861, !1862}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1859, file: !116, line: 320, baseType: !1079, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1859, file: !116, line: 321, baseType: !1863, size: 384, offset: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1864, line: 40, size: 384, elements: !1865)
!1864 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1865 = !{!1866}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1863, file: !1864, line: 41, baseType: !1867, size: 384, align: 64)
!1867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 384, align: 64, elements: !1868)
!1868 = !{!1869}
!1869 = !DISubrange(count: 2)
!1870 = !{!1871}
!1871 = !DISubrange(count: 7)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1080, file: !116, line: 463, baseType: !1873, size: 192, offset: 6592)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1874, line: 8, size: 192, elements: !1875)
!1874 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1875 = !{!1876, !1877, !1879}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1873, file: !1874, line: 10, baseType: !7, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1873, file: !1874, line: 11, baseType: !1878, size: 64, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1873, file: !1874, line: 12, baseType: !1880, size: 64, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1882, line: 59, size: 48, elements: !1883)
!1882 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1883 = !{!1884, !1885, !1886, !1887, !1888, !1889}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1881, file: !1882, line: 60, baseType: !1619, size: 16)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1881, file: !1882, line: 61, baseType: !1619, size: 16, offset: 16)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1881, file: !1882, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1881, file: !1882, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1881, file: !1882, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1881, file: !1882, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1080, file: !116, line: 465, baseType: !47, size: 64, offset: 6784)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1080, file: !116, line: 469, baseType: !7, size: 32, offset: 6848)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1080, file: !116, line: 470, baseType: !105, size: 128, offset: 6912)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1080, file: !116, line: 471, baseType: !1894, size: 64, offset: 7040)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1896, line: 33, size: 96, elements: !1897)
!1896 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1897 = !{!1898, !1899, !1900, !1901}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1895, file: !1896, line: 37, baseType: !30, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1895, file: !1896, line: 43, baseType: !30, size: 32, offset: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1895, file: !1896, line: 45, baseType: !34, size: 16, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1895, file: !1896, line: 47, baseType: !34, size: 16, offset: 80)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1080, file: !116, line: 476, baseType: !1903, size: 64, offset: 7104)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !116, line: 378, size: 256, elements: !1905)
!1905 = !{!1906, !1922, !1923, !1924}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1904, file: !116, line: 379, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1909, line: 204, baseType: !1910)
!1909 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1909, line: 197, size: 192, elements: !1911)
!1911 = !{!1912, !1914, !1915, !1916, !1918, !1920}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1910, file: !1909, line: 198, baseType: !1913, size: 32)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1909, line: 21, baseType: !496)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1910, file: !1909, line: 199, baseType: !95, size: 8, offset: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1910, file: !1909, line: 200, baseType: !95, size: 8, offset: 40)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1910, file: !1909, line: 201, baseType: !1917, size: 16, offset: 48)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1909, line: 17, baseType: !102)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1910, file: !1909, line: 202, baseType: !1919, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1909, line: 16, baseType: !446)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1910, file: !1909, line: 203, baseType: !1921, size: 64, offset: 128)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1909, line: 22, baseType: !446)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1904, file: !116, line: 380, baseType: !7, size: 32, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1904, file: !116, line: 381, baseType: !542, size: 64, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1904, file: !116, line: 382, baseType: !542, size: 64, offset: 192)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1080, file: !116, line: 477, baseType: !1904, size: 256, offset: 7168)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1080, file: !116, line: 480, baseType: !1927, size: 64, offset: 7424)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !116, line: 480, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1080, file: !116, line: 483, baseType: !1930, size: 64, offset: 7488)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !116, line: 483, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1080, file: !116, line: 488, baseType: !542, size: 64, offset: 7552)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1080, file: !116, line: 492, baseType: !28, size: 64, offset: 7616)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1080, file: !116, line: 493, baseType: !7, size: 32, offset: 7680)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1080, file: !116, line: 495, baseType: !28, size: 64, offset: 7744)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1080, file: !116, line: 496, baseType: !7, size: 32, offset: 7808)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1080, file: !116, line: 499, baseType: !7, size: 32, offset: 7840)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1080, file: !116, line: 500, baseType: !1939, size: 64, offset: 7872)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1941, line: 45, baseType: !1942)
!1941 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1080, file: !116, line: 503, baseType: !7, size: 32, offset: 7936)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1080, file: !116, line: 504, baseType: !1945, size: 64, offset: 8000)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1948, line: 96, size: 192, elements: !1949)
!1948 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1949 = !{!1950, !1951, !2004, !2007}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1947, file: !1948, line: 97, baseType: !7, size: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1947, file: !1948, line: 98, baseType: !1952, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1948, line: 24, size: 3072, elements: !1954)
!1954 = !{!1955, !1957, !1958, !1959, !1960, !1973, !1974, !1975, !1976, !1988, !1989, !1990, !2001, !2002, !2003}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1953, file: !1948, line: 26, baseType: !1956, size: 128)
!1956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 128, elements: !1868)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1953, file: !1948, line: 27, baseType: !1956, size: 128, offset: 128)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1953, file: !1948, line: 28, baseType: !30, size: 32, offset: 256)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1953, file: !1948, line: 31, baseType: !67, size: 32, align: 512, offset: 512)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1953, file: !1948, line: 32, baseType: !1961, size: 960, offset: 576)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1962, line: 206, size: 960, elements: !1963)
!1962 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1963 = !{!1964, !1965, !1968, !1970, !1971, !1972}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1961, file: !1962, line: 207, baseType: !309, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1961, file: !1962, line: 208, baseType: !1966, size: 256, offset: 64)
!1966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1967, size: 256, elements: !391)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1961, file: !1962, line: 209, baseType: !1969, size: 256, offset: 320)
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 256, elements: !391)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1961, file: !1962, line: 213, baseType: !762, size: 64, offset: 576)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1961, file: !1962, line: 215, baseType: !764, size: 256, offset: 640)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1961, file: !1962, line: 216, baseType: !91, size: 8, offset: 896)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1953, file: !1948, line: 33, baseType: !47, size: 64, offset: 1536)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1953, file: !1948, line: 34, baseType: !47, size: 64, offset: 1600)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1953, file: !1948, line: 35, baseType: !531, size: 8, offset: 1664)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1953, file: !1948, line: 36, baseType: !1977, size: 320, offset: 1728)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1978, line: 11, size: 320, elements: !1979)
!1978 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1979 = !{!1980, !1981, !1982, !1987}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1977, file: !1978, line: 16, baseType: !386, size: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1977, file: !1978, line: 17, baseType: !47, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1977, file: !1978, line: 18, baseType: !1983, size: 64, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{null, !1986}
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1977, file: !1978, line: 19, baseType: !495, size: 32, offset: 256)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1953, file: !1948, line: 37, baseType: !664, size: 256, offset: 2048)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1953, file: !1948, line: 38, baseType: !306, size: 128, align: 64, offset: 2304)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1953, file: !1948, line: 39, baseType: !1991, size: 64, offset: 2432)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1948, line: 49, size: 768, elements: !1993)
!1993 = !{!1994, !1995, !1996, !1997, !1998, !1999, !2000}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1992, file: !1948, line: 50, baseType: !67, size: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1992, file: !1948, line: 51, baseType: !1969, size: 256, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1992, file: !1948, line: 53, baseType: !1969, size: 256, offset: 320)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1992, file: !1948, line: 54, baseType: !47, size: 64, offset: 576)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1992, file: !1948, line: 55, baseType: !1991, size: 64, offset: 640)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1992, file: !1948, line: 56, baseType: !30, size: 32, offset: 704)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1992, file: !1948, line: 57, baseType: !30, size: 32, offset: 736)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1953, file: !1948, line: 40, baseType: !47, size: 64, offset: 2496)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1953, file: !1948, line: 42, baseType: !30, size: 32, offset: 2560)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1953, file: !1948, line: 43, baseType: !1946, size: 64, offset: 2624)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1947, file: !1948, line: 99, baseType: !2005, offset: 128)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2006, line: 211, elements: !1509)
!2006 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1947, file: !1948, line: 100, baseType: !2008, size: 64, offset: 128)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1948, line: 63, size: 3008, elements: !2010)
!2010 = !{!2011, !2012, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2042}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2009, file: !1948, line: 64, baseType: !1991, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2009, file: !1948, line: 65, baseType: !2013, size: 192, offset: 64)
!2013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1991, size: 192, elements: !365)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2009, file: !1948, line: 67, baseType: !30, size: 32, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2009, file: !1948, line: 68, baseType: !328, size: 256, offset: 320)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2009, file: !1948, line: 69, baseType: !67, size: 32, offset: 576)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2009, file: !1948, line: 70, baseType: !328, size: 256, offset: 640)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2009, file: !1948, line: 71, baseType: !47, size: 64, offset: 896)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2009, file: !1948, line: 72, baseType: !47, size: 64, offset: 960)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2009, file: !1948, line: 73, baseType: !47, size: 64, offset: 1024)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2009, file: !1948, line: 74, baseType: !47, size: 64, offset: 1088)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2009, file: !1948, line: 75, baseType: !47, size: 64, offset: 1152)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2009, file: !1948, line: 76, baseType: !47, size: 64, offset: 1216)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2009, file: !1948, line: 77, baseType: !47, size: 64, offset: 1280)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2009, file: !1948, line: 78, baseType: !47, size: 64, offset: 1344)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2009, file: !1948, line: 79, baseType: !531, size: 8, offset: 1408)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2009, file: !1948, line: 80, baseType: !47, size: 64, offset: 1472)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2009, file: !1948, line: 81, baseType: !328, size: 256, offset: 1536)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2009, file: !1948, line: 82, baseType: !703, size: 256, offset: 1792)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2009, file: !1948, line: 84, baseType: !57, size: 32, offset: 2048)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2009, file: !1948, line: 87, baseType: !47, size: 64, offset: 2112)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2009, file: !1948, line: 88, baseType: !47, size: 64, offset: 2176)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2009, file: !1948, line: 89, baseType: !2034, size: 704, offset: 2240)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !665, line: 111, size: 704, elements: !2035)
!2035 = !{!2036, !2037, !2038, !2041}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2034, file: !665, line: 112, baseType: !664, size: 256)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2034, file: !665, line: 113, baseType: !1977, size: 320, offset: 256)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2034, file: !665, line: 116, baseType: !2039, size: 64, offset: 576)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !665, line: 18, flags: DIFlagFwdDecl)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2034, file: !665, line: 117, baseType: !30, size: 32, offset: 640)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2009, file: !1948, line: 90, baseType: !1946, size: 64, offset: 2944)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1080, file: !116, line: 515, baseType: !2044, size: 64, offset: 8064)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2046, line: 117, size: 128, elements: !2047)
!2046 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2047 = !{!2048, !2049, !2050}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2045, file: !2046, line: 118, baseType: !462, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2045, file: !2046, line: 119, baseType: !462, size: 32, offset: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2045, file: !2046, line: 120, baseType: !762, size: 64, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1080, file: !116, line: 516, baseType: !7, size: 32, offset: 8128)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1080, file: !116, line: 519, baseType: !7, size: 32, offset: 8160)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1080, file: !116, line: 520, baseType: !2054, size: 64, offset: 8192)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1080, file: !116, line: 523, baseType: !2056, size: 64, offset: 8256)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !116, line: 523, flags: DIFlagFwdDecl)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1080, file: !116, line: 524, baseType: !7, size: 32, offset: 8320)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1080, file: !116, line: 525, baseType: !2061, size: 64, offset: 8384)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !116, line: 525, flags: DIFlagFwdDecl)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1080, file: !116, line: 526, baseType: !7, size: 32, offset: 8448)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1080, file: !116, line: 533, baseType: !28, size: 64, offset: 8512)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1080, file: !116, line: 534, baseType: !7, size: 32, offset: 8576)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1080, file: !116, line: 535, baseType: !2068, size: 64, offset: 8640)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1080, file: !116, line: 536, baseType: !7, size: 32, offset: 8704)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1080, file: !116, line: 539, baseType: !30, size: 32, offset: 8736)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1080, file: !116, line: 540, baseType: !2072, size: 64, offset: 8768)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2074, line: 32, size: 64, elements: !2075)
!2074 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2075 = !{!2076, !2077}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2073, file: !2074, line: 33, baseType: !462, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2073, file: !2074, line: 34, baseType: !462, size: 32, offset: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1080, file: !116, line: 563, baseType: !105, size: 128, offset: 8832)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1080, file: !116, line: 565, baseType: !105, size: 128, offset: 8960)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1080, file: !116, line: 568, baseType: !2081, size: 64, offset: 9088)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{null}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1080, file: !116, line: 570, baseType: !57, size: 32, offset: 9152)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1056, file: !136, line: 2382, baseType: !1055, size: 64, offset: 448)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1056, file: !136, line: 2383, baseType: !382, size: 64, offset: 512)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1056, file: !136, line: 2385, baseType: !2088, offset: 576)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2006, line: 206, elements: !1509)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1056, file: !136, line: 2386, baseType: !2088, offset: 576)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1056, file: !136, line: 2387, baseType: !2088, offset: 576)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1056, file: !136, line: 2388, baseType: !2092, offset: 576)
!2092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2088, elements: !365)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1056, file: !136, line: 2390, baseType: !2088, offset: 576)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1056, file: !136, line: 2391, baseType: !2088, offset: 576)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1056, file: !136, line: 2392, baseType: !2088, offset: 576)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1056, file: !136, line: 2393, baseType: !2088, offset: 576)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1047, file: !136, line: 1197, baseType: !2098, size: 64, offset: 384)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2100)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !136, line: 2057, size: 1664, elements: !2101)
!2101 = !{!2102, !2106, !2110, !2111, !2115, !2119, !2123, !2124, !2125, !2129, !2133, !2137, !2138, !2139, !2145, !2149, !2150, !2192, !2193, !2194, !2195, !2199, !2203, !2250, !2265, !2266}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2100, file: !136, line: 2058, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!838, !1046}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2100, file: !136, line: 2059, baseType: !2107, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{null, !838}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2100, file: !136, line: 2060, baseType: !2107, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2100, file: !136, line: 2062, baseType: !2112, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{null, !838, !30}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2100, file: !136, line: 2063, baseType: !2116, size: 64, offset: 256)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!30, !838, !1281}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2100, file: !136, line: 2064, baseType: !2120, size: 64, offset: 320)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!30, !838}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2100, file: !136, line: 2065, baseType: !2107, size: 64, offset: 384)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2100, file: !136, line: 2066, baseType: !1075, size: 64, offset: 448)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2100, file: !136, line: 2067, baseType: !2126, size: 64, offset: 512)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!30, !1046, !30}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2100, file: !136, line: 2068, baseType: !2130, size: 64, offset: 576)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!30, !1046, !135}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2100, file: !136, line: 2069, baseType: !2134, size: 64, offset: 640)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!30, !1046}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2100, file: !136, line: 2070, baseType: !2130, size: 64, offset: 704)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2100, file: !136, line: 2071, baseType: !2134, size: 64, offset: 768)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2100, file: !136, line: 2072, baseType: !2140, size: 64, offset: 832)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!30, !798, !2143}
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !136, line: 62, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2100, file: !136, line: 2073, baseType: !2146, size: 64, offset: 896)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!30, !1046, !1878, !542}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2100, file: !136, line: 2074, baseType: !1075, size: 64, offset: 960)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2100, file: !136, line: 2076, baseType: !2151, size: 64, offset: 1024)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!30, !2154, !798}
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2156, line: 17, size: 960, elements: !2157)
!2156 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2157 = !{!2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2187, !2188, !2191}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2155, file: !2156, line: 18, baseType: !542, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2155, file: !2156, line: 19, baseType: !43, size: 64, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2155, file: !2156, line: 20, baseType: !43, size: 64, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2155, file: !2156, line: 21, baseType: !43, size: 64, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2155, file: !2156, line: 22, baseType: !43, size: 64, offset: 256)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2155, file: !2156, line: 23, baseType: !49, size: 64, offset: 320)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2155, file: !2156, line: 24, baseType: !49, size: 64, offset: 384)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2155, file: !2156, line: 25, baseType: !328, size: 256, offset: 448)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2155, file: !2156, line: 26, baseType: !2167, size: 64, offset: 704)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2169)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2156, line: 32, size: 256, elements: !2170)
!2170 = !{!2171, !2175, !2179, !2183}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2169, file: !2156, line: 33, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!28, !2154, !48}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2169, file: !2156, line: 34, baseType: !2176, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{null, !2154, !28}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2169, file: !2156, line: 35, baseType: !2180, size: 64, offset: 128)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!28, !2154, !28, !48}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2169, file: !2156, line: 36, baseType: !2184, size: 64, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!30, !2154, !28}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2155, file: !2156, line: 27, baseType: !30, size: 32, offset: 768)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2155, file: !2156, line: 28, baseType: !2189, size: 64, offset: 832)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2155, file: !2156, line: 29, baseType: !28, size: 64, offset: 896)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2100, file: !136, line: 2077, baseType: !2151, size: 64, offset: 1088)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2100, file: !136, line: 2078, baseType: !2151, size: 64, offset: 1152)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2100, file: !136, line: 2079, baseType: !2151, size: 64, offset: 1216)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2100, file: !136, line: 2081, baseType: !2196, size: 64, offset: 1280)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!990, !1046, !30, !542, !43, !49}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2100, file: !136, line: 2082, baseType: !2200, size: 64, offset: 1344)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!990, !1046, !30, !24, !43, !49}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2100, file: !136, line: 2083, baseType: !2204, size: 64, offset: 1408)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!2207, !838}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !141, line: 296, size: 1664, elements: !2210)
!2210 = !{!2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2235, !2236, !2237}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2209, file: !141, line: 297, baseType: !386, size: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2209, file: !141, line: 298, baseType: !105, size: 128, offset: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2209, file: !141, line: 299, baseType: !105, size: 128, offset: 256)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2209, file: !141, line: 300, baseType: !105, size: 128, offset: 384)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2209, file: !141, line: 301, baseType: !328, size: 256, offset: 512)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2209, file: !141, line: 302, baseType: !67, size: 32, offset: 768)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2209, file: !141, line: 303, baseType: !57, size: 32, offset: 800)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2209, file: !141, line: 304, baseType: !1046, size: 64, offset: 832)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2209, file: !141, line: 305, baseType: !2220, size: 64, offset: 896)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !141, line: 68, size: 64, elements: !2221)
!2221 = !{!2222, !2234}
!2222 = !DIDerivedType(tag: DW_TAG_member, scope: !2220, file: !141, line: 69, baseType: !2223, size: 32)
!2223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2220, file: !141, line: 69, size: 32, elements: !2224)
!2224 = !{!2225, !2226, !2227}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2223, file: !141, line: 70, baseType: !408, size: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2223, file: !141, line: 71, baseType: !426, size: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2223, file: !141, line: 72, baseType: !2228, size: 32)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2229, line: 24, baseType: !2230)
!2229 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2229, line: 22, size: 32, elements: !2231)
!2231 = !{!2232}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2230, file: !2229, line: 23, baseType: !2233, size: 32)
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2229, line: 20, baseType: !414)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2220, file: !141, line: 74, baseType: !140, size: 32, offset: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2209, file: !141, line: 306, baseType: !49, size: 64, offset: 960)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2209, file: !141, line: 307, baseType: !47, size: 64, offset: 1024)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2209, file: !141, line: 308, baseType: !2238, size: 576, offset: 1088)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !141, line: 205, size: 576, elements: !2239)
!2239 = !{!2240, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2238, file: !141, line: 206, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !141, line: 66, baseType: !51)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2238, file: !141, line: 207, baseType: !2241, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2238, file: !141, line: 208, baseType: !2241, size: 64, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2238, file: !141, line: 209, baseType: !2241, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2238, file: !141, line: 210, baseType: !2241, size: 64, offset: 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2238, file: !141, line: 211, baseType: !2241, size: 64, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2238, file: !141, line: 212, baseType: !2241, size: 64, offset: 384)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2238, file: !141, line: 213, baseType: !486, size: 64, offset: 448)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2238, file: !141, line: 214, baseType: !486, size: 64, offset: 512)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2100, file: !136, line: 2085, baseType: !2251, size: 64, offset: 1472)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!762, !1046, !2254}
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2256, line: 15, size: 256, elements: !2257)
!2256 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2257 = !{!2258, !2259, !2260, !2261, !2262}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2255, file: !2256, line: 16, baseType: !1042, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2255, file: !2256, line: 19, baseType: !30, size: 32, offset: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2255, file: !2256, line: 26, baseType: !47, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2255, file: !2256, line: 33, baseType: !47, size: 64, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2255, file: !2256, line: 36, baseType: !2263, size: 64, offset: 192)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1222, line: 33, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2100, file: !136, line: 2087, baseType: !2251, size: 64, offset: 1536)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2100, file: !136, line: 2089, baseType: !1075, size: 64, offset: 1600)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1047, file: !136, line: 1198, baseType: !2268, size: 64, offset: 448)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2270)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !141, line: 324, size: 704, elements: !2271)
!2271 = !{!2272, !2276, !2280, !2284, !2285, !2286, !2287, !2288, !2293, !2298, !2302}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2270, file: !141, line: 325, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!30, !2208}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2270, file: !141, line: 326, baseType: !2277, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!2208, !1046, !30}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2270, file: !141, line: 327, baseType: !2281, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{null, !2208}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2270, file: !141, line: 328, baseType: !2273, size: 64, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2270, file: !141, line: 329, baseType: !2273, size: 64, offset: 256)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2270, file: !141, line: 330, baseType: !2273, size: 64, offset: 320)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2270, file: !141, line: 331, baseType: !2126, size: 64, offset: 384)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2270, file: !141, line: 334, baseType: !2289, size: 64, offset: 448)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!2292, !838}
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2270, file: !141, line: 335, baseType: !2294, size: 64, offset: 512)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!30, !838, !2297}
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2270, file: !141, line: 337, baseType: !2299, size: 64, offset: 576)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!30, !838, !2292}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2270, file: !141, line: 339, baseType: !2303, size: 64, offset: 640)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!30, !1046, !2306}
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1047, file: !136, line: 1199, baseType: !2308, size: 64, offset: 512)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2310)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !141, line: 430, size: 704, elements: !2311)
!2311 = !{!2312, !2316, !2317, !2321, !2322, !2323, !2338, !2361, !2365, !2366, !2389}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2310, file: !141, line: 431, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!30, !1046, !30, !30, !959}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2310, file: !141, line: 432, baseType: !2126, size: 64, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2310, file: !141, line: 433, baseType: !2318, size: 64, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!30, !1046, !7}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2310, file: !141, line: 434, baseType: !2318, size: 64, offset: 192)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2310, file: !141, line: 435, baseType: !2126, size: 64, offset: 256)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2310, file: !141, line: 436, baseType: !2324, size: 64, offset: 320)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!30, !1046, !30, !2327}
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !141, line: 417, size: 256, elements: !2329)
!2329 = !{!2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2328, file: !141, line: 418, baseType: !30, size: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2328, file: !141, line: 419, baseType: !7, size: 32, offset: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2328, file: !141, line: 420, baseType: !7, size: 32, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2328, file: !141, line: 422, baseType: !7, size: 32, offset: 96)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2328, file: !141, line: 423, baseType: !7, size: 32, offset: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2328, file: !141, line: 424, baseType: !7, size: 32, offset: 160)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2328, file: !141, line: 425, baseType: !7, size: 32, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2328, file: !141, line: 426, baseType: !7, size: 32, offset: 224)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2310, file: !141, line: 437, baseType: !2339, size: 64, offset: 384)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!30, !1046, !2220, !2342}
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !141, line: 345, size: 960, elements: !2344)
!2344 = !{!2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2343, file: !141, line: 346, baseType: !30, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2343, file: !141, line: 347, baseType: !445, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2343, file: !141, line: 348, baseType: !445, size: 64, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2343, file: !141, line: 349, baseType: !445, size: 64, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2343, file: !141, line: 350, baseType: !445, size: 64, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2343, file: !141, line: 351, baseType: !445, size: 64, offset: 320)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2343, file: !141, line: 352, baseType: !445, size: 64, offset: 384)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2343, file: !141, line: 353, baseType: !325, size: 64, offset: 448)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2343, file: !141, line: 355, baseType: !325, size: 64, offset: 512)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2343, file: !141, line: 356, baseType: !30, size: 32, offset: 576)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2343, file: !141, line: 357, baseType: !30, size: 32, offset: 608)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2343, file: !141, line: 358, baseType: !445, size: 64, offset: 640)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2343, file: !141, line: 359, baseType: !445, size: 64, offset: 704)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2343, file: !141, line: 360, baseType: !445, size: 64, offset: 768)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2343, file: !141, line: 361, baseType: !325, size: 64, offset: 832)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2343, file: !141, line: 362, baseType: !30, size: 32, offset: 896)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2310, file: !141, line: 438, baseType: !2362, size: 64, offset: 448)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!30, !1046, !2306, !2342}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2310, file: !141, line: 440, baseType: !2339, size: 64, offset: 512)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2310, file: !141, line: 441, baseType: !2367, size: 64, offset: 576)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!30, !1046, !2370}
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !141, line: 411, size: 1408, elements: !2372)
!2372 = !{!2373, !2374}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2371, file: !141, line: 412, baseType: !7, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2371, file: !141, line: 413, baseType: !2375, size: 1344, offset: 64)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2376, size: 1344, elements: !365)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !141, line: 397, size: 448, elements: !2377)
!2377 = !{!2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2388}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2376, file: !141, line: 398, baseType: !7, size: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2376, file: !141, line: 399, baseType: !7, size: 32, offset: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2376, file: !141, line: 401, baseType: !7, size: 32, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2376, file: !141, line: 402, baseType: !7, size: 32, offset: 96)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2376, file: !141, line: 403, baseType: !7, size: 32, offset: 128)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2376, file: !141, line: 404, baseType: !7, size: 32, offset: 160)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2376, file: !141, line: 405, baseType: !7, size: 32, offset: 192)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2376, file: !141, line: 406, baseType: !447, size: 64, offset: 256)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2376, file: !141, line: 407, baseType: !2387, size: 64, offset: 320)
!2387 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !33, line: 132, baseType: !445)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2376, file: !141, line: 408, baseType: !2387, size: 64, offset: 384)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2310, file: !141, line: 442, baseType: !2318, size: 64, offset: 640)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1047, file: !136, line: 1200, baseType: !2391, size: 64, offset: 576)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2393)
!2393 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !136, line: 54, flags: DIFlagFwdDecl)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1047, file: !136, line: 1201, baseType: !47, size: 64, offset: 640)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1047, file: !136, line: 1202, baseType: !47, size: 64, offset: 704)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1047, file: !136, line: 1203, baseType: !47, size: 64, offset: 768)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1047, file: !136, line: 1204, baseType: !798, size: 64, offset: 832)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1047, file: !136, line: 1205, baseType: !470, size: 320, offset: 896)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1047, file: !136, line: 1206, baseType: !30, size: 32, offset: 1216)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1047, file: !136, line: 1207, baseType: !57, size: 32, offset: 1248)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1047, file: !136, line: 1209, baseType: !28, size: 64, offset: 1280)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1047, file: !136, line: 1211, baseType: !2403, size: 64, offset: 1344)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2406)
!2406 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !136, line: 1211, flags: DIFlagFwdDecl)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1047, file: !136, line: 1223, baseType: !2408, size: 64, offset: 1408)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !815, line: 34, size: 64, elements: !2409)
!2409 = !{!2410}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2408, file: !815, line: 35, baseType: !818, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1047, file: !136, line: 1224, baseType: !105, size: 128, offset: 1472)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1047, file: !136, line: 1225, baseType: !2413, size: 64, offset: 1600)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !136, line: 1225, flags: DIFlagFwdDecl)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1047, file: !136, line: 1226, baseType: !2416, size: 64, offset: 1664)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !136, line: 1226, flags: DIFlagFwdDecl)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1047, file: !136, line: 1227, baseType: !2419, size: 64, offset: 1728)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !136, line: 50, flags: DIFlagFwdDecl)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1047, file: !136, line: 1228, baseType: !2422, size: 64, offset: 1792)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !136, line: 1228, flags: DIFlagFwdDecl)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1047, file: !136, line: 1229, baseType: !386, size: 128, offset: 1856)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1047, file: !136, line: 1230, baseType: !7, size: 32, offset: 1984)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1047, file: !136, line: 1231, baseType: !2427, size: 2496, offset: 2048)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !141, line: 521, size: 2496, elements: !2428)
!2428 = !{!2429, !2430, !2431, !2433, !2465}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2427, file: !141, line: 522, baseType: !7, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2427, file: !141, line: 523, baseType: !470, size: 320, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2427, file: !141, line: 524, baseType: !2432, size: 192, offset: 384)
!2432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, size: 192, elements: !365)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2427, file: !141, line: 525, baseType: !2434, size: 1728, offset: 576)
!2434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2435, size: 1728, elements: !365)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !141, line: 222, size: 576, elements: !2436)
!2436 = !{!2437, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2435, file: !141, line: 223, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !141, line: 445, size: 256, elements: !2440)
!2440 = !{!2441, !2442, !2455, !2456}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2439, file: !141, line: 446, baseType: !30, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2439, file: !141, line: 447, baseType: !2443, size: 64, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2445)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !141, line: 312, size: 512, elements: !2446)
!2446 = !{!2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2445, file: !141, line: 313, baseType: !2126, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2445, file: !141, line: 314, baseType: !2126, size: 64, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2445, file: !141, line: 315, baseType: !2126, size: 64, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2445, file: !141, line: 316, baseType: !2126, size: 64, offset: 192)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2445, file: !141, line: 317, baseType: !2273, size: 64, offset: 256)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2445, file: !141, line: 318, baseType: !2273, size: 64, offset: 320)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2445, file: !141, line: 319, baseType: !2273, size: 64, offset: 384)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2445, file: !141, line: 320, baseType: !2303, size: 64, offset: 448)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2439, file: !141, line: 448, baseType: !1079, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2439, file: !141, line: 449, baseType: !2438, size: 64, offset: 192)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2435, file: !141, line: 224, baseType: !30, size: 32, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2435, file: !141, line: 226, baseType: !105, size: 128, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2435, file: !141, line: 227, baseType: !47, size: 64, offset: 256)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2435, file: !141, line: 228, baseType: !7, size: 32, offset: 320)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2435, file: !141, line: 229, baseType: !7, size: 32, offset: 352)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2435, file: !141, line: 230, baseType: !2241, size: 64, offset: 384)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2435, file: !141, line: 231, baseType: !2241, size: 64, offset: 448)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2435, file: !141, line: 232, baseType: !28, size: 64, offset: 512)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2427, file: !141, line: 526, baseType: !2466, size: 192, offset: 2304)
!2466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2443, size: 192, elements: !365)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1047, file: !136, line: 1233, baseType: !2468, size: 2368, offset: 4544)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !136, line: 1184, size: 2368, elements: !2469)
!2469 = !{!2470, !2471, !2472}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2468, file: !136, line: 1185, baseType: !34, size: 16)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2468, file: !136, line: 1186, baseType: !34, size: 16, offset: 16)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2468, file: !136, line: 1187, baseType: !2473, size: 2304, offset: 64)
!2473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2474, size: 2304, elements: !365)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2475, line: 12, size: 768, elements: !2476)
!2475 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2476 = !{!2477, !2485, !2486, !3787, !3788}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2474, file: !2475, line: 13, baseType: !2478, size: 384)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2479, line: 17, size: 384, elements: !2480)
!2479 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2480 = !{!2481, !2482, !2483, !2484}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2478, file: !2479, line: 18, baseType: !30, size: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2478, file: !2479, line: 19, baseType: !30, size: 32, offset: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2478, file: !2479, line: 20, baseType: !62, size: 192, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2478, file: !2479, line: 22, baseType: !306, size: 128, align: 64, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2474, file: !2475, line: 14, baseType: !1830, size: 64, offset: 384)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2474, file: !2475, line: 15, baseType: !2487, size: 64, offset: 448)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2488, line: 16, size: 64, elements: !2489)
!2488 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2489 = !{!2490}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2487, file: !2488, line: 17, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2493, line: 746, size: 58368, elements: !2494)
!2493 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2494 = !{!2495, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2575, !2586, !2674, !2678, !2681, !2712, !2713, !2714, !2715, !2726, !2728, !2729, !2730, !2731, !2732, !2733, !2744, !2745, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2762, !2763, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2851, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2899, !2905, !2906, !2907, !2908, !2909, !2913, !2916, !2923, !2928, !2931, !2934, !2937, !2999, !3200, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3238, !3239, !3240, !3249, !3257, !3258, !3259, !3260, !3261, !3266, !3267, !3268, !3271, !3272, !3275, !3278, !3281, !3289, !3292, !3293, !3379, !3380, !3381, !3382, !3383, !3389, !3390, !3391, !3392, !3393, !3394, !3397, !3400, !3401, !3404, !3405, !3406, !3409, !3410, !3411, !3412, !3413, !3414, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3446, !3449, !3455, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3467, !3539, !3541, !3542, !3543, !3544, !3545, !3546, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3564, !3565, !3566}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2492, file: !2493, line: 752, baseType: !2496, size: 192)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2497, line: 56, size: 192, elements: !2498)
!2497 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2498 = !{!2499, !2500, !2501, !2502}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2496, file: !2497, line: 57, baseType: !47, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2496, file: !2497, line: 58, baseType: !47, size: 64, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2496, file: !2497, line: 59, baseType: !495, size: 32, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2496, file: !2497, line: 61, baseType: !495, size: 32, offset: 160)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2492, file: !2493, line: 754, baseType: !7, size: 32, offset: 192)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2492, file: !2493, line: 767, baseType: !28, size: 64, offset: 256)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2492, file: !2493, line: 768, baseType: !373, size: 32, offset: 320)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2492, file: !2493, line: 770, baseType: !7, size: 32, offset: 352)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2492, file: !2493, line: 771, baseType: !7, size: 32, offset: 384)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2492, file: !2493, line: 774, baseType: !30, size: 32, offset: 416)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2492, file: !2493, line: 775, baseType: !2510, size: 128, offset: 448)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2511, line: 58, size: 128, elements: !2512)
!2511 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2512 = !{!2513, !2514, !2519, !2520}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2510, file: !2511, line: 59, baseType: !300, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, scope: !2510, file: !2511, line: 60, baseType: !2515, size: 32, offset: 64)
!2515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2510, file: !2511, line: 60, size: 32, elements: !2516)
!2516 = !{!2517, !2518}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2515, file: !2511, line: 61, baseType: !7, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2515, file: !2511, line: 62, baseType: !57, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2510, file: !2511, line: 65, baseType: !101, size: 16, offset: 96)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2510, file: !2511, line: 65, baseType: !101, size: 16, offset: 112)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2492, file: !2493, line: 776, baseType: !7, size: 32, offset: 576)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2492, file: !2493, line: 777, baseType: !47, size: 64, offset: 640)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2492, file: !2493, line: 778, baseType: !2491, size: 64, offset: 704)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2492, file: !2493, line: 787, baseType: !30, size: 32, offset: 768)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2492, file: !2493, line: 788, baseType: !30, size: 32, offset: 800)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2492, file: !2493, line: 790, baseType: !30, size: 32, offset: 832)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2492, file: !2493, line: 792, baseType: !30, size: 32, offset: 864)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2492, file: !2493, line: 793, baseType: !30, size: 32, offset: 896)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2492, file: !2493, line: 794, baseType: !30, size: 32, offset: 928)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2492, file: !2493, line: 795, baseType: !7, size: 32, offset: 960)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2492, file: !2493, line: 797, baseType: !2532, size: 2048, offset: 1024)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2493, line: 551, size: 2048, elements: !2533)
!2533 = !{!2534, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2554, !2557, !2558, !2559}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2532, file: !2493, line: 553, baseType: !2535, size: 128)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2493, line: 411, size: 128, elements: !2536)
!2536 = !{!2537, !2538}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2535, file: !2493, line: 412, baseType: !47, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2535, file: !2493, line: 413, baseType: !495, size: 32, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2532, file: !2493, line: 554, baseType: !246, size: 192, align: 64, offset: 128)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2532, file: !2493, line: 555, baseType: !445, size: 64, offset: 320)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2532, file: !2493, line: 556, baseType: !445, size: 64, offset: 384)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2532, file: !2493, line: 558, baseType: !105, size: 128, offset: 448)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2532, file: !2493, line: 559, baseType: !7, size: 32, offset: 576)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2532, file: !2493, line: 561, baseType: !445, size: 64, offset: 640)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2532, file: !2493, line: 562, baseType: !445, size: 64, offset: 704)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2532, file: !2493, line: 563, baseType: !445, size: 64, offset: 768)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2532, file: !2493, line: 564, baseType: !445, size: 64, offset: 832)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2532, file: !2493, line: 565, baseType: !325, size: 64, offset: 896)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2532, file: !2493, line: 566, baseType: !445, size: 64, offset: 960)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2532, file: !2493, line: 568, baseType: !445, size: 64, offset: 1024)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2532, file: !2493, line: 571, baseType: !30, size: 32, offset: 1088)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2532, file: !2493, line: 572, baseType: !2553, size: 64, offset: 1152)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2532, file: !2493, line: 574, baseType: !2555, size: 64, offset: 1216)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2493, line: 49, flags: DIFlagFwdDecl)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2532, file: !2493, line: 576, baseType: !2555, size: 64, offset: 1280)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2532, file: !2493, line: 578, baseType: !47, size: 64, offset: 1344)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2532, file: !2493, line: 588, baseType: !2560, size: 512, align: 512, offset: 1536)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2493, line: 497, size: 512, align: 512, elements: !2561)
!2561 = !{!2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2560, file: !2493, line: 498, baseType: !445, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2560, file: !2493, line: 499, baseType: !445, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2560, file: !2493, line: 500, baseType: !445, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2560, file: !2493, line: 501, baseType: !495, size: 32, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2560, file: !2493, line: 502, baseType: !495, size: 32, offset: 224)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2560, file: !2493, line: 503, baseType: !47, size: 64, offset: 256)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2560, file: !2493, line: 504, baseType: !47, size: 64, offset: 320)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2560, file: !2493, line: 505, baseType: !47, size: 64, offset: 384)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2560, file: !2493, line: 506, baseType: !2571, size: 64, align: 64, offset: 448)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2493, line: 445, size: 64, align: 64, elements: !2572)
!2572 = !{!2573, !2574}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2571, file: !2493, line: 446, baseType: !7, size: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2571, file: !2493, line: 447, baseType: !7, size: 32, offset: 32)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2492, file: !2493, line: 798, baseType: !2576, size: 384, offset: 3072)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2493, line: 592, size: 384, elements: !2577)
!2577 = !{!2578, !2579, !2580, !2581, !2582, !2583, !2584}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2576, file: !2493, line: 593, baseType: !105, size: 128)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2576, file: !2493, line: 594, baseType: !47, size: 64, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2576, file: !2493, line: 595, baseType: !47, size: 64, offset: 192)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2576, file: !2493, line: 596, baseType: !7, size: 32, offset: 256)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2576, file: !2493, line: 597, baseType: !34, size: 16, offset: 288)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2576, file: !2493, line: 598, baseType: !34, size: 16, offset: 304)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2576, file: !2493, line: 600, baseType: !2585, size: 64, offset: 320)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2492, file: !2493, line: 799, baseType: !2587, size: 1792, offset: 3456)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2493, line: 610, size: 1792, elements: !2588)
!2588 = !{!2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2671, !2672}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2587, file: !2493, line: 611, baseType: !246, size: 192, align: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2587, file: !2493, line: 618, baseType: !445, size: 64, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2587, file: !2493, line: 619, baseType: !445, size: 64, offset: 256)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2587, file: !2493, line: 620, baseType: !445, size: 64, offset: 320)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2587, file: !2493, line: 621, baseType: !445, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2587, file: !2493, line: 622, baseType: !445, size: 64, offset: 448)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2587, file: !2493, line: 629, baseType: !325, size: 64, offset: 512)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2587, file: !2493, line: 630, baseType: !445, size: 64, offset: 576)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2587, file: !2493, line: 631, baseType: !7, size: 32, offset: 640)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2587, file: !2493, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2587, file: !2493, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2587, file: !2493, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2587, file: !2493, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2587, file: !2493, line: 662, baseType: !2603, size: 512, offset: 704)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !2604)
!2604 = !{!2605, !2613, !2614, !2619, !2667, !2668, !2669, !2670}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2603, file: !6, line: 119, baseType: !2606, size: 256)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2607, line: 9, size: 256, elements: !2608)
!2607 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2608 = !{!2609, !2610}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2606, file: !2607, line: 10, baseType: !246, size: 192, align: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2606, file: !2607, line: 11, baseType: !2611, size: 64, offset: 192)
!2611 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2612, line: 29, baseType: !325)
!2612 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2603, file: !6, line: 120, baseType: !2611, size: 64, offset: 256)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2603, file: !6, line: 121, baseType: !2615, size: 64, offset: 320)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!5, !2618}
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2603, file: !6, line: 122, baseType: !2620, size: 64, offset: 384)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !2622)
!2622 = !{!2623, !2648, !2649, !2652, !2657, !2658, !2662, !2666}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2621, file: !6, line: 160, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !2626)
!2626 = !{!2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2625, file: !6, line: 216, baseType: !333, size: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2625, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2625, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2625, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2625, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2625, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2625, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2625, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2625, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2625, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2625, file: !6, line: 227, baseType: !34, size: 16, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2625, file: !6, line: 228, baseType: !34, size: 16, offset: 208)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2625, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2625, file: !6, line: 235, baseType: !2611, size: 64, offset: 256)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2625, file: !6, line: 236, baseType: !2618, size: 64, offset: 320)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2625, file: !6, line: 237, baseType: !2611, size: 64, offset: 384)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2625, file: !6, line: 238, baseType: !2618, size: 64, offset: 448)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2625, file: !6, line: 239, baseType: !2645, size: 4096, align: 512, offset: 512)
!2645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2621, size: 4096, align: 512, elements: !2646)
!2646 = !{!2647}
!2647 = !DISubrange(count: 8)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2621, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2621, file: !6, line: 162, baseType: !2650, size: 32, offset: 96)
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !33, line: 32, baseType: !2651)
!2651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !45, line: 96, baseType: !30)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2621, file: !6, line: 163, baseType: !2653, size: 32, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !805, line: 274, baseType: !2654)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !805, line: 274, size: 32, elements: !2655)
!2655 = !{!2656}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2654, file: !805, line: 274, baseType: !809, size: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2621, file: !6, line: 164, baseType: !2618, size: 64, offset: 192)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2621, file: !6, line: 165, baseType: !2659, size: 128, offset: 256)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2607, line: 14, size: 128, elements: !2660)
!2660 = !{!2661}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2659, file: !2607, line: 15, baseType: !1205, size: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2621, file: !6, line: 166, baseType: !2663, size: 64, offset: 384)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!2611}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2621, file: !6, line: 167, baseType: !2611, size: 64, offset: 448)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2603, file: !6, line: 123, baseType: !91, size: 8, offset: 448)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2603, file: !6, line: 124, baseType: !91, size: 8, offset: 456)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2603, file: !6, line: 125, baseType: !91, size: 8, offset: 464)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2603, file: !6, line: 126, baseType: !91, size: 8, offset: 472)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2587, file: !2493, line: 671, baseType: !2603, size: 512, offset: 1216)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2587, file: !2493, line: 679, baseType: !2673, size: 64, offset: 1728)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2492, file: !2493, line: 800, baseType: !2675, size: 64, offset: 5248)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2677)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2493, line: 800, flags: DIFlagFwdDecl)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2492, file: !2493, line: 809, baseType: !2679, size: 64, offset: 5312)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2493, line: 70, flags: DIFlagFwdDecl)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2492, file: !2493, line: 825, baseType: !2682, size: 2048, align: 512, offset: 5632)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2493, line: 509, size: 2048, align: 512, elements: !2683)
!2683 = !{!2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2682, file: !2493, line: 511, baseType: !445, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2682, file: !2493, line: 512, baseType: !445, size: 64, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2682, file: !2493, line: 513, baseType: !445, size: 64, offset: 128)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2682, file: !2493, line: 514, baseType: !445, size: 64, offset: 192)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2682, file: !2493, line: 515, baseType: !445, size: 64, offset: 256)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2682, file: !2493, line: 516, baseType: !445, size: 64, offset: 320)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2682, file: !2493, line: 518, baseType: !445, size: 64, offset: 384)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2682, file: !2493, line: 519, baseType: !445, size: 64, offset: 448)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2682, file: !2493, line: 520, baseType: !325, size: 64, offset: 512)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2682, file: !2493, line: 522, baseType: !445, size: 64, offset: 576)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2682, file: !2493, line: 523, baseType: !445, size: 64, offset: 640)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2682, file: !2493, line: 524, baseType: !325, size: 64, offset: 704)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2682, file: !2493, line: 526, baseType: !325, size: 64, offset: 768)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2682, file: !2493, line: 527, baseType: !445, size: 64, offset: 832)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2682, file: !2493, line: 529, baseType: !445, size: 64, offset: 896)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2682, file: !2493, line: 530, baseType: !445, size: 64, offset: 960)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2682, file: !2493, line: 531, baseType: !445, size: 64, offset: 1024)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2682, file: !2493, line: 532, baseType: !445, size: 64, offset: 1088)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2682, file: !2493, line: 533, baseType: !445, size: 64, offset: 1152)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2682, file: !2493, line: 535, baseType: !445, size: 64, offset: 1216)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2682, file: !2493, line: 536, baseType: !445, size: 64, offset: 1280)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2682, file: !2493, line: 537, baseType: !445, size: 64, offset: 1344)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2682, file: !2493, line: 538, baseType: !445, size: 64, offset: 1408)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2682, file: !2493, line: 539, baseType: !445, size: 64, offset: 1472)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2682, file: !2493, line: 540, baseType: !445, size: 64, offset: 1536)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2682, file: !2493, line: 541, baseType: !445, size: 64, offset: 1600)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2682, file: !2493, line: 542, baseType: !445, size: 64, offset: 1664)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2682, file: !2493, line: 543, baseType: !445, size: 64, offset: 1728)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2492, file: !2493, line: 833, baseType: !7, size: 32, offset: 7680)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2492, file: !2493, line: 836, baseType: !7, size: 32, offset: 7712)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2492, file: !2493, line: 837, baseType: !30, size: 32, offset: 7744)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2492, file: !2493, line: 838, baseType: !2716, size: 64, offset: 7808)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2718)
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2719, line: 19, baseType: !2720)
!2719 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2719, line: 19, size: 64, elements: !2721)
!2721 = !{!2722}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2720, file: !2719, line: 19, baseType: !2723, size: 64)
!2723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, elements: !2724)
!2724 = !{!2725}
!2725 = !DISubrange(count: 1)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2492, file: !2493, line: 839, baseType: !2727, size: 64, offset: 7872)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2492, file: !2493, line: 840, baseType: !2718, size: 64, offset: 7936)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2492, file: !2493, line: 841, baseType: !28, size: 64, offset: 8000)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2492, file: !2493, line: 843, baseType: !34, size: 16, offset: 8064)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2492, file: !2493, line: 845, baseType: !34, size: 16, offset: 8080)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2492, file: !2493, line: 848, baseType: !30, size: 32, offset: 8096)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2492, file: !2493, line: 849, baseType: !2734, size: 32, offset: 8128)
!2734 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2493, line: 718, size: 32, elements: !2735)
!2735 = !{!2736, !2743}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2734, file: !2493, line: 724, baseType: !2737, size: 32)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2734, file: !2493, line: 719, size: 32, elements: !2738)
!2738 = !{!2739, !2740, !2741, !2742}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2737, file: !2493, line: 720, baseType: !91, size: 8)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2737, file: !2493, line: 721, baseType: !91, size: 8, offset: 8)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2737, file: !2493, line: 722, baseType: !91, size: 8, offset: 16)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2737, file: !2493, line: 723, baseType: !91, size: 8, offset: 24)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2734, file: !2493, line: 725, baseType: !495, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2492, file: !2493, line: 850, baseType: !105, size: 128, offset: 8192)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2492, file: !2493, line: 851, baseType: !2746, size: 64, offset: 8320)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2493, line: 60, flags: DIFlagFwdDecl)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2492, file: !2493, line: 855, baseType: !47, size: 64, offset: 8384)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2492, file: !2493, line: 856, baseType: !91, size: 8, offset: 8448)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2492, file: !2493, line: 857, baseType: !91, size: 8, offset: 8456)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2492, file: !2493, line: 858, baseType: !30, size: 32, offset: 8480)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2492, file: !2493, line: 859, baseType: !105, size: 128, offset: 8512)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2492, file: !2493, line: 860, baseType: !30, size: 32, offset: 8640)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2492, file: !2493, line: 861, baseType: !105, size: 128, offset: 8704)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2492, file: !2493, line: 873, baseType: !2756, size: 256, offset: 8832)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2493, line: 376, size: 256, elements: !2757)
!2757 = !{!2758, !2759, !2760, !2761}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2756, file: !2493, line: 381, baseType: !47, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2756, file: !2493, line: 384, baseType: !447, size: 64, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2756, file: !2493, line: 389, baseType: !447, size: 64, offset: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2756, file: !2493, line: 392, baseType: !447, size: 64, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2492, file: !2493, line: 875, baseType: !105, size: 128, offset: 9088)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2492, file: !2493, line: 877, baseType: !2764, size: 320, offset: 9216)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2765, line: 86, size: 320, elements: !2766)
!2765 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2766 = !{!2767, !2768, !2769}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2764, file: !2765, line: 87, baseType: !30, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2764, file: !2765, line: 88, baseType: !105, size: 128, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2764, file: !2765, line: 89, baseType: !105, size: 128, offset: 192)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2492, file: !2493, line: 878, baseType: !246, size: 192, align: 64, offset: 9536)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2492, file: !2493, line: 881, baseType: !1488, size: 64, offset: 9728)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2492, file: !2493, line: 882, baseType: !1488, size: 64, offset: 9792)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2492, file: !2493, line: 884, baseType: !30, size: 32, offset: 9856)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2492, file: !2493, line: 885, baseType: !30, size: 32, offset: 9888)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2492, file: !2493, line: 886, baseType: !30, size: 32, offset: 9920)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2492, file: !2493, line: 888, baseType: !30, size: 32, offset: 9952)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2492, file: !2493, line: 890, baseType: !47, size: 64, offset: 9984)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2492, file: !2493, line: 893, baseType: !7, size: 32, offset: 10048)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2492, file: !2493, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2492, file: !2493, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2492, file: !2493, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2492, file: !2493, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2492, file: !2493, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2492, file: !2493, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2492, file: !2493, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2492, file: !2493, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2492, file: !2493, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2492, file: !2493, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2492, file: !2493, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2492, file: !2493, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2492, file: !2493, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2492, file: !2493, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2492, file: !2493, line: 969, baseType: !47, size: 64, offset: 10176)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2492, file: !2493, line: 971, baseType: !2795, size: 448, offset: 10240)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !147, line: 25, size: 448, elements: !2796)
!2796 = !{!2797, !2798, !2803}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2795, file: !147, line: 26, baseType: !47, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2795, file: !147, line: 27, baseType: !2799, size: 64, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!762, !2802}
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, scope: !2795, file: !147, line: 28, baseType: !2804, size: 320, offset: 128)
!2804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2795, file: !147, line: 28, size: 320, elements: !2805)
!2805 = !{!2806, !2816, !2841}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2804, file: !147, line: 37, baseType: !2807, size: 320)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2804, file: !147, line: 30, size: 320, elements: !2808)
!2808 = !{!2809, !2811, !2812, !2813, !2814, !2815}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2807, file: !147, line: 31, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2807, file: !147, line: 32, baseType: !495, size: 32, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2807, file: !147, line: 33, baseType: !495, size: 32, offset: 96)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2807, file: !147, line: 34, baseType: !495, size: 32, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2807, file: !147, line: 35, baseType: !445, size: 64, offset: 192)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2807, file: !147, line: 36, baseType: !2810, size: 64, offset: 256)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2804, file: !147, line: 47, baseType: !2817, size: 192)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2804, file: !147, line: 39, size: 192, elements: !2818)
!2818 = !{!2819, !2820, !2821, !2840}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2817, file: !147, line: 40, baseType: !2650, size: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2817, file: !147, line: 41, baseType: !146, size: 32, offset: 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, scope: !2817, file: !147, line: 42, baseType: !2822, size: 64, offset: 64)
!2822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2817, file: !147, line: 42, size: 64, elements: !2823)
!2823 = !{!2824, !2832}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2822, file: !147, line: 43, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2827, line: 7, size: 128, elements: !2828)
!2827 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2828 = !{!2829, !2831}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2826, file: !2827, line: 8, baseType: !2830, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !45, line: 93, baseType: !51)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2826, file: !2827, line: 9, baseType: !51, size: 64, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2822, file: !147, line: 44, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2835, line: 7, size: 64, elements: !2836)
!2835 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2836 = !{!2837, !2839}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2834, file: !2835, line: 8, baseType: !2838, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2835, line: 5, baseType: !462)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2834, file: !2835, line: 9, baseType: !462, size: 32, offset: 32)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2817, file: !147, line: 46, baseType: !445, size: 64, offset: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2804, file: !147, line: 55, baseType: !2842, size: 256)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2804, file: !147, line: 49, size: 256, elements: !2843)
!2843 = !{!2844, !2847, !2848, !2849, !2850}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2842, file: !147, line: 50, baseType: !2845, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !147, line: 14, flags: DIFlagFwdDecl)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2842, file: !147, line: 51, baseType: !30, size: 32, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2842, file: !147, line: 52, baseType: !30, size: 32, offset: 96)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2842, file: !147, line: 53, baseType: !47, size: 64, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2842, file: !147, line: 54, baseType: !47, size: 64, offset: 192)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2492, file: !2493, line: 973, baseType: !2852, size: 32, offset: 10688)
!2852 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !33, line: 27, baseType: !2853)
!2853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !45, line: 28, baseType: !30)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2492, file: !2493, line: 974, baseType: !2852, size: 32, offset: 10720)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2492, file: !2493, line: 978, baseType: !47, size: 64, offset: 10752)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2492, file: !2493, line: 987, baseType: !2491, size: 64, offset: 10816)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2492, file: !2493, line: 990, baseType: !2491, size: 64, offset: 10880)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2492, file: !2493, line: 995, baseType: !105, size: 128, offset: 10944)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2492, file: !2493, line: 996, baseType: !105, size: 128, offset: 11072)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2492, file: !2493, line: 997, baseType: !2491, size: 64, offset: 11200)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2492, file: !2493, line: 1005, baseType: !105, size: 128, offset: 11264)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2492, file: !2493, line: 1006, baseType: !105, size: 128, offset: 11392)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2492, file: !2493, line: 1009, baseType: !369, size: 64, offset: 11520)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2492, file: !2493, line: 1010, baseType: !2865, size: 512, offset: 11584)
!2865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 512, elements: !391)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2492, file: !2493, line: 1011, baseType: !105, size: 128, offset: 12096)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2492, file: !2493, line: 1012, baseType: !105, size: 128, offset: 12224)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2492, file: !2493, line: 1014, baseType: !702, size: 64, offset: 12352)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2492, file: !2493, line: 1017, baseType: !1878, size: 64, offset: 12416)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2492, file: !2493, line: 1020, baseType: !1878, size: 64, offset: 12480)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2492, file: !2493, line: 1023, baseType: !28, size: 64, offset: 12544)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2492, file: !2493, line: 1025, baseType: !445, size: 64, offset: 12608)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2492, file: !2493, line: 1026, baseType: !445, size: 64, offset: 12672)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2492, file: !2493, line: 1031, baseType: !445, size: 64, offset: 12736)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2492, file: !2493, line: 1032, baseType: !2876, size: 192, offset: 12800)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2493, line: 324, size: 192, elements: !2877)
!2877 = !{!2878, !2879, !2880}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2876, file: !2493, line: 326, baseType: !445, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2876, file: !2493, line: 327, baseType: !445, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2876, file: !2493, line: 328, baseType: !333, size: 32, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2492, file: !2493, line: 1041, baseType: !47, size: 64, offset: 12992)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2492, file: !2493, line: 1042, baseType: !47, size: 64, offset: 13056)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2492, file: !2493, line: 1045, baseType: !445, size: 64, offset: 13120)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2492, file: !2493, line: 1048, baseType: !445, size: 64, offset: 13184)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2492, file: !2493, line: 1051, baseType: !47, size: 64, offset: 13248)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2492, file: !2493, line: 1052, baseType: !47, size: 64, offset: 13312)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2492, file: !2493, line: 1055, baseType: !2888, size: 640, offset: 13376)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2889, line: 132, size: 640, elements: !2890)
!2889 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2890 = !{!2891, !2897, !2898}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2888, file: !2889, line: 133, baseType: !2892, size: 576)
!2892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2893, size: 576, elements: !365)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2889, line: 117, size: 192, elements: !2894)
!2894 = !{!2895, !2896}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2893, file: !2889, line: 118, baseType: !445, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2893, file: !2889, line: 119, baseType: !2659, size: 128, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2888, file: !2889, line: 134, baseType: !7, size: 32, offset: 576)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2888, file: !2889, line: 135, baseType: !7, size: 32, offset: 608)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2492, file: !2493, line: 1058, baseType: !2900, size: 448, offset: 14016)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2889, line: 144, size: 448, elements: !2901)
!2901 = !{!2902, !2903, !2904}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2900, file: !2889, line: 145, baseType: !306, size: 128, align: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2900, file: !2889, line: 146, baseType: !328, size: 256, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2900, file: !2889, line: 147, baseType: !7, size: 32, offset: 384)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2492, file: !2493, line: 1064, baseType: !418, size: 64, offset: 14464)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2492, file: !2493, line: 1067, baseType: !418, size: 64, offset: 14528)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2492, file: !2493, line: 1070, baseType: !418, size: 64, offset: 14592)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2492, file: !2493, line: 1074, baseType: !454, size: 64, offset: 14656)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2492, file: !2493, line: 1084, baseType: !2910, size: 128, offset: 14720)
!2910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 128, elements: !2911)
!2911 = !{!2912}
!2912 = !DISubrange(count: 16)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2492, file: !2493, line: 1086, baseType: !2914, size: 64, offset: 14848)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2493, line: 55, flags: DIFlagFwdDecl)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2492, file: !2493, line: 1089, baseType: !2917, size: 64, offset: 14912)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2918, line: 12, size: 64, elements: !2919)
!2918 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2919 = !{!2920}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2917, file: !2918, line: 13, baseType: !2921, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2918, line: 8, flags: DIFlagFwdDecl)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2492, file: !2493, line: 1090, baseType: !2924, size: 128, offset: 14976)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2925, line: 13, size: 128, elements: !2926)
!2925 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2926 = !{!2927}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2924, file: !2925, line: 14, baseType: !105, size: 128)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2492, file: !2493, line: 1097, baseType: !2929, size: 64, offset: 15104)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2493, line: 50, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2492, file: !2493, line: 1100, baseType: !2932, size: 64, offset: 15168)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2493, line: 1100, flags: DIFlagFwdDecl)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2492, file: !2493, line: 1103, baseType: !2935, size: 64, offset: 15232)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2493, line: 53, flags: DIFlagFwdDecl)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2492, file: !2493, line: 1107, baseType: !2938, size: 64, offset: 15296)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2940, line: 31, size: 576, elements: !2941)
!2940 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2941 = !{!2942, !2943, !2946, !2949, !2952, !2953, !2956, !2959, !2960}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2939, file: !2940, line: 32, baseType: !373, size: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2939, file: !2940, line: 33, baseType: !2944, size: 64, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2940, line: 9, flags: DIFlagFwdDecl)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2939, file: !2940, line: 34, baseType: !2947, size: 64, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2940, line: 10, flags: DIFlagFwdDecl)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2939, file: !2940, line: 35, baseType: !2950, size: 64, offset: 192)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2940, line: 8, flags: DIFlagFwdDecl)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2939, file: !2940, line: 36, baseType: !402, size: 64, offset: 256)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2939, file: !2940, line: 37, baseType: !2954, size: 64, offset: 320)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !456, line: 34, flags: DIFlagFwdDecl)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2939, file: !2940, line: 38, baseType: !2957, size: 64, offset: 384)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2940, line: 38, flags: DIFlagFwdDecl)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2939, file: !2940, line: 39, baseType: !2957, size: 64, offset: 448)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2939, file: !2940, line: 40, baseType: !2961, size: 64, offset: 512)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2963, line: 771, size: 384, elements: !2964)
!2963 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!2964 = !{!2965, !2966, !2967, !2968}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2962, file: !2963, line: 772, baseType: !648, size: 192)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2962, file: !2963, line: 773, baseType: !615, size: 64, offset: 192)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2962, file: !2963, line: 774, baseType: !747, size: 64, offset: 256)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !2962, file: !2963, line: 775, baseType: !2969, size: 64, offset: 320)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !167, line: 209, size: 4736, elements: !2971)
!2971 = !{!2972, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !2970, file: !167, line: 215, baseType: !2973, size: 896)
!2973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2974, size: 896, elements: !2975)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!2975 = !{!2976}
!2976 = !DISubrange(count: 14)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2970, file: !167, line: 218, baseType: !373, size: 32, offset: 896)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !2970, file: !167, line: 226, baseType: !2969, size: 64, offset: 960)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !2970, file: !167, line: 229, baseType: !221, size: 64, offset: 1024)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2970, file: !167, line: 232, baseType: !30, size: 32, offset: 1088)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2970, file: !167, line: 241, baseType: !105, size: 128, offset: 1152)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !2970, file: !167, line: 242, baseType: !105, size: 128, offset: 1280)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !2970, file: !167, line: 243, baseType: !105, size: 128, offset: 1408)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !2970, file: !167, line: 246, baseType: !105, size: 128, offset: 1536)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !2970, file: !167, line: 255, baseType: !2986, size: 1792, offset: 1664)
!2986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 1792, elements: !2975)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !2970, file: !167, line: 258, baseType: !105, size: 128, offset: 3456)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !2970, file: !167, line: 259, baseType: !105, size: 128, offset: 3584)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !2970, file: !167, line: 265, baseType: !386, size: 128, offset: 3712)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !2970, file: !167, line: 271, baseType: !105, size: 128, offset: 3840)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !2970, file: !167, line: 277, baseType: !105, size: 128, offset: 3968)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !2970, file: !167, line: 278, baseType: !105, size: 128, offset: 4096)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !2970, file: !167, line: 279, baseType: !105, size: 128, offset: 4224)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !2970, file: !167, line: 288, baseType: !221, size: 64, offset: 4352)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !2970, file: !167, line: 289, baseType: !221, size: 64, offset: 4416)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !2970, file: !167, line: 290, baseType: !2969, size: 64, offset: 4480)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !2970, file: !167, line: 293, baseType: !531, size: 8, offset: 4544)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2970, file: !167, line: 296, baseType: !306, size: 128, align: 64, offset: 4608)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2492, file: !2493, line: 1110, baseType: !3000, size: 64, offset: 15360)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3002, line: 93, size: 8768, elements: !3003)
!3002 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3003 = !{!3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3052, !3061, !3062, !3064, !3065, !3066, !3069, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3107, !3108, !3115, !3125, !3190, !3191, !3194, !3195, !3196, !3197, !3198, !3199}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3001, file: !3002, line: 94, baseType: !373, size: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3001, file: !3002, line: 95, baseType: !57, size: 32, offset: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3001, file: !3002, line: 96, baseType: !30, size: 32, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3001, file: !3002, line: 97, baseType: !30, size: 32, offset: 96)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3001, file: !3002, line: 98, baseType: !105, size: 128, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3001, file: !3002, line: 100, baseType: !62, size: 192, offset: 256)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3001, file: !3002, line: 103, baseType: !2491, size: 64, offset: 448)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3001, file: !3002, line: 106, baseType: !3012, size: 192, offset: 512)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3013, line: 32, size: 192, elements: !3014)
!3013 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3014 = !{!3015, !3016}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3012, file: !3013, line: 33, baseType: !105, size: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3012, file: !3013, line: 34, baseType: !3017, size: 64, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3018, line: 25, baseType: !3019)
!3018 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3018, line: 23, size: 64, elements: !3020)
!3020 = !{!3021}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3019, file: !3018, line: 24, baseType: !2723, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3001, file: !3002, line: 109, baseType: !382, size: 64, offset: 704)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3001, file: !3002, line: 112, baseType: !30, size: 32, offset: 768)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3001, file: !3002, line: 114, baseType: !30, size: 32, offset: 800)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3001, file: !3002, line: 115, baseType: !2491, size: 64, offset: 832)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3001, file: !3002, line: 118, baseType: !30, size: 32, offset: 896)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3001, file: !3002, line: 119, baseType: !7, size: 32, offset: 928)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3001, file: !3002, line: 121, baseType: !3029, size: 64, offset: 960)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3002, line: 80, size: 448, elements: !3031)
!3031 = !{!3032, !3033, !3039}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3030, file: !3002, line: 81, baseType: !57, size: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3030, file: !3002, line: 82, baseType: !3034, size: 128, offset: 64)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3002, line: 75, size: 128, elements: !3035)
!3035 = !{!3036, !3037}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3034, file: !3002, line: 76, baseType: !2491, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3034, file: !3002, line: 77, baseType: !3038, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3030, file: !3002, line: 83, baseType: !703, size: 256, offset: 192)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3001, file: !3002, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3001, file: !3002, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3001, file: !3002, line: 138, baseType: !7, size: 32, offset: 1056)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3001, file: !3002, line: 139, baseType: !105, size: 128, offset: 1088)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3001, file: !3002, line: 142, baseType: !2603, size: 512, offset: 1216)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3001, file: !3002, line: 143, baseType: !2611, size: 64, offset: 1728)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3001, file: !3002, line: 150, baseType: !3047, size: 256, offset: 1792)
!3047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3048, size: 256, elements: !1868)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3002, line: 38, size: 128, elements: !3049)
!3049 = !{!3050, !3051}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3048, file: !3002, line: 39, baseType: !445, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3048, file: !3002, line: 40, baseType: !445, size: 64, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3001, file: !3002, line: 156, baseType: !3053, size: 192, offset: 2048)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3002, line: 66, size: 192, elements: !3054)
!3054 = !{!3055}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3053, file: !3002, line: 67, baseType: !3056, size: 192)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3002, line: 47, size: 192, elements: !3057)
!3057 = !{!3058, !3059, !3060}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3056, file: !3002, line: 48, baseType: !321, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3056, file: !3002, line: 49, baseType: !321, size: 64, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3056, file: !3002, line: 50, baseType: !321, size: 64, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3001, file: !3002, line: 160, baseType: !2888, size: 640, offset: 2240)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3001, file: !3002, line: 163, baseType: !3063, size: 256, offset: 2880)
!3063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 256, elements: !391)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3001, file: !3002, line: 169, baseType: !369, size: 64, offset: 3136)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3001, file: !3002, line: 172, baseType: !30, size: 32, offset: 3200)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3001, file: !3002, line: 174, baseType: !3067, size: 64, offset: 3264)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3002, line: 174, flags: DIFlagFwdDecl)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3001, file: !3002, line: 185, baseType: !3070, size: 64, offset: 3328)
!3070 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !805, line: 860, baseType: !3071)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !805, line: 853, size: 64, elements: !3072)
!3072 = !{!3073, !3074}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3071, file: !805, line: 858, baseType: !804, size: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3071, file: !805, line: 859, baseType: !67, size: 32, offset: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3001, file: !3002, line: 186, baseType: !445, size: 64, offset: 3392)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3001, file: !3002, line: 186, baseType: !445, size: 64, offset: 3456)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3001, file: !3002, line: 186, baseType: !445, size: 64, offset: 3520)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3001, file: !3002, line: 186, baseType: !445, size: 64, offset: 3584)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3001, file: !3002, line: 187, baseType: !445, size: 64, offset: 3648)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3001, file: !3002, line: 188, baseType: !445, size: 64, offset: 3712)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3001, file: !3002, line: 189, baseType: !2876, size: 192, offset: 3776)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3001, file: !3002, line: 190, baseType: !47, size: 64, offset: 3968)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3001, file: !3002, line: 190, baseType: !47, size: 64, offset: 4032)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3001, file: !3002, line: 190, baseType: !47, size: 64, offset: 4096)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3001, file: !3002, line: 190, baseType: !47, size: 64, offset: 4160)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3001, file: !3002, line: 191, baseType: !47, size: 64, offset: 4224)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3001, file: !3002, line: 191, baseType: !47, size: 64, offset: 4288)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3001, file: !3002, line: 191, baseType: !47, size: 64, offset: 4352)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3001, file: !3002, line: 191, baseType: !47, size: 64, offset: 4416)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3001, file: !3002, line: 192, baseType: !47, size: 64, offset: 4480)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3001, file: !3002, line: 192, baseType: !47, size: 64, offset: 4544)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3001, file: !3002, line: 192, baseType: !47, size: 64, offset: 4608)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3001, file: !3002, line: 192, baseType: !47, size: 64, offset: 4672)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3001, file: !3002, line: 193, baseType: !47, size: 64, offset: 4736)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3001, file: !3002, line: 193, baseType: !47, size: 64, offset: 4800)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3001, file: !3002, line: 194, baseType: !3097, size: 448, offset: 4864)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3098, line: 12, size: 448, elements: !3099)
!3098 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3099 = !{!3100, !3101, !3102, !3103, !3104, !3105, !3106}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3097, file: !3098, line: 15, baseType: !445, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3097, file: !3098, line: 17, baseType: !445, size: 64, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3097, file: !3098, line: 19, baseType: !445, size: 64, offset: 128)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3097, file: !3098, line: 21, baseType: !445, size: 64, offset: 192)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3097, file: !3098, line: 29, baseType: !445, size: 64, offset: 256)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3097, file: !3098, line: 35, baseType: !445, size: 64, offset: 320)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3097, file: !3098, line: 44, baseType: !445, size: 64, offset: 384)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3001, file: !3002, line: 202, baseType: !447, size: 64, offset: 5312)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3001, file: !3002, line: 213, baseType: !3109, size: 2048, offset: 5376)
!3109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3110, size: 2048, elements: !2911)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3111, line: 43, size: 128, elements: !3112)
!3111 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3112 = !{!3113, !3114}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3110, file: !3111, line: 44, baseType: !46, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3110, file: !3111, line: 45, baseType: !46, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3001, file: !3002, line: 216, baseType: !3116, size: 448, offset: 7424)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3002, line: 30, size: 448, elements: !3117)
!3117 = !{!3118, !3119, !3120, !3121, !3122, !3123, !3124}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3116, file: !3002, line: 31, baseType: !30, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3116, file: !3002, line: 32, baseType: !762, size: 64, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3116, file: !3002, line: 33, baseType: !47, size: 64, offset: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3116, file: !3002, line: 34, baseType: !445, size: 64, offset: 192)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3116, file: !3002, line: 34, baseType: !445, size: 64, offset: 256)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3116, file: !3002, line: 35, baseType: !47, size: 64, offset: 320)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3116, file: !3002, line: 35, baseType: !47, size: 64, offset: 384)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3001, file: !3002, line: 219, baseType: !3126, size: 64, offset: 7872)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3128, line: 41, size: 3456, elements: !3129)
!3128 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!3129 = !{!3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3146, !3147, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3127, file: !3128, line: 47, baseType: !102, size: 16)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3127, file: !3128, line: 48, baseType: !496, size: 32, offset: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3127, file: !3128, line: 54, baseType: !93, size: 8, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !3127, file: !3128, line: 55, baseType: !93, size: 8, offset: 72)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !3127, file: !3128, line: 73, baseType: !446, size: 64, align: 64, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !3127, file: !3128, line: 74, baseType: !446, size: 64, offset: 192)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !3127, file: !3128, line: 81, baseType: !446, size: 64, offset: 256)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !3127, file: !3128, line: 82, baseType: !446, size: 64, offset: 320)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !3127, file: !3128, line: 85, baseType: !446, size: 64, offset: 384)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !3127, file: !3128, line: 86, baseType: !446, size: 64, offset: 448)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !3127, file: !3128, line: 94, baseType: !446, size: 64, offset: 512)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !3127, file: !3128, line: 102, baseType: !446, size: 64, offset: 576)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !3127, file: !3128, line: 107, baseType: !3143, size: 256, offset: 640)
!3143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 256, elements: !3144)
!3144 = !{!3145}
!3145 = !DISubrange(count: 32)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !3127, file: !3128, line: 108, baseType: !93, size: 8, align: 64, offset: 896)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !3127, file: !3128, line: 110, baseType: !3148, size: 24, offset: 904)
!3148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 24, elements: !365)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !3127, file: !3128, line: 111, baseType: !496, size: 32, align: 64, offset: 960)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !3127, file: !3128, line: 113, baseType: !496, size: 32, offset: 992)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !3127, file: !3128, line: 114, baseType: !496, size: 32, offset: 1024)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !3127, file: !3128, line: 115, baseType: !496, size: 32, offset: 1056)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !3127, file: !3128, line: 117, baseType: !496, size: 32, offset: 1088)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !3127, file: !3128, line: 118, baseType: !446, size: 64, align: 64, offset: 1152)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3127, file: !3128, line: 120, baseType: !446, size: 64, offset: 1216)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3127, file: !3128, line: 121, baseType: !446, size: 64, offset: 1280)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3127, file: !3128, line: 122, baseType: !446, size: 64, offset: 1344)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3127, file: !3128, line: 123, baseType: !446, size: 64, offset: 1408)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !3127, file: !3128, line: 133, baseType: !446, size: 64, offset: 1472)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !3127, file: !3128, line: 137, baseType: !446, size: 64, offset: 1536)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !3127, file: !3128, line: 142, baseType: !446, size: 64, offset: 1600)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !3127, file: !3128, line: 143, baseType: !446, size: 64, offset: 1664)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !3127, file: !3128, line: 146, baseType: !446, size: 64, offset: 1728)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !3127, file: !3128, line: 147, baseType: !446, size: 64, offset: 1792)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !3127, file: !3128, line: 148, baseType: !446, size: 64, offset: 1856)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !3127, file: !3128, line: 149, baseType: !446, size: 64, offset: 1920)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3127, file: !3128, line: 154, baseType: !446, size: 64, offset: 1984)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3127, file: !3128, line: 155, baseType: !446, size: 64, offset: 2048)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3127, file: !3128, line: 156, baseType: !446, size: 64, offset: 2112)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3127, file: !3128, line: 158, baseType: !446, size: 64, offset: 2176)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3127, file: !3128, line: 159, baseType: !446, size: 64, offset: 2240)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !3127, file: !3128, line: 162, baseType: !446, size: 64, offset: 2304)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !3127, file: !3128, line: 163, baseType: !446, size: 64, offset: 2368)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !3127, file: !3128, line: 164, baseType: !446, size: 64, offset: 2432)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !3127, file: !3128, line: 167, baseType: !446, size: 64, offset: 2496)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !3127, file: !3128, line: 168, baseType: !446, size: 64, offset: 2560)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !3127, file: !3128, line: 171, baseType: !446, size: 64, offset: 2624)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !3127, file: !3128, line: 172, baseType: !446, size: 64, offset: 2688)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !3127, file: !3128, line: 175, baseType: !446, size: 64, offset: 2752)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !3127, file: !3128, line: 178, baseType: !446, size: 64, offset: 2816)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !3127, file: !3128, line: 179, baseType: !446, size: 64, offset: 2880)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !3127, file: !3128, line: 182, baseType: !496, size: 32, offset: 2944)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !3127, file: !3128, line: 186, baseType: !446, size: 64, align: 64, offset: 3008)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !3127, file: !3128, line: 194, baseType: !446, size: 64, offset: 3072)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !3127, file: !3128, line: 195, baseType: !446, size: 64, offset: 3136)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !3127, file: !3128, line: 199, baseType: !446, size: 64, offset: 3200)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !3127, file: !3128, line: 200, baseType: !446, size: 64, offset: 3264)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !3127, file: !3128, line: 203, baseType: !446, size: 64, offset: 3328)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !3127, file: !3128, line: 204, baseType: !446, size: 64, offset: 3392)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3001, file: !3002, line: 222, baseType: !7, size: 32, offset: 7936)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3001, file: !3002, line: 223, baseType: !3192, size: 64, offset: 8000)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3002, line: 223, flags: DIFlagFwdDecl)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3001, file: !3002, line: 230, baseType: !531, size: 8, offset: 8064)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3001, file: !3002, line: 231, baseType: !500, size: 16, offset: 8080)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3001, file: !3002, line: 232, baseType: !500, size: 16, offset: 8096)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3001, file: !3002, line: 234, baseType: !1488, size: 64, offset: 8128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3001, file: !3002, line: 237, baseType: !328, size: 256, offset: 8192)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3001, file: !3002, line: 243, baseType: !470, size: 320, offset: 8448)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2492, file: !2493, line: 1111, baseType: !3201, size: 64, offset: 15424)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3002, line: 20, size: 16640, elements: !3203)
!3203 = !{!3204, !3205, !3206, !3207}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3202, file: !3002, line: 21, baseType: !67, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3202, file: !3002, line: 22, baseType: !373, size: 32, offset: 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3202, file: !3002, line: 23, baseType: !62, size: 192, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3202, file: !3002, line: 24, baseType: !3208, size: 16384, offset: 256)
!3208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3209, size: 16384, elements: !1135)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3013, line: 51, size: 256, elements: !3210)
!3210 = !{!3211}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3209, file: !3013, line: 52, baseType: !3212, size: 256)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3013, line: 37, size: 256, elements: !3213)
!3213 = !{!3214, !3221, !3222, !3226}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3212, file: !3013, line: 39, baseType: !3215, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3216, line: 83, baseType: !3217)
!3216 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3216, line: 82, baseType: !3219)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{null, !30}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3212, file: !3013, line: 40, baseType: !47, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3212, file: !3013, line: 46, baseType: !3223, size: 64, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3216, line: 86, baseType: !3224)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3216, line: 85, baseType: !2082)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3212, file: !3013, line: 48, baseType: !3017, size: 64, offset: 192)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2492, file: !2493, line: 1112, baseType: !3017, size: 64, offset: 15488)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2492, file: !2493, line: 1113, baseType: !3017, size: 64, offset: 15552)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2492, file: !2493, line: 1115, baseType: !3017, size: 64, offset: 15616)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2492, file: !2493, line: 1116, baseType: !3012, size: 192, offset: 15680)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2492, file: !2493, line: 1117, baseType: !47, size: 64, offset: 15872)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2492, file: !2493, line: 1118, baseType: !43, size: 64, offset: 15936)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2492, file: !2493, line: 1119, baseType: !7, size: 32, offset: 16000)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2492, file: !2493, line: 1121, baseType: !309, size: 64, offset: 16064)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2492, file: !2493, line: 1125, baseType: !3236, size: 64, offset: 16128)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2493, line: 43, flags: DIFlagFwdDecl)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2492, file: !2493, line: 1127, baseType: !408, size: 32, offset: 16192)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2492, file: !2493, line: 1128, baseType: !7, size: 32, offset: 16224)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2492, file: !2493, line: 1130, baseType: !3241, size: 128, offset: 16256)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3242, line: 37, size: 128, elements: !3243)
!3242 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3243 = !{!3244, !3245, !3246}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3241, file: !3242, line: 38, baseType: !30, size: 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3241, file: !3242, line: 39, baseType: !57, size: 32, offset: 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3241, file: !3242, line: 40, baseType: !3247, size: 64, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3242, line: 24, flags: DIFlagFwdDecl)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2492, file: !2493, line: 1131, baseType: !3250, size: 256, offset: 16384)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3251, line: 12, size: 256, elements: !3252)
!3251 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3252 = !{!3253, !3254, !3255, !3256}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3250, file: !3251, line: 13, baseType: !542, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3250, file: !3251, line: 14, baseType: !47, size: 64, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3250, file: !3251, line: 15, baseType: !47, size: 64, offset: 128)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3250, file: !3251, line: 16, baseType: !531, size: 8, offset: 192)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2492, file: !2493, line: 1134, baseType: !445, size: 64, offset: 16640)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2492, file: !2493, line: 1135, baseType: !445, size: 64, offset: 16704)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2492, file: !2493, line: 1138, baseType: !67, size: 32, offset: 16768)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2492, file: !2493, line: 1141, baseType: !333, size: 32, offset: 16800)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2492, file: !2493, line: 1143, baseType: !3262, size: 64, offset: 16832)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2493, line: 735, size: 64, elements: !3263)
!3263 = !{!3264}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3262, file: !2493, line: 736, baseType: !3265, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2492, file: !2493, line: 1147, baseType: !1205, size: 128, offset: 16896)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2492, file: !2493, line: 1149, baseType: !2491, size: 64, offset: 17024)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2492, file: !2493, line: 1151, baseType: !3269, size: 64, offset: 17088)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2493, line: 1151, flags: DIFlagFwdDecl)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2492, file: !2493, line: 1188, baseType: !28, size: 64, offset: 17152)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2492, file: !2493, line: 1191, baseType: !3273, size: 64, offset: 17216)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2493, line: 44, flags: DIFlagFwdDecl)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2492, file: !2493, line: 1194, baseType: !3276, size: 64, offset: 17280)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2493, line: 45, flags: DIFlagFwdDecl)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2492, file: !2493, line: 1197, baseType: !3279, size: 64, offset: 17344)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2493, line: 61, flags: DIFlagFwdDecl)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2492, file: !2493, line: 1199, baseType: !3282, size: 64, offset: 17408)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3284, line: 99, size: 128, elements: !3285)
!3284 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3285 = !{!3286, !3287, !3288}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3283, file: !3284, line: 100, baseType: !319, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3283, file: !3284, line: 101, baseType: !57, size: 32, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3283, file: !3284, line: 103, baseType: !34, size: 16, offset: 96)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2492, file: !2493, line: 1202, baseType: !3290, size: 64, offset: 17472)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2493, line: 48, flags: DIFlagFwdDecl)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2492, file: !2493, line: 1205, baseType: !47, size: 64, offset: 17536)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2492, file: !2493, line: 1206, baseType: !3294, size: 64, offset: 17600)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3013, line: 14, baseType: !3296)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3013, line: 12, size: 384, elements: !3297)
!3297 = !{!3298}
!3298 = !DIDerivedType(tag: DW_TAG_member, scope: !3296, file: !3013, line: 13, baseType: !3299, size: 384)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3296, file: !3013, line: 13, size: 384, elements: !3300)
!3300 = !{!3301, !3302, !3303, !3304}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3299, file: !3013, line: 13, baseType: !30, size: 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3299, file: !3013, line: 13, baseType: !30, size: 32, offset: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3299, file: !3013, line: 13, baseType: !30, size: 32, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3299, file: !3013, line: 13, baseType: !3305, size: 256, offset: 128)
!3305 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3306, line: 37, size: 256, elements: !3307)
!3306 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3307 = !{!3308, !3313, !3326, !3332, !3341, !3368, !3373}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3305, file: !3306, line: 42, baseType: !3309, size: 64)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3305, file: !3306, line: 39, size: 64, elements: !3310)
!3310 = !{!3311, !3312}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3309, file: !3306, line: 40, baseType: !2853, size: 32)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3309, file: !3306, line: 41, baseType: !414, size: 32, offset: 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3305, file: !3306, line: 50, baseType: !3314, size: 192)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3305, file: !3306, line: 45, size: 192, elements: !3315)
!3315 = !{!3316, !3318, !3319, !3325}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3314, file: !3306, line: 46, baseType: !3317, size: 32)
!3317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !45, line: 95, baseType: !30)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3314, file: !3306, line: 47, baseType: !30, size: 32, offset: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3314, file: !3306, line: 48, baseType: !3320, size: 64, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3306, line: 11, baseType: !3321)
!3321 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3306, line: 8, size: 64, elements: !3322)
!3322 = !{!3323, !3324}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3321, file: !3306, line: 9, baseType: !30, size: 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3321, file: !3306, line: 10, baseType: !28, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3314, file: !3306, line: 49, baseType: !30, size: 32, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3305, file: !3306, line: 57, baseType: !3327, size: 128)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3305, file: !3306, line: 53, size: 128, elements: !3328)
!3328 = !{!3329, !3330, !3331}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3327, file: !3306, line: 54, baseType: !2853, size: 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3327, file: !3306, line: 55, baseType: !414, size: 32, offset: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3327, file: !3306, line: 56, baseType: !3320, size: 64, offset: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3305, file: !3306, line: 66, baseType: !3333, size: 256)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3305, file: !3306, line: 60, size: 256, elements: !3334)
!3334 = !{!3335, !3336, !3337, !3338, !3340}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3333, file: !3306, line: 61, baseType: !2853, size: 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3333, file: !3306, line: 62, baseType: !414, size: 32, offset: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3333, file: !3306, line: 63, baseType: !30, size: 32, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3333, file: !3306, line: 64, baseType: !3339, size: 64, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !45, line: 94, baseType: !992)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3333, file: !3306, line: 65, baseType: !3339, size: 64, offset: 192)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3305, file: !3306, line: 105, baseType: !3342, size: 256)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3305, file: !3306, line: 69, size: 256, elements: !3343)
!3343 = !{!3344, !3345}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3342, file: !3306, line: 70, baseType: !28, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, scope: !3342, file: !3306, line: 79, baseType: !3346, size: 192, offset: 64)
!3346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3342, file: !3306, line: 79, size: 192, elements: !3347)
!3347 = !{!3348, !3349, !3350, !3357, !3362}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3346, file: !3306, line: 81, baseType: !30, size: 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3346, file: !3306, line: 86, baseType: !500, size: 16)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3346, file: !3306, line: 92, baseType: !3351, size: 192)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3346, file: !3306, line: 88, size: 192, elements: !3352)
!3352 = !{!3353, !3355, !3356}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3351, file: !3306, line: 89, baseType: !3354, size: 64)
!3354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !2646)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3351, file: !3306, line: 90, baseType: !28, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3351, file: !3306, line: 91, baseType: !28, size: 64, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3346, file: !3306, line: 97, baseType: !3358, size: 96)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3346, file: !3306, line: 94, size: 96, elements: !3359)
!3359 = !{!3360, !3361}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3358, file: !3306, line: 95, baseType: !3354, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3358, file: !3306, line: 96, baseType: !496, size: 32, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3346, file: !3306, line: 103, baseType: !3363, size: 128)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3346, file: !3306, line: 99, size: 128, elements: !3364)
!3364 = !{!3365, !3366, !3367}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3363, file: !3306, line: 100, baseType: !47, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3363, file: !3306, line: 101, baseType: !496, size: 32, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3363, file: !3306, line: 102, baseType: !496, size: 32, offset: 96)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3305, file: !3306, line: 111, baseType: !3369, size: 128)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3305, file: !3306, line: 108, size: 128, elements: !3370)
!3370 = !{!3371, !3372}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3369, file: !3306, line: 109, baseType: !762, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3369, file: !3306, line: 110, baseType: !30, size: 32, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3305, file: !3306, line: 118, baseType: !3374, size: 128)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3305, file: !3306, line: 114, size: 128, elements: !3375)
!3375 = !{!3376, !3377, !3378}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3374, file: !3306, line: 115, baseType: !28, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3374, file: !3306, line: 116, baseType: !30, size: 32, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3374, file: !3306, line: 117, baseType: !7, size: 32, offset: 96)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2492, file: !2493, line: 1208, baseType: !3097, size: 448, offset: 17664)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2492, file: !2493, line: 1215, baseType: !445, size: 64, offset: 18112)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2492, file: !2493, line: 1217, baseType: !445, size: 64, offset: 18176)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2492, file: !2493, line: 1219, baseType: !445, size: 64, offset: 18240)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2492, file: !2493, line: 1223, baseType: !3384, size: 64, offset: 18304)
!3384 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3385, line: 99, baseType: !3386)
!3385 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3385, line: 99, size: 64, elements: !3387)
!3387 = !{!3388}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3386, file: !3385, line: 99, baseType: !2723, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2492, file: !2493, line: 1225, baseType: !804, size: 32, offset: 18368)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2492, file: !2493, line: 1226, baseType: !30, size: 32, offset: 18400)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2492, file: !2493, line: 1227, baseType: !30, size: 32, offset: 18432)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2492, file: !2493, line: 1231, baseType: !2969, size: 64, offset: 18496)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2492, file: !2493, line: 1233, baseType: !105, size: 128, offset: 18560)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2492, file: !2493, line: 1240, baseType: !3395, size: 64, offset: 18688)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2493, line: 62, flags: DIFlagFwdDecl)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2492, file: !2493, line: 1242, baseType: !3398, size: 64, offset: 18752)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2493, line: 1242, flags: DIFlagFwdDecl)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2492, file: !2493, line: 1244, baseType: !105, size: 128, offset: 18816)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2492, file: !2493, line: 1245, baseType: !3402, size: 64, offset: 18944)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2493, line: 51, flags: DIFlagFwdDecl)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2492, file: !2493, line: 1246, baseType: !328, size: 256, offset: 19008)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2492, file: !2493, line: 1247, baseType: !7, size: 32, offset: 19264)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2492, file: !2493, line: 1250, baseType: !3407, size: 64, offset: 19328)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2493, line: 57, flags: DIFlagFwdDecl)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2492, file: !2493, line: 1251, baseType: !328, size: 256, offset: 19392)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2492, file: !2493, line: 1252, baseType: !105, size: 128, offset: 19648)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2492, file: !2493, line: 1259, baseType: !1681, size: 64, offset: 19776)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2492, file: !2493, line: 1260, baseType: !500, size: 16, offset: 19840)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2492, file: !2493, line: 1261, baseType: !500, size: 16, offset: 19856)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2492, file: !2493, line: 1314, baseType: !3415, size: 64, offset: 19904)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3417, line: 62, size: 256, align: 256, elements: !3418)
!3417 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3418 = !{!3419, !3420, !3421, !3422, !3423, !3424, !3425}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3416, file: !3417, line: 75, baseType: !496, size: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3416, file: !3417, line: 90, baseType: !496, size: 32, offset: 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3416, file: !3417, line: 112, baseType: !446, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3416, file: !3417, line: 132, baseType: !496, size: 32, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3416, file: !3417, line: 140, baseType: !496, size: 32, offset: 160)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3416, file: !3417, line: 149, baseType: !496, size: 32, offset: 192)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3416, file: !3417, line: 154, baseType: !3426, offset: 224)
!3426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, elements: !404)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2492, file: !2493, line: 1315, baseType: !495, size: 32, offset: 19968)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2492, file: !2493, line: 1316, baseType: !495, size: 32, offset: 20000)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2492, file: !2493, line: 1321, baseType: !47, size: 64, offset: 20032)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2492, file: !2493, line: 1325, baseType: !30, size: 32, offset: 20096)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2492, file: !2493, line: 1326, baseType: !30, size: 32, offset: 20128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2492, file: !2493, line: 1327, baseType: !30, size: 32, offset: 20160)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2492, file: !2493, line: 1328, baseType: !30, size: 32, offset: 20192)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2492, file: !2493, line: 1329, baseType: !306, size: 128, align: 64, offset: 20224)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2492, file: !2493, line: 1332, baseType: !3436, size: 128, offset: 20352)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3437, line: 51, size: 128, elements: !3438)
!3437 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3438 = !{!3439, !3444, !3445}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3436, file: !3437, line: 60, baseType: !3440, size: 64)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3441, line: 7, size: 64, elements: !3442)
!3441 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3442 = !{!3443}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3440, file: !3441, line: 12, baseType: !2720, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3436, file: !3437, line: 63, baseType: !531, size: 8, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3436, file: !3437, line: 70, baseType: !531, size: 8, offset: 72)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2492, file: !2493, line: 1335, baseType: !3447, size: 64, offset: 20480)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2493, line: 59, flags: DIFlagFwdDecl)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2492, file: !2493, line: 1337, baseType: !3450, size: 128, offset: 20544)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3437, line: 39, size: 128, elements: !3451)
!3451 = !{!3452, !3453, !3454}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3450, file: !3437, line: 40, baseType: !1220, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3450, file: !3437, line: 42, baseType: !496, size: 32, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3450, file: !3437, line: 43, baseType: !496, size: 32, offset: 96)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2492, file: !2493, line: 1340, baseType: !3456, size: 64, offset: 20672)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2493, line: 69, flags: DIFlagFwdDecl)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2492, file: !2493, line: 1351, baseType: !30, size: 32, offset: 20736)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2492, file: !2493, line: 1352, baseType: !30, size: 32, offset: 20768)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2492, file: !2493, line: 1354, baseType: !47, size: 64, offset: 20800)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2492, file: !2493, line: 1364, baseType: !445, size: 64, offset: 20864)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2492, file: !2493, line: 1365, baseType: !445, size: 64, offset: 20928)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2492, file: !2493, line: 1412, baseType: !47, size: 64, offset: 20992)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2492, file: !2493, line: 1453, baseType: !3465, size: 64, offset: 21056)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2493, line: 1453, flags: DIFlagFwdDecl)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2492, file: !2493, line: 1457, baseType: !3468, size: 64, offset: 21120)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !153, line: 61, size: 576, elements: !3470)
!3470 = !{!3471, !3472, !3491, !3494, !3495, !3528, !3538}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3469, file: !153, line: 62, baseType: !152, size: 32)
!3472 = !DIDerivedType(tag: DW_TAG_member, scope: !3469, file: !153, line: 64, baseType: !3473, size: 192, offset: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3469, file: !153, line: 64, size: 192, elements: !3474)
!3474 = !{!3475, !3486}
!3475 = !DIDerivedType(tag: DW_TAG_member, scope: !3473, file: !153, line: 65, baseType: !3476, size: 192)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3473, file: !153, line: 65, size: 192, elements: !3477)
!3477 = !{!3478, !3485}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3476, file: !153, line: 66, baseType: !3479, size: 128)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3480, line: 50, size: 128, elements: !3481)
!3480 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3481 = !{!3482, !3483, !3484}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3479, file: !3480, line: 52, baseType: !47, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3479, file: !3480, line: 54, baseType: !7, size: 32, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3479, file: !3480, line: 55, baseType: !7, size: 32, offset: 96)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3476, file: !153, line: 67, baseType: !47, size: 64, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, scope: !3473, file: !153, line: 70, baseType: !3487, size: 192)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3473, file: !153, line: 70, size: 192, elements: !3488)
!3488 = !{!3489, !3490}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3487, file: !153, line: 71, baseType: !306, size: 128, align: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3487, file: !153, line: 72, baseType: !47, size: 64, offset: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3469, file: !153, line: 76, baseType: !3492, size: 64, offset: 256)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !153, line: 76, flags: DIFlagFwdDecl)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3469, file: !153, line: 77, baseType: !47, size: 64, offset: 320)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3469, file: !153, line: 79, baseType: !3496, size: 64, offset: 384)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3480, line: 25, size: 256, elements: !3498)
!3498 = !{!3499, !3505, !3509}
!3499 = !DIDerivedType(tag: DW_TAG_member, scope: !3497, file: !3480, line: 26, baseType: !3500, size: 128)
!3500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3497, file: !3480, line: 26, size: 128, elements: !3501)
!3501 = !{!3502, !3504}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3500, file: !3480, line: 27, baseType: !3503, size: 128)
!3503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 128, elements: !2911)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3500, file: !3480, line: 28, baseType: !3503, size: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3497, file: !3480, line: 31, baseType: !3506, size: 64, offset: 128)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3508)
!3508 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3480, line: 23, flags: DIFlagFwdDecl)
!3509 = !DIDerivedType(tag: DW_TAG_member, scope: !3497, file: !3480, line: 33, baseType: !3510, size: 64, offset: 192)
!3510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3497, file: !3480, line: 33, size: 64, elements: !3511)
!3511 = !{!3512, !3518, !3523}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3510, file: !3480, line: 38, baseType: !3513, size: 64)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3510, file: !3480, line: 34, size: 64, elements: !3514)
!3514 = !{!3515, !3516, !3517}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3513, file: !3480, line: 35, baseType: !462, size: 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3513, file: !3480, line: 36, baseType: !91, size: 8, offset: 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3513, file: !3480, line: 37, baseType: !91, size: 8, offset: 40)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3510, file: !3480, line: 42, baseType: !3519, size: 16)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3510, file: !3480, line: 39, size: 16, elements: !3520)
!3520 = !{!3521, !3522}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3519, file: !3480, line: 40, baseType: !91, size: 8)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3519, file: !3480, line: 41, baseType: !91, size: 8, offset: 8)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3510, file: !3480, line: 46, baseType: !3524, size: 16)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3510, file: !3480, line: 43, size: 16, elements: !3525)
!3525 = !{!3526, !3527}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3524, file: !3480, line: 44, baseType: !91, size: 8)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3524, file: !3480, line: 45, baseType: !91, size: 8, offset: 8)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3469, file: !153, line: 81, baseType: !3529, size: 64, offset: 448)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !153, line: 85, size: 384, elements: !3531)
!3531 = !{!3532, !3533, !3534, !3535, !3536, !3537}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3530, file: !153, line: 86, baseType: !3492, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3530, file: !153, line: 87, baseType: !47, size: 64, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3530, file: !153, line: 88, baseType: !47, size: 64, offset: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3530, file: !153, line: 89, baseType: !47, size: 64, offset: 192)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3530, file: !153, line: 90, baseType: !531, size: 8, offset: 256)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3530, file: !153, line: 92, baseType: !3529, size: 64, offset: 320)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3469, file: !153, line: 82, baseType: !7, size: 32, offset: 512)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2492, file: !2493, line: 1463, baseType: !3540, offset: 21184)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2493, line: 739, elements: !1509)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2492, file: !2493, line: 1470, baseType: !306, size: 128, align: 64, offset: 21184)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2492, file: !2493, line: 1471, baseType: !373, size: 32, offset: 21312)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2492, file: !2493, line: 1472, baseType: !30, size: 32, offset: 21344)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2492, file: !2493, line: 1474, baseType: !2491, size: 64, offset: 21376)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2492, file: !2493, line: 1475, baseType: !1977, size: 320, offset: 21440)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2492, file: !2493, line: 1478, baseType: !3547, size: 64, offset: 21760)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3549, line: 14, flags: DIFlagFwdDecl)
!3549 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2492, file: !2493, line: 1482, baseType: !373, size: 32, offset: 21824)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2492, file: !2493, line: 1489, baseType: !28, size: 64, offset: 21888)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2492, file: !2493, line: 1504, baseType: !28, size: 64, offset: 21952)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2492, file: !2493, line: 1505, baseType: !446, size: 64, offset: 22016)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2492, file: !2493, line: 1506, baseType: !445, size: 64, offset: 22080)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2492, file: !2493, line: 1507, baseType: !446, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2492, file: !2493, line: 1508, baseType: !446, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2492, file: !2493, line: 1509, baseType: !446, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2492, file: !2493, line: 1510, baseType: !306, size: 128, align: 64, offset: 22208)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2492, file: !2493, line: 1511, baseType: !30, size: 32, offset: 22336)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2492, file: !2493, line: 1515, baseType: !3561, size: 64, offset: 22400)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !301, line: 56, size: 64, elements: !3562)
!3562 = !{!3563}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3561, file: !301, line: 57, baseType: !304, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2492, file: !2493, line: 1518, baseType: !3561, size: 64, offset: 22464)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2492, file: !2493, line: 1528, baseType: !306, size: 128, align: 64, offset: 22528)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2492, file: !2493, line: 1552, baseType: !3567, size: 35328, offset: 23040)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3568, line: 430, size: 35328, elements: !3569)
!3568 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3569 = !{!3570, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3599, !3600, !3601, !3602, !3603, !3604, !3607, !3608, !3609, !3610}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3567, file: !3568, line: 432, baseType: !3571, size: 192)
!3571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3572, size: 192, elements: !365)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3573, line: 16, size: 64, elements: !3574)
!3573 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3572, file: !3573, line: 17, baseType: !101, size: 16)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3572, file: !3573, line: 18, baseType: !101, size: 16, offset: 16)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3572, file: !3573, line: 19, baseType: !101, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3572, file: !3573, line: 19, baseType: !101, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3572, file: !3573, line: 19, baseType: !101, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3572, file: !3573, line: 19, baseType: !101, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3572, file: !3573, line: 19, baseType: !101, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3572, file: !3573, line: 20, baseType: !101, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3572, file: !3573, line: 20, baseType: !101, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3572, file: !3573, line: 20, baseType: !101, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3572, file: !3573, line: 20, baseType: !101, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3572, file: !3573, line: 20, baseType: !101, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3572, file: !3573, line: 20, baseType: !101, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3567, file: !3568, line: 436, baseType: !47, size: 64, offset: 192)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3567, file: !3568, line: 440, baseType: !34, size: 16, offset: 256)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3567, file: !3568, line: 441, baseType: !34, size: 16, offset: 272)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3567, file: !3568, line: 442, baseType: !34, size: 16, offset: 288)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3567, file: !3568, line: 443, baseType: !34, size: 16, offset: 304)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3567, file: !3568, line: 447, baseType: !47, size: 64, offset: 320)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3567, file: !3568, line: 448, baseType: !47, size: 64, offset: 384)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3567, file: !3568, line: 459, baseType: !3596, size: 256, offset: 448)
!3596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3597, size: 256, elements: !391)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3568, line: 428, flags: DIFlagFwdDecl)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3567, file: !3568, line: 461, baseType: !47, size: 64, offset: 704)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3567, file: !3568, line: 463, baseType: !47, size: 64, offset: 768)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3567, file: !3568, line: 465, baseType: !47, size: 64, offset: 832)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3567, file: !3568, line: 466, baseType: !47, size: 64, offset: 896)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3567, file: !3568, line: 467, baseType: !47, size: 64, offset: 960)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3567, file: !3568, line: 473, baseType: !3605, size: 64, offset: 1024)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3568, line: 10, flags: DIFlagFwdDecl)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3567, file: !3568, line: 480, baseType: !47, size: 64, offset: 1088)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3567, file: !3568, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3567, file: !3568, line: 491, baseType: !495, size: 32, offset: 1184)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3567, file: !3568, line: 501, baseType: !3611, size: 33792, offset: 1536)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3612, line: 448, size: 33792, elements: !3613)
!3612 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3613 = !{!3614, !3615, !3616, !3778, !3779, !3785, !3786}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3611, file: !3612, line: 461, baseType: !7, size: 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3611, file: !3612, line: 468, baseType: !47, size: 64, offset: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3611, file: !3612, line: 476, baseType: !3617, size: 64, offset: 128)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3612, line: 356, size: 33280, align: 512, elements: !3619)
!3619 = !{!3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3618, file: !3612, line: 358, baseType: !7, size: 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3618, file: !3612, line: 361, baseType: !7, size: 32, offset: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3618, file: !3612, line: 364, baseType: !445, size: 64, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3618, file: !3612, line: 367, baseType: !445, size: 64, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3618, file: !3612, line: 370, baseType: !445, size: 64, offset: 192)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3618, file: !3612, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3618, file: !3612, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3618, file: !3612, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3618, file: !3612, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3618, file: !3612, line: 397, baseType: !3630, size: 32768, offset: 512)
!3630 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3612, line: 348, size: 32768, elements: !3631)
!3631 = !{!3632, !3647, !3684, !3761, !3774}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3630, file: !3612, line: 349, baseType: !3633, size: 896)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3612, line: 12, size: 896, elements: !3634)
!3634 = !{!3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3646}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3633, file: !3612, line: 13, baseType: !495, size: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3633, file: !3612, line: 14, baseType: !495, size: 32, offset: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3633, file: !3612, line: 15, baseType: !495, size: 32, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3633, file: !3612, line: 16, baseType: !495, size: 32, offset: 96)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3633, file: !3612, line: 17, baseType: !495, size: 32, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3633, file: !3612, line: 18, baseType: !495, size: 32, offset: 160)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3633, file: !3612, line: 19, baseType: !495, size: 32, offset: 192)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3633, file: !3612, line: 22, baseType: !3643, size: 640, offset: 224)
!3643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 640, elements: !3644)
!3644 = !{!3645}
!3645 = !DISubrange(count: 20)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3633, file: !3612, line: 25, baseType: !495, size: 32, offset: 864)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3630, file: !3612, line: 350, baseType: !3648, size: 4096, align: 128)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3612, line: 34, size: 4096, align: 128, elements: !3649)
!3649 = !{!3650, !3651, !3652, !3653, !3654, !3669, !3670, !3671, !3673, !3675, !3679}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3648, file: !3612, line: 35, baseType: !101, size: 16)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3648, file: !3612, line: 36, baseType: !101, size: 16, offset: 16)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3648, file: !3612, line: 37, baseType: !101, size: 16, offset: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3648, file: !3612, line: 38, baseType: !101, size: 16, offset: 48)
!3654 = !DIDerivedType(tag: DW_TAG_member, scope: !3648, file: !3612, line: 39, baseType: !3655, size: 128, offset: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3648, file: !3612, line: 39, size: 128, elements: !3656)
!3656 = !{!3657, !3662}
!3657 = !DIDerivedType(tag: DW_TAG_member, scope: !3655, file: !3612, line: 40, baseType: !3658, size: 128)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3655, file: !3612, line: 40, size: 128, elements: !3659)
!3659 = !{!3660, !3661}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3658, file: !3612, line: 41, baseType: !445, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3658, file: !3612, line: 42, baseType: !445, size: 64, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, scope: !3655, file: !3612, line: 44, baseType: !3663, size: 128)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3655, file: !3612, line: 44, size: 128, elements: !3664)
!3664 = !{!3665, !3666, !3667, !3668}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3663, file: !3612, line: 45, baseType: !495, size: 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3663, file: !3612, line: 46, baseType: !495, size: 32, offset: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3663, file: !3612, line: 47, baseType: !495, size: 32, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3663, file: !3612, line: 48, baseType: !495, size: 32, offset: 96)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3648, file: !3612, line: 51, baseType: !495, size: 32, offset: 192)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3648, file: !3612, line: 52, baseType: !495, size: 32, offset: 224)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3648, file: !3612, line: 55, baseType: !3672, size: 1024, offset: 256)
!3672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 1024, elements: !3144)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3648, file: !3612, line: 58, baseType: !3674, size: 2048, offset: 1280)
!3674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 2048, elements: !1135)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3648, file: !3612, line: 60, baseType: !3676, size: 384, offset: 3328)
!3676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 384, elements: !3677)
!3677 = !{!3678}
!3678 = !DISubrange(count: 12)
!3679 = !DIDerivedType(tag: DW_TAG_member, scope: !3648, file: !3612, line: 62, baseType: !3680, size: 384, offset: 3712)
!3680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3648, file: !3612, line: 62, size: 384, elements: !3681)
!3681 = !{!3682, !3683}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3680, file: !3612, line: 63, baseType: !3676, size: 384)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3680, file: !3612, line: 64, baseType: !3676, size: 384)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3630, file: !3612, line: 351, baseType: !3685, size: 1088)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3612, line: 79, size: 1088, elements: !3686)
!3686 = !{!3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3760}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3685, file: !3612, line: 80, baseType: !495, size: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3685, file: !3612, line: 81, baseType: !495, size: 32, offset: 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3685, file: !3612, line: 82, baseType: !495, size: 32, offset: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3685, file: !3612, line: 83, baseType: !495, size: 32, offset: 96)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3685, file: !3612, line: 84, baseType: !495, size: 32, offset: 128)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3685, file: !3612, line: 85, baseType: !495, size: 32, offset: 160)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3685, file: !3612, line: 86, baseType: !495, size: 32, offset: 192)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3685, file: !3612, line: 88, baseType: !3643, size: 640, offset: 224)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3685, file: !3612, line: 89, baseType: !91, size: 8, offset: 864)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3685, file: !3612, line: 90, baseType: !91, size: 8, offset: 872)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3685, file: !3612, line: 91, baseType: !91, size: 8, offset: 880)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3685, file: !3612, line: 92, baseType: !91, size: 8, offset: 888)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3685, file: !3612, line: 93, baseType: !91, size: 8, offset: 896)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3685, file: !3612, line: 94, baseType: !91, size: 8, offset: 904)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3685, file: !3612, line: 95, baseType: !3702, size: 64, offset: 960)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3704, line: 11, size: 128, elements: !3705)
!3704 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3705 = !{!3706, !3707}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3703, file: !3704, line: 12, baseType: !762, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3703, file: !3704, line: 13, baseType: !3708, size: 64, offset: 64)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3710, line: 103, size: 1344, elements: !3711)
!3710 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3711 = !{!3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3740, !3741, !3742}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3709, file: !3710, line: 109, baseType: !47, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3709, file: !3710, line: 110, baseType: !47, size: 64, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3709, file: !3710, line: 111, baseType: !47, size: 64, offset: 128)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3709, file: !3710, line: 112, baseType: !47, size: 64, offset: 192)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3709, file: !3710, line: 113, baseType: !47, size: 64, offset: 256)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3709, file: !3710, line: 114, baseType: !47, size: 64, offset: 320)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3709, file: !3710, line: 117, baseType: !47, size: 64, offset: 384)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3709, file: !3710, line: 118, baseType: !47, size: 64, offset: 448)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3709, file: !3710, line: 119, baseType: !47, size: 64, offset: 512)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3709, file: !3710, line: 120, baseType: !47, size: 64, offset: 576)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3709, file: !3710, line: 121, baseType: !47, size: 64, offset: 640)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3709, file: !3710, line: 122, baseType: !47, size: 64, offset: 704)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3709, file: !3710, line: 123, baseType: !47, size: 64, offset: 768)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3709, file: !3710, line: 124, baseType: !47, size: 64, offset: 832)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3709, file: !3710, line: 125, baseType: !47, size: 64, offset: 896)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3709, file: !3710, line: 139, baseType: !47, size: 64, offset: 960)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3709, file: !3710, line: 142, baseType: !47, size: 64, offset: 1024)
!3729 = !DIDerivedType(tag: DW_TAG_member, scope: !3709, file: !3710, line: 144, baseType: !3730, size: 64, offset: 1088)
!3730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3709, file: !3710, line: 144, size: 64, elements: !3731)
!3731 = !{!3732, !3733, !3734}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3730, file: !3710, line: 146, baseType: !101, size: 16)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3730, file: !3710, line: 148, baseType: !445, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3730, file: !3710, line: 150, baseType: !3735, size: 64)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3710, line: 59, size: 64, elements: !3736)
!3736 = !{!3737, !3738, !3739}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3735, file: !3710, line: 61, baseType: !445, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3735, file: !3710, line: 63, baseType: !445, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3735, file: !3710, line: 65, baseType: !445, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3709, file: !3710, line: 153, baseType: !47, size: 64, offset: 1152)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3709, file: !3710, line: 154, baseType: !47, size: 64, offset: 1216)
!3742 = !DIDerivedType(tag: DW_TAG_member, scope: !3709, file: !3710, line: 156, baseType: !3743, size: 64, offset: 1280)
!3743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3709, file: !3710, line: 156, size: 64, elements: !3744)
!3744 = !{!3745, !3746, !3747}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3743, file: !3710, line: 158, baseType: !101, size: 16)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3743, file: !3710, line: 160, baseType: !445, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3743, file: !3710, line: 162, baseType: !3748, size: 64)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3710, line: 69, size: 64, elements: !3749)
!3749 = !{!3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3748, file: !3710, line: 71, baseType: !445, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3748, file: !3710, line: 73, baseType: !445, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3748, file: !3710, line: 75, baseType: !445, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3748, file: !3710, line: 77, baseType: !445, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3748, file: !3710, line: 80, baseType: !445, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3748, file: !3710, line: 83, baseType: !445, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3748, file: !3710, line: 86, baseType: !445, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3748, file: !3710, line: 88, baseType: !445, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3748, file: !3710, line: 93, baseType: !445, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3748, file: !3710, line: 100, baseType: !445, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3685, file: !3612, line: 96, baseType: !495, size: 32, offset: 1024)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3630, file: !3612, line: 352, baseType: !3762, size: 4608, align: 512)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3612, line: 333, size: 4608, align: 512, elements: !3763)
!3763 = !{!3764, !3765, !3772}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3762, file: !3612, line: 334, baseType: !3648, size: 4096, align: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3762, file: !3612, line: 335, baseType: !3766, size: 512, offset: 4096)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3612, line: 312, size: 512, elements: !3767)
!3767 = !{!3768, !3769, !3770}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3766, file: !3612, line: 313, baseType: !445, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3766, file: !3612, line: 314, baseType: !445, size: 64, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3766, file: !3612, line: 315, baseType: !3771, size: 384, offset: 128)
!3771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 384, elements: !518)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3762, file: !3612, line: 336, baseType: !3773, offset: 4608)
!3773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, elements: !404)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3630, file: !3612, line: 353, baseType: !3775, size: 32768)
!3775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 32768, elements: !3776)
!3776 = !{!3777}
!3777 = !DISubrange(count: 4096)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3611, file: !3612, line: 484, baseType: !3617, size: 64, offset: 192)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3611, file: !3612, line: 491, baseType: !3780, size: 128, offset: 256)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3612, line: 404, size: 128, elements: !3781)
!3781 = !{!3782, !3783, !3784}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3780, file: !3612, line: 424, baseType: !445, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3780, file: !3612, line: 432, baseType: !7, size: 32, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3780, file: !3612, line: 440, baseType: !7, size: 32, offset: 96)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3611, file: !3612, line: 498, baseType: !3780, size: 128, offset: 384)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3611, file: !3612, line: 508, baseType: !3618, size: 33280, align: 512, offset: 512)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2474, file: !2475, line: 16, baseType: !62, size: 192, offset: 512)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2474, file: !2475, line: 17, baseType: !57, size: 32, offset: 704)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1047, file: !136, line: 1240, baseType: !28, size: 64, offset: 6912)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1047, file: !136, line: 1243, baseType: !495, size: 32, offset: 6976)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1047, file: !136, line: 1245, baseType: !486, size: 64, offset: 7040)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1047, file: !136, line: 1246, baseType: !486, size: 64, offset: 7104)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1047, file: !136, line: 1248, baseType: !496, size: 32, offset: 7168)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1047, file: !136, line: 1249, baseType: !3795, size: 64, offset: 7232)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !136, line: 634, flags: DIFlagFwdDecl)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1047, file: !136, line: 1252, baseType: !3143, size: 256, offset: 7296)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1047, file: !136, line: 1253, baseType: !3799, size: 128, offset: 7552)
!3799 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3800, line: 21, baseType: !3801)
!3800 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3800, line: 19, size: 128, elements: !3802)
!3802 = !{!3803}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3801, file: !3800, line: 20, baseType: !3804, size: 128)
!3804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, elements: !2911)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1047, file: !136, line: 1255, baseType: !7, size: 32, offset: 7680)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1047, file: !136, line: 1261, baseType: !328, size: 256, offset: 7744)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1047, file: !136, line: 1267, baseType: !24, size: 64, offset: 8000)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1047, file: !136, line: 1269, baseType: !3809, size: 64, offset: 8064)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3811)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !800, line: 128, size: 1024, align: 512, elements: !3812)
!3812 = !{!3813, !3817, !3818, !3825, !3831, !3835, !3839, !3843, !3844, !3848, !3852, !3857, !3861}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3811, file: !800, line: 129, baseType: !3814, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!30, !798, !7}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3811, file: !800, line: 130, baseType: !3814, size: 64, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3811, file: !800, line: 131, baseType: !3819, size: 64, offset: 128)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!30, !3822, !3824}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !799)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3811, file: !800, line: 132, baseType: !3826, size: 64, offset: 192)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!30, !3822, !7, !24, !3829}
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !823)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3811, file: !800, line: 134, baseType: !3832, size: 64, offset: 256)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!30, !3822}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3811, file: !800, line: 135, baseType: !3836, size: 64, offset: 320)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!30, !798}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3811, file: !800, line: 136, baseType: !3840, size: 64, offset: 384)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{null, !798}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3811, file: !800, line: 137, baseType: !3840, size: 64, offset: 448)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3811, file: !800, line: 138, baseType: !3845, size: 64, offset: 512)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{null, !798, !838}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3811, file: !800, line: 139, baseType: !3849, size: 64, offset: 576)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!542, !798, !542, !30}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3811, file: !800, line: 140, baseType: !3853, size: 64, offset: 640)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!793, !3856}
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3811, file: !800, line: 141, baseType: !3858, size: 64, offset: 704)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!30, !959, !531}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3811, file: !800, line: 142, baseType: !3862, size: 64, offset: 768)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!798, !798, !3865}
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !839)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1047, file: !136, line: 1271, baseType: !3868, size: 448, offset: 8128)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2256, line: 63, size: 448, elements: !3869)
!3869 = !{!3870, !3875, !3876, !3877, !3878, !3879, !3880}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3868, file: !2256, line: 64, baseType: !3871, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!47, !3874, !2254}
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3868, file: !2256, line: 66, baseType: !3871, size: 64, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3868, file: !2256, line: 69, baseType: !762, size: 64, offset: 128)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3868, file: !2256, line: 70, baseType: !30, size: 32, offset: 192)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3868, file: !2256, line: 71, baseType: !7, size: 32, offset: 224)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3868, file: !2256, line: 74, baseType: !105, size: 128, offset: 256)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3868, file: !2256, line: 85, baseType: !3881, size: 64, offset: 384)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1047, file: !136, line: 1274, baseType: !319, size: 64, offset: 8576)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1047, file: !136, line: 1280, baseType: !319, size: 64, offset: 8640)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1047, file: !136, line: 1283, baseType: !30, size: 32, offset: 8704)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1047, file: !136, line: 1286, baseType: !1461, size: 32, offset: 8736)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1047, file: !136, line: 1289, baseType: !2039, size: 64, offset: 8768)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1047, file: !136, line: 1290, baseType: !382, size: 64, offset: 8832)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1047, file: !136, line: 1297, baseType: !615, size: 64, offset: 8896)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1047, file: !136, line: 1304, baseType: !3890, size: 64, offset: 8960)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3891, line: 49, size: 64, elements: !3892)
!3891 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3892 = !{!3893}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3890, file: !3891, line: 50, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3891, line: 41, size: 512, align: 512, elements: !3896)
!3896 = !{!3897, !3898, !3903}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3895, file: !3891, line: 43, baseType: !67, size: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3895, file: !3891, line: 45, baseType: !3899, size: 192, offset: 64)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3891, line: 29, size: 192, elements: !3900)
!3900 = !{!3901, !3902}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3899, file: !3891, line: 30, baseType: !105, size: 128)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3899, file: !3891, line: 32, baseType: !762, size: 64, offset: 128)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3895, file: !3891, line: 46, baseType: !762, size: 64, offset: 256)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1047, file: !136, line: 1305, baseType: !3890, size: 64, offset: 9024)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1047, file: !136, line: 1306, baseType: !306, size: 128, align: 64, offset: 9088)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1047, file: !136, line: 1307, baseType: !664, size: 256, offset: 9216)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1047, file: !136, line: 1309, baseType: !328, size: 256, offset: 9472)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1047, file: !136, line: 1314, baseType: !30, size: 32, offset: 9728)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1047, file: !136, line: 1317, baseType: !67, size: 32, align: 512, offset: 10240)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1047, file: !136, line: 1318, baseType: !105, size: 128, offset: 10304)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1047, file: !136, line: 1320, baseType: !67, size: 32, offset: 10432)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1047, file: !136, line: 1321, baseType: !105, size: 128, offset: 10496)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !839, file: !136, line: 656, baseType: !1196, size: 64, offset: 512)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !839, file: !136, line: 659, baseType: !28, size: 64, offset: 576)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !839, file: !136, line: 663, baseType: !47, size: 64, offset: 640)
!3916 = !DIDerivedType(tag: DW_TAG_member, scope: !839, file: !136, line: 671, baseType: !3917, size: 32, offset: 704)
!3917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !839, file: !136, line: 671, size: 32, elements: !3918)
!3918 = !{!3919, !3921}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3917, file: !136, line: 672, baseType: !3920, size: 32)
!3920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3917, file: !136, line: 673, baseType: !7, size: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !839, file: !136, line: 675, baseType: !912, size: 32, offset: 736)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !839, file: !136, line: 676, baseType: !49, size: 64, offset: 768)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !839, file: !136, line: 677, baseType: !948, size: 128, offset: 832)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !839, file: !136, line: 678, baseType: !948, size: 128, offset: 960)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !839, file: !136, line: 679, baseType: !948, size: 128, offset: 1088)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !839, file: !136, line: 680, baseType: !67, size: 32, offset: 1216)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !839, file: !136, line: 681, baseType: !34, size: 16, offset: 1248)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !839, file: !136, line: 682, baseType: !91, size: 8, offset: 1264)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !839, file: !136, line: 683, baseType: !91, size: 8, offset: 1272)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !839, file: !136, line: 684, baseType: !2387, size: 64, offset: 1280)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !839, file: !136, line: 691, baseType: !47, size: 64, offset: 1344)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !839, file: !136, line: 692, baseType: !470, size: 320, offset: 1408)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !839, file: !136, line: 694, baseType: !47, size: 64, offset: 1728)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !839, file: !136, line: 695, baseType: !47, size: 64, offset: 1792)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !839, file: !136, line: 697, baseType: !386, size: 128, offset: 1856)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !839, file: !136, line: 698, baseType: !105, size: 128, offset: 1984)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !839, file: !136, line: 707, baseType: !105, size: 128, offset: 2112)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !839, file: !136, line: 708, baseType: !105, size: 128, offset: 2240)
!3940 = !DIDerivedType(tag: DW_TAG_member, scope: !839, file: !136, line: 709, baseType: !3941, size: 128, offset: 2368)
!3941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !839, file: !136, line: 709, size: 128, elements: !3942)
!3942 = !{!3943, !3944}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3941, file: !136, line: 710, baseType: !382, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3941, file: !136, line: 711, baseType: !306, size: 128, align: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !839, file: !136, line: 713, baseType: !321, size: 64, offset: 2496)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !839, file: !136, line: 714, baseType: !321, size: 64, offset: 2560)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !839, file: !136, line: 715, baseType: !57, size: 32, offset: 2624)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !839, file: !136, line: 716, baseType: !57, size: 32, offset: 2656)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !839, file: !136, line: 717, baseType: !57, size: 32, offset: 2688)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !839, file: !136, line: 719, baseType: !57, size: 32, offset: 2720)
!3951 = !DIDerivedType(tag: DW_TAG_member, scope: !839, file: !136, line: 721, baseType: !3952, size: 64, offset: 2752)
!3952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !839, file: !136, line: 721, size: 64, elements: !3953)
!3953 = !{!3954, !4082}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3952, file: !136, line: 722, baseType: !3955, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3957)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !136, line: 1914, size: 2112, elements: !3958)
!3958 = !{!3959, !3960, !3964, !3968, !3972, !3973, !3974, !3980, !3993, !4001, !4005, !4006, !4010, !4011, !4015, !4020, !4021, !4025, !4029, !4035, !4036, !4040, !4041, !4045, !4049, !4050, !4055, !4059, !4063, !4067, !4071, !4072, !4078}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3957, file: !136, line: 1915, baseType: !1079, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3957, file: !136, line: 1916, baseType: !3961, size: 64, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!49, !293, !49, !30}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3957, file: !136, line: 1917, baseType: !3965, size: 64, offset: 128)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!990, !293, !542, !43, !48}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3957, file: !136, line: 1918, baseType: !3969, size: 64, offset: 192)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!990, !293, !24, !43, !48}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3957, file: !136, line: 1919, baseType: !1395, size: 64, offset: 256)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3957, file: !136, line: 1920, baseType: !1395, size: 64, offset: 320)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3957, file: !136, line: 1921, baseType: !3975, size: 64, offset: 384)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!30, !1398, !3978, !7}
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !136, line: 53, flags: DIFlagFwdDecl)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3957, file: !136, line: 1923, baseType: !3981, size: 64, offset: 448)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!30, !293, !3984}
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !136, line: 1858, size: 128, elements: !3986)
!3986 = !{!3987, !3992}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3985, file: !136, line: 1859, baseType: !3988, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !136, line: 1855, baseType: !3989)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!531, !3984, !24, !30, !49, !445, !7}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3985, file: !136, line: 1860, baseType: !49, size: 64, offset: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3957, file: !136, line: 1924, baseType: !3994, size: 64, offset: 512)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!3997, !293, !3999}
!3997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3998, line: 59, baseType: !7)
!3998 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !136, line: 61, flags: DIFlagFwdDecl)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3957, file: !136, line: 1925, baseType: !4002, size: 64, offset: 576)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!762, !293, !7, !47}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3957, file: !136, line: 1926, baseType: !4002, size: 64, offset: 640)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3957, file: !136, line: 1927, baseType: !4007, size: 64, offset: 704)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!30, !293, !1475}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3957, file: !136, line: 1928, baseType: !47, size: 64, offset: 768)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3957, file: !136, line: 1929, baseType: !4012, size: 64, offset: 832)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!30, !838, !293}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3957, file: !136, line: 1930, baseType: !4016, size: 64, offset: 896)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!30, !293, !4019}
!4019 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !136, line: 1061, baseType: !28)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3957, file: !136, line: 1931, baseType: !4012, size: 64, offset: 960)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3957, file: !136, line: 1932, baseType: !4022, size: 64, offset: 1024)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!30, !293, !49, !49, !30}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3957, file: !136, line: 1933, baseType: !4026, size: 64, offset: 1088)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!30, !30, !293, !30}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3957, file: !136, line: 1934, baseType: !4030, size: 64, offset: 1152)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!30, !293, !30, !4033}
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !136, line: 1063, flags: DIFlagFwdDecl)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3957, file: !136, line: 1935, baseType: !1513, size: 64, offset: 1216)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3957, file: !136, line: 1936, baseType: !4037, size: 64, offset: 1280)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!30, !30}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3957, file: !136, line: 1937, baseType: !4030, size: 64, offset: 1344)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3957, file: !136, line: 1938, baseType: !4042, size: 64, offset: 1408)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!990, !3447, !293, !48, !43, !7}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3957, file: !136, line: 1939, baseType: !4046, size: 64, offset: 1472)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!990, !293, !48, !3447, !43, !7}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3957, file: !136, line: 1940, baseType: !1451, size: 64, offset: 1536)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3957, file: !136, line: 1941, baseType: !4051, size: 64, offset: 1600)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!30, !293, !30, !4054, !1372}
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3957, file: !136, line: 1942, baseType: !4056, size: 64, offset: 1664)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!762, !293, !30, !49, !49}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3957, file: !136, line: 1944, baseType: !4060, size: 64, offset: 1728)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{null, !2154, !293}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3957, file: !136, line: 1948, baseType: !4064, size: 64, offset: 1792)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!990, !293, !49, !293, !49, !43, !7}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3957, file: !136, line: 1950, baseType: !4068, size: 64, offset: 1856)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!49, !293, !49, !293, !49, !49, !7}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3957, file: !136, line: 1953, baseType: !4022, size: 64, offset: 1920)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3957, file: !136, line: 1954, baseType: !4073, size: 64, offset: 1984)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!30, !4076, !7}
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !136, line: 1911, flags: DIFlagFwdDecl)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3957, file: !136, line: 1955, baseType: !4079, size: 64, offset: 2048)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!30, !4076, !3978, !7}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3952, file: !136, line: 723, baseType: !2107, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !839, file: !136, line: 725, baseType: !4084, size: 64, offset: 2816)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !136, line: 725, flags: DIFlagFwdDecl)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !839, file: !136, line: 726, baseType: !1197, size: 1536, align: 64, offset: 2880)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !839, file: !136, line: 727, baseType: !105, size: 128, offset: 4416)
!4088 = !DIDerivedType(tag: DW_TAG_member, scope: !839, file: !136, line: 728, baseType: !4089, size: 64, offset: 4544)
!4089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !839, file: !136, line: 728, size: 64, elements: !4090)
!4090 = !{!4091, !4092, !4095, !4096}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4089, file: !136, line: 729, baseType: !3447, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4089, file: !136, line: 730, baseType: !4093, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !136, line: 730, flags: DIFlagFwdDecl)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4089, file: !136, line: 731, baseType: !542, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4089, file: !136, line: 732, baseType: !7, size: 32)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !839, file: !136, line: 735, baseType: !496, size: 32, offset: 4608)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !839, file: !136, line: 738, baseType: !496, size: 32, offset: 4640)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !839, file: !136, line: 739, baseType: !3795, size: 64, offset: 4672)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !839, file: !136, line: 750, baseType: !28, size: 64, offset: 4736)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !799, file: !800, line: 91, baseType: !4102, size: 256, offset: 448)
!4102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 256, elements: !3144)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !799, file: !800, line: 94, baseType: !4104, size: 64, offset: 704)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4105, line: 25, size: 64, elements: !4106)
!4105 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4106 = !{!4107}
!4107 = !DIDerivedType(tag: DW_TAG_member, scope: !4104, file: !4105, line: 26, baseType: !4108, size: 64)
!4108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4104, file: !4105, line: 26, size: 64, elements: !4109)
!4109 = !{!4110, !4111}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4108, file: !4105, line: 28, baseType: !446, size: 64, align: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, scope: !4108, file: !4105, line: 30, baseType: !4112, size: 64)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4108, file: !4105, line: 30, size: 64, elements: !4113)
!4113 = !{!4114, !4115}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4112, file: !4105, line: 31, baseType: !67, size: 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4112, file: !4105, line: 32, baseType: !30, size: 32, offset: 32)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !799, file: !800, line: 95, baseType: !3809, size: 64, offset: 768)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !799, file: !800, line: 96, baseType: !1046, size: 64, offset: 832)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !799, file: !800, line: 97, baseType: !47, size: 64, offset: 896)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !799, file: !800, line: 98, baseType: !28, size: 64, offset: 960)
!4120 = !DIDerivedType(tag: DW_TAG_member, scope: !799, file: !800, line: 100, baseType: !4121, size: 128, offset: 1024)
!4121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !799, file: !800, line: 100, size: 128, elements: !4122)
!4122 = !{!4123, !4124}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4121, file: !800, line: 101, baseType: !105, size: 128)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4121, file: !800, line: 102, baseType: !4125, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !799, file: !800, line: 104, baseType: !105, size: 128, offset: 1152)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !799, file: !800, line: 105, baseType: !105, size: 128, offset: 1280)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !799, file: !800, line: 113, baseType: !4129, size: 128, offset: 1408)
!4129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !799, file: !800, line: 109, size: 128, elements: !4130)
!4130 = !{!4131, !4132, !4133}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4129, file: !800, line: 110, baseType: !386, size: 128)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4129, file: !800, line: 111, baseType: !814, size: 128)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4129, file: !800, line: 112, baseType: !306, size: 128, align: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !794, file: !795, line: 72, baseType: !1046, size: 64, offset: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !794, file: !795, line: 73, baseType: !30, size: 32, offset: 128)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !794, file: !795, line: 74, baseType: !877, size: 64, offset: 192)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !789, file: !790, line: 10, baseType: !798, size: 64, offset: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !294, file: !136, line: 1015, baseType: !838, size: 64, offset: 1344)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !294, file: !136, line: 1016, baseType: !3955, size: 64, offset: 1408)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !294, file: !136, line: 1018, baseType: !445, size: 64, offset: 1472)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !294, file: !136, line: 1020, baseType: !28, size: 64, offset: 1536)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !294, file: !136, line: 1023, baseType: !28, size: 64, offset: 1600)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !294, file: !136, line: 1027, baseType: !4144, size: 64, offset: 1664)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !294, file: !136, line: 1029, baseType: !1196, size: 64, offset: 1728)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !294, file: !136, line: 1030, baseType: !1461, size: 32, offset: 1792)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !294, file: !136, line: 1031, baseType: !1461, size: 32, offset: 1824)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !289, file: !239, line: 255, baseType: !2154, size: 64, offset: 128)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !289, file: !239, line: 256, baseType: !28, size: 64, offset: 192)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !289, file: !239, line: 259, baseType: !328, size: 256, offset: 256)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !289, file: !239, line: 260, baseType: !328, size: 256, offset: 512)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !289, file: !239, line: 261, baseType: !30, size: 32, offset: 768)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !289, file: !239, line: 262, baseType: !105, size: 128, offset: 832)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !289, file: !239, line: 263, baseType: !542, size: 64, offset: 960)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !289, file: !239, line: 265, baseType: !43, size: 64, offset: 1024)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !289, file: !239, line: 266, baseType: !531, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !289, file: !239, line: 267, baseType: !531, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !289, file: !239, line: 268, baseType: !1673, size: 64, offset: 1152)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !282, file: !239, line: 277, baseType: !4160, size: 64, offset: 64)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{null, !288}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !282, file: !239, line: 290, baseType: !2184, size: 64, offset: 128)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !282, file: !239, line: 292, baseType: !2172, size: 64, offset: 192)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !282, file: !239, line: 293, baseType: !2180, size: 64, offset: 256)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !282, file: !239, line: 294, baseType: !2176, size: 64, offset: 320)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !282, file: !239, line: 296, baseType: !4168, size: 64, offset: 384)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!990, !288, !542, !43, !49}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !282, file: !239, line: 306, baseType: !43, size: 64, offset: 448)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !282, file: !239, line: 313, baseType: !531, size: 8, offset: 512)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !282, file: !239, line: 314, baseType: !4168, size: 64, offset: 576)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !282, file: !239, line: 317, baseType: !4175, size: 64, offset: 640)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!3997, !288, !3999}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !282, file: !239, line: 320, baseType: !4179, size: 64, offset: 704)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!30, !288, !1475}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !277, file: !239, line: 176, baseType: !4183, size: 64, offset: 64)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !239, line: 35, flags: DIFlagFwdDecl)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !277, file: !239, line: 177, baseType: !49, size: 64, offset: 128)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !277, file: !239, line: 178, baseType: !237, size: 64, offset: 192)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !238, file: !239, line: 215, baseType: !28, size: 64, offset: 768)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !238, file: !239, line: 221, baseType: !445, size: 64, offset: 832)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !238, file: !239, line: 223, baseType: !34, size: 16, offset: 896)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !238, file: !239, line: 224, baseType: !32, size: 16, offset: 912)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !238, file: !239, line: 225, baseType: !4192, size: 64, offset: 960)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !239, line: 36, flags: DIFlagFwdDecl)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !238, file: !239, line: 227, baseType: !306, size: 128, align: 64, offset: 1024)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !222, file: !167, line: 442, baseType: !4196, size: 448, offset: 2048)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !167, line: 138, size: 448, elements: !4197)
!4197 = !{!4198, !4199, !4200}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4196, file: !167, line: 140, baseType: !237, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4196, file: !167, line: 141, baseType: !47, size: 64, offset: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4196, file: !167, line: 142, baseType: !1977, size: 320, offset: 128)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !222, file: !167, line: 443, baseType: !4196, size: 448, offset: 2496)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !222, file: !167, line: 446, baseType: !4203, offset: 2944)
!4203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4196, elements: !4204)
!4204 = !{!4205}
!4205 = !DISubrange(count: 0)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !222, file: !167, line: 455, baseType: !101, size: 16, offset: 2944)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !222, file: !167, line: 456, baseType: !101, size: 16, offset: 2960)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !222, file: !167, line: 457, baseType: !101, size: 16, offset: 2976)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !222, file: !167, line: 458, baseType: !101, size: 16, offset: 2992)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !222, file: !167, line: 461, baseType: !2973, size: 896, offset: 3008)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !222, file: !167, line: 463, baseType: !4212, size: 64, offset: 3904)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !167, line: 537, size: 41664, elements: !4214)
!4214 = !{!4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4226}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4213, file: !167, line: 538, baseType: !269, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4213, file: !167, line: 541, baseType: !7, size: 32, offset: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4213, file: !167, line: 544, baseType: !30, size: 32, offset: 96)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4213, file: !167, line: 547, baseType: !105, size: 128, offset: 128)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4213, file: !167, line: 548, baseType: !306, size: 128, align: 64, offset: 256)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4213, file: !167, line: 555, baseType: !222, size: 7872, offset: 384)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4213, file: !167, line: 558, baseType: !221, size: 64, offset: 8256)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4213, file: !167, line: 561, baseType: !57, size: 32, offset: 8320)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4213, file: !167, line: 564, baseType: !7, size: 32, offset: 8352)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4213, file: !167, line: 567, baseType: !4225, size: 32768, offset: 8384)
!4225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32768, elements: !3776)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4213, file: !167, line: 570, baseType: !4227, size: 512, offset: 41152)
!4227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 512, elements: !1135)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !222, file: !167, line: 469, baseType: !105, size: 128, offset: 3968)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !222, file: !167, line: 478, baseType: !2986, size: 1792, offset: 4096)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !222, file: !167, line: 487, baseType: !221, size: 64, offset: 5888)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !222, file: !167, line: 488, baseType: !221, size: 64, offset: 5952)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !222, file: !167, line: 491, baseType: !4233, size: 64, offset: 6016)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !167, line: 327, size: 896, elements: !4235)
!4235 = !{!4236, !4239, !4249, !4250, !4251, !4252, !4253}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4234, file: !167, line: 332, baseType: !4237)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4238, line: 64, elements: !1509)
!4238 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4234, file: !167, line: 333, baseType: !4240, size: 192)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !167, line: 299, size: 192, elements: !4241)
!4241 = !{!4242}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4240, file: !167, line: 300, baseType: !4243, size: 192)
!4243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4244, line: 17, size: 192, elements: !4245)
!4244 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4245 = !{!4246, !4247, !4248}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4243, file: !4244, line: 18, baseType: !445, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4243, file: !4244, line: 19, baseType: !445, size: 64, offset: 64)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4243, file: !4244, line: 20, baseType: !447, size: 64, offset: 128)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4234, file: !167, line: 339, baseType: !4240, size: 192, offset: 192)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4234, file: !167, line: 347, baseType: !4240, size: 192, offset: 384)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4234, file: !167, line: 353, baseType: !4240, size: 192, offset: 576)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4234, file: !167, line: 366, baseType: !221, size: 64, offset: 768)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4234, file: !167, line: 367, baseType: !221, size: 64, offset: 832)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !222, file: !167, line: 492, baseType: !105, size: 128, offset: 6080)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !222, file: !167, line: 495, baseType: !4240, size: 192, offset: 6208)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !222, file: !167, line: 496, baseType: !4240, size: 192, offset: 6400)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !222, file: !167, line: 497, baseType: !2876, size: 192, offset: 6592)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !222, file: !167, line: 503, baseType: !105, size: 128, offset: 6784)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !222, file: !167, line: 504, baseType: !328, size: 256, offset: 6912)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !222, file: !167, line: 507, baseType: !62, size: 192, offset: 7168)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !222, file: !167, line: 510, baseType: !664, size: 256, offset: 7360)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !222, file: !167, line: 513, baseType: !4263, size: 64, offset: 7616)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4265, line: 214, elements: !1509)
!4265 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !222, file: !167, line: 516, baseType: !4267, offset: 7680)
!4267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4268, line: 76, elements: !1509)
!4268 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !222, file: !167, line: 519, baseType: !57, size: 32, offset: 7680)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !222, file: !167, line: 522, baseType: !4271, size: 128, offset: 7712)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !167, line: 370, size: 128, elements: !4272)
!4272 = !{!4273, !4274, !4275, !4276}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4271, file: !167, line: 372, baseType: !531, size: 8)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4271, file: !167, line: 375, baseType: !30, size: 32, offset: 32)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4271, file: !167, line: 380, baseType: !30, size: 32, offset: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4271, file: !167, line: 386, baseType: !30, size: 32, offset: 96)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !222, file: !167, line: 529, baseType: !4278, offset: 7872)
!4278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, elements: !404)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !218, file: !167, line: 157, baseType: !4280, size: 64, offset: 64)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !167, line: 669, size: 1984, elements: !4282)
!4282 = !{!4283, !4287, !4291, !4295, !4296, !4297, !4298, !4302, !4306, !4307, !4313, !4317, !4318, !4319, !4323, !4327, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4348, !4349, !4386, !4387}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4281, file: !167, line: 670, baseType: !4284, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!2974, !2974}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4281, file: !167, line: 671, baseType: !4288, size: 64, offset: 64)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!30, !2974}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4281, file: !167, line: 672, baseType: !4292, size: 64, offset: 128)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{null, !2974}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4281, file: !167, line: 673, baseType: !4292, size: 64, offset: 192)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4281, file: !167, line: 674, baseType: !4292, size: 64, offset: 256)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4281, file: !167, line: 675, baseType: !4292, size: 64, offset: 320)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4281, file: !167, line: 676, baseType: !4299, size: 64, offset: 384)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{null, !2974, !30}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4281, file: !167, line: 677, baseType: !4303, size: 64, offset: 448)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!30, !2154, !2974}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4281, file: !167, line: 679, baseType: !4303, size: 64, offset: 512)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4281, file: !167, line: 682, baseType: !4308, size: 64, offset: 576)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!30, !4311}
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !167, line: 30, flags: DIFlagFwdDecl)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4281, file: !167, line: 683, baseType: !4314, size: 64, offset: 640)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{null, !4311}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4281, file: !167, line: 684, baseType: !4314, size: 64, offset: 704)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4281, file: !167, line: 685, baseType: !2081, size: 64, offset: 768)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4281, file: !167, line: 686, baseType: !4320, size: 64, offset: 832)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!30, !2491, !2969}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4281, file: !167, line: 688, baseType: !4324, size: 64, offset: 896)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{null, !2491, !2969}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4281, file: !167, line: 689, baseType: !4328, size: 64, offset: 960)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{null, !2491}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4281, file: !167, line: 690, baseType: !4328, size: 64, offset: 1024)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4281, file: !167, line: 691, baseType: !4328, size: 64, offset: 1088)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4281, file: !167, line: 692, baseType: !4292, size: 64, offset: 1152)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4281, file: !167, line: 694, baseType: !531, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4281, file: !167, line: 707, baseType: !531, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4281, file: !167, line: 719, baseType: !531, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4281, file: !167, line: 722, baseType: !30, size: 32, offset: 1248)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4281, file: !167, line: 723, baseType: !24, size: 64, offset: 1280)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4281, file: !167, line: 726, baseType: !24, size: 64, offset: 1344)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4281, file: !167, line: 729, baseType: !4212, size: 64, offset: 1408)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4281, file: !167, line: 732, baseType: !4342, size: 192, offset: 1472)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4343, line: 19, size: 192, elements: !4344)
!4343 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4344 = !{!4345, !4346, !4347}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4342, file: !4343, line: 20, baseType: !1037, size: 128)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4342, file: !4343, line: 21, baseType: !7, size: 32, offset: 128)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4342, file: !4343, line: 22, baseType: !7, size: 32, offset: 160)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4281, file: !167, line: 738, baseType: !105, size: 128, offset: 1664)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4281, file: !167, line: 744, baseType: !4350, size: 64, offset: 1792)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !167, line: 580, size: 1728, elements: !4352)
!4352 = !{!4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4362, !4363, !4364, !4368, !4372, !4373, !4374, !4375, !4376, !4380, !4384, !4385}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4351, file: !167, line: 586, baseType: !4227, size: 512)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4351, file: !167, line: 587, baseType: !47, size: 64, offset: 512)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4351, file: !167, line: 593, baseType: !43, size: 64, offset: 576)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4351, file: !167, line: 596, baseType: !7, size: 32, offset: 640)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4351, file: !167, line: 604, baseType: !7, size: 32, offset: 672)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4351, file: !167, line: 610, baseType: !4280, size: 64, offset: 704)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4351, file: !167, line: 611, baseType: !105, size: 128, offset: 768)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4351, file: !167, line: 612, baseType: !4361, size: 64, offset: 896)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4351, file: !167, line: 614, baseType: !285, size: 64, offset: 960)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4351, file: !167, line: 615, baseType: !4160, size: 64, offset: 1024)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4351, file: !167, line: 621, baseType: !4365, size: 64, offset: 1088)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!445, !2974, !4350}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4351, file: !167, line: 625, baseType: !4369, size: 64, offset: 1152)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!325, !2974, !4350}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4351, file: !167, line: 628, baseType: !2184, size: 64, offset: 1216)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4351, file: !167, line: 631, baseType: !2172, size: 64, offset: 1280)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4351, file: !167, line: 632, baseType: !2180, size: 64, offset: 1344)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4351, file: !167, line: 633, baseType: !2176, size: 64, offset: 1408)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4351, file: !167, line: 640, baseType: !4377, size: 64, offset: 1472)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!30, !2974, !4350, !445}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4351, file: !167, line: 645, baseType: !4381, size: 64, offset: 1536)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!30, !2974, !4350, !325}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4351, file: !167, line: 654, baseType: !4168, size: 64, offset: 1600)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4351, file: !167, line: 657, baseType: !4175, size: 64, offset: 1664)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4281, file: !167, line: 745, baseType: !4350, size: 64, offset: 1856)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4281, file: !167, line: 754, baseType: !7, size: 32, offset: 1920)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !218, file: !167, line: 160, baseType: !4389, size: 128, offset: 128)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !207, line: 105, size: 128, elements: !4390)
!4390 = !{!4391, !4392}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4389, file: !207, line: 110, baseType: !47, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4389, file: !207, line: 118, baseType: !4393, size: 64, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !207, line: 95, size: 448, elements: !4395)
!4395 = !{!4396, !4397, !4403, !4404, !4405, !4406, !4407}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4394, file: !207, line: 96, baseType: !319, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4394, file: !207, line: 97, baseType: !4398, size: 64, offset: 64)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !207, line: 60, baseType: !4400)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{null, !4402}
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4394, file: !207, line: 98, baseType: !4398, size: 64, offset: 128)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4394, file: !207, line: 99, baseType: !531, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4394, file: !207, line: 100, baseType: !531, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4394, file: !207, line: 101, baseType: !306, size: 128, align: 64, offset: 256)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4394, file: !207, line: 102, baseType: !4402, size: 64, offset: 384)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !218, file: !167, line: 163, baseType: !105, size: 128, offset: 256)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !218, file: !167, line: 164, baseType: !105, size: 128, offset: 384)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !218, file: !167, line: 167, baseType: !105, size: 128, offset: 512)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !218, file: !167, line: 173, baseType: !30, size: 32, offset: 640)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !218, file: !167, line: 175, baseType: !7, size: 32, offset: 672)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !218, file: !167, line: 183, baseType: !445, size: 64, offset: 704)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !218, file: !167, line: 189, baseType: !57, size: 32, offset: 768)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !218, file: !167, line: 192, baseType: !664, size: 256, offset: 832)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !218, file: !167, line: 193, baseType: !4417, size: 448, offset: 1088)
!4417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !665, line: 120, size: 448, elements: !4418)
!4418 = !{!4419, !4420, !4421}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4417, file: !665, line: 121, baseType: !664, size: 256)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4417, file: !665, line: 122, baseType: !306, size: 128, align: 64, offset: 256)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4417, file: !665, line: 125, baseType: !2039, size: 64, offset: 384)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !218, file: !167, line: 199, baseType: !2974, size: 64, offset: 1536)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !215, file: !3, line: 46, baseType: !7, size: 32, offset: 1600)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4426)
!4426 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2969)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4429)
!4429 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4432)
!4432 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !445)
!4436 = !{!4437, !4439, !4444, !0, !4446, !4448, !4451, !4456}
!4437 = !DIGlobalVariableExpression(var: !4438, expr: !DIExpression())
!4438 = distinct !DIGlobalVariable(name: "freezer_cgrp_subsys", scope: !2, file: !3, line: 479, type: !4281, isLocal: false, isDefinition: true)
!4439 = !DIGlobalVariableExpression(var: !4440, expr: !DIExpression())
!4440 = distinct !DIGlobalVariable(scope: null, file: !190, line: 480, type: !4441, isLocal: true, isDefinition: true)
!4441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 168, elements: !4442)
!4442 = !{!4443}
!4443 = !DISubrange(count: 21)
!4444 = !DIGlobalVariableExpression(var: !4445, expr: !DIExpression())
!4445 = distinct !DIGlobalVariable(name: "freezer_mutex", scope: !2, file: !3, line: 49, type: !328, isLocal: true, isDefinition: true)
!4446 = !DIGlobalVariableExpression(var: !4447, expr: !DIExpression())
!4447 = distinct !DIGlobalVariable(scope: null, file: !207, line: 280, type: !3143, isLocal: true, isDefinition: true)
!4448 = !DIGlobalVariableExpression(var: !4449, expr: !DIExpression())
!4449 = distinct !DIGlobalVariable(scope: null, file: !3, line: 86, type: !4450, isLocal: true, isDefinition: true)
!4450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 56, elements: !1870)
!4451 = !DIGlobalVariableExpression(var: !4452, expr: !DIExpression())
!4452 = distinct !DIGlobalVariable(scope: null, file: !3, line: 88, type: !4453, isLocal: true, isDefinition: true)
!4453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 72, elements: !4454)
!4454 = !{!4455}
!4455 = !DISubrange(count: 9)
!4456 = !DIGlobalVariableExpression(var: !4457, expr: !DIExpression())
!4457 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !4450, isLocal: true, isDefinition: true)
!4458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4351, size: 6912, elements: !391)
!4459 = !{i32 7, !"Dwarf Version", i32 5}
!4460 = !{i32 2, !"Debug Info Version", i32 3}
!4461 = !{i32 1, !"wchar_size", i32 2}
!4462 = !{i32 8, !"cf-protection-branch", i32 1}
!4463 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4464 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4465 = !{i32 1, !"Code Model", i32 2}
!4466 = !{i32 1, !"override-stack-alignment", i32 8}
!4467 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4468 = distinct !DISubprogram(name: "cgroup_freezing", scope: !3, file: !3, line: 66, type: !4469, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4471)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!531, !2491}
!4471 = !{!4472, !4473, !4474}
!4472 = !DILocalVariable(name: "task", arg: 1, scope: !4468, file: !3, line: 66, type: !2491)
!4473 = !DILocalVariable(name: "ret", scope: !4468, file: !3, line: 68, type: !531)
!4474 = !DILocalVariable(name: "state", scope: !4468, file: !3, line: 69, type: !7)
!4475 = !DILocation(line: 66, column: 42, scope: !4468)
!4476 = !DILocation(line: 68, column: 2, scope: !4468)
!4477 = !DILocation(line: 68, column: 7, scope: !4468)
!4478 = !DILocation(line: 69, column: 2, scope: !4468)
!4479 = !DILocation(line: 69, column: 15, scope: !4468)
!4480 = !DILocation(line: 71, column: 2, scope: !4468)
!4481 = !DILocation(line: 76, column: 23, scope: !4468)
!4482 = !DILocation(line: 76, column: 10, scope: !4468)
!4483 = !DILocation(line: 76, column: 30, scope: !4468)
!4484 = !DILocation(line: 76, column: 8, scope: !4468)
!4485 = !DILocation(line: 77, column: 9, scope: !4468)
!4486 = !DILocation(line: 77, column: 15, scope: !4468)
!4487 = !DILocation(line: 77, column: 34, scope: !4468)
!4488 = !DILocation(line: 77, column: 39, scope: !4468)
!4489 = !DILocation(line: 77, column: 45, scope: !4468)
!4490 = !DILocation(line: 77, column: 37, scope: !4468)
!4491 = !DILocation(line: 0, scope: !4468)
!4492 = !DILocation(line: 77, column: 6, scope: !4468)
!4493 = !DILocation(line: 78, column: 2, scope: !4468)
!4494 = !DILocation(line: 80, column: 9, scope: !4468)
!4495 = !{i8 0, i8 2}
!4496 = !DILocation(line: 81, column: 1, scope: !4468)
!4497 = !DILocation(line: 80, column: 2, scope: !4468)
!4498 = distinct !DISubprogram(name: "rcu_read_lock", scope: !4499, file: !4499, line: 782, type: !2082, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4499 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!4500 = !DILocation(line: 784, column: 2, scope: !4498)
!4501 = !DILocation(line: 786, column: 2, scope: !4498)
!4502 = !DILocation(line: 786, column: 2, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4498, file: !4499, line: 786, column: 2)
!4504 = !DILocation(line: 787, column: 2, scope: !4498)
!4505 = !DILocation(line: 787, column: 2, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4498, file: !4499, line: 787, column: 2)
!4507 = !DILocation(line: 789, column: 1, scope: !4498)
!4508 = distinct !DISubprogram(name: "task_freezer", scope: !3, file: !3, line: 56, type: !4509, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4511)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!214, !2491}
!4511 = !{!4512}
!4512 = !DILocalVariable(name: "task", arg: 1, scope: !4508, file: !3, line: 56, type: !2491)
!4513 = !DILocation(line: 56, column: 64, scope: !4508)
!4514 = !DILocation(line: 58, column: 30, scope: !4508)
!4515 = !DILocation(line: 58, column: 21, scope: !4508)
!4516 = !DILocation(line: 58, column: 9, scope: !4508)
!4517 = !DILocation(line: 58, column: 2, scope: !4508)
!4518 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !4499, file: !4499, line: 813, type: !2082, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4519 = !DILocation(line: 815, column: 2, scope: !4518)
!4520 = !DILocation(line: 815, column: 2, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4518, file: !4499, line: 815, column: 2)
!4522 = !DILocation(line: 818, column: 2, scope: !4518)
!4523 = !DILocation(line: 819, column: 2, scope: !4518)
!4524 = !DILocation(line: 819, column: 2, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4518, file: !4499, line: 819, column: 2)
!4526 = !DILocation(line: 820, column: 1, scope: !4518)
!4527 = distinct !DISubprogram(name: "freezer_css_alloc", scope: !3, file: !3, line: 93, type: !4285, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4528)
!4528 = !{!4529, !4530}
!4529 = !DILocalVariable(name: "parent_css", arg: 1, scope: !4527, file: !3, line: 93, type: !2974)
!4530 = !DILocalVariable(name: "freezer", scope: !4527, file: !3, line: 95, type: !214)
!4531 = !DILocation(line: 93, column: 47, scope: !4527)
!4532 = !DILocation(line: 95, column: 2, scope: !4527)
!4533 = !DILocation(line: 95, column: 18, scope: !4527)
!4534 = !DILocation(line: 97, column: 12, scope: !4527)
!4535 = !DILocation(line: 97, column: 10, scope: !4527)
!4536 = !DILocation(line: 98, column: 7, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4527, file: !3, line: 98, column: 6)
!4538 = !DILocation(line: 98, column: 6, scope: !4527)
!4539 = !DILocation(line: 99, column: 10, scope: !4537)
!4540 = !DILocation(line: 99, column: 3, scope: !4537)
!4541 = !DILocation(line: 101, column: 10, scope: !4527)
!4542 = !DILocation(line: 101, column: 19, scope: !4527)
!4543 = !DILocation(line: 101, column: 2, scope: !4527)
!4544 = !DILocation(line: 102, column: 1, scope: !4527)
!4545 = distinct !DISubprogram(name: "freezer_css_online", scope: !3, file: !3, line: 112, type: !4289, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4546)
!4546 = !{!4547, !4548, !4549}
!4547 = !DILocalVariable(name: "css", arg: 1, scope: !4545, file: !3, line: 112, type: !2974)
!4548 = !DILocalVariable(name: "freezer", scope: !4545, file: !3, line: 114, type: !214)
!4549 = !DILocalVariable(name: "parent", scope: !4545, file: !3, line: 115, type: !214)
!4550 = !DILocation(line: 112, column: 59, scope: !4545)
!4551 = !DILocation(line: 114, column: 2, scope: !4545)
!4552 = !DILocation(line: 114, column: 18, scope: !4545)
!4553 = !DILocation(line: 114, column: 40, scope: !4545)
!4554 = !DILocation(line: 114, column: 28, scope: !4545)
!4555 = !DILocation(line: 115, column: 2, scope: !4545)
!4556 = !DILocation(line: 115, column: 18, scope: !4545)
!4557 = !DILocation(line: 115, column: 42, scope: !4545)
!4558 = !DILocation(line: 115, column: 27, scope: !4545)
!4559 = !DILocation(line: 117, column: 2, scope: !4545)
!4560 = !DILocation(line: 118, column: 2, scope: !4545)
!4561 = !DILocation(line: 120, column: 2, scope: !4545)
!4562 = !DILocation(line: 120, column: 11, scope: !4545)
!4563 = !DILocation(line: 120, column: 17, scope: !4545)
!4564 = !DILocation(line: 122, column: 6, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4545, file: !3, line: 122, column: 6)
!4566 = !DILocation(line: 122, column: 13, scope: !4565)
!4567 = !DILocation(line: 122, column: 17, scope: !4565)
!4568 = !DILocation(line: 122, column: 25, scope: !4565)
!4569 = !DILocation(line: 122, column: 31, scope: !4565)
!4570 = !DILocation(line: 122, column: 6, scope: !4545)
!4571 = !DILocation(line: 123, column: 3, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4565, file: !3, line: 122, column: 51)
!4573 = !DILocation(line: 123, column: 12, scope: !4572)
!4574 = !DILocation(line: 123, column: 18, scope: !4572)
!4575 = !DILocation(line: 124, column: 3, scope: !4572)
!4576 = !DILocation(line: 125, column: 2, scope: !4572)
!4577 = !DILocation(line: 127, column: 2, scope: !4545)
!4578 = !DILocation(line: 128, column: 2, scope: !4545)
!4579 = !DILocation(line: 130, column: 1, scope: !4545)
!4580 = !DILocation(line: 129, column: 2, scope: !4545)
!4581 = distinct !DISubprogram(name: "freezer_css_offline", scope: !3, file: !3, line: 139, type: !4293, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4582)
!4582 = !{!4583, !4584}
!4583 = !DILocalVariable(name: "css", arg: 1, scope: !4581, file: !3, line: 139, type: !2974)
!4584 = !DILocalVariable(name: "freezer", scope: !4581, file: !3, line: 141, type: !214)
!4585 = !DILocation(line: 139, column: 61, scope: !4581)
!4586 = !DILocation(line: 141, column: 2, scope: !4581)
!4587 = !DILocation(line: 141, column: 18, scope: !4581)
!4588 = !DILocation(line: 141, column: 40, scope: !4581)
!4589 = !DILocation(line: 141, column: 28, scope: !4581)
!4590 = !DILocation(line: 143, column: 2, scope: !4581)
!4591 = !DILocation(line: 144, column: 2, scope: !4581)
!4592 = !DILocation(line: 146, column: 6, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 146, column: 6)
!4594 = !DILocation(line: 146, column: 15, scope: !4593)
!4595 = !DILocation(line: 146, column: 21, scope: !4593)
!4596 = !DILocation(line: 146, column: 6, scope: !4581)
!4597 = !DILocation(line: 147, column: 3, scope: !4593)
!4598 = !DILocation(line: 149, column: 2, scope: !4581)
!4599 = !DILocation(line: 149, column: 11, scope: !4581)
!4600 = !DILocation(line: 149, column: 17, scope: !4581)
!4601 = !DILocation(line: 151, column: 2, scope: !4581)
!4602 = !DILocation(line: 152, column: 2, scope: !4581)
!4603 = !DILocation(line: 153, column: 1, scope: !4581)
!4604 = distinct !DISubprogram(name: "freezer_css_free", scope: !3, file: !3, line: 155, type: !4293, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4605)
!4605 = !{!4606}
!4606 = !DILocalVariable(name: "css", arg: 1, scope: !4604, file: !3, line: 155, type: !2974)
!4607 = !DILocation(line: 155, column: 58, scope: !4604)
!4608 = !DILocation(line: 157, column: 20, scope: !4604)
!4609 = !DILocation(line: 157, column: 8, scope: !4604)
!4610 = !DILocation(line: 157, column: 2, scope: !4604)
!4611 = !DILocation(line: 158, column: 1, scope: !4604)
!4612 = distinct !DISubprogram(name: "freezer_attach", scope: !3, file: !3, line: 169, type: !4315, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4613)
!4613 = !{!4614, !4615, !4616, !4617}
!4614 = !DILocalVariable(name: "tset", arg: 1, scope: !4612, file: !3, line: 169, type: !4311)
!4615 = !DILocalVariable(name: "task", scope: !4612, file: !3, line: 171, type: !2491)
!4616 = !DILocalVariable(name: "new_css", scope: !4612, file: !3, line: 172, type: !2974)
!4617 = !DILocalVariable(name: "freezer", scope: !4618, file: !3, line: 187, type: !214)
!4618 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 186, column: 47)
!4619 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 186, column: 2)
!4620 = distinct !DILexicalBlock(scope: !4612, file: !3, line: 186, column: 2)
!4621 = !DILocation(line: 169, column: 51, scope: !4612)
!4622 = !DILocation(line: 171, column: 2, scope: !4612)
!4623 = !DILocation(line: 171, column: 22, scope: !4612)
!4624 = !DILocation(line: 172, column: 2, scope: !4612)
!4625 = !DILocation(line: 172, column: 30, scope: !4612)
!4626 = !DILocation(line: 174, column: 2, scope: !4612)
!4627 = !DILocation(line: 186, column: 2, scope: !4620)
!4628 = !DILocation(line: 186, column: 2, scope: !4619)
!4629 = !DILocation(line: 187, column: 3, scope: !4618)
!4630 = !DILocation(line: 187, column: 19, scope: !4618)
!4631 = !DILocation(line: 187, column: 41, scope: !4618)
!4632 = !DILocation(line: 187, column: 29, scope: !4618)
!4633 = !DILocation(line: 189, column: 9, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4618, file: !3, line: 189, column: 7)
!4635 = !DILocation(line: 189, column: 18, scope: !4634)
!4636 = !DILocation(line: 189, column: 24, scope: !4634)
!4637 = !DILocation(line: 189, column: 7, scope: !4618)
!4638 = !DILocation(line: 190, column: 16, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 189, column: 44)
!4640 = !DILocation(line: 190, column: 4, scope: !4639)
!4641 = !DILocation(line: 191, column: 3, scope: !4639)
!4642 = !DILocation(line: 192, column: 16, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 191, column: 10)
!4644 = !DILocation(line: 192, column: 4, scope: !4643)
!4645 = !DILocation(line: 195, column: 4, scope: !4643)
!4646 = !DILocation(line: 195, column: 11, scope: !4643)
!4647 = !DILocation(line: 195, column: 19, scope: !4643)
!4648 = !DILocation(line: 195, column: 23, scope: !4643)
!4649 = !DILocation(line: 195, column: 32, scope: !4643)
!4650 = !DILocation(line: 195, column: 38, scope: !4643)
!4651 = !DILocation(line: 0, scope: !4643)
!4652 = !DILocation(line: 196, column: 5, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 195, column: 56)
!4654 = !DILocation(line: 196, column: 14, scope: !4653)
!4655 = !DILocation(line: 196, column: 20, scope: !4653)
!4656 = !DILocation(line: 197, column: 30, scope: !4653)
!4657 = !DILocation(line: 197, column: 15, scope: !4653)
!4658 = !DILocation(line: 197, column: 13, scope: !4653)
!4659 = distinct !{!4659, !4645, !4660, !4661, !4662}
!4660 = !DILocation(line: 198, column: 4, scope: !4643)
!4661 = !{!"llvm.loop.mustprogress"}
!4662 = !{!"llvm.loop.unroll.disable"}
!4663 = !DILocation(line: 200, column: 2, scope: !4619)
!4664 = !DILocation(line: 200, column: 2, scope: !4618)
!4665 = distinct !{!4665, !4627, !4666, !4661, !4662}
!4666 = !DILocation(line: 200, column: 2, scope: !4620)
!4667 = !DILocation(line: 202, column: 2, scope: !4612)
!4668 = !DILocation(line: 203, column: 1, scope: !4612)
!4669 = distinct !DISubprogram(name: "freezer_fork", scope: !3, file: !3, line: 215, type: !4329, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4670)
!4670 = !{!4671, !4672}
!4671 = !DILocalVariable(name: "task", arg: 1, scope: !4669, file: !3, line: 215, type: !2491)
!4672 = !DILocalVariable(name: "freezer", scope: !4669, file: !3, line: 217, type: !214)
!4673 = !DILocation(line: 215, column: 46, scope: !4669)
!4674 = !DILocation(line: 217, column: 2, scope: !4669)
!4675 = !DILocation(line: 217, column: 18, scope: !4669)
!4676 = !DILocation(line: 226, column: 23, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 226, column: 6)
!4678 = !DILocation(line: 226, column: 6, scope: !4677)
!4679 = !DILocation(line: 226, column: 6, scope: !4669)
!4680 = !DILocation(line: 227, column: 3, scope: !4677)
!4681 = !DILocation(line: 229, column: 2, scope: !4669)
!4682 = !DILocation(line: 230, column: 2, scope: !4669)
!4683 = !DILocation(line: 232, column: 25, scope: !4669)
!4684 = !DILocation(line: 232, column: 12, scope: !4669)
!4685 = !DILocation(line: 232, column: 10, scope: !4669)
!4686 = !DILocation(line: 233, column: 6, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 233, column: 6)
!4688 = !DILocation(line: 233, column: 15, scope: !4687)
!4689 = !DILocation(line: 233, column: 21, scope: !4687)
!4690 = !DILocation(line: 233, column: 6, scope: !4669)
!4691 = !DILocation(line: 234, column: 15, scope: !4687)
!4692 = !DILocation(line: 234, column: 3, scope: !4687)
!4693 = !DILocation(line: 236, column: 2, scope: !4669)
!4694 = !DILocation(line: 237, column: 2, scope: !4669)
!4695 = !DILocation(line: 238, column: 1, scope: !4669)
!4696 = !DISubprogram(name: "__rcu_read_lock", scope: !4499, file: !4499, line: 74, type: !2082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4697 = distinct !DISubprogram(name: "css_freezer", scope: !3, file: !3, line: 51, type: !4698, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4700)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!214, !2974}
!4700 = !{!4701, !4702}
!4701 = !DILocalVariable(name: "css", arg: 1, scope: !4697, file: !3, line: 51, type: !2974)
!4702 = !DILocalVariable(name: "__mptr", scope: !4703, file: !3, line: 53, type: !28)
!4703 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 53, column: 15)
!4704 = !DILocation(line: 51, column: 71, scope: !4697)
!4705 = !DILocation(line: 53, column: 9, scope: !4697)
!4706 = !DILocation(line: 53, column: 15, scope: !4703)
!4707 = !DILocation(line: 53, column: 15, scope: !4697)
!4708 = !DILocation(line: 53, column: 2, scope: !4697)
!4709 = distinct !DISubprogram(name: "task_css", scope: !2963, file: !2963, line: 433, type: !4710, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4712)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{!2974, !2491, !30}
!4712 = !{!4713, !4714, !4715}
!4713 = !DILocalVariable(name: "task", arg: 1, scope: !4709, file: !2963, line: 433, type: !2491)
!4714 = !DILocalVariable(name: "subsys_id", arg: 2, scope: !4709, file: !2963, line: 434, type: !30)
!4715 = !DILocalVariable(name: "__UNIQUE_ID_rcu260", scope: !4716, file: !2963, line: 436, type: !2969)
!4716 = distinct !DILexicalBlock(scope: !4709, file: !2963, line: 436, column: 9)
!4717 = !DILocation(line: 433, column: 72, scope: !4709)
!4718 = !DILocation(line: 434, column: 14, scope: !4709)
!4719 = !DILocation(line: 436, column: 9, scope: !4716)
!4720 = !DILocation(line: 436, column: 9, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4716, file: !2963, line: 436, column: 9)
!4722 = !DILocation(line: 436, column: 9, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4721, file: !2963, line: 436, column: 9)
!4724 = !DILocation(line: 436, column: 9, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4716, file: !2963, line: 436, column: 9)
!4726 = !DILocation(line: 436, column: 9, scope: !4709)
!4727 = !DILocation(line: 436, column: 2, scope: !4709)
!4728 = !DISubprogram(name: "__rcu_read_unlock", scope: !4499, file: !4499, line: 75, type: !2082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4729 = distinct !DISubprogram(name: "kzalloc", scope: !190, file: !190, line: 719, type: !4730, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4732)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!28, !43, !1042}
!4732 = !{!4733, !4734}
!4733 = !DILocalVariable(name: "size", arg: 1, scope: !4729, file: !190, line: 719, type: !43)
!4734 = !DILocalVariable(name: "flags", arg: 2, scope: !4729, file: !190, line: 719, type: !1042)
!4735 = !DILocation(line: 719, column: 52, scope: !4729)
!4736 = !DILocation(line: 719, column: 64, scope: !4729)
!4737 = !DILocation(line: 721, column: 17, scope: !4729)
!4738 = !DILocation(line: 721, column: 23, scope: !4729)
!4739 = !DILocation(line: 721, column: 29, scope: !4729)
!4740 = !DILocation(line: 721, column: 9, scope: !4729)
!4741 = !DILocation(line: 721, column: 2, scope: !4729)
!4742 = distinct !DISubprogram(name: "ERR_PTR", scope: !4743, file: !4743, line: 39, type: !4744, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4746)
!4743 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4744 = !DISubroutineType(types: !4745)
!4745 = !{!28, !762}
!4746 = !{!4747}
!4747 = !DILocalVariable(name: "error", arg: 1, scope: !4742, file: !4743, line: 39, type: !762)
!4748 = !DILocation(line: 39, column: 48, scope: !4742)
!4749 = !DILocation(line: 41, column: 18, scope: !4742)
!4750 = !DILocation(line: 41, column: 9, scope: !4742)
!4751 = !DILocation(line: 41, column: 2, scope: !4742)
!4752 = distinct !DISubprogram(name: "kmalloc", scope: !190, file: !190, line: 591, type: !4730, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4753)
!4753 = !{!4754, !4755, !4756}
!4754 = !DILocalVariable(name: "size", arg: 1, scope: !4752, file: !190, line: 591, type: !43)
!4755 = !DILocalVariable(name: "flags", arg: 2, scope: !4752, file: !190, line: 591, type: !1042)
!4756 = !DILocalVariable(name: "index", scope: !4757, file: !190, line: 594, type: !7)
!4757 = distinct !DILexicalBlock(scope: !4758, file: !190, line: 593, column: 42)
!4758 = distinct !DILexicalBlock(scope: !4752, file: !190, line: 593, column: 6)
!4759 = !DILocation(line: 591, column: 61, scope: !4752)
!4760 = !DILocation(line: 591, column: 73, scope: !4752)
!4761 = !DILocation(line: 593, column: 27, scope: !4758)
!4762 = !DILocation(line: 593, column: 6, scope: !4758)
!4763 = !DILocation(line: 593, column: 33, scope: !4758)
!4764 = !DILocation(line: 593, column: 36, scope: !4758)
!4765 = !DILocation(line: 593, column: 6, scope: !4752)
!4766 = !DILocation(line: 594, column: 3, scope: !4757)
!4767 = !DILocation(line: 594, column: 16, scope: !4757)
!4768 = !DILocation(line: 596, column: 7, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4757, file: !190, line: 596, column: 7)
!4770 = !DILocation(line: 596, column: 12, scope: !4769)
!4771 = !DILocation(line: 596, column: 7, scope: !4757)
!4772 = !DILocation(line: 597, column: 25, scope: !4769)
!4773 = !DILocation(line: 597, column: 31, scope: !4769)
!4774 = !DILocation(line: 597, column: 11, scope: !4769)
!4775 = !DILocation(line: 597, column: 4, scope: !4769)
!4776 = !DILocation(line: 599, column: 11, scope: !4757)
!4777 = !DILocation(line: 599, column: 9, scope: !4757)
!4778 = !DILocation(line: 601, column: 33, scope: !4757)
!4779 = !DILocation(line: 601, column: 40, scope: !4757)
!4780 = !DILocation(line: 601, column: 20, scope: !4757)
!4781 = !DILocation(line: 601, column: 5, scope: !4757)
!4782 = !DILocation(line: 601, column: 51, scope: !4757)
!4783 = !DILocation(line: 602, column: 5, scope: !4757)
!4784 = !DILocation(line: 602, column: 12, scope: !4757)
!4785 = !DILocation(line: 600, column: 10, scope: !4757)
!4786 = !DILocation(line: 600, column: 3, scope: !4757)
!4787 = !DILocation(line: 603, column: 2, scope: !4758)
!4788 = !DILocation(line: 604, column: 19, scope: !4752)
!4789 = !DILocation(line: 604, column: 25, scope: !4752)
!4790 = !DILocation(line: 604, column: 9, scope: !4752)
!4791 = !DILocation(line: 604, column: 2, scope: !4752)
!4792 = !DILocation(line: 605, column: 1, scope: !4752)
!4793 = !DISubprogram(name: "kmalloc_large", scope: !190, file: !190, line: 531, type: !4730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4794 = distinct !DISubprogram(name: "__kmalloc_index", scope: !190, file: !190, line: 444, type: !4795, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4797)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!7, !43, !531}
!4797 = !{!4798, !4799}
!4798 = !DILocalVariable(name: "size", arg: 1, scope: !4794, file: !190, line: 444, type: !43)
!4799 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4794, file: !190, line: 445, type: !531)
!4800 = !DILocation(line: 444, column: 60, scope: !4794)
!4801 = !DILocation(line: 445, column: 16, scope: !4794)
!4802 = !DILocation(line: 447, column: 7, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 447, column: 6)
!4804 = !DILocation(line: 447, column: 6, scope: !4794)
!4805 = !DILocation(line: 448, column: 3, scope: !4803)
!4806 = !DILocation(line: 450, column: 6, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 450, column: 6)
!4808 = !DILocation(line: 450, column: 11, scope: !4807)
!4809 = !DILocation(line: 450, column: 6, scope: !4794)
!4810 = !DILocation(line: 451, column: 3, scope: !4807)
!4811 = !DILocation(line: 453, column: 32, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 453, column: 6)
!4813 = !DILocation(line: 453, column: 37, scope: !4812)
!4814 = !DILocation(line: 453, column: 42, scope: !4812)
!4815 = !DILocation(line: 453, column: 45, scope: !4812)
!4816 = !DILocation(line: 453, column: 50, scope: !4812)
!4817 = !DILocation(line: 453, column: 6, scope: !4794)
!4818 = !DILocation(line: 454, column: 3, scope: !4812)
!4819 = !DILocation(line: 455, column: 32, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 455, column: 6)
!4821 = !DILocation(line: 455, column: 37, scope: !4820)
!4822 = !DILocation(line: 455, column: 43, scope: !4820)
!4823 = !DILocation(line: 455, column: 46, scope: !4820)
!4824 = !DILocation(line: 455, column: 51, scope: !4820)
!4825 = !DILocation(line: 455, column: 6, scope: !4794)
!4826 = !DILocation(line: 456, column: 3, scope: !4820)
!4827 = !DILocation(line: 457, column: 6, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 457, column: 6)
!4829 = !DILocation(line: 457, column: 11, scope: !4828)
!4830 = !DILocation(line: 457, column: 6, scope: !4794)
!4831 = !DILocation(line: 457, column: 26, scope: !4828)
!4832 = !DILocation(line: 458, column: 6, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 458, column: 6)
!4834 = !DILocation(line: 458, column: 11, scope: !4833)
!4835 = !DILocation(line: 458, column: 6, scope: !4794)
!4836 = !DILocation(line: 458, column: 26, scope: !4833)
!4837 = !DILocation(line: 459, column: 6, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 459, column: 6)
!4839 = !DILocation(line: 459, column: 11, scope: !4838)
!4840 = !DILocation(line: 459, column: 6, scope: !4794)
!4841 = !DILocation(line: 459, column: 26, scope: !4838)
!4842 = !DILocation(line: 460, column: 6, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 460, column: 6)
!4844 = !DILocation(line: 460, column: 11, scope: !4843)
!4845 = !DILocation(line: 460, column: 6, scope: !4794)
!4846 = !DILocation(line: 460, column: 26, scope: !4843)
!4847 = !DILocation(line: 461, column: 6, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 461, column: 6)
!4849 = !DILocation(line: 461, column: 11, scope: !4848)
!4850 = !DILocation(line: 461, column: 6, scope: !4794)
!4851 = !DILocation(line: 461, column: 26, scope: !4848)
!4852 = !DILocation(line: 462, column: 6, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 462, column: 6)
!4854 = !DILocation(line: 462, column: 11, scope: !4853)
!4855 = !DILocation(line: 462, column: 6, scope: !4794)
!4856 = !DILocation(line: 462, column: 26, scope: !4853)
!4857 = !DILocation(line: 463, column: 6, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 463, column: 6)
!4859 = !DILocation(line: 463, column: 11, scope: !4858)
!4860 = !DILocation(line: 463, column: 6, scope: !4794)
!4861 = !DILocation(line: 463, column: 26, scope: !4858)
!4862 = !DILocation(line: 464, column: 6, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 464, column: 6)
!4864 = !DILocation(line: 464, column: 11, scope: !4863)
!4865 = !DILocation(line: 464, column: 6, scope: !4794)
!4866 = !DILocation(line: 464, column: 26, scope: !4863)
!4867 = !DILocation(line: 465, column: 6, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 465, column: 6)
!4869 = !DILocation(line: 465, column: 11, scope: !4868)
!4870 = !DILocation(line: 465, column: 6, scope: !4794)
!4871 = !DILocation(line: 465, column: 26, scope: !4868)
!4872 = !DILocation(line: 466, column: 6, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 466, column: 6)
!4874 = !DILocation(line: 466, column: 11, scope: !4873)
!4875 = !DILocation(line: 466, column: 6, scope: !4794)
!4876 = !DILocation(line: 466, column: 26, scope: !4873)
!4877 = !DILocation(line: 467, column: 6, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 467, column: 6)
!4879 = !DILocation(line: 467, column: 11, scope: !4878)
!4880 = !DILocation(line: 467, column: 6, scope: !4794)
!4881 = !DILocation(line: 467, column: 26, scope: !4878)
!4882 = !DILocation(line: 468, column: 6, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 468, column: 6)
!4884 = !DILocation(line: 468, column: 11, scope: !4883)
!4885 = !DILocation(line: 468, column: 6, scope: !4794)
!4886 = !DILocation(line: 468, column: 26, scope: !4883)
!4887 = !DILocation(line: 469, column: 6, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 469, column: 6)
!4889 = !DILocation(line: 469, column: 11, scope: !4888)
!4890 = !DILocation(line: 469, column: 6, scope: !4794)
!4891 = !DILocation(line: 469, column: 26, scope: !4888)
!4892 = !DILocation(line: 470, column: 6, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 470, column: 6)
!4894 = !DILocation(line: 470, column: 11, scope: !4893)
!4895 = !DILocation(line: 470, column: 6, scope: !4794)
!4896 = !DILocation(line: 470, column: 26, scope: !4893)
!4897 = !DILocation(line: 471, column: 6, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 471, column: 6)
!4899 = !DILocation(line: 471, column: 11, scope: !4898)
!4900 = !DILocation(line: 471, column: 6, scope: !4794)
!4901 = !DILocation(line: 471, column: 26, scope: !4898)
!4902 = !DILocation(line: 472, column: 6, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 472, column: 6)
!4904 = !DILocation(line: 472, column: 11, scope: !4903)
!4905 = !DILocation(line: 472, column: 6, scope: !4794)
!4906 = !DILocation(line: 472, column: 26, scope: !4903)
!4907 = !DILocation(line: 473, column: 6, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 473, column: 6)
!4909 = !DILocation(line: 473, column: 11, scope: !4908)
!4910 = !DILocation(line: 473, column: 6, scope: !4794)
!4911 = !DILocation(line: 473, column: 26, scope: !4908)
!4912 = !DILocation(line: 474, column: 6, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 474, column: 6)
!4914 = !DILocation(line: 474, column: 11, scope: !4913)
!4915 = !DILocation(line: 474, column: 6, scope: !4794)
!4916 = !DILocation(line: 474, column: 27, scope: !4913)
!4917 = !DILocation(line: 475, column: 6, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 475, column: 6)
!4919 = !DILocation(line: 475, column: 11, scope: !4918)
!4920 = !DILocation(line: 475, column: 6, scope: !4794)
!4921 = !DILocation(line: 475, column: 32, scope: !4918)
!4922 = !DILocation(line: 477, column: 50, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4794, file: !190, line: 477, column: 6)
!4924 = !DILocation(line: 477, column: 6, scope: !4794)
!4925 = !DILocation(line: 478, column: 3, scope: !4923)
!4926 = !DILocation(line: 478, column: 3, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4928, file: !190, line: 478, column: 3)
!4928 = distinct !DILexicalBlock(scope: !4923, file: !190, line: 478, column: 3)
!4929 = !{i32 -2143557633}
!4930 = !DILocation(line: 478, column: 3, scope: !4928)
!4931 = !DILocation(line: 480, column: 3, scope: !4923)
!4932 = !DILocation(line: 480, column: 3, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4923, file: !190, line: 480, column: 3)
!4934 = !DILocation(line: 480, column: 3, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4933, file: !190, line: 480, column: 3)
!4936 = !DILocation(line: 480, column: 3, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4933, file: !190, line: 480, column: 3)
!4938 = !{i64 2151409866, i64 2151409895, i64 2151409941, i64 2151409999, i64 2151410053, i64 2151410107, i64 2151410162, i64 2151410193}
!4939 = !DILocation(line: 483, column: 2, scope: !4794)
!4940 = !DILocation(line: 484, column: 1, scope: !4794)
!4941 = !DISubprogram(name: "kmalloc_trace", scope: !190, file: !190, line: 525, type: !4942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4942 = !DISubroutineType(types: !4943)
!4943 = !{!28, !4944, !1042, !43}
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3549, line: 11, flags: DIFlagFwdDecl)
!4946 = distinct !DISubprogram(name: "kmalloc_type", scope: !190, file: !190, line: 401, type: !4947, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4949)
!4947 = !DISubroutineType(types: !4948)
!4948 = !{!189, !1042, !47}
!4949 = !{!4950, !4951}
!4950 = !DILocalVariable(name: "flags", arg: 1, scope: !4946, file: !190, line: 401, type: !1042)
!4951 = !DILocalVariable(name: "caller", arg: 2, scope: !4946, file: !190, line: 401, type: !47)
!4952 = !DILocation(line: 401, column: 67, scope: !4946)
!4953 = !DILocation(line: 401, column: 88, scope: !4946)
!4954 = !DILocation(line: 407, column: 6, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4946, file: !190, line: 407, column: 6)
!4956 = !DILocation(line: 407, column: 6, scope: !4946)
!4957 = !DILocation(line: 413, column: 3, scope: !4955)
!4958 = !DILocation(line: 423, column: 38, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4946, file: !190, line: 423, column: 6)
!4960 = !DILocation(line: 423, column: 44, scope: !4959)
!4961 = !DILocation(line: 423, column: 6, scope: !4946)
!4962 = !DILocation(line: 424, column: 3, scope: !4959)
!4963 = !DILocation(line: 426, column: 3, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4946, file: !190, line: 425, column: 6)
!4965 = !DILocation(line: 429, column: 1, scope: !4946)
!4966 = !DISubprogram(name: "__kmalloc", scope: !190, file: !190, line: 488, type: !4730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4967 = !DISubprogram(name: "__compiletime_assert_117", scope: !190, file: !190, line: 478, type: !2082, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4968 = distinct !DISubprogram(name: "parent_freezer", scope: !3, file: !3, line: 61, type: !4969, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4971)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{!214, !214}
!4971 = !{!4972}
!4972 = !DILocalVariable(name: "freezer", arg: 1, scope: !4968, file: !3, line: 61, type: !214)
!4973 = !DILocation(line: 61, column: 55, scope: !4968)
!4974 = !DILocation(line: 63, column: 21, scope: !4968)
!4975 = !DILocation(line: 63, column: 30, scope: !4968)
!4976 = !DILocation(line: 63, column: 34, scope: !4968)
!4977 = !DILocation(line: 63, column: 9, scope: !4968)
!4978 = !DILocation(line: 63, column: 2, scope: !4968)
!4979 = !DISubprogram(name: "cpus_read_lock", scope: !4980, file: !4980, line: 135, type: !2082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4980 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!4981 = !DISubprogram(name: "mutex_lock", scope: !329, file: !329, line: 227, type: !4982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{null, !4984}
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!4985 = !DISubprogram(name: "static_key_slow_inc_cpuslocked", scope: !2046, file: !2046, line: 230, type: !4986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4986 = !DISubroutineType(types: !4987)
!4987 = !{!531, !4988}
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2046, line: 85, size: 128, elements: !4990)
!4990 = !{!4991, !4992}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4989, file: !2046, line: 86, baseType: !57, size: 32)
!4992 = !DIDerivedType(tag: DW_TAG_member, scope: !4989, file: !2046, line: 101, baseType: !4993, size: 64, offset: 64)
!4993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4989, file: !2046, line: 101, size: 64, elements: !4994)
!4994 = !{!4995, !4996, !4997}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4993, file: !2046, line: 102, baseType: !47, size: 64)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4993, file: !2046, line: 103, baseType: !2044, size: 64)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4993, file: !2046, line: 104, baseType: !4998, size: 64)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2046, line: 104, flags: DIFlagFwdDecl)
!5000 = !DISubprogram(name: "mutex_unlock", scope: !329, file: !329, line: 246, type: !4982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5001 = !DISubprogram(name: "cpus_read_unlock", scope: !4980, file: !4980, line: 136, type: !2082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5002 = !DISubprogram(name: "static_key_slow_dec_cpuslocked", scope: !2046, file: !2046, line: 231, type: !5003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5003 = !DISubroutineType(types: !5004)
!5004 = !{null, !4988}
!5005 = !DISubprogram(name: "kfree", scope: !190, file: !190, line: 227, type: !5006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5006 = !DISubroutineType(types: !5007)
!5007 = !{null, !254}
!5008 = !DISubprogram(name: "cgroup_taskset_first", scope: !2963, file: !2963, line: 153, type: !5009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{!2491, !4311, !5011}
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!5012 = !DISubprogram(name: "__thaw_task", scope: !5013, file: !5013, line: 43, type: !4329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5013 = !DIFile(filename: "./include/linux/freezer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "980eccc8e3c8a58000df4fcfa102b7a2")
!5014 = !DISubprogram(name: "freeze_task", scope: !5013, file: !5013, line: 61, type: !4469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5015 = !DISubprogram(name: "cgroup_taskset_next", scope: !2963, file: !2963, line: 155, type: !5009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5016 = distinct !DISubprogram(name: "task_css_is_root", scope: !2963, file: !2963, line: 478, type: !5017, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5019)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!531, !2491, !30}
!5019 = !{!5020, !5021, !5022}
!5020 = !DILocalVariable(name: "task", arg: 1, scope: !5016, file: !2963, line: 478, type: !2491)
!5021 = !DILocalVariable(name: "subsys_id", arg: 2, scope: !5016, file: !2963, line: 478, type: !30)
!5022 = !DILocalVariable(name: "__UNIQUE_ID_rcu262", scope: !5023, file: !2963, line: 480, type: !2969)
!5023 = distinct !DILexicalBlock(scope: !5016, file: !2963, line: 480, column: 9)
!5024 = !DILocation(line: 478, column: 57, scope: !5016)
!5025 = !DILocation(line: 478, column: 67, scope: !5016)
!5026 = !DILocation(line: 480, column: 9, scope: !5023)
!5027 = !DILocation(line: 480, column: 9, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5023, file: !2963, line: 480, column: 9)
!5029 = !DILocation(line: 480, column: 9, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5028, file: !2963, line: 480, column: 9)
!5031 = !DILocation(line: 480, column: 9, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5023, file: !2963, line: 480, column: 9)
!5033 = !DILocation(line: 480, column: 9, scope: !5016)
!5034 = !DILocation(line: 481, column: 23, scope: !5016)
!5035 = !DILocation(line: 481, column: 3, scope: !5016)
!5036 = !DILocation(line: 480, column: 47, scope: !5016)
!5037 = !DILocation(line: 480, column: 2, scope: !5016)
!5038 = distinct !DISubprogram(name: "freezer_read", scope: !3, file: !3, line: 295, type: !2185, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5039)
!5039 = !{!5040, !5041, !5042, !5043}
!5040 = !DILocalVariable(name: "m", arg: 1, scope: !5038, file: !3, line: 295, type: !2154)
!5041 = !DILocalVariable(name: "v", arg: 2, scope: !5038, file: !3, line: 295, type: !28)
!5042 = !DILocalVariable(name: "css", scope: !5038, file: !3, line: 297, type: !2974)
!5043 = !DILocalVariable(name: "pos", scope: !5038, file: !3, line: 297, type: !2974)
!5044 = !DILocation(line: 295, column: 42, scope: !5038)
!5045 = !DILocation(line: 295, column: 51, scope: !5038)
!5046 = !DILocation(line: 297, column: 2, scope: !5038)
!5047 = !DILocation(line: 297, column: 30, scope: !5038)
!5048 = !DILocation(line: 297, column: 44, scope: !5038)
!5049 = !DILocation(line: 297, column: 36, scope: !5038)
!5050 = !DILocation(line: 297, column: 49, scope: !5038)
!5051 = !DILocation(line: 299, column: 2, scope: !5038)
!5052 = !DILocation(line: 300, column: 2, scope: !5038)
!5053 = !DILocation(line: 303, column: 2, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 303, column: 2)
!5055 = !DILocation(line: 303, column: 2, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 303, column: 2)
!5057 = !DILocation(line: 304, column: 26, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 304, column: 7)
!5059 = distinct !DILexicalBlock(scope: !5056, file: !3, line: 303, column: 41)
!5060 = !DILocation(line: 304, column: 8, scope: !5058)
!5061 = !DILocation(line: 304, column: 7, scope: !5059)
!5062 = !DILocation(line: 305, column: 4, scope: !5058)
!5063 = !DILocation(line: 306, column: 3, scope: !5059)
!5064 = !DILocation(line: 308, column: 20, scope: !5059)
!5065 = !DILocation(line: 308, column: 3, scope: !5059)
!5066 = !DILocation(line: 310, column: 3, scope: !5059)
!5067 = !DILocation(line: 311, column: 11, scope: !5059)
!5068 = !DILocation(line: 311, column: 3, scope: !5059)
!5069 = !DILocation(line: 312, column: 2, scope: !5059)
!5070 = distinct !{!5070, !5053, !5071, !4661, !4662}
!5071 = !DILocation(line: 312, column: 2, scope: !5054)
!5072 = !DILocation(line: 314, column: 2, scope: !5038)
!5073 = !DILocation(line: 315, column: 2, scope: !5038)
!5074 = !DILocation(line: 317, column: 11, scope: !5038)
!5075 = !DILocation(line: 317, column: 45, scope: !5038)
!5076 = !DILocation(line: 317, column: 33, scope: !5038)
!5077 = !DILocation(line: 317, column: 51, scope: !5038)
!5078 = !DILocation(line: 317, column: 14, scope: !5038)
!5079 = !DILocation(line: 317, column: 2, scope: !5038)
!5080 = !DILocation(line: 318, column: 11, scope: !5038)
!5081 = !DILocation(line: 318, column: 2, scope: !5038)
!5082 = !DILocation(line: 320, column: 1, scope: !5038)
!5083 = !DILocation(line: 319, column: 2, scope: !5038)
!5084 = distinct !DISubprogram(name: "freezer_write", scope: !3, file: !3, line: 425, type: !4169, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5085)
!5085 = !{!5086, !5087, !5088, !5089, !5090}
!5086 = !DILocalVariable(name: "of", arg: 1, scope: !5084, file: !3, line: 425, type: !288)
!5087 = !DILocalVariable(name: "buf", arg: 2, scope: !5084, file: !3, line: 426, type: !542)
!5088 = !DILocalVariable(name: "nbytes", arg: 3, scope: !5084, file: !3, line: 426, type: !43)
!5089 = !DILocalVariable(name: "off", arg: 4, scope: !5084, file: !3, line: 426, type: !49)
!5090 = !DILocalVariable(name: "freeze", scope: !5084, file: !3, line: 428, type: !531)
!5091 = !DILocation(line: 425, column: 55, scope: !5084)
!5092 = !DILocation(line: 426, column: 15, scope: !5084)
!5093 = !DILocation(line: 426, column: 27, scope: !5084)
!5094 = !DILocation(line: 426, column: 42, scope: !5084)
!5095 = !DILocation(line: 428, column: 2, scope: !5084)
!5096 = !DILocation(line: 428, column: 7, scope: !5084)
!5097 = !DILocation(line: 430, column: 17, scope: !5084)
!5098 = !DILocation(line: 430, column: 8, scope: !5084)
!5099 = !DILocation(line: 430, column: 6, scope: !5084)
!5100 = !DILocation(line: 432, column: 13, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 432, column: 6)
!5102 = !DILocation(line: 432, column: 18, scope: !5101)
!5103 = !DILocation(line: 432, column: 6, scope: !5101)
!5104 = !DILocation(line: 432, column: 41, scope: !5101)
!5105 = !DILocation(line: 432, column: 6, scope: !5084)
!5106 = !DILocation(line: 433, column: 10, scope: !5101)
!5107 = !DILocation(line: 433, column: 3, scope: !5101)
!5108 = !DILocation(line: 434, column: 18, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5101, file: !3, line: 434, column: 11)
!5110 = !DILocation(line: 434, column: 23, scope: !5109)
!5111 = !DILocation(line: 434, column: 11, scope: !5109)
!5112 = !DILocation(line: 434, column: 58, scope: !5109)
!5113 = !DILocation(line: 434, column: 11, scope: !5101)
!5114 = !DILocation(line: 435, column: 10, scope: !5109)
!5115 = !DILocation(line: 435, column: 3, scope: !5109)
!5116 = !DILocation(line: 437, column: 3, scope: !5109)
!5117 = !DILocation(line: 439, column: 42, scope: !5084)
!5118 = !DILocation(line: 439, column: 35, scope: !5084)
!5119 = !DILocation(line: 439, column: 23, scope: !5084)
!5120 = !DILocation(line: 439, column: 48, scope: !5084)
!5121 = !DILocation(line: 439, column: 2, scope: !5084)
!5122 = !DILocation(line: 440, column: 9, scope: !5084)
!5123 = !DILocation(line: 440, column: 2, scope: !5084)
!5124 = !DILocation(line: 441, column: 1, scope: !5084)
!5125 = distinct !DISubprogram(name: "freezer_self_freezing_read", scope: !3, file: !3, line: 443, type: !4366, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5126)
!5126 = !{!5127, !5128, !5129}
!5127 = !DILocalVariable(name: "css", arg: 1, scope: !5125, file: !3, line: 443, type: !2974)
!5128 = !DILocalVariable(name: "cft", arg: 2, scope: !5125, file: !3, line: 444, type: !4350)
!5129 = !DILocalVariable(name: "freezer", scope: !5125, file: !3, line: 446, type: !214)
!5130 = !DILocation(line: 443, column: 67, scope: !5125)
!5131 = !DILocation(line: 444, column: 26, scope: !5125)
!5132 = !DILocation(line: 446, column: 2, scope: !5125)
!5133 = !DILocation(line: 446, column: 18, scope: !5125)
!5134 = !DILocation(line: 446, column: 40, scope: !5125)
!5135 = !DILocation(line: 446, column: 28, scope: !5125)
!5136 = !DILocation(line: 448, column: 16, scope: !5125)
!5137 = !DILocation(line: 448, column: 25, scope: !5125)
!5138 = !DILocation(line: 448, column: 31, scope: !5125)
!5139 = !DILocation(line: 448, column: 9, scope: !5125)
!5140 = !DILocation(line: 449, column: 1, scope: !5125)
!5141 = !DILocation(line: 448, column: 2, scope: !5125)
!5142 = distinct !DISubprogram(name: "freezer_parent_freezing_read", scope: !3, file: !3, line: 451, type: !4366, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5143)
!5143 = !{!5144, !5145, !5146}
!5144 = !DILocalVariable(name: "css", arg: 1, scope: !5142, file: !3, line: 451, type: !2974)
!5145 = !DILocalVariable(name: "cft", arg: 2, scope: !5142, file: !3, line: 452, type: !4350)
!5146 = !DILocalVariable(name: "freezer", scope: !5142, file: !3, line: 454, type: !214)
!5147 = !DILocation(line: 451, column: 69, scope: !5142)
!5148 = !DILocation(line: 452, column: 21, scope: !5142)
!5149 = !DILocation(line: 454, column: 2, scope: !5142)
!5150 = !DILocation(line: 454, column: 18, scope: !5142)
!5151 = !DILocation(line: 454, column: 40, scope: !5142)
!5152 = !DILocation(line: 454, column: 28, scope: !5142)
!5153 = !DILocation(line: 456, column: 16, scope: !5142)
!5154 = !DILocation(line: 456, column: 25, scope: !5142)
!5155 = !DILocation(line: 456, column: 31, scope: !5142)
!5156 = !DILocation(line: 456, column: 9, scope: !5142)
!5157 = !DILocation(line: 457, column: 1, scope: !5142)
!5158 = !DILocation(line: 456, column: 2, scope: !5142)
!5159 = distinct !DISubprogram(name: "seq_css", scope: !2963, file: !2963, line: 584, type: !5160, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5162)
!5160 = !DISubroutineType(types: !5161)
!5161 = !{!2974, !2154}
!5162 = !{!5163}
!5163 = !DILocalVariable(name: "seq", arg: 1, scope: !5159, file: !2963, line: 584, type: !2154)
!5164 = !DILocation(line: 584, column: 68, scope: !5159)
!5165 = !DILocation(line: 586, column: 16, scope: !5159)
!5166 = !DILocation(line: 586, column: 21, scope: !5159)
!5167 = !DILocation(line: 586, column: 9, scope: !5159)
!5168 = !DILocation(line: 586, column: 2, scope: !5159)
!5169 = !DISubprogram(name: "css_next_descendant_post", scope: !2963, file: !2963, line: 150, type: !5170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!2974, !2974, !2974}
!5172 = distinct !DISubprogram(name: "css_tryget_online", scope: !5173, file: !5173, line: 61, type: !5174, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5176)
!5173 = !DIFile(filename: "./include/linux/cgroup_refcnt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb82afda500c288a33501fe8317a0a59")
!5174 = !DISubroutineType(types: !5175)
!5175 = !{!531, !2974}
!5176 = !{!5177}
!5177 = !DILocalVariable(name: "css", arg: 1, scope: !5172, file: !5173, line: 61, type: !2974)
!5178 = !DILocation(line: 61, column: 52, scope: !5172)
!5179 = !DILocation(line: 63, column: 8, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5172, file: !5173, line: 63, column: 6)
!5181 = !DILocation(line: 63, column: 13, scope: !5180)
!5182 = !DILocation(line: 63, column: 19, scope: !5180)
!5183 = !DILocation(line: 63, column: 6, scope: !5172)
!5184 = !DILocation(line: 64, column: 34, scope: !5180)
!5185 = !DILocation(line: 64, column: 39, scope: !5180)
!5186 = !DILocation(line: 64, column: 10, scope: !5180)
!5187 = !DILocation(line: 64, column: 3, scope: !5180)
!5188 = !DILocation(line: 65, column: 2, scope: !5172)
!5189 = !DILocation(line: 66, column: 1, scope: !5172)
!5190 = distinct !DISubprogram(name: "update_if_frozen", scope: !3, file: !3, line: 256, type: !4293, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5191)
!5191 = !{!5192, !5193, !5194, !5195, !5210, !5211, !5215}
!5192 = !DILocalVariable(name: "css", arg: 1, scope: !5190, file: !3, line: 256, type: !2974)
!5193 = !DILocalVariable(name: "freezer", scope: !5190, file: !3, line: 258, type: !214)
!5194 = !DILocalVariable(name: "pos", scope: !5190, file: !3, line: 259, type: !2974)
!5195 = !DILocalVariable(name: "it", scope: !5190, file: !3, line: 260, type: !5196)
!5196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_task_iter", file: !2963, line: 52, size: 832, elements: !5197)
!5197 = !{!5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209}
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5196, file: !2963, line: 53, baseType: !4280, size: 64)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5196, file: !2963, line: 54, baseType: !7, size: 32, offset: 64)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "cset_pos", scope: !5196, file: !2963, line: 56, baseType: !108, size: 64, offset: 128)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "cset_head", scope: !5196, file: !2963, line: 57, baseType: !108, size: 64, offset: 192)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "tcset_pos", scope: !5196, file: !2963, line: 59, baseType: !108, size: 64, offset: 256)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "tcset_head", scope: !5196, file: !2963, line: 60, baseType: !108, size: 64, offset: 320)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "task_pos", scope: !5196, file: !2963, line: 62, baseType: !108, size: 64, offset: 384)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "cur_tasks_head", scope: !5196, file: !2963, line: 64, baseType: !108, size: 64, offset: 448)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "cur_cset", scope: !5196, file: !2963, line: 65, baseType: !2969, size: 64, offset: 512)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "cur_dcset", scope: !5196, file: !2963, line: 66, baseType: !2969, size: 64, offset: 576)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "cur_task", scope: !5196, file: !2963, line: 67, baseType: !2491, size: 64, offset: 640)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "iters_node", scope: !5196, file: !2963, line: 68, baseType: !105, size: 128, offset: 704)
!5210 = !DILocalVariable(name: "task", scope: !5190, file: !3, line: 261, type: !2491)
!5211 = !DILocalVariable(name: "child", scope: !5212, file: !3, line: 272, type: !214)
!5212 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 271, column: 31)
!5213 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 271, column: 2)
!5214 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 271, column: 2)
!5215 = !DILabel(scope: !5190, name: "out_iter_end", file: !3, line: 291)
!5216 = !DILocation(line: 256, column: 58, scope: !5190)
!5217 = !DILocation(line: 258, column: 2, scope: !5190)
!5218 = !DILocation(line: 258, column: 18, scope: !5190)
!5219 = !DILocation(line: 258, column: 40, scope: !5190)
!5220 = !DILocation(line: 258, column: 28, scope: !5190)
!5221 = !DILocation(line: 259, column: 2, scope: !5190)
!5222 = !DILocation(line: 259, column: 30, scope: !5190)
!5223 = !DILocation(line: 260, column: 2, scope: !5190)
!5224 = !DILocation(line: 260, column: 23, scope: !5190)
!5225 = !DILocation(line: 261, column: 2, scope: !5190)
!5226 = !DILocation(line: 261, column: 22, scope: !5190)
!5227 = !DILocation(line: 263, column: 2, scope: !5190)
!5228 = !DILocation(line: 263, column: 2, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 263, column: 2)
!5230 = !DILocation(line: 265, column: 8, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 265, column: 6)
!5232 = !DILocation(line: 265, column: 17, scope: !5231)
!5233 = !DILocation(line: 265, column: 23, scope: !5231)
!5234 = !DILocation(line: 265, column: 42, scope: !5231)
!5235 = !DILocation(line: 266, column: 7, scope: !5231)
!5236 = !DILocation(line: 266, column: 16, scope: !5231)
!5237 = !DILocation(line: 266, column: 22, scope: !5231)
!5238 = !DILocation(line: 265, column: 6, scope: !5190)
!5239 = !DILocation(line: 267, column: 3, scope: !5231)
!5240 = !DILocation(line: 270, column: 2, scope: !5190)
!5241 = !DILocation(line: 271, column: 2, scope: !5214)
!5242 = !DILocation(line: 271, column: 2, scope: !5213)
!5243 = !DILocation(line: 272, column: 3, scope: !5212)
!5244 = !DILocation(line: 272, column: 19, scope: !5212)
!5245 = !DILocation(line: 272, column: 39, scope: !5212)
!5246 = !DILocation(line: 272, column: 27, scope: !5212)
!5247 = !DILocation(line: 274, column: 8, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 274, column: 7)
!5249 = !DILocation(line: 274, column: 15, scope: !5248)
!5250 = !DILocation(line: 274, column: 21, scope: !5248)
!5251 = !DILocation(line: 274, column: 46, scope: !5248)
!5252 = !DILocation(line: 275, column: 9, scope: !5248)
!5253 = !DILocation(line: 275, column: 16, scope: !5248)
!5254 = !DILocation(line: 275, column: 22, scope: !5248)
!5255 = !DILocation(line: 274, column: 7, scope: !5212)
!5256 = !DILocation(line: 276, column: 4, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5248, file: !3, line: 275, column: 40)
!5258 = !DILocation(line: 277, column: 4, scope: !5257)
!5259 = !DILocation(line: 279, column: 2, scope: !5213)
!5260 = !DILocation(line: 279, column: 2, scope: !5212)
!5261 = distinct !{!5261, !5241, !5262, !4661, !4662}
!5262 = !DILocation(line: 279, column: 2, scope: !5214)
!5263 = !DILocation(line: 280, column: 2, scope: !5190)
!5264 = !DILocation(line: 283, column: 22, scope: !5190)
!5265 = !DILocation(line: 283, column: 2, scope: !5190)
!5266 = !DILocation(line: 285, column: 2, scope: !5190)
!5267 = !DILocation(line: 285, column: 17, scope: !5190)
!5268 = !DILocation(line: 285, column: 15, scope: !5190)
!5269 = !DILocation(line: 286, column: 16, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 286, column: 7)
!5271 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 285, column: 43)
!5272 = !DILocation(line: 286, column: 7, scope: !5270)
!5273 = !DILocation(line: 286, column: 22, scope: !5270)
!5274 = !DILocation(line: 286, column: 33, scope: !5270)
!5275 = !DILocation(line: 286, column: 26, scope: !5270)
!5276 = !DILocation(line: 286, column: 7, scope: !5271)
!5277 = !DILocation(line: 287, column: 4, scope: !5270)
!5278 = distinct !{!5278, !5266, !5279, !4661, !4662}
!5279 = !DILocation(line: 288, column: 2, scope: !5190)
!5280 = !DILocation(line: 290, column: 2, scope: !5190)
!5281 = !DILocation(line: 290, column: 11, scope: !5190)
!5282 = !DILocation(line: 290, column: 17, scope: !5190)
!5283 = !DILocation(line: 291, column: 1, scope: !5190)
!5284 = !DILocation(line: 292, column: 2, scope: !5190)
!5285 = !DILocation(line: 293, column: 1, scope: !5190)
!5286 = distinct !DISubprogram(name: "css_put", scope: !5173, file: !5173, line: 76, type: !4293, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5287)
!5287 = !{!5288}
!5288 = !DILocalVariable(name: "css", arg: 1, scope: !5286, file: !5173, line: 76, type: !2974)
!5289 = !DILocation(line: 76, column: 42, scope: !5286)
!5290 = !DILocation(line: 78, column: 8, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5286, file: !5173, line: 78, column: 6)
!5292 = !DILocation(line: 78, column: 13, scope: !5291)
!5293 = !DILocation(line: 78, column: 19, scope: !5291)
!5294 = !DILocation(line: 78, column: 6, scope: !5286)
!5295 = !DILocation(line: 79, column: 19, scope: !5291)
!5296 = !DILocation(line: 79, column: 24, scope: !5291)
!5297 = !DILocation(line: 79, column: 3, scope: !5291)
!5298 = !DILocation(line: 80, column: 1, scope: !5286)
!5299 = !DISubprogram(name: "seq_puts", scope: !2156, file: !2156, line: 121, type: !5300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5300 = !DISubroutineType(types: !5301)
!5301 = !{null, !2154, !24}
!5302 = distinct !DISubprogram(name: "freezer_state_strs", scope: !3, file: !3, line: 83, type: !5303, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5305)
!5303 = !DISubroutineType(types: !5304)
!5304 = !{!24, !7}
!5305 = !{!5306}
!5306 = !DILocalVariable(name: "state", arg: 1, scope: !5302, file: !3, line: 83, type: !7)
!5307 = !DILocation(line: 83, column: 52, scope: !5302)
!5308 = !DILocation(line: 85, column: 6, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 85, column: 6)
!5310 = !DILocation(line: 85, column: 12, scope: !5309)
!5311 = !DILocation(line: 85, column: 6, scope: !5302)
!5312 = !DILocation(line: 86, column: 3, scope: !5309)
!5313 = !DILocation(line: 87, column: 6, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 87, column: 6)
!5315 = !DILocation(line: 87, column: 12, scope: !5314)
!5316 = !DILocation(line: 87, column: 6, scope: !5302)
!5317 = !DILocation(line: 88, column: 3, scope: !5314)
!5318 = !DILocation(line: 89, column: 2, scope: !5302)
!5319 = !DILocation(line: 90, column: 1, scope: !5302)
!5320 = !DISubprogram(name: "seq_putc", scope: !2156, file: !2156, line: 120, type: !5321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5321 = !DISubroutineType(types: !5322)
!5322 = !{null, !2154, !26}
!5323 = !DISubprogram(name: "of_css", scope: !2963, file: !2963, line: 576, type: !5324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5324 = !DISubroutineType(types: !5325)
!5325 = !{!2974, !288}
!5326 = distinct !DISubprogram(name: "percpu_ref_tryget_live", scope: !207, file: !207, line: 306, type: !5327, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5329)
!5327 = !DISubroutineType(types: !5328)
!5328 = !{!531, !4402}
!5329 = !{!5330, !5331}
!5330 = !DILocalVariable(name: "ref", arg: 1, scope: !5326, file: !207, line: 306, type: !4402)
!5331 = !DILocalVariable(name: "ret", scope: !5326, file: !207, line: 308, type: !531)
!5332 = !DILocation(line: 306, column: 62, scope: !5326)
!5333 = !DILocation(line: 308, column: 2, scope: !5326)
!5334 = !DILocation(line: 308, column: 7, scope: !5326)
!5335 = !DILocation(line: 310, column: 2, scope: !5326)
!5336 = !DILocation(line: 311, column: 35, scope: !5326)
!5337 = !DILocation(line: 311, column: 8, scope: !5326)
!5338 = !DILocation(line: 311, column: 6, scope: !5326)
!5339 = !DILocation(line: 312, column: 2, scope: !5326)
!5340 = !DILocation(line: 313, column: 9, scope: !5326)
!5341 = !DILocation(line: 314, column: 1, scope: !5326)
!5342 = !DILocation(line: 313, column: 2, scope: !5326)
!5343 = distinct !DISubprogram(name: "percpu_ref_tryget_live_rcu", scope: !207, file: !207, line: 275, type: !5327, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5344)
!5344 = !{!5345, !5346, !5347, !5348, !5350, !5353, !5358}
!5345 = !DILocalVariable(name: "ref", arg: 1, scope: !5343, file: !207, line: 275, type: !4402)
!5346 = !DILocalVariable(name: "percpu_count", scope: !5343, file: !207, line: 277, type: !2068)
!5347 = !DILocalVariable(name: "ret", scope: !5343, file: !207, line: 278, type: !531)
!5348 = !DILocalVariable(name: "__ret_warn_on", scope: !5349, file: !207, line: 280, type: !30)
!5349 = distinct !DILexicalBlock(scope: !5343, file: !207, line: 280, column: 2)
!5350 = !DILocalVariable(name: "__flags", scope: !5351, file: !207, line: 280, type: !30)
!5351 = distinct !DILexicalBlock(scope: !5352, file: !207, line: 280, column: 2)
!5352 = distinct !DILexicalBlock(scope: !5349, file: !207, line: 280, column: 2)
!5353 = !DILocalVariable(name: "__vpp_verify", scope: !5354, file: !207, line: 283, type: !254)
!5354 = distinct !DILexicalBlock(scope: !5355, file: !207, line: 283, column: 3)
!5355 = distinct !DILexicalBlock(scope: !5356, file: !207, line: 283, column: 3)
!5356 = distinct !DILexicalBlock(scope: !5357, file: !207, line: 282, column: 51)
!5357 = distinct !DILexicalBlock(scope: !5343, file: !207, line: 282, column: 6)
!5358 = !DILocalVariable(name: "pao_ID__", scope: !5359, file: !207, line: 283, type: !1942)
!5359 = distinct !DILexicalBlock(scope: !5355, file: !207, line: 283, column: 3)
!5360 = !DILocation(line: 275, column: 66, scope: !5343)
!5361 = !DILocation(line: 277, column: 2, scope: !5343)
!5362 = !DILocation(line: 277, column: 26, scope: !5343)
!5363 = !DILocation(line: 278, column: 2, scope: !5343)
!5364 = !DILocation(line: 278, column: 7, scope: !5343)
!5365 = !DILocation(line: 280, column: 2, scope: !5349)
!5366 = !DILocation(line: 280, column: 2, scope: !5352)
!5367 = !DILocation(line: 280, column: 2, scope: !5351)
!5368 = !DILocation(line: 280, column: 2, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5351, file: !207, line: 280, column: 2)
!5370 = !DILocation(line: 280, column: 2, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5351, file: !207, line: 280, column: 2)
!5372 = !{i64 2151356551, i64 2151356580, i64 2151356626, i64 2151356684, i64 2151356738, i64 2151356792, i64 2151356847, i64 2151356878, i64 2151357186, i64 2151357192, i64 2151357239, i64 2151357262, i64 2151357288}
!5373 = !DILocation(line: 280, column: 2, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5351, file: !207, line: 280, column: 2)
!5375 = !DILocation(line: 280, column: 2, scope: !5343)
!5376 = !DILocation(line: 282, column: 6, scope: !5357)
!5377 = !DILocation(line: 282, column: 6, scope: !5343)
!5378 = !DILocation(line: 283, column: 3, scope: !5356)
!5379 = !DILocation(line: 283, column: 3, scope: !5355)
!5380 = !DILocation(line: 283, column: 3, scope: !5354)
!5381 = !DILocation(line: 283, column: 3, scope: !5359)
!5382 = !DILocation(line: 283, column: 3, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5384, file: !207, line: 283, column: 3)
!5384 = distinct !DILexicalBlock(scope: !5359, file: !207, line: 283, column: 3)
!5385 = !{i64 2151365189}
!5386 = !DILocation(line: 284, column: 7, scope: !5356)
!5387 = !DILocation(line: 285, column: 2, scope: !5356)
!5388 = !DILocation(line: 285, column: 15, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5357, file: !207, line: 285, column: 13)
!5390 = !DILocation(line: 285, column: 20, scope: !5389)
!5391 = !DILocation(line: 285, column: 37, scope: !5389)
!5392 = !DILocation(line: 285, column: 13, scope: !5357)
!5393 = !DILocation(line: 286, column: 35, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5389, file: !207, line: 285, column: 59)
!5395 = !DILocation(line: 286, column: 40, scope: !5394)
!5396 = !DILocation(line: 286, column: 46, scope: !5394)
!5397 = !DILocation(line: 286, column: 9, scope: !5394)
!5398 = !DILocation(line: 286, column: 7, scope: !5394)
!5399 = !DILocation(line: 287, column: 2, scope: !5394)
!5400 = !DILocation(line: 288, column: 9, scope: !5343)
!5401 = !DILocation(line: 289, column: 1, scope: !5343)
!5402 = !DILocation(line: 288, column: 2, scope: !5343)
!5403 = distinct !DISubprogram(name: "rcu_read_lock_held", scope: !4499, file: !4499, line: 359, type: !1850, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5404 = !DILocation(line: 361, column: 2, scope: !5403)
!5405 = distinct !DISubprogram(name: "__ref_is_percpu", scope: !207, file: !207, line: 158, type: !5406, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5409)
!5406 = !DISubroutineType(types: !5407)
!5407 = !{!531, !4402, !5408}
!5408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!5409 = !{!5410, !5411, !5412}
!5410 = !DILocalVariable(name: "ref", arg: 1, scope: !5405, file: !207, line: 158, type: !4402)
!5411 = !DILocalVariable(name: "percpu_countp", arg: 2, scope: !5405, file: !207, line: 159, type: !5408)
!5412 = !DILocalVariable(name: "percpu_ptr", scope: !5405, file: !207, line: 161, type: !47)
!5413 = !DILocation(line: 158, column: 55, scope: !5405)
!5414 = !DILocation(line: 159, column: 33, scope: !5405)
!5415 = !DILocation(line: 161, column: 2, scope: !5405)
!5416 = !DILocation(line: 161, column: 16, scope: !5405)
!5417 = !DILocation(line: 174, column: 15, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5405, file: !207, line: 174, column: 15)
!5419 = !DILocation(line: 174, column: 15, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5418, file: !207, line: 174, column: 15)
!5421 = !DILocation(line: 174, column: 13, scope: !5405)
!5422 = !DILocation(line: 182, column: 6, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5405, file: !207, line: 182, column: 6)
!5424 = !DILocation(line: 182, column: 6, scope: !5405)
!5425 = !DILocation(line: 183, column: 3, scope: !5423)
!5426 = !DILocation(line: 185, column: 45, scope: !5405)
!5427 = !DILocation(line: 185, column: 19, scope: !5405)
!5428 = !DILocation(line: 185, column: 3, scope: !5405)
!5429 = !DILocation(line: 185, column: 17, scope: !5405)
!5430 = !DILocation(line: 186, column: 2, scope: !5405)
!5431 = !DILocation(line: 187, column: 1, scope: !5405)
!5432 = distinct !DISubprogram(name: "atomic_long_inc_not_zero", scope: !5433, file: !5433, line: 4650, type: !5434, scopeLine: 4651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5436)
!5433 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5434 = !DISubroutineType(types: !5435)
!5435 = !{!531, !3881}
!5436 = !{!5437}
!5437 = !DILocalVariable(name: "v", arg: 1, scope: !5432, file: !5433, line: 4650, type: !3881)
!5438 = !DILocation(line: 4650, column: 41, scope: !5432)
!5439 = !DILocation(line: 4652, column: 2, scope: !5432)
!5440 = !DILocation(line: 4652, column: 2, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5432, file: !5433, line: 4652, column: 2)
!5442 = !DILocation(line: 4653, column: 31, scope: !5432)
!5443 = !DILocation(line: 4653, column: 2, scope: !5432)
!5444 = !DILocation(line: 4654, column: 38, scope: !5432)
!5445 = !DILocation(line: 4654, column: 9, scope: !5432)
!5446 = !DILocation(line: 4654, column: 2, scope: !5432)
!5447 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5448, file: !5448, line: 94, type: !5449, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5454)
!5448 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5449 = !DISubroutineType(types: !5450)
!5450 = !{null, !5451, !43}
!5451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5452, size: 64)
!5452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5453)
!5453 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5454 = !{!5455, !5456}
!5455 = !DILocalVariable(name: "v", arg: 1, scope: !5447, file: !5448, line: 94, type: !5451)
!5456 = !DILocalVariable(name: "size", arg: 2, scope: !5447, file: !5448, line: 94, type: !43)
!5457 = !DILocation(line: 94, column: 79, scope: !5447)
!5458 = !DILocation(line: 94, column: 89, scope: !5447)
!5459 = !DILocation(line: 96, column: 20, scope: !5447)
!5460 = !DILocation(line: 96, column: 23, scope: !5447)
!5461 = !DILocation(line: 96, column: 2, scope: !5447)
!5462 = !DILocation(line: 97, column: 2, scope: !5447)
!5463 = !DILocation(line: 98, column: 1, scope: !5447)
!5464 = distinct !DISubprogram(name: "raw_atomic_long_inc_not_zero", scope: !320, file: !320, line: 1728, type: !5434, scopeLine: 1729, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5465)
!5465 = !{!5466}
!5466 = !DILocalVariable(name: "v", arg: 1, scope: !5464, file: !320, line: 1728, type: !3881)
!5467 = !DILocation(line: 1728, column: 45, scope: !5464)
!5468 = !DILocation(line: 1731, column: 35, scope: !5464)
!5469 = !DILocation(line: 1731, column: 9, scope: !5464)
!5470 = !DILocation(line: 1731, column: 2, scope: !5464)
!5471 = distinct !DISubprogram(name: "kasan_check_write", scope: !5472, file: !5472, line: 44, type: !5473, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5475)
!5472 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5473 = !DISubroutineType(types: !5474)
!5474 = !{!531, !5451, !7}
!5475 = !{!5476, !5477}
!5476 = !DILocalVariable(name: "p", arg: 1, scope: !5471, file: !5472, line: 44, type: !5451)
!5477 = !DILocalVariable(name: "size", arg: 2, scope: !5471, file: !5472, line: 44, type: !7)
!5478 = !DILocation(line: 44, column: 59, scope: !5471)
!5479 = !DILocation(line: 44, column: 75, scope: !5471)
!5480 = !DILocation(line: 46, column: 2, scope: !5471)
!5481 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5482, file: !5482, line: 229, type: !5483, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5485)
!5482 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5483 = !DISubroutineType(types: !5484)
!5484 = !{null, !5451, !43, !30}
!5485 = !{!5486, !5487, !5488}
!5486 = !DILocalVariable(name: "ptr", arg: 1, scope: !5481, file: !5482, line: 229, type: !5451)
!5487 = !DILocalVariable(name: "size", arg: 2, scope: !5481, file: !5482, line: 229, type: !43)
!5488 = !DILocalVariable(name: "type", arg: 3, scope: !5481, file: !5482, line: 230, type: !30)
!5489 = !DILocation(line: 229, column: 60, scope: !5481)
!5490 = !DILocation(line: 229, column: 72, scope: !5481)
!5491 = !DILocation(line: 230, column: 15, scope: !5481)
!5492 = !DILocation(line: 230, column: 23, scope: !5481)
!5493 = distinct !DISubprogram(name: "raw_atomic64_inc_not_zero", scope: !5494, file: !5494, line: 4560, type: !5495, scopeLine: 4561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5498)
!5494 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5495 = !DISubroutineType(types: !5496)
!5496 = !{!531, !5497}
!5497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!5498 = !{!5499}
!5499 = !DILocalVariable(name: "v", arg: 1, scope: !5493, file: !5494, line: 4560, type: !5497)
!5500 = !DILocation(line: 4560, column: 39, scope: !5493)
!5501 = !DILocation(line: 4565, column: 33, scope: !5493)
!5502 = !DILocation(line: 4565, column: 9, scope: !5493)
!5503 = !DILocation(line: 4565, column: 2, scope: !5493)
!5504 = distinct !DISubprogram(name: "raw_atomic64_add_unless", scope: !5494, file: !5494, line: 4540, type: !5505, scopeLine: 4541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5507)
!5505 = !DISubroutineType(types: !5506)
!5506 = !{!531, !5497, !325, !325}
!5507 = !{!5508, !5509, !5510}
!5508 = !DILocalVariable(name: "v", arg: 1, scope: !5504, file: !5494, line: 4540, type: !5497)
!5509 = !DILocalVariable(name: "a", arg: 2, scope: !5504, file: !5494, line: 4540, type: !325)
!5510 = !DILocalVariable(name: "u", arg: 3, scope: !5504, file: !5494, line: 4540, type: !325)
!5511 = !DILocation(line: 4540, column: 37, scope: !5504)
!5512 = !DILocation(line: 4540, column: 44, scope: !5504)
!5513 = !DILocation(line: 4540, column: 51, scope: !5504)
!5514 = !DILocation(line: 4545, column: 39, scope: !5504)
!5515 = !DILocation(line: 4545, column: 42, scope: !5504)
!5516 = !DILocation(line: 4545, column: 45, scope: !5504)
!5517 = !DILocation(line: 4545, column: 9, scope: !5504)
!5518 = !DILocation(line: 4545, column: 51, scope: !5504)
!5519 = !DILocation(line: 4545, column: 48, scope: !5504)
!5520 = !DILocation(line: 4545, column: 2, scope: !5504)
!5521 = distinct !DISubprogram(name: "raw_atomic64_fetch_add_unless", scope: !5494, file: !5494, line: 4511, type: !5522, scopeLine: 4512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5524)
!5522 = !DISubroutineType(types: !5523)
!5523 = !{!325, !5497, !325, !325}
!5524 = !{!5525, !5526, !5527, !5528}
!5525 = !DILocalVariable(name: "v", arg: 1, scope: !5521, file: !5494, line: 4511, type: !5497)
!5526 = !DILocalVariable(name: "a", arg: 2, scope: !5521, file: !5494, line: 4511, type: !325)
!5527 = !DILocalVariable(name: "u", arg: 3, scope: !5521, file: !5494, line: 4511, type: !325)
!5528 = !DILocalVariable(name: "c", scope: !5521, file: !5494, line: 4516, type: !325)
!5529 = !DILocation(line: 4511, column: 43, scope: !5521)
!5530 = !DILocation(line: 4511, column: 50, scope: !5521)
!5531 = !DILocation(line: 4511, column: 57, scope: !5521)
!5532 = !DILocation(line: 4516, column: 2, scope: !5521)
!5533 = !DILocation(line: 4516, column: 6, scope: !5521)
!5534 = !DILocation(line: 4516, column: 28, scope: !5521)
!5535 = !DILocation(line: 4516, column: 10, scope: !5521)
!5536 = !DILocation(line: 4518, column: 2, scope: !5521)
!5537 = !DILocation(line: 4519, column: 7, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5539, file: !5494, line: 4519, column: 7)
!5539 = distinct !DILexicalBlock(scope: !5521, file: !5494, line: 4518, column: 5)
!5540 = !DILocation(line: 4519, column: 7, scope: !5539)
!5541 = !DILocation(line: 4520, column: 4, scope: !5538)
!5542 = !DILocation(line: 4521, column: 2, scope: !5539)
!5543 = !DILocation(line: 4521, column: 37, scope: !5521)
!5544 = !DILocation(line: 4521, column: 44, scope: !5521)
!5545 = !DILocation(line: 4521, column: 48, scope: !5521)
!5546 = !DILocation(line: 4521, column: 46, scope: !5521)
!5547 = !DILocation(line: 4521, column: 12, scope: !5521)
!5548 = !DILocation(line: 4521, column: 11, scope: !5521)
!5549 = distinct !{!5549, !5536, !5550, !4661, !4662}
!5550 = !DILocation(line: 4521, column: 50, scope: !5521)
!5551 = !DILocation(line: 4523, column: 9, scope: !5521)
!5552 = !DILocation(line: 4525, column: 1, scope: !5521)
!5553 = !DILocation(line: 4523, column: 2, scope: !5521)
!5554 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !5494, file: !5494, line: 2554, type: !5555, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5559)
!5555 = !DISubroutineType(types: !5556)
!5556 = !{!325, !5557}
!5557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5558, size: 64)
!5558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!5559 = !{!5560}
!5560 = !DILocalVariable(name: "v", arg: 1, scope: !5554, file: !5494, line: 2554, type: !5557)
!5561 = !DILocation(line: 2554, column: 37, scope: !5554)
!5562 = !DILocation(line: 2556, column: 28, scope: !5554)
!5563 = !DILocation(line: 2556, column: 9, scope: !5554)
!5564 = !DILocation(line: 2556, column: 2, scope: !5554)
!5565 = distinct !DISubprogram(name: "raw_atomic64_try_cmpxchg", scope: !5494, file: !5494, line: 4221, type: !5566, scopeLine: 4222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5568)
!5566 = !DISubroutineType(types: !5567)
!5567 = !{!531, !5497, !4433, !325}
!5568 = !{!5569, !5570, !5571}
!5569 = !DILocalVariable(name: "v", arg: 1, scope: !5565, file: !5494, line: 4221, type: !5497)
!5570 = !DILocalVariable(name: "old", arg: 2, scope: !5565, file: !5494, line: 4221, type: !4433)
!5571 = !DILocalVariable(name: "new", arg: 3, scope: !5565, file: !5494, line: 4221, type: !325)
!5572 = !DILocation(line: 4221, column: 38, scope: !5565)
!5573 = !DILocation(line: 4221, column: 46, scope: !5565)
!5574 = !DILocation(line: 4221, column: 55, scope: !5565)
!5575 = !DILocation(line: 4224, column: 35, scope: !5565)
!5576 = !DILocation(line: 4224, column: 38, scope: !5565)
!5577 = !DILocation(line: 4224, column: 43, scope: !5565)
!5578 = !DILocation(line: 4224, column: 9, scope: !5565)
!5579 = !DILocation(line: 4224, column: 2, scope: !5565)
!5580 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !5581, file: !5581, line: 13, type: !5555, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5582)
!5581 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!5582 = !{!5583}
!5583 = !DILocalVariable(name: "v", arg: 1, scope: !5580, file: !5581, line: 13, type: !5557)
!5584 = !DILocation(line: 13, column: 65, scope: !5580)
!5585 = !DILocation(line: 15, column: 9, scope: !5580)
!5586 = !DILocation(line: 15, column: 2, scope: !5580)
!5587 = distinct !DISubprogram(name: "arch_atomic64_try_cmpxchg", scope: !5581, file: !5581, line: 107, type: !5566, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5588)
!5588 = !{!5589, !5590, !5591, !5592, !5594, !5595, !5596, !5597}
!5589 = !DILocalVariable(name: "v", arg: 1, scope: !5587, file: !5581, line: 107, type: !5497)
!5590 = !DILocalVariable(name: "old", arg: 2, scope: !5587, file: !5581, line: 107, type: !4433)
!5591 = !DILocalVariable(name: "new", arg: 3, scope: !5587, file: !5581, line: 107, type: !325)
!5592 = !DILocalVariable(name: "success", scope: !5593, file: !5581, line: 109, type: !531)
!5593 = distinct !DILexicalBlock(scope: !5587, file: !5581, line: 109, column: 9)
!5594 = !DILocalVariable(name: "_old", scope: !5593, file: !5581, line: 109, type: !4433)
!5595 = !DILocalVariable(name: "__old", scope: !5593, file: !5581, line: 109, type: !325)
!5596 = !DILocalVariable(name: "__new", scope: !5593, file: !5581, line: 109, type: !325)
!5597 = !DILocalVariable(name: "__ptr", scope: !5593, file: !5581, line: 109, type: !4434)
!5598 = !DILocation(line: 107, column: 67, scope: !5587)
!5599 = !DILocation(line: 107, column: 75, scope: !5587)
!5600 = !DILocation(line: 107, column: 84, scope: !5587)
!5601 = !DILocation(line: 109, column: 9, scope: !5593)
!5602 = !{i64 2148972966, i64 2148973005, i64 2148973026, i64 2148973063, i64 2148973086, i64 2148973095, i64 2148973296}
!5603 = !DILocation(line: 109, column: 9, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5593, file: !5581, line: 109, column: 9)
!5605 = !DILocation(line: 109, column: 9, scope: !5587)
!5606 = !DILocation(line: 109, column: 2, scope: !5587)
!5607 = !DISubprogram(name: "css_next_child", scope: !2963, file: !2963, line: 145, type: !5170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5608 = !DISubprogram(name: "css_task_iter_start", scope: !2963, file: !2963, line: 158, type: !5609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5609 = !DISubroutineType(types: !5610)
!5610 = !{null, !2974, !7, !5611}
!5611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5196, size: 64)
!5612 = !DISubprogram(name: "css_task_iter_next", scope: !2963, file: !2963, line: 160, type: !5613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5613 = !DISubroutineType(types: !5614)
!5614 = !{!2491, !5611}
!5615 = distinct !DISubprogram(name: "freezing", scope: !5013, file: !5013, line: 34, type: !4469, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5616)
!5616 = !{!5617, !5618}
!5617 = !DILocalVariable(name: "p", arg: 1, scope: !5615, file: !5013, line: 34, type: !2491)
!5618 = !DILocalVariable(name: "branch", scope: !5619, file: !5013, line: 36, type: !531)
!5619 = distinct !DILexicalBlock(scope: !5620, file: !5013, line: 36, column: 6)
!5620 = distinct !DILexicalBlock(scope: !5615, file: !5013, line: 36, column: 6)
!5621 = !DILocation(line: 34, column: 49, scope: !5615)
!5622 = !DILocation(line: 36, column: 6, scope: !5619)
!5623 = !DILocation(line: 36, column: 6, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5625, file: !5013, line: 36, column: 6)
!5625 = distinct !DILexicalBlock(scope: !5619, file: !5013, line: 36, column: 6)
!5626 = !DILocation(line: 36, column: 6, scope: !5625)
!5627 = !DILocation(line: 36, column: 6, scope: !5620)
!5628 = !DILocation(line: 36, column: 6, scope: !5615)
!5629 = !DILocation(line: 37, column: 29, scope: !5620)
!5630 = !DILocation(line: 37, column: 10, scope: !5620)
!5631 = !DILocation(line: 37, column: 3, scope: !5620)
!5632 = !DILocation(line: 39, column: 2, scope: !5615)
!5633 = !DILocation(line: 40, column: 1, scope: !5615)
!5634 = !DISubprogram(name: "frozen", scope: !5013, file: !5013, line: 27, type: !4469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5635 = !DISubprogram(name: "css_task_iter_end", scope: !2963, file: !2963, line: 161, type: !5636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5636 = !DISubroutineType(types: !5637)
!5637 = !{null, !5611}
!5638 = distinct !DISubprogram(name: "arch_static_branch", scope: !5639, file: !5639, line: 25, type: !5640, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5642)
!5639 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!5640 = !DISubroutineType(types: !5641)
!5641 = !{!531, !4988, !531}
!5642 = !{!5643, !5644, !5645}
!5643 = !DILocalVariable(name: "key", arg: 1, scope: !5638, file: !5639, line: 25, type: !4988)
!5644 = !DILocalVariable(name: "branch", arg: 2, scope: !5638, file: !5639, line: 25, type: !531)
!5645 = !DILabel(scope: !5638, name: "l_yes", file: !5639, line: 33)
!5646 = !DILocation(line: 25, column: 67, scope: !5638)
!5647 = !DILocation(line: 25, column: 77, scope: !5638)
!5648 = !DILocation(line: 30, column: 13, scope: !5638)
!5649 = !DILocation(line: 30, column: 28, scope: !5638)
!5650 = !DILocation(line: 30, column: 26, scope: !5638)
!5651 = !DILocation(line: 27, column: 2, scope: !5638)
!5652 = !{i64 1164622, i64 1164666, i64 2148649349, i64 2148649370, i64 2148649396, i64 2148649429, i64 2148649463, i64 2148649487}
!5653 = !DILocation(line: 32, column: 2, scope: !5638)
!5654 = !DILocation(line: 33, column: 1, scope: !5638)
!5655 = !DILocation(line: 34, column: 2, scope: !5638)
!5656 = !DILocation(line: 35, column: 1, scope: !5638)
!5657 = !DISubprogram(name: "freezing_slow_path", scope: !5013, file: !5013, line: 29, type: !4469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5658 = distinct !DISubprogram(name: "percpu_ref_put", scope: !207, file: !207, line: 349, type: !4400, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5659)
!5659 = !{!5660}
!5660 = !DILocalVariable(name: "ref", arg: 1, scope: !5658, file: !207, line: 349, type: !4402)
!5661 = !DILocation(line: 349, column: 54, scope: !5658)
!5662 = !DILocation(line: 351, column: 22, scope: !5658)
!5663 = !DILocation(line: 351, column: 2, scope: !5658)
!5664 = !DILocation(line: 352, column: 1, scope: !5658)
!5665 = distinct !DISubprogram(name: "percpu_ref_put_many", scope: !207, file: !207, line: 326, type: !5666, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5668)
!5666 = !DISubroutineType(types: !5667)
!5667 = !{null, !4402, !47}
!5668 = !{!5669, !5670, !5671, !5672, !5676, !5678}
!5669 = !DILocalVariable(name: "ref", arg: 1, scope: !5665, file: !207, line: 326, type: !4402)
!5670 = !DILocalVariable(name: "nr", arg: 2, scope: !5665, file: !207, line: 326, type: !47)
!5671 = !DILocalVariable(name: "percpu_count", scope: !5665, file: !207, line: 328, type: !2068)
!5672 = !DILocalVariable(name: "__vpp_verify", scope: !5673, file: !207, line: 333, type: !254)
!5673 = distinct !DILexicalBlock(scope: !5674, file: !207, line: 333, column: 3)
!5674 = distinct !DILexicalBlock(scope: !5675, file: !207, line: 333, column: 3)
!5675 = distinct !DILexicalBlock(scope: !5665, file: !207, line: 332, column: 6)
!5676 = !DILocalVariable(name: "pao_ID__", scope: !5677, file: !207, line: 333, type: !1942)
!5677 = distinct !DILexicalBlock(scope: !5674, file: !207, line: 333, column: 3)
!5678 = !DILocalVariable(name: "pto_val__", scope: !5679, file: !207, line: 333, type: !445)
!5679 = distinct !DILexicalBlock(scope: !5680, file: !207, line: 333, column: 3)
!5680 = distinct !DILexicalBlock(scope: !5681, file: !207, line: 333, column: 3)
!5681 = distinct !DILexicalBlock(scope: !5677, file: !207, line: 333, column: 3)
!5682 = !DILocation(line: 326, column: 59, scope: !5665)
!5683 = !DILocation(line: 326, column: 78, scope: !5665)
!5684 = !DILocation(line: 328, column: 2, scope: !5665)
!5685 = !DILocation(line: 328, column: 26, scope: !5665)
!5686 = !DILocation(line: 330, column: 2, scope: !5665)
!5687 = !DILocation(line: 332, column: 22, scope: !5675)
!5688 = !DILocation(line: 332, column: 6, scope: !5675)
!5689 = !DILocation(line: 332, column: 6, scope: !5665)
!5690 = !DILocation(line: 333, column: 3, scope: !5675)
!5691 = !DILocation(line: 333, column: 3, scope: !5674)
!5692 = !DILocation(line: 333, column: 3, scope: !5673)
!5693 = !DILocation(line: 333, column: 3, scope: !5677)
!5694 = !DILocation(line: 333, column: 3, scope: !5681)
!5695 = !DILocation(line: 333, column: 3, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5681, file: !207, line: 333, column: 3)
!5697 = !{i64 2151375590}
!5698 = !DILocation(line: 333, column: 3, scope: !5680)
!5699 = !DILocation(line: 333, column: 3, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5680, file: !207, line: 333, column: 3)
!5701 = !{i64 2151375885}
!5702 = !DILocation(line: 333, column: 3, scope: !5679)
!5703 = !{i64 2151376637}
!5704 = !DILocation(line: 334, column: 11, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5675, file: !207, line: 334, column: 11)
!5706 = !DILocation(line: 334, column: 11, scope: !5675)
!5707 = !DILocation(line: 335, column: 3, scope: !5705)
!5708 = !DILocation(line: 335, column: 8, scope: !5705)
!5709 = !DILocation(line: 335, column: 14, scope: !5705)
!5710 = !DILocation(line: 335, column: 22, scope: !5705)
!5711 = !DILocation(line: 337, column: 2, scope: !5665)
!5712 = !DILocation(line: 338, column: 1, scope: !5665)
!5713 = distinct !DISubprogram(name: "atomic_long_sub_and_test", scope: !5433, file: !5433, line: 4482, type: !5714, scopeLine: 4483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5716)
!5714 = !DISubroutineType(types: !5715)
!5715 = !{!531, !762, !3881}
!5716 = !{!5717, !5718}
!5717 = !DILocalVariable(name: "i", arg: 1, scope: !5713, file: !5433, line: 4482, type: !762)
!5718 = !DILocalVariable(name: "v", arg: 2, scope: !5713, file: !5433, line: 4482, type: !3881)
!5719 = !DILocation(line: 4482, column: 31, scope: !5713)
!5720 = !DILocation(line: 4482, column: 49, scope: !5713)
!5721 = !DILocation(line: 4484, column: 2, scope: !5713)
!5722 = !DILocation(line: 4484, column: 2, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5713, file: !5433, line: 4484, column: 2)
!5724 = !DILocation(line: 4485, column: 31, scope: !5713)
!5725 = !DILocation(line: 4485, column: 2, scope: !5713)
!5726 = !DILocation(line: 4486, column: 38, scope: !5713)
!5727 = !DILocation(line: 4486, column: 41, scope: !5713)
!5728 = !DILocation(line: 4486, column: 9, scope: !5713)
!5729 = !DILocation(line: 4486, column: 2, scope: !5713)
!5730 = distinct !DISubprogram(name: "raw_atomic_long_sub_and_test", scope: !320, file: !320, line: 1540, type: !5714, scopeLine: 1541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5731)
!5731 = !{!5732, !5733}
!5732 = !DILocalVariable(name: "i", arg: 1, scope: !5730, file: !320, line: 1540, type: !762)
!5733 = !DILocalVariable(name: "v", arg: 2, scope: !5730, file: !320, line: 1540, type: !3881)
!5734 = !DILocation(line: 1540, column: 35, scope: !5730)
!5735 = !DILocation(line: 1540, column: 53, scope: !5730)
!5736 = !DILocation(line: 1543, column: 35, scope: !5730)
!5737 = !DILocation(line: 1543, column: 38, scope: !5730)
!5738 = !DILocation(line: 1543, column: 9, scope: !5730)
!5739 = !DILocation(line: 1543, column: 2, scope: !5730)
!5740 = distinct !DISubprogram(name: "raw_atomic64_sub_and_test", scope: !5494, file: !5494, line: 4346, type: !5741, scopeLine: 4347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5743)
!5741 = !DISubroutineType(types: !5742)
!5742 = !{!531, !325, !5497}
!5743 = !{!5744, !5745}
!5744 = !DILocalVariable(name: "i", arg: 1, scope: !5740, file: !5494, line: 4346, type: !325)
!5745 = !DILocalVariable(name: "v", arg: 2, scope: !5740, file: !5494, line: 4346, type: !5497)
!5746 = !DILocation(line: 4346, column: 31, scope: !5740)
!5747 = !DILocation(line: 4346, column: 46, scope: !5740)
!5748 = !DILocation(line: 4349, column: 36, scope: !5740)
!5749 = !DILocation(line: 4349, column: 39, scope: !5740)
!5750 = !DILocation(line: 4349, column: 9, scope: !5740)
!5751 = !DILocation(line: 4349, column: 2, scope: !5740)
!5752 = distinct !DISubprogram(name: "arch_atomic64_sub_and_test", scope: !5581, file: !5581, line: 37, type: !5741, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5753)
!5753 = !{!5754, !5755, !5756}
!5754 = !DILocalVariable(name: "i", arg: 1, scope: !5752, file: !5581, line: 37, type: !325)
!5755 = !DILocalVariable(name: "v", arg: 2, scope: !5752, file: !5581, line: 37, type: !5497)
!5756 = !DILocalVariable(name: "c", scope: !5757, file: !5581, line: 39, type: !531)
!5757 = distinct !DILexicalBlock(scope: !5752, file: !5581, line: 39, column: 9)
!5758 = !DILocation(line: 37, column: 60, scope: !5752)
!5759 = !DILocation(line: 37, column: 75, scope: !5752)
!5760 = !DILocation(line: 39, column: 9, scope: !5757)
!5761 = !{i64 2148953903, i64 2148953942, i64 2148953963, i64 2148954000, i64 2148954023, i64 2148954032, i64 2148954131}
!5762 = !DILocation(line: 39, column: 9, scope: !5752)
!5763 = !DILocation(line: 39, column: 2, scope: !5752)
!5764 = distinct !DISubprogram(name: "strstrip", scope: !5765, file: !5765, line: 116, type: !5766, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5768)
!5765 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5766 = !DISubroutineType(types: !5767)
!5767 = !{!542, !542}
!5768 = !{!5769}
!5769 = !DILocalVariable(name: "str", arg: 1, scope: !5764, file: !5765, line: 116, type: !542)
!5770 = !DILocation(line: 116, column: 49, scope: !5764)
!5771 = !DILocation(line: 118, column: 15, scope: !5764)
!5772 = !DILocation(line: 118, column: 9, scope: !5764)
!5773 = !DILocation(line: 118, column: 2, scope: !5764)
!5774 = !DISubprogram(name: "strcmp", scope: !5765, file: !5765, line: 88, type: !5775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5775 = !DISubroutineType(types: !5776)
!5776 = !{!30, !24, !24}
!5777 = distinct !DISubprogram(name: "freezer_change_state", scope: !3, file: !3, line: 389, type: !5778, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5780)
!5778 = !DISubroutineType(types: !5779)
!5779 = !{null, !214, !531}
!5780 = !{!5781, !5782, !5783, !5784, !5788}
!5781 = !DILocalVariable(name: "freezer", arg: 1, scope: !5777, file: !3, line: 389, type: !214)
!5782 = !DILocalVariable(name: "freeze", arg: 2, scope: !5777, file: !3, line: 389, type: !531)
!5783 = !DILocalVariable(name: "pos", scope: !5777, file: !3, line: 391, type: !2974)
!5784 = !DILocalVariable(name: "pos_f", scope: !5785, file: !3, line: 402, type: !214)
!5785 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 401, column: 50)
!5786 = distinct !DILexicalBlock(scope: !5787, file: !3, line: 401, column: 2)
!5787 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 401, column: 2)
!5788 = !DILocalVariable(name: "parent", scope: !5785, file: !3, line: 403, type: !214)
!5789 = !DILocation(line: 389, column: 50, scope: !5777)
!5790 = !DILocation(line: 389, column: 64, scope: !5777)
!5791 = !DILocation(line: 391, column: 2, scope: !5777)
!5792 = !DILocation(line: 391, column: 30, scope: !5777)
!5793 = !DILocation(line: 393, column: 2, scope: !5777)
!5794 = !DILocation(line: 399, column: 2, scope: !5777)
!5795 = !DILocation(line: 400, column: 2, scope: !5777)
!5796 = !DILocation(line: 401, column: 2, scope: !5787)
!5797 = !DILocation(line: 401, column: 2, scope: !5786)
!5798 = !DILocation(line: 402, column: 3, scope: !5785)
!5799 = !DILocation(line: 402, column: 19, scope: !5785)
!5800 = !DILocation(line: 402, column: 39, scope: !5785)
!5801 = !DILocation(line: 402, column: 27, scope: !5785)
!5802 = !DILocation(line: 403, column: 3, scope: !5785)
!5803 = !DILocation(line: 403, column: 19, scope: !5785)
!5804 = !DILocation(line: 403, column: 43, scope: !5785)
!5805 = !DILocation(line: 403, column: 28, scope: !5785)
!5806 = !DILocation(line: 405, column: 26, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 405, column: 7)
!5808 = !DILocation(line: 405, column: 8, scope: !5807)
!5809 = !DILocation(line: 405, column: 7, scope: !5785)
!5810 = !DILocation(line: 406, column: 4, scope: !5807)
!5811 = !DILocation(line: 407, column: 3, scope: !5785)
!5812 = !DILocation(line: 409, column: 7, scope: !5813)
!5813 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 409, column: 7)
!5814 = !DILocation(line: 409, column: 16, scope: !5813)
!5815 = !DILocation(line: 409, column: 13, scope: !5813)
!5816 = !DILocation(line: 409, column: 7, scope: !5785)
!5817 = !DILocation(line: 410, column: 24, scope: !5813)
!5818 = !DILocation(line: 410, column: 31, scope: !5813)
!5819 = !DILocation(line: 410, column: 4, scope: !5813)
!5820 = !DILocation(line: 413, column: 24, scope: !5813)
!5821 = !DILocation(line: 414, column: 10, scope: !5813)
!5822 = !DILocation(line: 414, column: 18, scope: !5813)
!5823 = !DILocation(line: 414, column: 24, scope: !5813)
!5824 = !DILocation(line: 413, column: 4, scope: !5813)
!5825 = !DILocation(line: 417, column: 3, scope: !5785)
!5826 = !DILocation(line: 418, column: 11, scope: !5785)
!5827 = !DILocation(line: 418, column: 3, scope: !5785)
!5828 = !DILocation(line: 419, column: 2, scope: !5786)
!5829 = !DILocation(line: 419, column: 2, scope: !5785)
!5830 = distinct !{!5830, !5796, !5831, !4661, !4662}
!5831 = !DILocation(line: 419, column: 2, scope: !5787)
!5832 = !DILocation(line: 420, column: 2, scope: !5777)
!5833 = !DILocation(line: 421, column: 2, scope: !5777)
!5834 = !DILocation(line: 422, column: 2, scope: !5777)
!5835 = !DILocation(line: 423, column: 1, scope: !5777)
!5836 = !DISubprogram(name: "strim", scope: !5765, file: !5765, line: 114, type: !5766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5837 = !DISubprogram(name: "css_next_descendant_pre", scope: !2963, file: !2963, line: 147, type: !5170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5838 = distinct !DISubprogram(name: "freezer_apply_state", scope: !3, file: !3, line: 353, type: !5839, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5841)
!5839 = !DISubroutineType(types: !5840)
!5840 = !{null, !214, !531, !7}
!5841 = !{!5842, !5843, !5844, !5845}
!5842 = !DILocalVariable(name: "freezer", arg: 1, scope: !5838, file: !3, line: 353, type: !214)
!5843 = !DILocalVariable(name: "freeze", arg: 2, scope: !5838, file: !3, line: 353, type: !531)
!5844 = !DILocalVariable(name: "state", arg: 3, scope: !5838, file: !3, line: 354, type: !7)
!5845 = !DILocalVariable(name: "was_freezing", scope: !5846, file: !3, line: 368, type: !531)
!5846 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 367, column: 9)
!5847 = distinct !DILexicalBlock(scope: !5838, file: !3, line: 362, column: 6)
!5848 = !DILocation(line: 353, column: 49, scope: !5838)
!5849 = !DILocation(line: 353, column: 63, scope: !5838)
!5850 = !DILocation(line: 354, column: 18, scope: !5838)
!5851 = !DILocation(line: 357, column: 2, scope: !5838)
!5852 = !DILocation(line: 357, column: 2, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5838, file: !3, line: 357, column: 2)
!5854 = !DILocation(line: 359, column: 8, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5838, file: !3, line: 359, column: 6)
!5856 = !DILocation(line: 359, column: 17, scope: !5855)
!5857 = !DILocation(line: 359, column: 23, scope: !5855)
!5858 = !DILocation(line: 359, column: 6, scope: !5838)
!5859 = !DILocation(line: 360, column: 3, scope: !5855)
!5860 = !DILocation(line: 362, column: 6, scope: !5847)
!5861 = !DILocation(line: 362, column: 6, scope: !5838)
!5862 = !DILocation(line: 363, column: 9, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5864, file: !3, line: 363, column: 7)
!5864 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 362, column: 14)
!5865 = !DILocation(line: 363, column: 18, scope: !5863)
!5866 = !DILocation(line: 363, column: 24, scope: !5863)
!5867 = !DILocation(line: 363, column: 7, scope: !5864)
!5868 = !DILocation(line: 364, column: 4, scope: !5863)
!5869 = !DILocation(line: 365, column: 21, scope: !5864)
!5870 = !DILocation(line: 365, column: 3, scope: !5864)
!5871 = !DILocation(line: 365, column: 12, scope: !5864)
!5872 = !DILocation(line: 365, column: 18, scope: !5864)
!5873 = !DILocation(line: 366, column: 17, scope: !5864)
!5874 = !DILocation(line: 366, column: 3, scope: !5864)
!5875 = !DILocation(line: 367, column: 2, scope: !5864)
!5876 = !DILocation(line: 368, column: 3, scope: !5846)
!5877 = !DILocation(line: 368, column: 8, scope: !5846)
!5878 = !DILocation(line: 368, column: 23, scope: !5846)
!5879 = !DILocation(line: 368, column: 32, scope: !5846)
!5880 = !DILocation(line: 368, column: 38, scope: !5846)
!5881 = !DILocation(line: 370, column: 22, scope: !5846)
!5882 = !DILocation(line: 370, column: 21, scope: !5846)
!5883 = !DILocation(line: 370, column: 3, scope: !5846)
!5884 = !DILocation(line: 370, column: 12, scope: !5846)
!5885 = !DILocation(line: 370, column: 18, scope: !5846)
!5886 = !DILocation(line: 372, column: 9, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5846, file: !3, line: 372, column: 7)
!5888 = !DILocation(line: 372, column: 18, scope: !5887)
!5889 = !DILocation(line: 372, column: 24, scope: !5887)
!5890 = !DILocation(line: 372, column: 7, scope: !5846)
!5891 = !DILocation(line: 373, column: 4, scope: !5892)
!5892 = distinct !DILexicalBlock(scope: !5887, file: !3, line: 372, column: 44)
!5893 = !DILocation(line: 373, column: 13, scope: !5892)
!5894 = !DILocation(line: 373, column: 19, scope: !5892)
!5895 = !DILocation(line: 374, column: 8, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5892, file: !3, line: 374, column: 8)
!5897 = !DILocation(line: 374, column: 8, scope: !5892)
!5898 = !DILocation(line: 375, column: 5, scope: !5896)
!5899 = !DILocation(line: 376, column: 20, scope: !5892)
!5900 = !DILocation(line: 376, column: 4, scope: !5892)
!5901 = !DILocation(line: 377, column: 3, scope: !5892)
!5902 = !DILocation(line: 378, column: 2, scope: !5847)
!5903 = !DILocation(line: 379, column: 1, scope: !5838)
!5904 = distinct !DISubprogram(name: "freeze_cgroup", scope: !3, file: !3, line: 322, type: !5905, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5907)
!5905 = !DISubroutineType(types: !5906)
!5906 = !{null, !214}
!5907 = !{!5908, !5909, !5910}
!5908 = !DILocalVariable(name: "freezer", arg: 1, scope: !5904, file: !3, line: 322, type: !214)
!5909 = !DILocalVariable(name: "it", scope: !5904, file: !3, line: 324, type: !5196)
!5910 = !DILocalVariable(name: "task", scope: !5904, file: !3, line: 325, type: !2491)
!5911 = !DILocation(line: 322, column: 43, scope: !5904)
!5912 = !DILocation(line: 324, column: 2, scope: !5904)
!5913 = !DILocation(line: 324, column: 23, scope: !5904)
!5914 = !DILocation(line: 325, column: 2, scope: !5904)
!5915 = !DILocation(line: 325, column: 22, scope: !5904)
!5916 = !DILocation(line: 327, column: 23, scope: !5904)
!5917 = !DILocation(line: 327, column: 32, scope: !5904)
!5918 = !DILocation(line: 327, column: 2, scope: !5904)
!5919 = !DILocation(line: 328, column: 2, scope: !5904)
!5920 = !DILocation(line: 328, column: 17, scope: !5904)
!5921 = !DILocation(line: 328, column: 15, scope: !5904)
!5922 = !DILocation(line: 329, column: 15, scope: !5904)
!5923 = !DILocation(line: 329, column: 3, scope: !5904)
!5924 = distinct !{!5924, !5919, !5925, !4661, !4662}
!5925 = !DILocation(line: 329, column: 19, scope: !5904)
!5926 = !DILocation(line: 330, column: 2, scope: !5904)
!5927 = !DILocation(line: 331, column: 1, scope: !5904)
!5928 = distinct !DISubprogram(name: "unfreeze_cgroup", scope: !3, file: !3, line: 333, type: !5905, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5929)
!5929 = !{!5930, !5931, !5932}
!5930 = !DILocalVariable(name: "freezer", arg: 1, scope: !5928, file: !3, line: 333, type: !214)
!5931 = !DILocalVariable(name: "it", scope: !5928, file: !3, line: 335, type: !5196)
!5932 = !DILocalVariable(name: "task", scope: !5928, file: !3, line: 336, type: !2491)
!5933 = !DILocation(line: 333, column: 45, scope: !5928)
!5934 = !DILocation(line: 335, column: 2, scope: !5928)
!5935 = !DILocation(line: 335, column: 23, scope: !5928)
!5936 = !DILocation(line: 336, column: 2, scope: !5928)
!5937 = !DILocation(line: 336, column: 22, scope: !5928)
!5938 = !DILocation(line: 338, column: 23, scope: !5928)
!5939 = !DILocation(line: 338, column: 32, scope: !5928)
!5940 = !DILocation(line: 338, column: 2, scope: !5928)
!5941 = !DILocation(line: 339, column: 2, scope: !5928)
!5942 = !DILocation(line: 339, column: 17, scope: !5928)
!5943 = !DILocation(line: 339, column: 15, scope: !5928)
!5944 = !DILocation(line: 340, column: 15, scope: !5928)
!5945 = !DILocation(line: 340, column: 3, scope: !5928)
!5946 = distinct !{!5946, !5941, !5947, !4661, !4662}
!5947 = !DILocation(line: 340, column: 19, scope: !5928)
!5948 = !DILocation(line: 341, column: 2, scope: !5928)
!5949 = !DILocation(line: 342, column: 1, scope: !5928)
