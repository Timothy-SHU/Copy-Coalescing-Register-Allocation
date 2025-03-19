; ModuleID = 'kernel/cgroup/pids.c'
source_filename = "kernel/cgroup/pids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cftype = type { [64 x i8], i64, i64, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.pids_cgroup = type { %struct.cgroup_subsys_state, %struct.atomic64_t, %struct.atomic64_t, i64, %struct.cgroup_file, %struct.atomic64_t }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i64, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.cgroup_file = type { ptr, i64, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.css_set = type { [14 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [14 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
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
%struct.cgroup = type { %struct.cgroup_subsys_state, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, [0 x %struct.cgroup_file], i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x ptr] }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cgroup_bpf = type {}
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@pids_files = internal global [5 x %struct.cftype] [%struct.cftype { [64 x i8] c"max\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pids_max_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pids_max_write, ptr null }, %struct.cftype { [64 x i8] c"current\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @pids_current_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.cftype { [64 x i8] c"peak\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @pids_peak_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.cftype { [64 x i8] c"events\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 2, i32 224, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pids_events_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.cftype zeroinitializer], align 16, !dbg !0
@pids_cgrp_subsys = hidden global %struct.cgroup_subsys { ptr @pids_css_alloc, ptr null, ptr null, ptr null, ptr @pids_css_free, ptr null, ptr null, ptr null, ptr null, ptr @pids_can_attach, ptr @pids_cancel_attach, ptr null, ptr null, ptr @pids_can_fork, ptr @pids_cancel_fork, ptr null, ptr null, ptr @pids_release, ptr null, i8 4, i32 0, ptr null, ptr null, ptr null, %struct.idr zeroinitializer, %struct.list_head zeroinitializer, ptr @pids_files, ptr @pids_files, i32 0 }, align 8, !dbg !3886
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3888
@.str.1 = private unnamed_addr constant [21 x i8] c"kernel/cgroup/pids.c\00", align 1, !dbg !3893
@.str.2 = private unnamed_addr constant [47 x i8] c"\016cgroup: fork rejected by pids controller in \00", align 1, !dbg !3895
@.str.3 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1, !dbg !3900
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !3903
@.str.5 = private unnamed_addr constant [4 x i8] c"max\00", align 1, !dbg !3905
@.str.6 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1, !dbg !3907
@.str.7 = private unnamed_addr constant [10 x i8] c"max %lld\0A\00", align 1, !dbg !3909

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pids_css_alloc(ptr noundef %parent) #0 align 16 !dbg !3922 {
entry:
  %retval = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %pids = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !3924, metadata !DIExpression()), !dbg !3926
  call void @llvm.lifetime.start.p0(i64 8, ptr %pids) #15, !dbg !3927
  call void @llvm.dbg.declare(metadata ptr %pids, metadata !3925, metadata !DIExpression()), !dbg !3928
  %call = call noalias ptr @kzalloc(i64 noundef 288, i32 noundef 3264) #16, !dbg !3929
  store ptr %call, ptr %pids, align 8, !dbg !3930
  %0 = load ptr, ptr %pids, align 8, !dbg !3931
  %tobool = icmp ne ptr %0, null, !dbg !3931
  br i1 %tobool, label %if.end, label %if.then, !dbg !3933

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !3934
  store ptr %call1, ptr %retval, align 8, !dbg !3935
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3935

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pids, align 8, !dbg !3936
  %counter = getelementptr inbounds %struct.pids_cgroup, ptr %1, i32 0, i32 1, !dbg !3937
  call void @atomic64_set(ptr noundef %counter, i64 noundef 0) #17, !dbg !3938
  %2 = load ptr, ptr %pids, align 8, !dbg !3939
  %limit = getelementptr inbounds %struct.pids_cgroup, ptr %2, i32 0, i32 2, !dbg !3940
  call void @atomic64_set(ptr noundef %limit, i64 noundef 4194305) #17, !dbg !3941
  %3 = load ptr, ptr %pids, align 8, !dbg !3942
  %events_limit = getelementptr inbounds %struct.pids_cgroup, ptr %3, i32 0, i32 5, !dbg !3943
  call void @atomic64_set(ptr noundef %events_limit, i64 noundef 0) #17, !dbg !3944
  %4 = load ptr, ptr %pids, align 8, !dbg !3945
  %css = getelementptr inbounds %struct.pids_cgroup, ptr %4, i32 0, i32 0, !dbg !3946
  store ptr %css, ptr %retval, align 8, !dbg !3947
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3947

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pids) #15, !dbg !3948
  %5 = load ptr, ptr %retval, align 8, !dbg !3948
  ret ptr %5, !dbg !3948
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pids_css_free(ptr noundef %css) #0 align 16 !dbg !3949 {
entry:
  %css.addr = alloca ptr, align 8
  store ptr %css, ptr %css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %css.addr, metadata !3951, metadata !DIExpression()), !dbg !3952
  %0 = load ptr, ptr %css.addr, align 8, !dbg !3953
  %call = call ptr @css_pids(ptr noundef %0) #17, !dbg !3954
  call void @kfree(ptr noundef %call) #17, !dbg !3955
  ret void, !dbg !3956
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pids_can_attach(ptr noundef %tset) #0 align 16 !dbg !3957 {
entry:
  %tset.addr = alloca ptr, align 8
  %task = alloca ptr, align 8
  %dst_css = alloca ptr, align 8
  %pids = alloca ptr, align 8
  %old_css = alloca ptr, align 8
  %old_pids = alloca ptr, align 8
  store ptr %tset, ptr %tset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tset.addr, metadata !3959, metadata !DIExpression()), !dbg !3968
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #15, !dbg !3969
  call void @llvm.dbg.declare(metadata ptr %task, metadata !3960, metadata !DIExpression()), !dbg !3970
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst_css) #15, !dbg !3971
  call void @llvm.dbg.declare(metadata ptr %dst_css, metadata !3961, metadata !DIExpression()), !dbg !3972
  %0 = load ptr, ptr %tset.addr, align 8, !dbg !3973
  %call = call ptr @cgroup_taskset_first(ptr noundef %0, ptr noundef %dst_css) #17, !dbg !3973
  store ptr %call, ptr %task, align 8, !dbg !3973
  br label %for.cond, !dbg !3973

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %task, align 8, !dbg !3974
  %tobool = icmp ne ptr %1, null, !dbg !3973
  br i1 %tobool, label %for.body, label %for.end, !dbg !3973

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pids) #15, !dbg !3975
  call void @llvm.dbg.declare(metadata ptr %pids, metadata !3962, metadata !DIExpression()), !dbg !3976
  %2 = load ptr, ptr %dst_css, align 8, !dbg !3977
  %call1 = call ptr @css_pids(ptr noundef %2) #17, !dbg !3978
  store ptr %call1, ptr %pids, align 8, !dbg !3976
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_css) #15, !dbg !3979
  call void @llvm.dbg.declare(metadata ptr %old_css, metadata !3966, metadata !DIExpression()), !dbg !3980
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_pids) #15, !dbg !3981
  call void @llvm.dbg.declare(metadata ptr %old_pids, metadata !3967, metadata !DIExpression()), !dbg !3982
  %3 = load ptr, ptr %task, align 8, !dbg !3983
  %call2 = call ptr @task_css(ptr noundef %3, i32 noundef 10) #17, !dbg !3984
  store ptr %call2, ptr %old_css, align 8, !dbg !3985
  %4 = load ptr, ptr %old_css, align 8, !dbg !3986
  %call3 = call ptr @css_pids(ptr noundef %4) #17, !dbg !3987
  store ptr %call3, ptr %old_pids, align 8, !dbg !3988
  %5 = load ptr, ptr %pids, align 8, !dbg !3989
  call void @pids_charge(ptr noundef %5, i32 noundef 1) #17, !dbg !3990
  %6 = load ptr, ptr %old_pids, align 8, !dbg !3991
  call void @pids_uncharge(ptr noundef %6, i32 noundef 1) #17, !dbg !3992
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_pids) #15, !dbg !3993
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_css) #15, !dbg !3993
  call void @llvm.lifetime.end.p0(i64 8, ptr %pids) #15, !dbg !3993
  br label %for.inc, !dbg !3994

for.inc:                                          ; preds = %for.body
  %7 = load ptr, ptr %tset.addr, align 8, !dbg !3974
  %call4 = call ptr @cgroup_taskset_next(ptr noundef %7, ptr noundef %dst_css) #17, !dbg !3974
  store ptr %call4, ptr %task, align 8, !dbg !3974
  br label %for.cond, !dbg !3974, !llvm.loop !3995

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst_css) #15, !dbg !3999
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #15, !dbg !3999
  ret i32 0, !dbg !4000
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pids_cancel_attach(ptr noundef %tset) #0 align 16 !dbg !4001 {
entry:
  %tset.addr = alloca ptr, align 8
  %task = alloca ptr, align 8
  %dst_css = alloca ptr, align 8
  %pids = alloca ptr, align 8
  %old_css = alloca ptr, align 8
  %old_pids = alloca ptr, align 8
  store ptr %tset, ptr %tset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tset.addr, metadata !4003, metadata !DIExpression()), !dbg !4012
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #15, !dbg !4013
  call void @llvm.dbg.declare(metadata ptr %task, metadata !4004, metadata !DIExpression()), !dbg !4014
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst_css) #15, !dbg !4015
  call void @llvm.dbg.declare(metadata ptr %dst_css, metadata !4005, metadata !DIExpression()), !dbg !4016
  %0 = load ptr, ptr %tset.addr, align 8, !dbg !4017
  %call = call ptr @cgroup_taskset_first(ptr noundef %0, ptr noundef %dst_css) #17, !dbg !4017
  store ptr %call, ptr %task, align 8, !dbg !4017
  br label %for.cond, !dbg !4017

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %task, align 8, !dbg !4018
  %tobool = icmp ne ptr %1, null, !dbg !4017
  br i1 %tobool, label %for.body, label %for.end, !dbg !4017

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pids) #15, !dbg !4019
  call void @llvm.dbg.declare(metadata ptr %pids, metadata !4006, metadata !DIExpression()), !dbg !4020
  %2 = load ptr, ptr %dst_css, align 8, !dbg !4021
  %call1 = call ptr @css_pids(ptr noundef %2) #17, !dbg !4022
  store ptr %call1, ptr %pids, align 8, !dbg !4020
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_css) #15, !dbg !4023
  call void @llvm.dbg.declare(metadata ptr %old_css, metadata !4010, metadata !DIExpression()), !dbg !4024
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_pids) #15, !dbg !4025
  call void @llvm.dbg.declare(metadata ptr %old_pids, metadata !4011, metadata !DIExpression()), !dbg !4026
  %3 = load ptr, ptr %task, align 8, !dbg !4027
  %call2 = call ptr @task_css(ptr noundef %3, i32 noundef 10) #17, !dbg !4028
  store ptr %call2, ptr %old_css, align 8, !dbg !4029
  %4 = load ptr, ptr %old_css, align 8, !dbg !4030
  %call3 = call ptr @css_pids(ptr noundef %4) #17, !dbg !4031
  store ptr %call3, ptr %old_pids, align 8, !dbg !4032
  %5 = load ptr, ptr %old_pids, align 8, !dbg !4033
  call void @pids_charge(ptr noundef %5, i32 noundef 1) #17, !dbg !4034
  %6 = load ptr, ptr %pids, align 8, !dbg !4035
  call void @pids_uncharge(ptr noundef %6, i32 noundef 1) #17, !dbg !4036
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_pids) #15, !dbg !4037
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_css) #15, !dbg !4037
  call void @llvm.lifetime.end.p0(i64 8, ptr %pids) #15, !dbg !4037
  br label %for.inc, !dbg !4038

for.inc:                                          ; preds = %for.body
  %7 = load ptr, ptr %tset.addr, align 8, !dbg !4018
  %call4 = call ptr @cgroup_taskset_next(ptr noundef %7, ptr noundef %dst_css) #17, !dbg !4018
  store ptr %call4, ptr %task, align 8, !dbg !4018
  br label %for.cond, !dbg !4018, !llvm.loop !4039

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst_css) #15, !dbg !4041
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #15, !dbg !4041
  ret void, !dbg !4041
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pids_can_fork(ptr noundef %task, ptr noundef %cset) #0 align 16 !dbg !4042 {
entry:
  %task.addr = alloca ptr, align 8
  %cset.addr = alloca ptr, align 8
  %css = alloca ptr, align 8
  %pids = alloca ptr, align 8
  %err = alloca i32, align 4
  %__UNIQUE_ID_rcu266 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %tmp16 = alloca i32, align 4
  %tmp21 = alloca i32, align 4
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4044, metadata !DIExpression()), !dbg !4052
  store ptr %cset, ptr %cset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cset.addr, metadata !4045, metadata !DIExpression()), !dbg !4053
  call void @llvm.lifetime.start.p0(i64 8, ptr %css) #15, !dbg !4054
  call void @llvm.dbg.declare(metadata ptr %css, metadata !4046, metadata !DIExpression()), !dbg !4055
  call void @llvm.lifetime.start.p0(i64 8, ptr %pids) #15, !dbg !4056
  call void @llvm.dbg.declare(metadata ptr %pids, metadata !4047, metadata !DIExpression()), !dbg !4057
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !4058
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4048, metadata !DIExpression()), !dbg !4059
  %0 = load ptr, ptr %cset.addr, align 8, !dbg !4060
  %tobool = icmp ne ptr %0, null, !dbg !4060
  br i1 %tobool, label %if.then, label %if.else, !dbg !4061

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cset.addr, align 8, !dbg !4062
  %subsys = getelementptr inbounds %struct.css_set, ptr %1, i32 0, i32 0, !dbg !4063
  %arrayidx = getelementptr [14 x ptr], ptr %subsys, i64 0, i64 10, !dbg !4062
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !4062
  store ptr %2, ptr %css, align 8, !dbg !4064
  br label %if.end, !dbg !4065

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu266) #15, !dbg !4066
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu266, metadata !4049, metadata !DIExpression()), !dbg !4066
  br label %do.body, !dbg !4067

do.body:                                          ; preds = %if.else
  br label %do.cond, !dbg !4069

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4069

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #17, !dbg !4067
  %cgroups = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 143, !dbg !4067
  %3 = load volatile ptr, ptr %cgroups, align 8, !dbg !4067
  store ptr %3, ptr %tmp, align 8, !dbg !4069
  %4 = load ptr, ptr %tmp, align 8, !dbg !4067
  store ptr %4, ptr %__UNIQUE_ID_rcu266, align 8, !dbg !4066
  br label %do.body1, !dbg !4066

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !4071

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4071

do.end3:                                          ; preds = %do.cond2
  %5 = load ptr, ptr %__UNIQUE_ID_rcu266, align 8, !dbg !4066
  store ptr %5, ptr %tmp4, align 8, !dbg !4071
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu266) #15, !dbg !4073
  %6 = load ptr, ptr %tmp4, align 8, !dbg !4066
  %subsys5 = getelementptr inbounds %struct.css_set, ptr %6, i32 0, i32 0, !dbg !4073
  %arrayidx6 = getelementptr [14 x ptr], ptr %subsys5, i64 0, i64 10, !dbg !4073
  %7 = load ptr, ptr %arrayidx6, align 8, !dbg !4073
  store ptr %7, ptr %css, align 8, !dbg !4074
  br label %if.end

if.end:                                           ; preds = %do.end3, %if.then
  %8 = load ptr, ptr %css, align 8, !dbg !4075
  %call7 = call ptr @css_pids(ptr noundef %8) #17, !dbg !4076
  store ptr %call7, ptr %pids, align 8, !dbg !4077
  %9 = load ptr, ptr %pids, align 8, !dbg !4078
  %call8 = call i32 @pids_try_charge(ptr noundef %9, i32 noundef 1) #17, !dbg !4079
  store i32 %call8, ptr %err, align 4, !dbg !4080
  %10 = load i32, ptr %err, align 4, !dbg !4081
  %tobool9 = icmp ne i32 %10, 0, !dbg !4081
  br i1 %tobool9, label %if.then10, label %if.end24, !dbg !4083

if.then10:                                        ; preds = %if.end
  %11 = load ptr, ptr %pids, align 8, !dbg !4084
  %events_limit = getelementptr inbounds %struct.pids_cgroup, ptr %11, i32 0, i32 5, !dbg !4087
  %call11 = call i64 @atomic64_inc_return(ptr noundef %events_limit) #17, !dbg !4088
  %cmp = icmp eq i64 %call11, 1, !dbg !4089
  br i1 %cmp, label %if.then12, label %if.end23, !dbg !4090

if.then12:                                        ; preds = %if.then10
  br label %do.body13, !dbg !4091

do.body13:                                        ; preds = %if.then12
  br label %do.cond14, !dbg !4094

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4094

do.end15:                                         ; preds = %do.cond14
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #18, !dbg !4091
  store i32 %call17, ptr %tmp16, align 4, !dbg !4094
  %12 = load i32, ptr %tmp16, align 4, !dbg !4091
  %13 = load ptr, ptr %css, align 8, !dbg !4096
  %cgroup = getelementptr inbounds %struct.cgroup_subsys_state, ptr %13, i32 0, i32 0, !dbg !4097
  %14 = load ptr, ptr %cgroup, align 8, !dbg !4097
  call void @pr_cont_cgroup_path(ptr noundef %14) #17, !dbg !4098
  br label %do.body18, !dbg !4099

do.body18:                                        ; preds = %do.end15
  br label %do.cond19, !dbg !4101

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !4101

do.end20:                                         ; preds = %do.cond19
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #18, !dbg !4099
  store i32 %call22, ptr %tmp21, align 4, !dbg !4101
  %15 = load i32, ptr %tmp21, align 4, !dbg !4099
  br label %if.end23, !dbg !4103

if.end23:                                         ; preds = %do.end20, %if.then10
  %16 = load ptr, ptr %pids, align 8, !dbg !4104
  %events_file = getelementptr inbounds %struct.pids_cgroup, ptr %16, i32 0, i32 4, !dbg !4105
  call void @cgroup_file_notify(ptr noundef %events_file) #17, !dbg !4106
  br label %if.end24, !dbg !4107

if.end24:                                         ; preds = %if.end23, %if.end
  %17 = load i32, ptr %err, align 4, !dbg !4108
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !4109
  call void @llvm.lifetime.end.p0(i64 8, ptr %pids) #15, !dbg !4109
  call void @llvm.lifetime.end.p0(i64 8, ptr %css) #15, !dbg !4109
  ret i32 %17, !dbg !4110
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pids_cancel_fork(ptr noundef %task, ptr noundef %cset) #0 align 16 !dbg !4111 {
entry:
  %task.addr = alloca ptr, align 8
  %cset.addr = alloca ptr, align 8
  %css = alloca ptr, align 8
  %pids = alloca ptr, align 8
  %__UNIQUE_ID_rcu268 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4113, metadata !DIExpression()), !dbg !4120
  store ptr %cset, ptr %cset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cset.addr, metadata !4114, metadata !DIExpression()), !dbg !4121
  call void @llvm.lifetime.start.p0(i64 8, ptr %css) #15, !dbg !4122
  call void @llvm.dbg.declare(metadata ptr %css, metadata !4115, metadata !DIExpression()), !dbg !4123
  call void @llvm.lifetime.start.p0(i64 8, ptr %pids) #15, !dbg !4124
  call void @llvm.dbg.declare(metadata ptr %pids, metadata !4116, metadata !DIExpression()), !dbg !4125
  %0 = load ptr, ptr %cset.addr, align 8, !dbg !4126
  %tobool = icmp ne ptr %0, null, !dbg !4126
  br i1 %tobool, label %if.then, label %if.else, !dbg !4127

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cset.addr, align 8, !dbg !4128
  %subsys = getelementptr inbounds %struct.css_set, ptr %1, i32 0, i32 0, !dbg !4129
  %arrayidx = getelementptr [14 x ptr], ptr %subsys, i64 0, i64 10, !dbg !4128
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !4128
  store ptr %2, ptr %css, align 8, !dbg !4130
  br label %if.end, !dbg !4131

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu268) #15, !dbg !4132
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu268, metadata !4117, metadata !DIExpression()), !dbg !4132
  br label %do.body, !dbg !4133

do.body:                                          ; preds = %if.else
  br label %do.cond, !dbg !4135

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4135

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #17, !dbg !4133
  %cgroups = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 143, !dbg !4133
  %3 = load volatile ptr, ptr %cgroups, align 8, !dbg !4133
  store ptr %3, ptr %tmp, align 8, !dbg !4135
  %4 = load ptr, ptr %tmp, align 8, !dbg !4133
  store ptr %4, ptr %__UNIQUE_ID_rcu268, align 8, !dbg !4132
  br label %do.body1, !dbg !4132

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !4137

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4137

do.end3:                                          ; preds = %do.cond2
  %5 = load ptr, ptr %__UNIQUE_ID_rcu268, align 8, !dbg !4132
  store ptr %5, ptr %tmp4, align 8, !dbg !4137
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu268) #15, !dbg !4139
  %6 = load ptr, ptr %tmp4, align 8, !dbg !4132
  %subsys5 = getelementptr inbounds %struct.css_set, ptr %6, i32 0, i32 0, !dbg !4139
  %arrayidx6 = getelementptr [14 x ptr], ptr %subsys5, i64 0, i64 10, !dbg !4139
  %7 = load ptr, ptr %arrayidx6, align 8, !dbg !4139
  store ptr %7, ptr %css, align 8, !dbg !4140
  br label %if.end

if.end:                                           ; preds = %do.end3, %if.then
  %8 = load ptr, ptr %css, align 8, !dbg !4141
  %call7 = call ptr @css_pids(ptr noundef %8) #17, !dbg !4142
  store ptr %call7, ptr %pids, align 8, !dbg !4143
  %9 = load ptr, ptr %pids, align 8, !dbg !4144
  call void @pids_uncharge(ptr noundef %9, i32 noundef 1) #17, !dbg !4145
  call void @llvm.lifetime.end.p0(i64 8, ptr %pids) #15, !dbg !4146
  call void @llvm.lifetime.end.p0(i64 8, ptr %css) #15, !dbg !4146
  ret void, !dbg !4146
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pids_release(ptr noundef %task) #0 align 16 !dbg !4147 {
entry:
  %task.addr = alloca ptr, align 8
  %pids = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4149, metadata !DIExpression()), !dbg !4151
  call void @llvm.lifetime.start.p0(i64 8, ptr %pids) #15, !dbg !4152
  call void @llvm.dbg.declare(metadata ptr %pids, metadata !4150, metadata !DIExpression()), !dbg !4153
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4154
  %call = call ptr @task_css(ptr noundef %0, i32 noundef 10) #17, !dbg !4155
  %call1 = call ptr @css_pids(ptr noundef %call) #17, !dbg !4156
  store ptr %call1, ptr %pids, align 8, !dbg !4153
  %1 = load ptr, ptr %pids, align 8, !dbg !4157
  call void @pids_uncharge(ptr noundef %1, i32 noundef 1) #17, !dbg !4158
  call void @llvm.lifetime.end.p0(i64 8, ptr %pids) #15, !dbg !4159
  ret void, !dbg !4159
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !4160 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4164, metadata !DIExpression()), !dbg !4166
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4165, metadata !DIExpression()), !dbg !4167
  %0 = load i64, ptr %size.addr, align 8, !dbg !4168
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4169
  %or = or i32 %1, 256, !dbg !4170
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !4171
  ret ptr %call, !dbg !4172
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !4173 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4178, metadata !DIExpression()), !dbg !4179
  %0 = load i64, ptr %error.addr, align 8, !dbg !4180
  %1 = inttoptr i64 %0 to ptr, !dbg !4181
  ret ptr %1, !dbg !4182
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic64_set(ptr noundef %v, i64 noundef %i) #5 align 16 !dbg !4183 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4189, metadata !DIExpression()), !dbg !4191
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4190, metadata !DIExpression()), !dbg !4192
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4193
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #17, !dbg !4194
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4195
  %2 = load i64, ptr %i.addr, align 8, !dbg !4196
  call void @raw_atomic64_set(ptr noundef %1, i64 noundef %2) #17, !dbg !4197
  ret void, !dbg !4198
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !4199 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4201, metadata !DIExpression()), !dbg !4206
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4202, metadata !DIExpression()), !dbg !4207
  %0 = load i64, ptr %size.addr, align 8, !dbg !4208
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4209
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4210

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4211
  %tobool = icmp ne i64 %2, 0, !dbg !4211
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4212

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !4213
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4203, metadata !DIExpression()), !dbg !4214
  %3 = load i64, ptr %size.addr, align 8, !dbg !4215
  %cmp = icmp ugt i64 %3, 8192, !dbg !4217
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4218

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4219
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4220
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !4221
  store ptr %call, ptr %retval, align 8, !dbg !4222
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4222

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4223
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !4223
  store i32 %call2, ptr %index, align 4, !dbg !4224
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4225
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4226
  %9 = ptrtoint ptr %8 to i64, !dbg !4226
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !4227
  %idxprom = zext i32 %call3 to i64, !dbg !4228
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4228
  %10 = load i32, ptr %index, align 4, !dbg !4229
  %idxprom4 = zext i32 %10 to i64, !dbg !4228
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4228
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4228
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4230
  %13 = load i64, ptr %size.addr, align 8, !dbg !4231
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !4232
  store ptr %call6, ptr %retval, align 8, !dbg !4233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4233

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !4234
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4235
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4236
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !4237
  store ptr %call8, ptr %retval, align 8, !dbg !4238
  br label %return, !dbg !4238

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4239
  ret ptr %16, !dbg !4239
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4240 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !4241 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4245, metadata !DIExpression()), !dbg !4247
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4246, metadata !DIExpression()), !dbg !4248
  %0 = load i64, ptr %size.addr, align 8, !dbg !4249
  %tobool = icmp ne i64 %0, 0, !dbg !4249
  br i1 %tobool, label %if.end, label %if.then, !dbg !4251

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4252
  br label %return, !dbg !4252

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4253
  %cmp = icmp ule i64 %1, 8, !dbg !4255
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4256

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4257
  br label %return, !dbg !4257

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4258
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4260
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4261

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4262
  %cmp4 = icmp ule i64 %3, 96, !dbg !4263
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4264

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4265
  br label %return, !dbg !4265

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4266
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4268
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4269

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4270
  %cmp9 = icmp ule i64 %5, 192, !dbg !4271
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4272

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4273
  br label %return, !dbg !4273

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4274
  %cmp12 = icmp ule i64 %6, 8, !dbg !4276
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4277

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4278
  br label %return, !dbg !4278

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4279
  %cmp15 = icmp ule i64 %7, 16, !dbg !4281
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4282

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4283
  br label %return, !dbg !4283

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4284
  %cmp18 = icmp ule i64 %8, 32, !dbg !4286
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4287

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4288
  br label %return, !dbg !4288

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4289
  %cmp21 = icmp ule i64 %9, 64, !dbg !4291
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4292

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4293
  br label %return, !dbg !4293

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4294
  %cmp24 = icmp ule i64 %10, 128, !dbg !4296
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4297

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4298
  br label %return, !dbg !4298

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4299
  %cmp27 = icmp ule i64 %11, 256, !dbg !4301
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4302

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4303
  br label %return, !dbg !4303

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4304
  %cmp30 = icmp ule i64 %12, 512, !dbg !4306
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4307

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4308
  br label %return, !dbg !4308

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4309
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4311
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4312

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4313
  br label %return, !dbg !4313

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4314
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4316
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4317

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4318
  br label %return, !dbg !4318

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4319
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4321
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4322

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4323
  br label %return, !dbg !4323

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4324
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4326
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4327

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4328
  br label %return, !dbg !4328

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4329
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4331
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4332

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4333
  br label %return, !dbg !4333

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4334
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4336
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4337

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4338
  br label %return, !dbg !4338

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4339
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4341
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4342

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4343
  br label %return, !dbg !4343

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4344
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4346
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4347

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4348
  br label %return, !dbg !4348

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4349
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4351
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4352

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4353
  br label %return, !dbg !4353

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4354
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4356
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4357

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4358
  br label %return, !dbg !4358

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4359
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4361
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4362

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4363
  br label %return, !dbg !4363

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4364
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4366
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4367

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4368
  br label %return, !dbg !4368

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4369, !range !4371, !noundef !1055
  %tobool69 = trunc i8 %25 to i1, !dbg !4369
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4372

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4373

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #20, !dbg !4374, !srcloc !4377
  unreachable, !dbg !4374

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4378

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4379

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4380

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4382

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4380

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #15, !dbg !4384, !srcloc !4386
  br label %do.end75, !dbg !4384

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4380

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4387
  br label %return, !dbg !4387

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4388
  ret i32 %26, !dbg !4388
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4389 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !4395 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4399, metadata !DIExpression()), !dbg !4401
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4400, metadata !DIExpression()), !dbg !4402
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4403
  %and = and i32 %0, 17, !dbg !4403
  %cmp = icmp eq i32 %and, 0, !dbg !4403
  %lnot = xor i1 %cmp, true, !dbg !4403
  %lnot1 = xor i1 %lnot, true, !dbg !4403
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4403
  %conv = sext i32 %lnot.ext to i64, !dbg !4403
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4403
  %tobool = icmp ne i64 %expval, 0, !dbg !4403
  br i1 %tobool, label %if.then, label %if.end, !dbg !4405

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4406
  br label %return, !dbg !4406

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4407
  %and2 = and i32 %1, 1, !dbg !4409
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4409
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4410

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4411
  br label %return, !dbg !4411

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4412
  br label %return, !dbg !4412

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4414
  ret i32 %2, !dbg !4414
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4415 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4416 dso_local void @__compiletime_assert_245() #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !4417 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4425, metadata !DIExpression()), !dbg !4427
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4426, metadata !DIExpression()), !dbg !4428
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4429
  %1 = load i64, ptr %size.addr, align 8, !dbg !4430
  %conv = trunc i64 %1 to i32, !dbg !4430
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !4431
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4432
  %3 = load i64, ptr %size.addr, align 8, !dbg !4432
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !4432
  ret void, !dbg !4433
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #5 align 16 !dbg !4434 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4437, metadata !DIExpression()), !dbg !4439
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4438, metadata !DIExpression()), !dbg !4440
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4441
  %1 = load i64, ptr %i.addr, align 8, !dbg !4442
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #17, !dbg !4443
  ret void, !dbg !4444
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !4445 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4450, metadata !DIExpression()), !dbg !4452
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4451, metadata !DIExpression()), !dbg !4453
  ret i1 true, !dbg !4454
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !4455 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4460, metadata !DIExpression()), !dbg !4463
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4461, metadata !DIExpression()), !dbg !4464
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4462, metadata !DIExpression()), !dbg !4465
  ret void, !dbg !4466
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #5 align 16 !dbg !4467 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4470, metadata !DIExpression()), !dbg !4472
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4471, metadata !DIExpression()), !dbg !4473
  br label %do.body, !dbg !4474

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !4475
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4475
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !4475
  store volatile i64 %0, ptr %counter, align 8, !dbg !4475
  br label %do.end, !dbg !4475

do.end:                                           ; preds = %do.body
  ret void, !dbg !4477
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4478 dso_local void @kfree(ptr noundef) #12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @css_pids(ptr noundef %css) #0 align 16 !dbg !4481 {
entry:
  %css.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %css, ptr %css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %css.addr, metadata !4485, metadata !DIExpression()), !dbg !4488
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4489
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4486, metadata !DIExpression()), !dbg !4489
  %0 = load ptr, ptr %css.addr, align 8, !dbg !4489
  store ptr %0, ptr %__mptr, align 8, !dbg !4489
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4489
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4489
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4489
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4490
  %2 = load ptr, ptr %tmp, align 8, !dbg !4489
  ret ptr %2, !dbg !4491
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4492 dso_local ptr @cgroup_taskset_first(ptr noundef, ptr noundef) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_css(ptr noundef %task, i32 noundef %subsys_id) #4 align 16 !dbg !4496 {
entry:
  %task.addr = alloca ptr, align 8
  %subsys_id.addr = alloca i32, align 4
  %__UNIQUE_ID_rcu260 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4500, metadata !DIExpression()), !dbg !4504
  store i32 %subsys_id, ptr %subsys_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subsys_id.addr, metadata !4501, metadata !DIExpression()), !dbg !4505
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu260) #15, !dbg !4506
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu260, metadata !4502, metadata !DIExpression()), !dbg !4506
  br label %do.body, !dbg !4507

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4509

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4509

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4507
  %cgroups = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 143, !dbg !4507
  %1 = load volatile ptr, ptr %cgroups, align 8, !dbg !4507
  store ptr %1, ptr %tmp, align 8, !dbg !4509
  %2 = load ptr, ptr %tmp, align 8, !dbg !4507
  store ptr %2, ptr %__UNIQUE_ID_rcu260, align 8, !dbg !4506
  br label %do.body1, !dbg !4506

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !4511

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4511

do.end3:                                          ; preds = %do.cond2
  %3 = load ptr, ptr %__UNIQUE_ID_rcu260, align 8, !dbg !4506
  store ptr %3, ptr %tmp4, align 8, !dbg !4511
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu260) #15, !dbg !4513
  %4 = load ptr, ptr %tmp4, align 8, !dbg !4506
  %subsys = getelementptr inbounds %struct.css_set, ptr %4, i32 0, i32 0, !dbg !4513
  %5 = load i32, ptr %subsys_id.addr, align 4, !dbg !4513
  %idxprom = sext i32 %5 to i64, !dbg !4513
  %arrayidx = getelementptr [14 x ptr], ptr %subsys, i64 0, i64 %idxprom, !dbg !4513
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !4513
  ret ptr %6, !dbg !4514
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pids_charge(ptr noundef %pids, i32 noundef %num) #0 align 16 !dbg !4515 {
entry:
  %pids.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %new = alloca i64, align 8
  store ptr %pids, ptr %pids.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pids.addr, metadata !4519, metadata !DIExpression()), !dbg !4526
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !4520, metadata !DIExpression()), !dbg !4527
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !4528
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4521, metadata !DIExpression()), !dbg !4529
  %0 = load ptr, ptr %pids.addr, align 8, !dbg !4530
  store ptr %0, ptr %p, align 8, !dbg !4531
  br label %for.cond, !dbg !4532

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8, !dbg !4533
  %call = call ptr @parent_pids(ptr noundef %1) #17, !dbg !4534
  %tobool = icmp ne ptr %call, null, !dbg !4535
  br i1 %tobool, label %for.body, label %for.end, !dbg !4535

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #15, !dbg !4536
  call void @llvm.dbg.declare(metadata ptr %new, metadata !4522, metadata !DIExpression()), !dbg !4537
  %2 = load i32, ptr %num.addr, align 4, !dbg !4538
  %conv = sext i32 %2 to i64, !dbg !4538
  %3 = load ptr, ptr %p, align 8, !dbg !4539
  %counter = getelementptr inbounds %struct.pids_cgroup, ptr %3, i32 0, i32 1, !dbg !4540
  %call1 = call i64 @atomic64_add_return(i64 noundef %conv, ptr noundef %counter) #17, !dbg !4541
  store i64 %call1, ptr %new, align 8, !dbg !4537
  %4 = load ptr, ptr %p, align 8, !dbg !4542
  %5 = load i64, ptr %new, align 8, !dbg !4543
  call void @pids_update_watermark(ptr noundef %4, i64 noundef %5) #17, !dbg !4544
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #15, !dbg !4545
  br label %for.inc, !dbg !4546

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %p, align 8, !dbg !4547
  %call2 = call ptr @parent_pids(ptr noundef %6) #17, !dbg !4548
  store ptr %call2, ptr %p, align 8, !dbg !4549
  br label %for.cond, !dbg !4550, !llvm.loop !4551

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !4553
  ret void, !dbg !4553
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pids_uncharge(ptr noundef %pids, i32 noundef %num) #0 align 16 !dbg !4554 {
entry:
  %pids.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %pids, ptr %pids.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pids.addr, metadata !4556, metadata !DIExpression()), !dbg !4559
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !4557, metadata !DIExpression()), !dbg !4560
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !4561
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4558, metadata !DIExpression()), !dbg !4562
  %0 = load ptr, ptr %pids.addr, align 8, !dbg !4563
  store ptr %0, ptr %p, align 8, !dbg !4565
  br label %for.cond, !dbg !4566

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8, !dbg !4567
  %call = call ptr @parent_pids(ptr noundef %1) #17, !dbg !4569
  %tobool = icmp ne ptr %call, null, !dbg !4570
  br i1 %tobool, label %for.body, label %for.end, !dbg !4570

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p, align 8, !dbg !4571
  %3 = load i32, ptr %num.addr, align 4, !dbg !4572
  call void @pids_cancel(ptr noundef %2, i32 noundef %3) #17, !dbg !4573
  br label %for.inc, !dbg !4573

for.inc:                                          ; preds = %for.body
  %4 = load ptr, ptr %p, align 8, !dbg !4574
  %call1 = call ptr @parent_pids(ptr noundef %4) #17, !dbg !4575
  store ptr %call1, ptr %p, align 8, !dbg !4576
  br label %for.cond, !dbg !4577, !llvm.loop !4578

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !4580
  ret void, !dbg !4580
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4581 dso_local ptr @cgroup_taskset_next(ptr noundef, ptr noundef) #12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @parent_pids(ptr noundef %pids) #0 align 16 !dbg !4582 {
entry:
  %pids.addr = alloca ptr, align 8
  store ptr %pids, ptr %pids.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pids.addr, metadata !4586, metadata !DIExpression()), !dbg !4587
  %0 = load ptr, ptr %pids.addr, align 8, !dbg !4588
  %css = getelementptr inbounds %struct.pids_cgroup, ptr %0, i32 0, i32 0, !dbg !4589
  %parent = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 12, !dbg !4590
  %1 = load ptr, ptr %parent, align 8, !dbg !4590
  %call = call ptr @css_pids(ptr noundef %1) #17, !dbg !4591
  ret ptr %call, !dbg !4592
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic64_add_return(i64 noundef %i, ptr noundef %v) #5 align 16 !dbg !4593 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4597, metadata !DIExpression()), !dbg !4599
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4598, metadata !DIExpression()), !dbg !4600
  br label %do.body, !dbg !4601

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4602

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4604
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #17, !dbg !4605
  %1 = load i64, ptr %i.addr, align 8, !dbg !4606
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4607
  %call = call i64 @raw_atomic64_add_return(i64 noundef %1, ptr noundef %2) #17, !dbg !4608
  ret i64 %call, !dbg !4609
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pids_update_watermark(ptr noundef %p, i64 noundef %nr_pids) #0 align 16 !dbg !4610 {
entry:
  %p.addr = alloca ptr, align 8
  %nr_pids.addr = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4614, metadata !DIExpression()), !dbg !4616
  store i64 %nr_pids, ptr %nr_pids.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_pids.addr, metadata !4615, metadata !DIExpression()), !dbg !4617
  %0 = load i64, ptr %nr_pids.addr, align 8, !dbg !4618
  br label %do.body, !dbg !4620

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4622

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %p.addr, align 8, !dbg !4620
  %watermark = getelementptr inbounds %struct.pids_cgroup, ptr %1, i32 0, i32 3, !dbg !4620
  %2 = load volatile i64, ptr %watermark, align 8, !dbg !4620
  store i64 %2, ptr %tmp, align 8, !dbg !4622
  %3 = load i64, ptr %tmp, align 8, !dbg !4620
  %cmp = icmp sgt i64 %0, %3, !dbg !4624
  br i1 %cmp, label %if.then, label %if.end, !dbg !4625

if.then:                                          ; preds = %do.end
  br label %do.body1, !dbg !4626

do.body1:                                         ; preds = %if.then
  br label %do.body2, !dbg !4627

do.body2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4629

do.end3:                                          ; preds = %do.body2
  br label %do.body4, !dbg !4627

do.body4:                                         ; preds = %do.end3
  %4 = load i64, ptr %nr_pids.addr, align 8, !dbg !4631
  %5 = load ptr, ptr %p.addr, align 8, !dbg !4631
  %watermark5 = getelementptr inbounds %struct.pids_cgroup, ptr %5, i32 0, i32 3, !dbg !4631
  store volatile i64 %4, ptr %watermark5, align 8, !dbg !4631
  br label %do.end6, !dbg !4631

do.end6:                                          ; preds = %do.body4
  br label %do.end7, !dbg !4627

do.end7:                                          ; preds = %do.end6
  br label %if.end, !dbg !4627

if.end:                                           ; preds = %do.end7, %do.end
  ret void, !dbg !4633
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !4634 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4636, metadata !DIExpression()), !dbg !4638
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4637, metadata !DIExpression()), !dbg !4639
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4640
  %1 = load i64, ptr %size.addr, align 8, !dbg !4641
  %conv = trunc i64 %1 to i32, !dbg !4641
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !4642
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4643
  %3 = load i64, ptr %size.addr, align 8, !dbg !4643
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !4643
  ret void, !dbg !4644
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_add_return(i64 noundef %i, ptr noundef %v) #5 align 16 !dbg !4645 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4647, metadata !DIExpression()), !dbg !4649
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4648, metadata !DIExpression()), !dbg !4650
  %0 = load i64, ptr %i.addr, align 8, !dbg !4651
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4652
  %call = call i64 @arch_atomic64_add_return(i64 noundef %0, ptr noundef %1) #17, !dbg !4653
  ret i64 %call, !dbg !4654
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_add_return(i64 noundef %i, ptr noundef %v) #5 align 16 !dbg !4655 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  %__ret = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4657, metadata !DIExpression()), !dbg !4661
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4658, metadata !DIExpression()), !dbg !4662
  %0 = load i64, ptr %i.addr, align 8, !dbg !4663
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #15, !dbg !4664
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4659, metadata !DIExpression()), !dbg !4664
  %1 = load i64, ptr %i.addr, align 8, !dbg !4664
  store i64 %1, ptr %__ret, align 8, !dbg !4664
  %2 = load i64, ptr %__ret, align 8, !dbg !4664
  %3 = load ptr, ptr %v.addr, align 8, !dbg !4664
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %3, i32 0, i32 0, !dbg !4664
  %4 = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %2, ptr elementtype(i64) %counter) #15, !dbg !4664, !srcloc !4665
  store i64 %4, ptr %__ret, align 8, !dbg !4664
  %5 = load i64, ptr %__ret, align 8, !dbg !4664
  store i64 %5, ptr %tmp, align 8, !dbg !4664
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #15, !dbg !4666
  %6 = load i64, ptr %tmp, align 8, !dbg !4664
  %add = add i64 %0, %6, !dbg !4667
  ret i64 %add, !dbg !4668
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pids_cancel(ptr noundef %pids, i32 noundef %num) #0 align 16 !dbg !4669 {
entry:
  %pids.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %pids, ptr %pids.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pids.addr, metadata !4671, metadata !DIExpression()), !dbg !4678
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !4672, metadata !DIExpression()), !dbg !4679
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4680
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4673, metadata !DIExpression()), !dbg !4680
  %0 = load i32, ptr %num.addr, align 4, !dbg !4680
  %sub = sub i32 0, %0, !dbg !4680
  %conv = sext i32 %sub to i64, !dbg !4680
  %1 = load ptr, ptr %pids.addr, align 8, !dbg !4680
  %counter = getelementptr inbounds %struct.pids_cgroup, ptr %1, i32 0, i32 1, !dbg !4680
  %call = call zeroext i1 @atomic64_add_negative(i64 noundef %conv, ptr noundef %counter) #17, !dbg !4680
  %lnot = xor i1 %call, true, !dbg !4680
  %lnot1 = xor i1 %lnot, true, !dbg !4680
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4680
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4680
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !4681
  %tobool = icmp ne i32 %2, 0, !dbg !4681
  %lnot2 = xor i1 %tobool, true, !dbg !4681
  %lnot4 = xor i1 %lnot2, true, !dbg !4681
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !4681
  %conv6 = sext i32 %lnot.ext5 to i64, !dbg !4681
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !4681
  %tobool7 = icmp ne i64 %expval, 0, !dbg !4681
  br i1 %tobool7, label %if.then, label %if.end, !dbg !4680

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4681

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !4682
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4675, metadata !DIExpression()), !dbg !4682
  store i32 2307, ptr %__flags, align 4, !dbg !4682
  br label %do.body8, !dbg !4682

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !4683

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !4683

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !4682

do.body9:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !4685
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 113, i32 %3, i64 12) #15, !dbg !4685, !srcloc !4687
  br label %do.cond10, !dbg !4685

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !4685

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !4682

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !4688

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4688

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !4681
  br label %do.cond15, !dbg !4682

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !4682

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !4682

if.end:                                           ; preds = %do.end16, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !4680
  %tobool17 = icmp ne i32 %4, 0, !dbg !4680
  %lnot18 = xor i1 %tobool17, true, !dbg !4680
  %lnot20 = xor i1 %lnot18, true, !dbg !4680
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !4680
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !4680
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !4680
  store i64 %expval23, ptr %tmp, align 8, !dbg !4681
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4690
  %5 = load i64, ptr %tmp, align 8, !dbg !4680
  ret void, !dbg !4691
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic64_add_negative(i64 noundef %i, ptr noundef %v) #5 align 16 !dbg !4692 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4696, metadata !DIExpression()), !dbg !4698
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4697, metadata !DIExpression()), !dbg !4699
  br label %do.body, !dbg !4700

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4701

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4703
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #17, !dbg !4704
  %1 = load i64, ptr %i.addr, align 8, !dbg !4705
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4706
  %call = call zeroext i1 @raw_atomic64_add_negative(i64 noundef %1, ptr noundef %2) #17, !dbg !4707
  ret i1 %call, !dbg !4708
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_add_negative(i64 noundef %i, ptr noundef %v) #5 align 16 !dbg !4709 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4711, metadata !DIExpression()), !dbg !4713
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4712, metadata !DIExpression()), !dbg !4714
  %0 = load i64, ptr %i.addr, align 8, !dbg !4715
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4716
  %call = call zeroext i1 @arch_atomic64_add_negative(i64 noundef %0, ptr noundef %1) #17, !dbg !4717
  ret i1 %call, !dbg !4718
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic64_add_negative(i64 noundef %i, ptr noundef %v) #5 align 16 !dbg !4719 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4721, metadata !DIExpression()), !dbg !4725
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4722, metadata !DIExpression()), !dbg !4726
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #15, !dbg !4727
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4723, metadata !DIExpression()), !dbg !4727
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4727
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !4727
  %1 = load i64, ptr %i.addr, align 8, !dbg !4727
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; addq $2, $0\0A\09/* output condition code s*/\0A", "=*m,={@ccs},er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter) #15, !dbg !4727, !srcloc !4728
  %3 = icmp ult i8 %2, 2, !dbg !4727
  call void @llvm.assume(i1 %3), !dbg !4727
  store i8 %2, ptr %c, align 1, !dbg !4727
  %4 = load i8, ptr %c, align 1, !dbg !4727, !range !4371, !noundef !1055
  %tobool = trunc i8 %4 to i1, !dbg !4727
  %frombool = zext i1 %tobool to i8, !dbg !4727
  store i8 %frombool, ptr %tmp, align 1, !dbg !4727
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #15, !dbg !4729
  %5 = load i8, ptr %tmp, align 1, !dbg !4727, !range !4371, !noundef !1055
  %tobool1 = trunc i8 %5 to i1, !dbg !4727
  ret i1 %tobool1, !dbg !4730
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !4731 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !4742
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4736, metadata !DIExpression()), !dbg !4742
  br label %do.body, !dbg !4742

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4743
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4738, metadata !DIExpression()), !dbg !4743
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4743
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4743
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4742
  br label %do.cond, !dbg !4743

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4743

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !4744
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4740, metadata !DIExpression()), !dbg !4744
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #21, !dbg !4744, !srcloc !4745
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4744
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4744
  %3 = inttoptr i64 %2 to ptr, !dbg !4744
  store ptr %3, ptr %tmp, align 8, !dbg !4744
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !4742
  %4 = load ptr, ptr %tmp, align 8, !dbg !4744
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4742
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4742
  store ptr %5, ptr %tmp1, align 8, !dbg !4742
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !4746
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4742
  ret ptr %6, !dbg !4747
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pids_try_charge(ptr noundef %pids, i32 noundef %num) #0 align 16 !dbg !4748 {
entry:
  %retval = alloca i32, align 4
  %pids.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %new = alloca i64, align 8
  %limit = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pids, ptr %pids.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pids.addr, metadata !4752, metadata !DIExpression()), !dbg !4762
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !4753, metadata !DIExpression()), !dbg !4763
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !4764
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4754, metadata !DIExpression()), !dbg !4765
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !4764
  call void @llvm.dbg.declare(metadata ptr %q, metadata !4755, metadata !DIExpression()), !dbg !4766
  %0 = load ptr, ptr %pids.addr, align 8, !dbg !4767
  store ptr %0, ptr %p, align 8, !dbg !4768
  br label %for.cond, !dbg !4769

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8, !dbg !4770
  %call = call ptr @parent_pids(ptr noundef %1) #17, !dbg !4771
  %tobool = icmp ne ptr %call, null, !dbg !4772
  br i1 %tobool, label %for.body, label %for.end, !dbg !4772

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #15, !dbg !4773
  call void @llvm.dbg.declare(metadata ptr %new, metadata !4756, metadata !DIExpression()), !dbg !4774
  %2 = load i32, ptr %num.addr, align 4, !dbg !4775
  %conv = sext i32 %2 to i64, !dbg !4775
  %3 = load ptr, ptr %p, align 8, !dbg !4776
  %counter = getelementptr inbounds %struct.pids_cgroup, ptr %3, i32 0, i32 1, !dbg !4777
  %call1 = call i64 @atomic64_add_return(i64 noundef %conv, ptr noundef %counter) #17, !dbg !4778
  store i64 %call1, ptr %new, align 8, !dbg !4774
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #15, !dbg !4779
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !4760, metadata !DIExpression()), !dbg !4780
  %4 = load ptr, ptr %p, align 8, !dbg !4781
  %limit2 = getelementptr inbounds %struct.pids_cgroup, ptr %4, i32 0, i32 2, !dbg !4782
  %call3 = call i64 @atomic64_read(ptr noundef %limit2) #17, !dbg !4783
  store i64 %call3, ptr %limit, align 8, !dbg !4780
  %5 = load i64, ptr %new, align 8, !dbg !4784
  %6 = load i64, ptr %limit, align 8, !dbg !4786
  %cmp = icmp sgt i64 %5, %6, !dbg !4787
  br i1 %cmp, label %if.then, label %if.end, !dbg !4788

if.then:                                          ; preds = %for.body
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4789

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %p, align 8, !dbg !4790
  %8 = load i64, ptr %new, align 8, !dbg !4791
  call void @pids_update_watermark(ptr noundef %7, i64 noundef %8) #17, !dbg !4792
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4793
  br label %cleanup, !dbg !4793

cleanup:                                          ; preds = %if.then, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #15, !dbg !4793
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #15, !dbg !4793
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
    i32 5, label %revert
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4794

for.inc:                                          ; preds = %cleanup.cont
  %9 = load ptr, ptr %p, align 8, !dbg !4795
  %call6 = call ptr @parent_pids(ptr noundef %9) #17, !dbg !4796
  store ptr %call6, ptr %p, align 8, !dbg !4797
  br label %for.cond, !dbg !4798, !llvm.loop !4799

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4801
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup14, !dbg !4801

revert:                                           ; preds = %cleanup
  call void @llvm.dbg.label(metadata !4761), !dbg !4802
  %10 = load ptr, ptr %pids.addr, align 8, !dbg !4803
  store ptr %10, ptr %q, align 8, !dbg !4805
  br label %for.cond7, !dbg !4806

for.cond7:                                        ; preds = %for.inc11, %revert
  %11 = load ptr, ptr %q, align 8, !dbg !4807
  %12 = load ptr, ptr %p, align 8, !dbg !4809
  %cmp8 = icmp ne ptr %11, %12, !dbg !4810
  br i1 %cmp8, label %for.body10, label %for.end13, !dbg !4811

for.body10:                                       ; preds = %for.cond7
  %13 = load ptr, ptr %q, align 8, !dbg !4812
  %14 = load i32, ptr %num.addr, align 4, !dbg !4813
  call void @pids_cancel(ptr noundef %13, i32 noundef %14) #17, !dbg !4814
  br label %for.inc11, !dbg !4814

for.inc11:                                        ; preds = %for.body10
  %15 = load ptr, ptr %q, align 8, !dbg !4815
  %call12 = call ptr @parent_pids(ptr noundef %15) #17, !dbg !4816
  store ptr %call12, ptr %q, align 8, !dbg !4817
  br label %for.cond7, !dbg !4818, !llvm.loop !4819

for.end13:                                        ; preds = %for.cond7
  %16 = load ptr, ptr %p, align 8, !dbg !4821
  %17 = load i32, ptr %num.addr, align 4, !dbg !4822
  call void @pids_cancel(ptr noundef %16, i32 noundef %17) #17, !dbg !4823
  store i32 -11, ptr %retval, align 4, !dbg !4824
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup14, !dbg !4824

cleanup14:                                        ; preds = %for.end13, %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !4825
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !4825
  %18 = load i32, ptr %retval, align 4, !dbg !4825
  ret i32 %18, !dbg !4825
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic64_inc_return(ptr noundef %v) #5 align 16 !dbg !4826 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4830, metadata !DIExpression()), !dbg !4831
  br label %do.body, !dbg !4832

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4833

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4835
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #17, !dbg !4836
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4837
  %call = call i64 @raw_atomic64_inc_return(ptr noundef %1) #17, !dbg !4838
  ret i64 %call, !dbg !4839
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4840 dso_local i32 @_printk(ptr noundef, ...) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pr_cont_cgroup_path(ptr noundef %cgrp) #4 align 16 !dbg !4844 {
entry:
  %cgrp.addr = alloca ptr, align 8
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !4848, metadata !DIExpression()), !dbg !4849
  %0 = load ptr, ptr %cgrp.addr, align 8, !dbg !4850
  %kn = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 12, !dbg !4851
  %1 = load ptr, ptr %kn, align 8, !dbg !4851
  call void @pr_cont_kernfs_path(ptr noundef %1) #17, !dbg !4852
  ret void, !dbg !4853
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4854 dso_local void @cgroup_file_notify(ptr noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic64_read(ptr noundef %v) #5 align 16 !dbg !4858 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4864, metadata !DIExpression()), !dbg !4865
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4866
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #17, !dbg !4867
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4868
  %call = call i64 @raw_atomic64_read(ptr noundef %1) #17, !dbg !4869
  ret i64 %call, !dbg !4870
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !4871 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4873, metadata !DIExpression()), !dbg !4875
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4874, metadata !DIExpression()), !dbg !4876
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4877
  %1 = load i64, ptr %size.addr, align 8, !dbg !4878
  %conv = trunc i64 %1 to i32, !dbg !4878
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !4879
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4880
  %3 = load i64, ptr %size.addr, align 8, !dbg !4880
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !4880
  ret void, !dbg !4881
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #5 align 16 !dbg !4882 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4884, metadata !DIExpression()), !dbg !4885
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4886
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #17, !dbg !4887
  ret i64 %call, !dbg !4888
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !4889 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4891, metadata !DIExpression()), !dbg !4893
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4892, metadata !DIExpression()), !dbg !4894
  ret i1 true, !dbg !4895
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #5 align 16 !dbg !4896 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4898, metadata !DIExpression()), !dbg !4899
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4900
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !4900
  %1 = load volatile i64, ptr %counter, align 8, !dbg !4900
  ret i64 %1, !dbg !4901
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_inc_return(ptr noundef %v) #5 align 16 !dbg !4902 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4904, metadata !DIExpression()), !dbg !4905
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4906
  %call = call i64 @raw_atomic64_add_return(i64 noundef 1, ptr noundef %0) #17, !dbg !4907
  ret i64 %call, !dbg !4908
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4909 dso_local void @pr_cont_kernfs_path(ptr noundef) #12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pids_max_show(ptr noundef %sf, ptr noundef %v) #0 align 16 !dbg !4912 {
entry:
  %sf.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %css = alloca ptr, align 8
  %pids = alloca ptr, align 8
  %limit = alloca i64, align 8
  store ptr %sf, ptr %sf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sf.addr, metadata !4914, metadata !DIExpression()), !dbg !4919
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4915, metadata !DIExpression()), !dbg !4920
  call void @llvm.lifetime.start.p0(i64 8, ptr %css) #15, !dbg !4921
  call void @llvm.dbg.declare(metadata ptr %css, metadata !4916, metadata !DIExpression()), !dbg !4922
  %0 = load ptr, ptr %sf.addr, align 8, !dbg !4923
  %call = call ptr @seq_css(ptr noundef %0) #17, !dbg !4924
  store ptr %call, ptr %css, align 8, !dbg !4922
  call void @llvm.lifetime.start.p0(i64 8, ptr %pids) #15, !dbg !4925
  call void @llvm.dbg.declare(metadata ptr %pids, metadata !4917, metadata !DIExpression()), !dbg !4926
  %1 = load ptr, ptr %css, align 8, !dbg !4927
  %call1 = call ptr @css_pids(ptr noundef %1) #17, !dbg !4928
  store ptr %call1, ptr %pids, align 8, !dbg !4926
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #15, !dbg !4929
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !4918, metadata !DIExpression()), !dbg !4930
  %2 = load ptr, ptr %pids, align 8, !dbg !4931
  %limit2 = getelementptr inbounds %struct.pids_cgroup, ptr %2, i32 0, i32 2, !dbg !4932
  %call3 = call i64 @atomic64_read(ptr noundef %limit2) #17, !dbg !4933
  store i64 %call3, ptr %limit, align 8, !dbg !4930
  %3 = load i64, ptr %limit, align 8, !dbg !4934
  %cmp = icmp uge i64 %3, 4194305, !dbg !4936
  br i1 %cmp, label %if.then, label %if.else, !dbg !4937

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %sf.addr, align 8, !dbg !4938
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %4, ptr noundef @.str.4, ptr noundef @.str.5) #17, !dbg !4939
  br label %if.end, !dbg !4939

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %sf.addr, align 8, !dbg !4940
  %6 = load i64, ptr %limit, align 8, !dbg !4941
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef @.str.6, i64 noundef %6) #17, !dbg !4942
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #15, !dbg !4943
  call void @llvm.lifetime.end.p0(i64 8, ptr %pids) #15, !dbg !4943
  call void @llvm.lifetime.end.p0(i64 8, ptr %css) #15, !dbg !4943
  ret i32 0, !dbg !4944
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pids_max_write(ptr noundef %of, ptr noundef %buf, i64 noundef %nbytes, i64 noundef %off) #0 align 16 !dbg !4945 {
entry:
  %retval = alloca i64, align 8
  %of.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %nbytes.addr = alloca i64, align 8
  %off.addr = alloca i64, align 8
  %css = alloca ptr, align 8
  %pids = alloca ptr, align 8
  %limit = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %of, ptr %of.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %of.addr, metadata !4947, metadata !DIExpression()), !dbg !4956
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4948, metadata !DIExpression()), !dbg !4957
  store i64 %nbytes, ptr %nbytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbytes.addr, metadata !4949, metadata !DIExpression()), !dbg !4958
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !4950, metadata !DIExpression()), !dbg !4959
  call void @llvm.lifetime.start.p0(i64 8, ptr %css) #15, !dbg !4960
  call void @llvm.dbg.declare(metadata ptr %css, metadata !4951, metadata !DIExpression()), !dbg !4961
  %0 = load ptr, ptr %of.addr, align 8, !dbg !4962
  %call = call ptr @of_css(ptr noundef %0) #17, !dbg !4963
  store ptr %call, ptr %css, align 8, !dbg !4961
  call void @llvm.lifetime.start.p0(i64 8, ptr %pids) #15, !dbg !4964
  call void @llvm.dbg.declare(metadata ptr %pids, metadata !4952, metadata !DIExpression()), !dbg !4965
  %1 = load ptr, ptr %css, align 8, !dbg !4966
  %call1 = call ptr @css_pids(ptr noundef %1) #17, !dbg !4967
  store ptr %call1, ptr %pids, align 8, !dbg !4965
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #15, !dbg !4968
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !4953, metadata !DIExpression()), !dbg !4969
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !4970
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4954, metadata !DIExpression()), !dbg !4971
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !4972
  %call2 = call ptr @strstrip(ptr noundef %2) #17, !dbg !4973
  store ptr %call2, ptr %buf.addr, align 8, !dbg !4974
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !4975
  %call3 = call i32 @strcmp(ptr noundef %3, ptr noundef @.str.5) #17, !dbg !4977
  %tobool = icmp ne i32 %call3, 0, !dbg !4977
  br i1 %tobool, label %if.end, label %if.then, !dbg !4978

if.then:                                          ; preds = %entry
  store i64 4194305, ptr %limit, align 8, !dbg !4979
  br label %set_limit, !dbg !4981

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !4982
  %call4 = call i32 @kstrtoll(ptr noundef %4, i32 noundef 0, ptr noundef %limit) #17, !dbg !4983
  store i32 %call4, ptr %err, align 4, !dbg !4984
  %5 = load i32, ptr %err, align 4, !dbg !4985
  %tobool5 = icmp ne i32 %5, 0, !dbg !4985
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4987

if.then6:                                         ; preds = %if.end
  %6 = load i32, ptr %err, align 4, !dbg !4988
  %conv = sext i32 %6 to i64, !dbg !4988
  store i64 %conv, ptr %retval, align 8, !dbg !4989
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4989

if.end7:                                          ; preds = %if.end
  %7 = load i64, ptr %limit, align 8, !dbg !4990
  %cmp = icmp slt i64 %7, 0, !dbg !4992
  br i1 %cmp, label %if.then11, label %lor.lhs.false, !dbg !4993

lor.lhs.false:                                    ; preds = %if.end7
  %8 = load i64, ptr %limit, align 8, !dbg !4994
  %cmp9 = icmp uge i64 %8, 4194305, !dbg !4995
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !4996

if.then11:                                        ; preds = %lor.lhs.false, %if.end7
  store i64 -22, ptr %retval, align 8, !dbg !4997
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4997

if.end12:                                         ; preds = %lor.lhs.false
  br label %set_limit, !dbg !4998

set_limit:                                        ; preds = %if.end12, %if.then
  call void @llvm.dbg.label(metadata !4955), !dbg !4999
  %9 = load ptr, ptr %pids, align 8, !dbg !5000
  %limit13 = getelementptr inbounds %struct.pids_cgroup, ptr %9, i32 0, i32 2, !dbg !5001
  %10 = load i64, ptr %limit, align 8, !dbg !5002
  call void @atomic64_set(ptr noundef %limit13, i64 noundef %10) #17, !dbg !5003
  %11 = load i64, ptr %nbytes.addr, align 8, !dbg !5004
  store i64 %11, ptr %retval, align 8, !dbg !5005
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5005

cleanup:                                          ; preds = %set_limit, %if.then11, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5006
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #15, !dbg !5006
  call void @llvm.lifetime.end.p0(i64 8, ptr %pids) #15, !dbg !5006
  call void @llvm.lifetime.end.p0(i64 8, ptr %css) #15, !dbg !5006
  %12 = load i64, ptr %retval, align 8, !dbg !5006
  ret i64 %12, !dbg !5006
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pids_current_read(ptr noundef %css, ptr noundef %cft) #0 align 16 !dbg !5007 {
entry:
  %css.addr = alloca ptr, align 8
  %cft.addr = alloca ptr, align 8
  %pids = alloca ptr, align 8
  store ptr %css, ptr %css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %css.addr, metadata !5009, metadata !DIExpression()), !dbg !5012
  store ptr %cft, ptr %cft.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cft.addr, metadata !5010, metadata !DIExpression()), !dbg !5013
  call void @llvm.lifetime.start.p0(i64 8, ptr %pids) #15, !dbg !5014
  call void @llvm.dbg.declare(metadata ptr %pids, metadata !5011, metadata !DIExpression()), !dbg !5015
  %0 = load ptr, ptr %css.addr, align 8, !dbg !5016
  %call = call ptr @css_pids(ptr noundef %0) #17, !dbg !5017
  store ptr %call, ptr %pids, align 8, !dbg !5015
  %1 = load ptr, ptr %pids, align 8, !dbg !5018
  %counter = getelementptr inbounds %struct.pids_cgroup, ptr %1, i32 0, i32 1, !dbg !5019
  %call1 = call i64 @atomic64_read(ptr noundef %counter) #17, !dbg !5020
  call void @llvm.lifetime.end.p0(i64 8, ptr %pids) #15, !dbg !5021
  ret i64 %call1, !dbg !5022
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pids_peak_read(ptr noundef %css, ptr noundef %cft) #0 align 16 !dbg !5023 {
entry:
  %css.addr = alloca ptr, align 8
  %cft.addr = alloca ptr, align 8
  %pids = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %css, ptr %css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %css.addr, metadata !5025, metadata !DIExpression()), !dbg !5028
  store ptr %cft, ptr %cft.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cft.addr, metadata !5026, metadata !DIExpression()), !dbg !5029
  call void @llvm.lifetime.start.p0(i64 8, ptr %pids) #15, !dbg !5030
  call void @llvm.dbg.declare(metadata ptr %pids, metadata !5027, metadata !DIExpression()), !dbg !5031
  %0 = load ptr, ptr %css.addr, align 8, !dbg !5032
  %call = call ptr @css_pids(ptr noundef %0) #17, !dbg !5033
  store ptr %call, ptr %pids, align 8, !dbg !5031
  br label %do.body, !dbg !5034

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5036

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5036

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %pids, align 8, !dbg !5034
  %watermark = getelementptr inbounds %struct.pids_cgroup, ptr %1, i32 0, i32 3, !dbg !5034
  %2 = load volatile i64, ptr %watermark, align 8, !dbg !5034
  store i64 %2, ptr %tmp, align 8, !dbg !5036
  %3 = load i64, ptr %tmp, align 8, !dbg !5034
  call void @llvm.lifetime.end.p0(i64 8, ptr %pids) #15, !dbg !5038
  ret i64 %3, !dbg !5039
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pids_events_show(ptr noundef %sf, ptr noundef %v) #0 align 16 !dbg !5040 {
entry:
  %sf.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %pids = alloca ptr, align 8
  store ptr %sf, ptr %sf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sf.addr, metadata !5042, metadata !DIExpression()), !dbg !5045
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5043, metadata !DIExpression()), !dbg !5046
  call void @llvm.lifetime.start.p0(i64 8, ptr %pids) #15, !dbg !5047
  call void @llvm.dbg.declare(metadata ptr %pids, metadata !5044, metadata !DIExpression()), !dbg !5048
  %0 = load ptr, ptr %sf.addr, align 8, !dbg !5049
  %call = call ptr @seq_css(ptr noundef %0) #17, !dbg !5050
  %call1 = call ptr @css_pids(ptr noundef %call) #17, !dbg !5051
  store ptr %call1, ptr %pids, align 8, !dbg !5048
  %1 = load ptr, ptr %sf.addr, align 8, !dbg !5052
  %2 = load ptr, ptr %pids, align 8, !dbg !5053
  %events_limit = getelementptr inbounds %struct.pids_cgroup, ptr %2, i32 0, i32 5, !dbg !5054
  %call2 = call i64 @atomic64_read(ptr noundef %events_limit) #17, !dbg !5055
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef @.str.7, i64 noundef %call2) #17, !dbg !5056
  call void @llvm.lifetime.end.p0(i64 8, ptr %pids) #15, !dbg !5057
  ret i32 0, !dbg !5058
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @seq_css(ptr noundef %seq) #4 align 16 !dbg !5059 {
entry:
  %seq.addr = alloca ptr, align 8
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !5063, metadata !DIExpression()), !dbg !5064
  %0 = load ptr, ptr %seq.addr, align 8, !dbg !5065
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !5066
  %1 = load ptr, ptr %private, align 8, !dbg !5066
  %call = call ptr @of_css(ptr noundef %1) #17, !dbg !5067
  ret ptr %call, !dbg !5068
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5069 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5072 dso_local ptr @of_css(ptr noundef) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @strstrip(ptr noundef %str) #4 align 16 !dbg !5075 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5080, metadata !DIExpression()), !dbg !5081
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5082
  %call = call ptr @strim(ptr noundef %0) #17, !dbg !5083
  ret ptr %call, !dbg !5084
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5085 dso_local i32 @strcmp(ptr noundef, ptr noundef) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5088 dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5093 dso_local ptr @strim(ptr noundef) #12

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }
attributes #21 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920}
!llvm.ident = !{!3921}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pids_files", scope: !2, file: !3, line: 350, type: !3912, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/cgroup/.pids.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/cgroup/pids\22 -D KBUILD_BASENAME=\22pids\22 -D KBUILD_MODNAME=\22pids\22 -D __KBUILD_MODNAME=kmod_pids -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/cgroup/pids.ll kernel/cgroup/pids.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !179, globals: !3885, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/cgroup/pids.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "551f62cacedfba4979bac3024cee38ce")
!4 = !{!5, !14, !110, !115, !121, !126, !132, !139, !146, !151, !161}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !16, file: !15, line: 147, baseType: !7, size: 32, elements: !107)
!15 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !15, line: 135, size: 512, elements: !17)
!17 = !{!18, !22, !24, !26, !30, !31, !47, !105, !106}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !16, file: !15, line: 136, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !16, file: !15, line: 137, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !16, file: !15, line: 138, baseType: !25, size: 32, offset: 128)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !16, file: !15, line: 139, baseType: !27, size: 16, offset: 160)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !28, line: 24, baseType: !29)
!28 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!29 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !16, file: !15, line: 150, baseType: !14, size: 32, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !16, file: !15, line: 151, baseType: !32, size: 64, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !15, line: 64, baseType: !34)
!34 = !DISubroutineType(types: !35)
!35 = !{!25, !36, !25, !23, !37, !43}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 61, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !40, line: 72, baseType: !41)
!40 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !40, line: 16, baseType: !42)
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !28, line: 52, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !40, line: 88, baseType: !46)
!46 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !16, file: !15, line: 152, baseType: !48, size: 64, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !15, line: 117, size: 256, elements: !50)
!50 = !{!51, !56}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !49, file: !15, line: 118, baseType: !52, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !28, line: 174, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 172, size: 32, elements: !54)
!54 = !{!55}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !53, file: !28, line: 173, baseType: !25, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !49, file: !15, line: 119, baseType: !57, size: 192, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !58, line: 41, baseType: !59)
!58 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !58, line: 37, size: 192, elements: !60)
!60 = !{!61, !99}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !59, file: !58, line: 38, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !63, line: 29, baseType: !64)
!63 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !63, line: 17, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, scope: !64, file: !63, line: 18, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !64, file: !63, line: 18, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !67, file: !63, line: 19, baseType: !70, size: 32)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !71, line: 14, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !70, file: !71, line: 15, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !75, line: 44, baseType: !76)
!75 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !75, line: 14, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !75, line: 15, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !76, file: !75, line: 15, size: 32, elements: !80)
!80 = !{!81, !82, !92}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !79, file: !75, line: 16, baseType: !52, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !75, line: 24, baseType: !83, size: 16)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !75, line: 24, size: 16, elements: !84)
!84 = !{!85, !91}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !83, file: !75, line: 25, baseType: !86, size: 8)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !87, line: 17, baseType: !88)
!87 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !89, line: 21, baseType: !90)
!89 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!90 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !83, file: !75, line: 26, baseType: !86, size: 8, offset: 8)
!92 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !75, line: 28, baseType: !93, size: 32)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !75, line: 28, size: 32, elements: !94)
!94 = !{!95, !98}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !93, file: !75, line: 29, baseType: !96, size: 16)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !87, line: 19, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !89, line: 24, baseType: !29)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !93, file: !75, line: 30, baseType: !96, size: 16, offset: 16)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !59, file: !58, line: 39, baseType: !100, size: 128, offset: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !28, line: 190, size: 128, elements: !101)
!101 = !{!102, !104}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !28, line: 191, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !100, file: !28, line: 191, baseType: !103, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !16, file: !15, line: 153, baseType: !23, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !16, file: !15, line: 154, baseType: !23, size: 64, offset: 448)
!107 = !{!108, !109}
!108 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!109 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !111, line: 2052, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!112 = !{!113, !114}
!113 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!114 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !116, line: 54, baseType: !7, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!117 = !{!118, !119, !120}
!118 = !DIEnumerator(name: "USRQUOTA", value: 0)
!119 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!120 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !122, line: 65, baseType: !7, size: 32, elements: !123)
!122 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!123 = !{!124, !125}
!124 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!125 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !127, line: 16, baseType: !7, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!128 = !{!129, !130, !131}
!129 = !DIEnumerator(name: "TT_NONE", value: 0)
!130 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!131 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !133, line: 15, baseType: !7, size: 32, elements: !134)
!133 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!134 = !{!135, !136, !137, !138}
!135 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!136 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!137 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!138 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !140, line: 51, baseType: !7, size: 32, elements: !141)
!140 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!141 = !{!142, !143, !144, !145}
!142 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!143 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!144 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!145 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !147, line: 10, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!148 = !{!149, !150}
!149 = !DIEnumerator(name: "false", value: 0)
!150 = !DIEnumerator(name: "true", value: 1)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !152, line: 364, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!153 = !{!154, !155, !156, !157, !158, !159, !160}
!154 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!155 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!156 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!157 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!158 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!159 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!160 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cgroup_subsys_id", file: !162, line: 43, baseType: !7, size: 32, elements: !163)
!162 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178}
!164 = !DIEnumerator(name: "cpuset_cgrp_id", value: 0)
!165 = !DIEnumerator(name: "cpu_cgrp_id", value: 1)
!166 = !DIEnumerator(name: "cpuacct_cgrp_id", value: 2)
!167 = !DIEnumerator(name: "io_cgrp_id", value: 3)
!168 = !DIEnumerator(name: "devices_cgrp_id", value: 4)
!169 = !DIEnumerator(name: "freezer_cgrp_id", value: 5)
!170 = !DIEnumerator(name: "net_cls_cgrp_id", value: 6)
!171 = !DIEnumerator(name: "perf_event_cgrp_id", value: 7)
!172 = !DIEnumerator(name: "net_prio_cgrp_id", value: 8)
!173 = !DIEnumerator(name: "hugetlb_cgrp_id", value: 9)
!174 = !DIEnumerator(name: "pids_cgrp_id", value: 10)
!175 = !DIEnumerator(name: "rdma_cgrp_id", value: 11)
!176 = !DIEnumerator(name: "misc_cgrp_id", value: 12)
!177 = !DIEnumerator(name: "debug_cgrp_id", value: 13)
!178 = !DIEnumerator(name: "CGROUP_SUBSYS_COUNT", value: 14)
!179 = !{!180, !42, !23, !181, !185, !2078, !3876, !3879, !3882, !3884, !1462, !183}
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !28, line: 154, baseType: !7)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !87, line: 22, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !89, line: 30, baseType: !46)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pids_cgroup", file: !3, line: 41, size: 2304, elements: !187)
!187 = !{!188, !3870, !3871, !3872, !3874, !3875}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !186, file: !3, line: 42, baseType: !189, size: 1600)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !162, line: 152, size: 1600, elements: !190)
!190 = !{!191, !3724, !3834, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3869}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !189, file: !162, line: 154, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !162, line: 389, size: 7872, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !3640, !3646, !3647, !3651, !3652, !3653, !3654, !3655, !3656, !3673, !3674, !3675, !3676, !3677, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3711, !3714, !3715, !3722}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !193, file: !162, line: 391, baseType: !189, size: 1600)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !193, file: !162, line: 393, baseType: !42, size: 64, offset: 1600)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !193, file: !162, line: 401, baseType: !25, size: 32, offset: 1664)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !193, file: !162, line: 404, baseType: !25, size: 32, offset: 1696)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !193, file: !162, line: 417, baseType: !25, size: 32, offset: 1728)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !193, file: !162, line: 418, baseType: !25, size: 32, offset: 1760)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !193, file: !162, line: 419, baseType: !25, size: 32, offset: 1792)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !193, file: !162, line: 432, baseType: !25, size: 32, offset: 1824)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !193, file: !162, line: 433, baseType: !25, size: 32, offset: 1856)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !193, file: !162, line: 434, baseType: !25, size: 32, offset: 1888)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !193, file: !162, line: 436, baseType: !25, size: 32, offset: 1920)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !193, file: !162, line: 439, baseType: !7, size: 32, offset: 1952)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !193, file: !162, line: 441, baseType: !208, size: 64, offset: 1984)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !210, line: 190, size: 1152, elements: !211)
!210 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!211 = !{!212, !213, !214, !215, !216, !224, !227, !228, !3632, !3633, !3634, !3635, !3636, !3639}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !209, file: !210, line: 191, baseType: !52, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !209, file: !210, line: 192, baseType: !52, size: 32, offset: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !209, file: !210, line: 202, baseType: !208, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !210, line: 203, baseType: !19, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !209, file: !210, line: 205, baseType: !217, size: 192, align: 64, offset: 192)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !218, line: 5, size: 192, align: 64, elements: !219)
!218 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!219 = !{!220, !221, !223}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !217, file: !218, line: 6, baseType: !42, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !217, file: !218, line: 7, baseType: !222, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !217, file: !218, line: 8, baseType: !222, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !209, file: !210, line: 207, baseType: !225, size: 64, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !209, file: !210, line: 208, baseType: !7, size: 32, offset: 448)
!228 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !210, line: 209, baseType: !229, size: 256, offset: 512)
!229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !209, file: !210, line: 209, size: 256, elements: !230)
!230 = !{!231, !243, !247}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !229, file: !210, line: 210, baseType: !232, size: 256)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !210, line: 153, size: 256, elements: !233)
!233 = !{!234, !235, !239, !242}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !232, file: !210, line: 154, baseType: !42, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !232, file: !210, line: 156, baseType: !236, size: 64, offset: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !218, line: 12, size: 64, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !236, file: !218, line: 13, baseType: !222, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !232, file: !210, line: 162, baseType: !240, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !210, line: 162, flags: DIFlagFwdDecl)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !232, file: !210, line: 167, baseType: !42, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !229, file: !210, line: 211, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !210, line: 170, size: 64, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !244, file: !210, line: 171, baseType: !208, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !229, file: !210, line: 212, baseType: !248, size: 256)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !210, line: 174, size: 256, elements: !249)
!249 = !{!250, !3627, !3630, !3631}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !248, file: !210, line: 175, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !210, line: 271, size: 768, elements: !254)
!254 = !{!255, !3604, !3608, !3609, !3610, !3611, !3612, !3616, !3617, !3618, !3619, !3623}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !253, file: !210, line: 276, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!25, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !210, line: 251, size: 1216, elements: !261)
!261 = !{!262, !263, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !260, file: !210, line: 253, baseType: !208, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !260, file: !210, line: 254, baseType: !264, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !111, line: 994, size: 1856, align: 64, elements: !266)
!266 = !{!267, !286, !287, !289, !296, !309, !310, !311, !386, !748, !757, !3583, !3584, !3585, !3586, !3587, !3588, !3590, !3591, !3592}
!267 = !DIDerivedType(tag: DW_TAG_member, scope: !265, file: !111, line: 995, baseType: !268, size: 128)
!268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !265, file: !111, line: 995, size: 128, elements: !269)
!269 = !{!270, !276, !285}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !268, file: !111, line: 996, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !272, line: 60, size: 64, elements: !273)
!272 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !272, line: 61, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !268, file: !111, line: 997, baseType: !277, size: 128, align: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !28, line: 232, size: 128, align: 64, elements: !278)
!278 = !{!279, !281}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !277, file: !28, line: 233, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !277, file: !28, line: 234, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !280}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !268, file: !111, line: 998, baseType: !7, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !265, file: !111, line: 1005, baseType: !62, size: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !265, file: !111, line: 1006, baseType: !288, size: 32, offset: 160)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !28, line: 156, baseType: !7)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !265, file: !111, line: 1007, baseType: !290, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !291, line: 13, baseType: !292)
!291 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !28, line: 181, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 179, size: 64, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !293, file: !28, line: 180, baseType: !183, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !265, file: !111, line: 1008, baseType: !297, size: 256, offset: 256)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !298, line: 66, size: 256, elements: !299)
!298 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!299 = !{!300, !301, !303, !308}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !297, file: !298, line: 67, baseType: !290, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !297, file: !298, line: 68, baseType: !302, size: 32, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !71, line: 23, baseType: !70)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !297, file: !298, line: 70, baseType: !304, size: 32, offset: 96)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !305, line: 15, size: 32, elements: !306)
!305 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !304, file: !305, line: 20, baseType: !52, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !297, file: !298, line: 72, baseType: !100, size: 128, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !265, file: !111, line: 1009, baseType: !44, size: 64, offset: 512)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !265, file: !111, line: 1010, baseType: !7, size: 32, offset: 576)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !265, file: !111, line: 1011, baseType: !312, size: 256, offset: 640)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !111, line: 948, size: 256, elements: !313)
!313 = !{!314, !337, !375, !376, !384, !385}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !312, file: !111, line: 949, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !316, line: 34, baseType: !317)
!316 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !316, line: 25, size: 64, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !317, file: !316, line: 26, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !321, line: 27, baseType: !322)
!321 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !321, line: 13, size: 64, elements: !323)
!323 = !{!324, !336}
!324 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !321, line: 14, baseType: !325, size: 32)
!325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !321, line: 14, size: 32, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !325, file: !321, line: 15, baseType: !52, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !321, line: 16, baseType: !329, size: 32)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !325, file: !321, line: 16, size: 32, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !329, file: !321, line: 18, baseType: !86, size: 8)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !329, file: !321, line: 19, baseType: !333, size: 24, offset: 8)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 24, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 3)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !322, file: !321, line: 26, baseType: !74, size: 32, offset: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !312, file: !111, line: 950, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !340)
!340 = !{!341, !347, !348, !349, !362, !363, !364, !365}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !339, file: !6, line: 61, baseType: !342, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !343, line: 113, baseType: !344)
!343 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !343, line: 111, size: 32, elements: !345)
!345 = !{!346}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !344, file: !343, line: 112, baseType: !52, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !339, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !339, file: !6, line: 63, baseType: !62, size: 32, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !339, file: !6, line: 65, baseType: !350, size: 256, offset: 128)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 256, elements: !360)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !28, line: 194, size: 64, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !351, file: !28, line: 195, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !28, line: 198, size: 128, elements: !356)
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !355, file: !28, line: 199, baseType: !354, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !355, file: !28, line: 199, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!360 = !{!361}
!361 = !DISubrange(count: 4)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !339, file: !6, line: 66, baseType: !351, size: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !339, file: !6, line: 68, baseType: !57, size: 192, offset: 448)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !339, file: !6, line: 69, baseType: !277, size: 128, align: 64, offset: 640)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !339, file: !6, line: 70, baseType: !366, offset: 768)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, elements: !373)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !368)
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !367, file: !6, line: 55, baseType: !25, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !367, file: !6, line: 56, baseType: !371, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!373 = !{!374}
!374 = !DISubrange(count: -1)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !312, file: !111, line: 951, baseType: !5, size: 32, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !312, file: !111, line: 952, baseType: !377, size: 32, offset: 160)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !378, line: 23, baseType: !379)
!378 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 21, size: 32, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !379, file: !378, line: 22, baseType: !382, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !28, line: 37, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !40, line: 49, baseType: !7)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !312, file: !111, line: 952, baseType: !377, size: 32, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !312, file: !111, line: 953, baseType: !25, size: 32, offset: 224)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !265, file: !111, line: 1012, baseType: !387, size: 64, offset: 896)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !390, line: 110, size: 1472, elements: !391)
!390 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!391 = !{!392, !393, !394, !401, !402, !403, !404, !405, !406, !407, !408, !417, !418, !419, !420, !421, !422, !548, !549, !550, !551, !552, !583, !734, !735, !743}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !389, file: !390, line: 111, baseType: !290, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !389, file: !390, line: 112, baseType: !377, size: 32, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !389, file: !390, line: 113, baseType: !395, size: 32, offset: 96)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !378, line: 28, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 26, size: 32, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !396, file: !378, line: 27, baseType: !399, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !28, line: 38, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !40, line: 50, baseType: !7)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !389, file: !390, line: 114, baseType: !377, size: 32, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !389, file: !390, line: 115, baseType: !395, size: 32, offset: 160)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !389, file: !390, line: 116, baseType: !377, size: 32, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !389, file: !390, line: 117, baseType: !395, size: 32, offset: 224)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !389, file: !390, line: 118, baseType: !377, size: 32, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !389, file: !390, line: 119, baseType: !395, size: 32, offset: 288)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !389, file: !390, line: 120, baseType: !7, size: 32, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !389, file: !390, line: 121, baseType: !409, size: 64, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !410, line: 24, baseType: !411)
!410 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !410, line: 24, size: 64, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !411, file: !410, line: 24, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !87, line: 23, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !89, line: 31, baseType: !416)
!416 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !389, file: !390, line: 122, baseType: !409, size: 64, offset: 448)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !389, file: !390, line: 123, baseType: !409, size: 64, offset: 512)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !389, file: !390, line: 124, baseType: !409, size: 64, offset: 576)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !389, file: !390, line: 125, baseType: !409, size: 64, offset: 640)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !389, file: !390, line: 127, baseType: !90, size: 8, offset: 704)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !389, file: !390, line: 129, baseType: !423, size: 64, offset: 768)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !425, line: 195, size: 1728, elements: !426)
!425 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!426 = !{!427, !428, !433, !438, !447, !450, !451, !458, !459, !460, !461, !466, !467, !468, !470, !471, !512, !533}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !424, file: !425, line: 196, baseType: !342, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !424, file: !425, line: 197, baseType: !429, size: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !425, line: 28, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !28, line: 104, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !87, line: 20, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !89, line: 26, baseType: !25)
!433 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !425, line: 198, baseType: !434, size: 192, offset: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !425, line: 198, size: 192, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !434, file: !425, line: 199, baseType: !100, size: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !434, file: !425, line: 200, baseType: !217, size: 192, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !424, file: !425, line: 205, baseType: !439, size: 320, offset: 256)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !440, line: 48, size: 320, elements: !441)
!440 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!441 = !{!442, !443, !444, !445, !446}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !439, file: !440, line: 49, baseType: !290, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !439, file: !440, line: 55, baseType: !290, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !439, file: !440, line: 57, baseType: !304, size: 32, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !439, file: !440, line: 59, baseType: !302, size: 32, offset: 160)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !439, file: !440, line: 60, baseType: !100, size: 128, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !424, file: !425, line: 206, baseType: !448, size: 64, offset: 576)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !425, line: 206, flags: DIFlagFwdDecl)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !424, file: !425, line: 207, baseType: !23, size: 64, offset: 640)
!451 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !425, line: 208, baseType: !452, size: 64, offset: 704)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !425, line: 208, size: 64, elements: !453)
!453 = !{!454, !457}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !452, file: !425, line: 209, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !456, line: 8, baseType: !184)
!456 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!457 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !452, file: !425, line: 210, baseType: !455, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !424, file: !425, line: 212, baseType: !455, size: 64, offset: 768)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !424, file: !425, line: 213, baseType: !377, size: 32, offset: 832)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !424, file: !425, line: 214, baseType: !395, size: 32, offset: 864)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !424, file: !425, line: 215, baseType: !462, size: 32, offset: 896)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !425, line: 31, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !28, line: 110, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !87, line: 21, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !89, line: 27, baseType: !7)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !424, file: !425, line: 216, baseType: !29, size: 16, offset: 928)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !424, file: !425, line: 217, baseType: !29, size: 16, offset: 944)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !424, file: !425, line: 221, baseType: !469, size: 16, offset: 960)
!469 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !424, file: !425, line: 228, baseType: !42, size: 64, offset: 1024)
!471 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !425, line: 245, baseType: !472, size: 320, offset: 1088)
!472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !425, line: 245, size: 320, elements: !473)
!473 = !{!474, !503}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !472, file: !425, line: 246, baseType: !475, size: 320)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !425, line: 114, size: 320, elements: !476)
!476 = !{!477, !478, !490, !493, !502}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !475, file: !425, line: 116, baseType: !42, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !425, line: 117, baseType: !479, size: 64, offset: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !425, line: 117, size: 64, elements: !480)
!480 = !{!481, !489}
!481 = !DIDerivedType(tag: DW_TAG_member, scope: !479, file: !425, line: 118, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !479, file: !425, line: 118, size: 64, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !482, file: !425, line: 120, baseType: !96, size: 16)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !482, file: !425, line: 121, baseType: !486, size: 48, offset: 16)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 48, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 6)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !479, file: !425, line: 127, baseType: !42, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !475, file: !425, line: 129, baseType: !491, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !425, line: 102, flags: DIFlagFwdDecl)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !475, file: !425, line: 130, baseType: !494, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !425, line: 108, size: 192, elements: !496)
!496 = !{!497, !498, !499}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !495, file: !425, line: 109, baseType: !277, size: 128, align: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !495, file: !425, line: 110, baseType: !342, size: 32, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !495, file: !425, line: 111, baseType: !500, size: 8, offset: 160)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !28, line: 35, baseType: !501)
!501 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !475, file: !425, line: 131, baseType: !19, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !425, line: 247, baseType: !504, size: 320)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !472, file: !425, line: 247, size: 320, elements: !505)
!505 = !{!506, !507, !508, !509, !510}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !504, file: !425, line: 248, baseType: !42, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !504, file: !425, line: 249, baseType: !42, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !504, file: !425, line: 250, baseType: !491, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !504, file: !425, line: 251, baseType: !494, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !504, file: !425, line: 252, baseType: !511, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !425, line: 260, baseType: !513, size: 256, offset: 1408)
!513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !425, line: 260, size: 256, elements: !514)
!514 = !{!515, !521}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !513, file: !425, line: 261, baseType: !516, size: 256)
!516 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !425, line: 134, size: 256, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !516, file: !425, line: 135, baseType: !23, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !516, file: !425, line: 136, baseType: !520, size: 256)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !360)
!521 = !DIDerivedType(tag: DW_TAG_member, scope: !513, file: !425, line: 262, baseType: !522, size: 256)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !513, file: !425, line: 262, size: 256, elements: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !522, file: !425, line: 264, baseType: !100, size: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !522, file: !425, line: 265, baseType: !526, size: 128, offset: 128)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !527, line: 22, size: 128, elements: !528)
!527 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!528 = !{!529, !532}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !526, file: !527, line: 23, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !527, line: 23, flags: DIFlagFwdDecl)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !526, file: !527, line: 24, baseType: !42, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !424, file: !425, line: 280, baseType: !534, size: 64, offset: 1664)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !425, line: 176, size: 192, elements: !536)
!536 = !{!537, !546, !547}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !535, file: !425, line: 177, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !425, line: 171, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!25, !423, !542, !544, !423}
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !535, file: !425, line: 178, baseType: !423, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !535, file: !425, line: 179, baseType: !491, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !389, file: !390, line: 130, baseType: !423, size: 64, offset: 832)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !389, file: !390, line: 131, baseType: !423, size: 64, offset: 896)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !389, file: !390, line: 132, baseType: !423, size: 64, offset: 960)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !389, file: !390, line: 135, baseType: !23, size: 64, offset: 1024)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !389, file: !390, line: 137, baseType: !553, size: 64, offset: 1088)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !555, line: 14, size: 1088, elements: !556)
!555 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!556 = !{!557, !558, !567, !568, !569, !570, !571, !572}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !554, file: !555, line: 15, baseType: !342, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !554, file: !555, line: 17, baseType: !559, size: 320, offset: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !560, line: 22, size: 320, elements: !561)
!560 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!561 = !{!562, !563, !564, !565}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !559, file: !560, line: 23, baseType: !302, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !559, file: !560, line: 24, baseType: !183, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !559, file: !560, line: 26, baseType: !100, size: 128, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !559, file: !560, line: 28, baseType: !566, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !554, file: !555, line: 19, baseType: !42, size: 64, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !554, file: !555, line: 20, baseType: !290, size: 64, offset: 448)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !554, file: !555, line: 23, baseType: !355, size: 128, offset: 512)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !554, file: !555, line: 24, baseType: !377, size: 32, offset: 640)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !554, file: !555, line: 29, baseType: !290, size: 64, offset: 704)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !554, file: !555, line: 36, baseType: !573, size: 320, offset: 768)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !574, line: 15, size: 320, elements: !575)
!574 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!575 = !{!576, !577, !578, !579, !580, !581, !582}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !573, file: !574, line: 16, baseType: !302, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !573, file: !574, line: 18, baseType: !25, size: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !573, file: !574, line: 19, baseType: !25, size: 32, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !573, file: !574, line: 20, baseType: !25, size: 32, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !573, file: !574, line: 21, baseType: !25, size: 32, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !573, file: !574, line: 22, baseType: !42, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !573, file: !574, line: 23, baseType: !42, size: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !389, file: !390, line: 138, baseType: !584, size: 64, offset: 1152)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !586, line: 68, size: 4800, elements: !587)
!586 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!587 = !{!588, !610, !611, !612, !613, !614, !615, !616, !627, !628, !629, !630, !631, !632, !644, !714, !715, !729, !732}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !585, file: !586, line: 69, baseType: !589, size: 576)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !586, line: 23, size: 576, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !589, file: !586, line: 24, baseType: !464, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, scope: !589, file: !586, line: 25, baseType: !593, size: 512, offset: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !589, file: !586, line: 25, size: 512, elements: !594)
!594 = !{!595, !604}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !593, file: !586, line: 26, baseType: !596, size: 480)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, size: 480, elements: !602)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !586, line: 17, size: 96, elements: !598)
!598 = !{!599, !600, !601}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !597, file: !586, line: 18, baseType: !464, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !597, file: !586, line: 19, baseType: !464, size: 32, offset: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !597, file: !586, line: 20, baseType: !464, size: 32, offset: 64)
!602 = !{!603}
!603 = !DISubrange(count: 5)
!604 = !DIDerivedType(tag: DW_TAG_member, scope: !593, file: !586, line: 27, baseType: !605, size: 128)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !593, file: !586, line: 27, size: 128, elements: !606)
!606 = !{!607, !609}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !605, file: !586, line: 28, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !605, file: !586, line: 29, baseType: !608, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !585, file: !586, line: 70, baseType: !589, size: 576, offset: 576)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !585, file: !586, line: 71, baseType: !589, size: 576, offset: 1152)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !585, file: !586, line: 72, baseType: !584, size: 64, offset: 1728)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !585, file: !586, line: 73, baseType: !25, size: 32, offset: 1792)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !585, file: !586, line: 74, baseType: !377, size: 32, offset: 1824)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !585, file: !586, line: 75, baseType: !395, size: 32, offset: 1856)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !585, file: !586, line: 76, baseType: !617, size: 192, offset: 1920)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !618, line: 9, size: 192, elements: !619)
!618 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!619 = !{!620, !621, !625, !626}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !617, file: !618, line: 10, baseType: !290, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !617, file: !618, line: 11, baseType: !622, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !618, line: 7, flags: DIFlagFwdDecl)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !617, file: !618, line: 12, baseType: !7, size: 32, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !617, file: !618, line: 13, baseType: !342, size: 32, offset: 160)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !585, file: !586, line: 77, baseType: !42, size: 64, offset: 2112)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !585, file: !586, line: 80, baseType: !500, size: 8, offset: 2176)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !585, file: !586, line: 88, baseType: !100, size: 128, offset: 2240)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !585, file: !586, line: 89, baseType: !423, size: 64, offset: 2368)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !585, file: !586, line: 90, baseType: !439, size: 320, offset: 2432)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !585, file: !586, line: 97, baseType: !633, size: 256, offset: 2752)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !634, line: 98, size: 256, elements: !635)
!634 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!635 = !{!636, !637, !638}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !633, file: !634, line: 99, baseType: !290, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !633, file: !634, line: 100, baseType: !100, size: 128, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !633, file: !634, line: 101, baseType: !639, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !634, line: 21, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !585, file: !586, line: 99, baseType: !645, size: 768, offset: 3008)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !15, line: 199, size: 768, elements: !646)
!646 = !{!647, !652}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !645, file: !15, line: 200, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!25, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !645, file: !15, line: 201, baseType: !653, size: 704, offset: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !15, line: 193, size: 704, elements: !654)
!654 = !{!655, !713}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !653, file: !15, line: 195, baseType: !656, size: 640)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !15, line: 173, size: 640, elements: !657)
!657 = !{!658, !670, !682, !683, !703, !704, !706, !712}
!658 = !DIDerivedType(tag: DW_TAG_member, scope: !656, file: !15, line: 174, baseType: !659, size: 192)
!659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !656, file: !15, line: 174, size: 192, elements: !660)
!660 = !{!661, !669}
!661 = !DIDerivedType(tag: DW_TAG_member, scope: !659, file: !15, line: 175, baseType: !662, size: 192)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !659, file: !15, line: 175, size: 192, elements: !663)
!663 = !{!664, !665, !666, !667, !668}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !662, file: !15, line: 176, baseType: !36, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !662, file: !15, line: 177, baseType: !25, size: 32, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !662, file: !15, line: 178, baseType: !25, size: 32, offset: 96)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !662, file: !15, line: 179, baseType: !25, size: 32, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !662, file: !15, line: 180, baseType: !25, size: 32, offset: 160)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !659, file: !15, line: 182, baseType: !277, size: 128, align: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !656, file: !15, line: 184, baseType: !671, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !673, line: 26, size: 256, elements: !674)
!673 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !672, file: !673, line: 27, baseType: !7, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !672, file: !673, line: 28, baseType: !677, size: 192, offset: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !678, line: 43, size: 192, elements: !679)
!678 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!679 = !{!680, !681}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !677, file: !678, line: 44, baseType: !302, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !677, file: !678, line: 45, baseType: !100, size: 128, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !656, file: !15, line: 185, baseType: !36, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !656, file: !15, line: 186, baseType: !684, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !15, line: 204, size: 960, elements: !686)
!686 = !{!687, !688, !692, !699}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !685, file: !15, line: 205, baseType: !645, size: 768)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !685, file: !15, line: 206, baseType: !689, size: 64, offset: 768)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!651, !684}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !685, file: !15, line: 207, baseType: !693, size: 64, offset: 832)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !696, !697, !698}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !685, file: !15, line: 209, baseType: !700, size: 64, offset: 896)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!25, !696, !36}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !656, file: !15, line: 187, baseType: !651, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !656, file: !15, line: 188, baseType: !705, size: 64, offset: 448)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !656, file: !15, line: 189, baseType: !707, size: 64, offset: 512)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !15, line: 157, size: 256, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !708, file: !15, line: 158, baseType: !217, size: 192, align: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !708, file: !15, line: 159, baseType: !696, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !656, file: !15, line: 190, baseType: !351, size: 64, offset: 576)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !653, file: !15, line: 196, baseType: !236, size: 64, offset: 640)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !585, file: !586, line: 100, baseType: !696, size: 64, offset: 3776)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !585, file: !586, line: 102, baseType: !716, size: 64, offset: 3840)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !586, line: 107, size: 1152, elements: !718)
!718 = !{!719, !720, !721, !722, !723, !727}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !717, file: !586, line: 108, baseType: !355, size: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !717, file: !586, line: 109, baseType: !584, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !717, file: !586, line: 110, baseType: !377, size: 32, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !717, file: !586, line: 111, baseType: !52, size: 32, offset: 224)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !717, file: !586, line: 112, baseType: !724, size: 640, offset: 256)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 640, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: 10)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !717, file: !586, line: 113, baseType: !728, size: 256, offset: 896)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 256, elements: !360)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !585, file: !586, line: 103, baseType: !730, size: 640, offset: 3904)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 640, elements: !725)
!731 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !585, file: !586, line: 104, baseType: !733, size: 256, offset: 4544)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 256, elements: !360)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !389, file: !390, line: 139, baseType: !716, size: 64, offset: 1216)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !389, file: !390, line: 140, baseType: !736, size: 64, offset: 1280)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !390, line: 25, size: 64, elements: !738)
!738 = !{!739, !740, !741}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !737, file: !390, line: 26, baseType: !52, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !737, file: !390, line: 27, baseType: !25, size: 32, offset: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !737, file: !390, line: 28, baseType: !742, offset: 64)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, elements: !373)
!743 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !390, line: 142, baseType: !744, size: 128, offset: 1344)
!744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !390, line: 142, size: 128, elements: !745)
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !744, file: !390, line: 143, baseType: !25, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !744, file: !390, line: 144, baseType: !277, size: 128, align: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !265, file: !111, line: 1013, baseType: !749, size: 256, offset: 960)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !111, line: 970, size: 256, elements: !750)
!750 = !{!751, !752, !753, !754, !755, !756}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !749, file: !111, line: 971, baseType: !42, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !749, file: !111, line: 972, baseType: !7, size: 32, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !749, file: !111, line: 973, baseType: !7, size: 32, offset: 96)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !749, file: !111, line: 974, baseType: !7, size: 32, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !749, file: !111, line: 975, baseType: !7, size: 32, offset: 160)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !749, file: !111, line: 976, baseType: !44, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !265, file: !111, line: 1014, baseType: !758, size: 128, offset: 1216)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !759, line: 8, size: 128, elements: !760)
!759 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!760 = !{!761, !3582}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !758, file: !759, line: 9, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !764, line: 70, size: 256, elements: !765)
!764 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!765 = !{!766, !3579, !3580, !3581}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !763, file: !764, line: 71, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !769, line: 82, size: 1536, elements: !770)
!769 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!770 = !{!771, !772, !782, !790, !791, !806, !3546, !3548, !3561, !3562, !3563, !3564, !3565, !3571, !3572, !3573}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !768, file: !769, line: 84, baseType: !7, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !768, file: !769, line: 85, baseType: !773, size: 32, offset: 32)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !774, line: 275, baseType: !775)
!774 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !774, line: 275, size: 32, elements: !776)
!776 = !{!777}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !775, file: !774, line: 275, baseType: !778, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !774, line: 69, baseType: !779)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !774, line: 64, size: 32, elements: !780)
!780 = !{!781}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !779, file: !774, line: 65, baseType: !7, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !768, file: !769, line: 86, baseType: !783, size: 128, offset: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !784, line: 38, size: 128, elements: !785)
!784 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!785 = !{!786, !788}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !783, file: !784, line: 39, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !783, file: !784, line: 39, baseType: !789, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !768, file: !769, line: 87, baseType: !767, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !768, file: !769, line: 88, baseType: !792, size: 128, offset: 256)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !769, line: 49, size: 128, elements: !793)
!793 = !{!794, !803}
!794 = !DIDerivedType(tag: DW_TAG_member, scope: !792, file: !769, line: 50, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !792, file: !769, line: 50, size: 64, elements: !796)
!796 = !{!797, !802}
!797 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !769, line: 51, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !769, line: 51, size: 64, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !798, file: !769, line: 52, baseType: !464, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !798, file: !769, line: 52, baseType: !464, size: 32, offset: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !795, file: !769, line: 54, baseType: !414, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !792, file: !769, line: 56, baseType: !804, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !768, file: !769, line: 89, baseType: !807, size: 64, offset: 384)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !111, line: 641, size: 4800, elements: !809)
!809 = !{!810, !811, !812, !813, !814, !815, !816, !819, !820, !1013, !3305, !3306, !3307, !3308, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3528, !3531, !3532, !3533, !3542, !3543, !3544, !3545}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !808, file: !111, line: 642, baseType: !27, size: 16)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !808, file: !111, line: 643, baseType: !29, size: 16, offset: 16)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !808, file: !111, line: 644, baseType: !377, size: 32, offset: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !808, file: !111, line: 645, baseType: !100, size: 128, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !808, file: !111, line: 646, baseType: !395, size: 32, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !808, file: !111, line: 647, baseType: !7, size: 32, offset: 224)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !808, file: !111, line: 650, baseType: !817, size: 64, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !111, line: 607, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !808, file: !111, line: 651, baseType: !817, size: 64, offset: 320)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !808, file: !111, line: 654, baseType: !821, size: 64, offset: 384)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !823)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !111, line: 1966, size: 2048, align: 512, elements: !824)
!824 = !{!825, !829, !842, !848, !852, !856, !860, !864, !868, !872, !876, !877, !883, !887, !924, !955, !962, !968, !972, !976, !980, !984, !988, !994, !998}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !823, file: !111, line: 1967, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!767, !807, !767, !7}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !823, file: !111, line: 1968, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!19, !767, !807, !833}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !835, line: 10, size: 128, elements: !836)
!835 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!836 = !{!837, !841}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !834, file: !835, line: 11, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !23}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !834, file: !835, line: 12, baseType: !23, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !823, file: !111, line: 1969, baseType: !843, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!25, !846, !807, !25}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !410, line: 42, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !823, file: !111, line: 1970, baseType: !849, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!817, !807, !25, !500}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !823, file: !111, line: 1972, baseType: !853, size: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!25, !767, !511, !25}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !823, file: !111, line: 1974, baseType: !857, size: 64, offset: 320)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!25, !846, !807, !767, !27, !500}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !823, file: !111, line: 1976, baseType: !861, size: 64, offset: 384)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!25, !767, !807, !767}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !823, file: !111, line: 1977, baseType: !865, size: 64, offset: 448)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!25, !807, !767}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !823, file: !111, line: 1978, baseType: !869, size: 64, offset: 512)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!25, !846, !807, !767, !19}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !823, file: !111, line: 1980, baseType: !873, size: 64, offset: 576)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!25, !846, !807, !767, !27}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !823, file: !111, line: 1982, baseType: !865, size: 64, offset: 640)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !823, file: !111, line: 1983, baseType: !878, size: 64, offset: 704)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!25, !846, !807, !767, !27, !881}
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !28, line: 21, baseType: !882)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !28, line: 18, baseType: !464)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !823, file: !111, line: 1985, baseType: !884, size: 64, offset: 768)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!25, !846, !807, !767, !807, !767, !7}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !823, file: !111, line: 1987, baseType: !888, size: 64, offset: 832)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!25, !846, !767, !891}
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !111, line: 226, size: 640, elements: !893)
!893 = !{!894, !895, !896, !906, !915, !916, !921, !922, !923}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !892, file: !111, line: 227, baseType: !7, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !892, file: !111, line: 228, baseType: !27, size: 16, offset: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !111, line: 241, baseType: !897, size: 32, offset: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !111, line: 241, size: 32, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !897, file: !111, line: 242, baseType: !377, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !897, file: !111, line: 243, baseType: !901, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !902, line: 16, baseType: !903)
!902 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !902, line: 14, size: 32, elements: !904)
!904 = !{!905}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !903, file: !902, line: 15, baseType: !382, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !111, line: 245, baseType: !907, size: 32, offset: 96)
!907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !111, line: 245, size: 32, elements: !908)
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !907, file: !111, line: 246, baseType: !395, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !907, file: !111, line: 247, baseType: !911, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !902, line: 20, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !902, line: 18, size: 32, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !912, file: !902, line: 19, baseType: !399, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !892, file: !111, line: 249, baseType: !44, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !892, file: !111, line: 250, baseType: !917, size: 128, offset: 192)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !456, line: 13, size: 128, elements: !918)
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !917, file: !456, line: 14, baseType: !455, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !917, file: !456, line: 15, baseType: !731, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !892, file: !111, line: 251, baseType: !917, size: 128, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !892, file: !111, line: 252, baseType: !917, size: 128, offset: 448)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !892, file: !111, line: 259, baseType: !264, size: 64, offset: 576)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !823, file: !111, line: 1988, baseType: !925, size: 64, offset: 896)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!25, !846, !928, !930, !464, !7}
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !758)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !932, line: 22, size: 1280, elements: !933)
!932 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!933 = !{!934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !931, file: !932, line: 23, baseType: !464, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !931, file: !932, line: 24, baseType: !27, size: 16, offset: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !931, file: !932, line: 25, baseType: !7, size: 32, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !931, file: !932, line: 26, baseType: !463, size: 32, offset: 96)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !931, file: !932, line: 27, baseType: !414, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !931, file: !932, line: 28, baseType: !414, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !931, file: !932, line: 41, baseType: !414, size: 64, offset: 256)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !931, file: !932, line: 42, baseType: !881, size: 32, offset: 320)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !931, file: !932, line: 43, baseType: !881, size: 32, offset: 352)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !931, file: !932, line: 44, baseType: !377, size: 32, offset: 384)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !931, file: !932, line: 45, baseType: !395, size: 32, offset: 416)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !931, file: !932, line: 46, baseType: !44, size: 64, offset: 448)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !931, file: !932, line: 47, baseType: !917, size: 128, offset: 512)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !931, file: !932, line: 48, baseType: !917, size: 128, offset: 640)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !931, file: !932, line: 49, baseType: !917, size: 128, offset: 768)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !931, file: !932, line: 50, baseType: !917, size: 128, offset: 896)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !931, file: !932, line: 51, baseType: !414, size: 64, offset: 1024)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !931, file: !932, line: 52, baseType: !414, size: 64, offset: 1088)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !931, file: !932, line: 53, baseType: !464, size: 32, offset: 1152)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !931, file: !932, line: 54, baseType: !464, size: 32, offset: 1184)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !931, file: !932, line: 55, baseType: !414, size: 64, offset: 1216)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !823, file: !111, line: 1990, baseType: !956, size: 64, offset: 960)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!959, !767, !511, !38}
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !28, line: 66, baseType: !960)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !40, line: 73, baseType: !961)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !40, line: 15, baseType: !731)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !823, file: !111, line: 1991, baseType: !963, size: 64, offset: 1024)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!25, !807, !966, !414, !414}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !111, line: 55, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !823, file: !111, line: 1993, baseType: !969, size: 64, offset: 1088)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!25, !807, !25}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !823, file: !111, line: 1994, baseType: !973, size: 64, offset: 1152)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!25, !807, !767, !264, !7, !27}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !823, file: !111, line: 1997, baseType: !977, size: 64, offset: 1216)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!25, !846, !807, !264, !27}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !823, file: !111, line: 1999, baseType: !981, size: 64, offset: 1280)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!817, !846, !767, !25}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !823, file: !111, line: 2001, baseType: !985, size: 64, offset: 1344)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!25, !846, !767, !817, !25}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !823, file: !111, line: 2003, baseType: !989, size: 64, offset: 1408)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!25, !846, !767, !992}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !111, line: 76, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !823, file: !111, line: 2005, baseType: !995, size: 64, offset: 1472)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!25, !767, !992}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !823, file: !111, line: 2006, baseType: !999, size: 64, offset: 1536)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!1002, !807}
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !111, line: 3192, size: 192, elements: !1004)
!1004 = !{!1005, !1012}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1003, file: !111, line: 3193, baseType: !1006, size: 128)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1007, line: 296, size: 128, elements: !1008)
!1007 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1008 = !{!1009, !1010, !1011}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1006, file: !1007, line: 297, baseType: !62, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1006, file: !1007, line: 299, baseType: !180, size: 32, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1006, file: !1007, line: 300, baseType: !23, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1003, file: !111, line: 3194, baseType: !464, size: 32, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !808, file: !111, line: 655, baseType: !1014, size: 64, offset: 448)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !111, line: 1190, size: 10752, elements: !1016)
!1016 = !{!1017, !1018, !1019, !1020, !1021, !1022, !1064, !1237, !1277, !1360, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1377, !1381, !1382, !1385, !1388, !1391, !1394, !1395, !1396, !1437, !3179, !3180, !3181, !3182, !3183, !3184, !3187, !3188, !3195, !3196, !3197, !3198, !3257, !3272, !3273, !3274, !3275, !3276, !3279, !3280, !3281, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1015, file: !111, line: 1191, baseType: !100, size: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1015, file: !111, line: 1192, baseType: !881, size: 32, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1015, file: !111, line: 1193, baseType: !90, size: 8, offset: 160)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1015, file: !111, line: 1194, baseType: !42, size: 64, offset: 192)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1015, file: !111, line: 1195, baseType: !44, size: 64, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1015, file: !111, line: 1196, baseType: !1023, size: 64, offset: 320)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !111, line: 2366, size: 576, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1034, !1038, !1042, !1046, !1050, !1051, !1052, !1056, !1057, !1058, !1060, !1061, !1062, !1063}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1024, file: !111, line: 2367, baseType: !19, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1024, file: !111, line: 2368, baseType: !25, size: 32, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1024, file: !111, line: 2376, baseType: !1029, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!25, !1032}
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !764, line: 21, flags: DIFlagFwdDecl)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1024, file: !111, line: 2377, baseType: !1035, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1037)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !111, line: 75, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1024, file: !111, line: 2378, baseType: !1039, size: 64, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!767, !1023, !25, !19, !23}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1024, file: !111, line: 2380, baseType: !1043, size: 64, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !1014}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1024, file: !111, line: 2381, baseType: !1047, size: 64, offset: 384)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1049, line: 103, flags: DIFlagFwdDecl)
!1049 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1024, file: !111, line: 2382, baseType: !1023, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1024, file: !111, line: 2383, baseType: !351, size: 64, offset: 512)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1024, file: !111, line: 2385, baseType: !1053, offset: 576)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1054, line: 206, elements: !1055)
!1054 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1055 = !{}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1024, file: !111, line: 2386, baseType: !1053, offset: 576)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1024, file: !111, line: 2387, baseType: !1053, offset: 576)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1024, file: !111, line: 2388, baseType: !1059, offset: 576)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1053, elements: !334)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1024, file: !111, line: 2390, baseType: !1053, offset: 576)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1024, file: !111, line: 2391, baseType: !1053, offset: 576)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1024, file: !111, line: 2392, baseType: !1053, offset: 576)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1024, file: !111, line: 2393, baseType: !1053, offset: 576)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1015, file: !111, line: 1197, baseType: !1065, size: 64, offset: 384)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1067)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !111, line: 2057, size: 1664, elements: !1068)
!1068 = !{!1069, !1073, !1077, !1078, !1082, !1088, !1092, !1093, !1094, !1098, !1102, !1106, !1107, !1108, !1114, !1119, !1120, !1162, !1163, !1164, !1165, !1169, !1173, !1220, !1235, !1236}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1067, file: !111, line: 2058, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!807, !1014}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1067, file: !111, line: 2059, baseType: !1074, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !807}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1067, file: !111, line: 2060, baseType: !1074, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1067, file: !111, line: 2062, baseType: !1079, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{null, !807, !25}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1067, file: !111, line: 2063, baseType: !1083, size: 64, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!25, !807, !1086}
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !111, line: 309, flags: DIFlagFwdDecl)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1067, file: !111, line: 2064, baseType: !1089, size: 64, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!25, !807}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1067, file: !111, line: 2065, baseType: !1074, size: 64, offset: 384)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1067, file: !111, line: 2066, baseType: !1043, size: 64, offset: 448)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1067, file: !111, line: 2067, baseType: !1095, size: 64, offset: 512)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!25, !1014, !25}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1067, file: !111, line: 2068, baseType: !1099, size: 64, offset: 576)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!25, !1014, !110}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1067, file: !111, line: 2069, baseType: !1103, size: 64, offset: 640)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!25, !1014}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1067, file: !111, line: 2070, baseType: !1099, size: 64, offset: 704)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1067, file: !111, line: 2071, baseType: !1103, size: 64, offset: 768)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1067, file: !111, line: 2072, baseType: !1109, size: 64, offset: 832)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!25, !767, !1112}
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !111, line: 62, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1067, file: !111, line: 2073, baseType: !1115, size: 64, offset: 896)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!25, !1014, !1118, !511}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1067, file: !111, line: 2074, baseType: !1043, size: 64, offset: 960)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1067, file: !111, line: 2076, baseType: !1121, size: 64, offset: 1024)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!25, !1124, !767}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1126, line: 17, size: 960, elements: !1127)
!1126 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1127 = !{!1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1157, !1158, !1161}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1125, file: !1126, line: 18, baseType: !511, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1125, file: !1126, line: 19, baseType: !38, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1125, file: !1126, line: 20, baseType: !38, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1125, file: !1126, line: 21, baseType: !38, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1125, file: !1126, line: 22, baseType: !38, size: 64, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1125, file: !1126, line: 23, baseType: !44, size: 64, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1125, file: !1126, line: 24, baseType: !44, size: 64, offset: 384)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1125, file: !1126, line: 25, baseType: !297, size: 256, offset: 448)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1125, file: !1126, line: 26, baseType: !1137, size: 64, offset: 704)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1139)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1126, line: 32, size: 256, elements: !1140)
!1140 = !{!1141, !1145, !1149, !1153}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1139, file: !1126, line: 33, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!23, !1124, !43}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1139, file: !1126, line: 34, baseType: !1146, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !1124, !23}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1139, file: !1126, line: 35, baseType: !1150, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!23, !1124, !23, !43}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1139, file: !1126, line: 36, baseType: !1154, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!25, !1124, !23}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1125, file: !1126, line: 27, baseType: !25, size: 32, offset: 768)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1125, file: !1126, line: 28, baseType: !1159, size: 64, offset: 832)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1125, file: !1126, line: 29, baseType: !23, size: 64, offset: 896)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1067, file: !111, line: 2077, baseType: !1121, size: 64, offset: 1088)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1067, file: !111, line: 2078, baseType: !1121, size: 64, offset: 1152)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1067, file: !111, line: 2079, baseType: !1121, size: 64, offset: 1216)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1067, file: !111, line: 2081, baseType: !1166, size: 64, offset: 1280)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!959, !1014, !25, !511, !38, !44}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1067, file: !111, line: 2082, baseType: !1170, size: 64, offset: 1344)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!959, !1014, !25, !19, !38, !44}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1067, file: !111, line: 2083, baseType: !1174, size: 64, offset: 1408)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!1177, !807}
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !116, line: 296, size: 1664, elements: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1205, !1206, !1207}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1179, file: !116, line: 297, baseType: !355, size: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1179, file: !116, line: 298, baseType: !100, size: 128, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1179, file: !116, line: 299, baseType: !100, size: 128, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1179, file: !116, line: 300, baseType: !100, size: 128, offset: 384)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1179, file: !116, line: 301, baseType: !297, size: 256, offset: 512)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1179, file: !116, line: 302, baseType: !62, size: 32, offset: 768)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1179, file: !116, line: 303, baseType: !52, size: 32, offset: 800)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1179, file: !116, line: 304, baseType: !1014, size: 64, offset: 832)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1179, file: !116, line: 305, baseType: !1190, size: 64, offset: 896)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !116, line: 68, size: 64, elements: !1191)
!1191 = !{!1192, !1204}
!1192 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !116, line: 69, baseType: !1193, size: 32)
!1193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !116, line: 69, size: 32, elements: !1194)
!1194 = !{!1195, !1196, !1197}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1193, file: !116, line: 70, baseType: !377, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1193, file: !116, line: 71, baseType: !395, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1193, file: !116, line: 72, baseType: !1198, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1199, line: 24, baseType: !1200)
!1199 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1199, line: 22, size: 32, elements: !1201)
!1201 = !{!1202}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1200, file: !1199, line: 23, baseType: !1203, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1199, line: 20, baseType: !383)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1190, file: !116, line: 74, baseType: !115, size: 32, offset: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1179, file: !116, line: 306, baseType: !44, size: 64, offset: 960)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1179, file: !116, line: 307, baseType: !42, size: 64, offset: 1024)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1179, file: !116, line: 308, baseType: !1208, size: 576, offset: 1088)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !116, line: 205, size: 576, elements: !1209)
!1209 = !{!1210, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1208, file: !116, line: 206, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !116, line: 66, baseType: !46)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1208, file: !116, line: 207, baseType: !1211, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1208, file: !116, line: 208, baseType: !1211, size: 64, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1208, file: !116, line: 209, baseType: !1211, size: 64, offset: 192)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1208, file: !116, line: 210, baseType: !1211, size: 64, offset: 256)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1208, file: !116, line: 211, baseType: !1211, size: 64, offset: 320)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1208, file: !116, line: 212, baseType: !1211, size: 64, offset: 384)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1208, file: !116, line: 213, baseType: !455, size: 64, offset: 448)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1208, file: !116, line: 214, baseType: !455, size: 64, offset: 512)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1067, file: !111, line: 2085, baseType: !1221, size: 64, offset: 1472)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!731, !1014, !1224}
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1226, line: 15, size: 256, elements: !1227)
!1226 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1227 = !{!1228, !1229, !1230, !1231, !1232}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1225, file: !1226, line: 16, baseType: !180, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1225, file: !1226, line: 19, baseType: !25, size: 32, offset: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1225, file: !1226, line: 26, baseType: !42, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1225, file: !1226, line: 33, baseType: !42, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1225, file: !1226, line: 36, baseType: !1233, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1226, line: 36, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1067, file: !111, line: 2087, baseType: !1221, size: 64, offset: 1536)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1067, file: !111, line: 2089, baseType: !1043, size: 64, offset: 1600)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1015, file: !111, line: 1198, baseType: !1238, size: 64, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !116, line: 324, size: 704, elements: !1241)
!1241 = !{!1242, !1246, !1250, !1254, !1255, !1256, !1257, !1258, !1263, !1268, !1272}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1240, file: !116, line: 325, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!25, !1178}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1240, file: !116, line: 326, baseType: !1247, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!1178, !1014, !25}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1240, file: !116, line: 327, baseType: !1251, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{null, !1178}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1240, file: !116, line: 328, baseType: !1243, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1240, file: !116, line: 329, baseType: !1243, size: 64, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1240, file: !116, line: 330, baseType: !1243, size: 64, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1240, file: !116, line: 331, baseType: !1095, size: 64, offset: 384)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1240, file: !116, line: 334, baseType: !1259, size: 64, offset: 448)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!1262, !807}
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1240, file: !116, line: 335, baseType: !1264, size: 64, offset: 512)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!25, !807, !1267}
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1240, file: !116, line: 337, baseType: !1269, size: 64, offset: 576)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!25, !807, !1262}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1240, file: !116, line: 339, baseType: !1273, size: 64, offset: 640)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!25, !1014, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1015, file: !111, line: 1199, baseType: !1278, size: 64, offset: 512)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1280)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !116, line: 430, size: 704, elements: !1281)
!1281 = !{!1282, !1286, !1287, !1291, !1292, !1293, !1308, !1331, !1335, !1336, !1359}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1280, file: !116, line: 431, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!25, !1014, !25, !25, !928}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1280, file: !116, line: 432, baseType: !1095, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1280, file: !116, line: 433, baseType: !1288, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!25, !1014, !7}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1280, file: !116, line: 434, baseType: !1288, size: 64, offset: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1280, file: !116, line: 435, baseType: !1095, size: 64, offset: 256)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1280, file: !116, line: 436, baseType: !1294, size: 64, offset: 320)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!25, !1014, !25, !1297}
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !116, line: 417, size: 256, elements: !1299)
!1299 = !{!1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1298, file: !116, line: 418, baseType: !25, size: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1298, file: !116, line: 419, baseType: !7, size: 32, offset: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1298, file: !116, line: 420, baseType: !7, size: 32, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1298, file: !116, line: 422, baseType: !7, size: 32, offset: 96)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1298, file: !116, line: 423, baseType: !7, size: 32, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1298, file: !116, line: 424, baseType: !7, size: 32, offset: 160)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1298, file: !116, line: 425, baseType: !7, size: 32, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1298, file: !116, line: 426, baseType: !7, size: 32, offset: 224)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1280, file: !116, line: 437, baseType: !1309, size: 64, offset: 384)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!25, !1014, !1190, !1312}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !116, line: 345, size: 960, elements: !1314)
!1314 = !{!1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1313, file: !116, line: 346, baseType: !25, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1313, file: !116, line: 347, baseType: !414, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1313, file: !116, line: 348, baseType: !414, size: 64, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1313, file: !116, line: 349, baseType: !414, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1313, file: !116, line: 350, baseType: !414, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1313, file: !116, line: 351, baseType: !414, size: 64, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1313, file: !116, line: 352, baseType: !414, size: 64, offset: 384)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1313, file: !116, line: 353, baseType: !183, size: 64, offset: 448)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1313, file: !116, line: 355, baseType: !183, size: 64, offset: 512)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1313, file: !116, line: 356, baseType: !25, size: 32, offset: 576)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1313, file: !116, line: 357, baseType: !25, size: 32, offset: 608)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1313, file: !116, line: 358, baseType: !414, size: 64, offset: 640)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1313, file: !116, line: 359, baseType: !414, size: 64, offset: 704)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1313, file: !116, line: 360, baseType: !414, size: 64, offset: 768)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1313, file: !116, line: 361, baseType: !183, size: 64, offset: 832)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1313, file: !116, line: 362, baseType: !25, size: 32, offset: 896)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1280, file: !116, line: 438, baseType: !1332, size: 64, offset: 448)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!25, !1014, !1276, !1312}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1280, file: !116, line: 440, baseType: !1309, size: 64, offset: 512)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1280, file: !116, line: 441, baseType: !1337, size: 64, offset: 576)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!25, !1014, !1340}
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !116, line: 411, size: 1408, elements: !1342)
!1342 = !{!1343, !1344}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1341, file: !116, line: 412, baseType: !7, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1341, file: !116, line: 413, baseType: !1345, size: 1344, offset: 64)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, size: 1344, elements: !334)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !116, line: 397, size: 448, elements: !1347)
!1347 = !{!1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1358}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1346, file: !116, line: 398, baseType: !7, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1346, file: !116, line: 399, baseType: !7, size: 32, offset: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1346, file: !116, line: 401, baseType: !7, size: 32, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1346, file: !116, line: 402, baseType: !7, size: 32, offset: 96)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1346, file: !116, line: 403, baseType: !7, size: 32, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1346, file: !116, line: 404, baseType: !7, size: 32, offset: 160)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1346, file: !116, line: 405, baseType: !7, size: 32, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1346, file: !116, line: 406, baseType: !416, size: 64, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1346, file: !116, line: 407, baseType: !1357, size: 64, offset: 320)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !28, line: 132, baseType: !414)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1346, file: !116, line: 408, baseType: !1357, size: 64, offset: 384)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1280, file: !116, line: 442, baseType: !1288, size: 64, offset: 640)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1015, file: !111, line: 1200, baseType: !1361, size: 64, offset: 576)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1363)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !111, line: 54, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1015, file: !111, line: 1201, baseType: !42, size: 64, offset: 640)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1015, file: !111, line: 1202, baseType: !42, size: 64, offset: 704)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1015, file: !111, line: 1203, baseType: !42, size: 64, offset: 768)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1015, file: !111, line: 1204, baseType: !767, size: 64, offset: 832)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1015, file: !111, line: 1205, baseType: !439, size: 320, offset: 896)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1015, file: !111, line: 1206, baseType: !25, size: 32, offset: 1216)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1015, file: !111, line: 1207, baseType: !52, size: 32, offset: 1248)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1015, file: !111, line: 1209, baseType: !23, size: 64, offset: 1280)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1015, file: !111, line: 1211, baseType: !1373, size: 64, offset: 1344)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1376)
!1376 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !111, line: 1211, flags: DIFlagFwdDecl)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1015, file: !111, line: 1223, baseType: !1378, size: 64, offset: 1408)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !784, line: 34, size: 64, elements: !1379)
!1379 = !{!1380}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1378, file: !784, line: 35, baseType: !787, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1015, file: !111, line: 1224, baseType: !100, size: 128, offset: 1472)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1015, file: !111, line: 1225, baseType: !1383, size: 64, offset: 1600)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !111, line: 1225, flags: DIFlagFwdDecl)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1015, file: !111, line: 1226, baseType: !1386, size: 64, offset: 1664)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !111, line: 1226, flags: DIFlagFwdDecl)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1015, file: !111, line: 1227, baseType: !1389, size: 64, offset: 1728)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !111, line: 50, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1015, file: !111, line: 1228, baseType: !1392, size: 64, offset: 1792)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !111, line: 1228, flags: DIFlagFwdDecl)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1015, file: !111, line: 1229, baseType: !355, size: 128, offset: 1856)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1015, file: !111, line: 1230, baseType: !7, size: 32, offset: 1984)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1015, file: !111, line: 1231, baseType: !1397, size: 2496, offset: 2048)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !116, line: 521, size: 2496, elements: !1398)
!1398 = !{!1399, !1400, !1401, !1403, !1435}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1397, file: !116, line: 522, baseType: !7, size: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1397, file: !116, line: 523, baseType: !439, size: 320, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1397, file: !116, line: 524, baseType: !1402, size: 192, offset: 384)
!1402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 192, elements: !334)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1397, file: !116, line: 525, baseType: !1404, size: 1728, offset: 576)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1405, size: 1728, elements: !334)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !116, line: 222, size: 576, elements: !1406)
!1406 = !{!1407, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1405, file: !116, line: 223, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !116, line: 445, size: 256, elements: !1410)
!1410 = !{!1411, !1412, !1425, !1426}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1409, file: !116, line: 446, baseType: !25, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1409, file: !116, line: 447, baseType: !1413, size: 64, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1415)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !116, line: 312, size: 512, elements: !1416)
!1416 = !{!1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1415, file: !116, line: 313, baseType: !1095, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1415, file: !116, line: 314, baseType: !1095, size: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1415, file: !116, line: 315, baseType: !1095, size: 64, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1415, file: !116, line: 316, baseType: !1095, size: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1415, file: !116, line: 317, baseType: !1243, size: 64, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1415, file: !116, line: 318, baseType: !1243, size: 64, offset: 320)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1415, file: !116, line: 319, baseType: !1243, size: 64, offset: 384)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1415, file: !116, line: 320, baseType: !1273, size: 64, offset: 448)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1409, file: !116, line: 448, baseType: !1047, size: 64, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1409, file: !116, line: 449, baseType: !1408, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1405, file: !116, line: 224, baseType: !25, size: 32, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1405, file: !116, line: 226, baseType: !100, size: 128, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1405, file: !116, line: 227, baseType: !42, size: 64, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1405, file: !116, line: 228, baseType: !7, size: 32, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1405, file: !116, line: 229, baseType: !7, size: 32, offset: 352)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1405, file: !116, line: 230, baseType: !1211, size: 64, offset: 384)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1405, file: !116, line: 231, baseType: !1211, size: 64, offset: 448)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1405, file: !116, line: 232, baseType: !23, size: 64, offset: 512)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1397, file: !116, line: 526, baseType: !1436, size: 192, offset: 2304)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1413, size: 192, elements: !334)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1015, file: !111, line: 1233, baseType: !1438, size: 2368, offset: 4544)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !111, line: 1184, size: 2368, elements: !1439)
!1439 = !{!1440, !1441, !1442}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1438, file: !111, line: 1185, baseType: !29, size: 16)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1438, file: !111, line: 1186, baseType: !29, size: 16, offset: 16)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1438, file: !111, line: 1187, baseType: !1443, size: 2304, offset: 64)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1444, size: 2304, elements: !334)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1445, line: 12, size: 768, elements: !1446)
!1445 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1446 = !{!1447, !1455, !1457, !3177, !3178}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1444, file: !1445, line: 13, baseType: !1448, size: 384)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1449, line: 17, size: 384, elements: !1450)
!1449 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1450 = !{!1451, !1452, !1453, !1454}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1448, file: !1449, line: 18, baseType: !25, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1448, file: !1449, line: 19, baseType: !25, size: 32, offset: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1448, file: !1449, line: 20, baseType: !57, size: 192, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1448, file: !1449, line: 22, baseType: !277, size: 128, align: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1444, file: !1445, line: 14, baseType: !1456, size: 64, offset: 384)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1444, file: !1445, line: 15, baseType: !1458, size: 64, offset: 448)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1459, line: 16, size: 64, elements: !1460)
!1459 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1460 = !{!1461}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1458, file: !1459, line: 17, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1464, line: 746, size: 58368, elements: !1465)
!1464 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1465 = !{!1466, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1546, !1557, !1649, !1653, !1656, !1687, !1688, !1689, !1690, !1701, !1703, !1704, !1705, !1706, !1707, !1708, !1719, !1720, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1737, !1738, !1745, !1746, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1960, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !2008, !2014, !2015, !2016, !2017, !2018, !2022, !2025, !2032, !2037, !2040, !2043, !2046, !2108, !2311, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2353, !2354, !2355, !2364, !2372, !2373, !2374, !2375, !2376, !2381, !2382, !2383, !2386, !2387, !2390, !2393, !2396, !2404, !2407, !2408, !2494, !2495, !2496, !2497, !2498, !2504, !2505, !2506, !2507, !2508, !2509, !2512, !2515, !2516, !2519, !2520, !2521, !2524, !2525, !2526, !2529, !2530, !2531, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2563, !2566, !2835, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2847, !2919, !2921, !2922, !2923, !2924, !2925, !2937, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2954, !2955, !2956}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1463, file: !1464, line: 752, baseType: !1467, size: 192)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1468, line: 56, size: 192, elements: !1469)
!1468 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1469 = !{!1470, !1471, !1472, !1473}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1467, file: !1468, line: 57, baseType: !42, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1467, file: !1468, line: 58, baseType: !42, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1467, file: !1468, line: 59, baseType: !464, size: 32, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1467, file: !1468, line: 61, baseType: !464, size: 32, offset: 160)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1463, file: !1464, line: 754, baseType: !7, size: 32, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1463, file: !1464, line: 767, baseType: !23, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1463, file: !1464, line: 768, baseType: !342, size: 32, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1463, file: !1464, line: 770, baseType: !7, size: 32, offset: 352)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1463, file: !1464, line: 771, baseType: !7, size: 32, offset: 384)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1463, file: !1464, line: 774, baseType: !25, size: 32, offset: 416)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1463, file: !1464, line: 775, baseType: !1481, size: 128, offset: 448)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1482, line: 58, size: 128, elements: !1483)
!1482 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1483 = !{!1484, !1485, !1490, !1491}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1481, file: !1482, line: 59, baseType: !271, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, scope: !1481, file: !1482, line: 60, baseType: !1486, size: 32, offset: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1481, file: !1482, line: 60, size: 32, elements: !1487)
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1486, file: !1482, line: 61, baseType: !7, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1486, file: !1482, line: 62, baseType: !52, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1481, file: !1482, line: 65, baseType: !96, size: 16, offset: 96)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1481, file: !1482, line: 65, baseType: !96, size: 16, offset: 112)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1463, file: !1464, line: 776, baseType: !7, size: 32, offset: 576)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1463, file: !1464, line: 777, baseType: !42, size: 64, offset: 640)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1463, file: !1464, line: 778, baseType: !1462, size: 64, offset: 704)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1463, file: !1464, line: 787, baseType: !25, size: 32, offset: 768)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1463, file: !1464, line: 788, baseType: !25, size: 32, offset: 800)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1463, file: !1464, line: 790, baseType: !25, size: 32, offset: 832)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1463, file: !1464, line: 792, baseType: !25, size: 32, offset: 864)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1463, file: !1464, line: 793, baseType: !25, size: 32, offset: 896)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1463, file: !1464, line: 794, baseType: !25, size: 32, offset: 928)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1463, file: !1464, line: 795, baseType: !7, size: 32, offset: 960)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1463, file: !1464, line: 797, baseType: !1503, size: 2048, offset: 1024)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1464, line: 551, size: 2048, elements: !1504)
!1504 = !{!1505, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1525, !1528, !1529, !1530}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1503, file: !1464, line: 553, baseType: !1506, size: 128)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1464, line: 411, size: 128, elements: !1507)
!1507 = !{!1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1506, file: !1464, line: 412, baseType: !42, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1506, file: !1464, line: 413, baseType: !464, size: 32, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1503, file: !1464, line: 554, baseType: !217, size: 192, align: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1503, file: !1464, line: 555, baseType: !414, size: 64, offset: 320)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1503, file: !1464, line: 556, baseType: !414, size: 64, offset: 384)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1503, file: !1464, line: 558, baseType: !100, size: 128, offset: 448)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1503, file: !1464, line: 559, baseType: !7, size: 32, offset: 576)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1503, file: !1464, line: 561, baseType: !414, size: 64, offset: 640)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1503, file: !1464, line: 562, baseType: !414, size: 64, offset: 704)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1503, file: !1464, line: 563, baseType: !414, size: 64, offset: 768)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1503, file: !1464, line: 564, baseType: !414, size: 64, offset: 832)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1503, file: !1464, line: 565, baseType: !183, size: 64, offset: 896)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1503, file: !1464, line: 566, baseType: !414, size: 64, offset: 960)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1503, file: !1464, line: 568, baseType: !414, size: 64, offset: 1024)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1503, file: !1464, line: 571, baseType: !25, size: 32, offset: 1088)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1503, file: !1464, line: 572, baseType: !1524, size: 64, offset: 1152)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1503, file: !1464, line: 574, baseType: !1526, size: 64, offset: 1216)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1464, line: 49, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1503, file: !1464, line: 576, baseType: !1526, size: 64, offset: 1280)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1503, file: !1464, line: 578, baseType: !42, size: 64, offset: 1344)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1503, file: !1464, line: 588, baseType: !1531, size: 512, align: 512, offset: 1536)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1464, line: 497, size: 512, align: 512, elements: !1532)
!1532 = !{!1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1531, file: !1464, line: 498, baseType: !414, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1531, file: !1464, line: 499, baseType: !414, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1531, file: !1464, line: 500, baseType: !414, size: 64, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1531, file: !1464, line: 501, baseType: !464, size: 32, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1531, file: !1464, line: 502, baseType: !464, size: 32, offset: 224)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1531, file: !1464, line: 503, baseType: !42, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1531, file: !1464, line: 504, baseType: !42, size: 64, offset: 320)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1531, file: !1464, line: 505, baseType: !42, size: 64, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1531, file: !1464, line: 506, baseType: !1542, size: 64, align: 64, offset: 448)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1464, line: 445, size: 64, align: 64, elements: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1542, file: !1464, line: 446, baseType: !7, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1542, file: !1464, line: 447, baseType: !7, size: 32, offset: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1463, file: !1464, line: 798, baseType: !1547, size: 384, offset: 3072)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1464, line: 592, size: 384, elements: !1548)
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1547, file: !1464, line: 593, baseType: !100, size: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1547, file: !1464, line: 594, baseType: !42, size: 64, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1547, file: !1464, line: 595, baseType: !42, size: 64, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1547, file: !1464, line: 596, baseType: !7, size: 32, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1547, file: !1464, line: 597, baseType: !29, size: 16, offset: 288)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1547, file: !1464, line: 598, baseType: !29, size: 16, offset: 304)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1547, file: !1464, line: 600, baseType: !1556, size: 64, offset: 320)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1463, file: !1464, line: 799, baseType: !1558, size: 1792, offset: 3456)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1464, line: 610, size: 1792, elements: !1559)
!1559 = !{!1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1646, !1647}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1558, file: !1464, line: 611, baseType: !217, size: 192, align: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1558, file: !1464, line: 618, baseType: !414, size: 64, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1558, file: !1464, line: 619, baseType: !414, size: 64, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1558, file: !1464, line: 620, baseType: !414, size: 64, offset: 320)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1558, file: !1464, line: 621, baseType: !414, size: 64, offset: 384)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1558, file: !1464, line: 622, baseType: !414, size: 64, offset: 448)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1558, file: !1464, line: 629, baseType: !183, size: 64, offset: 512)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1558, file: !1464, line: 630, baseType: !414, size: 64, offset: 576)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1558, file: !1464, line: 631, baseType: !7, size: 32, offset: 640)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1558, file: !1464, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1558, file: !1464, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1558, file: !1464, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1558, file: !1464, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1558, file: !1464, line: 662, baseType: !1574, size: 512, offset: 704)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !122, line: 118, size: 512, elements: !1575)
!1575 = !{!1576, !1584, !1585, !1590, !1642, !1643, !1644, !1645}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1574, file: !122, line: 119, baseType: !1577, size: 256)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1578, line: 9, size: 256, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1577, file: !1578, line: 10, baseType: !217, size: 192, align: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1577, file: !1578, line: 11, baseType: !1582, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1583, line: 29, baseType: !183)
!1583 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1574, file: !122, line: 120, baseType: !1582, size: 64, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1574, file: !122, line: 121, baseType: !1586, size: 64, offset: 320)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!121, !1589}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1574, file: !122, line: 122, baseType: !1591, size: 64, offset: 384)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !122, line: 159, size: 512, align: 512, elements: !1593)
!1593 = !{!1594, !1619, !1620, !1623, !1628, !1629, !1637, !1641}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1592, file: !122, line: 160, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !122, line: 215, size: 4608, align: 512, elements: !1597)
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1596, file: !122, line: 216, baseType: !302, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1596, file: !122, line: 217, baseType: !7, size: 32, offset: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1596, file: !122, line: 218, baseType: !7, size: 32, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1596, file: !122, line: 219, baseType: !7, size: 32, offset: 96)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1596, file: !122, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1596, file: !122, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1596, file: !122, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1596, file: !122, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1596, file: !122, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1596, file: !122, line: 226, baseType: !7, size: 32, offset: 160)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1596, file: !122, line: 227, baseType: !29, size: 16, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1596, file: !122, line: 228, baseType: !29, size: 16, offset: 208)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1596, file: !122, line: 229, baseType: !7, size: 32, offset: 224)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1596, file: !122, line: 235, baseType: !1582, size: 64, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1596, file: !122, line: 236, baseType: !1589, size: 64, offset: 320)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1596, file: !122, line: 237, baseType: !1582, size: 64, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1596, file: !122, line: 238, baseType: !1589, size: 64, offset: 448)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1596, file: !122, line: 239, baseType: !1616, size: 4096, align: 512, offset: 512)
!1616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1592, size: 4096, align: 512, elements: !1617)
!1617 = !{!1618}
!1618 = !DISubrange(count: 8)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1592, file: !122, line: 161, baseType: !7, size: 32, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1592, file: !122, line: 162, baseType: !1621, size: 32, offset: 96)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !28, line: 32, baseType: !1622)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !40, line: 96, baseType: !25)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1592, file: !122, line: 163, baseType: !1624, size: 32, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !774, line: 274, baseType: !1625)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !774, line: 274, size: 32, elements: !1626)
!1626 = !{!1627}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1625, file: !774, line: 274, baseType: !778, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1592, file: !122, line: 164, baseType: !1589, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1592, file: !122, line: 165, baseType: !1630, size: 128, offset: 256)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1578, line: 14, size: 128, elements: !1631)
!1631 = !{!1632}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1630, file: !1578, line: 15, baseType: !1633, size: 128)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !218, line: 26, size: 128, elements: !1634)
!1634 = !{!1635, !1636}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1633, file: !218, line: 27, baseType: !236, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1633, file: !218, line: 28, baseType: !222, size: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1592, file: !122, line: 166, baseType: !1638, size: 64, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!1582}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1592, file: !122, line: 167, baseType: !1582, size: 64, offset: 448)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1574, file: !122, line: 123, baseType: !86, size: 8, offset: 448)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1574, file: !122, line: 124, baseType: !86, size: 8, offset: 456)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1574, file: !122, line: 125, baseType: !86, size: 8, offset: 464)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1574, file: !122, line: 126, baseType: !86, size: 8, offset: 472)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1558, file: !1464, line: 671, baseType: !1574, size: 512, offset: 1216)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1558, file: !1464, line: 679, baseType: !1648, size: 64, offset: 1728)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1463, file: !1464, line: 800, baseType: !1650, size: 64, offset: 5248)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1652)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1464, line: 800, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1463, file: !1464, line: 809, baseType: !1654, size: 64, offset: 5312)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1464, line: 70, flags: DIFlagFwdDecl)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1463, file: !1464, line: 825, baseType: !1657, size: 2048, align: 512, offset: 5632)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1464, line: 509, size: 2048, align: 512, elements: !1658)
!1658 = !{!1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1657, file: !1464, line: 511, baseType: !414, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1657, file: !1464, line: 512, baseType: !414, size: 64, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1657, file: !1464, line: 513, baseType: !414, size: 64, offset: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1657, file: !1464, line: 514, baseType: !414, size: 64, offset: 192)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1657, file: !1464, line: 515, baseType: !414, size: 64, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1657, file: !1464, line: 516, baseType: !414, size: 64, offset: 320)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1657, file: !1464, line: 518, baseType: !414, size: 64, offset: 384)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1657, file: !1464, line: 519, baseType: !414, size: 64, offset: 448)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1657, file: !1464, line: 520, baseType: !183, size: 64, offset: 512)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1657, file: !1464, line: 522, baseType: !414, size: 64, offset: 576)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1657, file: !1464, line: 523, baseType: !414, size: 64, offset: 640)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1657, file: !1464, line: 524, baseType: !183, size: 64, offset: 704)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1657, file: !1464, line: 526, baseType: !183, size: 64, offset: 768)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1657, file: !1464, line: 527, baseType: !414, size: 64, offset: 832)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1657, file: !1464, line: 529, baseType: !414, size: 64, offset: 896)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1657, file: !1464, line: 530, baseType: !414, size: 64, offset: 960)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1657, file: !1464, line: 531, baseType: !414, size: 64, offset: 1024)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1657, file: !1464, line: 532, baseType: !414, size: 64, offset: 1088)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1657, file: !1464, line: 533, baseType: !414, size: 64, offset: 1152)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1657, file: !1464, line: 535, baseType: !414, size: 64, offset: 1216)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1657, file: !1464, line: 536, baseType: !414, size: 64, offset: 1280)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1657, file: !1464, line: 537, baseType: !414, size: 64, offset: 1344)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1657, file: !1464, line: 538, baseType: !414, size: 64, offset: 1408)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1657, file: !1464, line: 539, baseType: !414, size: 64, offset: 1472)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1657, file: !1464, line: 540, baseType: !414, size: 64, offset: 1536)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1657, file: !1464, line: 541, baseType: !414, size: 64, offset: 1600)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1657, file: !1464, line: 542, baseType: !414, size: 64, offset: 1664)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1657, file: !1464, line: 543, baseType: !414, size: 64, offset: 1728)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1463, file: !1464, line: 833, baseType: !7, size: 32, offset: 7680)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1463, file: !1464, line: 836, baseType: !7, size: 32, offset: 7712)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1463, file: !1464, line: 837, baseType: !25, size: 32, offset: 7744)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1463, file: !1464, line: 838, baseType: !1691, size: 64, offset: 7808)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1693)
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1694, line: 19, baseType: !1695)
!1694 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1694, line: 19, size: 64, elements: !1696)
!1696 = !{!1697}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1695, file: !1694, line: 19, baseType: !1698, size: 64)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !1699)
!1699 = !{!1700}
!1700 = !DISubrange(count: 1)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1463, file: !1464, line: 839, baseType: !1702, size: 64, offset: 7872)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1463, file: !1464, line: 840, baseType: !1693, size: 64, offset: 7936)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1463, file: !1464, line: 841, baseType: !23, size: 64, offset: 8000)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1463, file: !1464, line: 843, baseType: !29, size: 16, offset: 8064)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1463, file: !1464, line: 845, baseType: !29, size: 16, offset: 8080)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1463, file: !1464, line: 848, baseType: !25, size: 32, offset: 8096)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1463, file: !1464, line: 849, baseType: !1709, size: 32, offset: 8128)
!1709 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1464, line: 718, size: 32, elements: !1710)
!1710 = !{!1711, !1718}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1709, file: !1464, line: 724, baseType: !1712, size: 32)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1709, file: !1464, line: 719, size: 32, elements: !1713)
!1713 = !{!1714, !1715, !1716, !1717}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1712, file: !1464, line: 720, baseType: !86, size: 8)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1712, file: !1464, line: 721, baseType: !86, size: 8, offset: 8)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1712, file: !1464, line: 722, baseType: !86, size: 8, offset: 16)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1712, file: !1464, line: 723, baseType: !86, size: 8, offset: 24)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1709, file: !1464, line: 725, baseType: !464, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1463, file: !1464, line: 850, baseType: !100, size: 128, offset: 8192)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1463, file: !1464, line: 851, baseType: !1721, size: 64, offset: 8320)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1464, line: 60, flags: DIFlagFwdDecl)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1463, file: !1464, line: 855, baseType: !42, size: 64, offset: 8384)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1463, file: !1464, line: 856, baseType: !86, size: 8, offset: 8448)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1463, file: !1464, line: 857, baseType: !86, size: 8, offset: 8456)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1463, file: !1464, line: 858, baseType: !25, size: 32, offset: 8480)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1463, file: !1464, line: 859, baseType: !100, size: 128, offset: 8512)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1463, file: !1464, line: 860, baseType: !25, size: 32, offset: 8640)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1463, file: !1464, line: 861, baseType: !100, size: 128, offset: 8704)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1463, file: !1464, line: 873, baseType: !1731, size: 256, offset: 8832)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1464, line: 376, size: 256, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1731, file: !1464, line: 381, baseType: !42, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1731, file: !1464, line: 384, baseType: !416, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1731, file: !1464, line: 389, baseType: !416, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1731, file: !1464, line: 392, baseType: !416, size: 64, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1463, file: !1464, line: 875, baseType: !100, size: 128, offset: 9088)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1463, file: !1464, line: 877, baseType: !1739, size: 320, offset: 9216)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1740, line: 86, size: 320, elements: !1741)
!1740 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1741 = !{!1742, !1743, !1744}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1739, file: !1740, line: 87, baseType: !25, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1739, file: !1740, line: 88, baseType: !100, size: 128, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1739, file: !1740, line: 89, baseType: !100, size: 128, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1463, file: !1464, line: 878, baseType: !217, size: 192, align: 64, offset: 9536)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1463, file: !1464, line: 881, baseType: !1747, size: 64, offset: 9728)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1749, line: 733, size: 10240, elements: !1750)
!1749 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1750 = !{!1751, !1879}
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !1748, file: !1749, line: 734, baseType: !1752, size: 10240)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1748, file: !1749, line: 734, size: 10240, elements: !1753)
!1753 = !{!1754, !1758, !1771, !1775, !1776, !1777, !1778, !1779, !1780, !1789, !1790, !1791, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1830, !1832, !1835, !1859, !1860, !1861, !1864, !1865, !1866, !1869, !1870, !1871, !1877, !1878}
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !1749, line: 739, baseType: !1755, size: 512, align: 512)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1752, file: !1749, line: 739, size: 512, align: 512, elements: !1756)
!1756 = !{!1757}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1755, file: !1749, line: 747, baseType: !52, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1752, file: !1749, line: 750, baseType: !1759, size: 128, offset: 512)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1760, line: 218, size: 128, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1761 = !{!1762, !1769, !1770}
!1762 = !DIDerivedType(tag: DW_TAG_member, scope: !1759, file: !1760, line: 219, baseType: !1763, size: 32)
!1763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1759, file: !1760, line: 219, size: 32, elements: !1764)
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1763, file: !1760, line: 220, baseType: !62, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1763, file: !1760, line: 221, baseType: !1767)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1760, line: 197, baseType: !1768)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1760, line: 197, elements: !1055)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1759, file: !1760, line: 223, baseType: !7, size: 32, offset: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1759, file: !1760, line: 224, baseType: !23, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1752, file: !1749, line: 752, baseType: !1772, size: 64, offset: 640)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!42, !264, !42, !42, !42, !42}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1752, file: !1749, line: 756, baseType: !42, size: 64, offset: 704)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1752, file: !1749, line: 757, baseType: !42, size: 64, offset: 768)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1752, file: !1749, line: 760, baseType: !42, size: 64, offset: 832)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1752, file: !1749, line: 761, baseType: !42, size: 64, offset: 896)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1752, file: !1749, line: 763, baseType: !42, size: 64, offset: 960)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1752, file: !1749, line: 764, baseType: !1781, size: 64, offset: 1024)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1783, line: 299, baseType: !1784)
!1783 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1783, line: 299, size: 64, elements: !1785)
!1785 = !{!1786}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1784, file: !1783, line: 299, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1788, line: 18, baseType: !42)
!1788 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1752, file: !1749, line: 773, baseType: !52, size: 32, offset: 1088)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1752, file: !1749, line: 785, baseType: !52, size: 32, offset: 1120)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1752, file: !1749, line: 795, baseType: !1792, size: 64, offset: 1152)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1749, line: 726, size: 128, elements: !1794)
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1793, file: !1749, line: 727, baseType: !414, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1793, file: !1749, line: 728, baseType: !25, size: 32, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1752, file: !1749, line: 801, baseType: !42, size: 64, offset: 1216)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1752, file: !1749, line: 804, baseType: !290, size: 64, offset: 1280)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1752, file: !1749, line: 806, baseType: !25, size: 32, offset: 1344)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1752, file: !1749, line: 808, baseType: !62, size: 32, offset: 1376)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1752, file: !1749, line: 823, baseType: !439, size: 320, offset: 1408)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1752, file: !1749, line: 825, baseType: !100, size: 128, offset: 1728)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1752, file: !1749, line: 845, baseType: !25, size: 32, offset: 1856)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1752, file: !1749, line: 849, baseType: !42, size: 64, offset: 1920)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1752, file: !1749, line: 850, baseType: !42, size: 64, offset: 1984)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1752, file: !1749, line: 852, baseType: !42, size: 64, offset: 2048)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1752, file: !1749, line: 853, baseType: !42, size: 64, offset: 2112)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1752, file: !1749, line: 854, baseType: !292, size: 64, offset: 2176)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1752, file: !1749, line: 855, baseType: !42, size: 64, offset: 2240)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1752, file: !1749, line: 856, baseType: !42, size: 64, offset: 2304)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1752, file: !1749, line: 857, baseType: !42, size: 64, offset: 2368)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1752, file: !1749, line: 858, baseType: !42, size: 64, offset: 2432)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1752, file: !1749, line: 865, baseType: !778, size: 32, offset: 2496)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1752, file: !1749, line: 867, baseType: !62, size: 32, offset: 2528)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1752, file: !1749, line: 869, baseType: !42, size: 64, offset: 2560)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1752, file: !1749, line: 869, baseType: !42, size: 64, offset: 2624)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1752, file: !1749, line: 869, baseType: !42, size: 64, offset: 2688)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1752, file: !1749, line: 869, baseType: !42, size: 64, offset: 2752)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1752, file: !1749, line: 870, baseType: !42, size: 64, offset: 2816)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1752, file: !1749, line: 870, baseType: !42, size: 64, offset: 2880)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1752, file: !1749, line: 870, baseType: !42, size: 64, offset: 2944)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1752, file: !1749, line: 871, baseType: !42, size: 64, offset: 3008)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1752, file: !1749, line: 871, baseType: !42, size: 64, offset: 3072)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1752, file: !1749, line: 871, baseType: !42, size: 64, offset: 3136)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1752, file: !1749, line: 871, baseType: !42, size: 64, offset: 3200)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1752, file: !1749, line: 873, baseType: !1827, size: 3328, offset: 3264)
!1827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 3328, elements: !1828)
!1828 = !{!1829}
!1829 = !DISubrange(count: 52)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1752, file: !1749, line: 875, baseType: !1831, size: 1280, offset: 6592)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 1280, elements: !360)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1752, file: !1749, line: 877, baseType: !1833, size: 64, offset: 7872)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1749, line: 877, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1752, file: !1749, line: 880, baseType: !1836, size: 1088, offset: 7936)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1837, line: 72, baseType: !1838)
!1837 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1837, line: 23, size: 1088, elements: !1839)
!1839 = !{!1840, !1841, !1842, !1843, !1844, !1847, !1848, !1849, !1850, !1854, !1855, !1856}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1838, file: !1837, line: 28, baseType: !414, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1838, file: !1837, line: 38, baseType: !292, size: 64, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1838, file: !1837, line: 40, baseType: !42, size: 64, offset: 128)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1838, file: !1837, line: 43, baseType: !439, size: 320, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1838, file: !1837, line: 44, baseType: !1845, size: 64, offset: 512)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1837, line: 44, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1838, file: !1837, line: 48, baseType: !42, size: 64, offset: 576)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1838, file: !1837, line: 59, baseType: !297, size: 256, offset: 640)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1838, file: !1837, line: 60, baseType: !23, size: 64, offset: 896)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1838, file: !1837, line: 61, baseType: !1851, size: 64, offset: 960)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1853)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1837, line: 61, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1838, file: !1837, line: 63, baseType: !52, size: 32, offset: 1024)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1838, file: !1837, line: 69, baseType: !96, size: 16, offset: 1056)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1838, file: !1837, line: 70, baseType: !1857, size: 16, offset: 1072)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !87, line: 18, baseType: !1858)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !89, line: 23, baseType: !469)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1752, file: !1749, line: 882, baseType: !42, size: 64, offset: 9024)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1752, file: !1749, line: 885, baseType: !62, size: 32, offset: 9088)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1752, file: !1749, line: 886, baseType: !1862, size: 64, offset: 9152)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1749, line: 732, flags: DIFlagFwdDecl)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1752, file: !1749, line: 901, baseType: !584, size: 64, offset: 9216)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1752, file: !1749, line: 904, baseType: !264, size: 64, offset: 9280)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1752, file: !1749, line: 906, baseType: !1867, size: 64, offset: 9344)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1749, line: 906, flags: DIFlagFwdDecl)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1752, file: !1749, line: 930, baseType: !52, size: 32, offset: 9408)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1752, file: !1749, line: 933, baseType: !52, size: 32, offset: 9440)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1752, file: !1749, line: 935, baseType: !1872, size: 64, offset: 9472)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !140, line: 103, size: 64, elements: !1873)
!1873 = !{!1874}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1872, file: !140, line: 104, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !140, line: 101, flags: DIFlagFwdDecl)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1752, file: !1749, line: 940, baseType: !290, size: 64, offset: 9536)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1752, file: !1749, line: 942, baseType: !633, size: 256, offset: 9600)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1748, file: !1749, line: 986, baseType: !1880, offset: 10240)
!1880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, elements: !373)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1463, file: !1464, line: 882, baseType: !1747, size: 64, offset: 9792)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1463, file: !1464, line: 884, baseType: !25, size: 32, offset: 9856)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1463, file: !1464, line: 885, baseType: !25, size: 32, offset: 9888)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1463, file: !1464, line: 886, baseType: !25, size: 32, offset: 9920)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1463, file: !1464, line: 888, baseType: !25, size: 32, offset: 9952)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1463, file: !1464, line: 890, baseType: !42, size: 64, offset: 9984)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1463, file: !1464, line: 893, baseType: !7, size: 32, offset: 10048)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1463, file: !1464, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1463, file: !1464, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1463, file: !1464, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1463, file: !1464, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1463, file: !1464, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1463, file: !1464, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1463, file: !1464, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1463, file: !1464, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1463, file: !1464, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1463, file: !1464, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1463, file: !1464, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1463, file: !1464, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1463, file: !1464, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1463, file: !1464, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1463, file: !1464, line: 969, baseType: !42, size: 64, offset: 10176)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1463, file: !1464, line: 971, baseType: !1904, size: 448, offset: 10240)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !127, line: 25, size: 448, elements: !1905)
!1905 = !{!1906, !1907, !1912}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1904, file: !127, line: 26, baseType: !42, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1904, file: !127, line: 27, baseType: !1908, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!731, !1911}
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, scope: !1904, file: !127, line: 28, baseType: !1913, size: 320, offset: 128)
!1913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1904, file: !127, line: 28, size: 320, elements: !1914)
!1914 = !{!1915, !1925, !1950}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1913, file: !127, line: 37, baseType: !1916, size: 320)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1913, file: !127, line: 30, size: 320, elements: !1917)
!1917 = !{!1918, !1920, !1921, !1922, !1923, !1924}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1916, file: !127, line: 31, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1916, file: !127, line: 32, baseType: !464, size: 32, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1916, file: !127, line: 33, baseType: !464, size: 32, offset: 96)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1916, file: !127, line: 34, baseType: !464, size: 32, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1916, file: !127, line: 35, baseType: !414, size: 64, offset: 192)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1916, file: !127, line: 36, baseType: !1919, size: 64, offset: 256)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1913, file: !127, line: 47, baseType: !1926, size: 192)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1913, file: !127, line: 39, size: 192, elements: !1927)
!1927 = !{!1928, !1929, !1930, !1949}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1926, file: !127, line: 40, baseType: !1621, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1926, file: !127, line: 41, baseType: !126, size: 32, offset: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, scope: !1926, file: !127, line: 42, baseType: !1931, size: 64, offset: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1926, file: !127, line: 42, size: 64, elements: !1932)
!1932 = !{!1933, !1941}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1931, file: !127, line: 43, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1936, line: 7, size: 128, elements: !1937)
!1936 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1937 = !{!1938, !1940}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1935, file: !1936, line: 8, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !40, line: 93, baseType: !46)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1935, file: !1936, line: 9, baseType: !46, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1931, file: !127, line: 44, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1944, line: 7, size: 64, elements: !1945)
!1944 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1945 = !{!1946, !1948}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1943, file: !1944, line: 8, baseType: !1947, size: 32)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1944, line: 5, baseType: !431)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1943, file: !1944, line: 9, baseType: !431, size: 32, offset: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1926, file: !127, line: 46, baseType: !414, size: 64, offset: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1913, file: !127, line: 55, baseType: !1951, size: 256)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1913, file: !127, line: 49, size: 256, elements: !1952)
!1952 = !{!1953, !1956, !1957, !1958, !1959}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1951, file: !127, line: 50, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !127, line: 14, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1951, file: !127, line: 51, baseType: !25, size: 32, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1951, file: !127, line: 52, baseType: !25, size: 32, offset: 96)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1951, file: !127, line: 53, baseType: !42, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1951, file: !127, line: 54, baseType: !42, size: 64, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1463, file: !1464, line: 973, baseType: !1961, size: 32, offset: 10688)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !28, line: 27, baseType: !1962)
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !40, line: 28, baseType: !25)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1463, file: !1464, line: 974, baseType: !1961, size: 32, offset: 10720)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1463, file: !1464, line: 978, baseType: !42, size: 64, offset: 10752)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1463, file: !1464, line: 987, baseType: !1462, size: 64, offset: 10816)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1463, file: !1464, line: 990, baseType: !1462, size: 64, offset: 10880)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1463, file: !1464, line: 995, baseType: !100, size: 128, offset: 10944)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1463, file: !1464, line: 996, baseType: !100, size: 128, offset: 11072)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1463, file: !1464, line: 997, baseType: !1462, size: 64, offset: 11200)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1463, file: !1464, line: 1005, baseType: !100, size: 128, offset: 11264)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1463, file: !1464, line: 1006, baseType: !100, size: 128, offset: 11392)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1463, file: !1464, line: 1009, baseType: !338, size: 64, offset: 11520)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1463, file: !1464, line: 1010, baseType: !1974, size: 512, offset: 11584)
!1974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 512, elements: !360)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1463, file: !1464, line: 1011, baseType: !100, size: 128, offset: 12096)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1463, file: !1464, line: 1012, baseType: !100, size: 128, offset: 12224)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1463, file: !1464, line: 1014, baseType: !671, size: 64, offset: 12352)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1463, file: !1464, line: 1017, baseType: !1118, size: 64, offset: 12416)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1463, file: !1464, line: 1020, baseType: !1118, size: 64, offset: 12480)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1463, file: !1464, line: 1023, baseType: !23, size: 64, offset: 12544)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1463, file: !1464, line: 1025, baseType: !414, size: 64, offset: 12608)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1463, file: !1464, line: 1026, baseType: !414, size: 64, offset: 12672)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1463, file: !1464, line: 1031, baseType: !414, size: 64, offset: 12736)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1463, file: !1464, line: 1032, baseType: !1985, size: 192, offset: 12800)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1464, line: 324, size: 192, elements: !1986)
!1986 = !{!1987, !1988, !1989}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1985, file: !1464, line: 326, baseType: !414, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1985, file: !1464, line: 327, baseType: !414, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1985, file: !1464, line: 328, baseType: !302, size: 32, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1463, file: !1464, line: 1041, baseType: !42, size: 64, offset: 12992)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1463, file: !1464, line: 1042, baseType: !42, size: 64, offset: 13056)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1463, file: !1464, line: 1045, baseType: !414, size: 64, offset: 13120)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1463, file: !1464, line: 1048, baseType: !414, size: 64, offset: 13184)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1463, file: !1464, line: 1051, baseType: !42, size: 64, offset: 13248)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1463, file: !1464, line: 1052, baseType: !42, size: 64, offset: 13312)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1463, file: !1464, line: 1055, baseType: !1997, size: 640, offset: 13376)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1998, line: 132, size: 640, elements: !1999)
!1998 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1999 = !{!2000, !2006, !2007}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1997, file: !1998, line: 133, baseType: !2001, size: 576)
!2001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2002, size: 576, elements: !334)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1998, line: 117, size: 192, elements: !2003)
!2003 = !{!2004, !2005}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2002, file: !1998, line: 118, baseType: !414, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2002, file: !1998, line: 119, baseType: !1630, size: 128, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1997, file: !1998, line: 134, baseType: !7, size: 32, offset: 576)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1997, file: !1998, line: 135, baseType: !7, size: 32, offset: 608)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1463, file: !1464, line: 1058, baseType: !2009, size: 448, offset: 14016)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1998, line: 144, size: 448, elements: !2010)
!2010 = !{!2011, !2012, !2013}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2009, file: !1998, line: 145, baseType: !277, size: 128, align: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2009, file: !1998, line: 146, baseType: !297, size: 256, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2009, file: !1998, line: 147, baseType: !7, size: 32, offset: 384)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1463, file: !1464, line: 1064, baseType: !387, size: 64, offset: 14464)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1463, file: !1464, line: 1067, baseType: !387, size: 64, offset: 14528)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1463, file: !1464, line: 1070, baseType: !387, size: 64, offset: 14592)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1463, file: !1464, line: 1074, baseType: !423, size: 64, offset: 14656)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1463, file: !1464, line: 1084, baseType: !2019, size: 128, offset: 14720)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !2020)
!2020 = !{!2021}
!2021 = !DISubrange(count: 16)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1463, file: !1464, line: 1086, baseType: !2023, size: 64, offset: 14848)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1464, line: 55, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1463, file: !1464, line: 1089, baseType: !2026, size: 64, offset: 14912)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2027, line: 12, size: 64, elements: !2028)
!2027 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2028 = !{!2029}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2026, file: !2027, line: 13, baseType: !2030, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2027, line: 8, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1463, file: !1464, line: 1090, baseType: !2033, size: 128, offset: 14976)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2034, line: 13, size: 128, elements: !2035)
!2034 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2035 = !{!2036}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2033, file: !2034, line: 14, baseType: !100, size: 128)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1463, file: !1464, line: 1097, baseType: !2038, size: 64, offset: 15104)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1464, line: 50, flags: DIFlagFwdDecl)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1463, file: !1464, line: 1100, baseType: !2041, size: 64, offset: 15168)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1464, line: 1100, flags: DIFlagFwdDecl)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1463, file: !1464, line: 1103, baseType: !2044, size: 64, offset: 15232)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1464, line: 53, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1463, file: !1464, line: 1107, baseType: !2047, size: 64, offset: 15296)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2049, line: 31, size: 576, elements: !2050)
!2049 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2050 = !{!2051, !2052, !2055, !2058, !2061, !2062, !2065, !2068, !2069}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2048, file: !2049, line: 32, baseType: !342, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2048, file: !2049, line: 33, baseType: !2053, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2049, line: 9, flags: DIFlagFwdDecl)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2048, file: !2049, line: 34, baseType: !2056, size: 64, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2049, line: 10, flags: DIFlagFwdDecl)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2048, file: !2049, line: 35, baseType: !2059, size: 64, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2049, line: 8, flags: DIFlagFwdDecl)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2048, file: !2049, line: 36, baseType: !371, size: 64, offset: 256)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2048, file: !2049, line: 37, baseType: !2063, size: 64, offset: 320)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !425, line: 34, flags: DIFlagFwdDecl)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2048, file: !2049, line: 38, baseType: !2066, size: 64, offset: 384)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2049, line: 38, flags: DIFlagFwdDecl)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2048, file: !2049, line: 39, baseType: !2066, size: 64, offset: 448)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2048, file: !2049, line: 40, baseType: !2070, size: 64, offset: 512)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2072, line: 771, size: 384, elements: !2073)
!2072 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!2073 = !{!2074, !2075, !2076, !2077}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2071, file: !2072, line: 772, baseType: !617, size: 192)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2071, file: !2072, line: 773, baseType: !584, size: 64, offset: 192)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2071, file: !2072, line: 774, baseType: !716, size: 64, offset: 256)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !2071, file: !2072, line: 775, baseType: !2078, size: 64, offset: 320)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !162, line: 209, size: 4736, elements: !2080)
!2080 = !{!2081, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !2079, file: !162, line: 215, baseType: !2082, size: 896)
!2082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2083, size: 896, elements: !2084)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!2084 = !{!2085}
!2085 = !DISubrange(count: 14)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2079, file: !162, line: 218, baseType: !342, size: 32, offset: 896)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !2079, file: !162, line: 226, baseType: !2078, size: 64, offset: 960)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !2079, file: !162, line: 229, baseType: !192, size: 64, offset: 1024)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2079, file: !162, line: 232, baseType: !25, size: 32, offset: 1088)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2079, file: !162, line: 241, baseType: !100, size: 128, offset: 1152)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !2079, file: !162, line: 242, baseType: !100, size: 128, offset: 1280)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !2079, file: !162, line: 243, baseType: !100, size: 128, offset: 1408)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !2079, file: !162, line: 246, baseType: !100, size: 128, offset: 1536)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !2079, file: !162, line: 255, baseType: !2095, size: 1792, offset: 1664)
!2095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 1792, elements: !2084)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !2079, file: !162, line: 258, baseType: !100, size: 128, offset: 3456)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !2079, file: !162, line: 259, baseType: !100, size: 128, offset: 3584)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !2079, file: !162, line: 265, baseType: !355, size: 128, offset: 3712)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !2079, file: !162, line: 271, baseType: !100, size: 128, offset: 3840)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !2079, file: !162, line: 277, baseType: !100, size: 128, offset: 3968)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !2079, file: !162, line: 278, baseType: !100, size: 128, offset: 4096)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !2079, file: !162, line: 279, baseType: !100, size: 128, offset: 4224)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !2079, file: !162, line: 288, baseType: !192, size: 64, offset: 4352)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !2079, file: !162, line: 289, baseType: !192, size: 64, offset: 4416)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !2079, file: !162, line: 290, baseType: !2078, size: 64, offset: 4480)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !2079, file: !162, line: 293, baseType: !500, size: 8, offset: 4544)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2079, file: !162, line: 296, baseType: !277, size: 128, align: 64, offset: 4608)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1463, file: !1464, line: 1110, baseType: !2109, size: 64, offset: 15360)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2111, line: 93, size: 8768, elements: !2112)
!2111 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2112 = !{!2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2163, !2172, !2173, !2175, !2176, !2177, !2180, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2218, !2219, !2226, !2236, !2301, !2302, !2305, !2306, !2307, !2308, !2309, !2310}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2110, file: !2111, line: 94, baseType: !342, size: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2110, file: !2111, line: 95, baseType: !52, size: 32, offset: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2110, file: !2111, line: 96, baseType: !25, size: 32, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2110, file: !2111, line: 97, baseType: !25, size: 32, offset: 96)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2110, file: !2111, line: 98, baseType: !100, size: 128, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2110, file: !2111, line: 100, baseType: !57, size: 192, offset: 256)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2110, file: !2111, line: 103, baseType: !1462, size: 64, offset: 448)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2110, file: !2111, line: 106, baseType: !2121, size: 192, offset: 512)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2122, line: 32, size: 192, elements: !2123)
!2122 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2123 = !{!2124, !2125}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2121, file: !2122, line: 33, baseType: !100, size: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2121, file: !2122, line: 34, baseType: !2126, size: 64, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2127, line: 25, baseType: !2128)
!2127 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2127, line: 23, size: 64, elements: !2129)
!2129 = !{!2130}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2128, file: !2127, line: 24, baseType: !1698, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2110, file: !2111, line: 109, baseType: !351, size: 64, offset: 704)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2110, file: !2111, line: 112, baseType: !25, size: 32, offset: 768)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2110, file: !2111, line: 114, baseType: !25, size: 32, offset: 800)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2110, file: !2111, line: 115, baseType: !1462, size: 64, offset: 832)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2110, file: !2111, line: 118, baseType: !25, size: 32, offset: 896)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2110, file: !2111, line: 119, baseType: !7, size: 32, offset: 928)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2110, file: !2111, line: 121, baseType: !2138, size: 64, offset: 960)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2111, line: 80, size: 448, elements: !2140)
!2140 = !{!2141, !2142, !2148}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2139, file: !2111, line: 81, baseType: !52, size: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2139, file: !2111, line: 82, baseType: !2143, size: 128, offset: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2111, line: 75, size: 128, elements: !2144)
!2144 = !{!2145, !2146}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2143, file: !2111, line: 76, baseType: !1462, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2143, file: !2111, line: 77, baseType: !2147, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2139, file: !2111, line: 83, baseType: !672, size: 256, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2110, file: !2111, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2110, file: !2111, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2110, file: !2111, line: 138, baseType: !7, size: 32, offset: 1056)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2110, file: !2111, line: 139, baseType: !100, size: 128, offset: 1088)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2110, file: !2111, line: 142, baseType: !1574, size: 512, offset: 1216)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2110, file: !2111, line: 143, baseType: !1582, size: 64, offset: 1728)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2110, file: !2111, line: 150, baseType: !2156, size: 256, offset: 1792)
!2156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2157, size: 256, elements: !2161)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2111, line: 38, size: 128, elements: !2158)
!2158 = !{!2159, !2160}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2157, file: !2111, line: 39, baseType: !414, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2157, file: !2111, line: 40, baseType: !414, size: 64, offset: 64)
!2161 = !{!2162}
!2162 = !DISubrange(count: 2)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2110, file: !2111, line: 156, baseType: !2164, size: 192, offset: 2048)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2111, line: 66, size: 192, elements: !2165)
!2165 = !{!2166}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2164, file: !2111, line: 67, baseType: !2167, size: 192)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2111, line: 47, size: 192, elements: !2168)
!2168 = !{!2169, !2170, !2171}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2167, file: !2111, line: 48, baseType: !292, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2167, file: !2111, line: 49, baseType: !292, size: 64, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2167, file: !2111, line: 50, baseType: !292, size: 64, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2110, file: !2111, line: 160, baseType: !1997, size: 640, offset: 2240)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2110, file: !2111, line: 163, baseType: !2174, size: 256, offset: 2880)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 256, elements: !360)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2110, file: !2111, line: 169, baseType: !338, size: 64, offset: 3136)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2110, file: !2111, line: 172, baseType: !25, size: 32, offset: 3200)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2110, file: !2111, line: 174, baseType: !2178, size: 64, offset: 3264)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2111, line: 174, flags: DIFlagFwdDecl)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2110, file: !2111, line: 185, baseType: !2181, size: 64, offset: 3328)
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !774, line: 860, baseType: !2182)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !774, line: 853, size: 64, elements: !2183)
!2183 = !{!2184, !2185}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2182, file: !774, line: 858, baseType: !773, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2182, file: !774, line: 859, baseType: !62, size: 32, offset: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2110, file: !2111, line: 186, baseType: !414, size: 64, offset: 3392)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2110, file: !2111, line: 186, baseType: !414, size: 64, offset: 3456)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2110, file: !2111, line: 186, baseType: !414, size: 64, offset: 3520)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2110, file: !2111, line: 186, baseType: !414, size: 64, offset: 3584)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2110, file: !2111, line: 187, baseType: !414, size: 64, offset: 3648)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2110, file: !2111, line: 188, baseType: !414, size: 64, offset: 3712)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2110, file: !2111, line: 189, baseType: !1985, size: 192, offset: 3776)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2110, file: !2111, line: 190, baseType: !42, size: 64, offset: 3968)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2110, file: !2111, line: 190, baseType: !42, size: 64, offset: 4032)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2110, file: !2111, line: 190, baseType: !42, size: 64, offset: 4096)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2110, file: !2111, line: 190, baseType: !42, size: 64, offset: 4160)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2110, file: !2111, line: 191, baseType: !42, size: 64, offset: 4224)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2110, file: !2111, line: 191, baseType: !42, size: 64, offset: 4288)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2110, file: !2111, line: 191, baseType: !42, size: 64, offset: 4352)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2110, file: !2111, line: 191, baseType: !42, size: 64, offset: 4416)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2110, file: !2111, line: 192, baseType: !42, size: 64, offset: 4480)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2110, file: !2111, line: 192, baseType: !42, size: 64, offset: 4544)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2110, file: !2111, line: 192, baseType: !42, size: 64, offset: 4608)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2110, file: !2111, line: 192, baseType: !42, size: 64, offset: 4672)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2110, file: !2111, line: 193, baseType: !42, size: 64, offset: 4736)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2110, file: !2111, line: 193, baseType: !42, size: 64, offset: 4800)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2110, file: !2111, line: 194, baseType: !2208, size: 448, offset: 4864)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2209, line: 12, size: 448, elements: !2210)
!2209 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2210 = !{!2211, !2212, !2213, !2214, !2215, !2216, !2217}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2208, file: !2209, line: 15, baseType: !414, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2208, file: !2209, line: 17, baseType: !414, size: 64, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2208, file: !2209, line: 19, baseType: !414, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2208, file: !2209, line: 21, baseType: !414, size: 64, offset: 192)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2208, file: !2209, line: 29, baseType: !414, size: 64, offset: 256)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2208, file: !2209, line: 35, baseType: !414, size: 64, offset: 320)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2208, file: !2209, line: 44, baseType: !414, size: 64, offset: 384)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2110, file: !2111, line: 202, baseType: !416, size: 64, offset: 5312)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2110, file: !2111, line: 213, baseType: !2220, size: 2048, offset: 5376)
!2220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2221, size: 2048, elements: !2020)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2222, line: 43, size: 128, elements: !2223)
!2222 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2223 = !{!2224, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2221, file: !2222, line: 44, baseType: !41, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2221, file: !2222, line: 45, baseType: !41, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2110, file: !2111, line: 216, baseType: !2227, size: 448, offset: 7424)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2111, line: 30, size: 448, elements: !2228)
!2228 = !{!2229, !2230, !2231, !2232, !2233, !2234, !2235}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2227, file: !2111, line: 31, baseType: !25, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2227, file: !2111, line: 32, baseType: !731, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2227, file: !2111, line: 33, baseType: !42, size: 64, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2227, file: !2111, line: 34, baseType: !414, size: 64, offset: 192)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2227, file: !2111, line: 34, baseType: !414, size: 64, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2227, file: !2111, line: 35, baseType: !42, size: 64, offset: 320)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2227, file: !2111, line: 35, baseType: !42, size: 64, offset: 384)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2110, file: !2111, line: 219, baseType: !2237, size: 64, offset: 7872)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2239, line: 41, size: 3456, elements: !2240)
!2239 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2240 = !{!2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2257, !2258, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2238, file: !2239, line: 47, baseType: !97, size: 16)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2238, file: !2239, line: 48, baseType: !465, size: 32, offset: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2238, file: !2239, line: 54, baseType: !88, size: 8, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2238, file: !2239, line: 55, baseType: !88, size: 8, offset: 72)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2238, file: !2239, line: 73, baseType: !415, size: 64, align: 64, offset: 128)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2238, file: !2239, line: 74, baseType: !415, size: 64, offset: 192)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2238, file: !2239, line: 81, baseType: !415, size: 64, offset: 256)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2238, file: !2239, line: 82, baseType: !415, size: 64, offset: 320)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2238, file: !2239, line: 85, baseType: !415, size: 64, offset: 384)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2238, file: !2239, line: 86, baseType: !415, size: 64, offset: 448)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2238, file: !2239, line: 94, baseType: !415, size: 64, offset: 512)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2238, file: !2239, line: 102, baseType: !415, size: 64, offset: 576)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2238, file: !2239, line: 107, baseType: !2254, size: 256, offset: 640)
!2254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !2255)
!2255 = !{!2256}
!2256 = !DISubrange(count: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2238, file: !2239, line: 108, baseType: !88, size: 8, align: 64, offset: 896)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2238, file: !2239, line: 110, baseType: !2259, size: 24, offset: 904)
!2259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 24, elements: !334)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2238, file: !2239, line: 111, baseType: !465, size: 32, align: 64, offset: 960)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2238, file: !2239, line: 113, baseType: !465, size: 32, offset: 992)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2238, file: !2239, line: 114, baseType: !465, size: 32, offset: 1024)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2238, file: !2239, line: 115, baseType: !465, size: 32, offset: 1056)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2238, file: !2239, line: 117, baseType: !465, size: 32, offset: 1088)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2238, file: !2239, line: 118, baseType: !415, size: 64, align: 64, offset: 1152)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2238, file: !2239, line: 120, baseType: !415, size: 64, offset: 1216)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2238, file: !2239, line: 121, baseType: !415, size: 64, offset: 1280)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2238, file: !2239, line: 122, baseType: !415, size: 64, offset: 1344)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2238, file: !2239, line: 123, baseType: !415, size: 64, offset: 1408)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2238, file: !2239, line: 133, baseType: !415, size: 64, offset: 1472)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2238, file: !2239, line: 137, baseType: !415, size: 64, offset: 1536)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2238, file: !2239, line: 142, baseType: !415, size: 64, offset: 1600)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2238, file: !2239, line: 143, baseType: !415, size: 64, offset: 1664)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2238, file: !2239, line: 146, baseType: !415, size: 64, offset: 1728)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2238, file: !2239, line: 147, baseType: !415, size: 64, offset: 1792)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2238, file: !2239, line: 148, baseType: !415, size: 64, offset: 1856)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2238, file: !2239, line: 149, baseType: !415, size: 64, offset: 1920)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2238, file: !2239, line: 154, baseType: !415, size: 64, offset: 1984)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2238, file: !2239, line: 155, baseType: !415, size: 64, offset: 2048)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2238, file: !2239, line: 156, baseType: !415, size: 64, offset: 2112)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2238, file: !2239, line: 158, baseType: !415, size: 64, offset: 2176)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2238, file: !2239, line: 159, baseType: !415, size: 64, offset: 2240)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2238, file: !2239, line: 162, baseType: !415, size: 64, offset: 2304)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2238, file: !2239, line: 163, baseType: !415, size: 64, offset: 2368)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2238, file: !2239, line: 164, baseType: !415, size: 64, offset: 2432)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2238, file: !2239, line: 167, baseType: !415, size: 64, offset: 2496)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2238, file: !2239, line: 168, baseType: !415, size: 64, offset: 2560)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2238, file: !2239, line: 171, baseType: !415, size: 64, offset: 2624)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2238, file: !2239, line: 172, baseType: !415, size: 64, offset: 2688)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2238, file: !2239, line: 175, baseType: !415, size: 64, offset: 2752)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2238, file: !2239, line: 178, baseType: !415, size: 64, offset: 2816)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2238, file: !2239, line: 179, baseType: !415, size: 64, offset: 2880)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2238, file: !2239, line: 182, baseType: !465, size: 32, offset: 2944)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2238, file: !2239, line: 186, baseType: !415, size: 64, align: 64, offset: 3008)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2238, file: !2239, line: 194, baseType: !415, size: 64, offset: 3072)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2238, file: !2239, line: 195, baseType: !415, size: 64, offset: 3136)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2238, file: !2239, line: 199, baseType: !415, size: 64, offset: 3200)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2238, file: !2239, line: 200, baseType: !415, size: 64, offset: 3264)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2238, file: !2239, line: 203, baseType: !415, size: 64, offset: 3328)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2238, file: !2239, line: 204, baseType: !415, size: 64, offset: 3392)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2110, file: !2111, line: 222, baseType: !7, size: 32, offset: 7936)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2110, file: !2111, line: 223, baseType: !2303, size: 64, offset: 8000)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2111, line: 223, flags: DIFlagFwdDecl)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2110, file: !2111, line: 230, baseType: !500, size: 8, offset: 8064)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2110, file: !2111, line: 231, baseType: !469, size: 16, offset: 8080)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2110, file: !2111, line: 232, baseType: !469, size: 16, offset: 8096)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2110, file: !2111, line: 234, baseType: !1747, size: 64, offset: 8128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2110, file: !2111, line: 237, baseType: !297, size: 256, offset: 8192)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2110, file: !2111, line: 243, baseType: !439, size: 320, offset: 8448)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1463, file: !1464, line: 1111, baseType: !2312, size: 64, offset: 15424)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2111, line: 20, size: 16640, elements: !2314)
!2314 = !{!2315, !2316, !2317, !2318}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2313, file: !2111, line: 21, baseType: !62, size: 32)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2313, file: !2111, line: 22, baseType: !342, size: 32, offset: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2313, file: !2111, line: 23, baseType: !57, size: 192, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2313, file: !2111, line: 24, baseType: !2319, size: 16384, offset: 256)
!2319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2320, size: 16384, elements: !2340)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2122, line: 51, size: 256, elements: !2321)
!2321 = !{!2322}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2320, file: !2122, line: 52, baseType: !2323, size: 256)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2122, line: 37, size: 256, elements: !2324)
!2324 = !{!2325, !2332, !2333, !2339}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2323, file: !2122, line: 39, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2327, line: 83, baseType: !2328)
!2327 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2327, line: 82, baseType: !2330)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{null, !25}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2323, file: !2122, line: 40, baseType: !42, size: 64, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2323, file: !2122, line: 46, baseType: !2334, size: 64, offset: 128)
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2327, line: 86, baseType: !2335)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2327, line: 85, baseType: !2337)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{null}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2323, file: !2122, line: 48, baseType: !2126, size: 64, offset: 192)
!2340 = !{!2341}
!2341 = !DISubrange(count: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1463, file: !1464, line: 1112, baseType: !2126, size: 64, offset: 15488)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1463, file: !1464, line: 1113, baseType: !2126, size: 64, offset: 15552)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1463, file: !1464, line: 1115, baseType: !2126, size: 64, offset: 15616)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1463, file: !1464, line: 1116, baseType: !2121, size: 192, offset: 15680)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1463, file: !1464, line: 1117, baseType: !42, size: 64, offset: 15872)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1463, file: !1464, line: 1118, baseType: !38, size: 64, offset: 15936)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1463, file: !1464, line: 1119, baseType: !7, size: 32, offset: 16000)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1463, file: !1464, line: 1121, baseType: !280, size: 64, offset: 16064)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1463, file: !1464, line: 1125, baseType: !2351, size: 64, offset: 16128)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1464, line: 43, flags: DIFlagFwdDecl)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1463, file: !1464, line: 1127, baseType: !377, size: 32, offset: 16192)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1463, file: !1464, line: 1128, baseType: !7, size: 32, offset: 16224)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1463, file: !1464, line: 1130, baseType: !2356, size: 128, offset: 16256)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2357, line: 37, size: 128, elements: !2358)
!2357 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2358 = !{!2359, !2360, !2361}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2356, file: !2357, line: 38, baseType: !25, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2356, file: !2357, line: 39, baseType: !52, size: 32, offset: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2356, file: !2357, line: 40, baseType: !2362, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2357, line: 24, flags: DIFlagFwdDecl)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1463, file: !1464, line: 1131, baseType: !2365, size: 256, offset: 16384)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2366, line: 12, size: 256, elements: !2367)
!2366 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2367 = !{!2368, !2369, !2370, !2371}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2365, file: !2366, line: 13, baseType: !511, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2365, file: !2366, line: 14, baseType: !42, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2365, file: !2366, line: 15, baseType: !42, size: 64, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2365, file: !2366, line: 16, baseType: !500, size: 8, offset: 192)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1463, file: !1464, line: 1134, baseType: !414, size: 64, offset: 16640)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1463, file: !1464, line: 1135, baseType: !414, size: 64, offset: 16704)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1463, file: !1464, line: 1138, baseType: !62, size: 32, offset: 16768)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1463, file: !1464, line: 1141, baseType: !302, size: 32, offset: 16800)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1463, file: !1464, line: 1143, baseType: !2377, size: 64, offset: 16832)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1464, line: 735, size: 64, elements: !2378)
!2378 = !{!2379}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2377, file: !1464, line: 736, baseType: !2380, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1463, file: !1464, line: 1147, baseType: !1633, size: 128, offset: 16896)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1463, file: !1464, line: 1149, baseType: !1462, size: 64, offset: 17024)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1463, file: !1464, line: 1151, baseType: !2384, size: 64, offset: 17088)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1464, line: 1151, flags: DIFlagFwdDecl)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1463, file: !1464, line: 1188, baseType: !23, size: 64, offset: 17152)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1463, file: !1464, line: 1191, baseType: !2388, size: 64, offset: 17216)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1464, line: 44, flags: DIFlagFwdDecl)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1463, file: !1464, line: 1194, baseType: !2391, size: 64, offset: 17280)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1464, line: 45, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1463, file: !1464, line: 1197, baseType: !2394, size: 64, offset: 17344)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1464, line: 61, flags: DIFlagFwdDecl)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1463, file: !1464, line: 1199, baseType: !2397, size: 64, offset: 17408)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2399, line: 99, size: 128, elements: !2400)
!2399 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2400 = !{!2401, !2402, !2403}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2398, file: !2399, line: 100, baseType: !290, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2398, file: !2399, line: 101, baseType: !52, size: 32, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2398, file: !2399, line: 103, baseType: !29, size: 16, offset: 96)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1463, file: !1464, line: 1202, baseType: !2405, size: 64, offset: 17472)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1464, line: 48, flags: DIFlagFwdDecl)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1463, file: !1464, line: 1205, baseType: !42, size: 64, offset: 17536)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1463, file: !1464, line: 1206, baseType: !2409, size: 64, offset: 17600)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2122, line: 14, baseType: !2411)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2122, line: 12, size: 384, elements: !2412)
!2412 = !{!2413}
!2413 = !DIDerivedType(tag: DW_TAG_member, scope: !2411, file: !2122, line: 13, baseType: !2414, size: 384)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2411, file: !2122, line: 13, size: 384, elements: !2415)
!2415 = !{!2416, !2417, !2418, !2419}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2414, file: !2122, line: 13, baseType: !25, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2414, file: !2122, line: 13, baseType: !25, size: 32, offset: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2414, file: !2122, line: 13, baseType: !25, size: 32, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2414, file: !2122, line: 13, baseType: !2420, size: 256, offset: 128)
!2420 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2421, line: 37, size: 256, elements: !2422)
!2421 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2422 = !{!2423, !2428, !2441, !2447, !2456, !2483, !2488}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2420, file: !2421, line: 42, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2420, file: !2421, line: 39, size: 64, elements: !2425)
!2425 = !{!2426, !2427}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2424, file: !2421, line: 40, baseType: !1962, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2424, file: !2421, line: 41, baseType: !383, size: 32, offset: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2420, file: !2421, line: 50, baseType: !2429, size: 192)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2420, file: !2421, line: 45, size: 192, elements: !2430)
!2430 = !{!2431, !2433, !2434, !2440}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2429, file: !2421, line: 46, baseType: !2432, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !40, line: 95, baseType: !25)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2429, file: !2421, line: 47, baseType: !25, size: 32, offset: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2429, file: !2421, line: 48, baseType: !2435, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2421, line: 11, baseType: !2436)
!2436 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2421, line: 8, size: 64, elements: !2437)
!2437 = !{!2438, !2439}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2436, file: !2421, line: 9, baseType: !25, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2436, file: !2421, line: 10, baseType: !23, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2429, file: !2421, line: 49, baseType: !25, size: 32, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2420, file: !2421, line: 57, baseType: !2442, size: 128)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2420, file: !2421, line: 53, size: 128, elements: !2443)
!2443 = !{!2444, !2445, !2446}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2442, file: !2421, line: 54, baseType: !1962, size: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2442, file: !2421, line: 55, baseType: !383, size: 32, offset: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2442, file: !2421, line: 56, baseType: !2435, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2420, file: !2421, line: 66, baseType: !2448, size: 256)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2420, file: !2421, line: 60, size: 256, elements: !2449)
!2449 = !{!2450, !2451, !2452, !2453, !2455}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2448, file: !2421, line: 61, baseType: !1962, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2448, file: !2421, line: 62, baseType: !383, size: 32, offset: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2448, file: !2421, line: 63, baseType: !25, size: 32, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2448, file: !2421, line: 64, baseType: !2454, size: 64, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !40, line: 94, baseType: !961)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2448, file: !2421, line: 65, baseType: !2454, size: 64, offset: 192)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2420, file: !2421, line: 105, baseType: !2457, size: 256)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2420, file: !2421, line: 69, size: 256, elements: !2458)
!2458 = !{!2459, !2460}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2457, file: !2421, line: 70, baseType: !23, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, scope: !2457, file: !2421, line: 79, baseType: !2461, size: 192, offset: 64)
!2461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2457, file: !2421, line: 79, size: 192, elements: !2462)
!2462 = !{!2463, !2464, !2465, !2472, !2477}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2461, file: !2421, line: 81, baseType: !25, size: 32)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2461, file: !2421, line: 86, baseType: !469, size: 16)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2461, file: !2421, line: 92, baseType: !2466, size: 192)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2461, file: !2421, line: 88, size: 192, elements: !2467)
!2467 = !{!2468, !2470, !2471}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2466, file: !2421, line: 89, baseType: !2469, size: 64)
!2469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 64, elements: !1617)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2466, file: !2421, line: 90, baseType: !23, size: 64, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2466, file: !2421, line: 91, baseType: !23, size: 64, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2461, file: !2421, line: 97, baseType: !2473, size: 96)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2461, file: !2421, line: 94, size: 96, elements: !2474)
!2474 = !{!2475, !2476}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2473, file: !2421, line: 95, baseType: !2469, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2473, file: !2421, line: 96, baseType: !465, size: 32, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2461, file: !2421, line: 103, baseType: !2478, size: 128)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2461, file: !2421, line: 99, size: 128, elements: !2479)
!2479 = !{!2480, !2481, !2482}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2478, file: !2421, line: 100, baseType: !42, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2478, file: !2421, line: 101, baseType: !465, size: 32, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2478, file: !2421, line: 102, baseType: !465, size: 32, offset: 96)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2420, file: !2421, line: 111, baseType: !2484, size: 128)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2420, file: !2421, line: 108, size: 128, elements: !2485)
!2485 = !{!2486, !2487}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2484, file: !2421, line: 109, baseType: !731, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2484, file: !2421, line: 110, baseType: !25, size: 32, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2420, file: !2421, line: 118, baseType: !2489, size: 128)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2420, file: !2421, line: 114, size: 128, elements: !2490)
!2490 = !{!2491, !2492, !2493}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2489, file: !2421, line: 115, baseType: !23, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2489, file: !2421, line: 116, baseType: !25, size: 32, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2489, file: !2421, line: 117, baseType: !7, size: 32, offset: 96)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1463, file: !1464, line: 1208, baseType: !2208, size: 448, offset: 17664)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1463, file: !1464, line: 1215, baseType: !414, size: 64, offset: 18112)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1463, file: !1464, line: 1217, baseType: !414, size: 64, offset: 18176)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1463, file: !1464, line: 1219, baseType: !414, size: 64, offset: 18240)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1463, file: !1464, line: 1223, baseType: !2499, size: 64, offset: 18304)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2500, line: 99, baseType: !2501)
!2500 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2500, line: 99, size: 64, elements: !2502)
!2502 = !{!2503}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2501, file: !2500, line: 99, baseType: !1698, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1463, file: !1464, line: 1225, baseType: !773, size: 32, offset: 18368)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1463, file: !1464, line: 1226, baseType: !25, size: 32, offset: 18400)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1463, file: !1464, line: 1227, baseType: !25, size: 32, offset: 18432)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1463, file: !1464, line: 1231, baseType: !2078, size: 64, offset: 18496)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1463, file: !1464, line: 1233, baseType: !100, size: 128, offset: 18560)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1463, file: !1464, line: 1240, baseType: !2510, size: 64, offset: 18688)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1464, line: 62, flags: DIFlagFwdDecl)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1463, file: !1464, line: 1242, baseType: !2513, size: 64, offset: 18752)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1464, line: 1242, flags: DIFlagFwdDecl)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1463, file: !1464, line: 1244, baseType: !100, size: 128, offset: 18816)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1463, file: !1464, line: 1245, baseType: !2517, size: 64, offset: 18944)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1464, line: 51, flags: DIFlagFwdDecl)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1463, file: !1464, line: 1246, baseType: !297, size: 256, offset: 19008)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1463, file: !1464, line: 1247, baseType: !7, size: 32, offset: 19264)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1463, file: !1464, line: 1250, baseType: !2522, size: 64, offset: 19328)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1464, line: 57, flags: DIFlagFwdDecl)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1463, file: !1464, line: 1251, baseType: !297, size: 256, offset: 19392)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1463, file: !1464, line: 1252, baseType: !100, size: 128, offset: 19648)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1463, file: !1464, line: 1259, baseType: !2527, size: 64, offset: 19776)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1464, line: 54, flags: DIFlagFwdDecl)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1463, file: !1464, line: 1260, baseType: !469, size: 16, offset: 19840)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1463, file: !1464, line: 1261, baseType: !469, size: 16, offset: 19856)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1463, file: !1464, line: 1314, baseType: !2532, size: 64, offset: 19904)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2534, line: 62, size: 256, align: 256, elements: !2535)
!2534 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2535 = !{!2536, !2537, !2538, !2539, !2540, !2541, !2542}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2533, file: !2534, line: 75, baseType: !465, size: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2533, file: !2534, line: 90, baseType: !465, size: 32, offset: 32)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2533, file: !2534, line: 112, baseType: !415, size: 64, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2533, file: !2534, line: 132, baseType: !465, size: 32, offset: 128)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2533, file: !2534, line: 140, baseType: !465, size: 32, offset: 160)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2533, file: !2534, line: 149, baseType: !465, size: 32, offset: 192)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2533, file: !2534, line: 154, baseType: !2543, offset: 224)
!2543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, elements: !373)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1463, file: !1464, line: 1315, baseType: !464, size: 32, offset: 19968)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1463, file: !1464, line: 1316, baseType: !464, size: 32, offset: 20000)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1463, file: !1464, line: 1321, baseType: !42, size: 64, offset: 20032)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1463, file: !1464, line: 1325, baseType: !25, size: 32, offset: 20096)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1463, file: !1464, line: 1326, baseType: !25, size: 32, offset: 20128)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1463, file: !1464, line: 1327, baseType: !25, size: 32, offset: 20160)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1463, file: !1464, line: 1328, baseType: !25, size: 32, offset: 20192)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1463, file: !1464, line: 1329, baseType: !277, size: 128, align: 64, offset: 20224)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1463, file: !1464, line: 1332, baseType: !2553, size: 128, offset: 20352)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2554, line: 51, size: 128, elements: !2555)
!2554 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2555 = !{!2556, !2561, !2562}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2553, file: !2554, line: 60, baseType: !2557, size: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2558, line: 7, size: 64, elements: !2559)
!2558 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2559 = !{!2560}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2557, file: !2558, line: 12, baseType: !1695, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2553, file: !2554, line: 63, baseType: !500, size: 8, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2553, file: !2554, line: 70, baseType: !500, size: 8, offset: 72)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1463, file: !1464, line: 1335, baseType: !2564, size: 64, offset: 20480)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1464, line: 59, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1463, file: !1464, line: 1337, baseType: !2567, size: 128, offset: 20544)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2554, line: 39, size: 128, elements: !2568)
!2568 = !{!2569, !2833, !2834}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2567, file: !2554, line: 40, baseType: !2570, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1749, line: 74, size: 512, align: 128, elements: !2572)
!2572 = !{!2573, !2574, !2827, !2832}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2571, file: !1749, line: 75, baseType: !42, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, scope: !2571, file: !1749, line: 83, baseType: !2575, size: 320, offset: 64)
!2575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2571, file: !1749, line: 83, size: 320, elements: !2576)
!2576 = !{!2577, !2801, !2815, !2819, !2826}
!2577 = !DIDerivedType(tag: DW_TAG_member, scope: !2575, file: !1749, line: 84, baseType: !2578, size: 320)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2575, file: !1749, line: 84, size: 320, elements: !2579)
!2579 = !{!2580, !2591, !2795, !2800}
!2580 = !DIDerivedType(tag: DW_TAG_member, scope: !2578, file: !1749, line: 90, baseType: !2581, size: 128)
!2581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2578, file: !1749, line: 90, size: 128, elements: !2582)
!2582 = !{!2583, !2584, !2589, !2590}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2581, file: !1749, line: 91, baseType: !100, size: 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, scope: !2581, file: !1749, line: 94, baseType: !2585, size: 128)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2581, file: !1749, line: 94, size: 128, elements: !2586)
!2586 = !{!2587, !2588}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2585, file: !1749, line: 96, baseType: !23, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2585, file: !1749, line: 98, baseType: !7, size: 32, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2581, file: !1749, line: 102, baseType: !100, size: 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2581, file: !1749, line: 103, baseType: !100, size: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2578, file: !1749, line: 106, baseType: !2592, size: 64, offset: 128)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !111, line: 472, size: 1536, align: 64, elements: !2594)
!2594 = !{!2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2787, !2788, !2789, !2792, !2793, !2794}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2593, file: !111, line: 473, baseType: !807, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2593, file: !111, line: 474, baseType: !1006, size: 128, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2593, file: !111, line: 475, baseType: !439, size: 320, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2593, file: !111, line: 476, baseType: !180, size: 32, offset: 512)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2593, file: !111, line: 477, baseType: !52, size: 32, offset: 544)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2593, file: !111, line: 482, baseType: !1633, size: 128, offset: 576)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2593, file: !111, line: 483, baseType: !42, size: 64, offset: 704)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2593, file: !111, line: 484, baseType: !42, size: 64, offset: 768)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2593, file: !111, line: 485, baseType: !2604, size: 64, offset: 832)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2606)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !111, line: 404, size: 1280, elements: !2607)
!2607 = !{!2608, !2612, !2682, !2686, !2690, !2696, !2702, !2706, !2711, !2715, !2719, !2723, !2751, !2755, !2759, !2763, !2768, !2772, !2779, !2783}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2606, file: !111, line: 405, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!25, !2570, !1086}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2606, file: !111, line: 406, baseType: !2613, size: 64, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!25, !264, !2616}
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1749, line: 293, size: 1536, elements: !2618)
!2618 = !{!2619, !2649, !2663}
!2619 = !DIDerivedType(tag: DW_TAG_member, scope: !2617, file: !1749, line: 295, baseType: !2620, size: 512)
!2620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2617, file: !1749, line: 295, size: 512, elements: !2621)
!2621 = !{!2622, !2648}
!2622 = !DIDerivedType(tag: DW_TAG_member, scope: !2620, file: !1749, line: 296, baseType: !2623, size: 448)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2620, file: !1749, line: 296, size: 448, elements: !2624)
!2624 = !{!2625, !2626, !2635, !2636, !2637, !2646, !2647}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2623, file: !1749, line: 298, baseType: !42, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, scope: !2623, file: !1749, line: 299, baseType: !2627, size: 128, offset: 64)
!2627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2623, file: !1749, line: 299, size: 128, elements: !2628)
!2628 = !{!2629, !2630}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2627, file: !1749, line: 300, baseType: !100, size: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, scope: !2627, file: !1749, line: 302, baseType: !2631, size: 128)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2627, file: !1749, line: 302, size: 128, elements: !2632)
!2632 = !{!2633, !2634}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2631, file: !1749, line: 303, baseType: !23, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2631, file: !1749, line: 305, baseType: !7, size: 32, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2623, file: !1749, line: 310, baseType: !2592, size: 64, offset: 192)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2623, file: !1749, line: 311, baseType: !42, size: 64, offset: 256)
!2637 = !DIDerivedType(tag: DW_TAG_member, scope: !2623, file: !1749, line: 312, baseType: !2638, size: 64, offset: 320)
!2638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2623, file: !1749, line: 312, size: 64, elements: !2639)
!2639 = !{!2640, !2641}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2638, file: !1749, line: 313, baseType: !23, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2638, file: !1749, line: 314, baseType: !2642, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1749, line: 257, baseType: !2643)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1749, line: 255, size: 64, elements: !2644)
!2644 = !{!2645}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2643, file: !1749, line: 256, baseType: !42, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2623, file: !1749, line: 316, baseType: !52, size: 32, offset: 384)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2623, file: !1749, line: 317, baseType: !52, size: 32, offset: 416)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2620, file: !1749, line: 323, baseType: !2571, size: 512, align: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, scope: !2617, file: !1749, line: 325, baseType: !2650, size: 512, offset: 512)
!2650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2617, file: !1749, line: 325, size: 512, elements: !2651)
!2651 = !{!2652, !2662}
!2652 = !DIDerivedType(tag: DW_TAG_member, scope: !2650, file: !1749, line: 326, baseType: !2653, size: 320)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2650, file: !1749, line: 326, size: 320, elements: !2654)
!2654 = !{!2655, !2656, !2657, !2658, !2659, !2660, !2661}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2653, file: !1749, line: 327, baseType: !42, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2653, file: !1749, line: 328, baseType: !42, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2653, file: !1749, line: 329, baseType: !42, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2653, file: !1749, line: 331, baseType: !52, size: 32, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2653, file: !1749, line: 332, baseType: !52, size: 32, offset: 224)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2653, file: !1749, line: 333, baseType: !52, size: 32, offset: 256)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2653, file: !1749, line: 335, baseType: !7, size: 32, offset: 288)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2650, file: !1749, line: 339, baseType: !2571, size: 512, align: 128)
!2663 = !DIDerivedType(tag: DW_TAG_member, scope: !2617, file: !1749, line: 341, baseType: !2664, size: 512, offset: 1024)
!2664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2617, file: !1749, line: 341, size: 512, elements: !2665)
!2665 = !{!2666, !2675, !2681}
!2666 = !DIDerivedType(tag: DW_TAG_member, scope: !2664, file: !1749, line: 342, baseType: !2667, size: 384)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2664, file: !1749, line: 342, size: 384, elements: !2668)
!2668 = !{!2669, !2670, !2671, !2672, !2673, !2674}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2667, file: !1749, line: 343, baseType: !42, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2667, file: !1749, line: 344, baseType: !42, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2667, file: !1749, line: 346, baseType: !23, size: 64, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2667, file: !1749, line: 347, baseType: !23, size: 64, offset: 192)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2667, file: !1749, line: 348, baseType: !23, size: 64, offset: 256)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2667, file: !1749, line: 349, baseType: !23, size: 64, offset: 320)
!2675 = !DIDerivedType(tag: DW_TAG_member, scope: !2664, file: !1749, line: 352, baseType: !2676, size: 256)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2664, file: !1749, line: 352, size: 256, elements: !2677)
!2677 = !{!2678, !2679, !2680}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2676, file: !1749, line: 353, baseType: !42, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2676, file: !1749, line: 354, baseType: !42, size: 64, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2676, file: !1749, line: 356, baseType: !100, size: 128, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2664, file: !1749, line: 359, baseType: !2571, size: 512, align: 128)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2606, file: !111, line: 409, baseType: !2683, size: 64, offset: 128)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!25, !2592, !1086}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2606, file: !111, line: 412, baseType: !2687, size: 64, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!500, !2592, !2616}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2606, file: !111, line: 414, baseType: !2691, size: 64, offset: 256)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{null, !2694}
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !111, line: 310, flags: DIFlagFwdDecl)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2606, file: !111, line: 416, baseType: !2697, size: 64, offset: 320)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!25, !264, !2592, !44, !7, !2700, !2701}
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2606, file: !111, line: 419, baseType: !2703, size: 64, offset: 384)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!25, !264, !2592, !44, !7, !7, !2570, !23}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2606, file: !111, line: 424, baseType: !2707, size: 64, offset: 448)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!2710, !2592, !2710}
!2710 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !28, line: 131, baseType: !414)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2606, file: !111, line: 425, baseType: !2712, size: 64, offset: 512)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{null, !2616, !38, !38}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2606, file: !111, line: 426, baseType: !2716, size: 64, offset: 576)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!500, !2616, !180}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2606, file: !111, line: 427, baseType: !2720, size: 64, offset: 640)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{null, !2616}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2606, file: !111, line: 428, baseType: !2724, size: 64, offset: 704)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!959, !2727, !2749}
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !111, line: 373, size: 384, elements: !2729)
!2729 = !{!2730, !2731, !2732, !2736, !2737, !2738, !2739}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2728, file: !111, line: 374, baseType: !264, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2728, file: !111, line: 375, baseType: !44, size: 64, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2728, file: !111, line: 376, baseType: !2733, size: 64, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{null, !2727, !731}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2728, file: !111, line: 377, baseType: !23, size: 64, offset: 192)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2728, file: !111, line: 378, baseType: !25, size: 32, offset: 256)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2728, file: !111, line: 379, baseType: !96, size: 16, offset: 288)
!2739 = !DIDerivedType(tag: DW_TAG_member, scope: !2728, file: !111, line: 380, baseType: !2740, size: 64, offset: 320)
!2740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2728, file: !111, line: 380, size: 64, elements: !2741)
!2741 = !{!2742, !2745}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2740, file: !111, line: 386, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !111, line: 386, flags: DIFlagFwdDecl)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2740, file: !111, line: 395, baseType: !2746, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!959, !23}
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !111, line: 69, flags: DIFlagFwdDecl)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2606, file: !111, line: 433, baseType: !2752, size: 64, offset: 768)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!25, !2592, !2616, !2616, !132}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2606, file: !111, line: 435, baseType: !2756, size: 64, offset: 832)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!25, !2616}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2606, file: !111, line: 436, baseType: !2760, size: 64, offset: 896)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!500, !2616, !38, !38}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2606, file: !111, line: 438, baseType: !2764, size: 64, offset: 960)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{null, !2616, !2767, !2767}
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2606, file: !111, line: 439, baseType: !2769, size: 64, offset: 1024)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!25, !2592, !2570}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2606, file: !111, line: 442, baseType: !2773, size: 64, offset: 1088)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!25, !2776, !264, !2778}
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !111, line: 66, flags: DIFlagFwdDecl)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2606, file: !111, line: 444, baseType: !2780, size: 64, offset: 1152)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{null, !264}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2606, file: !111, line: 445, baseType: !2784, size: 64, offset: 1216)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!25, !2727, !2749}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2593, file: !111, line: 486, baseType: !42, size: 64, offset: 896)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2593, file: !111, line: 487, baseType: !439, size: 320, offset: 960)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2593, file: !111, line: 488, baseType: !2790, size: 32, offset: 1280)
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2791, line: 8, baseType: !464)
!2791 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2593, file: !111, line: 489, baseType: !62, size: 32, offset: 1312)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2593, file: !111, line: 490, baseType: !100, size: 128, offset: 1344)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2593, file: !111, line: 491, baseType: !23, size: 64, offset: 1472)
!2795 = !DIDerivedType(tag: DW_TAG_member, scope: !2578, file: !1749, line: 107, baseType: !2796, size: 64, offset: 192)
!2796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2578, file: !1749, line: 107, size: 64, elements: !2797)
!2797 = !{!2798, !2799}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2796, file: !1749, line: 108, baseType: !42, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2796, file: !1749, line: 109, baseType: !42, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2578, file: !1749, line: 117, baseType: !42, size: 64, offset: 256)
!2801 = !DIDerivedType(tag: DW_TAG_member, scope: !2575, file: !1749, line: 119, baseType: !2802, size: 320)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2575, file: !1749, line: 119, size: 320, elements: !2803)
!2803 = !{!2804, !2805, !2808, !2809, !2810}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2802, file: !1749, line: 124, baseType: !42, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2802, file: !1749, line: 125, baseType: !2806, size: 64, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1749, line: 125, flags: DIFlagFwdDecl)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2802, file: !1749, line: 126, baseType: !42, size: 64, offset: 128)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2802, file: !1749, line: 127, baseType: !42, size: 64, offset: 192)
!2810 = !DIDerivedType(tag: DW_TAG_member, scope: !2802, file: !1749, line: 128, baseType: !2811, size: 64, offset: 256)
!2811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2802, file: !1749, line: 128, size: 64, elements: !2812)
!2812 = !{!2813, !2814}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2811, file: !1749, line: 133, baseType: !42, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2811, file: !1749, line: 138, baseType: !290, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, scope: !2575, file: !1749, line: 141, baseType: !2816, size: 64)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2575, file: !1749, line: 141, size: 64, elements: !2817)
!2817 = !{!2818}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2816, file: !1749, line: 142, baseType: !42, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, scope: !2575, file: !1749, line: 144, baseType: !2820, size: 128)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2575, file: !1749, line: 144, size: 128, elements: !2821)
!2821 = !{!2822, !2825}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2820, file: !1749, line: 146, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1749, line: 146, flags: DIFlagFwdDecl)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2820, file: !1749, line: 147, baseType: !23, size: 64, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2575, file: !1749, line: 161, baseType: !277, size: 128, align: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, scope: !2571, file: !1749, line: 164, baseType: !2828, size: 32, offset: 384)
!2828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2571, file: !1749, line: 164, size: 32, elements: !2829)
!2829 = !{!2830, !2831}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2828, file: !1749, line: 169, baseType: !52, size: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2828, file: !1749, line: 177, baseType: !7, size: 32)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2571, file: !1749, line: 181, baseType: !52, size: 32, offset: 416)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2567, file: !2554, line: 42, baseType: !465, size: 32, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2567, file: !2554, line: 43, baseType: !465, size: 32, offset: 96)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1463, file: !1464, line: 1340, baseType: !2836, size: 64, offset: 20672)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1464, line: 69, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1463, file: !1464, line: 1351, baseType: !25, size: 32, offset: 20736)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1463, file: !1464, line: 1352, baseType: !25, size: 32, offset: 20768)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1463, file: !1464, line: 1354, baseType: !42, size: 64, offset: 20800)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1463, file: !1464, line: 1364, baseType: !414, size: 64, offset: 20864)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1463, file: !1464, line: 1365, baseType: !414, size: 64, offset: 20928)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1463, file: !1464, line: 1412, baseType: !42, size: 64, offset: 20992)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1463, file: !1464, line: 1453, baseType: !2845, size: 64, offset: 21056)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1464, line: 1453, flags: DIFlagFwdDecl)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1463, file: !1464, line: 1457, baseType: !2848, size: 64, offset: 21120)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !140, line: 61, size: 576, elements: !2850)
!2850 = !{!2851, !2852, !2871, !2874, !2875, !2908, !2918}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2849, file: !140, line: 62, baseType: !139, size: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, scope: !2849, file: !140, line: 64, baseType: !2853, size: 192, offset: 64)
!2853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2849, file: !140, line: 64, size: 192, elements: !2854)
!2854 = !{!2855, !2866}
!2855 = !DIDerivedType(tag: DW_TAG_member, scope: !2853, file: !140, line: 65, baseType: !2856, size: 192)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2853, file: !140, line: 65, size: 192, elements: !2857)
!2857 = !{!2858, !2865}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2856, file: !140, line: 66, baseType: !2859, size: 128)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2860, line: 50, size: 128, elements: !2861)
!2860 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2861 = !{!2862, !2863, !2864}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2859, file: !2860, line: 52, baseType: !42, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2859, file: !2860, line: 54, baseType: !7, size: 32, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2859, file: !2860, line: 55, baseType: !7, size: 32, offset: 96)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2856, file: !140, line: 67, baseType: !42, size: 64, offset: 128)
!2866 = !DIDerivedType(tag: DW_TAG_member, scope: !2853, file: !140, line: 70, baseType: !2867, size: 192)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2853, file: !140, line: 70, size: 192, elements: !2868)
!2868 = !{!2869, !2870}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2867, file: !140, line: 71, baseType: !277, size: 128, align: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2867, file: !140, line: 72, baseType: !42, size: 64, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2849, file: !140, line: 76, baseType: !2872, size: 64, offset: 256)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !140, line: 76, flags: DIFlagFwdDecl)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2849, file: !140, line: 77, baseType: !42, size: 64, offset: 320)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2849, file: !140, line: 79, baseType: !2876, size: 64, offset: 384)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2860, line: 25, size: 256, elements: !2878)
!2878 = !{!2879, !2885, !2889}
!2879 = !DIDerivedType(tag: DW_TAG_member, scope: !2877, file: !2860, line: 26, baseType: !2880, size: 128)
!2880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2877, file: !2860, line: 26, size: 128, elements: !2881)
!2881 = !{!2882, !2884}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2880, file: !2860, line: 27, baseType: !2883, size: 128)
!2883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 128, elements: !2020)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2880, file: !2860, line: 28, baseType: !2883, size: 128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2877, file: !2860, line: 31, baseType: !2886, size: 64, offset: 128)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2888)
!2888 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2860, line: 23, flags: DIFlagFwdDecl)
!2889 = !DIDerivedType(tag: DW_TAG_member, scope: !2877, file: !2860, line: 33, baseType: !2890, size: 64, offset: 192)
!2890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2877, file: !2860, line: 33, size: 64, elements: !2891)
!2891 = !{!2892, !2898, !2903}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2890, file: !2860, line: 38, baseType: !2893, size: 64)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2890, file: !2860, line: 34, size: 64, elements: !2894)
!2894 = !{!2895, !2896, !2897}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2893, file: !2860, line: 35, baseType: !431, size: 32)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2893, file: !2860, line: 36, baseType: !86, size: 8, offset: 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2893, file: !2860, line: 37, baseType: !86, size: 8, offset: 40)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2890, file: !2860, line: 42, baseType: !2899, size: 16)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2890, file: !2860, line: 39, size: 16, elements: !2900)
!2900 = !{!2901, !2902}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2899, file: !2860, line: 40, baseType: !86, size: 8)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2899, file: !2860, line: 41, baseType: !86, size: 8, offset: 8)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2890, file: !2860, line: 46, baseType: !2904, size: 16)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2890, file: !2860, line: 43, size: 16, elements: !2905)
!2905 = !{!2906, !2907}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2904, file: !2860, line: 44, baseType: !86, size: 8)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2904, file: !2860, line: 45, baseType: !86, size: 8, offset: 8)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2849, file: !140, line: 81, baseType: !2909, size: 64, offset: 448)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !140, line: 85, size: 384, elements: !2911)
!2911 = !{!2912, !2913, !2914, !2915, !2916, !2917}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2910, file: !140, line: 86, baseType: !2872, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2910, file: !140, line: 87, baseType: !42, size: 64, offset: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2910, file: !140, line: 88, baseType: !42, size: 64, offset: 128)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2910, file: !140, line: 89, baseType: !42, size: 64, offset: 192)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2910, file: !140, line: 90, baseType: !500, size: 8, offset: 256)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2910, file: !140, line: 92, baseType: !2909, size: 64, offset: 320)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2849, file: !140, line: 82, baseType: !7, size: 32, offset: 512)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1463, file: !1464, line: 1463, baseType: !2920, offset: 21184)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1464, line: 739, elements: !1055)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1463, file: !1464, line: 1470, baseType: !277, size: 128, align: 64, offset: 21184)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1463, file: !1464, line: 1471, baseType: !342, size: 32, offset: 21312)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1463, file: !1464, line: 1472, baseType: !25, size: 32, offset: 21344)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1463, file: !1464, line: 1474, baseType: !1462, size: 64, offset: 21376)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1463, file: !1464, line: 1475, baseType: !2926, size: 320, offset: 21440)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2927, line: 11, size: 320, elements: !2928)
!2927 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2928 = !{!2929, !2930, !2931, !2936}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2926, file: !2927, line: 16, baseType: !355, size: 128)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2926, file: !2927, line: 17, baseType: !42, size: 64, offset: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2926, file: !2927, line: 18, baseType: !2932, size: 64, offset: 192)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{null, !2935}
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2926, file: !2927, line: 19, baseType: !464, size: 32, offset: 256)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1463, file: !1464, line: 1478, baseType: !2938, size: 64, offset: 21760)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1464, line: 1478, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1463, file: !1464, line: 1482, baseType: !342, size: 32, offset: 21824)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1463, file: !1464, line: 1489, baseType: !23, size: 64, offset: 21888)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1463, file: !1464, line: 1504, baseType: !23, size: 64, offset: 21952)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1463, file: !1464, line: 1505, baseType: !415, size: 64, offset: 22016)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1463, file: !1464, line: 1506, baseType: !414, size: 64, offset: 22080)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1463, file: !1464, line: 1507, baseType: !415, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1463, file: !1464, line: 1508, baseType: !415, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1463, file: !1464, line: 1509, baseType: !415, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1463, file: !1464, line: 1510, baseType: !277, size: 128, align: 64, offset: 22208)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1463, file: !1464, line: 1511, baseType: !25, size: 32, offset: 22336)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1463, file: !1464, line: 1515, baseType: !2951, size: 64, offset: 22400)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !272, line: 56, size: 64, elements: !2952)
!2952 = !{!2953}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2951, file: !272, line: 57, baseType: !275, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1463, file: !1464, line: 1518, baseType: !2951, size: 64, offset: 22464)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1463, file: !1464, line: 1528, baseType: !277, size: 128, align: 64, offset: 22528)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1463, file: !1464, line: 1552, baseType: !2957, size: 35328, offset: 23040)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2958, line: 430, size: 35328, elements: !2959)
!2958 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2959 = !{!2960, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2989, !2990, !2991, !2992, !2993, !2994, !2997, !2998, !2999, !3000}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2957, file: !2958, line: 432, baseType: !2961, size: 192)
!2961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2962, size: 192, elements: !334)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2963, line: 16, size: 64, elements: !2964)
!2963 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2964 = !{!2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2962, file: !2963, line: 17, baseType: !96, size: 16)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2962, file: !2963, line: 18, baseType: !96, size: 16, offset: 16)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2962, file: !2963, line: 19, baseType: !96, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2962, file: !2963, line: 19, baseType: !96, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2962, file: !2963, line: 19, baseType: !96, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2962, file: !2963, line: 19, baseType: !96, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2962, file: !2963, line: 19, baseType: !96, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2962, file: !2963, line: 20, baseType: !96, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2962, file: !2963, line: 20, baseType: !96, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2962, file: !2963, line: 20, baseType: !96, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2962, file: !2963, line: 20, baseType: !96, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2962, file: !2963, line: 20, baseType: !96, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2962, file: !2963, line: 20, baseType: !96, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2957, file: !2958, line: 436, baseType: !42, size: 64, offset: 192)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2957, file: !2958, line: 440, baseType: !29, size: 16, offset: 256)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2957, file: !2958, line: 441, baseType: !29, size: 16, offset: 272)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2957, file: !2958, line: 442, baseType: !29, size: 16, offset: 288)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2957, file: !2958, line: 443, baseType: !29, size: 16, offset: 304)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2957, file: !2958, line: 447, baseType: !42, size: 64, offset: 320)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2957, file: !2958, line: 448, baseType: !42, size: 64, offset: 384)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2957, file: !2958, line: 459, baseType: !2986, size: 256, offset: 448)
!2986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2987, size: 256, elements: !360)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2958, line: 428, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2957, file: !2958, line: 461, baseType: !42, size: 64, offset: 704)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2957, file: !2958, line: 463, baseType: !42, size: 64, offset: 768)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2957, file: !2958, line: 465, baseType: !42, size: 64, offset: 832)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2957, file: !2958, line: 466, baseType: !42, size: 64, offset: 896)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2957, file: !2958, line: 467, baseType: !42, size: 64, offset: 960)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2957, file: !2958, line: 473, baseType: !2995, size: 64, offset: 1024)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2958, line: 10, flags: DIFlagFwdDecl)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2957, file: !2958, line: 480, baseType: !42, size: 64, offset: 1088)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2957, file: !2958, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2957, file: !2958, line: 491, baseType: !464, size: 32, offset: 1184)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2957, file: !2958, line: 501, baseType: !3001, size: 33792, offset: 1536)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3002, line: 448, size: 33792, elements: !3003)
!3002 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3003 = !{!3004, !3005, !3006, !3168, !3169, !3175, !3176}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3001, file: !3002, line: 461, baseType: !7, size: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3001, file: !3002, line: 468, baseType: !42, size: 64, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3001, file: !3002, line: 476, baseType: !3007, size: 64, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3002, line: 356, size: 33280, align: 512, elements: !3009)
!3009 = !{!3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3008, file: !3002, line: 358, baseType: !7, size: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3008, file: !3002, line: 361, baseType: !7, size: 32, offset: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3008, file: !3002, line: 364, baseType: !414, size: 64, offset: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3008, file: !3002, line: 367, baseType: !414, size: 64, offset: 128)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3008, file: !3002, line: 370, baseType: !414, size: 64, offset: 192)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3008, file: !3002, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3008, file: !3002, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3008, file: !3002, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3008, file: !3002, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3008, file: !3002, line: 397, baseType: !3020, size: 32768, offset: 512)
!3020 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3002, line: 348, size: 32768, elements: !3021)
!3021 = !{!3022, !3037, !3074, !3151, !3164}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3020, file: !3002, line: 349, baseType: !3023, size: 896)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3002, line: 12, size: 896, elements: !3024)
!3024 = !{!3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3036}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3023, file: !3002, line: 13, baseType: !464, size: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3023, file: !3002, line: 14, baseType: !464, size: 32, offset: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3023, file: !3002, line: 15, baseType: !464, size: 32, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3023, file: !3002, line: 16, baseType: !464, size: 32, offset: 96)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3023, file: !3002, line: 17, baseType: !464, size: 32, offset: 128)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3023, file: !3002, line: 18, baseType: !464, size: 32, offset: 160)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3023, file: !3002, line: 19, baseType: !464, size: 32, offset: 192)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3023, file: !3002, line: 22, baseType: !3033, size: 640, offset: 224)
!3033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 640, elements: !3034)
!3034 = !{!3035}
!3035 = !DISubrange(count: 20)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3023, file: !3002, line: 25, baseType: !464, size: 32, offset: 864)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3020, file: !3002, line: 350, baseType: !3038, size: 4096, align: 128)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3002, line: 34, size: 4096, align: 128, elements: !3039)
!3039 = !{!3040, !3041, !3042, !3043, !3044, !3059, !3060, !3061, !3063, !3065, !3069}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3038, file: !3002, line: 35, baseType: !96, size: 16)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3038, file: !3002, line: 36, baseType: !96, size: 16, offset: 16)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3038, file: !3002, line: 37, baseType: !96, size: 16, offset: 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3038, file: !3002, line: 38, baseType: !96, size: 16, offset: 48)
!3044 = !DIDerivedType(tag: DW_TAG_member, scope: !3038, file: !3002, line: 39, baseType: !3045, size: 128, offset: 64)
!3045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3038, file: !3002, line: 39, size: 128, elements: !3046)
!3046 = !{!3047, !3052}
!3047 = !DIDerivedType(tag: DW_TAG_member, scope: !3045, file: !3002, line: 40, baseType: !3048, size: 128)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3045, file: !3002, line: 40, size: 128, elements: !3049)
!3049 = !{!3050, !3051}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3048, file: !3002, line: 41, baseType: !414, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3048, file: !3002, line: 42, baseType: !414, size: 64, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, scope: !3045, file: !3002, line: 44, baseType: !3053, size: 128)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3045, file: !3002, line: 44, size: 128, elements: !3054)
!3054 = !{!3055, !3056, !3057, !3058}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3053, file: !3002, line: 45, baseType: !464, size: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3053, file: !3002, line: 46, baseType: !464, size: 32, offset: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3053, file: !3002, line: 47, baseType: !464, size: 32, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3053, file: !3002, line: 48, baseType: !464, size: 32, offset: 96)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3038, file: !3002, line: 51, baseType: !464, size: 32, offset: 192)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3038, file: !3002, line: 52, baseType: !464, size: 32, offset: 224)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3038, file: !3002, line: 55, baseType: !3062, size: 1024, offset: 256)
!3062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 1024, elements: !2255)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3038, file: !3002, line: 58, baseType: !3064, size: 2048, offset: 1280)
!3064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 2048, elements: !2340)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3038, file: !3002, line: 60, baseType: !3066, size: 384, offset: 3328)
!3066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 384, elements: !3067)
!3067 = !{!3068}
!3068 = !DISubrange(count: 12)
!3069 = !DIDerivedType(tag: DW_TAG_member, scope: !3038, file: !3002, line: 62, baseType: !3070, size: 384, offset: 3712)
!3070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3038, file: !3002, line: 62, size: 384, elements: !3071)
!3071 = !{!3072, !3073}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3070, file: !3002, line: 63, baseType: !3066, size: 384)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3070, file: !3002, line: 64, baseType: !3066, size: 384)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3020, file: !3002, line: 351, baseType: !3075, size: 1088)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3002, line: 79, size: 1088, elements: !3076)
!3076 = !{!3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3150}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3075, file: !3002, line: 80, baseType: !464, size: 32)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3075, file: !3002, line: 81, baseType: !464, size: 32, offset: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3075, file: !3002, line: 82, baseType: !464, size: 32, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3075, file: !3002, line: 83, baseType: !464, size: 32, offset: 96)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3075, file: !3002, line: 84, baseType: !464, size: 32, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3075, file: !3002, line: 85, baseType: !464, size: 32, offset: 160)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3075, file: !3002, line: 86, baseType: !464, size: 32, offset: 192)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3075, file: !3002, line: 88, baseType: !3033, size: 640, offset: 224)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3075, file: !3002, line: 89, baseType: !86, size: 8, offset: 864)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3075, file: !3002, line: 90, baseType: !86, size: 8, offset: 872)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3075, file: !3002, line: 91, baseType: !86, size: 8, offset: 880)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3075, file: !3002, line: 92, baseType: !86, size: 8, offset: 888)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3075, file: !3002, line: 93, baseType: !86, size: 8, offset: 896)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3075, file: !3002, line: 94, baseType: !86, size: 8, offset: 904)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3075, file: !3002, line: 95, baseType: !3092, size: 64, offset: 960)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3094, line: 11, size: 128, elements: !3095)
!3094 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3095 = !{!3096, !3097}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3093, file: !3094, line: 12, baseType: !731, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3093, file: !3094, line: 13, baseType: !3098, size: 64, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3100, line: 103, size: 1344, elements: !3101)
!3100 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3101 = !{!3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3130, !3131, !3132}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3099, file: !3100, line: 109, baseType: !42, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3099, file: !3100, line: 110, baseType: !42, size: 64, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3099, file: !3100, line: 111, baseType: !42, size: 64, offset: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3099, file: !3100, line: 112, baseType: !42, size: 64, offset: 192)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3099, file: !3100, line: 113, baseType: !42, size: 64, offset: 256)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3099, file: !3100, line: 114, baseType: !42, size: 64, offset: 320)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3099, file: !3100, line: 117, baseType: !42, size: 64, offset: 384)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3099, file: !3100, line: 118, baseType: !42, size: 64, offset: 448)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3099, file: !3100, line: 119, baseType: !42, size: 64, offset: 512)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3099, file: !3100, line: 120, baseType: !42, size: 64, offset: 576)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3099, file: !3100, line: 121, baseType: !42, size: 64, offset: 640)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3099, file: !3100, line: 122, baseType: !42, size: 64, offset: 704)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3099, file: !3100, line: 123, baseType: !42, size: 64, offset: 768)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3099, file: !3100, line: 124, baseType: !42, size: 64, offset: 832)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3099, file: !3100, line: 125, baseType: !42, size: 64, offset: 896)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3099, file: !3100, line: 139, baseType: !42, size: 64, offset: 960)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3099, file: !3100, line: 142, baseType: !42, size: 64, offset: 1024)
!3119 = !DIDerivedType(tag: DW_TAG_member, scope: !3099, file: !3100, line: 144, baseType: !3120, size: 64, offset: 1088)
!3120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3099, file: !3100, line: 144, size: 64, elements: !3121)
!3121 = !{!3122, !3123, !3124}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3120, file: !3100, line: 146, baseType: !96, size: 16)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3120, file: !3100, line: 148, baseType: !414, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3120, file: !3100, line: 150, baseType: !3125, size: 64)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3100, line: 59, size: 64, elements: !3126)
!3126 = !{!3127, !3128, !3129}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3125, file: !3100, line: 61, baseType: !414, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3125, file: !3100, line: 63, baseType: !414, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3125, file: !3100, line: 65, baseType: !414, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3099, file: !3100, line: 153, baseType: !42, size: 64, offset: 1152)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3099, file: !3100, line: 154, baseType: !42, size: 64, offset: 1216)
!3132 = !DIDerivedType(tag: DW_TAG_member, scope: !3099, file: !3100, line: 156, baseType: !3133, size: 64, offset: 1280)
!3133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3099, file: !3100, line: 156, size: 64, elements: !3134)
!3134 = !{!3135, !3136, !3137}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3133, file: !3100, line: 158, baseType: !96, size: 16)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3133, file: !3100, line: 160, baseType: !414, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3133, file: !3100, line: 162, baseType: !3138, size: 64)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3100, line: 69, size: 64, elements: !3139)
!3139 = !{!3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3138, file: !3100, line: 71, baseType: !414, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3138, file: !3100, line: 73, baseType: !414, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3138, file: !3100, line: 75, baseType: !414, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3138, file: !3100, line: 77, baseType: !414, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3138, file: !3100, line: 80, baseType: !414, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3138, file: !3100, line: 83, baseType: !414, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3138, file: !3100, line: 86, baseType: !414, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3138, file: !3100, line: 88, baseType: !414, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3138, file: !3100, line: 93, baseType: !414, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3138, file: !3100, line: 100, baseType: !414, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3075, file: !3002, line: 96, baseType: !464, size: 32, offset: 1024)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3020, file: !3002, line: 352, baseType: !3152, size: 4608, align: 512)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3002, line: 333, size: 4608, align: 512, elements: !3153)
!3153 = !{!3154, !3155, !3162}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3152, file: !3002, line: 334, baseType: !3038, size: 4096, align: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3152, file: !3002, line: 335, baseType: !3156, size: 512, offset: 4096)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3002, line: 312, size: 512, elements: !3157)
!3157 = !{!3158, !3159, !3160}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3156, file: !3002, line: 313, baseType: !414, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3156, file: !3002, line: 314, baseType: !414, size: 64, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3156, file: !3002, line: 315, baseType: !3161, size: 384, offset: 128)
!3161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 384, elements: !487)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3152, file: !3002, line: 336, baseType: !3163, offset: 4608)
!3163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, elements: !373)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3020, file: !3002, line: 353, baseType: !3165, size: 32768)
!3165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 32768, elements: !3166)
!3166 = !{!3167}
!3167 = !DISubrange(count: 4096)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3001, file: !3002, line: 484, baseType: !3007, size: 64, offset: 192)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3001, file: !3002, line: 491, baseType: !3170, size: 128, offset: 256)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3002, line: 404, size: 128, elements: !3171)
!3171 = !{!3172, !3173, !3174}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3170, file: !3002, line: 424, baseType: !414, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3170, file: !3002, line: 432, baseType: !7, size: 32, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3170, file: !3002, line: 440, baseType: !7, size: 32, offset: 96)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3001, file: !3002, line: 498, baseType: !3170, size: 128, offset: 384)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3001, file: !3002, line: 508, baseType: !3008, size: 33280, align: 512, offset: 512)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1444, file: !1445, line: 16, baseType: !57, size: 192, offset: 512)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1444, file: !1445, line: 17, baseType: !52, size: 32, offset: 704)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1015, file: !111, line: 1240, baseType: !23, size: 64, offset: 6912)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1015, file: !111, line: 1243, baseType: !464, size: 32, offset: 6976)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1015, file: !111, line: 1245, baseType: !455, size: 64, offset: 7040)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1015, file: !111, line: 1246, baseType: !455, size: 64, offset: 7104)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1015, file: !111, line: 1248, baseType: !465, size: 32, offset: 7168)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1015, file: !111, line: 1249, baseType: !3185, size: 64, offset: 7232)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !111, line: 634, flags: DIFlagFwdDecl)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1015, file: !111, line: 1252, baseType: !2254, size: 256, offset: 7296)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1015, file: !111, line: 1253, baseType: !3189, size: 128, offset: 7552)
!3189 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3190, line: 21, baseType: !3191)
!3190 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3190, line: 19, size: 128, elements: !3192)
!3192 = !{!3193}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3191, file: !3190, line: 20, baseType: !3194, size: 128)
!3194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !2020)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1015, file: !111, line: 1255, baseType: !7, size: 32, offset: 7680)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1015, file: !111, line: 1261, baseType: !297, size: 256, offset: 7744)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1015, file: !111, line: 1267, baseType: !19, size: 64, offset: 8000)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1015, file: !111, line: 1269, baseType: !3199, size: 64, offset: 8064)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3201)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !769, line: 128, size: 1024, align: 512, elements: !3202)
!3202 = !{!3203, !3207, !3208, !3215, !3221, !3225, !3229, !3233, !3234, !3238, !3242, !3247, !3251}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3201, file: !769, line: 129, baseType: !3204, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!25, !767, !7}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3201, file: !769, line: 130, baseType: !3204, size: 64, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3201, file: !769, line: 131, baseType: !3209, size: 64, offset: 128)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!25, !3212, !3214}
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !768)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3201, file: !769, line: 132, baseType: !3216, size: 64, offset: 192)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!25, !3212, !7, !19, !3219}
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !792)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3201, file: !769, line: 134, baseType: !3222, size: 64, offset: 256)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!25, !3212}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3201, file: !769, line: 135, baseType: !3226, size: 64, offset: 320)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!25, !767}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3201, file: !769, line: 136, baseType: !3230, size: 64, offset: 384)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{null, !767}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3201, file: !769, line: 137, baseType: !3230, size: 64, offset: 448)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3201, file: !769, line: 138, baseType: !3235, size: 64, offset: 512)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{null, !767, !807}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3201, file: !769, line: 139, baseType: !3239, size: 64, offset: 576)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!511, !767, !511, !25}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3201, file: !769, line: 140, baseType: !3243, size: 64, offset: 640)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!762, !3246}
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3201, file: !769, line: 141, baseType: !3248, size: 64, offset: 704)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!25, !928, !500}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3201, file: !769, line: 142, baseType: !3252, size: 64, offset: 768)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!767, !767, !3255}
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1015, file: !111, line: 1271, baseType: !3258, size: 448, offset: 8128)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1226, line: 63, size: 448, elements: !3259)
!3259 = !{!3260, !3265, !3266, !3267, !3268, !3269, !3270}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3258, file: !1226, line: 64, baseType: !3261, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!42, !3264, !1224}
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3258, file: !1226, line: 66, baseType: !3261, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3258, file: !1226, line: 69, baseType: !731, size: 64, offset: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3258, file: !1226, line: 70, baseType: !25, size: 32, offset: 192)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3258, file: !1226, line: 71, baseType: !7, size: 32, offset: 224)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3258, file: !1226, line: 74, baseType: !100, size: 128, offset: 256)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3258, file: !1226, line: 85, baseType: !3271, size: 64, offset: 384)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1015, file: !111, line: 1274, baseType: !290, size: 64, offset: 8576)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1015, file: !111, line: 1280, baseType: !290, size: 64, offset: 8640)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1015, file: !111, line: 1283, baseType: !25, size: 32, offset: 8704)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1015, file: !111, line: 1286, baseType: !2790, size: 32, offset: 8736)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1015, file: !111, line: 1289, baseType: !3277, size: 64, offset: 8768)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !634, line: 18, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1015, file: !111, line: 1290, baseType: !351, size: 64, offset: 8832)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1015, file: !111, line: 1297, baseType: !584, size: 64, offset: 8896)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1015, file: !111, line: 1304, baseType: !3282, size: 64, offset: 8960)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3283, line: 49, size: 64, elements: !3284)
!3283 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3284 = !{!3285}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3282, file: !3283, line: 50, baseType: !3286, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3283, line: 41, size: 512, align: 512, elements: !3288)
!3288 = !{!3289, !3290, !3295}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3287, file: !3283, line: 43, baseType: !62, size: 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3287, file: !3283, line: 45, baseType: !3291, size: 192, offset: 64)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3283, line: 29, size: 192, elements: !3292)
!3292 = !{!3293, !3294}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3291, file: !3283, line: 30, baseType: !100, size: 128)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3291, file: !3283, line: 32, baseType: !731, size: 64, offset: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3287, file: !3283, line: 46, baseType: !731, size: 64, offset: 256)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1015, file: !111, line: 1305, baseType: !3282, size: 64, offset: 9024)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1015, file: !111, line: 1306, baseType: !277, size: 128, align: 64, offset: 9088)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1015, file: !111, line: 1307, baseType: !633, size: 256, offset: 9216)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1015, file: !111, line: 1309, baseType: !297, size: 256, offset: 9472)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1015, file: !111, line: 1314, baseType: !25, size: 32, offset: 9728)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1015, file: !111, line: 1317, baseType: !62, size: 32, align: 512, offset: 10240)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1015, file: !111, line: 1318, baseType: !100, size: 128, offset: 10304)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1015, file: !111, line: 1320, baseType: !62, size: 32, offset: 10432)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1015, file: !111, line: 1321, baseType: !100, size: 128, offset: 10496)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !808, file: !111, line: 656, baseType: !2592, size: 64, offset: 512)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !808, file: !111, line: 659, baseType: !23, size: 64, offset: 576)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !808, file: !111, line: 663, baseType: !42, size: 64, offset: 640)
!3308 = !DIDerivedType(tag: DW_TAG_member, scope: !808, file: !111, line: 671, baseType: !3309, size: 32, offset: 704)
!3309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !808, file: !111, line: 671, size: 32, elements: !3310)
!3310 = !{!3311, !3313}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3309, file: !111, line: 672, baseType: !3312, size: 32)
!3312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3309, file: !111, line: 673, baseType: !7, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !808, file: !111, line: 675, baseType: !881, size: 32, offset: 736)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !808, file: !111, line: 676, baseType: !44, size: 64, offset: 768)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !808, file: !111, line: 677, baseType: !917, size: 128, offset: 832)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !808, file: !111, line: 678, baseType: !917, size: 128, offset: 960)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !808, file: !111, line: 679, baseType: !917, size: 128, offset: 1088)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !808, file: !111, line: 680, baseType: !62, size: 32, offset: 1216)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !808, file: !111, line: 681, baseType: !29, size: 16, offset: 1248)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !808, file: !111, line: 682, baseType: !86, size: 8, offset: 1264)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !808, file: !111, line: 683, baseType: !86, size: 8, offset: 1272)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !808, file: !111, line: 684, baseType: !1357, size: 64, offset: 1280)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !808, file: !111, line: 691, baseType: !42, size: 64, offset: 1344)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !808, file: !111, line: 692, baseType: !439, size: 320, offset: 1408)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !808, file: !111, line: 694, baseType: !42, size: 64, offset: 1728)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !808, file: !111, line: 695, baseType: !42, size: 64, offset: 1792)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !808, file: !111, line: 697, baseType: !355, size: 128, offset: 1856)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !808, file: !111, line: 698, baseType: !100, size: 128, offset: 1984)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !808, file: !111, line: 707, baseType: !100, size: 128, offset: 2112)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !808, file: !111, line: 708, baseType: !100, size: 128, offset: 2240)
!3332 = !DIDerivedType(tag: DW_TAG_member, scope: !808, file: !111, line: 709, baseType: !3333, size: 128, offset: 2368)
!3333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !808, file: !111, line: 709, size: 128, elements: !3334)
!3334 = !{!3335, !3336}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3333, file: !111, line: 710, baseType: !351, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3333, file: !111, line: 711, baseType: !277, size: 128, align: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !808, file: !111, line: 713, baseType: !292, size: 64, offset: 2496)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !808, file: !111, line: 714, baseType: !292, size: 64, offset: 2560)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !808, file: !111, line: 715, baseType: !52, size: 32, offset: 2624)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !808, file: !111, line: 716, baseType: !52, size: 32, offset: 2656)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !808, file: !111, line: 717, baseType: !52, size: 32, offset: 2688)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !808, file: !111, line: 719, baseType: !52, size: 32, offset: 2720)
!3343 = !DIDerivedType(tag: DW_TAG_member, scope: !808, file: !111, line: 721, baseType: !3344, size: 64, offset: 2752)
!3344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !808, file: !111, line: 721, size: 64, elements: !3345)
!3345 = !{!3346, !3527}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3344, file: !111, line: 722, baseType: !3347, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3349)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !111, line: 1914, size: 2112, elements: !3350)
!3350 = !{!3351, !3352, !3356, !3360, !3364, !3365, !3366, !3372, !3385, !3393, !3397, !3398, !3455, !3456, !3460, !3465, !3466, !3470, !3474, !3480, !3481, !3485, !3486, !3490, !3494, !3495, !3500, !3504, !3508, !3512, !3516, !3517, !3523}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3349, file: !111, line: 1915, baseType: !1047, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3349, file: !111, line: 1916, baseType: !3353, size: 64, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!44, !264, !44, !25}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3349, file: !111, line: 1917, baseType: !3357, size: 64, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!959, !264, !511, !38, !43}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3349, file: !111, line: 1918, baseType: !3361, size: 64, offset: 192)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!959, !264, !19, !38, !43}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3349, file: !111, line: 1919, baseType: !2724, size: 64, offset: 256)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3349, file: !111, line: 1920, baseType: !2724, size: 64, offset: 320)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3349, file: !111, line: 1921, baseType: !3367, size: 64, offset: 384)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!25, !2727, !3370, !7}
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !111, line: 53, flags: DIFlagFwdDecl)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3349, file: !111, line: 1923, baseType: !3373, size: 64, offset: 448)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!25, !264, !3376}
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !111, line: 1858, size: 128, elements: !3378)
!3378 = !{!3379, !3384}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3377, file: !111, line: 1859, baseType: !3380, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !111, line: 1855, baseType: !3381)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!500, !3376, !19, !25, !44, !414, !7}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3377, file: !111, line: 1860, baseType: !44, size: 64, offset: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3349, file: !111, line: 1924, baseType: !3386, size: 64, offset: 512)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!3389, !264, !3391}
!3389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3390, line: 59, baseType: !7)
!3390 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !111, line: 61, flags: DIFlagFwdDecl)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3349, file: !111, line: 1925, baseType: !3394, size: 64, offset: 576)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!731, !264, !7, !42}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3349, file: !111, line: 1926, baseType: !3394, size: 64, offset: 640)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3349, file: !111, line: 1927, baseType: !3399, size: 64, offset: 704)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!25, !264, !3402}
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1749, line: 625, size: 1344, elements: !3404)
!3404 = !{!3405, !3414, !3415, !3421, !3428, !3429, !3434, !3435, !3440, !3441, !3444, !3448, !3449, !3450, !3451, !3452, !3453}
!3405 = !DIDerivedType(tag: DW_TAG_member, scope: !3403, file: !1749, line: 628, baseType: !3406, size: 128)
!3406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3403, file: !1749, line: 628, size: 128, elements: !3407)
!3407 = !{!3408, !3413}
!3408 = !DIDerivedType(tag: DW_TAG_member, scope: !3406, file: !1749, line: 629, baseType: !3409, size: 128)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3406, file: !1749, line: 629, size: 128, elements: !3410)
!3410 = !{!3411, !3412}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3409, file: !1749, line: 631, baseType: !42, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3409, file: !1749, line: 632, baseType: !42, size: 64, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3406, file: !1749, line: 635, baseType: !277, size: 128, align: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3403, file: !1749, line: 639, baseType: !1747, size: 64, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3403, file: !1749, line: 640, baseType: !3416, size: 64, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1783, line: 297, baseType: !3417)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1783, line: 297, size: 64, elements: !3418)
!3418 = !{!3419}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3417, file: !1783, line: 297, baseType: !3420, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1788, line: 19, baseType: !42)
!3421 = !DIDerivedType(tag: DW_TAG_member, scope: !3403, file: !1749, line: 646, baseType: !3422, size: 64, offset: 256)
!3422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3403, file: !1749, line: 646, size: 64, elements: !3423)
!3423 = !{!3424, !3427}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3422, file: !1749, line: 647, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3426)
!3426 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1749, line: 542, baseType: !42)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3422, file: !1749, line: 648, baseType: !3426, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3403, file: !1749, line: 666, baseType: !25, size: 32, offset: 320)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3403, file: !1749, line: 667, baseType: !3430, size: 64, offset: 384)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1749, line: 579, size: 320, elements: !3432)
!3432 = !{!3433}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3431, file: !1749, line: 580, baseType: !439, size: 320)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3403, file: !1749, line: 670, baseType: !500, size: 8, offset: 448)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3403, file: !1749, line: 681, baseType: !3436, size: 256, offset: 512)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3403, file: !1749, line: 678, size: 256, elements: !3437)
!3437 = !{!3438, !3439}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3436, file: !1749, line: 679, baseType: !217, size: 192, align: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3436, file: !1749, line: 680, baseType: !42, size: 64, offset: 192)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3403, file: !1749, line: 689, baseType: !100, size: 128, offset: 768)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3403, file: !1749, line: 691, baseType: !3442, size: 64, offset: 896)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1749, line: 691, flags: DIFlagFwdDecl)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3403, file: !1749, line: 694, baseType: !3445, size: 64, offset: 960)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3447)
!3447 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1749, line: 694, flags: DIFlagFwdDecl)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3403, file: !1749, line: 697, baseType: !42, size: 64, offset: 1024)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3403, file: !1749, line: 699, baseType: !264, size: 64, offset: 1088)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3403, file: !1749, line: 700, baseType: !23, size: 64, offset: 1152)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3403, file: !1749, line: 711, baseType: !290, size: 64, offset: 1216)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3403, file: !1749, line: 717, baseType: !2527, size: 64, offset: 1280)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3403, file: !1749, line: 722, baseType: !3454, offset: 1344)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1749, line: 570, elements: !1055)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3349, file: !111, line: 1928, baseType: !42, size: 64, offset: 768)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3349, file: !111, line: 1929, baseType: !3457, size: 64, offset: 832)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!25, !807, !264}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3349, file: !111, line: 1930, baseType: !3461, size: 64, offset: 896)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!25, !264, !3464}
!3464 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !111, line: 1061, baseType: !23)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3349, file: !111, line: 1931, baseType: !3457, size: 64, offset: 960)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3349, file: !111, line: 1932, baseType: !3467, size: 64, offset: 1024)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!25, !264, !44, !44, !25}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3349, file: !111, line: 1933, baseType: !3471, size: 64, offset: 1088)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!25, !25, !264, !25}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3349, file: !111, line: 1934, baseType: !3475, size: 64, offset: 1152)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!25, !264, !25, !3478}
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !111, line: 1063, flags: DIFlagFwdDecl)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3349, file: !111, line: 1935, baseType: !1772, size: 64, offset: 1216)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3349, file: !111, line: 1936, baseType: !3482, size: 64, offset: 1280)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!25, !25}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3349, file: !111, line: 1937, baseType: !3475, size: 64, offset: 1344)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3349, file: !111, line: 1938, baseType: !3487, size: 64, offset: 1408)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!959, !2564, !264, !43, !38, !7}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3349, file: !111, line: 1939, baseType: !3491, size: 64, offset: 1472)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!959, !264, !43, !2564, !38, !7}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3349, file: !111, line: 1940, baseType: !2780, size: 64, offset: 1536)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3349, file: !111, line: 1941, baseType: !3496, size: 64, offset: 1600)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!25, !264, !25, !3499, !2701}
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3349, file: !111, line: 1942, baseType: !3501, size: 64, offset: 1664)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!731, !264, !25, !44, !44}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3349, file: !111, line: 1944, baseType: !3505, size: 64, offset: 1728)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{null, !1124, !264}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3349, file: !111, line: 1948, baseType: !3509, size: 64, offset: 1792)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!959, !264, !44, !264, !44, !38, !7}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3349, file: !111, line: 1950, baseType: !3513, size: 64, offset: 1856)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!44, !264, !44, !264, !44, !44, !7}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3349, file: !111, line: 1953, baseType: !3467, size: 64, offset: 1920)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3349, file: !111, line: 1954, baseType: !3518, size: 64, offset: 1984)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!25, !3521, !7}
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !111, line: 1911, flags: DIFlagFwdDecl)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3349, file: !111, line: 1955, baseType: !3524, size: 64, offset: 2048)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!25, !3521, !3370, !7}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3344, file: !111, line: 723, baseType: !1074, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !808, file: !111, line: 725, baseType: !3529, size: 64, offset: 2816)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !111, line: 725, flags: DIFlagFwdDecl)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !808, file: !111, line: 726, baseType: !2593, size: 1536, align: 64, offset: 2880)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !808, file: !111, line: 727, baseType: !100, size: 128, offset: 4416)
!3533 = !DIDerivedType(tag: DW_TAG_member, scope: !808, file: !111, line: 728, baseType: !3534, size: 64, offset: 4544)
!3534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !808, file: !111, line: 728, size: 64, elements: !3535)
!3535 = !{!3536, !3537, !3540, !3541}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3534, file: !111, line: 729, baseType: !2564, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3534, file: !111, line: 730, baseType: !3538, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !111, line: 730, flags: DIFlagFwdDecl)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3534, file: !111, line: 731, baseType: !511, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3534, file: !111, line: 732, baseType: !7, size: 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !808, file: !111, line: 735, baseType: !465, size: 32, offset: 4608)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !808, file: !111, line: 738, baseType: !465, size: 32, offset: 4640)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !808, file: !111, line: 739, baseType: !3185, size: 64, offset: 4672)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !808, file: !111, line: 750, baseType: !23, size: 64, offset: 4736)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !768, file: !769, line: 91, baseType: !3547, size: 256, offset: 448)
!3547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !2255)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !768, file: !769, line: 94, baseType: !3549, size: 64, offset: 704)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3550, line: 25, size: 64, elements: !3551)
!3550 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3551 = !{!3552}
!3552 = !DIDerivedType(tag: DW_TAG_member, scope: !3549, file: !3550, line: 26, baseType: !3553, size: 64)
!3553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3549, file: !3550, line: 26, size: 64, elements: !3554)
!3554 = !{!3555, !3556}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3553, file: !3550, line: 28, baseType: !415, size: 64, align: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, scope: !3553, file: !3550, line: 30, baseType: !3557, size: 64)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3553, file: !3550, line: 30, size: 64, elements: !3558)
!3558 = !{!3559, !3560}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3557, file: !3550, line: 31, baseType: !62, size: 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3557, file: !3550, line: 32, baseType: !25, size: 32, offset: 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !768, file: !769, line: 95, baseType: !3199, size: 64, offset: 768)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !768, file: !769, line: 96, baseType: !1014, size: 64, offset: 832)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !768, file: !769, line: 97, baseType: !42, size: 64, offset: 896)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !768, file: !769, line: 98, baseType: !23, size: 64, offset: 960)
!3565 = !DIDerivedType(tag: DW_TAG_member, scope: !768, file: !769, line: 100, baseType: !3566, size: 128, offset: 1024)
!3566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !768, file: !769, line: 100, size: 128, elements: !3567)
!3567 = !{!3568, !3569}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3566, file: !769, line: 101, baseType: !100, size: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3566, file: !769, line: 102, baseType: !3570, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !768, file: !769, line: 104, baseType: !100, size: 128, offset: 1152)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !768, file: !769, line: 105, baseType: !100, size: 128, offset: 1280)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !768, file: !769, line: 113, baseType: !3574, size: 128, offset: 1408)
!3574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !768, file: !769, line: 109, size: 128, elements: !3575)
!3575 = !{!3576, !3577, !3578}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3574, file: !769, line: 110, baseType: !355, size: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3574, file: !769, line: 111, baseType: !783, size: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3574, file: !769, line: 112, baseType: !277, size: 128, align: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !763, file: !764, line: 72, baseType: !1014, size: 64, offset: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !763, file: !764, line: 73, baseType: !25, size: 32, offset: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !763, file: !764, line: 74, baseType: !846, size: 64, offset: 192)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !758, file: !759, line: 10, baseType: !767, size: 64, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !265, file: !111, line: 1015, baseType: !807, size: 64, offset: 1344)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !265, file: !111, line: 1016, baseType: !3347, size: 64, offset: 1408)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !265, file: !111, line: 1018, baseType: !414, size: 64, offset: 1472)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !265, file: !111, line: 1020, baseType: !23, size: 64, offset: 1536)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !265, file: !111, line: 1023, baseType: !23, size: 64, offset: 1600)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !265, file: !111, line: 1027, baseType: !3589, size: 64, offset: 1664)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !265, file: !111, line: 1029, baseType: !2592, size: 64, offset: 1728)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !265, file: !111, line: 1030, baseType: !2790, size: 32, offset: 1792)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !265, file: !111, line: 1031, baseType: !2790, size: 32, offset: 1824)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !260, file: !210, line: 255, baseType: !1124, size: 64, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !260, file: !210, line: 256, baseType: !23, size: 64, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !260, file: !210, line: 259, baseType: !297, size: 256, offset: 256)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !260, file: !210, line: 260, baseType: !297, size: 256, offset: 512)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !260, file: !210, line: 261, baseType: !25, size: 32, offset: 768)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !260, file: !210, line: 262, baseType: !100, size: 128, offset: 832)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !260, file: !210, line: 263, baseType: !511, size: 64, offset: 960)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !260, file: !210, line: 265, baseType: !38, size: 64, offset: 1024)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !260, file: !210, line: 266, baseType: !500, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !260, file: !210, line: 267, baseType: !500, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !260, file: !210, line: 268, baseType: !3445, size: 64, offset: 1152)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !253, file: !210, line: 277, baseType: !3605, size: 64, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{null, !259}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !253, file: !210, line: 290, baseType: !1154, size: 64, offset: 128)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !253, file: !210, line: 292, baseType: !1142, size: 64, offset: 192)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !253, file: !210, line: 293, baseType: !1150, size: 64, offset: 256)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !253, file: !210, line: 294, baseType: !1146, size: 64, offset: 320)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !253, file: !210, line: 296, baseType: !3613, size: 64, offset: 384)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!959, !259, !511, !38, !44}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !253, file: !210, line: 306, baseType: !38, size: 64, offset: 448)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !253, file: !210, line: 313, baseType: !500, size: 8, offset: 512)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !253, file: !210, line: 314, baseType: !3613, size: 64, offset: 576)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !253, file: !210, line: 317, baseType: !3620, size: 64, offset: 640)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!3389, !259, !3391}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !253, file: !210, line: 320, baseType: !3624, size: 64, offset: 704)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!25, !259, !3402}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !248, file: !210, line: 176, baseType: !3628, size: 64, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !210, line: 35, flags: DIFlagFwdDecl)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !248, file: !210, line: 177, baseType: !44, size: 64, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !248, file: !210, line: 178, baseType: !208, size: 64, offset: 192)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !209, file: !210, line: 215, baseType: !23, size: 64, offset: 768)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !209, file: !210, line: 221, baseType: !414, size: 64, offset: 832)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !209, file: !210, line: 223, baseType: !29, size: 16, offset: 896)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !209, file: !210, line: 224, baseType: !27, size: 16, offset: 912)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !209, file: !210, line: 225, baseType: !3637, size: 64, offset: 960)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !210, line: 36, flags: DIFlagFwdDecl)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !209, file: !210, line: 227, baseType: !277, size: 128, align: 64, offset: 1024)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !193, file: !162, line: 442, baseType: !3641, size: 448, offset: 2048)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !162, line: 138, size: 448, elements: !3642)
!3642 = !{!3643, !3644, !3645}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3641, file: !162, line: 140, baseType: !208, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3641, file: !162, line: 141, baseType: !42, size: 64, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3641, file: !162, line: 142, baseType: !2926, size: 320, offset: 128)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !193, file: !162, line: 443, baseType: !3641, size: 448, offset: 2496)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !193, file: !162, line: 446, baseType: !3648, offset: 2944)
!3648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3641, elements: !3649)
!3649 = !{!3650}
!3650 = !DISubrange(count: 0)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !193, file: !162, line: 455, baseType: !96, size: 16, offset: 2944)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !193, file: !162, line: 456, baseType: !96, size: 16, offset: 2960)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !193, file: !162, line: 457, baseType: !96, size: 16, offset: 2976)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !193, file: !162, line: 458, baseType: !96, size: 16, offset: 2992)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !193, file: !162, line: 461, baseType: !2082, size: 896, offset: 3008)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !193, file: !162, line: 463, baseType: !3657, size: 64, offset: 3904)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !162, line: 537, size: 41664, elements: !3659)
!3659 = !{!3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3671}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3658, file: !162, line: 538, baseType: !240, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3658, file: !162, line: 541, baseType: !7, size: 32, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3658, file: !162, line: 544, baseType: !25, size: 32, offset: 96)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3658, file: !162, line: 547, baseType: !100, size: 128, offset: 128)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3658, file: !162, line: 548, baseType: !277, size: 128, align: 64, offset: 256)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3658, file: !162, line: 555, baseType: !193, size: 7872, offset: 384)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3658, file: !162, line: 558, baseType: !192, size: 64, offset: 8256)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3658, file: !162, line: 561, baseType: !52, size: 32, offset: 8320)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3658, file: !162, line: 564, baseType: !7, size: 32, offset: 8352)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3658, file: !162, line: 567, baseType: !3670, size: 32768, offset: 8384)
!3670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32768, elements: !3166)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3658, file: !162, line: 570, baseType: !3672, size: 512, offset: 41152)
!3672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 512, elements: !2340)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !193, file: !162, line: 469, baseType: !100, size: 128, offset: 3968)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !193, file: !162, line: 478, baseType: !2095, size: 1792, offset: 4096)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !193, file: !162, line: 487, baseType: !192, size: 64, offset: 5888)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !193, file: !162, line: 488, baseType: !192, size: 64, offset: 5952)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !193, file: !162, line: 491, baseType: !3678, size: 64, offset: 6016)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !162, line: 327, size: 896, elements: !3680)
!3680 = !{!3681, !3684, !3694, !3695, !3696, !3697, !3698}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3679, file: !162, line: 332, baseType: !3682)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3683, line: 64, elements: !1055)
!3683 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3679, file: !162, line: 333, baseType: !3685, size: 192)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !162, line: 299, size: 192, elements: !3686)
!3686 = !{!3687}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3685, file: !162, line: 300, baseType: !3688, size: 192)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3689, line: 17, size: 192, elements: !3690)
!3689 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3690 = !{!3691, !3692, !3693}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3688, file: !3689, line: 18, baseType: !414, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3688, file: !3689, line: 19, baseType: !414, size: 64, offset: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3688, file: !3689, line: 20, baseType: !416, size: 64, offset: 128)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3679, file: !162, line: 339, baseType: !3685, size: 192, offset: 192)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3679, file: !162, line: 347, baseType: !3685, size: 192, offset: 384)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3679, file: !162, line: 353, baseType: !3685, size: 192, offset: 576)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3679, file: !162, line: 366, baseType: !192, size: 64, offset: 768)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3679, file: !162, line: 367, baseType: !192, size: 64, offset: 832)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !193, file: !162, line: 492, baseType: !100, size: 128, offset: 6080)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !193, file: !162, line: 495, baseType: !3685, size: 192, offset: 6208)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !193, file: !162, line: 496, baseType: !3685, size: 192, offset: 6400)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !193, file: !162, line: 497, baseType: !1985, size: 192, offset: 6592)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !193, file: !162, line: 503, baseType: !100, size: 128, offset: 6784)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !193, file: !162, line: 504, baseType: !297, size: 256, offset: 6912)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !193, file: !162, line: 507, baseType: !57, size: 192, offset: 7168)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !193, file: !162, line: 510, baseType: !633, size: 256, offset: 7360)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !193, file: !162, line: 513, baseType: !3708, size: 64, offset: 7616)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3710, line: 214, elements: !1055)
!3710 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !193, file: !162, line: 516, baseType: !3712, offset: 7680)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3713, line: 76, elements: !1055)
!3713 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !193, file: !162, line: 519, baseType: !52, size: 32, offset: 7680)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !193, file: !162, line: 522, baseType: !3716, size: 128, offset: 7712)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !162, line: 370, size: 128, elements: !3717)
!3717 = !{!3718, !3719, !3720, !3721}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3716, file: !162, line: 372, baseType: !500, size: 8)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3716, file: !162, line: 375, baseType: !25, size: 32, offset: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3716, file: !162, line: 380, baseType: !25, size: 32, offset: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3716, file: !162, line: 386, baseType: !25, size: 32, offset: 96)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !193, file: !162, line: 529, baseType: !3723, offset: 7872)
!3723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, elements: !373)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !189, file: !162, line: 157, baseType: !3725, size: 64, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !162, line: 669, size: 1984, elements: !3727)
!3727 = !{!3728, !3732, !3736, !3740, !3741, !3742, !3743, !3747, !3751, !3752, !3758, !3762, !3763, !3765, !3769, !3773, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3794, !3795, !3832, !3833}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3726, file: !162, line: 670, baseType: !3729, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!2083, !2083}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3726, file: !162, line: 671, baseType: !3733, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!25, !2083}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3726, file: !162, line: 672, baseType: !3737, size: 64, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{null, !2083}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3726, file: !162, line: 673, baseType: !3737, size: 64, offset: 192)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3726, file: !162, line: 674, baseType: !3737, size: 64, offset: 256)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3726, file: !162, line: 675, baseType: !3737, size: 64, offset: 320)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3726, file: !162, line: 676, baseType: !3744, size: 64, offset: 384)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{null, !2083, !25}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3726, file: !162, line: 677, baseType: !3748, size: 64, offset: 448)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!25, !1124, !2083}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3726, file: !162, line: 679, baseType: !3748, size: 64, offset: 512)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3726, file: !162, line: 682, baseType: !3753, size: 64, offset: 576)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!25, !3756}
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !162, line: 30, flags: DIFlagFwdDecl)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3726, file: !162, line: 683, baseType: !3759, size: 64, offset: 640)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{null, !3756}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3726, file: !162, line: 684, baseType: !3759, size: 64, offset: 704)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3726, file: !162, line: 685, baseType: !3764, size: 64, offset: 768)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3726, file: !162, line: 686, baseType: !3766, size: 64, offset: 832)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!25, !1462, !2078}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3726, file: !162, line: 688, baseType: !3770, size: 64, offset: 896)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{null, !1462, !2078}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3726, file: !162, line: 689, baseType: !3774, size: 64, offset: 960)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{null, !1462}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3726, file: !162, line: 690, baseType: !3774, size: 64, offset: 1024)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3726, file: !162, line: 691, baseType: !3774, size: 64, offset: 1088)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3726, file: !162, line: 692, baseType: !3737, size: 64, offset: 1152)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3726, file: !162, line: 694, baseType: !500, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3726, file: !162, line: 707, baseType: !500, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3726, file: !162, line: 719, baseType: !500, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3726, file: !162, line: 722, baseType: !25, size: 32, offset: 1248)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3726, file: !162, line: 723, baseType: !19, size: 64, offset: 1280)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3726, file: !162, line: 726, baseType: !19, size: 64, offset: 1344)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3726, file: !162, line: 729, baseType: !3657, size: 64, offset: 1408)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3726, file: !162, line: 732, baseType: !3788, size: 192, offset: 1472)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3789, line: 19, size: 192, elements: !3790)
!3789 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3790 = !{!3791, !3792, !3793}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3788, file: !3789, line: 20, baseType: !1006, size: 128)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3788, file: !3789, line: 21, baseType: !7, size: 32, offset: 128)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3788, file: !3789, line: 22, baseType: !7, size: 32, offset: 160)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3726, file: !162, line: 738, baseType: !100, size: 128, offset: 1664)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3726, file: !162, line: 744, baseType: !3796, size: 64, offset: 1792)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !162, line: 580, size: 1728, elements: !3798)
!3798 = !{!3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3808, !3809, !3810, !3814, !3818, !3819, !3820, !3821, !3822, !3826, !3830, !3831}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3797, file: !162, line: 586, baseType: !3672, size: 512)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3797, file: !162, line: 587, baseType: !42, size: 64, offset: 512)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3797, file: !162, line: 593, baseType: !38, size: 64, offset: 576)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3797, file: !162, line: 596, baseType: !7, size: 32, offset: 640)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3797, file: !162, line: 604, baseType: !7, size: 32, offset: 672)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3797, file: !162, line: 610, baseType: !3725, size: 64, offset: 704)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3797, file: !162, line: 611, baseType: !100, size: 128, offset: 768)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3797, file: !162, line: 612, baseType: !3807, size: 64, offset: 896)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3797, file: !162, line: 614, baseType: !256, size: 64, offset: 960)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3797, file: !162, line: 615, baseType: !3605, size: 64, offset: 1024)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3797, file: !162, line: 621, baseType: !3811, size: 64, offset: 1088)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!414, !2083, !3796}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3797, file: !162, line: 625, baseType: !3815, size: 64, offset: 1152)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!183, !2083, !3796}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3797, file: !162, line: 628, baseType: !1154, size: 64, offset: 1216)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3797, file: !162, line: 631, baseType: !1142, size: 64, offset: 1280)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3797, file: !162, line: 632, baseType: !1150, size: 64, offset: 1344)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3797, file: !162, line: 633, baseType: !1146, size: 64, offset: 1408)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3797, file: !162, line: 640, baseType: !3823, size: 64, offset: 1472)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!25, !2083, !3796, !414}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3797, file: !162, line: 645, baseType: !3827, size: 64, offset: 1536)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!25, !2083, !3796, !183}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3797, file: !162, line: 654, baseType: !3613, size: 64, offset: 1600)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3797, file: !162, line: 657, baseType: !3620, size: 64, offset: 1664)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3726, file: !162, line: 745, baseType: !3796, size: 64, offset: 1856)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3726, file: !162, line: 754, baseType: !7, size: 32, offset: 1920)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !189, file: !162, line: 160, baseType: !3835, size: 128, offset: 128)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3836, line: 105, size: 128, elements: !3837)
!3836 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!3837 = !{!3838, !3839}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3835, file: !3836, line: 110, baseType: !42, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3835, file: !3836, line: 118, baseType: !3840, size: 64, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3836, line: 95, size: 448, elements: !3842)
!3842 = !{!3843, !3844, !3850, !3851, !3852, !3853, !3854}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3841, file: !3836, line: 96, baseType: !290, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3841, file: !3836, line: 97, baseType: !3845, size: 64, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3836, line: 60, baseType: !3847)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{null, !3849}
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3841, file: !3836, line: 98, baseType: !3845, size: 64, offset: 128)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3841, file: !3836, line: 99, baseType: !500, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3841, file: !3836, line: 100, baseType: !500, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3841, file: !3836, line: 101, baseType: !277, size: 128, align: 64, offset: 256)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3841, file: !3836, line: 102, baseType: !3849, size: 64, offset: 384)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !189, file: !162, line: 163, baseType: !100, size: 128, offset: 256)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !189, file: !162, line: 164, baseType: !100, size: 128, offset: 384)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !189, file: !162, line: 167, baseType: !100, size: 128, offset: 512)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !189, file: !162, line: 173, baseType: !25, size: 32, offset: 640)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !189, file: !162, line: 175, baseType: !7, size: 32, offset: 672)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !189, file: !162, line: 183, baseType: !414, size: 64, offset: 704)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !189, file: !162, line: 189, baseType: !52, size: 32, offset: 768)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !189, file: !162, line: 192, baseType: !633, size: 256, offset: 832)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !189, file: !162, line: 193, baseType: !3864, size: 448, offset: 1088)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !634, line: 120, size: 448, elements: !3865)
!3865 = !{!3866, !3867, !3868}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3864, file: !634, line: 121, baseType: !633, size: 256)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3864, file: !634, line: 122, baseType: !277, size: 128, align: 64, offset: 256)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3864, file: !634, line: 125, baseType: !3277, size: 64, offset: 384)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !189, file: !162, line: 199, baseType: !2083, size: 64, offset: 1536)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !186, file: !3, line: 48, baseType: !292, size: 64, offset: 1600)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !186, file: !3, line: 49, baseType: !292, size: 64, offset: 1664)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !186, file: !3, line: 50, baseType: !3873, size: 64, offset: 1728)
!3873 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !28, line: 115, baseType: !183)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !186, file: !3, line: 53, baseType: !3641, size: 448, offset: 1792)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "events_limit", scope: !186, file: !3, line: 56, baseType: !292, size: 64, offset: 2240)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3878)
!3878 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2078)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3881)
!3881 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !46)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3873)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!3885 = !{!3886, !3888, !3893, !3895, !3900, !0, !3903, !3905, !3907, !3909}
!3886 = !DIGlobalVariableExpression(var: !3887, expr: !DIExpression())
!3887 = distinct !DIGlobalVariable(name: "pids_cgrp_subsys", scope: !2, file: !3, line: 376, type: !3726, isLocal: false, isDefinition: true)
!3888 = !DIGlobalVariableExpression(var: !3889, expr: !DIExpression())
!3889 = distinct !DIGlobalVariable(scope: null, file: !152, line: 480, type: !3890, isLocal: true, isDefinition: true)
!3890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 168, elements: !3891)
!3891 = !{!3892}
!3892 = !DISubrange(count: 21)
!3893 = !DIGlobalVariableExpression(var: !3894, expr: !DIExpression())
!3894 = distinct !DIGlobalVariable(scope: null, file: !3, line: 113, type: !3890, isLocal: true, isDefinition: true)
!3895 = !DIGlobalVariableExpression(var: !3896, expr: !DIExpression())
!3896 = distinct !DIGlobalVariable(scope: null, file: !3, line: 253, type: !3897, isLocal: true, isDefinition: true)
!3897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 376, elements: !3898)
!3898 = !{!3899}
!3899 = !DISubrange(count: 47)
!3900 = !DIGlobalVariableExpression(var: !3901, expr: !DIExpression())
!3901 = distinct !DIGlobalVariable(scope: null, file: !3, line: 255, type: !3902, isLocal: true, isDefinition: true)
!3902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !360)
!3903 = !DIGlobalVariableExpression(var: !3904, expr: !DIExpression())
!3904 = distinct !DIGlobalVariable(scope: null, file: !3, line: 319, type: !3902, isLocal: true, isDefinition: true)
!3905 = !DIGlobalVariableExpression(var: !3906, expr: !DIExpression())
!3906 = distinct !DIGlobalVariable(scope: null, file: !3, line: 319, type: !3902, isLocal: true, isDefinition: true)
!3907 = !DIGlobalVariableExpression(var: !3908, expr: !DIExpression())
!3908 = distinct !DIGlobalVariable(scope: null, file: !3, line: 321, type: !486, isLocal: true, isDefinition: true)
!3909 = !DIGlobalVariableExpression(var: !3910, expr: !DIExpression())
!3910 = distinct !DIGlobalVariable(scope: null, file: !3, line: 346, type: !3911, isLocal: true, isDefinition: true)
!3911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 80, elements: !725)
!3912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3797, size: 8640, elements: !602)
!3913 = !{i32 7, !"Dwarf Version", i32 5}
!3914 = !{i32 2, !"Debug Info Version", i32 3}
!3915 = !{i32 1, !"wchar_size", i32 2}
!3916 = !{i32 8, !"cf-protection-branch", i32 1}
!3917 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3918 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3919 = !{i32 1, !"Code Model", i32 2}
!3920 = !{i32 1, !"override-stack-alignment", i32 8}
!3921 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3922 = distinct !DISubprogram(name: "pids_css_alloc", scope: !3, file: !3, line: 70, type: !3730, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3923)
!3923 = !{!3924, !3925}
!3924 = !DILocalVariable(name: "parent", arg: 1, scope: !3922, file: !3, line: 70, type: !2083)
!3925 = !DILocalVariable(name: "pids", scope: !3922, file: !3, line: 72, type: !185)
!3926 = !DILocation(line: 70, column: 44, scope: !3922)
!3927 = !DILocation(line: 72, column: 2, scope: !3922)
!3928 = !DILocation(line: 72, column: 22, scope: !3922)
!3929 = !DILocation(line: 74, column: 9, scope: !3922)
!3930 = !DILocation(line: 74, column: 7, scope: !3922)
!3931 = !DILocation(line: 75, column: 7, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3922, file: !3, line: 75, column: 6)
!3933 = !DILocation(line: 75, column: 6, scope: !3922)
!3934 = !DILocation(line: 76, column: 10, scope: !3932)
!3935 = !DILocation(line: 76, column: 3, scope: !3932)
!3936 = !DILocation(line: 78, column: 16, scope: !3922)
!3937 = !DILocation(line: 78, column: 22, scope: !3922)
!3938 = !DILocation(line: 78, column: 2, scope: !3922)
!3939 = !DILocation(line: 79, column: 16, scope: !3922)
!3940 = !DILocation(line: 79, column: 22, scope: !3922)
!3941 = !DILocation(line: 79, column: 2, scope: !3922)
!3942 = !DILocation(line: 80, column: 16, scope: !3922)
!3943 = !DILocation(line: 80, column: 22, scope: !3922)
!3944 = !DILocation(line: 80, column: 2, scope: !3922)
!3945 = !DILocation(line: 81, column: 10, scope: !3922)
!3946 = !DILocation(line: 81, column: 16, scope: !3922)
!3947 = !DILocation(line: 81, column: 2, scope: !3922)
!3948 = !DILocation(line: 82, column: 1, scope: !3922)
!3949 = distinct !DISubprogram(name: "pids_css_free", scope: !3, file: !3, line: 84, type: !3738, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3950)
!3950 = !{!3951}
!3951 = !DILocalVariable(name: "css", arg: 1, scope: !3949, file: !3, line: 84, type: !2083)
!3952 = !DILocation(line: 84, column: 55, scope: !3949)
!3953 = !DILocation(line: 86, column: 17, scope: !3949)
!3954 = !DILocation(line: 86, column: 8, scope: !3949)
!3955 = !DILocation(line: 86, column: 2, scope: !3949)
!3956 = !DILocation(line: 87, column: 1, scope: !3949)
!3957 = distinct !DISubprogram(name: "pids_can_attach", scope: !3, file: !3, line: 191, type: !3754, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3958)
!3958 = !{!3959, !3960, !3961, !3962, !3966, !3967}
!3959 = !DILocalVariable(name: "tset", arg: 1, scope: !3957, file: !3, line: 191, type: !3756)
!3960 = !DILocalVariable(name: "task", scope: !3957, file: !3, line: 193, type: !1462)
!3961 = !DILocalVariable(name: "dst_css", scope: !3957, file: !3, line: 194, type: !2083)
!3962 = !DILocalVariable(name: "pids", scope: !3963, file: !3, line: 197, type: !185)
!3963 = distinct !DILexicalBlock(scope: !3964, file: !3, line: 196, column: 47)
!3964 = distinct !DILexicalBlock(scope: !3965, file: !3, line: 196, column: 2)
!3965 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 196, column: 2)
!3966 = !DILocalVariable(name: "old_css", scope: !3963, file: !3, line: 198, type: !2083)
!3967 = !DILocalVariable(name: "old_pids", scope: !3963, file: !3, line: 199, type: !185)
!3968 = !DILocation(line: 191, column: 51, scope: !3957)
!3969 = !DILocation(line: 193, column: 2, scope: !3957)
!3970 = !DILocation(line: 193, column: 22, scope: !3957)
!3971 = !DILocation(line: 194, column: 2, scope: !3957)
!3972 = !DILocation(line: 194, column: 30, scope: !3957)
!3973 = !DILocation(line: 196, column: 2, scope: !3965)
!3974 = !DILocation(line: 196, column: 2, scope: !3964)
!3975 = !DILocation(line: 197, column: 3, scope: !3963)
!3976 = !DILocation(line: 197, column: 23, scope: !3963)
!3977 = !DILocation(line: 197, column: 39, scope: !3963)
!3978 = !DILocation(line: 197, column: 30, scope: !3963)
!3979 = !DILocation(line: 198, column: 3, scope: !3963)
!3980 = !DILocation(line: 198, column: 31, scope: !3963)
!3981 = !DILocation(line: 199, column: 3, scope: !3963)
!3982 = !DILocation(line: 199, column: 23, scope: !3963)
!3983 = !DILocation(line: 206, column: 22, scope: !3963)
!3984 = !DILocation(line: 206, column: 13, scope: !3963)
!3985 = !DILocation(line: 206, column: 11, scope: !3963)
!3986 = !DILocation(line: 207, column: 23, scope: !3963)
!3987 = !DILocation(line: 207, column: 14, scope: !3963)
!3988 = !DILocation(line: 207, column: 12, scope: !3963)
!3989 = !DILocation(line: 209, column: 15, scope: !3963)
!3990 = !DILocation(line: 209, column: 3, scope: !3963)
!3991 = !DILocation(line: 210, column: 17, scope: !3963)
!3992 = !DILocation(line: 210, column: 3, scope: !3963)
!3993 = !DILocation(line: 211, column: 2, scope: !3964)
!3994 = !DILocation(line: 211, column: 2, scope: !3963)
!3995 = distinct !{!3995, !3973, !3996, !3997, !3998}
!3996 = !DILocation(line: 211, column: 2, scope: !3965)
!3997 = !{!"llvm.loop.mustprogress"}
!3998 = !{!"llvm.loop.unroll.disable"}
!3999 = !DILocation(line: 214, column: 1, scope: !3957)
!4000 = !DILocation(line: 213, column: 2, scope: !3957)
!4001 = distinct !DISubprogram(name: "pids_cancel_attach", scope: !3, file: !3, line: 216, type: !3760, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4002)
!4002 = !{!4003, !4004, !4005, !4006, !4010, !4011}
!4003 = !DILocalVariable(name: "tset", arg: 1, scope: !4001, file: !3, line: 216, type: !3756)
!4004 = !DILocalVariable(name: "task", scope: !4001, file: !3, line: 218, type: !1462)
!4005 = !DILocalVariable(name: "dst_css", scope: !4001, file: !3, line: 219, type: !2083)
!4006 = !DILocalVariable(name: "pids", scope: !4007, file: !3, line: 222, type: !185)
!4007 = distinct !DILexicalBlock(scope: !4008, file: !3, line: 221, column: 47)
!4008 = distinct !DILexicalBlock(scope: !4009, file: !3, line: 221, column: 2)
!4009 = distinct !DILexicalBlock(scope: !4001, file: !3, line: 221, column: 2)
!4010 = !DILocalVariable(name: "old_css", scope: !4007, file: !3, line: 223, type: !2083)
!4011 = !DILocalVariable(name: "old_pids", scope: !4007, file: !3, line: 224, type: !185)
!4012 = !DILocation(line: 216, column: 55, scope: !4001)
!4013 = !DILocation(line: 218, column: 2, scope: !4001)
!4014 = !DILocation(line: 218, column: 22, scope: !4001)
!4015 = !DILocation(line: 219, column: 2, scope: !4001)
!4016 = !DILocation(line: 219, column: 30, scope: !4001)
!4017 = !DILocation(line: 221, column: 2, scope: !4009)
!4018 = !DILocation(line: 221, column: 2, scope: !4008)
!4019 = !DILocation(line: 222, column: 3, scope: !4007)
!4020 = !DILocation(line: 222, column: 23, scope: !4007)
!4021 = !DILocation(line: 222, column: 39, scope: !4007)
!4022 = !DILocation(line: 222, column: 30, scope: !4007)
!4023 = !DILocation(line: 223, column: 3, scope: !4007)
!4024 = !DILocation(line: 223, column: 31, scope: !4007)
!4025 = !DILocation(line: 224, column: 3, scope: !4007)
!4026 = !DILocation(line: 224, column: 23, scope: !4007)
!4027 = !DILocation(line: 226, column: 22, scope: !4007)
!4028 = !DILocation(line: 226, column: 13, scope: !4007)
!4029 = !DILocation(line: 226, column: 11, scope: !4007)
!4030 = !DILocation(line: 227, column: 23, scope: !4007)
!4031 = !DILocation(line: 227, column: 14, scope: !4007)
!4032 = !DILocation(line: 227, column: 12, scope: !4007)
!4033 = !DILocation(line: 229, column: 15, scope: !4007)
!4034 = !DILocation(line: 229, column: 3, scope: !4007)
!4035 = !DILocation(line: 230, column: 17, scope: !4007)
!4036 = !DILocation(line: 230, column: 3, scope: !4007)
!4037 = !DILocation(line: 231, column: 2, scope: !4008)
!4038 = !DILocation(line: 231, column: 2, scope: !4007)
!4039 = distinct !{!4039, !4017, !4040, !3997, !3998}
!4040 = !DILocation(line: 231, column: 2, scope: !4009)
!4041 = !DILocation(line: 232, column: 1, scope: !4001)
!4042 = distinct !DISubprogram(name: "pids_can_fork", scope: !3, file: !3, line: 238, type: !3767, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4043)
!4043 = !{!4044, !4045, !4046, !4047, !4048, !4049}
!4044 = !DILocalVariable(name: "task", arg: 1, scope: !4042, file: !3, line: 238, type: !1462)
!4045 = !DILocalVariable(name: "cset", arg: 2, scope: !4042, file: !3, line: 238, type: !2078)
!4046 = !DILocalVariable(name: "css", scope: !4042, file: !3, line: 240, type: !2083)
!4047 = !DILocalVariable(name: "pids", scope: !4042, file: !3, line: 241, type: !185)
!4048 = !DILocalVariable(name: "err", scope: !4042, file: !3, line: 242, type: !25)
!4049 = !DILocalVariable(name: "__UNIQUE_ID_rcu266", scope: !4050, file: !3, line: 247, type: !2078)
!4050 = distinct !DILexicalBlock(scope: !4051, file: !3, line: 247, column: 9)
!4051 = distinct !DILexicalBlock(scope: !4042, file: !3, line: 244, column: 6)
!4052 = !DILocation(line: 238, column: 46, scope: !4042)
!4053 = !DILocation(line: 238, column: 68, scope: !4042)
!4054 = !DILocation(line: 240, column: 2, scope: !4042)
!4055 = !DILocation(line: 240, column: 30, scope: !4042)
!4056 = !DILocation(line: 241, column: 2, scope: !4042)
!4057 = !DILocation(line: 241, column: 22, scope: !4042)
!4058 = !DILocation(line: 242, column: 2, scope: !4042)
!4059 = !DILocation(line: 242, column: 6, scope: !4042)
!4060 = !DILocation(line: 244, column: 6, scope: !4051)
!4061 = !DILocation(line: 244, column: 6, scope: !4042)
!4062 = !DILocation(line: 245, column: 9, scope: !4051)
!4063 = !DILocation(line: 245, column: 15, scope: !4051)
!4064 = !DILocation(line: 245, column: 7, scope: !4051)
!4065 = !DILocation(line: 245, column: 3, scope: !4051)
!4066 = !DILocation(line: 247, column: 9, scope: !4050)
!4067 = !DILocation(line: 247, column: 9, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 247, column: 9)
!4069 = !DILocation(line: 247, column: 9, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 247, column: 9)
!4071 = !DILocation(line: 247, column: 9, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 247, column: 9)
!4073 = !DILocation(line: 247, column: 9, scope: !4051)
!4074 = !DILocation(line: 247, column: 7, scope: !4051)
!4075 = !DILocation(line: 248, column: 18, scope: !4042)
!4076 = !DILocation(line: 248, column: 9, scope: !4042)
!4077 = !DILocation(line: 248, column: 7, scope: !4042)
!4078 = !DILocation(line: 249, column: 24, scope: !4042)
!4079 = !DILocation(line: 249, column: 8, scope: !4042)
!4080 = !DILocation(line: 249, column: 6, scope: !4042)
!4081 = !DILocation(line: 250, column: 6, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4042, file: !3, line: 250, column: 6)
!4083 = !DILocation(line: 250, column: 6, scope: !4042)
!4084 = !DILocation(line: 252, column: 28, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4086, file: !3, line: 252, column: 7)
!4086 = distinct !DILexicalBlock(scope: !4082, file: !3, line: 250, column: 11)
!4087 = !DILocation(line: 252, column: 34, scope: !4085)
!4088 = !DILocation(line: 252, column: 7, scope: !4085)
!4089 = !DILocation(line: 252, column: 48, scope: !4085)
!4090 = !DILocation(line: 252, column: 7, scope: !4086)
!4091 = !DILocation(line: 253, column: 4, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4093, file: !3, line: 253, column: 4)
!4093 = distinct !DILexicalBlock(scope: !4085, file: !3, line: 252, column: 54)
!4094 = !DILocation(line: 253, column: 4, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 253, column: 4)
!4096 = !DILocation(line: 254, column: 24, scope: !4093)
!4097 = !DILocation(line: 254, column: 29, scope: !4093)
!4098 = !DILocation(line: 254, column: 4, scope: !4093)
!4099 = !DILocation(line: 255, column: 4, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4093, file: !3, line: 255, column: 4)
!4101 = !DILocation(line: 255, column: 4, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 255, column: 4)
!4103 = !DILocation(line: 256, column: 3, scope: !4093)
!4104 = !DILocation(line: 257, column: 23, scope: !4086)
!4105 = !DILocation(line: 257, column: 29, scope: !4086)
!4106 = !DILocation(line: 257, column: 3, scope: !4086)
!4107 = !DILocation(line: 258, column: 2, scope: !4086)
!4108 = !DILocation(line: 259, column: 9, scope: !4042)
!4109 = !DILocation(line: 260, column: 1, scope: !4042)
!4110 = !DILocation(line: 259, column: 2, scope: !4042)
!4111 = distinct !DISubprogram(name: "pids_cancel_fork", scope: !3, file: !3, line: 262, type: !3771, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4112)
!4112 = !{!4113, !4114, !4115, !4116, !4117}
!4113 = !DILocalVariable(name: "task", arg: 1, scope: !4111, file: !3, line: 262, type: !1462)
!4114 = !DILocalVariable(name: "cset", arg: 2, scope: !4111, file: !3, line: 262, type: !2078)
!4115 = !DILocalVariable(name: "css", scope: !4111, file: !3, line: 264, type: !2083)
!4116 = !DILocalVariable(name: "pids", scope: !4111, file: !3, line: 265, type: !185)
!4117 = !DILocalVariable(name: "__UNIQUE_ID_rcu268", scope: !4118, file: !3, line: 270, type: !2078)
!4118 = distinct !DILexicalBlock(scope: !4119, file: !3, line: 270, column: 9)
!4119 = distinct !DILexicalBlock(scope: !4111, file: !3, line: 267, column: 6)
!4120 = !DILocation(line: 262, column: 50, scope: !4111)
!4121 = !DILocation(line: 262, column: 72, scope: !4111)
!4122 = !DILocation(line: 264, column: 2, scope: !4111)
!4123 = !DILocation(line: 264, column: 30, scope: !4111)
!4124 = !DILocation(line: 265, column: 2, scope: !4111)
!4125 = !DILocation(line: 265, column: 22, scope: !4111)
!4126 = !DILocation(line: 267, column: 6, scope: !4119)
!4127 = !DILocation(line: 267, column: 6, scope: !4111)
!4128 = !DILocation(line: 268, column: 9, scope: !4119)
!4129 = !DILocation(line: 268, column: 15, scope: !4119)
!4130 = !DILocation(line: 268, column: 7, scope: !4119)
!4131 = !DILocation(line: 268, column: 3, scope: !4119)
!4132 = !DILocation(line: 270, column: 9, scope: !4118)
!4133 = !DILocation(line: 270, column: 9, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4118, file: !3, line: 270, column: 9)
!4135 = !DILocation(line: 270, column: 9, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4134, file: !3, line: 270, column: 9)
!4137 = !DILocation(line: 270, column: 9, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4118, file: !3, line: 270, column: 9)
!4139 = !DILocation(line: 270, column: 9, scope: !4119)
!4140 = !DILocation(line: 270, column: 7, scope: !4119)
!4141 = !DILocation(line: 271, column: 18, scope: !4111)
!4142 = !DILocation(line: 271, column: 9, scope: !4111)
!4143 = !DILocation(line: 271, column: 7, scope: !4111)
!4144 = !DILocation(line: 272, column: 16, scope: !4111)
!4145 = !DILocation(line: 272, column: 2, scope: !4111)
!4146 = !DILocation(line: 273, column: 1, scope: !4111)
!4147 = distinct !DISubprogram(name: "pids_release", scope: !3, file: !3, line: 275, type: !3775, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4148)
!4148 = !{!4149, !4150}
!4149 = !DILocalVariable(name: "task", arg: 1, scope: !4147, file: !3, line: 275, type: !1462)
!4150 = !DILocalVariable(name: "pids", scope: !4147, file: !3, line: 277, type: !185)
!4151 = !DILocation(line: 275, column: 46, scope: !4147)
!4152 = !DILocation(line: 277, column: 2, scope: !4147)
!4153 = !DILocation(line: 277, column: 22, scope: !4147)
!4154 = !DILocation(line: 277, column: 47, scope: !4147)
!4155 = !DILocation(line: 277, column: 38, scope: !4147)
!4156 = !DILocation(line: 277, column: 29, scope: !4147)
!4157 = !DILocation(line: 279, column: 16, scope: !4147)
!4158 = !DILocation(line: 279, column: 2, scope: !4147)
!4159 = !DILocation(line: 280, column: 1, scope: !4147)
!4160 = distinct !DISubprogram(name: "kzalloc", scope: !152, file: !152, line: 719, type: !4161, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4163)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!23, !38, !180}
!4163 = !{!4164, !4165}
!4164 = !DILocalVariable(name: "size", arg: 1, scope: !4160, file: !152, line: 719, type: !38)
!4165 = !DILocalVariable(name: "flags", arg: 2, scope: !4160, file: !152, line: 719, type: !180)
!4166 = !DILocation(line: 719, column: 52, scope: !4160)
!4167 = !DILocation(line: 719, column: 64, scope: !4160)
!4168 = !DILocation(line: 721, column: 17, scope: !4160)
!4169 = !DILocation(line: 721, column: 23, scope: !4160)
!4170 = !DILocation(line: 721, column: 29, scope: !4160)
!4171 = !DILocation(line: 721, column: 9, scope: !4160)
!4172 = !DILocation(line: 721, column: 2, scope: !4160)
!4173 = distinct !DISubprogram(name: "ERR_PTR", scope: !4174, file: !4174, line: 39, type: !4175, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4177)
!4174 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!23, !731}
!4177 = !{!4178}
!4178 = !DILocalVariable(name: "error", arg: 1, scope: !4173, file: !4174, line: 39, type: !731)
!4179 = !DILocation(line: 39, column: 48, scope: !4173)
!4180 = !DILocation(line: 41, column: 18, scope: !4173)
!4181 = !DILocation(line: 41, column: 9, scope: !4173)
!4182 = !DILocation(line: 41, column: 2, scope: !4173)
!4183 = distinct !DISubprogram(name: "atomic64_set", scope: !4184, file: !4184, line: 1629, type: !4185, scopeLine: 1630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4188)
!4184 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4185 = !DISubroutineType(types: !4186)
!4186 = !{null, !4187, !183}
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!4188 = !{!4189, !4190}
!4189 = !DILocalVariable(name: "v", arg: 1, scope: !4183, file: !4184, line: 1629, type: !4187)
!4190 = !DILocalVariable(name: "i", arg: 2, scope: !4183, file: !4184, line: 1629, type: !183)
!4191 = !DILocation(line: 1629, column: 26, scope: !4183)
!4192 = !DILocation(line: 1629, column: 33, scope: !4183)
!4193 = !DILocation(line: 1631, column: 26, scope: !4183)
!4194 = !DILocation(line: 1631, column: 2, scope: !4183)
!4195 = !DILocation(line: 1632, column: 19, scope: !4183)
!4196 = !DILocation(line: 1632, column: 22, scope: !4183)
!4197 = !DILocation(line: 1632, column: 2, scope: !4183)
!4198 = !DILocation(line: 1633, column: 1, scope: !4183)
!4199 = distinct !DISubprogram(name: "kmalloc", scope: !152, file: !152, line: 591, type: !4161, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4200)
!4200 = !{!4201, !4202, !4203}
!4201 = !DILocalVariable(name: "size", arg: 1, scope: !4199, file: !152, line: 591, type: !38)
!4202 = !DILocalVariable(name: "flags", arg: 2, scope: !4199, file: !152, line: 591, type: !180)
!4203 = !DILocalVariable(name: "index", scope: !4204, file: !152, line: 594, type: !7)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !152, line: 593, column: 42)
!4205 = distinct !DILexicalBlock(scope: !4199, file: !152, line: 593, column: 6)
!4206 = !DILocation(line: 591, column: 61, scope: !4199)
!4207 = !DILocation(line: 591, column: 73, scope: !4199)
!4208 = !DILocation(line: 593, column: 27, scope: !4205)
!4209 = !DILocation(line: 593, column: 6, scope: !4205)
!4210 = !DILocation(line: 593, column: 33, scope: !4205)
!4211 = !DILocation(line: 593, column: 36, scope: !4205)
!4212 = !DILocation(line: 593, column: 6, scope: !4199)
!4213 = !DILocation(line: 594, column: 3, scope: !4204)
!4214 = !DILocation(line: 594, column: 16, scope: !4204)
!4215 = !DILocation(line: 596, column: 7, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4204, file: !152, line: 596, column: 7)
!4217 = !DILocation(line: 596, column: 12, scope: !4216)
!4218 = !DILocation(line: 596, column: 7, scope: !4204)
!4219 = !DILocation(line: 597, column: 25, scope: !4216)
!4220 = !DILocation(line: 597, column: 31, scope: !4216)
!4221 = !DILocation(line: 597, column: 11, scope: !4216)
!4222 = !DILocation(line: 597, column: 4, scope: !4216)
!4223 = !DILocation(line: 599, column: 11, scope: !4204)
!4224 = !DILocation(line: 599, column: 9, scope: !4204)
!4225 = !DILocation(line: 601, column: 33, scope: !4204)
!4226 = !DILocation(line: 601, column: 40, scope: !4204)
!4227 = !DILocation(line: 601, column: 20, scope: !4204)
!4228 = !DILocation(line: 601, column: 5, scope: !4204)
!4229 = !DILocation(line: 601, column: 51, scope: !4204)
!4230 = !DILocation(line: 602, column: 5, scope: !4204)
!4231 = !DILocation(line: 602, column: 12, scope: !4204)
!4232 = !DILocation(line: 600, column: 10, scope: !4204)
!4233 = !DILocation(line: 600, column: 3, scope: !4204)
!4234 = !DILocation(line: 603, column: 2, scope: !4205)
!4235 = !DILocation(line: 604, column: 19, scope: !4199)
!4236 = !DILocation(line: 604, column: 25, scope: !4199)
!4237 = !DILocation(line: 604, column: 9, scope: !4199)
!4238 = !DILocation(line: 604, column: 2, scope: !4199)
!4239 = !DILocation(line: 605, column: 1, scope: !4199)
!4240 = !DISubprogram(name: "kmalloc_large", scope: !152, file: !152, line: 531, type: !4161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4241 = distinct !DISubprogram(name: "__kmalloc_index", scope: !152, file: !152, line: 444, type: !4242, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4244)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!7, !38, !500}
!4244 = !{!4245, !4246}
!4245 = !DILocalVariable(name: "size", arg: 1, scope: !4241, file: !152, line: 444, type: !38)
!4246 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4241, file: !152, line: 445, type: !500)
!4247 = !DILocation(line: 444, column: 60, scope: !4241)
!4248 = !DILocation(line: 445, column: 16, scope: !4241)
!4249 = !DILocation(line: 447, column: 7, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 447, column: 6)
!4251 = !DILocation(line: 447, column: 6, scope: !4241)
!4252 = !DILocation(line: 448, column: 3, scope: !4250)
!4253 = !DILocation(line: 450, column: 6, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 450, column: 6)
!4255 = !DILocation(line: 450, column: 11, scope: !4254)
!4256 = !DILocation(line: 450, column: 6, scope: !4241)
!4257 = !DILocation(line: 451, column: 3, scope: !4254)
!4258 = !DILocation(line: 453, column: 32, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 453, column: 6)
!4260 = !DILocation(line: 453, column: 37, scope: !4259)
!4261 = !DILocation(line: 453, column: 42, scope: !4259)
!4262 = !DILocation(line: 453, column: 45, scope: !4259)
!4263 = !DILocation(line: 453, column: 50, scope: !4259)
!4264 = !DILocation(line: 453, column: 6, scope: !4241)
!4265 = !DILocation(line: 454, column: 3, scope: !4259)
!4266 = !DILocation(line: 455, column: 32, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 455, column: 6)
!4268 = !DILocation(line: 455, column: 37, scope: !4267)
!4269 = !DILocation(line: 455, column: 43, scope: !4267)
!4270 = !DILocation(line: 455, column: 46, scope: !4267)
!4271 = !DILocation(line: 455, column: 51, scope: !4267)
!4272 = !DILocation(line: 455, column: 6, scope: !4241)
!4273 = !DILocation(line: 456, column: 3, scope: !4267)
!4274 = !DILocation(line: 457, column: 6, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 457, column: 6)
!4276 = !DILocation(line: 457, column: 11, scope: !4275)
!4277 = !DILocation(line: 457, column: 6, scope: !4241)
!4278 = !DILocation(line: 457, column: 26, scope: !4275)
!4279 = !DILocation(line: 458, column: 6, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 458, column: 6)
!4281 = !DILocation(line: 458, column: 11, scope: !4280)
!4282 = !DILocation(line: 458, column: 6, scope: !4241)
!4283 = !DILocation(line: 458, column: 26, scope: !4280)
!4284 = !DILocation(line: 459, column: 6, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 459, column: 6)
!4286 = !DILocation(line: 459, column: 11, scope: !4285)
!4287 = !DILocation(line: 459, column: 6, scope: !4241)
!4288 = !DILocation(line: 459, column: 26, scope: !4285)
!4289 = !DILocation(line: 460, column: 6, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 460, column: 6)
!4291 = !DILocation(line: 460, column: 11, scope: !4290)
!4292 = !DILocation(line: 460, column: 6, scope: !4241)
!4293 = !DILocation(line: 460, column: 26, scope: !4290)
!4294 = !DILocation(line: 461, column: 6, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 461, column: 6)
!4296 = !DILocation(line: 461, column: 11, scope: !4295)
!4297 = !DILocation(line: 461, column: 6, scope: !4241)
!4298 = !DILocation(line: 461, column: 26, scope: !4295)
!4299 = !DILocation(line: 462, column: 6, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 462, column: 6)
!4301 = !DILocation(line: 462, column: 11, scope: !4300)
!4302 = !DILocation(line: 462, column: 6, scope: !4241)
!4303 = !DILocation(line: 462, column: 26, scope: !4300)
!4304 = !DILocation(line: 463, column: 6, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 463, column: 6)
!4306 = !DILocation(line: 463, column: 11, scope: !4305)
!4307 = !DILocation(line: 463, column: 6, scope: !4241)
!4308 = !DILocation(line: 463, column: 26, scope: !4305)
!4309 = !DILocation(line: 464, column: 6, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 464, column: 6)
!4311 = !DILocation(line: 464, column: 11, scope: !4310)
!4312 = !DILocation(line: 464, column: 6, scope: !4241)
!4313 = !DILocation(line: 464, column: 26, scope: !4310)
!4314 = !DILocation(line: 465, column: 6, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 465, column: 6)
!4316 = !DILocation(line: 465, column: 11, scope: !4315)
!4317 = !DILocation(line: 465, column: 6, scope: !4241)
!4318 = !DILocation(line: 465, column: 26, scope: !4315)
!4319 = !DILocation(line: 466, column: 6, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 466, column: 6)
!4321 = !DILocation(line: 466, column: 11, scope: !4320)
!4322 = !DILocation(line: 466, column: 6, scope: !4241)
!4323 = !DILocation(line: 466, column: 26, scope: !4320)
!4324 = !DILocation(line: 467, column: 6, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 467, column: 6)
!4326 = !DILocation(line: 467, column: 11, scope: !4325)
!4327 = !DILocation(line: 467, column: 6, scope: !4241)
!4328 = !DILocation(line: 467, column: 26, scope: !4325)
!4329 = !DILocation(line: 468, column: 6, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 468, column: 6)
!4331 = !DILocation(line: 468, column: 11, scope: !4330)
!4332 = !DILocation(line: 468, column: 6, scope: !4241)
!4333 = !DILocation(line: 468, column: 26, scope: !4330)
!4334 = !DILocation(line: 469, column: 6, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 469, column: 6)
!4336 = !DILocation(line: 469, column: 11, scope: !4335)
!4337 = !DILocation(line: 469, column: 6, scope: !4241)
!4338 = !DILocation(line: 469, column: 26, scope: !4335)
!4339 = !DILocation(line: 470, column: 6, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 470, column: 6)
!4341 = !DILocation(line: 470, column: 11, scope: !4340)
!4342 = !DILocation(line: 470, column: 6, scope: !4241)
!4343 = !DILocation(line: 470, column: 26, scope: !4340)
!4344 = !DILocation(line: 471, column: 6, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 471, column: 6)
!4346 = !DILocation(line: 471, column: 11, scope: !4345)
!4347 = !DILocation(line: 471, column: 6, scope: !4241)
!4348 = !DILocation(line: 471, column: 26, scope: !4345)
!4349 = !DILocation(line: 472, column: 6, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 472, column: 6)
!4351 = !DILocation(line: 472, column: 11, scope: !4350)
!4352 = !DILocation(line: 472, column: 6, scope: !4241)
!4353 = !DILocation(line: 472, column: 26, scope: !4350)
!4354 = !DILocation(line: 473, column: 6, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 473, column: 6)
!4356 = !DILocation(line: 473, column: 11, scope: !4355)
!4357 = !DILocation(line: 473, column: 6, scope: !4241)
!4358 = !DILocation(line: 473, column: 26, scope: !4355)
!4359 = !DILocation(line: 474, column: 6, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 474, column: 6)
!4361 = !DILocation(line: 474, column: 11, scope: !4360)
!4362 = !DILocation(line: 474, column: 6, scope: !4241)
!4363 = !DILocation(line: 474, column: 27, scope: !4360)
!4364 = !DILocation(line: 475, column: 6, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 475, column: 6)
!4366 = !DILocation(line: 475, column: 11, scope: !4365)
!4367 = !DILocation(line: 475, column: 6, scope: !4241)
!4368 = !DILocation(line: 475, column: 32, scope: !4365)
!4369 = !DILocation(line: 477, column: 50, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4241, file: !152, line: 477, column: 6)
!4371 = !{i8 0, i8 2}
!4372 = !DILocation(line: 477, column: 6, scope: !4241)
!4373 = !DILocation(line: 478, column: 3, scope: !4370)
!4374 = !DILocation(line: 478, column: 3, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4376, file: !152, line: 478, column: 3)
!4376 = distinct !DILexicalBlock(scope: !4370, file: !152, line: 478, column: 3)
!4377 = !{i32 -2141677886}
!4378 = !DILocation(line: 478, column: 3, scope: !4376)
!4379 = !DILocation(line: 480, column: 3, scope: !4370)
!4380 = !DILocation(line: 480, column: 3, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4370, file: !152, line: 480, column: 3)
!4382 = !DILocation(line: 480, column: 3, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4381, file: !152, line: 480, column: 3)
!4384 = !DILocation(line: 480, column: 3, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4381, file: !152, line: 480, column: 3)
!4386 = !{i64 2153289613, i64 2153289642, i64 2153289688, i64 2153289746, i64 2153289800, i64 2153289854, i64 2153289909, i64 2153289940}
!4387 = !DILocation(line: 483, column: 2, scope: !4241)
!4388 = !DILocation(line: 484, column: 1, scope: !4241)
!4389 = !DISubprogram(name: "kmalloc_trace", scope: !152, file: !152, line: 525, type: !4390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!23, !4392, !180, !38}
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4394, line: 325, flags: DIFlagFwdDecl)
!4394 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4395 = distinct !DISubprogram(name: "kmalloc_type", scope: !152, file: !152, line: 401, type: !4396, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4398)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!151, !180, !42}
!4398 = !{!4399, !4400}
!4399 = !DILocalVariable(name: "flags", arg: 1, scope: !4395, file: !152, line: 401, type: !180)
!4400 = !DILocalVariable(name: "caller", arg: 2, scope: !4395, file: !152, line: 401, type: !42)
!4401 = !DILocation(line: 401, column: 67, scope: !4395)
!4402 = !DILocation(line: 401, column: 88, scope: !4395)
!4403 = !DILocation(line: 407, column: 6, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4395, file: !152, line: 407, column: 6)
!4405 = !DILocation(line: 407, column: 6, scope: !4395)
!4406 = !DILocation(line: 413, column: 3, scope: !4404)
!4407 = !DILocation(line: 423, column: 38, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4395, file: !152, line: 423, column: 6)
!4409 = !DILocation(line: 423, column: 44, scope: !4408)
!4410 = !DILocation(line: 423, column: 6, scope: !4395)
!4411 = !DILocation(line: 424, column: 3, scope: !4408)
!4412 = !DILocation(line: 426, column: 3, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4395, file: !152, line: 425, column: 6)
!4414 = !DILocation(line: 429, column: 1, scope: !4395)
!4415 = !DISubprogram(name: "__kmalloc", scope: !152, file: !152, line: 488, type: !4161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4416 = !DISubprogram(name: "__compiletime_assert_245", scope: !152, file: !152, line: 478, type: !2337, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4417 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4418, file: !4418, line: 80, type: !4419, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4424)
!4418 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4419 = !DISubroutineType(types: !4420)
!4420 = !{null, !4421, !38}
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4423)
!4423 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4424 = !{!4425, !4426}
!4425 = !DILocalVariable(name: "v", arg: 1, scope: !4417, file: !4418, line: 80, type: !4421)
!4426 = !DILocalVariable(name: "size", arg: 2, scope: !4417, file: !4418, line: 80, type: !38)
!4427 = !DILocation(line: 80, column: 74, scope: !4417)
!4428 = !DILocation(line: 80, column: 84, scope: !4417)
!4429 = !DILocation(line: 82, column: 20, scope: !4417)
!4430 = !DILocation(line: 82, column: 23, scope: !4417)
!4431 = !DILocation(line: 82, column: 2, scope: !4417)
!4432 = !DILocation(line: 83, column: 2, scope: !4417)
!4433 = !DILocation(line: 84, column: 1, scope: !4417)
!4434 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !4435, file: !4435, line: 2600, type: !4185, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4436)
!4435 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4436 = !{!4437, !4438}
!4437 = !DILocalVariable(name: "v", arg: 1, scope: !4434, file: !4435, line: 2600, type: !4187)
!4438 = !DILocalVariable(name: "i", arg: 2, scope: !4434, file: !4435, line: 2600, type: !183)
!4439 = !DILocation(line: 2600, column: 30, scope: !4434)
!4440 = !DILocation(line: 2600, column: 37, scope: !4434)
!4441 = !DILocation(line: 2602, column: 20, scope: !4434)
!4442 = !DILocation(line: 2602, column: 23, scope: !4434)
!4443 = !DILocation(line: 2602, column: 2, scope: !4434)
!4444 = !DILocation(line: 2603, column: 1, scope: !4434)
!4445 = distinct !DISubprogram(name: "kasan_check_write", scope: !4446, file: !4446, line: 44, type: !4447, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4449)
!4446 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!500, !4421, !7}
!4449 = !{!4450, !4451}
!4450 = !DILocalVariable(name: "p", arg: 1, scope: !4445, file: !4446, line: 44, type: !4421)
!4451 = !DILocalVariable(name: "size", arg: 2, scope: !4445, file: !4446, line: 44, type: !7)
!4452 = !DILocation(line: 44, column: 59, scope: !4445)
!4453 = !DILocation(line: 44, column: 75, scope: !4445)
!4454 = !DILocation(line: 46, column: 2, scope: !4445)
!4455 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4456, file: !4456, line: 229, type: !4457, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4459)
!4456 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4457 = !DISubroutineType(types: !4458)
!4458 = !{null, !4421, !38, !25}
!4459 = !{!4460, !4461, !4462}
!4460 = !DILocalVariable(name: "ptr", arg: 1, scope: !4455, file: !4456, line: 229, type: !4421)
!4461 = !DILocalVariable(name: "size", arg: 2, scope: !4455, file: !4456, line: 229, type: !38)
!4462 = !DILocalVariable(name: "type", arg: 3, scope: !4455, file: !4456, line: 230, type: !25)
!4463 = !DILocation(line: 229, column: 60, scope: !4455)
!4464 = !DILocation(line: 229, column: 72, scope: !4455)
!4465 = !DILocation(line: 230, column: 15, scope: !4455)
!4466 = !DILocation(line: 230, column: 23, scope: !4455)
!4467 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !4468, file: !4468, line: 18, type: !4185, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4469)
!4468 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!4469 = !{!4470, !4471}
!4470 = !DILocalVariable(name: "v", arg: 1, scope: !4467, file: !4468, line: 18, type: !4187)
!4471 = !DILocalVariable(name: "i", arg: 2, scope: !4467, file: !4468, line: 18, type: !183)
!4472 = !DILocation(line: 18, column: 59, scope: !4467)
!4473 = !DILocation(line: 18, column: 66, scope: !4467)
!4474 = !DILocation(line: 20, column: 2, scope: !4467)
!4475 = !DILocation(line: 20, column: 2, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4467, file: !4468, line: 20, column: 2)
!4477 = !DILocation(line: 21, column: 1, scope: !4467)
!4478 = !DISubprogram(name: "kfree", scope: !152, file: !152, line: 227, type: !4479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{null, !225}
!4481 = distinct !DISubprogram(name: "css_pids", scope: !3, file: !3, line: 59, type: !4482, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4484)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{!185, !2083}
!4484 = !{!4485, !4486}
!4485 = !DILocalVariable(name: "css", arg: 1, scope: !4481, file: !3, line: 59, type: !2083)
!4486 = !DILocalVariable(name: "__mptr", scope: !4487, file: !3, line: 61, type: !23)
!4487 = distinct !DILexicalBlock(scope: !4481, file: !3, line: 61, column: 9)
!4488 = !DILocation(line: 59, column: 65, scope: !4481)
!4489 = !DILocation(line: 61, column: 9, scope: !4487)
!4490 = !DILocation(line: 61, column: 9, scope: !4481)
!4491 = !DILocation(line: 61, column: 2, scope: !4481)
!4492 = !DISubprogram(name: "cgroup_taskset_first", scope: !2072, file: !2072, line: 153, type: !4493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!1462, !3756, !4495}
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!4496 = distinct !DISubprogram(name: "task_css", scope: !2072, file: !2072, line: 433, type: !4497, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4499)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!2083, !1462, !25}
!4499 = !{!4500, !4501, !4502}
!4500 = !DILocalVariable(name: "task", arg: 1, scope: !4496, file: !2072, line: 433, type: !1462)
!4501 = !DILocalVariable(name: "subsys_id", arg: 2, scope: !4496, file: !2072, line: 434, type: !25)
!4502 = !DILocalVariable(name: "__UNIQUE_ID_rcu260", scope: !4503, file: !2072, line: 436, type: !2078)
!4503 = distinct !DILexicalBlock(scope: !4496, file: !2072, line: 436, column: 9)
!4504 = !DILocation(line: 433, column: 72, scope: !4496)
!4505 = !DILocation(line: 434, column: 14, scope: !4496)
!4506 = !DILocation(line: 436, column: 9, scope: !4503)
!4507 = !DILocation(line: 436, column: 9, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4503, file: !2072, line: 436, column: 9)
!4509 = !DILocation(line: 436, column: 9, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4508, file: !2072, line: 436, column: 9)
!4511 = !DILocation(line: 436, column: 9, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4503, file: !2072, line: 436, column: 9)
!4513 = !DILocation(line: 436, column: 9, scope: !4496)
!4514 = !DILocation(line: 436, column: 2, scope: !4496)
!4515 = distinct !DISubprogram(name: "pids_charge", scope: !3, file: !3, line: 138, type: !4516, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4518)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{null, !185, !25}
!4518 = !{!4519, !4520, !4521, !4522}
!4519 = !DILocalVariable(name: "pids", arg: 1, scope: !4515, file: !3, line: 138, type: !185)
!4520 = !DILocalVariable(name: "num", arg: 2, scope: !4515, file: !3, line: 138, type: !25)
!4521 = !DILocalVariable(name: "p", scope: !4515, file: !3, line: 140, type: !185)
!4522 = !DILocalVariable(name: "new", scope: !4523, file: !3, line: 143, type: !3873)
!4523 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 142, column: 53)
!4524 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 142, column: 2)
!4525 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 142, column: 2)
!4526 = !DILocation(line: 138, column: 45, scope: !4515)
!4527 = !DILocation(line: 138, column: 55, scope: !4515)
!4528 = !DILocation(line: 140, column: 2, scope: !4515)
!4529 = !DILocation(line: 140, column: 22, scope: !4515)
!4530 = !DILocation(line: 142, column: 11, scope: !4525)
!4531 = !DILocation(line: 142, column: 9, scope: !4525)
!4532 = !DILocation(line: 142, column: 7, scope: !4525)
!4533 = !DILocation(line: 142, column: 29, scope: !4524)
!4534 = !DILocation(line: 142, column: 17, scope: !4524)
!4535 = !DILocation(line: 142, column: 2, scope: !4525)
!4536 = !DILocation(line: 143, column: 3, scope: !4523)
!4537 = !DILocation(line: 143, column: 11, scope: !4523)
!4538 = !DILocation(line: 143, column: 37, scope: !4523)
!4539 = !DILocation(line: 143, column: 43, scope: !4523)
!4540 = !DILocation(line: 143, column: 46, scope: !4523)
!4541 = !DILocation(line: 143, column: 17, scope: !4523)
!4542 = !DILocation(line: 145, column: 25, scope: !4523)
!4543 = !DILocation(line: 145, column: 28, scope: !4523)
!4544 = !DILocation(line: 145, column: 3, scope: !4523)
!4545 = !DILocation(line: 146, column: 2, scope: !4524)
!4546 = !DILocation(line: 146, column: 2, scope: !4523)
!4547 = !DILocation(line: 142, column: 49, scope: !4524)
!4548 = !DILocation(line: 142, column: 37, scope: !4524)
!4549 = !DILocation(line: 142, column: 35, scope: !4524)
!4550 = !DILocation(line: 142, column: 2, scope: !4524)
!4551 = distinct !{!4551, !4535, !4552, !3997, !3998}
!4552 = !DILocation(line: 146, column: 2, scope: !4525)
!4553 = !DILocation(line: 147, column: 1, scope: !4515)
!4554 = distinct !DISubprogram(name: "pids_uncharge", scope: !3, file: !3, line: 121, type: !4516, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4555)
!4555 = !{!4556, !4557, !4558}
!4556 = !DILocalVariable(name: "pids", arg: 1, scope: !4554, file: !3, line: 121, type: !185)
!4557 = !DILocalVariable(name: "num", arg: 2, scope: !4554, file: !3, line: 121, type: !25)
!4558 = !DILocalVariable(name: "p", scope: !4554, file: !3, line: 123, type: !185)
!4559 = !DILocation(line: 121, column: 47, scope: !4554)
!4560 = !DILocation(line: 121, column: 57, scope: !4554)
!4561 = !DILocation(line: 123, column: 2, scope: !4554)
!4562 = !DILocation(line: 123, column: 22, scope: !4554)
!4563 = !DILocation(line: 125, column: 11, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 125, column: 2)
!4565 = !DILocation(line: 125, column: 9, scope: !4564)
!4566 = !DILocation(line: 125, column: 7, scope: !4564)
!4567 = !DILocation(line: 125, column: 29, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 125, column: 2)
!4569 = !DILocation(line: 125, column: 17, scope: !4568)
!4570 = !DILocation(line: 125, column: 2, scope: !4564)
!4571 = !DILocation(line: 126, column: 15, scope: !4568)
!4572 = !DILocation(line: 126, column: 18, scope: !4568)
!4573 = !DILocation(line: 126, column: 3, scope: !4568)
!4574 = !DILocation(line: 125, column: 49, scope: !4568)
!4575 = !DILocation(line: 125, column: 37, scope: !4568)
!4576 = !DILocation(line: 125, column: 35, scope: !4568)
!4577 = !DILocation(line: 125, column: 2, scope: !4568)
!4578 = distinct !{!4578, !4570, !4579, !3997, !3998}
!4579 = !DILocation(line: 126, column: 21, scope: !4564)
!4580 = !DILocation(line: 127, column: 1, scope: !4554)
!4581 = !DISubprogram(name: "cgroup_taskset_next", scope: !2072, file: !2072, line: 155, type: !4493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4582 = distinct !DISubprogram(name: "parent_pids", scope: !3, file: !3, line: 64, type: !4583, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4585)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!185, !185}
!4585 = !{!4586}
!4586 = !DILocalVariable(name: "pids", arg: 1, scope: !4582, file: !3, line: 64, type: !185)
!4587 = !DILocation(line: 64, column: 60, scope: !4582)
!4588 = !DILocation(line: 66, column: 18, scope: !4582)
!4589 = !DILocation(line: 66, column: 24, scope: !4582)
!4590 = !DILocation(line: 66, column: 28, scope: !4582)
!4591 = !DILocation(line: 66, column: 9, scope: !4582)
!4592 = !DILocation(line: 66, column: 2, scope: !4582)
!4593 = distinct !DISubprogram(name: "atomic64_add_return", scope: !4184, file: !4184, line: 1684, type: !4594, scopeLine: 1685, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4596)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!183, !183, !4187}
!4596 = !{!4597, !4598}
!4597 = !DILocalVariable(name: "i", arg: 1, scope: !4593, file: !4184, line: 1684, type: !183)
!4598 = !DILocalVariable(name: "v", arg: 2, scope: !4593, file: !4184, line: 1684, type: !4187)
!4599 = !DILocation(line: 1684, column: 25, scope: !4593)
!4600 = !DILocation(line: 1684, column: 40, scope: !4593)
!4601 = !DILocation(line: 1686, column: 2, scope: !4593)
!4602 = !DILocation(line: 1686, column: 2, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4593, file: !4184, line: 1686, column: 2)
!4604 = !DILocation(line: 1687, column: 31, scope: !4593)
!4605 = !DILocation(line: 1687, column: 2, scope: !4593)
!4606 = !DILocation(line: 1688, column: 33, scope: !4593)
!4607 = !DILocation(line: 1688, column: 36, scope: !4593)
!4608 = !DILocation(line: 1688, column: 9, scope: !4593)
!4609 = !DILocation(line: 1688, column: 2, scope: !4593)
!4610 = distinct !DISubprogram(name: "pids_update_watermark", scope: !3, file: !3, line: 89, type: !4611, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4613)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{null, !185, !3873}
!4613 = !{!4614, !4615}
!4614 = !DILocalVariable(name: "p", arg: 1, scope: !4610, file: !3, line: 89, type: !185)
!4615 = !DILocalVariable(name: "nr_pids", arg: 2, scope: !4610, file: !3, line: 89, type: !3873)
!4616 = !DILocation(line: 89, column: 55, scope: !4610)
!4617 = !DILocation(line: 89, column: 66, scope: !4610)
!4618 = !DILocation(line: 95, column: 6, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 95, column: 6)
!4620 = !DILocation(line: 95, column: 16, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 95, column: 16)
!4622 = !DILocation(line: 95, column: 16, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 95, column: 16)
!4624 = !DILocation(line: 95, column: 14, scope: !4619)
!4625 = !DILocation(line: 95, column: 6, scope: !4610)
!4626 = !DILocation(line: 96, column: 3, scope: !4619)
!4627 = !DILocation(line: 96, column: 3, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 96, column: 3)
!4629 = !DILocation(line: 96, column: 3, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4628, file: !3, line: 96, column: 3)
!4631 = !DILocation(line: 96, column: 3, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4628, file: !3, line: 96, column: 3)
!4633 = !DILocation(line: 97, column: 1, scope: !4610)
!4634 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4418, file: !4418, line: 94, type: !4419, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4635)
!4635 = !{!4636, !4637}
!4636 = !DILocalVariable(name: "v", arg: 1, scope: !4634, file: !4418, line: 94, type: !4421)
!4637 = !DILocalVariable(name: "size", arg: 2, scope: !4634, file: !4418, line: 94, type: !38)
!4638 = !DILocation(line: 94, column: 79, scope: !4634)
!4639 = !DILocation(line: 94, column: 89, scope: !4634)
!4640 = !DILocation(line: 96, column: 20, scope: !4634)
!4641 = !DILocation(line: 96, column: 23, scope: !4634)
!4642 = !DILocation(line: 96, column: 2, scope: !4634)
!4643 = !DILocation(line: 97, column: 2, scope: !4634)
!4644 = !DILocation(line: 98, column: 1, scope: !4634)
!4645 = distinct !DISubprogram(name: "raw_atomic64_add_return", scope: !4435, file: !4435, line: 2660, type: !4594, scopeLine: 2661, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4646)
!4646 = !{!4647, !4648}
!4647 = !DILocalVariable(name: "i", arg: 1, scope: !4645, file: !4435, line: 2660, type: !183)
!4648 = !DILocalVariable(name: "v", arg: 2, scope: !4645, file: !4435, line: 2660, type: !4187)
!4649 = !DILocation(line: 2660, column: 29, scope: !4645)
!4650 = !DILocation(line: 2660, column: 44, scope: !4645)
!4651 = !DILocation(line: 2663, column: 34, scope: !4645)
!4652 = !DILocation(line: 2663, column: 37, scope: !4645)
!4653 = !DILocation(line: 2663, column: 9, scope: !4645)
!4654 = !DILocation(line: 2663, column: 2, scope: !4645)
!4655 = distinct !DISubprogram(name: "arch_atomic64_add_return", scope: !4468, file: !4468, line: 77, type: !4594, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4656)
!4656 = !{!4657, !4658, !4659}
!4657 = !DILocalVariable(name: "i", arg: 1, scope: !4655, file: !4468, line: 77, type: !183)
!4658 = !DILocalVariable(name: "v", arg: 2, scope: !4655, file: !4468, line: 77, type: !4187)
!4659 = !DILocalVariable(name: "__ret", scope: !4660, file: !4468, line: 79, type: !183)
!4660 = distinct !DILexicalBlock(scope: !4655, file: !4468, line: 79, column: 13)
!4661 = !DILocation(line: 77, column: 57, scope: !4655)
!4662 = !DILocation(line: 77, column: 72, scope: !4655)
!4663 = !DILocation(line: 79, column: 9, scope: !4655)
!4664 = !DILocation(line: 79, column: 13, scope: !4660)
!4665 = !{i64 2148125208, i64 2148125247, i64 2148125268, i64 2148125305, i64 2148125328, i64 2148125337}
!4666 = !DILocation(line: 79, column: 13, scope: !4655)
!4667 = !DILocation(line: 79, column: 11, scope: !4655)
!4668 = !DILocation(line: 79, column: 2, scope: !4655)
!4669 = distinct !DISubprogram(name: "pids_cancel", scope: !3, file: !3, line: 107, type: !4516, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4670)
!4670 = !{!4671, !4672, !4673, !4675}
!4671 = !DILocalVariable(name: "pids", arg: 1, scope: !4669, file: !3, line: 107, type: !185)
!4672 = !DILocalVariable(name: "num", arg: 2, scope: !4669, file: !3, line: 107, type: !25)
!4673 = !DILocalVariable(name: "__ret_warn_on", scope: !4674, file: !3, line: 113, type: !25)
!4674 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 113, column: 2)
!4675 = !DILocalVariable(name: "__flags", scope: !4676, file: !3, line: 113, type: !25)
!4676 = distinct !DILexicalBlock(scope: !4677, file: !3, line: 113, column: 2)
!4677 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 113, column: 2)
!4678 = !DILocation(line: 107, column: 45, scope: !4669)
!4679 = !DILocation(line: 107, column: 55, scope: !4669)
!4680 = !DILocation(line: 113, column: 2, scope: !4674)
!4681 = !DILocation(line: 113, column: 2, scope: !4677)
!4682 = !DILocation(line: 113, column: 2, scope: !4676)
!4683 = !DILocation(line: 113, column: 2, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 113, column: 2)
!4685 = !DILocation(line: 113, column: 2, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 113, column: 2)
!4687 = !{i64 2153753079, i64 2153753108, i64 2153753154, i64 2153753212, i64 2153753266, i64 2153753320, i64 2153753375, i64 2153753406, i64 2153753714, i64 2153753720, i64 2153753767, i64 2153753790, i64 2153753816}
!4688 = !DILocation(line: 113, column: 2, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 113, column: 2)
!4690 = !DILocation(line: 113, column: 2, scope: !4669)
!4691 = !DILocation(line: 114, column: 1, scope: !4669)
!4692 = distinct !DISubprogram(name: "atomic64_add_negative", scope: !4184, file: !4184, line: 2973, type: !4693, scopeLine: 2974, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4695)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!500, !183, !4187}
!4695 = !{!4696, !4697}
!4696 = !DILocalVariable(name: "i", arg: 1, scope: !4692, file: !4184, line: 2973, type: !183)
!4697 = !DILocalVariable(name: "v", arg: 2, scope: !4692, file: !4184, line: 2973, type: !4187)
!4698 = !DILocation(line: 2973, column: 27, scope: !4692)
!4699 = !DILocation(line: 2973, column: 42, scope: !4692)
!4700 = !DILocation(line: 2975, column: 2, scope: !4692)
!4701 = !DILocation(line: 2975, column: 2, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4692, file: !4184, line: 2975, column: 2)
!4703 = !DILocation(line: 2976, column: 31, scope: !4692)
!4704 = !DILocation(line: 2976, column: 2, scope: !4692)
!4705 = !DILocation(line: 2977, column: 35, scope: !4692)
!4706 = !DILocation(line: 2977, column: 38, scope: !4692)
!4707 = !DILocation(line: 2977, column: 9, scope: !4692)
!4708 = !DILocation(line: 2977, column: 2, scope: !4692)
!4709 = distinct !DISubprogram(name: "raw_atomic64_add_negative", scope: !4435, file: !4435, line: 4407, type: !4693, scopeLine: 4408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4710)
!4710 = !{!4711, !4712}
!4711 = !DILocalVariable(name: "i", arg: 1, scope: !4709, file: !4435, line: 4407, type: !183)
!4712 = !DILocalVariable(name: "v", arg: 2, scope: !4709, file: !4435, line: 4407, type: !4187)
!4713 = !DILocation(line: 4407, column: 31, scope: !4709)
!4714 = !DILocation(line: 4407, column: 46, scope: !4709)
!4715 = !DILocation(line: 4410, column: 36, scope: !4709)
!4716 = !DILocation(line: 4410, column: 39, scope: !4709)
!4717 = !DILocation(line: 4410, column: 9, scope: !4709)
!4718 = !DILocation(line: 4410, column: 2, scope: !4709)
!4719 = distinct !DISubprogram(name: "arch_atomic64_add_negative", scope: !4468, file: !4468, line: 71, type: !4693, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4720)
!4720 = !{!4721, !4722, !4723}
!4721 = !DILocalVariable(name: "i", arg: 1, scope: !4719, file: !4468, line: 71, type: !183)
!4722 = !DILocalVariable(name: "v", arg: 2, scope: !4719, file: !4468, line: 71, type: !4187)
!4723 = !DILocalVariable(name: "c", scope: !4724, file: !4468, line: 73, type: !500)
!4724 = distinct !DILexicalBlock(scope: !4719, file: !4468, line: 73, column: 9)
!4725 = !DILocation(line: 71, column: 60, scope: !4719)
!4726 = !DILocation(line: 71, column: 75, scope: !4719)
!4727 = !DILocation(line: 73, column: 9, scope: !4724)
!4728 = !{i64 2148122938, i64 2148122977, i64 2148122998, i64 2148123035, i64 2148123058, i64 2148123067, i64 2148123166}
!4729 = !DILocation(line: 73, column: 9, scope: !4719)
!4730 = !DILocation(line: 73, column: 2, scope: !4719)
!4731 = distinct !DISubprogram(name: "get_current", scope: !4732, file: !4732, line: 39, type: !4733, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4735)
!4732 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!1462}
!4735 = !{!4736, !4738, !4740}
!4736 = !DILocalVariable(name: "pscr_ret__", scope: !4737, file: !4732, line: 41, type: !1462)
!4737 = distinct !DILexicalBlock(scope: !4731, file: !4732, line: 41, column: 9)
!4738 = !DILocalVariable(name: "__vpp_verify", scope: !4739, file: !4732, line: 41, type: !225)
!4739 = distinct !DILexicalBlock(scope: !4737, file: !4732, line: 41, column: 9)
!4740 = !DILocalVariable(name: "pfo_val__", scope: !4741, file: !4732, line: 41, type: !414)
!4741 = distinct !DILexicalBlock(scope: !4737, file: !4732, line: 41, column: 9)
!4742 = !DILocation(line: 41, column: 9, scope: !4737)
!4743 = !DILocation(line: 41, column: 9, scope: !4739)
!4744 = !DILocation(line: 41, column: 9, scope: !4741)
!4745 = !{i64 2148742080}
!4746 = !DILocation(line: 41, column: 9, scope: !4731)
!4747 = !DILocation(line: 41, column: 2, scope: !4731)
!4748 = distinct !DISubprogram(name: "pids_try_charge", scope: !3, file: !3, line: 158, type: !4749, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4751)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!25, !185, !25}
!4751 = !{!4752, !4753, !4754, !4755, !4756, !4760, !4761}
!4752 = !DILocalVariable(name: "pids", arg: 1, scope: !4748, file: !3, line: 158, type: !185)
!4753 = !DILocalVariable(name: "num", arg: 2, scope: !4748, file: !3, line: 158, type: !25)
!4754 = !DILocalVariable(name: "p", scope: !4748, file: !3, line: 160, type: !185)
!4755 = !DILocalVariable(name: "q", scope: !4748, file: !3, line: 160, type: !185)
!4756 = !DILocalVariable(name: "new", scope: !4757, file: !3, line: 163, type: !3873)
!4757 = distinct !DILexicalBlock(scope: !4758, file: !3, line: 162, column: 53)
!4758 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 162, column: 2)
!4759 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 162, column: 2)
!4760 = !DILocalVariable(name: "limit", scope: !4757, file: !3, line: 164, type: !3873)
!4761 = !DILabel(scope: !4748, name: "revert", file: !3, line: 183)
!4762 = !DILocation(line: 158, column: 48, scope: !4748)
!4763 = !DILocation(line: 158, column: 58, scope: !4748)
!4764 = !DILocation(line: 160, column: 2, scope: !4748)
!4765 = !DILocation(line: 160, column: 22, scope: !4748)
!4766 = !DILocation(line: 160, column: 26, scope: !4748)
!4767 = !DILocation(line: 162, column: 11, scope: !4759)
!4768 = !DILocation(line: 162, column: 9, scope: !4759)
!4769 = !DILocation(line: 162, column: 7, scope: !4759)
!4770 = !DILocation(line: 162, column: 29, scope: !4758)
!4771 = !DILocation(line: 162, column: 17, scope: !4758)
!4772 = !DILocation(line: 162, column: 2, scope: !4759)
!4773 = !DILocation(line: 163, column: 3, scope: !4757)
!4774 = !DILocation(line: 163, column: 11, scope: !4757)
!4775 = !DILocation(line: 163, column: 37, scope: !4757)
!4776 = !DILocation(line: 163, column: 43, scope: !4757)
!4777 = !DILocation(line: 163, column: 46, scope: !4757)
!4778 = !DILocation(line: 163, column: 17, scope: !4757)
!4779 = !DILocation(line: 164, column: 3, scope: !4757)
!4780 = !DILocation(line: 164, column: 11, scope: !4757)
!4781 = !DILocation(line: 164, column: 34, scope: !4757)
!4782 = !DILocation(line: 164, column: 37, scope: !4757)
!4783 = !DILocation(line: 164, column: 19, scope: !4757)
!4784 = !DILocation(line: 171, column: 7, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 171, column: 7)
!4786 = !DILocation(line: 171, column: 13, scope: !4785)
!4787 = !DILocation(line: 171, column: 11, scope: !4785)
!4788 = !DILocation(line: 171, column: 7, scope: !4757)
!4789 = !DILocation(line: 172, column: 4, scope: !4785)
!4790 = !DILocation(line: 178, column: 25, scope: !4757)
!4791 = !DILocation(line: 178, column: 28, scope: !4757)
!4792 = !DILocation(line: 178, column: 3, scope: !4757)
!4793 = !DILocation(line: 179, column: 2, scope: !4758)
!4794 = !DILocation(line: 179, column: 2, scope: !4757)
!4795 = !DILocation(line: 162, column: 49, scope: !4758)
!4796 = !DILocation(line: 162, column: 37, scope: !4758)
!4797 = !DILocation(line: 162, column: 35, scope: !4758)
!4798 = !DILocation(line: 162, column: 2, scope: !4758)
!4799 = distinct !{!4799, !4772, !4800, !3997, !3998}
!4800 = !DILocation(line: 179, column: 2, scope: !4759)
!4801 = !DILocation(line: 181, column: 2, scope: !4748)
!4802 = !DILocation(line: 183, column: 1, scope: !4748)
!4803 = !DILocation(line: 184, column: 11, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 184, column: 2)
!4805 = !DILocation(line: 184, column: 9, scope: !4804)
!4806 = !DILocation(line: 184, column: 7, scope: !4804)
!4807 = !DILocation(line: 184, column: 17, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 184, column: 2)
!4809 = !DILocation(line: 184, column: 22, scope: !4808)
!4810 = !DILocation(line: 184, column: 19, scope: !4808)
!4811 = !DILocation(line: 184, column: 2, scope: !4804)
!4812 = !DILocation(line: 185, column: 15, scope: !4808)
!4813 = !DILocation(line: 185, column: 18, scope: !4808)
!4814 = !DILocation(line: 185, column: 3, scope: !4808)
!4815 = !DILocation(line: 184, column: 41, scope: !4808)
!4816 = !DILocation(line: 184, column: 29, scope: !4808)
!4817 = !DILocation(line: 184, column: 27, scope: !4808)
!4818 = !DILocation(line: 184, column: 2, scope: !4808)
!4819 = distinct !{!4819, !4811, !4820, !3997, !3998}
!4820 = !DILocation(line: 185, column: 21, scope: !4804)
!4821 = !DILocation(line: 186, column: 14, scope: !4748)
!4822 = !DILocation(line: 186, column: 17, scope: !4748)
!4823 = !DILocation(line: 186, column: 2, scope: !4748)
!4824 = !DILocation(line: 188, column: 2, scope: !4748)
!4825 = !DILocation(line: 189, column: 1, scope: !4748)
!4826 = distinct !DISubprogram(name: "atomic64_inc_return", scope: !4184, file: !4184, line: 2014, type: !4827, scopeLine: 2015, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4829)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!183, !4187}
!4829 = !{!4830}
!4830 = !DILocalVariable(name: "v", arg: 1, scope: !4826, file: !4184, line: 2014, type: !4187)
!4831 = !DILocation(line: 2014, column: 33, scope: !4826)
!4832 = !DILocation(line: 2016, column: 2, scope: !4826)
!4833 = !DILocation(line: 2016, column: 2, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4826, file: !4184, line: 2016, column: 2)
!4835 = !DILocation(line: 2017, column: 31, scope: !4826)
!4836 = !DILocation(line: 2017, column: 2, scope: !4826)
!4837 = !DILocation(line: 2018, column: 33, scope: !4826)
!4838 = !DILocation(line: 2018, column: 9, scope: !4826)
!4839 = !DILocation(line: 2018, column: 2, scope: !4826)
!4840 = !DISubprogram(name: "_printk", scope: !4841, file: !4841, line: 153, type: !4842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4841 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!25, !19, null}
!4844 = distinct !DISubprogram(name: "pr_cont_cgroup_path", scope: !2072, file: !2072, line: 609, type: !4845, scopeLine: 610, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4847)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{null, !192}
!4847 = !{!4848}
!4848 = !DILocalVariable(name: "cgrp", arg: 1, scope: !4844, file: !2072, line: 609, type: !192)
!4849 = !DILocation(line: 609, column: 55, scope: !4844)
!4850 = !DILocation(line: 611, column: 22, scope: !4844)
!4851 = !DILocation(line: 611, column: 28, scope: !4844)
!4852 = !DILocation(line: 611, column: 2, scope: !4844)
!4853 = !DILocation(line: 612, column: 1, scope: !4844)
!4854 = !DISubprogram(name: "cgroup_file_notify", scope: !2072, file: !2072, line: 118, type: !4855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{null, !4857}
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!4858 = distinct !DISubprogram(name: "atomic64_read", scope: !4184, file: !4184, line: 1594, type: !4859, scopeLine: 1595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4863)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!183, !4861}
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!4863 = !{!4864}
!4864 = !DILocalVariable(name: "v", arg: 1, scope: !4858, file: !4184, line: 1594, type: !4861)
!4865 = !DILocation(line: 1594, column: 33, scope: !4858)
!4866 = !DILocation(line: 1596, column: 25, scope: !4858)
!4867 = !DILocation(line: 1596, column: 2, scope: !4858)
!4868 = !DILocation(line: 1597, column: 27, scope: !4858)
!4869 = !DILocation(line: 1597, column: 9, scope: !4858)
!4870 = !DILocation(line: 1597, column: 2, scope: !4858)
!4871 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4418, file: !4418, line: 66, type: !4419, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4872)
!4872 = !{!4873, !4874}
!4873 = !DILocalVariable(name: "v", arg: 1, scope: !4871, file: !4418, line: 66, type: !4421)
!4874 = !DILocalVariable(name: "size", arg: 2, scope: !4871, file: !4418, line: 66, type: !38)
!4875 = !DILocation(line: 66, column: 73, scope: !4871)
!4876 = !DILocation(line: 66, column: 83, scope: !4871)
!4877 = !DILocation(line: 68, column: 19, scope: !4871)
!4878 = !DILocation(line: 68, column: 22, scope: !4871)
!4879 = !DILocation(line: 68, column: 2, scope: !4871)
!4880 = !DILocation(line: 69, column: 2, scope: !4871)
!4881 = !DILocation(line: 70, column: 1, scope: !4871)
!4882 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !4435, file: !4435, line: 2554, type: !4859, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4883)
!4883 = !{!4884}
!4884 = !DILocalVariable(name: "v", arg: 1, scope: !4882, file: !4435, line: 2554, type: !4861)
!4885 = !DILocation(line: 2554, column: 37, scope: !4882)
!4886 = !DILocation(line: 2556, column: 28, scope: !4882)
!4887 = !DILocation(line: 2556, column: 9, scope: !4882)
!4888 = !DILocation(line: 2556, column: 2, scope: !4882)
!4889 = distinct !DISubprogram(name: "kasan_check_read", scope: !4446, file: !4446, line: 40, type: !4447, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4890)
!4890 = !{!4891, !4892}
!4891 = !DILocalVariable(name: "p", arg: 1, scope: !4889, file: !4446, line: 40, type: !4421)
!4892 = !DILocalVariable(name: "size", arg: 2, scope: !4889, file: !4446, line: 40, type: !7)
!4893 = !DILocation(line: 40, column: 58, scope: !4889)
!4894 = !DILocation(line: 40, column: 74, scope: !4889)
!4895 = !DILocation(line: 42, column: 2, scope: !4889)
!4896 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !4468, file: !4468, line: 13, type: !4859, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4897)
!4897 = !{!4898}
!4898 = !DILocalVariable(name: "v", arg: 1, scope: !4896, file: !4468, line: 13, type: !4861)
!4899 = !DILocation(line: 13, column: 65, scope: !4896)
!4900 = !DILocation(line: 15, column: 9, scope: !4896)
!4901 = !DILocation(line: 15, column: 2, scope: !4896)
!4902 = distinct !DISubprogram(name: "raw_atomic64_inc_return", scope: !4435, file: !4435, line: 3108, type: !4827, scopeLine: 3109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4903)
!4903 = !{!4904}
!4904 = !DILocalVariable(name: "v", arg: 1, scope: !4902, file: !4435, line: 3108, type: !4187)
!4905 = !DILocation(line: 3108, column: 37, scope: !4902)
!4906 = !DILocation(line: 3119, column: 36, scope: !4902)
!4907 = !DILocation(line: 3119, column: 9, scope: !4902)
!4908 = !DILocation(line: 3119, column: 2, scope: !4902)
!4909 = !DISubprogram(name: "pr_cont_kernfs_path", scope: !210, file: !210, line: 400, type: !4910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{null, !208}
!4912 = distinct !DISubprogram(name: "pids_max_show", scope: !3, file: !3, line: 312, type: !1155, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4913)
!4913 = !{!4914, !4915, !4916, !4917, !4918}
!4914 = !DILocalVariable(name: "sf", arg: 1, scope: !4912, file: !3, line: 312, type: !1124)
!4915 = !DILocalVariable(name: "v", arg: 2, scope: !4912, file: !3, line: 312, type: !23)
!4916 = !DILocalVariable(name: "css", scope: !4912, file: !3, line: 314, type: !2083)
!4917 = !DILocalVariable(name: "pids", scope: !4912, file: !3, line: 315, type: !185)
!4918 = !DILocalVariable(name: "limit", scope: !4912, file: !3, line: 316, type: !3873)
!4919 = !DILocation(line: 312, column: 43, scope: !4912)
!4920 = !DILocation(line: 312, column: 53, scope: !4912)
!4921 = !DILocation(line: 314, column: 2, scope: !4912)
!4922 = !DILocation(line: 314, column: 30, scope: !4912)
!4923 = !DILocation(line: 314, column: 44, scope: !4912)
!4924 = !DILocation(line: 314, column: 36, scope: !4912)
!4925 = !DILocation(line: 315, column: 2, scope: !4912)
!4926 = !DILocation(line: 315, column: 22, scope: !4912)
!4927 = !DILocation(line: 315, column: 38, scope: !4912)
!4928 = !DILocation(line: 315, column: 29, scope: !4912)
!4929 = !DILocation(line: 316, column: 2, scope: !4912)
!4930 = !DILocation(line: 316, column: 10, scope: !4912)
!4931 = !DILocation(line: 316, column: 33, scope: !4912)
!4932 = !DILocation(line: 316, column: 39, scope: !4912)
!4933 = !DILocation(line: 316, column: 18, scope: !4912)
!4934 = !DILocation(line: 318, column: 6, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4912, file: !3, line: 318, column: 6)
!4936 = !DILocation(line: 318, column: 12, scope: !4935)
!4937 = !DILocation(line: 318, column: 6, scope: !4912)
!4938 = !DILocation(line: 319, column: 14, scope: !4935)
!4939 = !DILocation(line: 319, column: 3, scope: !4935)
!4940 = !DILocation(line: 321, column: 14, scope: !4935)
!4941 = !DILocation(line: 321, column: 28, scope: !4935)
!4942 = !DILocation(line: 321, column: 3, scope: !4935)
!4943 = !DILocation(line: 324, column: 1, scope: !4912)
!4944 = !DILocation(line: 323, column: 2, scope: !4912)
!4945 = distinct !DISubprogram(name: "pids_max_write", scope: !3, file: !3, line: 282, type: !3614, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4946)
!4946 = !{!4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955}
!4947 = !DILocalVariable(name: "of", arg: 1, scope: !4945, file: !3, line: 282, type: !259)
!4948 = !DILocalVariable(name: "buf", arg: 2, scope: !4945, file: !3, line: 282, type: !511)
!4949 = !DILocalVariable(name: "nbytes", arg: 3, scope: !4945, file: !3, line: 283, type: !38)
!4950 = !DILocalVariable(name: "off", arg: 4, scope: !4945, file: !3, line: 283, type: !44)
!4951 = !DILocalVariable(name: "css", scope: !4945, file: !3, line: 285, type: !2083)
!4952 = !DILocalVariable(name: "pids", scope: !4945, file: !3, line: 286, type: !185)
!4953 = !DILocalVariable(name: "limit", scope: !4945, file: !3, line: 287, type: !3873)
!4954 = !DILocalVariable(name: "err", scope: !4945, file: !3, line: 288, type: !25)
!4955 = !DILabel(scope: !4945, name: "set_limit", file: !3, line: 303)
!4956 = !DILocation(line: 282, column: 56, scope: !4945)
!4957 = !DILocation(line: 282, column: 66, scope: !4945)
!4958 = !DILocation(line: 283, column: 17, scope: !4945)
!4959 = !DILocation(line: 283, column: 32, scope: !4945)
!4960 = !DILocation(line: 285, column: 2, scope: !4945)
!4961 = !DILocation(line: 285, column: 30, scope: !4945)
!4962 = !DILocation(line: 285, column: 43, scope: !4945)
!4963 = !DILocation(line: 285, column: 36, scope: !4945)
!4964 = !DILocation(line: 286, column: 2, scope: !4945)
!4965 = !DILocation(line: 286, column: 22, scope: !4945)
!4966 = !DILocation(line: 286, column: 38, scope: !4945)
!4967 = !DILocation(line: 286, column: 29, scope: !4945)
!4968 = !DILocation(line: 287, column: 2, scope: !4945)
!4969 = !DILocation(line: 287, column: 10, scope: !4945)
!4970 = !DILocation(line: 288, column: 2, scope: !4945)
!4971 = !DILocation(line: 288, column: 6, scope: !4945)
!4972 = !DILocation(line: 290, column: 17, scope: !4945)
!4973 = !DILocation(line: 290, column: 8, scope: !4945)
!4974 = !DILocation(line: 290, column: 6, scope: !4945)
!4975 = !DILocation(line: 291, column: 14, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 291, column: 6)
!4977 = !DILocation(line: 291, column: 7, scope: !4976)
!4978 = !DILocation(line: 291, column: 6, scope: !4945)
!4979 = !DILocation(line: 292, column: 9, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 291, column: 34)
!4981 = !DILocation(line: 293, column: 3, scope: !4980)
!4982 = !DILocation(line: 296, column: 17, scope: !4945)
!4983 = !DILocation(line: 296, column: 8, scope: !4945)
!4984 = !DILocation(line: 296, column: 6, scope: !4945)
!4985 = !DILocation(line: 297, column: 6, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 297, column: 6)
!4987 = !DILocation(line: 297, column: 6, scope: !4945)
!4988 = !DILocation(line: 298, column: 10, scope: !4986)
!4989 = !DILocation(line: 298, column: 3, scope: !4986)
!4990 = !DILocation(line: 300, column: 6, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 300, column: 6)
!4992 = !DILocation(line: 300, column: 12, scope: !4991)
!4993 = !DILocation(line: 300, column: 16, scope: !4991)
!4994 = !DILocation(line: 300, column: 19, scope: !4991)
!4995 = !DILocation(line: 300, column: 25, scope: !4991)
!4996 = !DILocation(line: 300, column: 6, scope: !4945)
!4997 = !DILocation(line: 301, column: 3, scope: !4991)
!4998 = !DILocation(line: 300, column: 28, scope: !4991)
!4999 = !DILocation(line: 303, column: 1, scope: !4945)
!5000 = !DILocation(line: 308, column: 16, scope: !4945)
!5001 = !DILocation(line: 308, column: 22, scope: !4945)
!5002 = !DILocation(line: 308, column: 29, scope: !4945)
!5003 = !DILocation(line: 308, column: 2, scope: !4945)
!5004 = !DILocation(line: 309, column: 9, scope: !4945)
!5005 = !DILocation(line: 309, column: 2, scope: !4945)
!5006 = !DILocation(line: 310, column: 1, scope: !4945)
!5007 = distinct !DISubprogram(name: "pids_current_read", scope: !3, file: !3, line: 326, type: !3816, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5008)
!5008 = !{!5009, !5010, !5011}
!5009 = !DILocalVariable(name: "css", arg: 1, scope: !5007, file: !3, line: 326, type: !2083)
!5010 = !DILocalVariable(name: "cft", arg: 2, scope: !5007, file: !3, line: 327, type: !3796)
!5011 = !DILocalVariable(name: "pids", scope: !5007, file: !3, line: 329, type: !185)
!5012 = !DILocation(line: 326, column: 58, scope: !5007)
!5013 = !DILocation(line: 327, column: 24, scope: !5007)
!5014 = !DILocation(line: 329, column: 2, scope: !5007)
!5015 = !DILocation(line: 329, column: 22, scope: !5007)
!5016 = !DILocation(line: 329, column: 38, scope: !5007)
!5017 = !DILocation(line: 329, column: 29, scope: !5007)
!5018 = !DILocation(line: 331, column: 24, scope: !5007)
!5019 = !DILocation(line: 331, column: 30, scope: !5007)
!5020 = !DILocation(line: 331, column: 9, scope: !5007)
!5021 = !DILocation(line: 332, column: 1, scope: !5007)
!5022 = !DILocation(line: 331, column: 2, scope: !5007)
!5023 = distinct !DISubprogram(name: "pids_peak_read", scope: !3, file: !3, line: 334, type: !3816, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5024)
!5024 = !{!5025, !5026, !5027}
!5025 = !DILocalVariable(name: "css", arg: 1, scope: !5023, file: !3, line: 334, type: !2083)
!5026 = !DILocalVariable(name: "cft", arg: 2, scope: !5023, file: !3, line: 335, type: !3796)
!5027 = !DILocalVariable(name: "pids", scope: !5023, file: !3, line: 337, type: !185)
!5028 = !DILocation(line: 334, column: 55, scope: !5023)
!5029 = !DILocation(line: 335, column: 21, scope: !5023)
!5030 = !DILocation(line: 337, column: 2, scope: !5023)
!5031 = !DILocation(line: 337, column: 22, scope: !5023)
!5032 = !DILocation(line: 337, column: 38, scope: !5023)
!5033 = !DILocation(line: 337, column: 29, scope: !5023)
!5034 = !DILocation(line: 339, column: 9, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 339, column: 9)
!5036 = !DILocation(line: 339, column: 9, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 339, column: 9)
!5038 = !DILocation(line: 340, column: 1, scope: !5023)
!5039 = !DILocation(line: 339, column: 2, scope: !5023)
!5040 = distinct !DISubprogram(name: "pids_events_show", scope: !3, file: !3, line: 342, type: !1155, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5041)
!5041 = !{!5042, !5043, !5044}
!5042 = !DILocalVariable(name: "sf", arg: 1, scope: !5040, file: !3, line: 342, type: !1124)
!5043 = !DILocalVariable(name: "v", arg: 2, scope: !5040, file: !3, line: 342, type: !23)
!5044 = !DILocalVariable(name: "pids", scope: !5040, file: !3, line: 344, type: !185)
!5045 = !DILocation(line: 342, column: 46, scope: !5040)
!5046 = !DILocation(line: 342, column: 56, scope: !5040)
!5047 = !DILocation(line: 344, column: 2, scope: !5040)
!5048 = !DILocation(line: 344, column: 22, scope: !5040)
!5049 = !DILocation(line: 344, column: 46, scope: !5040)
!5050 = !DILocation(line: 344, column: 38, scope: !5040)
!5051 = !DILocation(line: 344, column: 29, scope: !5040)
!5052 = !DILocation(line: 346, column: 13, scope: !5040)
!5053 = !DILocation(line: 346, column: 51, scope: !5040)
!5054 = !DILocation(line: 346, column: 57, scope: !5040)
!5055 = !DILocation(line: 346, column: 36, scope: !5040)
!5056 = !DILocation(line: 346, column: 2, scope: !5040)
!5057 = !DILocation(line: 348, column: 1, scope: !5040)
!5058 = !DILocation(line: 347, column: 2, scope: !5040)
!5059 = distinct !DISubprogram(name: "seq_css", scope: !2072, file: !2072, line: 584, type: !5060, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5062)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!2083, !1124}
!5062 = !{!5063}
!5063 = !DILocalVariable(name: "seq", arg: 1, scope: !5059, file: !2072, line: 584, type: !1124)
!5064 = !DILocation(line: 584, column: 68, scope: !5059)
!5065 = !DILocation(line: 586, column: 16, scope: !5059)
!5066 = !DILocation(line: 586, column: 21, scope: !5059)
!5067 = !DILocation(line: 586, column: 9, scope: !5059)
!5068 = !DILocation(line: 586, column: 2, scope: !5059)
!5069 = !DISubprogram(name: "seq_printf", scope: !1126, file: !1126, line: 119, type: !5070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{null, !1124, !19, null}
!5072 = !DISubprogram(name: "of_css", scope: !2072, file: !2072, line: 576, type: !5073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{!2083, !259}
!5075 = distinct !DISubprogram(name: "strstrip", scope: !5076, file: !5076, line: 116, type: !5077, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5079)
!5076 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5077 = !DISubroutineType(types: !5078)
!5078 = !{!511, !511}
!5079 = !{!5080}
!5080 = !DILocalVariable(name: "str", arg: 1, scope: !5075, file: !5076, line: 116, type: !511)
!5081 = !DILocation(line: 116, column: 49, scope: !5075)
!5082 = !DILocation(line: 118, column: 15, scope: !5075)
!5083 = !DILocation(line: 118, column: 9, scope: !5075)
!5084 = !DILocation(line: 118, column: 2, scope: !5075)
!5085 = !DISubprogram(name: "strcmp", scope: !5076, file: !5076, line: 88, type: !5086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!25, !19, !19}
!5088 = !DISubprogram(name: "kstrtoll", scope: !5089, file: !5089, line: 13, type: !5090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5089 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!5090 = !DISubroutineType(types: !5091)
!5091 = !{!25, !19, !7, !5092}
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!5093 = !DISubprogram(name: "strim", scope: !5076, file: !5076, line: 114, type: !5077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
