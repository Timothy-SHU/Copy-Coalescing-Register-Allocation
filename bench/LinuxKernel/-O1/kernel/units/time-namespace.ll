; ModuleID = 'kernel/time/namespace.c'
source_filename = "kernel/time/namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [10 x i64], [4 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18, [48 x i8] }
%struct.anon.18 = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.time_namespace = type { ptr, ptr, %struct.ns_common, %struct.timens_offsets, ptr, i8 }
%struct.timens_offsets = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i64 }
%struct.pcpu_hot = type { %union.anon.22 }
%union.anon.22 = type { %struct.anon.23, [16 x i8] }
%struct.anon.23 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.vm_area_struct = type { %union.anon.13, ptr, %struct.pgprot, %union.anon.15, i32, ptr, i8, %struct.anon.16, %struct.list_head, ptr, ptr, i64, ptr, ptr, %struct.atomic64_t, ptr, %struct.vm_userfaultfd_ctx }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { i64, i64 }
%struct.pgprot = type { i64 }
%union.anon.15 = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.vm_userfaultfd_ctx = type {}
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
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
%struct.nsproxy = type { %struct.refcount_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vdso_data = type { i32, i32, i64, i64, i32, i32, %union.anon.24, i32, i32, i32, i32, %struct.arch_vdso_data }
%union.anon.24 = type { [12 x %struct.vdso_timestamp] }
%struct.vdso_timestamp = type { i64, i64 }
%struct.arch_vdso_data = type {}
%struct.proc_timens_offset = type { i32, %struct.timespec64 }
%struct.nsset = type { i32, ptr, ptr, ptr }
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.21 }
%struct.kernel_cap_t = type { i64 }
%union.anon.21 = type { %struct.callback_head }
%struct.timens_offset = type { i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"vvar_page accessed remotely\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [24 x i8] c"kernel/time/namespace.c\00", align 1, !dbg !7
@offset_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @offset_lock, i64 16), ptr getelementptr (i8, ptr @offset_lock, i64 16) } }, align 8, !dbg !12
@.str.2 = private unnamed_addr constant [5 x i8] c"time\00", align 1, !dbg !3716
@timens_operations = hidden constant %struct.proc_ns_operations { ptr @.str.2, ptr null, i32 128, ptr @timens_get, ptr @timens_put, ptr @timens_install, ptr @timens_owner, ptr null }, align 8, !dbg !3719
@.str.3 = private unnamed_addr constant [18 x i8] c"time_for_children\00", align 1, !dbg !3721
@timens_for_children_operations = hidden constant %struct.proc_ns_operations { ptr @.str.3, ptr @.str.2, i32 128, ptr @timens_for_children_get, ptr @timens_put, ptr @timens_install, ptr @timens_owner, ptr null }, align 8, !dbg !3726
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@init_time_ns = hidden global %struct.time_namespace { ptr @init_user_ns, ptr null, %struct.ns_common { %struct.atomic64_t zeroinitializer, ptr @timens_operations, i32 -268435462, %struct.refcount_struct { %struct.atomic_t { i32 3 } } }, %struct.timens_offsets zeroinitializer, ptr null, i8 1 }, align 8, !dbg !3728
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3730
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@vmemmap_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"boottime\00", align 1, !dbg !3735
@.str.6 = private unnamed_addr constant [10 x i8] c"monotonic\00", align 1, !dbg !3740
@.str.7 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1, !dbg !3743
@.str.8 = private unnamed_addr constant [19 x i8] c"%-10s %10lld %9ld\0A\00", align 1, !dbg !3745

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @do_timens_ktime_to_host(i32 noundef %clockid, i64 noundef %tim, ptr noundef %ns_offsets) #0 align 16 !dbg !3759 {
entry:
  %retval = alloca i64, align 8
  %clockid.addr = alloca i32, align 4
  %tim.addr = alloca i64, align 8
  %ns_offsets.addr = alloca ptr, align 8
  %offset = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %clockid, ptr %clockid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clockid.addr, metadata !3764, metadata !DIExpression()), !dbg !3768
  store i64 %tim, ptr %tim.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tim.addr, metadata !3765, metadata !DIExpression()), !dbg !3769
  store ptr %ns_offsets, ptr %ns_offsets.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns_offsets.addr, metadata !3766, metadata !DIExpression()), !dbg !3770
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #13, !dbg !3771
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !3767, metadata !DIExpression()), !dbg !3772
  %0 = load i32, ptr %clockid.addr, align 4, !dbg !3773
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 7, label %sw.bb1
    i32 9, label %sw.bb1
  ], !dbg !3774

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %ns_offsets.addr, align 8, !dbg !3775
  %monotonic = getelementptr inbounds %struct.timens_offsets, ptr %1, i32 0, i32 0, !dbg !3777
  %2 = getelementptr inbounds { i64, i64 }, ptr %monotonic, i32 0, i32 0, !dbg !3778
  %3 = load i64, ptr %2, align 8, !dbg !3778
  %4 = getelementptr inbounds { i64, i64 }, ptr %monotonic, i32 0, i32 1, !dbg !3778
  %5 = load i64, ptr %4, align 8, !dbg !3778
  %call = call i64 @timespec64_to_ktime(i64 %3, i64 %5) #14, !dbg !3778
  store i64 %call, ptr %offset, align 8, !dbg !3779
  br label %sw.epilog, !dbg !3780

sw.bb1:                                           ; preds = %entry, %entry
  %6 = load ptr, ptr %ns_offsets.addr, align 8, !dbg !3781
  %boottime = getelementptr inbounds %struct.timens_offsets, ptr %6, i32 0, i32 1, !dbg !3782
  %7 = getelementptr inbounds { i64, i64 }, ptr %boottime, i32 0, i32 0, !dbg !3783
  %8 = load i64, ptr %7, align 8, !dbg !3783
  %9 = getelementptr inbounds { i64, i64 }, ptr %boottime, i32 0, i32 1, !dbg !3783
  %10 = load i64, ptr %9, align 8, !dbg !3783
  %call2 = call i64 @timespec64_to_ktime(i64 %8, i64 %10) #14, !dbg !3783
  store i64 %call2, ptr %offset, align 8, !dbg !3784
  br label %sw.epilog, !dbg !3785

sw.default:                                       ; preds = %entry
  %11 = load i64, ptr %tim.addr, align 8, !dbg !3786
  store i64 %11, ptr %retval, align 8, !dbg !3787
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3787

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %12 = load i64, ptr %tim.addr, align 8, !dbg !3788
  %13 = load i64, ptr %offset, align 8, !dbg !3790
  %cmp = icmp slt i64 %12, %13, !dbg !3791
  br i1 %cmp, label %if.then, label %if.else, !dbg !3792

if.then:                                          ; preds = %sw.epilog
  store i64 0, ptr %tim.addr, align 8, !dbg !3793
  br label %if.end6, !dbg !3795

if.else:                                          ; preds = %sw.epilog
  %14 = load i64, ptr %tim.addr, align 8, !dbg !3796
  %15 = load i64, ptr %offset, align 8, !dbg !3796
  %sub = sub i64 %14, %15, !dbg !3796
  store i64 %sub, ptr %tim.addr, align 8, !dbg !3798
  %16 = load i64, ptr %tim.addr, align 8, !dbg !3799
  %cmp3 = icmp sgt i64 %16, 9223372036854775807, !dbg !3799
  %lnot = xor i1 %cmp3, true, !dbg !3799
  %lnot4 = xor i1 %lnot, true, !dbg !3799
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !3799
  %conv = sext i32 %lnot.ext to i64, !dbg !3799
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3799
  %tobool = icmp ne i64 %expval, 0, !dbg !3799
  br i1 %tobool, label %if.then5, label %if.end, !dbg !3801

if.then5:                                         ; preds = %if.else
  store i64 9223372036854775807, ptr %tim.addr, align 8, !dbg !3802
  br label %if.end, !dbg !3803

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %17 = load i64, ptr %tim.addr, align 8, !dbg !3804
  store i64 %17, ptr %retval, align 8, !dbg !3805
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3805

cleanup:                                          ; preds = %if.end6, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #13, !dbg !3806
  %18 = load i64, ptr %retval, align 8, !dbg !3806
  ret i64 %18, !dbg !3806
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @timespec64_to_ktime(i64 %ts.coerce0, i64 %ts.coerce1) #3 align 16 !dbg !3807 {
entry:
  %ts = alloca %struct.timespec64, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %ts, i32 0, i32 0
  store i64 %ts.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %ts, i32 0, i32 1
  store i64 %ts.coerce1, ptr %1, align 8
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !3811, metadata !DIExpression()), !dbg !3812
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 0, !dbg !3813
  %2 = load i64, ptr %tv_sec, align 8, !dbg !3813
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1, !dbg !3814
  %3 = load i64, ptr %tv_nsec, align 8, !dbg !3814
  %call = call i64 @ktime_set(i64 noundef %2, i64 noundef %3) #14, !dbg !3815
  ret i64 %call, !dbg !3816
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @copy_time_ns(i64 noundef %flags, ptr noundef %user_ns, ptr noundef %old_ns) #0 align 16 !dbg !3817 {
entry:
  %retval = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %user_ns.addr = alloca ptr, align 8
  %old_ns.addr = alloca ptr, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3821, metadata !DIExpression()), !dbg !3824
  store ptr %user_ns, ptr %user_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_ns.addr, metadata !3822, metadata !DIExpression()), !dbg !3825
  store ptr %old_ns, ptr %old_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_ns.addr, metadata !3823, metadata !DIExpression()), !dbg !3826
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3827
  %and = and i64 %0, 128, !dbg !3829
  %tobool = icmp ne i64 %and, 0, !dbg !3829
  br i1 %tobool, label %if.end, label %if.then, !dbg !3830

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %old_ns.addr, align 8, !dbg !3831
  %call = call ptr @get_time_ns(ptr noundef %1) #14, !dbg !3832
  store ptr %call, ptr %retval, align 8, !dbg !3833
  br label %return, !dbg !3833

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %user_ns.addr, align 8, !dbg !3834
  %3 = load ptr, ptr %old_ns.addr, align 8, !dbg !3835
  %call1 = call ptr @clone_time_ns(ptr noundef %2, ptr noundef %3) #14, !dbg !3836
  store ptr %call1, ptr %retval, align 8, !dbg !3837
  br label %return, !dbg !3837

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8, !dbg !3838
  ret ptr %4, !dbg !3838
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_time_ns(ptr noundef %ns) #3 align 16 !dbg !3839 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !3843, metadata !DIExpression()), !dbg !3844
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !3845
  %ns1 = getelementptr inbounds %struct.time_namespace, ptr %0, i32 0, i32 2, !dbg !3846
  %count = getelementptr inbounds %struct.ns_common, ptr %ns1, i32 0, i32 3, !dbg !3847
  call void @refcount_inc(ptr noundef %count) #14, !dbg !3848
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !3849
  ret ptr %1, !dbg !3850
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @clone_time_ns(ptr noundef %user_ns, ptr noundef %old_ns) #0 align 16 !dbg !3851 {
entry:
  %retval = alloca ptr, align 8
  %user_ns.addr = alloca ptr, align 8
  %old_ns.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %ucounts = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %user_ns, ptr %user_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_ns.addr, metadata !3855, metadata !DIExpression()), !dbg !3864
  store ptr %old_ns, ptr %old_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_ns.addr, metadata !3856, metadata !DIExpression()), !dbg !3865
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #13, !dbg !3866
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !3857, metadata !DIExpression()), !dbg !3867
  call void @llvm.lifetime.start.p0(i64 8, ptr %ucounts) #13, !dbg !3868
  call void @llvm.dbg.declare(metadata ptr %ucounts, metadata !3858, metadata !DIExpression()), !dbg !3869
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !3870
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3859, metadata !DIExpression()), !dbg !3871
  store i32 -28, ptr %err, align 4, !dbg !3872
  %0 = load ptr, ptr %user_ns.addr, align 8, !dbg !3873
  %call = call ptr @inc_time_namespaces(ptr noundef %0) #14, !dbg !3874
  store ptr %call, ptr %ucounts, align 8, !dbg !3875
  %1 = load ptr, ptr %ucounts, align 8, !dbg !3876
  %tobool = icmp ne ptr %1, null, !dbg !3876
  br i1 %tobool, label %if.end, label %if.then, !dbg !3878

if.then:                                          ; preds = %entry
  br label %fail, !dbg !3879

if.end:                                           ; preds = %entry
  store i32 -12, ptr %err, align 4, !dbg !3880
  %call1 = call noalias ptr @kmalloc(i64 noundef 88, i32 noundef 4197568) #15, !dbg !3881
  store ptr %call1, ptr %ns, align 8, !dbg !3882
  %2 = load ptr, ptr %ns, align 8, !dbg !3883
  %tobool2 = icmp ne ptr %2, null, !dbg !3883
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3885

if.then3:                                         ; preds = %if.end
  br label %fail_dec, !dbg !3886

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %ns, align 8, !dbg !3887
  %ns5 = getelementptr inbounds %struct.time_namespace, ptr %3, i32 0, i32 2, !dbg !3888
  %count = getelementptr inbounds %struct.ns_common, ptr %ns5, i32 0, i32 3, !dbg !3889
  call void @refcount_set(ptr noundef %count, i32 noundef 1) #14, !dbg !3890
  %call6 = call ptr @alloc_pages(i32 noundef 4197824, i32 noundef 0) #14, !dbg !3891
  %4 = load ptr, ptr %ns, align 8, !dbg !3892
  %vvar_page = getelementptr inbounds %struct.time_namespace, ptr %4, i32 0, i32 4, !dbg !3893
  store ptr %call6, ptr %vvar_page, align 8, !dbg !3894
  %5 = load ptr, ptr %ns, align 8, !dbg !3895
  %vvar_page7 = getelementptr inbounds %struct.time_namespace, ptr %5, i32 0, i32 4, !dbg !3897
  %6 = load ptr, ptr %vvar_page7, align 8, !dbg !3897
  %tobool8 = icmp ne ptr %6, null, !dbg !3895
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !3898

if.then9:                                         ; preds = %if.end4
  br label %fail_free, !dbg !3899

if.end10:                                         ; preds = %if.end4
  %7 = load ptr, ptr %ns, align 8, !dbg !3900
  %ns11 = getelementptr inbounds %struct.time_namespace, ptr %7, i32 0, i32 2, !dbg !3901
  %call12 = call i32 @ns_alloc_inum(ptr noundef %ns11) #14, !dbg !3902
  store i32 %call12, ptr %err, align 4, !dbg !3903
  %8 = load i32, ptr %err, align 4, !dbg !3904
  %tobool13 = icmp ne i32 %8, 0, !dbg !3904
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !3906

if.then14:                                        ; preds = %if.end10
  br label %fail_free_page, !dbg !3907

if.end15:                                         ; preds = %if.end10
  %9 = load ptr, ptr %ucounts, align 8, !dbg !3908
  %10 = load ptr, ptr %ns, align 8, !dbg !3909
  %ucounts16 = getelementptr inbounds %struct.time_namespace, ptr %10, i32 0, i32 1, !dbg !3910
  store ptr %9, ptr %ucounts16, align 8, !dbg !3911
  %11 = load ptr, ptr %ns, align 8, !dbg !3912
  %ns17 = getelementptr inbounds %struct.time_namespace, ptr %11, i32 0, i32 2, !dbg !3913
  %ops = getelementptr inbounds %struct.ns_common, ptr %ns17, i32 0, i32 1, !dbg !3914
  store ptr @timens_operations, ptr %ops, align 8, !dbg !3915
  %12 = load ptr, ptr %user_ns.addr, align 8, !dbg !3916
  %call18 = call ptr @get_user_ns(ptr noundef %12) #14, !dbg !3917
  %13 = load ptr, ptr %ns, align 8, !dbg !3918
  %user_ns19 = getelementptr inbounds %struct.time_namespace, ptr %13, i32 0, i32 0, !dbg !3919
  store ptr %call18, ptr %user_ns19, align 8, !dbg !3920
  %14 = load ptr, ptr %ns, align 8, !dbg !3921
  %offsets = getelementptr inbounds %struct.time_namespace, ptr %14, i32 0, i32 3, !dbg !3922
  %15 = load ptr, ptr %old_ns.addr, align 8, !dbg !3923
  %offsets20 = getelementptr inbounds %struct.time_namespace, ptr %15, i32 0, i32 3, !dbg !3924
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %offsets, ptr align 8 %offsets20, i64 32, i1 false), !dbg !3924
  %16 = load ptr, ptr %ns, align 8, !dbg !3925
  %frozen_offsets = getelementptr inbounds %struct.time_namespace, ptr %16, i32 0, i32 5, !dbg !3926
  store i8 0, ptr %frozen_offsets, align 8, !dbg !3927
  %17 = load ptr, ptr %ns, align 8, !dbg !3928
  store ptr %17, ptr %retval, align 8, !dbg !3929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3929

fail_free_page:                                   ; preds = %if.then14
  call void @llvm.dbg.label(metadata !3860), !dbg !3930
  %18 = load ptr, ptr %ns, align 8, !dbg !3931
  %vvar_page21 = getelementptr inbounds %struct.time_namespace, ptr %18, i32 0, i32 4, !dbg !3931
  %19 = load ptr, ptr %vvar_page21, align 8, !dbg !3931
  call void @__free_pages(ptr noundef %19, i32 noundef 0) #14, !dbg !3931
  br label %fail_free, !dbg !3931

fail_free:                                        ; preds = %fail_free_page, %if.then9
  call void @llvm.dbg.label(metadata !3861), !dbg !3932
  %20 = load ptr, ptr %ns, align 8, !dbg !3933
  call void @kfree(ptr noundef %20) #14, !dbg !3934
  br label %fail_dec, !dbg !3934

fail_dec:                                         ; preds = %fail_free, %if.then3
  call void @llvm.dbg.label(metadata !3862), !dbg !3935
  %21 = load ptr, ptr %ucounts, align 8, !dbg !3936
  call void @dec_time_namespaces(ptr noundef %21) #14, !dbg !3937
  br label %fail, !dbg !3937

fail:                                             ; preds = %fail_dec, %if.then
  call void @llvm.dbg.label(metadata !3863), !dbg !3938
  %22 = load i32, ptr %err, align 4, !dbg !3939
  %conv = sext i32 %22 to i64, !dbg !3939
  %call22 = call ptr @ERR_PTR(i64 noundef %conv) #14, !dbg !3940
  store ptr %call22, ptr %retval, align 8, !dbg !3941
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3941

cleanup:                                          ; preds = %fail, %if.end15
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !3942
  call void @llvm.lifetime.end.p0(i64 8, ptr %ucounts) #13, !dbg !3942
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #13, !dbg !3942
  %23 = load ptr, ptr %retval, align 8, !dbg !3942
  ret ptr %23, !dbg !3942
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @find_timens_vvar_page(ptr noundef %vma) #0 align 16 !dbg !3943 {
entry:
  %retval = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !3947, metadata !DIExpression()), !dbg !3954
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !3955
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1, !dbg !3955
  %1 = load ptr, ptr %vm_mm, align 8, !dbg !3955
  %call = call ptr @get_current() #14, !dbg !3955
  %mm = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 49, !dbg !3955
  %2 = load ptr, ptr %mm, align 64, !dbg !3955
  %cmp = icmp eq ptr %1, %2, !dbg !3955
  %lnot = xor i1 %cmp, true, !dbg !3955
  %lnot1 = xor i1 %lnot, true, !dbg !3955
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3955
  %conv = sext i32 %lnot.ext to i64, !dbg !3955
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3955
  %tobool = icmp ne i64 %expval, 0, !dbg !3955
  br i1 %tobool, label %if.then, label %if.end, !dbg !3957

if.then:                                          ; preds = %entry
  %call2 = call ptr @get_current() #14, !dbg !3958
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 103, !dbg !3959
  %3 = load ptr, ptr %nsproxy, align 8, !dbg !3959
  %time_ns = getelementptr inbounds %struct.nsproxy, ptr %3, i32 0, i32 6, !dbg !3960
  %4 = load ptr, ptr %time_ns, align 8, !dbg !3960
  %vvar_page = getelementptr inbounds %struct.time_namespace, ptr %4, i32 0, i32 4, !dbg !3961
  %5 = load ptr, ptr %vvar_page, align 8, !dbg !3961
  store ptr %5, ptr %retval, align 8, !dbg !3962
  br label %return, !dbg !3962

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3963
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3948, metadata !DIExpression()), !dbg !3963
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !3963
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !3964
  %tobool3 = icmp ne i32 %6, 0, !dbg !3964
  %lnot4 = xor i1 %tobool3, true, !dbg !3964
  %lnot6 = xor i1 %lnot4, true, !dbg !3964
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !3964
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !3964
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !3964
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !3964
  br i1 %tobool10, label %if.then11, label %if.end30, !dbg !3963

if.then11:                                        ; preds = %if.end
  br label %do.body, !dbg !3964

do.body:                                          ; preds = %if.then11
  br label %do.body12, !dbg !3965

do.body12:                                        ; preds = %do.body
  br label %do.cond, !dbg !3966

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !3966

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str) #14, !dbg !3965
  br label %do.body13, !dbg !3965

do.body13:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !3968
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3950, metadata !DIExpression()), !dbg !3968
  store i32 2313, ptr %__flags, align 4, !dbg !3968
  br label %do.body14, !dbg !3968

do.body14:                                        ; preds = %do.body13
  br label %do.cond15, !dbg !3969

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !3969

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !3968

do.body17:                                        ; preds = %do.end16
  %7 = load i32, ptr %__flags, align 4, !dbg !3971
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 208, i32 %7, i64 12) #13, !dbg !3971, !srcloc !3973
  br label %do.cond18, !dbg !3971

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !3971

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !3968

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !3974

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !3974

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !3965
  br label %do.cond23, !dbg !3968

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !3968

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !3965

do.body25:                                        ; preds = %do.end24
  br label %do.cond26, !dbg !3976

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !3976

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !3965

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !3965

do.end29:                                         ; preds = %do.cond28
  br label %if.end30, !dbg !3965

if.end30:                                         ; preds = %do.end29, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !3963
  %tobool31 = icmp ne i32 %8, 0, !dbg !3963
  %lnot32 = xor i1 %tobool31, true, !dbg !3963
  %lnot34 = xor i1 %lnot32, true, !dbg !3963
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !3963
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !3963
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !3963
  store i64 %expval37, ptr %tmp, align 8, !dbg !3964
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3978
  %9 = load i64, ptr %tmp, align 8, !dbg !3963
  store ptr null, ptr %retval, align 8, !dbg !3979
  br label %return, !dbg !3979

return:                                           ; preds = %if.end30, %if.then
  %10 = load ptr, ptr %retval, align 8, !dbg !3980
  ret ptr %10, !dbg !3980
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !3981 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #13, !dbg !3992
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3986, metadata !DIExpression()), !dbg !3992
  br label %do.body, !dbg !3992

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !3993
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3988, metadata !DIExpression()), !dbg !3993
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3993
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3993
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !3992
  br label %do.cond, !dbg !3993

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3993

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #13, !dbg !3994
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3990, metadata !DIExpression()), !dbg !3994
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #16, !dbg !3994, !srcloc !3995
  store i64 %1, ptr %pfo_val__, align 8, !dbg !3994
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !3994
  %3 = inttoptr i64 %2 to ptr, !dbg !3994
  store ptr %3, ptr %tmp, align 8, !dbg !3994
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #13, !dbg !3992
  %4 = load ptr, ptr %tmp, align 8, !dbg !3994
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !3992
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !3992
  store ptr %5, ptr %tmp1, align 8, !dbg !3992
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #13, !dbg !3996
  %6 = load ptr, ptr %tmp1, align 8, !dbg !3992
  ret ptr %6, !dbg !3997
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3998 dso_local void @__warn_printk(ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @free_time_ns(ptr noundef %ns) #0 align 16 !dbg !4002 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4006, metadata !DIExpression()), !dbg !4007
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4008
  %ucounts = getelementptr inbounds %struct.time_namespace, ptr %0, i32 0, i32 1, !dbg !4009
  %1 = load ptr, ptr %ucounts, align 8, !dbg !4009
  call void @dec_time_namespaces(ptr noundef %1) #14, !dbg !4010
  %2 = load ptr, ptr %ns.addr, align 8, !dbg !4011
  %user_ns = getelementptr inbounds %struct.time_namespace, ptr %2, i32 0, i32 0, !dbg !4012
  %3 = load ptr, ptr %user_ns, align 8, !dbg !4012
  call void @put_user_ns(ptr noundef %3) #14, !dbg !4013
  %4 = load ptr, ptr %ns.addr, align 8, !dbg !4014
  %ns1 = getelementptr inbounds %struct.time_namespace, ptr %4, i32 0, i32 2, !dbg !4014
  %inum = getelementptr inbounds %struct.ns_common, ptr %ns1, i32 0, i32 2, !dbg !4014
  %5 = load i32, ptr %inum, align 8, !dbg !4014
  call void @proc_free_inum(i32 noundef %5) #14, !dbg !4014
  %6 = load ptr, ptr %ns.addr, align 8, !dbg !4015
  %vvar_page = getelementptr inbounds %struct.time_namespace, ptr %6, i32 0, i32 4, !dbg !4015
  %7 = load ptr, ptr %vvar_page, align 8, !dbg !4015
  call void @__free_pages(ptr noundef %7, i32 noundef 0) #14, !dbg !4015
  %8 = load ptr, ptr %ns.addr, align 8, !dbg !4016
  call void @kfree(ptr noundef %8) #14, !dbg !4017
  ret void, !dbg !4018
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dec_time_namespaces(ptr noundef %ucounts) #0 align 16 !dbg !4019 {
entry:
  %ucounts.addr = alloca ptr, align 8
  store ptr %ucounts, ptr %ucounts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucounts.addr, metadata !4023, metadata !DIExpression()), !dbg !4024
  %0 = load ptr, ptr %ucounts.addr, align 8, !dbg !4025
  call void @dec_ucount(ptr noundef %0, i32 noundef 7) #14, !dbg !4026
  ret void, !dbg !4027
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_user_ns(ptr noundef %ns) #3 align 16 !dbg !4028 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4032, metadata !DIExpression()), !dbg !4033
  ret void, !dbg !4034
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4035 dso_local void @proc_free_inum(i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4038 dso_local void @__free_pages(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4042 dso_local void @kfree(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @timens_commit(ptr noundef %tsk, ptr noundef %ns) #0 align 16 !dbg !4045 {
entry:
  %tsk.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !4049, metadata !DIExpression()), !dbg !4051
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4050, metadata !DIExpression()), !dbg !4052
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !4053
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !4054
  call void @timens_set_vvar_page(ptr noundef %0, ptr noundef %1) #14, !dbg !4055
  %2 = load ptr, ptr %tsk.addr, align 8, !dbg !4056
  %3 = load ptr, ptr %ns.addr, align 8, !dbg !4057
  %call = call i32 @vdso_join_timens(ptr noundef %2, ptr noundef %3) #14, !dbg !4058
  ret void, !dbg !4059
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @timens_set_vvar_page(ptr noundef %task, ptr noundef %ns) #0 align 16 !dbg !4060 {
entry:
  %task.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  %vdata = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4062, metadata !DIExpression()), !dbg !4099
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4063, metadata !DIExpression()), !dbg !4100
  call void @llvm.lifetime.start.p0(i64 8, ptr %vdata) #13, !dbg !4101
  call void @llvm.dbg.declare(metadata ptr %vdata, metadata !4064, metadata !DIExpression()), !dbg !4102
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !4103
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4097, metadata !DIExpression()), !dbg !4104
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4105
  %cmp = icmp eq ptr %0, @init_time_ns, !dbg !4107
  br i1 %cmp, label %if.then, label %if.end, !dbg !4108

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4109

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !4110
  %frozen_offsets = getelementptr inbounds %struct.time_namespace, ptr %1, i32 0, i32 5, !dbg !4110
  %2 = load i8, ptr %frozen_offsets, align 8, !dbg !4110, !range !4112, !noundef !848
  %tobool = trunc i8 %2 to i1, !dbg !4110
  %lnot = xor i1 %tobool, true, !dbg !4110
  %lnot1 = xor i1 %lnot, true, !dbg !4110
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4110
  %conv = sext i32 %lnot.ext to i64, !dbg !4110
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4110
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4110
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4113

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4114

if.end4:                                          ; preds = %if.end
  call void @mutex_lock(ptr noundef @offset_lock) #14, !dbg !4115
  %3 = load ptr, ptr %ns.addr, align 8, !dbg !4116
  %frozen_offsets5 = getelementptr inbounds %struct.time_namespace, ptr %3, i32 0, i32 5, !dbg !4118
  %4 = load i8, ptr %frozen_offsets5, align 8, !dbg !4118, !range !4112, !noundef !848
  %tobool6 = trunc i8 %4 to i1, !dbg !4118
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4119

if.then7:                                         ; preds = %if.end4
  br label %out, !dbg !4120

if.end8:                                          ; preds = %if.end4
  %5 = load ptr, ptr %ns.addr, align 8, !dbg !4121
  %frozen_offsets9 = getelementptr inbounds %struct.time_namespace, ptr %5, i32 0, i32 5, !dbg !4122
  store i8 1, ptr %frozen_offsets9, align 8, !dbg !4123
  %6 = load ptr, ptr %ns.addr, align 8, !dbg !4124
  %vvar_page = getelementptr inbounds %struct.time_namespace, ptr %6, i32 0, i32 4, !dbg !4124
  %7 = load ptr, ptr %vvar_page, align 8, !dbg !4124
  %call = call ptr @lowmem_page_address(ptr noundef %7) #14, !dbg !4124
  %call10 = call ptr @arch_get_vdso_data(ptr noundef %call) #14, !dbg !4125
  store ptr %call10, ptr %vdata, align 8, !dbg !4126
  store i32 0, ptr %i, align 4, !dbg !4127
  br label %for.cond, !dbg !4129

for.cond:                                         ; preds = %for.inc, %if.end8
  %8 = load i32, ptr %i, align 4, !dbg !4130
  %cmp11 = icmp ult i32 %8, 2, !dbg !4132
  br i1 %cmp11, label %for.body, label %for.end, !dbg !4133

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %vdata, align 8, !dbg !4134
  %10 = load i32, ptr %i, align 4, !dbg !4135
  %idxprom = zext i32 %10 to i64, !dbg !4134
  %arrayidx = getelementptr %struct.vdso_data, ptr %9, i64 %idxprom, !dbg !4134
  %11 = load ptr, ptr %ns.addr, align 8, !dbg !4136
  call void @timens_setup_vdso_data(ptr noundef %arrayidx, ptr noundef %11) #14, !dbg !4137
  br label %for.inc, !dbg !4137

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !4138
  %inc = add i32 %12, 1, !dbg !4138
  store i32 %inc, ptr %i, align 4, !dbg !4138
  br label %for.cond, !dbg !4139, !llvm.loop !4140

for.end:                                          ; preds = %for.cond
  br label %out, !dbg !4141

out:                                              ; preds = %for.end, %if.then7
  call void @llvm.dbg.label(metadata !4098), !dbg !4144
  call void @mutex_unlock(ptr noundef @offset_lock) #14, !dbg !4145
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4146
  br label %cleanup, !dbg !4146

cleanup:                                          ; preds = %out, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !4146
  call void @llvm.lifetime.end.p0(i64 8, ptr %vdata) #13, !dbg !4146
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4146

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4147 dso_local i32 @vdso_join_timens(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @timens_on_fork(ptr noundef %nsproxy, ptr noundef %tsk) #0 align 16 !dbg !4150 {
entry:
  %nsproxy.addr = alloca ptr, align 8
  %tsk.addr = alloca ptr, align 8
  %nsc = alloca ptr, align 8
  %ns1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nsproxy, ptr %nsproxy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nsproxy.addr, metadata !4154, metadata !DIExpression()), !dbg !4158
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !4155, metadata !DIExpression()), !dbg !4159
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsc) #13, !dbg !4160
  call void @llvm.dbg.declare(metadata ptr %nsc, metadata !4156, metadata !DIExpression()), !dbg !4161
  %0 = load ptr, ptr %nsproxy.addr, align 8, !dbg !4162
  %time_ns_for_children = getelementptr inbounds %struct.nsproxy, ptr %0, i32 0, i32 7, !dbg !4163
  %1 = load ptr, ptr %time_ns_for_children, align 8, !dbg !4163
  %ns = getelementptr inbounds %struct.time_namespace, ptr %1, i32 0, i32 2, !dbg !4164
  store ptr %ns, ptr %nsc, align 8, !dbg !4161
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns1) #13, !dbg !4165
  call void @llvm.dbg.declare(metadata ptr %ns1, metadata !4157, metadata !DIExpression()), !dbg !4166
  %2 = load ptr, ptr %nsc, align 8, !dbg !4167
  %call = call ptr @to_time_ns(ptr noundef %2) #14, !dbg !4168
  store ptr %call, ptr %ns1, align 8, !dbg !4166
  %3 = load ptr, ptr %nsproxy.addr, align 8, !dbg !4169
  %time_ns = getelementptr inbounds %struct.nsproxy, ptr %3, i32 0, i32 6, !dbg !4171
  %4 = load ptr, ptr %time_ns, align 8, !dbg !4171
  %5 = load ptr, ptr %nsproxy.addr, align 8, !dbg !4172
  %time_ns_for_children2 = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 7, !dbg !4173
  %6 = load ptr, ptr %time_ns_for_children2, align 8, !dbg !4173
  %cmp = icmp eq ptr %4, %6, !dbg !4174
  br i1 %cmp, label %if.then, label %if.end, !dbg !4175

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4176

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %ns1, align 8, !dbg !4177
  %call3 = call ptr @get_time_ns(ptr noundef %7) #14, !dbg !4178
  %8 = load ptr, ptr %nsproxy.addr, align 8, !dbg !4179
  %time_ns4 = getelementptr inbounds %struct.nsproxy, ptr %8, i32 0, i32 6, !dbg !4180
  %9 = load ptr, ptr %time_ns4, align 8, !dbg !4180
  call void @put_time_ns(ptr noundef %9) #14, !dbg !4181
  %10 = load ptr, ptr %ns1, align 8, !dbg !4182
  %11 = load ptr, ptr %nsproxy.addr, align 8, !dbg !4183
  %time_ns5 = getelementptr inbounds %struct.nsproxy, ptr %11, i32 0, i32 6, !dbg !4184
  store ptr %10, ptr %time_ns5, align 8, !dbg !4185
  %12 = load ptr, ptr %tsk.addr, align 8, !dbg !4186
  %13 = load ptr, ptr %ns1, align 8, !dbg !4187
  call void @timens_commit(ptr noundef %12, ptr noundef %13) #14, !dbg !4188
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4189
  br label %cleanup, !dbg !4189

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns1) #13, !dbg !4189
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsc) #13, !dbg !4189
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4189

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_time_ns(ptr noundef %ns) #0 align 16 !dbg !4190 {
entry:
  %ns.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4194, metadata !DIExpression()), !dbg !4197
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !4198
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4195, metadata !DIExpression()), !dbg !4198
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4198
  store ptr %0, ptr %__mptr, align 8, !dbg !4198
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4198
  %add.ptr = getelementptr i8, ptr %1, i64 -16, !dbg !4198
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4198
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !4199
  %2 = load ptr, ptr %tmp, align 8, !dbg !4198
  ret ptr %2, !dbg !4200
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_time_ns(ptr noundef %ns) #3 align 16 !dbg !4201 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4203, metadata !DIExpression()), !dbg !4204
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4205
  %ns1 = getelementptr inbounds %struct.time_namespace, ptr %0, i32 0, i32 2, !dbg !4207
  %count = getelementptr inbounds %struct.ns_common, ptr %ns1, i32 0, i32 3, !dbg !4208
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %count) #14, !dbg !4209
  br i1 %call, label %if.then, label %if.end, !dbg !4210

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !4211
  call void @free_time_ns(ptr noundef %1) #14, !dbg !4212
  br label %if.end, !dbg !4212

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4213
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @proc_timens_show_offsets(ptr noundef %p, ptr noundef %m) #0 align 16 !dbg !4214 {
entry:
  %p.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %time_ns = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4218, metadata !DIExpression()), !dbg !4222
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4219, metadata !DIExpression()), !dbg !4223
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #13, !dbg !4224
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !4220, metadata !DIExpression()), !dbg !4225
  call void @llvm.lifetime.start.p0(i64 8, ptr %time_ns) #13, !dbg !4226
  call void @llvm.dbg.declare(metadata ptr %time_ns, metadata !4221, metadata !DIExpression()), !dbg !4227
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4228
  %call = call ptr @timens_for_children_get(ptr noundef %0) #14, !dbg !4229
  store ptr %call, ptr %ns, align 8, !dbg !4230
  %1 = load ptr, ptr %ns, align 8, !dbg !4231
  %tobool = icmp ne ptr %1, null, !dbg !4231
  br i1 %tobool, label %if.end, label %if.then, !dbg !4233

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4234

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ns, align 8, !dbg !4235
  %call1 = call ptr @to_time_ns(ptr noundef %2) #14, !dbg !4236
  store ptr %call1, ptr %time_ns, align 8, !dbg !4237
  %3 = load ptr, ptr %m.addr, align 8, !dbg !4238
  %4 = load ptr, ptr %time_ns, align 8, !dbg !4239
  %offsets = getelementptr inbounds %struct.time_namespace, ptr %4, i32 0, i32 3, !dbg !4240
  %monotonic = getelementptr inbounds %struct.timens_offsets, ptr %offsets, i32 0, i32 0, !dbg !4241
  call void @show_offset(ptr noundef %3, i32 noundef 1, ptr noundef %monotonic) #14, !dbg !4242
  %5 = load ptr, ptr %m.addr, align 8, !dbg !4243
  %6 = load ptr, ptr %time_ns, align 8, !dbg !4244
  %offsets2 = getelementptr inbounds %struct.time_namespace, ptr %6, i32 0, i32 3, !dbg !4245
  %boottime = getelementptr inbounds %struct.timens_offsets, ptr %offsets2, i32 0, i32 1, !dbg !4246
  call void @show_offset(ptr noundef %5, i32 noundef 7, ptr noundef %boottime) #14, !dbg !4247
  %7 = load ptr, ptr %time_ns, align 8, !dbg !4248
  call void @put_time_ns(ptr noundef %7) #14, !dbg !4249
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4250
  br label %cleanup, !dbg !4250

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %time_ns) #13, !dbg !4250
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #13, !dbg !4250
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4250

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @timens_for_children_get(ptr noundef %task) #0 align 16 !dbg !4251 {
entry:
  %task.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %nsproxy = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4253, metadata !DIExpression()), !dbg !4256
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #13, !dbg !4257
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !4254, metadata !DIExpression()), !dbg !4258
  store ptr null, ptr %ns, align 8, !dbg !4258
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsproxy) #13, !dbg !4259
  call void @llvm.dbg.declare(metadata ptr %nsproxy, metadata !4255, metadata !DIExpression()), !dbg !4260
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4261
  call void @task_lock(ptr noundef %0) #14, !dbg !4262
  %1 = load ptr, ptr %task.addr, align 8, !dbg !4263
  %nsproxy1 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 103, !dbg !4264
  %2 = load ptr, ptr %nsproxy1, align 8, !dbg !4264
  store ptr %2, ptr %nsproxy, align 8, !dbg !4265
  %3 = load ptr, ptr %nsproxy, align 8, !dbg !4266
  %tobool = icmp ne ptr %3, null, !dbg !4266
  br i1 %tobool, label %if.then, label %if.end, !dbg !4268

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %nsproxy, align 8, !dbg !4269
  %time_ns_for_children = getelementptr inbounds %struct.nsproxy, ptr %4, i32 0, i32 7, !dbg !4271
  %5 = load ptr, ptr %time_ns_for_children, align 8, !dbg !4271
  store ptr %5, ptr %ns, align 8, !dbg !4272
  %6 = load ptr, ptr %ns, align 8, !dbg !4273
  %call = call ptr @get_time_ns(ptr noundef %6) #14, !dbg !4274
  br label %if.end, !dbg !4275

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %task.addr, align 8, !dbg !4276
  call void @task_unlock(ptr noundef %7) #14, !dbg !4277
  %8 = load ptr, ptr %ns, align 8, !dbg !4278
  %tobool2 = icmp ne ptr %8, null, !dbg !4278
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !4278

cond.true:                                        ; preds = %if.end
  %9 = load ptr, ptr %ns, align 8, !dbg !4279
  %ns3 = getelementptr inbounds %struct.time_namespace, ptr %9, i32 0, i32 2, !dbg !4280
  br label %cond.end, !dbg !4278

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4278

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %ns3, %cond.true ], [ null, %cond.false ], !dbg !4278
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsproxy) #13, !dbg !4281
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #13, !dbg !4281
  ret ptr %cond, !dbg !4282
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @show_offset(ptr noundef %m, i32 noundef %clockid, ptr noundef %ts) #0 align 16 !dbg !4283 {
entry:
  %m.addr = alloca ptr, align 8
  %clockid.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 8
  %clock = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4288, metadata !DIExpression()), !dbg !4292
  store i32 %clockid, ptr %clockid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clockid.addr, metadata !4289, metadata !DIExpression()), !dbg !4293
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !4290, metadata !DIExpression()), !dbg !4294
  call void @llvm.lifetime.start.p0(i64 8, ptr %clock) #13, !dbg !4295
  call void @llvm.dbg.declare(metadata ptr %clock, metadata !4291, metadata !DIExpression()), !dbg !4296
  %0 = load i32, ptr %clockid.addr, align 4, !dbg !4297
  switch i32 %0, label %sw.default [
    i32 7, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !4298

sw.bb:                                            ; preds = %entry
  store ptr @.str.5, ptr %clock, align 8, !dbg !4299
  br label %sw.epilog, !dbg !4301

sw.bb1:                                           ; preds = %entry
  store ptr @.str.6, ptr %clock, align 8, !dbg !4302
  br label %sw.epilog, !dbg !4303

sw.default:                                       ; preds = %entry
  store ptr @.str.7, ptr %clock, align 8, !dbg !4304
  br label %sw.epilog, !dbg !4305

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %m.addr, align 8, !dbg !4306
  %2 = load ptr, ptr %clock, align 8, !dbg !4307
  %3 = load ptr, ptr %ts.addr, align 8, !dbg !4308
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %3, i32 0, i32 0, !dbg !4309
  %4 = load i64, ptr %tv_sec, align 8, !dbg !4309
  %5 = load ptr, ptr %ts.addr, align 8, !dbg !4310
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %5, i32 0, i32 1, !dbg !4311
  %6 = load i64, ptr %tv_nsec, align 8, !dbg !4311
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef @.str.8, ptr noundef %2, i64 noundef %4, i64 noundef %6) #14, !dbg !4312
  call void @llvm.lifetime.end.p0(i64 8, ptr %clock) #13, !dbg !4313
  ret void, !dbg !4313
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @proc_timens_set_offset(ptr noundef %file, ptr noundef %p, ptr noundef %offsets, i32 noundef %noffsets) #0 align 16 !dbg !4314 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %offsets.addr = alloca ptr, align 8
  %noffsets.addr = alloca i32, align 4
  %ns = alloca ptr, align 8
  %time_ns = alloca ptr, align 8
  %tp = alloca %struct.timespec64, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %off = alloca ptr, align 8
  %tmp = alloca %struct.timespec64, align 8
  %off27 = alloca ptr, align 8
  %offset = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4323, metadata !DIExpression()), !dbg !4343
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4324, metadata !DIExpression()), !dbg !4344
  store ptr %offsets, ptr %offsets.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !4325, metadata !DIExpression()), !dbg !4345
  store i32 %noffsets, ptr %noffsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %noffsets.addr, metadata !4326, metadata !DIExpression()), !dbg !4346
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #13, !dbg !4347
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !4327, metadata !DIExpression()), !dbg !4348
  call void @llvm.lifetime.start.p0(i64 8, ptr %time_ns) #13, !dbg !4349
  call void @llvm.dbg.declare(metadata ptr %time_ns, metadata !4328, metadata !DIExpression()), !dbg !4350
  call void @llvm.lifetime.start.p0(i64 16, ptr %tp) #13, !dbg !4351
  call void @llvm.dbg.declare(metadata ptr %tp, metadata !4329, metadata !DIExpression()), !dbg !4352
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !4353
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4330, metadata !DIExpression()), !dbg !4354
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !4353
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4331, metadata !DIExpression()), !dbg !4355
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4356
  %call = call ptr @timens_for_children_get(ptr noundef %0) #14, !dbg !4357
  store ptr %call, ptr %ns, align 8, !dbg !4358
  %1 = load ptr, ptr %ns, align 8, !dbg !4359
  %tobool = icmp ne ptr %1, null, !dbg !4359
  br i1 %tobool, label %if.end, label %if.then, !dbg !4361

if.then:                                          ; preds = %entry
  store i32 -3, ptr %retval, align 4, !dbg !4362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup40, !dbg !4362

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ns, align 8, !dbg !4363
  %call1 = call ptr @to_time_ns(ptr noundef %2) #14, !dbg !4364
  store ptr %call1, ptr %time_ns, align 8, !dbg !4365
  %3 = load ptr, ptr %file.addr, align 8, !dbg !4366
  %4 = load ptr, ptr %time_ns, align 8, !dbg !4368
  %user_ns = getelementptr inbounds %struct.time_namespace, ptr %4, i32 0, i32 0, !dbg !4369
  %5 = load ptr, ptr %user_ns, align 8, !dbg !4369
  %call2 = call zeroext i1 @file_ns_capable(ptr noundef %3, ptr noundef %5, i32 noundef 25) #14, !dbg !4370
  br i1 %call2, label %if.end4, label %if.then3, !dbg !4371

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %time_ns, align 8, !dbg !4372
  call void @put_time_ns(ptr noundef %6) #14, !dbg !4374
  store i32 -1, ptr %retval, align 4, !dbg !4375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup40, !dbg !4375

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !4376
  br label %for.cond, !dbg !4377

for.cond:                                         ; preds = %for.inc, %if.end4
  %7 = load i32, ptr %i, align 4, !dbg !4378
  %8 = load i32, ptr %noffsets.addr, align 4, !dbg !4379
  %cmp = icmp slt i32 %7, %8, !dbg !4380
  br i1 %cmp, label %for.body, label %for.end, !dbg !4381

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #13, !dbg !4382
  call void @llvm.dbg.declare(metadata ptr %off, metadata !4332, metadata !DIExpression()), !dbg !4383
  %9 = load ptr, ptr %offsets.addr, align 8, !dbg !4384
  %10 = load i32, ptr %i, align 4, !dbg !4385
  %idxprom = sext i32 %10 to i64, !dbg !4384
  %arrayidx = getelementptr %struct.proc_timens_offset, ptr %9, i64 %idxprom, !dbg !4384
  store ptr %arrayidx, ptr %off, align 8, !dbg !4383
  %11 = load ptr, ptr %off, align 8, !dbg !4386
  %clockid = getelementptr inbounds %struct.proc_timens_offset, ptr %11, i32 0, i32 0, !dbg !4387
  %12 = load i32, ptr %clockid, align 8, !dbg !4387
  switch i32 %12, label %sw.default [
    i32 1, label %sw.bb
    i32 7, label %sw.bb5
  ], !dbg !4388

sw.bb:                                            ; preds = %for.body
  call void @ktime_get_ts64(ptr noundef %tp) #14, !dbg !4389
  br label %sw.epilog, !dbg !4391

sw.bb5:                                           ; preds = %for.body
  call void @ktime_get_boottime_ts64(ptr noundef %tp) #14, !dbg !4392
  br label %sw.epilog, !dbg !4393

sw.default:                                       ; preds = %for.body
  store i32 -22, ptr %err, align 4, !dbg !4394
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4395

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  store i32 -34, ptr %err, align 4, !dbg !4396
  %13 = load ptr, ptr %off, align 8, !dbg !4397
  %val = getelementptr inbounds %struct.proc_timens_offset, ptr %13, i32 0, i32 1, !dbg !4399
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %val, i32 0, i32 0, !dbg !4400
  %14 = load i64, ptr %tv_sec, align 8, !dbg !4400
  %cmp6 = icmp sgt i64 %14, 9223372036, !dbg !4401
  br i1 %cmp6, label %if.then10, label %lor.lhs.false, !dbg !4402

lor.lhs.false:                                    ; preds = %sw.epilog
  %15 = load ptr, ptr %off, align 8, !dbg !4403
  %val7 = getelementptr inbounds %struct.proc_timens_offset, ptr %15, i32 0, i32 1, !dbg !4404
  %tv_sec8 = getelementptr inbounds %struct.timespec64, ptr %val7, i32 0, i32 0, !dbg !4405
  %16 = load i64, ptr %tv_sec8, align 8, !dbg !4405
  %cmp9 = icmp slt i64 %16, -9223372036, !dbg !4406
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4407

if.then10:                                        ; preds = %lor.lhs.false, %sw.epilog
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4408

if.end11:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #13, !dbg !4409
  %17 = load ptr, ptr %off, align 8, !dbg !4410
  %val12 = getelementptr inbounds %struct.proc_timens_offset, ptr %17, i32 0, i32 1, !dbg !4411
  %18 = getelementptr inbounds { i64, i64 }, ptr %tp, i32 0, i32 0, !dbg !4409
  %19 = load i64, ptr %18, align 8, !dbg !4409
  %20 = getelementptr inbounds { i64, i64 }, ptr %tp, i32 0, i32 1, !dbg !4409
  %21 = load i64, ptr %20, align 8, !dbg !4409
  %22 = getelementptr inbounds { i64, i64 }, ptr %val12, i32 0, i32 0, !dbg !4409
  %23 = load i64, ptr %22, align 8, !dbg !4409
  %24 = getelementptr inbounds { i64, i64 }, ptr %val12, i32 0, i32 1, !dbg !4409
  %25 = load i64, ptr %24, align 8, !dbg !4409
  %call13 = call { i64, i64 } @timespec64_add(i64 %19, i64 %21, i64 %23, i64 %25) #14, !dbg !4409
  %26 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !4409
  %27 = extractvalue { i64, i64 } %call13, 0, !dbg !4409
  store i64 %27, ptr %26, align 8, !dbg !4409
  %28 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !4409
  %29 = extractvalue { i64, i64 } %call13, 1, !dbg !4409
  store i64 %29, ptr %28, align 8, !dbg !4409
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tp, ptr align 8 %tmp, i64 16, i1 false), !dbg !4409
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #13, !dbg !4409
  %tv_sec14 = getelementptr inbounds %struct.timespec64, ptr %tp, i32 0, i32 0, !dbg !4412
  %30 = load i64, ptr %tv_sec14, align 8, !dbg !4412
  %cmp15 = icmp slt i64 %30, 0, !dbg !4414
  br i1 %cmp15, label %if.then19, label %lor.lhs.false16, !dbg !4415

lor.lhs.false16:                                  ; preds = %if.end11
  %tv_sec17 = getelementptr inbounds %struct.timespec64, ptr %tp, i32 0, i32 0, !dbg !4416
  %31 = load i64, ptr %tv_sec17, align 8, !dbg !4416
  %cmp18 = icmp sgt i64 %31, 4611686018, !dbg !4417
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4418

if.then19:                                        ; preds = %lor.lhs.false16, %if.end11
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4419

if.end20:                                         ; preds = %lor.lhs.false16
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4420
  br label %cleanup, !dbg !4420

cleanup:                                          ; preds = %if.then19, %if.then10, %sw.default, %if.end20
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #13, !dbg !4420
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup40 [
    i32 0, label %cleanup.cont
    i32 6, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4421

for.inc:                                          ; preds = %cleanup.cont
  %32 = load i32, ptr %i, align 4, !dbg !4422
  %inc = add i32 %32, 1, !dbg !4422
  store i32 %inc, ptr %i, align 4, !dbg !4422
  br label %for.cond, !dbg !4423, !llvm.loop !4424

for.end:                                          ; preds = %for.cond
  call void @mutex_lock(ptr noundef @offset_lock) #14, !dbg !4426
  %33 = load ptr, ptr %time_ns, align 8, !dbg !4427
  %frozen_offsets = getelementptr inbounds %struct.time_namespace, ptr %33, i32 0, i32 5, !dbg !4429
  %34 = load i8, ptr %frozen_offsets, align 8, !dbg !4429, !range !4112, !noundef !848
  %tobool21 = trunc i8 %34 to i1, !dbg !4429
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4430

if.then22:                                        ; preds = %for.end
  store i32 -13, ptr %err, align 4, !dbg !4431
  br label %out_unlock, !dbg !4433

if.end23:                                         ; preds = %for.end
  store i32 0, ptr %err, align 4, !dbg !4434
  store i32 0, ptr %i, align 4, !dbg !4435
  br label %for.cond24, !dbg !4436

for.cond24:                                       ; preds = %for.inc37, %if.end23
  %35 = load i32, ptr %i, align 4, !dbg !4437
  %36 = load i32, ptr %noffsets.addr, align 4, !dbg !4438
  %cmp25 = icmp slt i32 %35, %36, !dbg !4439
  br i1 %cmp25, label %for.body26, label %for.end39, !dbg !4440

for.body26:                                       ; preds = %for.cond24
  call void @llvm.lifetime.start.p0(i64 8, ptr %off27) #13, !dbg !4441
  call void @llvm.dbg.declare(metadata ptr %off27, metadata !4336, metadata !DIExpression()), !dbg !4442
  %37 = load ptr, ptr %offsets.addr, align 8, !dbg !4443
  %38 = load i32, ptr %i, align 4, !dbg !4444
  %idxprom28 = sext i32 %38 to i64, !dbg !4443
  %arrayidx29 = getelementptr %struct.proc_timens_offset, ptr %37, i64 %idxprom28, !dbg !4443
  store ptr %arrayidx29, ptr %off27, align 8, !dbg !4442
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #13, !dbg !4445
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !4340, metadata !DIExpression()), !dbg !4446
  store ptr null, ptr %offset, align 8, !dbg !4446
  %39 = load ptr, ptr %off27, align 8, !dbg !4447
  %clockid30 = getelementptr inbounds %struct.proc_timens_offset, ptr %39, i32 0, i32 0, !dbg !4448
  %40 = load i32, ptr %clockid30, align 8, !dbg !4448
  switch i32 %40, label %sw.epilog35 [
    i32 1, label %sw.bb31
    i32 7, label %sw.bb33
  ], !dbg !4449

sw.bb31:                                          ; preds = %for.body26
  %41 = load ptr, ptr %time_ns, align 8, !dbg !4450
  %offsets32 = getelementptr inbounds %struct.time_namespace, ptr %41, i32 0, i32 3, !dbg !4452
  %monotonic = getelementptr inbounds %struct.timens_offsets, ptr %offsets32, i32 0, i32 0, !dbg !4453
  store ptr %monotonic, ptr %offset, align 8, !dbg !4454
  br label %sw.epilog35, !dbg !4455

sw.bb33:                                          ; preds = %for.body26
  %42 = load ptr, ptr %time_ns, align 8, !dbg !4456
  %offsets34 = getelementptr inbounds %struct.time_namespace, ptr %42, i32 0, i32 3, !dbg !4457
  %boottime = getelementptr inbounds %struct.timens_offsets, ptr %offsets34, i32 0, i32 1, !dbg !4458
  store ptr %boottime, ptr %offset, align 8, !dbg !4459
  br label %sw.epilog35, !dbg !4460

sw.epilog35:                                      ; preds = %for.body26, %sw.bb33, %sw.bb31
  %43 = load ptr, ptr %offset, align 8, !dbg !4461
  %44 = load ptr, ptr %off27, align 8, !dbg !4462
  %val36 = getelementptr inbounds %struct.proc_timens_offset, ptr %44, i32 0, i32 1, !dbg !4463
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %43, ptr align 8 %val36, i64 16, i1 false), !dbg !4463
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #13, !dbg !4464
  call void @llvm.lifetime.end.p0(i64 8, ptr %off27) #13, !dbg !4464
  br label %for.inc37, !dbg !4465

for.inc37:                                        ; preds = %sw.epilog35
  %45 = load i32, ptr %i, align 4, !dbg !4466
  %inc38 = add i32 %45, 1, !dbg !4466
  store i32 %inc38, ptr %i, align 4, !dbg !4466
  br label %for.cond24, !dbg !4467, !llvm.loop !4468

for.end39:                                        ; preds = %for.cond24
  br label %out_unlock, !dbg !4469

out_unlock:                                       ; preds = %for.end39, %if.then22
  call void @llvm.dbg.label(metadata !4341), !dbg !4470
  call void @mutex_unlock(ptr noundef @offset_lock) #14, !dbg !4471
  br label %out, !dbg !4471

out:                                              ; preds = %out_unlock, %cleanup
  call void @llvm.dbg.label(metadata !4342), !dbg !4472
  %46 = load ptr, ptr %time_ns, align 8, !dbg !4473
  call void @put_time_ns(ptr noundef %46) #14, !dbg !4474
  %47 = load i32, ptr %err, align 4, !dbg !4475
  store i32 %47, ptr %retval, align 4, !dbg !4476
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup40, !dbg !4476

cleanup40:                                        ; preds = %out, %cleanup, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !4477
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !4477
  call void @llvm.lifetime.end.p0(i64 16, ptr %tp) #13, !dbg !4477
  call void @llvm.lifetime.end.p0(i64 8, ptr %time_ns) #13, !dbg !4477
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #13, !dbg !4477
  %48 = load i32, ptr %retval, align 4, !dbg !4477
  ret i32 %48, !dbg !4477
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4478 dso_local zeroext i1 @file_ns_capable(ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4481 dso_local void @ktime_get_ts64(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ktime_get_boottime_ts64(ptr noundef %ts) #3 align 16 !dbg !4484 {
entry:
  %ts.addr = alloca ptr, align 8
  %tmp = alloca %struct.timespec64, align 8
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !4486, metadata !DIExpression()), !dbg !4487
  %0 = load ptr, ptr %ts.addr, align 8, !dbg !4488
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #13, !dbg !4489
  %call = call i64 @ktime_get_boottime() #14, !dbg !4489
  %call1 = call { i64, i64 } @ns_to_timespec64(i64 noundef %call) #14, !dbg !4489
  %1 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !4489
  %2 = extractvalue { i64, i64 } %call1, 0, !dbg !4489
  store i64 %2, ptr %1, align 8, !dbg !4489
  %3 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !4489
  %4 = extractvalue { i64, i64 } %call1, 1, !dbg !4489
  store i64 %4, ptr %3, align 8, !dbg !4489
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %tmp, i64 16, i1 false), !dbg !4489
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #13, !dbg !4489
  ret void, !dbg !4490
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { i64, i64 } @timespec64_add(i64 %lhs.coerce0, i64 %lhs.coerce1, i64 %rhs.coerce0, i64 %rhs.coerce1) #3 align 16 !dbg !4491 {
entry:
  %retval = alloca %struct.timespec64, align 8
  %lhs = alloca %struct.timespec64, align 8
  %rhs = alloca %struct.timespec64, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %lhs, i32 0, i32 0
  store i64 %lhs.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %lhs, i32 0, i32 1
  store i64 %lhs.coerce1, ptr %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, ptr %rhs, i32 0, i32 0
  store i64 %rhs.coerce0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %rhs, i32 0, i32 1
  store i64 %rhs.coerce1, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %lhs, metadata !4495, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.declare(metadata ptr %rhs, metadata !4496, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !4497, metadata !DIExpression()), !dbg !4500
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %lhs, i32 0, i32 0, !dbg !4501
  %4 = load i64, ptr %tv_sec, align 8, !dbg !4501
  %tv_sec1 = getelementptr inbounds %struct.timespec64, ptr %rhs, i32 0, i32 0, !dbg !4502
  %5 = load i64, ptr %tv_sec1, align 8, !dbg !4502
  %add = add i64 %4, %5, !dbg !4503
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %lhs, i32 0, i32 1, !dbg !4504
  %6 = load i64, ptr %tv_nsec, align 8, !dbg !4504
  %tv_nsec2 = getelementptr inbounds %struct.timespec64, ptr %rhs, i32 0, i32 1, !dbg !4505
  %7 = load i64, ptr %tv_nsec2, align 8, !dbg !4505
  %add3 = add i64 %6, %7, !dbg !4506
  call void @set_normalized_timespec64(ptr noundef %retval, i64 noundef %add, i64 noundef %add3) #14, !dbg !4507
  %8 = load { i64, i64 }, ptr %retval, align 8, !dbg !4508
  ret { i64, i64 } %8, !dbg !4508
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4509 dso_local void @mutex_lock(ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4513 dso_local void @mutex_unlock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @timens_get(ptr noundef %task) #0 align 16 !dbg !4514 {
entry:
  %task.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %nsproxy = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4516, metadata !DIExpression()), !dbg !4519
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #13, !dbg !4520
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !4517, metadata !DIExpression()), !dbg !4521
  store ptr null, ptr %ns, align 8, !dbg !4521
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsproxy) #13, !dbg !4522
  call void @llvm.dbg.declare(metadata ptr %nsproxy, metadata !4518, metadata !DIExpression()), !dbg !4523
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4524
  call void @task_lock(ptr noundef %0) #14, !dbg !4525
  %1 = load ptr, ptr %task.addr, align 8, !dbg !4526
  %nsproxy1 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 103, !dbg !4527
  %2 = load ptr, ptr %nsproxy1, align 8, !dbg !4527
  store ptr %2, ptr %nsproxy, align 8, !dbg !4528
  %3 = load ptr, ptr %nsproxy, align 8, !dbg !4529
  %tobool = icmp ne ptr %3, null, !dbg !4529
  br i1 %tobool, label %if.then, label %if.end, !dbg !4531

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %nsproxy, align 8, !dbg !4532
  %time_ns = getelementptr inbounds %struct.nsproxy, ptr %4, i32 0, i32 6, !dbg !4534
  %5 = load ptr, ptr %time_ns, align 8, !dbg !4534
  store ptr %5, ptr %ns, align 8, !dbg !4535
  %6 = load ptr, ptr %ns, align 8, !dbg !4536
  %call = call ptr @get_time_ns(ptr noundef %6) #14, !dbg !4537
  br label %if.end, !dbg !4538

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %task.addr, align 8, !dbg !4539
  call void @task_unlock(ptr noundef %7) #14, !dbg !4540
  %8 = load ptr, ptr %ns, align 8, !dbg !4541
  %tobool2 = icmp ne ptr %8, null, !dbg !4541
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !4541

cond.true:                                        ; preds = %if.end
  %9 = load ptr, ptr %ns, align 8, !dbg !4542
  %ns3 = getelementptr inbounds %struct.time_namespace, ptr %9, i32 0, i32 2, !dbg !4543
  br label %cond.end, !dbg !4541

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4541

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %ns3, %cond.true ], [ null, %cond.false ], !dbg !4541
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsproxy) #13, !dbg !4544
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #13, !dbg !4544
  ret ptr %cond, !dbg !4545
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @timens_put(ptr noundef %ns) #0 align 16 !dbg !4546 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4548, metadata !DIExpression()), !dbg !4549
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4550
  %call = call ptr @to_time_ns(ptr noundef %0) #14, !dbg !4551
  call void @put_time_ns(ptr noundef %call) #14, !dbg !4552
  ret void, !dbg !4553
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @timens_install(ptr noundef %nsset, ptr noundef %new) #0 align 16 !dbg !4554 {
entry:
  %retval = alloca i32, align 4
  %nsset.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %nsproxy = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nsset, ptr %nsset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nsset.addr, metadata !4556, metadata !DIExpression()), !dbg !4560
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4557, metadata !DIExpression()), !dbg !4561
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsproxy) #13, !dbg !4562
  call void @llvm.dbg.declare(metadata ptr %nsproxy, metadata !4558, metadata !DIExpression()), !dbg !4563
  %0 = load ptr, ptr %nsset.addr, align 8, !dbg !4564
  %nsproxy1 = getelementptr inbounds %struct.nsset, ptr %0, i32 0, i32 1, !dbg !4565
  %1 = load ptr, ptr %nsproxy1, align 8, !dbg !4565
  store ptr %1, ptr %nsproxy, align 8, !dbg !4563
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #13, !dbg !4566
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !4559, metadata !DIExpression()), !dbg !4567
  %2 = load ptr, ptr %new.addr, align 8, !dbg !4568
  %call = call ptr @to_time_ns(ptr noundef %2) #14, !dbg !4569
  store ptr %call, ptr %ns, align 8, !dbg !4567
  %call2 = call zeroext i1 @current_is_single_threaded() #14, !dbg !4570
  br i1 %call2, label %if.end, label %if.then, !dbg !4572

if.then:                                          ; preds = %entry
  store i32 -87, ptr %retval, align 4, !dbg !4573
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4573

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ns, align 8, !dbg !4574
  %user_ns = getelementptr inbounds %struct.time_namespace, ptr %3, i32 0, i32 0, !dbg !4576
  %4 = load ptr, ptr %user_ns, align 8, !dbg !4576
  %call3 = call zeroext i1 @ns_capable(ptr noundef %4, i32 noundef 21) #14, !dbg !4577
  br i1 %call3, label %lor.lhs.false, label %if.then6, !dbg !4578

lor.lhs.false:                                    ; preds = %if.end
  %5 = load ptr, ptr %nsset.addr, align 8, !dbg !4579
  %cred = getelementptr inbounds %struct.nsset, ptr %5, i32 0, i32 3, !dbg !4580
  %6 = load ptr, ptr %cred, align 8, !dbg !4580
  %user_ns4 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 22, !dbg !4581
  %7 = load ptr, ptr %user_ns4, align 8, !dbg !4581
  %call5 = call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 21) #14, !dbg !4582
  br i1 %call5, label %if.end7, label %if.then6, !dbg !4583

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -1, ptr %retval, align 4, !dbg !4584
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4584

if.end7:                                          ; preds = %lor.lhs.false
  %8 = load ptr, ptr %ns, align 8, !dbg !4585
  %call8 = call ptr @get_time_ns(ptr noundef %8) #14, !dbg !4586
  %9 = load ptr, ptr %nsproxy, align 8, !dbg !4587
  %time_ns = getelementptr inbounds %struct.nsproxy, ptr %9, i32 0, i32 6, !dbg !4588
  %10 = load ptr, ptr %time_ns, align 8, !dbg !4588
  call void @put_time_ns(ptr noundef %10) #14, !dbg !4589
  %11 = load ptr, ptr %ns, align 8, !dbg !4590
  %12 = load ptr, ptr %nsproxy, align 8, !dbg !4591
  %time_ns9 = getelementptr inbounds %struct.nsproxy, ptr %12, i32 0, i32 6, !dbg !4592
  store ptr %11, ptr %time_ns9, align 8, !dbg !4593
  %13 = load ptr, ptr %ns, align 8, !dbg !4594
  %call10 = call ptr @get_time_ns(ptr noundef %13) #14, !dbg !4595
  %14 = load ptr, ptr %nsproxy, align 8, !dbg !4596
  %time_ns_for_children = getelementptr inbounds %struct.nsproxy, ptr %14, i32 0, i32 7, !dbg !4597
  %15 = load ptr, ptr %time_ns_for_children, align 8, !dbg !4597
  call void @put_time_ns(ptr noundef %15) #14, !dbg !4598
  %16 = load ptr, ptr %ns, align 8, !dbg !4599
  %17 = load ptr, ptr %nsproxy, align 8, !dbg !4600
  %time_ns_for_children11 = getelementptr inbounds %struct.nsproxy, ptr %17, i32 0, i32 7, !dbg !4601
  store ptr %16, ptr %time_ns_for_children11, align 8, !dbg !4602
  store i32 0, ptr %retval, align 4, !dbg !4603
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4603

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #13, !dbg !4604
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsproxy) #13, !dbg !4604
  %18 = load i32, ptr %retval, align 4, !dbg !4604
  ret i32 %18, !dbg !4604
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @timens_owner(ptr noundef %ns) #0 align 16 !dbg !4605 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4607, metadata !DIExpression()), !dbg !4608
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4609
  %call = call ptr @to_time_ns(ptr noundef %0) #14, !dbg !4610
  %user_ns = getelementptr inbounds %struct.time_namespace, ptr %call, i32 0, i32 0, !dbg !4611
  %1 = load ptr, ptr %user_ns, align 8, !dbg !4611
  ret ptr %1, !dbg !4612
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_set(i64 noundef %secs, i64 noundef %nsecs) #3 align 16 !dbg !4613 {
entry:
  %retval = alloca i64, align 8
  %secs.addr = alloca i64, align 8
  %nsecs.addr = alloca i64, align 8
  store i64 %secs, ptr %secs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %secs.addr, metadata !4618, metadata !DIExpression()), !dbg !4620
  store i64 %nsecs, ptr %nsecs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nsecs.addr, metadata !4619, metadata !DIExpression()), !dbg !4621
  %0 = load i64, ptr %secs.addr, align 8, !dbg !4622
  %cmp = icmp sge i64 %0, 9223372036, !dbg !4622
  %lnot = xor i1 %cmp, true, !dbg !4622
  %lnot1 = xor i1 %lnot, true, !dbg !4622
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4622
  %conv = sext i32 %lnot.ext to i64, !dbg !4622
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4622
  %tobool = icmp ne i64 %expval, 0, !dbg !4622
  br i1 %tobool, label %if.then, label %if.end, !dbg !4624

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, ptr %retval, align 8, !dbg !4625
  br label %return, !dbg !4625

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %secs.addr, align 8, !dbg !4626
  %mul = mul i64 %1, 1000000000, !dbg !4627
  %2 = load i64, ptr %nsecs.addr, align 8, !dbg !4628
  %add = add i64 %mul, %2, !dbg !4629
  store i64 %add, ptr %retval, align 8, !dbg !4630
  br label %return, !dbg !4630

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, ptr %retval, align 8, !dbg !4631
  ret i64 %3, !dbg !4631
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #3 align 16 !dbg !4632 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4637, metadata !DIExpression()), !dbg !4638
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4639
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #14, !dbg !4640
  ret void, !dbg !4641
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !4642 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4646, metadata !DIExpression()), !dbg !4648
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4647, metadata !DIExpression()), !dbg !4649
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4650
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !4651
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #14, !dbg !4652
  ret void, !dbg !4653
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !4654 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4658, metadata !DIExpression()), !dbg !4662
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4659, metadata !DIExpression()), !dbg !4663
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4660, metadata !DIExpression()), !dbg !4664
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #13, !dbg !4665
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4661, metadata !DIExpression()), !dbg !4666
  %0 = load i32, ptr %i.addr, align 4, !dbg !4667
  %1 = load ptr, ptr %r.addr, align 8, !dbg !4668
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !4669
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #14, !dbg !4670
  store i32 %call, ptr %old, align 4, !dbg !4666
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !4671
  %tobool = icmp ne ptr %2, null, !dbg !4671
  br i1 %tobool, label %if.then, label %if.end, !dbg !4673

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !4674
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !4675
  store i32 %3, ptr %4, align 4, !dbg !4676
  br label %if.end, !dbg !4677

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !4678
  %tobool1 = icmp ne i32 %5, 0, !dbg !4678
  %lnot = xor i1 %tobool1, true, !dbg !4678
  %lnot2 = xor i1 %lnot, true, !dbg !4678
  %lnot3 = xor i1 %lnot2, true, !dbg !4678
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4678
  %conv = sext i32 %lnot.ext to i64, !dbg !4678
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4678
  %tobool4 = icmp ne i64 %expval, 0, !dbg !4678
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !4680

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !4681
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #14, !dbg !4682
  br label %if.end18, !dbg !4682

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !4683
  %cmp = icmp slt i32 %7, 0, !dbg !4683
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !4683

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !4683
  %9 = load i32, ptr %i.addr, align 4, !dbg !4683
  %add = add i32 %8, %9, !dbg !4683
  %cmp7 = icmp slt i32 %add, 0, !dbg !4683
  br label %lor.end, !dbg !4683

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !4683
  %lnot11 = xor i1 %lnot9, true, !dbg !4683
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !4683
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !4683
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !4683
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !4683
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4685

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !4686
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #14, !dbg !4687
  br label %if.end17, !dbg !4687

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #13, !dbg !4688
  ret void, !dbg !4688
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !4689 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4695, metadata !DIExpression()), !dbg !4697
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4696, metadata !DIExpression()), !dbg !4698
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4699
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !4700
  %1 = load i32, ptr %i.addr, align 4, !dbg !4701
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4702
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #14, !dbg !4703
  ret i32 %call, !dbg !4704
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4705 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !4708 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4716, metadata !DIExpression()), !dbg !4718
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4717, metadata !DIExpression()), !dbg !4719
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4720
  %1 = load i64, ptr %size.addr, align 8, !dbg !4721
  %conv = trunc i64 %1 to i32, !dbg !4721
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !4722
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4723
  %3 = load i64, ptr %size.addr, align 8, !dbg !4723
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !4723
  ret void, !dbg !4724
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !4725 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4728, metadata !DIExpression()), !dbg !4730
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4729, metadata !DIExpression()), !dbg !4731
  %0 = load i32, ptr %i.addr, align 4, !dbg !4732
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4733
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #14, !dbg !4734
  ret i32 %call, !dbg !4735
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !4736 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4741, metadata !DIExpression()), !dbg !4743
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4742, metadata !DIExpression()), !dbg !4744
  ret i1 true, !dbg !4745
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !4746 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4751, metadata !DIExpression()), !dbg !4754
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4752, metadata !DIExpression()), !dbg !4755
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4753, metadata !DIExpression()), !dbg !4756
  ret void, !dbg !4757
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !4758 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4761, metadata !DIExpression()), !dbg !4765
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4762, metadata !DIExpression()), !dbg !4766
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #13, !dbg !4767
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4763, metadata !DIExpression()), !dbg !4767
  %0 = load i32, ptr %i.addr, align 4, !dbg !4767
  store i32 %0, ptr %__ret, align 4, !dbg !4767
  %1 = load i32, ptr %__ret, align 4, !dbg !4767
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4767
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !4767
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #13, !dbg !4767, !srcloc !4768
  store i32 %3, ptr %__ret, align 4, !dbg !4767
  %4 = load i32, ptr %__ret, align 4, !dbg !4767
  store i32 %4, ptr %tmp, align 4, !dbg !4767
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #13, !dbg !4769
  %5 = load i32, ptr %tmp, align 4, !dbg !4767
  ret i32 %5, !dbg !4770
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @inc_time_namespaces(ptr noundef %ns) #0 align 16 !dbg !4771 {
entry:
  %ns.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.kuid_t, align 4
  %tmp = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4775, metadata !DIExpression()), !dbg !4776
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4777
  br label %do.body, !dbg !4778

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4781

do.end:                                           ; preds = %do.body
  %call = call ptr @get_current() #14, !dbg !4778
  %cred = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 94, !dbg !4778
  %1 = load ptr, ptr %cred, align 32, !dbg !4778
  store ptr %1, ptr %tmp, align 8, !dbg !4781
  %2 = load ptr, ptr %tmp, align 8, !dbg !4778
  %euid = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 5, !dbg !4783
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp, ptr align 8 %euid, i64 4, i1 false), !dbg !4783
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4784
  %3 = load i32, ptr %coerce.dive, align 4, !dbg !4784
  %call1 = call ptr @inc_ucount(ptr noundef %0, i32 %3, i32 noundef 7) #14, !dbg !4784
  ret ptr %call1, !dbg !4785
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !4786 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4790, metadata !DIExpression()), !dbg !4795
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4791, metadata !DIExpression()), !dbg !4796
  %0 = load i64, ptr %size.addr, align 8, !dbg !4797
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4798
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4799

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4800
  %tobool = icmp ne i64 %2, 0, !dbg !4800
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4801

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !4802
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4792, metadata !DIExpression()), !dbg !4803
  %3 = load i64, ptr %size.addr, align 8, !dbg !4804
  %cmp = icmp ugt i64 %3, 8192, !dbg !4806
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4807

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4808
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4809
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !4810
  store ptr %call, ptr %retval, align 8, !dbg !4811
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4811

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4812
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !4812
  store i32 %call2, ptr %index, align 4, !dbg !4813
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4814
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4815
  %9 = ptrtoint ptr %8 to i64, !dbg !4815
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !4816
  %idxprom = zext i32 %call3 to i64, !dbg !4817
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4817
  %10 = load i32, ptr %index, align 4, !dbg !4818
  %idxprom4 = zext i32 %10 to i64, !dbg !4817
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4817
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4817
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4819
  %13 = load i64, ptr %size.addr, align 8, !dbg !4820
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !4821
  store ptr %call6, ptr %retval, align 8, !dbg !4822
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4822

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !4823
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4824
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4825
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !4826
  store ptr %call8, ptr %retval, align 8, !dbg !4827
  br label %return, !dbg !4827

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4828
  ret ptr %16, !dbg !4828
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #3 align 16 !dbg !4829 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4833, metadata !DIExpression()), !dbg !4835
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4834, metadata !DIExpression()), !dbg !4836
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4837
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !4838
  %1 = load i32, ptr %n.addr, align 4, !dbg !4839
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #14, !dbg !4840
  ret void, !dbg !4841
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4842 dso_local ptr @alloc_pages(i32 noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ns_alloc_inum(ptr noundef %ns) #3 align 16 !dbg !4845 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4849, metadata !DIExpression()), !dbg !4850
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4851
  %stashed = getelementptr inbounds %struct.ns_common, ptr %0, i32 0, i32 0, !dbg !4852
  call void @atomic_long_set(ptr noundef %stashed, i64 noundef 0) #14, !dbg !4853
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !4854
  %inum = getelementptr inbounds %struct.ns_common, ptr %1, i32 0, i32 2, !dbg !4855
  %call = call i32 @proc_alloc_inum(ptr noundef %inum) #14, !dbg !4856
  ret i32 %call, !dbg !4857
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_user_ns(ptr noundef %ns) #3 align 16 !dbg !4858 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4862, metadata !DIExpression()), !dbg !4863
  ret ptr @init_user_ns, !dbg !4864
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !4865 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4870, metadata !DIExpression()), !dbg !4871
  %0 = load i64, ptr %error.addr, align 8, !dbg !4872
  %1 = inttoptr i64 %0 to ptr, !dbg !4873
  ret ptr %1, !dbg !4874
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4875 dso_local ptr @inc_ucount(ptr noundef, i32, i32 noundef) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4878 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !4879 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4883, metadata !DIExpression()), !dbg !4885
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4884, metadata !DIExpression()), !dbg !4886
  %0 = load i64, ptr %size.addr, align 8, !dbg !4887
  %tobool = icmp ne i64 %0, 0, !dbg !4887
  br i1 %tobool, label %if.end, label %if.then, !dbg !4889

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4890
  br label %return, !dbg !4890

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4891
  %cmp = icmp ule i64 %1, 8, !dbg !4893
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4894

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4895
  br label %return, !dbg !4895

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4896
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4898
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4899

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4900
  %cmp4 = icmp ule i64 %3, 96, !dbg !4901
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4902

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4903
  br label %return, !dbg !4903

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4904
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4906
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4907

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4908
  %cmp9 = icmp ule i64 %5, 192, !dbg !4909
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4910

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4911
  br label %return, !dbg !4911

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4912
  %cmp12 = icmp ule i64 %6, 8, !dbg !4914
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4915

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4916
  br label %return, !dbg !4916

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4917
  %cmp15 = icmp ule i64 %7, 16, !dbg !4919
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4920

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4921
  br label %return, !dbg !4921

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4922
  %cmp18 = icmp ule i64 %8, 32, !dbg !4924
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4925

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4926
  br label %return, !dbg !4926

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4927
  %cmp21 = icmp ule i64 %9, 64, !dbg !4929
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4930

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4931
  br label %return, !dbg !4931

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4932
  %cmp24 = icmp ule i64 %10, 128, !dbg !4934
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4935

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4936
  br label %return, !dbg !4936

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4937
  %cmp27 = icmp ule i64 %11, 256, !dbg !4939
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4940

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4941
  br label %return, !dbg !4941

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4942
  %cmp30 = icmp ule i64 %12, 512, !dbg !4944
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4945

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4946
  br label %return, !dbg !4946

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4947
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4949
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4950

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4951
  br label %return, !dbg !4951

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4952
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4954
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4955

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4956
  br label %return, !dbg !4956

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4957
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4959
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4960

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4961
  br label %return, !dbg !4961

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4962
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4964
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4965

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4966
  br label %return, !dbg !4966

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4967
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4969
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4970

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4971
  br label %return, !dbg !4971

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4972
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4974
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4975

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4976
  br label %return, !dbg !4976

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4977
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4979
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4980

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4981
  br label %return, !dbg !4981

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4982
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4984
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4985

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4986
  br label %return, !dbg !4986

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4987
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4989
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4990

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4991
  br label %return, !dbg !4991

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4992
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4994
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4995

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4996
  br label %return, !dbg !4996

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4997
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4999
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5000

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5001
  br label %return, !dbg !5001

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5002
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5004
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5005

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5006
  br label %return, !dbg !5006

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5007, !range !4112, !noundef !848
  %tobool69 = trunc i8 %25 to i1, !dbg !5007
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5009

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5010

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_253() #18, !dbg !5011, !srcloc !5014
  unreachable, !dbg !5011

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5015

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5016

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5017

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5019

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5017

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #13, !dbg !5021, !srcloc !5023
  br label %do.end75, !dbg !5021

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5017

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5024
  br label %return, !dbg !5024

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5025
  ret i32 %26, !dbg !5025
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5026 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !5032 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5036, metadata !DIExpression()), !dbg !5038
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5037, metadata !DIExpression()), !dbg !5039
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5040
  %and = and i32 %0, 17, !dbg !5040
  %cmp = icmp eq i32 %and, 0, !dbg !5040
  %lnot = xor i1 %cmp, true, !dbg !5040
  %lnot1 = xor i1 %lnot, true, !dbg !5040
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5040
  %conv = sext i32 %lnot.ext to i64, !dbg !5040
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5040
  %tobool = icmp ne i64 %expval, 0, !dbg !5040
  br i1 %tobool, label %if.then, label %if.end, !dbg !5042

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5043
  br label %return, !dbg !5043

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5044
  %and2 = and i32 %1, 1, !dbg !5046
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5046
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5047

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5048
  br label %return, !dbg !5048

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5049
  br label %return, !dbg !5049

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5051
  ret i32 %2, !dbg !5051
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5052 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5053 dso_local void @__compiletime_assert_253() #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !5054 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5058, metadata !DIExpression()), !dbg !5060
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5059, metadata !DIExpression()), !dbg !5061
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5062
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #14, !dbg !5063
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5064
  %2 = load i32, ptr %i.addr, align 4, !dbg !5065
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #14, !dbg !5066
  ret void, !dbg !5067
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !5068 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5070, metadata !DIExpression()), !dbg !5072
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5071, metadata !DIExpression()), !dbg !5073
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5074
  %1 = load i64, ptr %size.addr, align 8, !dbg !5075
  %conv = trunc i64 %1 to i32, !dbg !5075
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !5076
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5077
  %3 = load i64, ptr %size.addr, align 8, !dbg !5077
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #14, !dbg !5077
  ret void, !dbg !5078
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !5079 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5081, metadata !DIExpression()), !dbg !5083
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5082, metadata !DIExpression()), !dbg !5084
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5085
  %1 = load i32, ptr %i.addr, align 4, !dbg !5086
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #14, !dbg !5087
  ret void, !dbg !5088
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !5089 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5091, metadata !DIExpression()), !dbg !5093
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5092, metadata !DIExpression()), !dbg !5094
  br label %do.body, !dbg !5095

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !5096
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5096
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !5096
  store volatile i32 %0, ptr %counter, align 4, !dbg !5096
  br label %do.end, !dbg !5096

do.end:                                           ; preds = %do.body
  ret void, !dbg !5098
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_set(ptr noundef %v, i64 noundef %i) #5 align 16 !dbg !5099 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5103, metadata !DIExpression()), !dbg !5105
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5104, metadata !DIExpression()), !dbg !5106
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5107
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #14, !dbg !5108
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5109
  %2 = load i64, ptr %i.addr, align 8, !dbg !5110
  call void @raw_atomic_long_set(ptr noundef %1, i64 noundef %2) #14, !dbg !5111
  ret void, !dbg !5112
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5113 dso_local i32 @proc_alloc_inum(ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_set(ptr noundef %v, i64 noundef %i) #5 align 16 !dbg !5116 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5118, metadata !DIExpression()), !dbg !5120
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5119, metadata !DIExpression()), !dbg !5121
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5122
  %1 = load i64, ptr %i.addr, align 8, !dbg !5123
  call void @raw_atomic64_set(ptr noundef %0, i64 noundef %1) #14, !dbg !5124
  ret void, !dbg !5125
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #5 align 16 !dbg !5126 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5131, metadata !DIExpression()), !dbg !5133
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5132, metadata !DIExpression()), !dbg !5134
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5135
  %1 = load i64, ptr %i.addr, align 8, !dbg !5136
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #14, !dbg !5137
  ret void, !dbg !5138
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #5 align 16 !dbg !5139 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5142, metadata !DIExpression()), !dbg !5144
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5143, metadata !DIExpression()), !dbg !5145
  br label %do.body, !dbg !5146

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !5147
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5147
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !5147
  store volatile i64 %0, ptr %counter, align 8, !dbg !5147
  br label %do.end, !dbg !5147

do.end:                                           ; preds = %do.body
  ret void, !dbg !5149
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5150 dso_local void @dec_ucount(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5153 dso_local ptr @arch_get_vdso_data(ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #5 align 16 !dbg !5156 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5162, metadata !DIExpression()), !dbg !5163
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5164
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !5164
  %2 = inttoptr i64 %1 to ptr, !dbg !5164
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !5164
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !5164
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5164
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !5164
  %shl = shl i64 %sub.ptr.div, 12, !dbg !5164
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !5164
  %add = add i64 %shl, %3, !dbg !5164
  %4 = inttoptr i64 %add to ptr, !dbg !5164
  ret ptr %4, !dbg !5165
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @timens_setup_vdso_data(ptr noundef %vdata, ptr noundef %ns) #0 align 16 !dbg !5166 {
entry:
  %vdata.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  %offset = alloca ptr, align 8
  %monotonic = alloca %struct.timens_offset, align 8
  %boottime = alloca %struct.timens_offset, align 8
  store ptr %vdata, ptr %vdata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdata.addr, metadata !5170, metadata !DIExpression()), !dbg !5176
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !5171, metadata !DIExpression()), !dbg !5177
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #13, !dbg !5178
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !5172, metadata !DIExpression()), !dbg !5179
  %0 = load ptr, ptr %vdata.addr, align 8, !dbg !5180
  %1 = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 6, !dbg !5181
  %arraydecay = getelementptr inbounds [12 x %struct.timens_offset], ptr %1, i64 0, i64 0, !dbg !5180
  store ptr %arraydecay, ptr %offset, align 8, !dbg !5179
  call void @llvm.lifetime.start.p0(i64 16, ptr %monotonic) #13, !dbg !5182
  call void @llvm.dbg.declare(metadata ptr %monotonic, metadata !5174, metadata !DIExpression()), !dbg !5183
  %2 = load ptr, ptr %ns.addr, align 8, !dbg !5184
  %offsets = getelementptr inbounds %struct.time_namespace, ptr %2, i32 0, i32 3, !dbg !5185
  %monotonic1 = getelementptr inbounds %struct.timens_offsets, ptr %offsets, i32 0, i32 0, !dbg !5186
  %3 = getelementptr inbounds { i64, i64 }, ptr %monotonic1, i32 0, i32 0, !dbg !5187
  %4 = load i64, ptr %3, align 8, !dbg !5187
  %5 = getelementptr inbounds { i64, i64 }, ptr %monotonic1, i32 0, i32 1, !dbg !5187
  %6 = load i64, ptr %5, align 8, !dbg !5187
  %call = call { i64, i64 } @offset_from_ts(i64 %4, i64 %6) #14, !dbg !5187
  %7 = getelementptr inbounds { i64, i64 }, ptr %monotonic, i32 0, i32 0, !dbg !5187
  %8 = extractvalue { i64, i64 } %call, 0, !dbg !5187
  store i64 %8, ptr %7, align 8, !dbg !5187
  %9 = getelementptr inbounds { i64, i64 }, ptr %monotonic, i32 0, i32 1, !dbg !5187
  %10 = extractvalue { i64, i64 } %call, 1, !dbg !5187
  store i64 %10, ptr %9, align 8, !dbg !5187
  call void @llvm.lifetime.start.p0(i64 16, ptr %boottime) #13, !dbg !5188
  call void @llvm.dbg.declare(metadata ptr %boottime, metadata !5175, metadata !DIExpression()), !dbg !5189
  %11 = load ptr, ptr %ns.addr, align 8, !dbg !5190
  %offsets2 = getelementptr inbounds %struct.time_namespace, ptr %11, i32 0, i32 3, !dbg !5191
  %boottime3 = getelementptr inbounds %struct.timens_offsets, ptr %offsets2, i32 0, i32 1, !dbg !5192
  %12 = getelementptr inbounds { i64, i64 }, ptr %boottime3, i32 0, i32 0, !dbg !5193
  %13 = load i64, ptr %12, align 8, !dbg !5193
  %14 = getelementptr inbounds { i64, i64 }, ptr %boottime3, i32 0, i32 1, !dbg !5193
  %15 = load i64, ptr %14, align 8, !dbg !5193
  %call4 = call { i64, i64 } @offset_from_ts(i64 %13, i64 %15) #14, !dbg !5193
  %16 = getelementptr inbounds { i64, i64 }, ptr %boottime, i32 0, i32 0, !dbg !5193
  %17 = extractvalue { i64, i64 } %call4, 0, !dbg !5193
  store i64 %17, ptr %16, align 8, !dbg !5193
  %18 = getelementptr inbounds { i64, i64 }, ptr %boottime, i32 0, i32 1, !dbg !5193
  %19 = extractvalue { i64, i64 } %call4, 1, !dbg !5193
  store i64 %19, ptr %18, align 8, !dbg !5193
  %20 = load ptr, ptr %vdata.addr, align 8, !dbg !5194
  %seq = getelementptr inbounds %struct.vdso_data, ptr %20, i32 0, i32 0, !dbg !5195
  store i32 1, ptr %seq, align 8, !dbg !5196
  %21 = load ptr, ptr %vdata.addr, align 8, !dbg !5197
  %clock_mode = getelementptr inbounds %struct.vdso_data, ptr %21, i32 0, i32 1, !dbg !5198
  store i32 2147483647, ptr %clock_mode, align 4, !dbg !5199
  %22 = load ptr, ptr %offset, align 8, !dbg !5200
  %arrayidx = getelementptr %struct.timens_offset, ptr %22, i64 1, !dbg !5200
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 8 %monotonic, i64 16, i1 false), !dbg !5201
  %23 = load ptr, ptr %offset, align 8, !dbg !5202
  %arrayidx5 = getelementptr %struct.timens_offset, ptr %23, i64 4, !dbg !5202
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx5, ptr align 8 %monotonic, i64 16, i1 false), !dbg !5203
  %24 = load ptr, ptr %offset, align 8, !dbg !5204
  %arrayidx6 = getelementptr %struct.timens_offset, ptr %24, i64 6, !dbg !5204
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx6, ptr align 8 %monotonic, i64 16, i1 false), !dbg !5205
  %25 = load ptr, ptr %offset, align 8, !dbg !5206
  %arrayidx7 = getelementptr %struct.timens_offset, ptr %25, i64 7, !dbg !5206
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx7, ptr align 8 %boottime, i64 16, i1 false), !dbg !5207
  %26 = load ptr, ptr %offset, align 8, !dbg !5208
  %arrayidx8 = getelementptr %struct.timens_offset, ptr %26, i64 9, !dbg !5208
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx8, ptr align 8 %boottime, i64 16, i1 false), !dbg !5209
  call void @llvm.lifetime.end.p0(i64 16, ptr %boottime) #13, !dbg !5210
  call void @llvm.lifetime.end.p0(i64 16, ptr %monotonic) #13, !dbg !5210
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #13, !dbg !5210
  ret void, !dbg !5210
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal { i64, i64 } @offset_from_ts(i64 %off.coerce0, i64 %off.coerce1) #0 align 16 !dbg !5211 {
entry:
  %retval = alloca %struct.timens_offset, align 8
  %off = alloca %struct.timespec64, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %off, i32 0, i32 0
  store i64 %off.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %off, i32 0, i32 1
  store i64 %off.coerce1, ptr %1, align 8
  call void @llvm.dbg.declare(metadata ptr %off, metadata !5215, metadata !DIExpression()), !dbg !5217
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !5216, metadata !DIExpression()), !dbg !5218
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %off, i32 0, i32 0, !dbg !5219
  %2 = load i64, ptr %tv_sec, align 8, !dbg !5219
  %sec = getelementptr inbounds %struct.timens_offset, ptr %retval, i32 0, i32 0, !dbg !5220
  store i64 %2, ptr %sec, align 8, !dbg !5221
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %off, i32 0, i32 1, !dbg !5222
  %3 = load i64, ptr %tv_nsec, align 8, !dbg !5222
  %nsec = getelementptr inbounds %struct.timens_offset, ptr %retval, i32 0, i32 1, !dbg !5223
  store i64 %3, ptr %nsec, align 8, !dbg !5224
  %4 = load { i64, i64 }, ptr %retval, align 8, !dbg !5225
  ret { i64, i64 } %4, !dbg !5225
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #3 align 16 !dbg !5226 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5230, metadata !DIExpression()), !dbg !5231
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5232
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #14, !dbg !5233
  ret i1 %call, !dbg !5234
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !5235 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5239, metadata !DIExpression()), !dbg !5241
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5240, metadata !DIExpression()), !dbg !5242
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5243
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5244
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #14, !dbg !5245
  ret i1 %call, !dbg !5246
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !5247 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5251, metadata !DIExpression()), !dbg !5255
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5252, metadata !DIExpression()), !dbg !5256
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5253, metadata !DIExpression()), !dbg !5257
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #13, !dbg !5258
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5254, metadata !DIExpression()), !dbg !5259
  %0 = load i32, ptr %i.addr, align 4, !dbg !5260
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5261
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5262
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #14, !dbg !5263
  store i32 %call, ptr %old, align 4, !dbg !5259
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5264
  %tobool = icmp ne ptr %2, null, !dbg !5264
  br i1 %tobool, label %if.then, label %if.end, !dbg !5266

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5267
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5268
  store i32 %3, ptr %4, align 4, !dbg !5269
  br label %if.end, !dbg !5270

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5271
  %6 = load i32, ptr %i.addr, align 4, !dbg !5273
  %cmp = icmp eq i32 %5, %6, !dbg !5274
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !5275

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !5276

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !5278

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !5280

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5280

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !5278

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !5282

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !5284

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5284

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !5282, !srcloc !5286
  br label %do.cond7, !dbg !5282

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !5282

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !5278

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5278

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !5287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5287

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5288
  %cmp12 = icmp slt i32 %7, 0, !dbg !5288
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !5288

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !5288
  %9 = load i32, ptr %i.addr, align 4, !dbg !5288
  %sub = sub i32 %8, %9, !dbg !5288
  %cmp13 = icmp slt i32 %sub, 0, !dbg !5288
  br label %lor.end, !dbg !5288

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !5288
  %lnot14 = xor i1 %lnot, true, !dbg !5288
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !5288
  %conv = sext i32 %lnot.ext to i64, !dbg !5288
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5288
  %tobool15 = icmp ne i64 %expval, 0, !dbg !5288
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5290

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5291
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #14, !dbg !5292
  br label %if.end17, !dbg !5292

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !5293
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5293

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #13, !dbg !5294
  %12 = load i1, ptr %retval, align 1, !dbg !5294
  ret i1 %12, !dbg !5294
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !5295 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5297, metadata !DIExpression()), !dbg !5299
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5298, metadata !DIExpression()), !dbg !5300
  br label %do.body, !dbg !5301

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5302

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5304
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !5305
  %1 = load i32, ptr %i.addr, align 4, !dbg !5306
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5307
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #14, !dbg !5308
  ret i32 %call, !dbg !5309
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !5310 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5312, metadata !DIExpression()), !dbg !5314
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5313, metadata !DIExpression()), !dbg !5315
  %0 = load i32, ptr %i.addr, align 4, !dbg !5316
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5317
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #14, !dbg !5318
  ret i32 %call, !dbg !5319
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !5320 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5322, metadata !DIExpression()), !dbg !5326
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5323, metadata !DIExpression()), !dbg !5327
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #13, !dbg !5328
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5324, metadata !DIExpression()), !dbg !5328
  %0 = load i32, ptr %i.addr, align 4, !dbg !5328
  %sub = sub i32 0, %0, !dbg !5328
  store i32 %sub, ptr %__ret, align 4, !dbg !5328
  %1 = load i32, ptr %__ret, align 4, !dbg !5328
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5328
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5328
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #13, !dbg !5328, !srcloc !5329
  store i32 %3, ptr %__ret, align 4, !dbg !5328
  %4 = load i32, ptr %__ret, align 4, !dbg !5328
  store i32 %4, ptr %tmp, align 4, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #13, !dbg !5330
  %5 = load i32, ptr %tmp, align 4, !dbg !5328
  ret i32 %5, !dbg !5331
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_lock(ptr noundef %p) #3 align 16 !dbg !5332 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5337, metadata !DIExpression()), !dbg !5338
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5339
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !5340
  call void @spin_lock(ptr noundef %alloc_lock) #14, !dbg !5341
  ret void, !dbg !5342
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_unlock(ptr noundef %p) #3 align 16 !dbg !5343 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5345, metadata !DIExpression()), !dbg !5346
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5347
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !5348
  call void @spin_unlock(ptr noundef %alloc_lock) #14, !dbg !5349
  ret void, !dbg !5350
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #5 align 16 !dbg !5351 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5356, metadata !DIExpression()), !dbg !5357
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5358
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5358
  call void @_raw_spin_lock(ptr noundef %1) #14, !dbg !5358
  ret void, !dbg !5359
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5360 dso_local void @_raw_spin_lock(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #5 align 16 !dbg !5365 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5367, metadata !DIExpression()), !dbg !5368
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5369
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5369
  call void @_raw_spin_unlock(ptr noundef %1) #14, !dbg !5369
  ret void, !dbg !5370
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5371 dso_local void @_raw_spin_unlock(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5372 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5375 dso_local { i64, i64 } @ns_to_timespec64(i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_get_boottime() #3 align 16 !dbg !5378 {
entry:
  %call = call i64 @ktime_get_with_offset(i32 noundef 1) #14, !dbg !5379
  ret i64 %call, !dbg !5380
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5381 dso_local i64 @ktime_get_with_offset(i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5384 dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5387 dso_local zeroext i1 @current_is_single_threaded() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5390 dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { nounwind memory(none) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757}
!llvm.ident = !{!3758}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 208, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/time/namespace.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9371b381ab310e1f66850bcf8eabe41")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 28)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 208, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 24)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "offset_lock", scope: !14, file: !2, line: 217, type: !869, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/time/.namespace.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/time/namespace\22 -D KBUILD_BASENAME=\22namespace\22 -D KBUILD_MODNAME=\22namespace\22 -D __KBUILD_MODNAME=kmod_namespace -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/time/namespace.ll kernel/time/namespace.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !233, globals: !3715, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !22, !30, !35, !41, !49, !65, !72, !78, !85, !180, !188, !193, !207, !217, !226}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !17, line: 65, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!21 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !23, line: 9, baseType: !18, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!26 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!27 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!28 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!29 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !31, line: 2052, baseType: !18, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!32 = !{!33, !34}
!33 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!34 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !36, line: 54, baseType: !18, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!37 = !{!38, !39, !40}
!38 = !DIEnumerator(name: "USRQUOTA", value: 0)
!39 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!40 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !42, line: 68, baseType: !18, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!43 = !{!44, !45, !46, !47, !48}
!44 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!45 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !50, line: 1325, baseType: !18, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!52 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!53 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!54 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!55 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!56 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!57 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!58 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!59 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!60 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!61 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!62 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!63 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!64 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !66, line: 15, baseType: !18, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!67 = !{!68, !69, !70, !71}
!68 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!69 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!70 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!71 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !73, line: 16, baseType: !18, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "TT_NONE", value: 0)
!76 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!77 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !79, line: 51, baseType: !18, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!80 = !{!81, !82, !83, !84}
!81 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!82 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!83 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!84 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !87, file: !86, line: 147, baseType: !18, size: 32, elements: !177)
!86 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !86, line: 135, size: 512, elements: !88)
!88 = !{!89, !92, !94, !96, !100, !101, !117, !175, !176}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !87, file: !86, line: 136, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !87, file: !86, line: 137, baseType: !93, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !87, file: !86, line: 138, baseType: !95, size: 32, offset: 128)
!95 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !87, file: !86, line: 139, baseType: !97, size: 16, offset: 160)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !98, line: 24, baseType: !99)
!98 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!99 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !86, line: 150, baseType: !85, size: 32, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !87, file: !86, line: 151, baseType: !102, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !86, line: 64, baseType: !104)
!104 = !DISubroutineType(types: !105)
!105 = !{!95, !106, !95, !93, !107, !113}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !98, line: 61, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !110, line: 72, baseType: !111)
!110 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !110, line: 16, baseType: !112)
!112 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !98, line: 52, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !110, line: 88, baseType: !116)
!116 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !87, file: !86, line: 152, baseType: !118, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !86, line: 117, size: 256, elements: !120)
!120 = !{!121, !126}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !119, file: !86, line: 118, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !98, line: 174, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 172, size: 32, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !123, file: !98, line: 173, baseType: !95, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !119, file: !86, line: 119, baseType: !127, size: 192, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !128, line: 41, baseType: !129)
!128 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !128, line: 37, size: 192, elements: !130)
!130 = !{!131, !169}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !129, file: !128, line: 38, baseType: !132, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !133, line: 29, baseType: !134)
!133 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !133, line: 17, size: 32, elements: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !133, line: 18, baseType: !137, size: 32)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !133, line: 18, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !137, file: !133, line: 19, baseType: !140, size: 32)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !141, line: 14, size: 32, elements: !142)
!141 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !140, file: !141, line: 15, baseType: !144, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !145, line: 44, baseType: !146)
!145 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !145, line: 14, size: 32, elements: !147)
!147 = !{!148}
!148 = !DIDerivedType(tag: DW_TAG_member, scope: !146, file: !145, line: 15, baseType: !149, size: 32)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !146, file: !145, line: 15, size: 32, elements: !150)
!150 = !{!151, !152, !162}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !149, file: !145, line: 16, baseType: !122, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !145, line: 24, baseType: !153, size: 16)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !149, file: !145, line: 24, size: 16, elements: !154)
!154 = !{!155, !161}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !153, file: !145, line: 25, baseType: !156, size: 8)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !157, line: 17, baseType: !158)
!157 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !159, line: 21, baseType: !160)
!159 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!160 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !153, file: !145, line: 26, baseType: !156, size: 8, offset: 8)
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !145, line: 28, baseType: !163, size: 32)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !149, file: !145, line: 28, size: 32, elements: !164)
!164 = !{!165, !168}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !163, file: !145, line: 29, baseType: !166, size: 16)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !157, line: 19, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !159, line: 24, baseType: !99)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !163, file: !145, line: 30, baseType: !166, size: 16, offset: 16)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !129, file: !128, line: 39, baseType: !170, size: 128, offset: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !98, line: 190, size: 128, elements: !171)
!171 = !{!172, !174}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !170, file: !98, line: 191, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !170, file: !98, line: 191, baseType: !173, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !87, file: !86, line: 153, baseType: !93, size: 64, offset: 384)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !87, file: !86, line: 154, baseType: !93, size: 64, offset: 448)
!177 = !{!178, !179}
!178 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!179 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !181, line: 119, baseType: !18, size: 32, elements: !182)
!181 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!182 = !{!183, !184, !185, !186, !187}
!183 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!184 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!185 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!186 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!187 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !189, line: 10, baseType: !18, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!190 = !{!191, !192}
!191 = !DIEnumerator(name: "false", value: 0)
!192 = !DIEnumerator(name: "true", value: 1)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ucount_type", file: !194, line: 40, baseType: !18, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!195 = !{!196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206}
!196 = !DIEnumerator(name: "UCOUNT_USER_NAMESPACES", value: 0)
!197 = !DIEnumerator(name: "UCOUNT_PID_NAMESPACES", value: 1)
!198 = !DIEnumerator(name: "UCOUNT_UTS_NAMESPACES", value: 2)
!199 = !DIEnumerator(name: "UCOUNT_IPC_NAMESPACES", value: 3)
!200 = !DIEnumerator(name: "UCOUNT_NET_NAMESPACES", value: 4)
!201 = !DIEnumerator(name: "UCOUNT_MNT_NAMESPACES", value: 5)
!202 = !DIEnumerator(name: "UCOUNT_CGROUP_NAMESPACES", value: 6)
!203 = !DIEnumerator(name: "UCOUNT_TIME_NAMESPACES", value: 7)
!204 = !DIEnumerator(name: "UCOUNT_INOTIFY_INSTANCES", value: 8)
!205 = !DIEnumerator(name: "UCOUNT_INOTIFY_WATCHES", value: 9)
!206 = !DIEnumerator(name: "UCOUNT_COUNTS", value: 10)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !208, line: 364, baseType: !18, size: 32, elements: !209)
!208 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!209 = !{!210, !211, !212, !213, !214, !215, !216}
!210 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!211 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!212 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!213 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!214 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!215 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!216 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vdso_clock_mode", file: !218, line: 11, baseType: !18, size: 32, elements: !219)
!218 = !DIFile(filename: "./include/vdso/clocksource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5c94bac8b1931d6fab42a415ede12b1")
!219 = !{!220, !221, !222, !223, !224, !225}
!220 = !DIEnumerator(name: "VDSO_CLOCKMODE_NONE", value: 0)
!221 = !DIEnumerator(name: "VDSO_CLOCKMODE_TSC", value: 1)
!222 = !DIEnumerator(name: "VDSO_CLOCKMODE_PVCLOCK", value: 2)
!223 = !DIEnumerator(name: "VDSO_CLOCKMODE_HVCLOCK", value: 3)
!224 = !DIEnumerator(name: "VDSO_CLOCKMODE_MAX", value: 4)
!225 = !DIEnumerator(name: "VDSO_CLOCKMODE_TIMENS", value: 2147483647)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tk_offsets", file: !227, line: 60, baseType: !18, size: 32, elements: !228)
!227 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!228 = !{!229, !230, !231, !232}
!229 = !DIEnumerator(name: "TK_OFFS_REAL", value: 0)
!230 = !DIEnumerator(name: "TK_OFFS_BOOT", value: 1)
!231 = !DIEnumerator(name: "TK_OFFS_TAI", value: 2)
!232 = !DIEnumerator(name: "TK_OFFS_MAX", value: 3)
!233 = !{!234, !236, !239, !240, !112, !3710, !3712, !93, !3714, !529, !3359, !1811, !2814}
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !157, line: 22, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !159, line: 30, baseType: !116)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !157, line: 23, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !159, line: 31, baseType: !238)
!238 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !98, line: 154, baseType: !18)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !243, line: 110, size: 1472, elements: !244)
!243 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!244 = !{!245, !252, !260, !267, !268, !269, !270, !271, !272, !273, !274, !280, !281, !282, !283, !284, !285, !437, !438, !439, !440, !441, !478, !3696, !3697, !3705}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !242, file: !243, line: 111, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !247, line: 13, baseType: !248)
!247 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !98, line: 181, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 179, size: 64, elements: !250)
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !249, file: !98, line: 180, baseType: !234, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !242, file: !243, line: 112, baseType: !253, size: 32, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !254, line: 23, baseType: !255)
!254 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 21, size: 32, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !255, file: !254, line: 22, baseType: !258, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !98, line: 37, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !110, line: 49, baseType: !18)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !242, file: !243, line: 113, baseType: !261, size: 32, offset: 96)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !254, line: 28, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 26, size: 32, elements: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !262, file: !254, line: 27, baseType: !265, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !98, line: 38, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !110, line: 50, baseType: !18)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !242, file: !243, line: 114, baseType: !253, size: 32, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !242, file: !243, line: 115, baseType: !261, size: 32, offset: 160)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !242, file: !243, line: 116, baseType: !253, size: 32, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !242, file: !243, line: 117, baseType: !261, size: 32, offset: 224)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !242, file: !243, line: 118, baseType: !253, size: 32, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !242, file: !243, line: 119, baseType: !261, size: 32, offset: 288)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !242, file: !243, line: 120, baseType: !18, size: 32, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !242, file: !243, line: 121, baseType: !275, size: 64, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !276, line: 24, baseType: !277)
!276 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !276, line: 24, size: 64, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !277, file: !276, line: 24, baseType: !236, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !242, file: !243, line: 122, baseType: !275, size: 64, offset: 448)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !242, file: !243, line: 123, baseType: !275, size: 64, offset: 512)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !242, file: !243, line: 124, baseType: !275, size: 64, offset: 576)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !242, file: !243, line: 125, baseType: !275, size: 64, offset: 640)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !242, file: !243, line: 127, baseType: !160, size: 8, offset: 704)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !242, file: !243, line: 129, baseType: !286, size: 64, offset: 768)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !288, line: 195, size: 1728, elements: !289)
!288 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!289 = !{!290, !295, !300, !312, !326, !329, !330, !337, !338, !339, !340, !345, !346, !347, !349, !350, !399, !422}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !287, file: !288, line: 196, baseType: !291, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !181, line: 113, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !181, line: 111, size: 32, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !292, file: !181, line: 112, baseType: !122, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !287, file: !288, line: 197, baseType: !296, size: 32, offset: 32)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !288, line: 28, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !98, line: 104, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !157, line: 20, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !159, line: 26, baseType: !95)
!300 = !DIDerivedType(tag: DW_TAG_member, scope: !287, file: !288, line: 198, baseType: !301, size: 192, offset: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !288, line: 198, size: 192, elements: !302)
!302 = !{!303, !304}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !301, file: !288, line: 199, baseType: !170, size: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !301, file: !288, line: 200, baseType: !305, size: 192, align: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !306, line: 5, size: 192, align: 64, elements: !307)
!306 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!307 = !{!308, !309, !311}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !305, file: !306, line: 6, baseType: !112, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !305, file: !306, line: 7, baseType: !310, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !305, file: !306, line: 8, baseType: !310, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !287, file: !288, line: 205, baseType: !313, size: 320, offset: 256)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !314, line: 48, size: 320, elements: !315)
!314 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!315 = !{!316, !317, !318, !323, !325}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !313, file: !314, line: 49, baseType: !246, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !313, file: !314, line: 55, baseType: !246, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !313, file: !314, line: 57, baseType: !319, size: 32, offset: 128)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !320, line: 15, size: 32, elements: !321)
!320 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !319, file: !320, line: 20, baseType: !122, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !313, file: !314, line: 59, baseType: !324, size: 32, offset: 160)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !141, line: 23, baseType: !140)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !313, file: !314, line: 60, baseType: !170, size: 128, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !287, file: !288, line: 206, baseType: !327, size: 64, offset: 576)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !288, line: 206, flags: DIFlagFwdDecl)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !287, file: !288, line: 207, baseType: !93, size: 64, offset: 640)
!330 = !DIDerivedType(tag: DW_TAG_member, scope: !287, file: !288, line: 208, baseType: !331, size: 64, offset: 704)
!331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !288, line: 208, size: 64, elements: !332)
!332 = !{!333, !336}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !331, file: !288, line: 209, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !335, line: 8, baseType: !235)
!335 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!336 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !331, file: !288, line: 210, baseType: !334, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !287, file: !288, line: 212, baseType: !334, size: 64, offset: 768)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !287, file: !288, line: 213, baseType: !253, size: 32, offset: 832)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !287, file: !288, line: 214, baseType: !261, size: 32, offset: 864)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !287, file: !288, line: 215, baseType: !341, size: 32, offset: 896)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !288, line: 31, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !98, line: 110, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !157, line: 21, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !159, line: 27, baseType: !18)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !287, file: !288, line: 216, baseType: !99, size: 16, offset: 928)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !287, file: !288, line: 217, baseType: !99, size: 16, offset: 944)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !288, line: 221, baseType: !348, size: 16, offset: 960)
!348 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !288, line: 228, baseType: !112, size: 64, offset: 1024)
!350 = !DIDerivedType(tag: DW_TAG_member, scope: !287, file: !288, line: 245, baseType: !351, size: 320, offset: 1088)
!351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !288, line: 245, size: 320, elements: !352)
!352 = !{!353, !390}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !351, file: !288, line: 246, baseType: !354, size: 320)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !288, line: 114, size: 320, elements: !355)
!355 = !{!356, !357, !369, !372, !389}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !354, file: !288, line: 116, baseType: !112, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !288, line: 117, baseType: !358, size: 64, offset: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !288, line: 117, size: 64, elements: !359)
!359 = !{!360, !368}
!360 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !288, line: 118, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !358, file: !288, line: 118, size: 64, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !361, file: !288, line: 120, baseType: !166, size: 16)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !361, file: !288, line: 121, baseType: !365, size: 48, offset: 16)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 6)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !358, file: !288, line: 127, baseType: !112, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !354, file: !288, line: 129, baseType: !370, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !288, line: 102, flags: DIFlagFwdDecl)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !354, file: !288, line: 130, baseType: !373, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !288, line: 108, size: 192, elements: !375)
!375 = !{!376, !385, !386}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !374, file: !288, line: 109, baseType: !377, size: 128, align: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !98, line: 232, size: 128, align: 64, elements: !378)
!378 = !{!379, !381}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !98, line: 233, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !377, file: !98, line: 234, baseType: !382, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !380}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !374, file: !288, line: 110, baseType: !291, size: 32, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !374, file: !288, line: 111, baseType: !387, size: 8, offset: 160)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !98, line: 35, baseType: !388)
!388 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !354, file: !288, line: 131, baseType: !90, size: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !288, line: 247, baseType: !391, size: 320)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !351, file: !288, line: 247, size: 320, elements: !392)
!392 = !{!393, !394, !395, !396, !397}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !391, file: !288, line: 248, baseType: !112, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !391, file: !288, line: 249, baseType: !112, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !391, file: !288, line: 250, baseType: !370, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !391, file: !288, line: 251, baseType: !373, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !391, file: !288, line: 252, baseType: !398, size: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, scope: !287, file: !288, line: 260, baseType: !400, size: 256, offset: 1408)
!400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !288, line: 260, size: 256, elements: !401)
!401 = !{!402, !410}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !400, file: !288, line: 261, baseType: !403, size: 256)
!403 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !288, line: 134, size: 256, elements: !404)
!404 = !{!405, !406}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !403, file: !288, line: 135, baseType: !93, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !403, file: !288, line: 136, baseType: !407, size: 256)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 256, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 4)
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !288, line: 262, baseType: !411, size: 256)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !400, file: !288, line: 262, size: 256, elements: !412)
!412 = !{!413, !414}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !411, file: !288, line: 264, baseType: !170, size: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !411, file: !288, line: 265, baseType: !415, size: 128, offset: 128)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !416, line: 22, size: 128, elements: !417)
!416 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!417 = !{!418, !421}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !415, file: !416, line: 23, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !416, line: 23, flags: DIFlagFwdDecl)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !415, file: !416, line: 24, baseType: !112, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !287, file: !288, line: 280, baseType: !423, size: 64, offset: 1664)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !288, line: 176, size: 192, elements: !425)
!425 = !{!426, !435, !436}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !424, file: !288, line: 177, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !288, line: 171, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!95, !286, !431, !433, !286}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !424, file: !288, line: 178, baseType: !286, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !424, file: !288, line: 179, baseType: !370, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !242, file: !243, line: 130, baseType: !286, size: 64, offset: 832)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !242, file: !243, line: 131, baseType: !286, size: 64, offset: 896)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !242, file: !243, line: 132, baseType: !286, size: 64, offset: 960)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !242, file: !243, line: 135, baseType: !93, size: 64, offset: 1024)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !242, file: !243, line: 137, baseType: !442, size: 64, offset: 1088)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !444, line: 14, size: 1088, elements: !445)
!444 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!445 = !{!446, !447, !456, !457, !458, !465, !466, !467}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !443, file: !444, line: 15, baseType: !291, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !443, file: !444, line: 17, baseType: !448, size: 320, offset: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !449, line: 22, size: 320, elements: !450)
!449 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!450 = !{!451, !452, !453, !454}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !448, file: !449, line: 23, baseType: !324, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !448, file: !449, line: 24, baseType: !234, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !448, file: !449, line: 26, baseType: !170, size: 128, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !448, file: !449, line: 28, baseType: !455, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !443, file: !444, line: 19, baseType: !112, size: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !443, file: !444, line: 20, baseType: !246, size: 64, offset: 448)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !443, file: !444, line: 23, baseType: !459, size: 128, offset: 512)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !98, line: 198, size: 128, elements: !460)
!460 = !{!461, !463}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !459, file: !98, line: 199, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !459, file: !98, line: 199, baseType: !464, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !443, file: !444, line: 24, baseType: !253, size: 32, offset: 640)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !443, file: !444, line: 29, baseType: !246, size: 64, offset: 704)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !443, file: !444, line: 36, baseType: !468, size: 320, offset: 768)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !469, line: 15, size: 320, elements: !470)
!469 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!470 = !{!471, !472, !473, !474, !475, !476, !477}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !468, file: !469, line: 16, baseType: !324, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !468, file: !469, line: 18, baseType: !95, size: 32, offset: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !468, file: !469, line: 19, baseType: !95, size: 32, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !468, file: !469, line: 20, baseType: !95, size: 32, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !468, file: !469, line: 21, baseType: !95, size: 32, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !468, file: !469, line: 22, baseType: !112, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !468, file: !469, line: 23, baseType: !112, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !242, file: !243, line: 138, baseType: !479, size: 64, offset: 1152)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !194, line: 68, size: 4800, elements: !481)
!481 = !{!482, !504, !505, !506, !507, !508, !509, !510, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3690, !3691, !3692, !3694}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !480, file: !194, line: 69, baseType: !483, size: 576)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !194, line: 23, size: 576, elements: !484)
!484 = !{!485, !486}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !483, file: !194, line: 24, baseType: !343, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, scope: !483, file: !194, line: 25, baseType: !487, size: 512, offset: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !483, file: !194, line: 25, size: 512, elements: !488)
!488 = !{!489, !498}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !487, file: !194, line: 26, baseType: !490, size: 480)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 480, elements: !496)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !194, line: 17, size: 96, elements: !492)
!492 = !{!493, !494, !495}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !491, file: !194, line: 18, baseType: !343, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !491, file: !194, line: 19, baseType: !343, size: 32, offset: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !491, file: !194, line: 20, baseType: !343, size: 32, offset: 64)
!496 = !{!497}
!497 = !DISubrange(count: 5)
!498 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !194, line: 27, baseType: !499, size: 128)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !487, file: !194, line: 27, size: 128, elements: !500)
!500 = !{!501, !503}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !499, file: !194, line: 28, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !499, file: !194, line: 29, baseType: !502, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !480, file: !194, line: 70, baseType: !483, size: 576, offset: 576)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !480, file: !194, line: 71, baseType: !483, size: 576, offset: 1152)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !480, file: !194, line: 72, baseType: !479, size: 64, offset: 1728)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !480, file: !194, line: 73, baseType: !95, size: 32, offset: 1792)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !480, file: !194, line: 74, baseType: !253, size: 32, offset: 1824)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !480, file: !194, line: 75, baseType: !261, size: 32, offset: 1856)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !480, file: !194, line: 76, baseType: !511, size: 192, offset: 1920)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !512, line: 9, size: 192, elements: !513)
!512 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!513 = !{!514, !515, !3623, !3624}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !511, file: !512, line: 10, baseType: !246, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !511, file: !512, line: 11, baseType: !516, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !519, line: 16, size: 512, elements: !520)
!519 = !DIFile(filename: "./include/linux/proc_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10d8d049c3f8fd93040e0b5385a478ba")
!520 = !{!521, !522, !523, !524, !3600, !3604, !3615, !3619}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !518, file: !519, line: 17, baseType: !90, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "real_ns_name", scope: !518, file: !519, line: 18, baseType: !90, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !518, file: !519, line: 19, baseType: !95, size: 32, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !518, file: !519, line: 20, baseType: !525, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !531, line: 746, size: 58368, elements: !532)
!531 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!532 = !{!533, !541, !542, !543, !544, !545, !546, !547, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !618, !629, !729, !733, !736, !767, !768, !769, !770, !781, !783, !784, !785, !786, !787, !788, !799, !800, !803, !804, !805, !806, !807, !808, !809, !810, !817, !818, !825, !826, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2709, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2724, !2725, !2726, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2758, !2764, !2765, !2766, !2767, !2768, !2770, !2773, !2780, !2785, !2788, !2791, !2794, !2845, !2986, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3028, !3029, !3030, !3039, !3047, !3048, !3049, !3050, !3051, !3056, !3057, !3058, !3061, !3062, !3065, !3068, !3071, !3079, !3082, !3083, !3169, !3170, !3171, !3172, !3173, !3179, !3180, !3181, !3182, !3185, !3186, !3189, !3192, !3193, !3196, !3197, !3198, !3201, !3202, !3203, !3204, !3205, !3206, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3238, !3239, !3245, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3257, !3329, !3331, !3332, !3333, !3334, !3335, !3347, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3377, !3378, !3379}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !530, file: !531, line: 752, baseType: !534, size: 192)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !535, line: 56, size: 192, elements: !536)
!535 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!536 = !{!537, !538, !539, !540}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !534, file: !535, line: 57, baseType: !112, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !534, file: !535, line: 58, baseType: !112, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !534, file: !535, line: 59, baseType: !343, size: 32, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !534, file: !535, line: 61, baseType: !343, size: 32, offset: 160)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !530, file: !531, line: 754, baseType: !18, size: 32, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !530, file: !531, line: 767, baseType: !93, size: 64, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !530, file: !531, line: 768, baseType: !291, size: 32, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !530, file: !531, line: 770, baseType: !18, size: 32, offset: 352)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !530, file: !531, line: 771, baseType: !18, size: 32, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !530, file: !531, line: 774, baseType: !95, size: 32, offset: 416)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !530, file: !531, line: 775, baseType: !548, size: 128, offset: 448)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !549, line: 58, size: 128, elements: !550)
!549 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!550 = !{!551, !557, !562, !563}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !548, file: !549, line: 59, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !553, line: 60, size: 64, elements: !554)
!553 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !552, file: !553, line: 61, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, scope: !548, file: !549, line: 60, baseType: !558, size: 32, offset: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !548, file: !549, line: 60, size: 32, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !558, file: !549, line: 61, baseType: !18, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !558, file: !549, line: 62, baseType: !122, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !548, file: !549, line: 65, baseType: !166, size: 16, offset: 96)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !548, file: !549, line: 65, baseType: !166, size: 16, offset: 112)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !530, file: !531, line: 776, baseType: !18, size: 32, offset: 576)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !530, file: !531, line: 777, baseType: !112, size: 64, offset: 640)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !530, file: !531, line: 778, baseType: !529, size: 64, offset: 704)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !530, file: !531, line: 787, baseType: !95, size: 32, offset: 768)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !530, file: !531, line: 788, baseType: !95, size: 32, offset: 800)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !530, file: !531, line: 790, baseType: !95, size: 32, offset: 832)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !530, file: !531, line: 792, baseType: !95, size: 32, offset: 864)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !530, file: !531, line: 793, baseType: !95, size: 32, offset: 896)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !530, file: !531, line: 794, baseType: !95, size: 32, offset: 928)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !530, file: !531, line: 795, baseType: !18, size: 32, offset: 960)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !530, file: !531, line: 797, baseType: !575, size: 2048, offset: 1024)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !531, line: 551, size: 2048, elements: !576)
!576 = !{!577, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !597, !600, !601, !602}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !575, file: !531, line: 553, baseType: !578, size: 128)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !531, line: 411, size: 128, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !578, file: !531, line: 412, baseType: !112, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !578, file: !531, line: 413, baseType: !343, size: 32, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !575, file: !531, line: 554, baseType: !305, size: 192, align: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !575, file: !531, line: 555, baseType: !236, size: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !575, file: !531, line: 556, baseType: !236, size: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !575, file: !531, line: 558, baseType: !170, size: 128, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !575, file: !531, line: 559, baseType: !18, size: 32, offset: 576)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !575, file: !531, line: 561, baseType: !236, size: 64, offset: 640)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !575, file: !531, line: 562, baseType: !236, size: 64, offset: 704)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !575, file: !531, line: 563, baseType: !236, size: 64, offset: 768)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !575, file: !531, line: 564, baseType: !236, size: 64, offset: 832)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !575, file: !531, line: 565, baseType: !234, size: 64, offset: 896)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !575, file: !531, line: 566, baseType: !236, size: 64, offset: 960)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !575, file: !531, line: 568, baseType: !236, size: 64, offset: 1024)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !575, file: !531, line: 571, baseType: !95, size: 32, offset: 1088)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !575, file: !531, line: 572, baseType: !596, size: 64, offset: 1152)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !575, file: !531, line: 574, baseType: !598, size: 64, offset: 1216)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !531, line: 49, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !575, file: !531, line: 576, baseType: !598, size: 64, offset: 1280)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !575, file: !531, line: 578, baseType: !112, size: 64, offset: 1344)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !575, file: !531, line: 588, baseType: !603, size: 512, align: 512, offset: 1536)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !531, line: 497, size: 512, align: 512, elements: !604)
!604 = !{!605, !606, !607, !608, !609, !610, !611, !612, !613}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !603, file: !531, line: 498, baseType: !236, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !603, file: !531, line: 499, baseType: !236, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !603, file: !531, line: 500, baseType: !236, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !603, file: !531, line: 501, baseType: !343, size: 32, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !603, file: !531, line: 502, baseType: !343, size: 32, offset: 224)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !603, file: !531, line: 503, baseType: !112, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !603, file: !531, line: 504, baseType: !112, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !603, file: !531, line: 505, baseType: !112, size: 64, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !603, file: !531, line: 506, baseType: !614, size: 64, align: 64, offset: 448)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !531, line: 445, size: 64, align: 64, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !614, file: !531, line: 446, baseType: !18, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !614, file: !531, line: 447, baseType: !18, size: 32, offset: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !530, file: !531, line: 798, baseType: !619, size: 384, offset: 3072)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !531, line: 592, size: 384, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !619, file: !531, line: 593, baseType: !170, size: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !619, file: !531, line: 594, baseType: !112, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !619, file: !531, line: 595, baseType: !112, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !619, file: !531, line: 596, baseType: !18, size: 32, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !619, file: !531, line: 597, baseType: !99, size: 16, offset: 288)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !619, file: !531, line: 598, baseType: !99, size: 16, offset: 304)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !619, file: !531, line: 600, baseType: !628, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !530, file: !531, line: 799, baseType: !630, size: 1792, offset: 3456)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !531, line: 610, size: 1792, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !726, !727}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !630, file: !531, line: 611, baseType: !305, size: 192, align: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !630, file: !531, line: 618, baseType: !236, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !630, file: !531, line: 619, baseType: !236, size: 64, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !630, file: !531, line: 620, baseType: !236, size: 64, offset: 320)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !630, file: !531, line: 621, baseType: !236, size: 64, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !630, file: !531, line: 622, baseType: !236, size: 64, offset: 448)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !630, file: !531, line: 629, baseType: !234, size: 64, offset: 512)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !630, file: !531, line: 630, baseType: !236, size: 64, offset: 576)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !531, line: 631, baseType: !18, size: 32, offset: 640)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !630, file: !531, line: 653, baseType: !18, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !630, file: !531, line: 654, baseType: !18, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !630, file: !531, line: 655, baseType: !18, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !630, file: !531, line: 656, baseType: !18, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !630, file: !531, line: 662, baseType: !646, size: 512, offset: 704)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !17, line: 118, size: 512, elements: !647)
!647 = !{!648, !656, !657, !662, !722, !723, !724, !725}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !646, file: !17, line: 119, baseType: !649, size: 256)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !650, line: 9, size: 256, elements: !651)
!650 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!651 = !{!652, !653}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !649, file: !650, line: 10, baseType: !305, size: 192, align: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !649, file: !650, line: 11, baseType: !654, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !655, line: 29, baseType: !234)
!655 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !646, file: !17, line: 120, baseType: !654, size: 64, offset: 256)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !646, file: !17, line: 121, baseType: !658, size: 64, offset: 320)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!16, !661}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !646, file: !17, line: 122, baseType: !663, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !17, line: 159, size: 512, align: 512, elements: !665)
!665 = !{!666, !691, !692, !695, !705, !706, !717, !721}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !664, file: !17, line: 160, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !17, line: 215, size: 4608, align: 512, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !668, file: !17, line: 216, baseType: !324, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !668, file: !17, line: 217, baseType: !18, size: 32, offset: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !668, file: !17, line: 218, baseType: !18, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !668, file: !17, line: 219, baseType: !18, size: 32, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !668, file: !17, line: 220, baseType: !18, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !668, file: !17, line: 221, baseType: !18, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !668, file: !17, line: 222, baseType: !18, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !668, file: !17, line: 223, baseType: !18, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !668, file: !17, line: 224, baseType: !18, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !668, file: !17, line: 226, baseType: !18, size: 32, offset: 160)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !668, file: !17, line: 227, baseType: !99, size: 16, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !668, file: !17, line: 228, baseType: !99, size: 16, offset: 208)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !668, file: !17, line: 229, baseType: !18, size: 32, offset: 224)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !668, file: !17, line: 235, baseType: !654, size: 64, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !668, file: !17, line: 236, baseType: !661, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !668, file: !17, line: 237, baseType: !654, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !668, file: !17, line: 238, baseType: !661, size: 64, offset: 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !668, file: !17, line: 239, baseType: !688, size: 4096, align: 512, offset: 512)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 4096, align: 512, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 8)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !664, file: !17, line: 161, baseType: !18, size: 32, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !664, file: !17, line: 162, baseType: !693, size: 32, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !98, line: 32, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !110, line: 96, baseType: !95)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !664, file: !17, line: 163, baseType: !696, size: 32, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !697, line: 274, baseType: !698)
!697 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !697, line: 274, size: 32, elements: !699)
!699 = !{!700}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !698, file: !697, line: 274, baseType: !701, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !697, line: 69, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !697, line: 64, size: 32, elements: !703)
!703 = !{!704}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !702, file: !697, line: 65, baseType: !18, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !664, file: !17, line: 164, baseType: !661, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !664, file: !17, line: 165, baseType: !707, size: 128, offset: 256)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !650, line: 14, size: 128, elements: !708)
!708 = !{!709}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !707, file: !650, line: 15, baseType: !710, size: 128)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !306, line: 26, size: 128, elements: !711)
!711 = !{!712, !716}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !710, file: !306, line: 27, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !306, line: 12, size: 64, elements: !714)
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !713, file: !306, line: 13, baseType: !310, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !710, file: !306, line: 28, baseType: !310, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !664, file: !17, line: 166, baseType: !718, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!654}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !664, file: !17, line: 167, baseType: !654, size: 64, offset: 448)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !646, file: !17, line: 123, baseType: !156, size: 8, offset: 448)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !646, file: !17, line: 124, baseType: !156, size: 8, offset: 456)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !646, file: !17, line: 125, baseType: !156, size: 8, offset: 464)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !646, file: !17, line: 126, baseType: !156, size: 8, offset: 472)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !630, file: !531, line: 671, baseType: !646, size: 512, offset: 1216)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !630, file: !531, line: 679, baseType: !728, size: 64, offset: 1728)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !530, file: !531, line: 800, baseType: !730, size: 64, offset: 5248)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !531, line: 800, flags: DIFlagFwdDecl)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !530, file: !531, line: 809, baseType: !734, size: 64, offset: 5312)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !531, line: 70, flags: DIFlagFwdDecl)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !530, file: !531, line: 825, baseType: !737, size: 2048, align: 512, offset: 5632)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !531, line: 509, size: 2048, align: 512, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !737, file: !531, line: 511, baseType: !236, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !737, file: !531, line: 512, baseType: !236, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !737, file: !531, line: 513, baseType: !236, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !737, file: !531, line: 514, baseType: !236, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !737, file: !531, line: 515, baseType: !236, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !737, file: !531, line: 516, baseType: !236, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !737, file: !531, line: 518, baseType: !236, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !737, file: !531, line: 519, baseType: !236, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !737, file: !531, line: 520, baseType: !234, size: 64, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !737, file: !531, line: 522, baseType: !236, size: 64, offset: 576)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !737, file: !531, line: 523, baseType: !236, size: 64, offset: 640)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !737, file: !531, line: 524, baseType: !234, size: 64, offset: 704)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !737, file: !531, line: 526, baseType: !234, size: 64, offset: 768)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !737, file: !531, line: 527, baseType: !236, size: 64, offset: 832)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !737, file: !531, line: 529, baseType: !236, size: 64, offset: 896)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !737, file: !531, line: 530, baseType: !236, size: 64, offset: 960)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !737, file: !531, line: 531, baseType: !236, size: 64, offset: 1024)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !737, file: !531, line: 532, baseType: !236, size: 64, offset: 1088)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !737, file: !531, line: 533, baseType: !236, size: 64, offset: 1152)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !737, file: !531, line: 535, baseType: !236, size: 64, offset: 1216)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !737, file: !531, line: 536, baseType: !236, size: 64, offset: 1280)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !737, file: !531, line: 537, baseType: !236, size: 64, offset: 1344)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !737, file: !531, line: 538, baseType: !236, size: 64, offset: 1408)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !737, file: !531, line: 539, baseType: !236, size: 64, offset: 1472)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !737, file: !531, line: 540, baseType: !236, size: 64, offset: 1536)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !737, file: !531, line: 541, baseType: !236, size: 64, offset: 1600)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !737, file: !531, line: 542, baseType: !236, size: 64, offset: 1664)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !737, file: !531, line: 543, baseType: !236, size: 64, offset: 1728)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !530, file: !531, line: 833, baseType: !18, size: 32, offset: 7680)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !530, file: !531, line: 836, baseType: !18, size: 32, offset: 7712)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !530, file: !531, line: 837, baseType: !95, size: 32, offset: 7744)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !530, file: !531, line: 838, baseType: !771, size: 64, offset: 7808)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !774, line: 19, baseType: !775)
!774 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !774, line: 19, size: 64, elements: !776)
!776 = !{!777}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !775, file: !774, line: 19, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !779)
!779 = !{!780}
!780 = !DISubrange(count: 1)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !530, file: !531, line: 839, baseType: !782, size: 64, offset: 7872)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !530, file: !531, line: 840, baseType: !773, size: 64, offset: 7936)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !530, file: !531, line: 841, baseType: !93, size: 64, offset: 8000)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !530, file: !531, line: 843, baseType: !99, size: 16, offset: 8064)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !530, file: !531, line: 845, baseType: !99, size: 16, offset: 8080)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !530, file: !531, line: 848, baseType: !95, size: 32, offset: 8096)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !530, file: !531, line: 849, baseType: !789, size: 32, offset: 8128)
!789 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !531, line: 718, size: 32, elements: !790)
!790 = !{!791, !798}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !789, file: !531, line: 724, baseType: !792, size: 32)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !789, file: !531, line: 719, size: 32, elements: !793)
!793 = !{!794, !795, !796, !797}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !792, file: !531, line: 720, baseType: !156, size: 8)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !792, file: !531, line: 721, baseType: !156, size: 8, offset: 8)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !792, file: !531, line: 722, baseType: !156, size: 8, offset: 16)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !792, file: !531, line: 723, baseType: !156, size: 8, offset: 24)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !789, file: !531, line: 725, baseType: !343, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !530, file: !531, line: 850, baseType: !170, size: 128, offset: 8192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !530, file: !531, line: 851, baseType: !801, size: 64, offset: 8320)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !531, line: 60, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !530, file: !531, line: 855, baseType: !112, size: 64, offset: 8384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !530, file: !531, line: 856, baseType: !156, size: 8, offset: 8448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !530, file: !531, line: 857, baseType: !156, size: 8, offset: 8456)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !530, file: !531, line: 858, baseType: !95, size: 32, offset: 8480)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !530, file: !531, line: 859, baseType: !170, size: 128, offset: 8512)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !530, file: !531, line: 860, baseType: !95, size: 32, offset: 8640)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !530, file: !531, line: 861, baseType: !170, size: 128, offset: 8704)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !530, file: !531, line: 873, baseType: !811, size: 256, offset: 8832)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !531, line: 376, size: 256, elements: !812)
!812 = !{!813, !814, !815, !816}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !811, file: !531, line: 381, baseType: !112, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !811, file: !531, line: 384, baseType: !238, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !811, file: !531, line: 389, baseType: !238, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !811, file: !531, line: 392, baseType: !238, size: 64, offset: 192)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !530, file: !531, line: 875, baseType: !170, size: 128, offset: 9088)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !530, file: !531, line: 877, baseType: !819, size: 320, offset: 9216)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !820, line: 86, size: 320, elements: !821)
!820 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!821 = !{!822, !823, !824}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !819, file: !820, line: 87, baseType: !95, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !819, file: !820, line: 88, baseType: !170, size: 128, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !819, file: !820, line: 89, baseType: !170, size: 128, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !530, file: !531, line: 878, baseType: !305, size: 192, align: 64, offset: 9536)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !530, file: !531, line: 881, baseType: !827, size: 64, offset: 9728)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !50, line: 733, size: 10240, elements: !829)
!829 = !{!830, !2628}
!830 = !DIDerivedType(tag: DW_TAG_member, scope: !828, file: !50, line: 734, baseType: !831, size: 10240)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !828, file: !50, line: 734, size: 10240, elements: !832)
!832 = !{!833, !837, !851, !2526, !2527, !2528, !2529, !2530, !2531, !2538, !2539, !2540, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2579, !2581, !2584, !2608, !2609, !2610, !2613, !2614, !2615, !2618, !2619, !2620, !2626, !2627}
!833 = !DIDerivedType(tag: DW_TAG_member, scope: !831, file: !50, line: 739, baseType: !834, size: 512, align: 512)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !831, file: !50, line: 739, size: 512, align: 512, elements: !835)
!835 = !{!836}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !834, file: !50, line: 747, baseType: !122, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !831, file: !50, line: 750, baseType: !838, size: 128, offset: 512)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !839, line: 218, size: 128, elements: !840)
!839 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!840 = !{!841, !849, !850}
!841 = !DIDerivedType(tag: DW_TAG_member, scope: !838, file: !839, line: 219, baseType: !842, size: 32)
!842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !838, file: !839, line: 219, size: 32, elements: !843)
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !842, file: !839, line: 220, baseType: !132, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !842, file: !839, line: 221, baseType: !846)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !839, line: 197, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !839, line: 197, elements: !848)
!848 = !{}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !838, file: !839, line: 223, baseType: !18, size: 32, offset: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !838, file: !839, line: 224, baseType: !93, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !831, file: !50, line: 752, baseType: !852, size: 64, offset: 640)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!112, !855, !112, !112, !112, !112}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 994, size: 1856, align: 64, elements: !857)
!857 = !{!858, !864, !865, !867, !868, !876, !877, !878, !933, !934, !943, !2516, !2517, !2518, !2519, !2520, !2521, !2523, !2524, !2525}
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !31, line: 995, baseType: !859, size: 128)
!859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !31, line: 995, size: 128, elements: !860)
!860 = !{!861, !862, !863}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !859, file: !31, line: 996, baseType: !552, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !859, file: !31, line: 997, baseType: !377, size: 128, align: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !859, file: !31, line: 998, baseType: !18, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !856, file: !31, line: 1005, baseType: !132, size: 32, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !856, file: !31, line: 1006, baseType: !866, size: 32, offset: 160)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !98, line: 156, baseType: !18)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !856, file: !31, line: 1007, baseType: !246, size: 64, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !856, file: !31, line: 1008, baseType: !869, size: 256, offset: 256)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !870, line: 66, size: 256, elements: !871)
!870 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!871 = !{!872, !873, !874, !875}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !869, file: !870, line: 67, baseType: !246, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !869, file: !870, line: 68, baseType: !324, size: 32, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !869, file: !870, line: 70, baseType: !319, size: 32, offset: 96)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !869, file: !870, line: 72, baseType: !170, size: 128, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !856, file: !31, line: 1009, baseType: !114, size: 64, offset: 512)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !856, file: !31, line: 1010, baseType: !18, size: 32, offset: 576)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !856, file: !31, line: 1011, baseType: !879, size: 256, offset: 640)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 948, size: 256, elements: !880)
!880 = !{!881, !904, !929, !930, !931, !932}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !879, file: !31, line: 949, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !883, line: 34, baseType: !884)
!883 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !883, line: 25, size: 64, elements: !885)
!885 = !{!886}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !884, file: !883, line: 26, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !888, line: 27, baseType: !889)
!888 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !888, line: 13, size: 64, elements: !890)
!890 = !{!891, !903}
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !888, line: 14, baseType: !892, size: 32)
!892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !889, file: !888, line: 14, size: 32, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !892, file: !888, line: 15, baseType: !122, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !888, line: 16, baseType: !896, size: 32)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !888, line: 16, size: 32, elements: !897)
!897 = !{!898, !899}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !896, file: !888, line: 18, baseType: !156, size: 8)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !896, file: !888, line: 19, baseType: !900, size: 24, offset: 8)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 24, elements: !901)
!901 = !{!902}
!902 = !DISubrange(count: 3)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !889, file: !888, line: 26, baseType: !144, size: 32, offset: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !879, file: !31, line: 950, baseType: !905, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !23, line: 59, size: 768, elements: !907)
!907 = !{!908, !909, !910, !911, !916, !917, !918, !919}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !906, file: !23, line: 61, baseType: !291, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !906, file: !23, line: 62, baseType: !18, size: 32, offset: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !906, file: !23, line: 63, baseType: !132, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !906, file: !23, line: 65, baseType: !912, size: 256, offset: 128)
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !913, size: 256, elements: !408)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !98, line: 194, size: 64, elements: !914)
!914 = !{!915}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !913, file: !98, line: 195, baseType: !462, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !906, file: !23, line: 66, baseType: !913, size: 64, offset: 384)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !906, file: !23, line: 68, baseType: !127, size: 192, offset: 448)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !906, file: !23, line: 69, baseType: !377, size: 128, align: 64, offset: 640)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !906, file: !23, line: 70, baseType: !920, offset: 768)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !921, elements: !927)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !23, line: 54, size: 128, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !921, file: !23, line: 55, baseType: !95, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !921, file: !23, line: 56, baseType: !925, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !23, line: 56, flags: DIFlagFwdDecl)
!927 = !{!928}
!928 = !DISubrange(count: -1)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !879, file: !31, line: 951, baseType: !22, size: 32, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !879, file: !31, line: 952, baseType: !253, size: 32, offset: 160)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !879, file: !31, line: 952, baseType: !253, size: 32, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !879, file: !31, line: 953, baseType: !95, size: 32, offset: 224)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !856, file: !31, line: 1012, baseType: !240, size: 64, offset: 896)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !856, file: !31, line: 1013, baseType: !935, size: 256, offset: 960)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 970, size: 256, elements: !936)
!936 = !{!937, !938, !939, !940, !941, !942}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !935, file: !31, line: 971, baseType: !112, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !935, file: !31, line: 972, baseType: !18, size: 32, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !935, file: !31, line: 973, baseType: !18, size: 32, offset: 96)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !935, file: !31, line: 974, baseType: !18, size: 32, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !935, file: !31, line: 975, baseType: !18, size: 32, offset: 160)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !935, file: !31, line: 976, baseType: !114, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !856, file: !31, line: 1014, baseType: !944, size: 128, offset: 1216)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !945, line: 8, size: 128, elements: !946)
!945 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!946 = !{!947, !2515}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !944, file: !945, line: 9, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !950, line: 70, size: 256, elements: !951)
!950 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!951 = !{!952, !2512, !2513, !2514}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !949, file: !950, line: 71, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !955, line: 82, size: 1536, elements: !956)
!955 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!956 = !{!957, !958, !963, !971, !972, !987, !2479, !2481, !2494, !2495, !2496, !2497, !2498, !2504, !2505, !2506}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !954, file: !955, line: 84, baseType: !18, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !954, file: !955, line: 85, baseType: !959, size: 32, offset: 32)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !697, line: 275, baseType: !960)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !697, line: 275, size: 32, elements: !961)
!961 = !{!962}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !960, file: !697, line: 275, baseType: !701, size: 32)
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
!981 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !979, file: !955, line: 52, baseType: !343, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !979, file: !955, line: 52, baseType: !343, size: 32, offset: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !976, file: !955, line: 54, baseType: !236, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !973, file: !955, line: 56, baseType: !985, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !954, file: !955, line: 89, baseType: !988, size: 64, offset: 384)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 641, size: 4800, elements: !990)
!990 = !{!991, !992, !993, !994, !995, !996, !997, !1000, !1001, !1195, !1790, !2290, !2291, !2292, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2461, !2464, !2465, !2466, !2475, !2476, !2477, !2478}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !989, file: !31, line: 642, baseType: !97, size: 16)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !989, file: !31, line: 643, baseType: !99, size: 16, offset: 16)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !989, file: !31, line: 644, baseType: !253, size: 32, offset: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !989, file: !31, line: 645, baseType: !170, size: 128, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !989, file: !31, line: 646, baseType: !261, size: 32, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !989, file: !31, line: 647, baseType: !18, size: 32, offset: 224)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !989, file: !31, line: 650, baseType: !998, size: 64, offset: 256)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 607, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !989, file: !31, line: 651, baseType: !998, size: 64, offset: 320)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !989, file: !31, line: 654, baseType: !1002, size: 64, offset: 384)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1004)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1966, size: 2048, align: 512, elements: !1005)
!1005 = !{!1006, !1010, !1023, !1029, !1033, !1037, !1041, !1045, !1049, !1053, !1057, !1058, !1064, !1068, !1106, !1137, !1144, !1150, !1154, !1158, !1162, !1166, !1170, !1176, !1180}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1004, file: !31, line: 1967, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!953, !988, !953, !18}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1004, file: !31, line: 1968, baseType: !1011, size: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!90, !953, !988, !1014}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1016, line: 10, size: 128, elements: !1017)
!1016 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1017 = !{!1018, !1022}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1015, file: !1016, line: 11, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null, !93}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1015, file: !1016, line: 12, baseType: !93, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1004, file: !31, line: 1969, baseType: !1024, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!95, !1027, !988, !95}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !276, line: 42, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1004, file: !31, line: 1970, baseType: !1030, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!998, !988, !95, !387}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1004, file: !31, line: 1972, baseType: !1034, size: 64, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!95, !953, !398, !95}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1004, file: !31, line: 1974, baseType: !1038, size: 64, offset: 320)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!95, !1027, !988, !953, !97, !387}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1004, file: !31, line: 1976, baseType: !1042, size: 64, offset: 384)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!95, !953, !988, !953}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1004, file: !31, line: 1977, baseType: !1046, size: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!95, !988, !953}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1004, file: !31, line: 1978, baseType: !1050, size: 64, offset: 512)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!95, !1027, !988, !953, !90}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1004, file: !31, line: 1980, baseType: !1054, size: 64, offset: 576)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!95, !1027, !988, !953, !97}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1004, file: !31, line: 1982, baseType: !1046, size: 64, offset: 640)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1004, file: !31, line: 1983, baseType: !1059, size: 64, offset: 704)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!95, !1027, !988, !953, !97, !1062}
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !98, line: 21, baseType: !1063)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !98, line: 18, baseType: !343)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1004, file: !31, line: 1985, baseType: !1065, size: 64, offset: 768)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!95, !1027, !988, !953, !988, !953, !18}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1004, file: !31, line: 1987, baseType: !1069, size: 64, offset: 832)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!95, !1027, !953, !1072}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 226, size: 640, elements: !1074)
!1074 = !{!1075, !1076, !1077, !1087, !1096, !1097, !1103, !1104, !1105}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1073, file: !31, line: 227, baseType: !18, size: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1073, file: !31, line: 228, baseType: !97, size: 16, offset: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !31, line: 241, baseType: !1078, size: 32, offset: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !31, line: 241, size: 32, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1078, file: !31, line: 242, baseType: !253, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1078, file: !31, line: 243, baseType: !1082, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1083, line: 16, baseType: !1084)
!1083 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1083, line: 14, size: 32, elements: !1085)
!1085 = !{!1086}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1084, file: !1083, line: 15, baseType: !258, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !31, line: 245, baseType: !1088, size: 32, offset: 96)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !31, line: 245, size: 32, elements: !1089)
!1089 = !{!1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1088, file: !31, line: 246, baseType: !261, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1088, file: !31, line: 247, baseType: !1092, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1083, line: 20, baseType: !1093)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1083, line: 18, size: 32, elements: !1094)
!1094 = !{!1095}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1093, file: !1083, line: 19, baseType: !265, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1073, file: !31, line: 249, baseType: !114, size: 64, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1073, file: !31, line: 250, baseType: !1098, size: 128, offset: 192)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !335, line: 13, size: 128, elements: !1099)
!1099 = !{!1100, !1101}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1098, file: !335, line: 14, baseType: !334, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1098, file: !335, line: 15, baseType: !1102, size: 64, offset: 64)
!1102 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1073, file: !31, line: 251, baseType: !1098, size: 128, offset: 320)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1073, file: !31, line: 252, baseType: !1098, size: 128, offset: 448)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1073, file: !31, line: 259, baseType: !855, size: 64, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1004, file: !31, line: 1988, baseType: !1107, size: 64, offset: 896)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!95, !1027, !1110, !1112, !343, !18}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !944)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1114, line: 22, size: 1280, elements: !1115)
!1114 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1115 = !{!1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1113, file: !1114, line: 23, baseType: !343, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1113, file: !1114, line: 24, baseType: !97, size: 16, offset: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1113, file: !1114, line: 25, baseType: !18, size: 32, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1113, file: !1114, line: 26, baseType: !342, size: 32, offset: 96)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1113, file: !1114, line: 27, baseType: !236, size: 64, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1113, file: !1114, line: 28, baseType: !236, size: 64, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1113, file: !1114, line: 41, baseType: !236, size: 64, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1113, file: !1114, line: 42, baseType: !1062, size: 32, offset: 320)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1113, file: !1114, line: 43, baseType: !1062, size: 32, offset: 352)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1113, file: !1114, line: 44, baseType: !253, size: 32, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1113, file: !1114, line: 45, baseType: !261, size: 32, offset: 416)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1113, file: !1114, line: 46, baseType: !114, size: 64, offset: 448)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1113, file: !1114, line: 47, baseType: !1098, size: 128, offset: 512)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1113, file: !1114, line: 48, baseType: !1098, size: 128, offset: 640)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1113, file: !1114, line: 49, baseType: !1098, size: 128, offset: 768)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1113, file: !1114, line: 50, baseType: !1098, size: 128, offset: 896)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1113, file: !1114, line: 51, baseType: !236, size: 64, offset: 1024)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1113, file: !1114, line: 52, baseType: !236, size: 64, offset: 1088)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1113, file: !1114, line: 53, baseType: !343, size: 32, offset: 1152)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1113, file: !1114, line: 54, baseType: !343, size: 32, offset: 1184)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1113, file: !1114, line: 55, baseType: !236, size: 64, offset: 1216)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1004, file: !31, line: 1990, baseType: !1138, size: 64, offset: 960)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!1141, !953, !398, !108}
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !98, line: 66, baseType: !1142)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !110, line: 73, baseType: !1143)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !110, line: 15, baseType: !1102)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1004, file: !31, line: 1991, baseType: !1145, size: 64, offset: 1024)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!95, !988, !1148, !236, !236}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 55, flags: DIFlagFwdDecl)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1004, file: !31, line: 1993, baseType: !1151, size: 64, offset: 1088)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!95, !988, !95}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1004, file: !31, line: 1994, baseType: !1155, size: 64, offset: 1152)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!95, !988, !953, !855, !18, !97}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1004, file: !31, line: 1997, baseType: !1159, size: 64, offset: 1216)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!95, !1027, !988, !855, !97}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1004, file: !31, line: 1999, baseType: !1163, size: 64, offset: 1280)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!998, !1027, !953, !95}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1004, file: !31, line: 2001, baseType: !1167, size: 64, offset: 1344)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!95, !1027, !953, !998, !95}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1004, file: !31, line: 2003, baseType: !1171, size: 64, offset: 1408)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!95, !1027, !953, !1174}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !31, line: 76, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1004, file: !31, line: 2005, baseType: !1177, size: 64, offset: 1472)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!95, !953, !1174}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1004, file: !31, line: 2006, baseType: !1181, size: 64, offset: 1536)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!1184, !988}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !31, line: 3192, size: 192, elements: !1186)
!1186 = !{!1187, !1194}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1185, file: !31, line: 3193, baseType: !1188, size: 128)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1189, line: 296, size: 128, elements: !1190)
!1189 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1190 = !{!1191, !1192, !1193}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1188, file: !1189, line: 297, baseType: !132, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1188, file: !1189, line: 299, baseType: !239, size: 32, offset: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1188, file: !1189, line: 300, baseType: !93, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1185, file: !31, line: 3194, baseType: !343, size: 32, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !989, file: !31, line: 655, baseType: !1196, size: 64, offset: 448)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1190, size: 10752, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !1246, !1419, !1459, !1542, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1559, !1563, !1564, !1567, !1570, !1573, !1576, !1577, !1578, !1619, !1646, !1647, !1648, !1649, !1650, !1651, !1654, !1658, !1667, !1668, !1669, !1670, !1729, !1744, !1745, !1746, !1747, !1750, !1754, !1755, !1756, !1771, !1772, !1773, !1784, !1785, !1786, !1787, !1788, !1789}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1197, file: !31, line: 1191, baseType: !170, size: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1197, file: !31, line: 1192, baseType: !1062, size: 32, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1197, file: !31, line: 1193, baseType: !160, size: 8, offset: 160)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1197, file: !31, line: 1194, baseType: !112, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1197, file: !31, line: 1195, baseType: !114, size: 64, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1197, file: !31, line: 1196, baseType: !1205, size: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2366, size: 576, elements: !1207)
!1207 = !{!1208, !1209, !1210, !1217, !1221, !1225, !1229, !1233, !1234, !1235, !1238, !1239, !1240, !1242, !1243, !1244, !1245}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1206, file: !31, line: 2367, baseType: !90, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1206, file: !31, line: 2368, baseType: !95, size: 32, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1206, file: !31, line: 2376, baseType: !1211, size: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!95, !1214}
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1216, line: 32, flags: DIFlagFwdDecl)
!1216 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1206, file: !31, line: 2377, baseType: !1218, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1220)
!1220 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 75, flags: DIFlagFwdDecl)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1206, file: !31, line: 2378, baseType: !1222, size: 64, offset: 256)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!953, !1205, !95, !90, !93}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1206, file: !31, line: 2380, baseType: !1226, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !1196}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1206, file: !31, line: 2381, baseType: !1230, size: 64, offset: 384)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1232, line: 103, flags: DIFlagFwdDecl)
!1232 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1206, file: !31, line: 2382, baseType: !1205, size: 64, offset: 448)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1206, file: !31, line: 2383, baseType: !913, size: 64, offset: 512)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1206, file: !31, line: 2385, baseType: !1236, offset: 576)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1237, line: 206, elements: !848)
!1237 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1206, file: !31, line: 2386, baseType: !1236, offset: 576)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1206, file: !31, line: 2387, baseType: !1236, offset: 576)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1206, file: !31, line: 2388, baseType: !1241, offset: 576)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1236, elements: !901)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1206, file: !31, line: 2390, baseType: !1236, offset: 576)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1206, file: !31, line: 2391, baseType: !1236, offset: 576)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1206, file: !31, line: 2392, baseType: !1236, offset: 576)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1206, file: !31, line: 2393, baseType: !1236, offset: 576)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1197, file: !31, line: 1197, baseType: !1247, size: 64, offset: 384)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1249)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 2057, size: 1664, elements: !1250)
!1250 = !{!1251, !1255, !1259, !1260, !1264, !1270, !1274, !1275, !1276, !1280, !1284, !1288, !1289, !1290, !1296, !1301, !1302, !1344, !1345, !1346, !1347, !1351, !1355, !1402, !1417, !1418}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1249, file: !31, line: 2058, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!988, !1196}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1249, file: !31, line: 2059, baseType: !1256, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !988}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1249, file: !31, line: 2060, baseType: !1256, size: 64, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1249, file: !31, line: 2062, baseType: !1261, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{null, !988, !95}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1249, file: !31, line: 2063, baseType: !1265, size: 64, offset: 256)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!95, !988, !1268}
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 309, flags: DIFlagFwdDecl)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1249, file: !31, line: 2064, baseType: !1271, size: 64, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!95, !988}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1249, file: !31, line: 2065, baseType: !1256, size: 64, offset: 384)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1249, file: !31, line: 2066, baseType: !1226, size: 64, offset: 448)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1249, file: !31, line: 2067, baseType: !1277, size: 64, offset: 512)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!95, !1196, !95}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1249, file: !31, line: 2068, baseType: !1281, size: 64, offset: 576)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!95, !1196, !30}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1249, file: !31, line: 2069, baseType: !1285, size: 64, offset: 640)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!95, !1196}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1249, file: !31, line: 2070, baseType: !1281, size: 64, offset: 704)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1249, file: !31, line: 2071, baseType: !1285, size: 64, offset: 768)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1249, file: !31, line: 2072, baseType: !1291, size: 64, offset: 832)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!95, !953, !1294}
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 62, flags: DIFlagFwdDecl)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1249, file: !31, line: 2073, baseType: !1297, size: 64, offset: 896)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!95, !1196, !1300, !398}
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1249, file: !31, line: 2074, baseType: !1226, size: 64, offset: 960)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1249, file: !31, line: 2076, baseType: !1303, size: 64, offset: 1024)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!95, !1306, !953}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1308, line: 17, size: 960, elements: !1309)
!1308 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1309 = !{!1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1339, !1340, !1343}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1307, file: !1308, line: 18, baseType: !398, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1307, file: !1308, line: 19, baseType: !108, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1307, file: !1308, line: 20, baseType: !108, size: 64, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1307, file: !1308, line: 21, baseType: !108, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1307, file: !1308, line: 22, baseType: !108, size: 64, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1307, file: !1308, line: 23, baseType: !114, size: 64, offset: 320)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1307, file: !1308, line: 24, baseType: !114, size: 64, offset: 384)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1307, file: !1308, line: 25, baseType: !869, size: 256, offset: 448)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1307, file: !1308, line: 26, baseType: !1319, size: 64, offset: 704)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1321)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1308, line: 32, size: 256, elements: !1322)
!1322 = !{!1323, !1327, !1331, !1335}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1321, file: !1308, line: 33, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!93, !1306, !113}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1321, file: !1308, line: 34, baseType: !1328, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{null, !1306, !93}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1321, file: !1308, line: 35, baseType: !1332, size: 64, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!93, !1306, !93, !113}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1321, file: !1308, line: 36, baseType: !1336, size: 64, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!95, !1306, !93}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1307, file: !1308, line: 27, baseType: !95, size: 32, offset: 768)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1307, file: !1308, line: 28, baseType: !1341, size: 64, offset: 832)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !856)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1307, file: !1308, line: 29, baseType: !93, size: 64, offset: 896)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1249, file: !31, line: 2077, baseType: !1303, size: 64, offset: 1088)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1249, file: !31, line: 2078, baseType: !1303, size: 64, offset: 1152)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1249, file: !31, line: 2079, baseType: !1303, size: 64, offset: 1216)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1249, file: !31, line: 2081, baseType: !1348, size: 64, offset: 1280)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!1141, !1196, !95, !398, !108, !114}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1249, file: !31, line: 2082, baseType: !1352, size: 64, offset: 1344)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!1141, !1196, !95, !90, !108, !114}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1249, file: !31, line: 2083, baseType: !1356, size: 64, offset: 1408)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!1359, !988}
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !36, line: 296, size: 1664, elements: !1362)
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1387, !1388, !1389}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1361, file: !36, line: 297, baseType: !459, size: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1361, file: !36, line: 298, baseType: !170, size: 128, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1361, file: !36, line: 299, baseType: !170, size: 128, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1361, file: !36, line: 300, baseType: !170, size: 128, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1361, file: !36, line: 301, baseType: !869, size: 256, offset: 512)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1361, file: !36, line: 302, baseType: !132, size: 32, offset: 768)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1361, file: !36, line: 303, baseType: !122, size: 32, offset: 800)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1361, file: !36, line: 304, baseType: !1196, size: 64, offset: 832)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1361, file: !36, line: 305, baseType: !1372, size: 64, offset: 896)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !36, line: 68, size: 64, elements: !1373)
!1373 = !{!1374, !1386}
!1374 = !DIDerivedType(tag: DW_TAG_member, scope: !1372, file: !36, line: 69, baseType: !1375, size: 32)
!1375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1372, file: !36, line: 69, size: 32, elements: !1376)
!1376 = !{!1377, !1378, !1379}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1375, file: !36, line: 70, baseType: !253, size: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1375, file: !36, line: 71, baseType: !261, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1375, file: !36, line: 72, baseType: !1380, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1381, line: 24, baseType: !1382)
!1381 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1381, line: 22, size: 32, elements: !1383)
!1383 = !{!1384}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1382, file: !1381, line: 23, baseType: !1385, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1381, line: 20, baseType: !259)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1372, file: !36, line: 74, baseType: !35, size: 32, offset: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1361, file: !36, line: 306, baseType: !114, size: 64, offset: 960)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1361, file: !36, line: 307, baseType: !112, size: 64, offset: 1024)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1361, file: !36, line: 308, baseType: !1390, size: 576, offset: 1088)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !36, line: 205, size: 576, elements: !1391)
!1391 = !{!1392, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1390, file: !36, line: 206, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !36, line: 66, baseType: !116)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1390, file: !36, line: 207, baseType: !1393, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1390, file: !36, line: 208, baseType: !1393, size: 64, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1390, file: !36, line: 209, baseType: !1393, size: 64, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1390, file: !36, line: 210, baseType: !1393, size: 64, offset: 256)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1390, file: !36, line: 211, baseType: !1393, size: 64, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1390, file: !36, line: 212, baseType: !1393, size: 64, offset: 384)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1390, file: !36, line: 213, baseType: !334, size: 64, offset: 448)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1390, file: !36, line: 214, baseType: !334, size: 64, offset: 512)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1249, file: !31, line: 2085, baseType: !1403, size: 64, offset: 1472)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!1102, !1196, !1406}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1408, line: 15, size: 256, elements: !1409)
!1408 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1409 = !{!1410, !1411, !1412, !1413, !1414}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1407, file: !1408, line: 16, baseType: !239, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1407, file: !1408, line: 19, baseType: !95, size: 32, offset: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1407, file: !1408, line: 26, baseType: !112, size: 64, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1407, file: !1408, line: 33, baseType: !112, size: 64, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1407, file: !1408, line: 36, baseType: !1415, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !50, line: 33, flags: DIFlagFwdDecl)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1249, file: !31, line: 2087, baseType: !1403, size: 64, offset: 1536)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1249, file: !31, line: 2089, baseType: !1226, size: 64, offset: 1600)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1197, file: !31, line: 1198, baseType: !1420, size: 64, offset: 448)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1422)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !36, line: 324, size: 704, elements: !1423)
!1423 = !{!1424, !1428, !1432, !1436, !1437, !1438, !1439, !1440, !1445, !1450, !1454}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1422, file: !36, line: 325, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!95, !1360}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1422, file: !36, line: 326, baseType: !1429, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!1360, !1196, !95}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1422, file: !36, line: 327, baseType: !1433, size: 64, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{null, !1360}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1422, file: !36, line: 328, baseType: !1425, size: 64, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1422, file: !36, line: 329, baseType: !1425, size: 64, offset: 256)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1422, file: !36, line: 330, baseType: !1425, size: 64, offset: 320)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1422, file: !36, line: 331, baseType: !1277, size: 64, offset: 384)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1422, file: !36, line: 334, baseType: !1441, size: 64, offset: 448)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!1444, !988}
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1422, file: !36, line: 335, baseType: !1446, size: 64, offset: 512)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!95, !988, !1449}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1422, file: !36, line: 337, baseType: !1451, size: 64, offset: 576)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!95, !988, !1444}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1422, file: !36, line: 339, baseType: !1455, size: 64, offset: 640)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!95, !1196, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1197, file: !31, line: 1199, baseType: !1460, size: 64, offset: 512)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1462)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !36, line: 430, size: 704, elements: !1463)
!1463 = !{!1464, !1468, !1469, !1473, !1474, !1475, !1490, !1513, !1517, !1518, !1541}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1462, file: !36, line: 431, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!95, !1196, !95, !95, !1110}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1462, file: !36, line: 432, baseType: !1277, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1462, file: !36, line: 433, baseType: !1470, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!95, !1196, !18}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1462, file: !36, line: 434, baseType: !1470, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1462, file: !36, line: 435, baseType: !1277, size: 64, offset: 256)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1462, file: !36, line: 436, baseType: !1476, size: 64, offset: 320)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!95, !1196, !95, !1479}
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !36, line: 417, size: 256, elements: !1481)
!1481 = !{!1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1480, file: !36, line: 418, baseType: !95, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1480, file: !36, line: 419, baseType: !18, size: 32, offset: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1480, file: !36, line: 420, baseType: !18, size: 32, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1480, file: !36, line: 422, baseType: !18, size: 32, offset: 96)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1480, file: !36, line: 423, baseType: !18, size: 32, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1480, file: !36, line: 424, baseType: !18, size: 32, offset: 160)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1480, file: !36, line: 425, baseType: !18, size: 32, offset: 192)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1480, file: !36, line: 426, baseType: !18, size: 32, offset: 224)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1462, file: !36, line: 437, baseType: !1491, size: 64, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!95, !1196, !1372, !1494}
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !36, line: 345, size: 960, elements: !1496)
!1496 = !{!1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1495, file: !36, line: 346, baseType: !95, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1495, file: !36, line: 347, baseType: !236, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1495, file: !36, line: 348, baseType: !236, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1495, file: !36, line: 349, baseType: !236, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1495, file: !36, line: 350, baseType: !236, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1495, file: !36, line: 351, baseType: !236, size: 64, offset: 320)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1495, file: !36, line: 352, baseType: !236, size: 64, offset: 384)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1495, file: !36, line: 353, baseType: !234, size: 64, offset: 448)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1495, file: !36, line: 355, baseType: !234, size: 64, offset: 512)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1495, file: !36, line: 356, baseType: !95, size: 32, offset: 576)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1495, file: !36, line: 357, baseType: !95, size: 32, offset: 608)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1495, file: !36, line: 358, baseType: !236, size: 64, offset: 640)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1495, file: !36, line: 359, baseType: !236, size: 64, offset: 704)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1495, file: !36, line: 360, baseType: !236, size: 64, offset: 768)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1495, file: !36, line: 361, baseType: !234, size: 64, offset: 832)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1495, file: !36, line: 362, baseType: !95, size: 32, offset: 896)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1462, file: !36, line: 438, baseType: !1514, size: 64, offset: 448)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!95, !1196, !1458, !1494}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1462, file: !36, line: 440, baseType: !1491, size: 64, offset: 512)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1462, file: !36, line: 441, baseType: !1519, size: 64, offset: 576)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!95, !1196, !1522}
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !36, line: 411, size: 1408, elements: !1524)
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1523, file: !36, line: 412, baseType: !18, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1523, file: !36, line: 413, baseType: !1527, size: 1344, offset: 64)
!1527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1528, size: 1344, elements: !901)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !36, line: 397, size: 448, elements: !1529)
!1529 = !{!1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1540}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1528, file: !36, line: 398, baseType: !18, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1528, file: !36, line: 399, baseType: !18, size: 32, offset: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1528, file: !36, line: 401, baseType: !18, size: 32, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1528, file: !36, line: 402, baseType: !18, size: 32, offset: 96)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1528, file: !36, line: 403, baseType: !18, size: 32, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1528, file: !36, line: 404, baseType: !18, size: 32, offset: 160)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1528, file: !36, line: 405, baseType: !18, size: 32, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1528, file: !36, line: 406, baseType: !238, size: 64, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1528, file: !36, line: 407, baseType: !1539, size: 64, offset: 320)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !98, line: 132, baseType: !236)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1528, file: !36, line: 408, baseType: !1539, size: 64, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1462, file: !36, line: 442, baseType: !1470, size: 64, offset: 640)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1197, file: !31, line: 1200, baseType: !1543, size: 64, offset: 576)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1545)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 54, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1197, file: !31, line: 1201, baseType: !112, size: 64, offset: 640)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1197, file: !31, line: 1202, baseType: !112, size: 64, offset: 704)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1197, file: !31, line: 1203, baseType: !112, size: 64, offset: 768)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1197, file: !31, line: 1204, baseType: !953, size: 64, offset: 832)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1197, file: !31, line: 1205, baseType: !313, size: 320, offset: 896)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1197, file: !31, line: 1206, baseType: !95, size: 32, offset: 1216)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1197, file: !31, line: 1207, baseType: !122, size: 32, offset: 1248)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1197, file: !31, line: 1209, baseType: !93, size: 64, offset: 1280)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1197, file: !31, line: 1211, baseType: !1555, size: 64, offset: 1344)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1558)
!1558 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1211, flags: DIFlagFwdDecl)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1197, file: !31, line: 1223, baseType: !1560, size: 64, offset: 1408)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !965, line: 34, size: 64, elements: !1561)
!1561 = !{!1562}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1560, file: !965, line: 35, baseType: !968, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1197, file: !31, line: 1224, baseType: !170, size: 128, offset: 1472)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1197, file: !31, line: 1225, baseType: !1565, size: 64, offset: 1600)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 1225, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1197, file: !31, line: 1226, baseType: !1568, size: 64, offset: 1664)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !31, line: 1226, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1197, file: !31, line: 1227, baseType: !1571, size: 64, offset: 1728)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1197, file: !31, line: 1228, baseType: !1574, size: 64, offset: 1792)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1228, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1197, file: !31, line: 1229, baseType: !459, size: 128, offset: 1856)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1197, file: !31, line: 1230, baseType: !18, size: 32, offset: 1984)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1197, file: !31, line: 1231, baseType: !1579, size: 2496, offset: 2048)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !36, line: 521, size: 2496, elements: !1580)
!1580 = !{!1581, !1582, !1583, !1585, !1617}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1579, file: !36, line: 522, baseType: !18, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1579, file: !36, line: 523, baseType: !313, size: 320, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1579, file: !36, line: 524, baseType: !1584, size: 192, offset: 384)
!1584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !988, size: 192, elements: !901)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1579, file: !36, line: 525, baseType: !1586, size: 1728, offset: 576)
!1586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1587, size: 1728, elements: !901)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !36, line: 222, size: 576, elements: !1588)
!1588 = !{!1589, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1587, file: !36, line: 223, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !36, line: 445, size: 256, elements: !1592)
!1592 = !{!1593, !1594, !1607, !1608}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1591, file: !36, line: 446, baseType: !95, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1591, file: !36, line: 447, baseType: !1595, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1597)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !36, line: 312, size: 512, elements: !1598)
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1597, file: !36, line: 313, baseType: !1277, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1597, file: !36, line: 314, baseType: !1277, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1597, file: !36, line: 315, baseType: !1277, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1597, file: !36, line: 316, baseType: !1277, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1597, file: !36, line: 317, baseType: !1425, size: 64, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1597, file: !36, line: 318, baseType: !1425, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1597, file: !36, line: 319, baseType: !1425, size: 64, offset: 384)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1597, file: !36, line: 320, baseType: !1455, size: 64, offset: 448)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1591, file: !36, line: 448, baseType: !1230, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1591, file: !36, line: 449, baseType: !1590, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1587, file: !36, line: 224, baseType: !95, size: 32, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1587, file: !36, line: 226, baseType: !170, size: 128, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1587, file: !36, line: 227, baseType: !112, size: 64, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1587, file: !36, line: 228, baseType: !18, size: 32, offset: 320)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1587, file: !36, line: 229, baseType: !18, size: 32, offset: 352)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1587, file: !36, line: 230, baseType: !1393, size: 64, offset: 384)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1587, file: !36, line: 231, baseType: !1393, size: 64, offset: 448)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1587, file: !36, line: 232, baseType: !93, size: 64, offset: 512)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1579, file: !36, line: 526, baseType: !1618, size: 192, offset: 2304)
!1618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1595, size: 192, elements: !901)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1197, file: !31, line: 1233, baseType: !1620, size: 2368, offset: 4544)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1184, size: 2368, elements: !1621)
!1621 = !{!1622, !1623, !1624}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1620, file: !31, line: 1185, baseType: !99, size: 16)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1620, file: !31, line: 1186, baseType: !99, size: 16, offset: 16)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1620, file: !31, line: 1187, baseType: !1625, size: 2304, offset: 64)
!1625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1626, size: 2304, elements: !901)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1627, line: 12, size: 768, elements: !1628)
!1627 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1628 = !{!1629, !1637, !1639, !1644, !1645}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1626, file: !1627, line: 13, baseType: !1630, size: 384)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1631, line: 17, size: 384, elements: !1632)
!1631 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1632 = !{!1633, !1634, !1635, !1636}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1630, file: !1631, line: 18, baseType: !95, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1630, file: !1631, line: 19, baseType: !95, size: 32, offset: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1630, file: !1631, line: 20, baseType: !127, size: 192, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1630, file: !1631, line: 22, baseType: !377, size: 128, align: 64, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1626, file: !1627, line: 14, baseType: !1638, size: 64, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1626, file: !1627, line: 15, baseType: !1640, size: 64, offset: 448)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1641, line: 16, size: 64, elements: !1642)
!1641 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1642 = !{!1643}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1640, file: !1641, line: 17, baseType: !529, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1626, file: !1627, line: 16, baseType: !127, size: 192, offset: 512)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1626, file: !1627, line: 17, baseType: !122, size: 32, offset: 704)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1197, file: !31, line: 1240, baseType: !93, size: 64, offset: 6912)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1197, file: !31, line: 1243, baseType: !343, size: 32, offset: 6976)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1197, file: !31, line: 1245, baseType: !334, size: 64, offset: 7040)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1197, file: !31, line: 1246, baseType: !334, size: 64, offset: 7104)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1197, file: !31, line: 1248, baseType: !344, size: 32, offset: 7168)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1197, file: !31, line: 1249, baseType: !1652, size: 64, offset: 7232)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 634, flags: DIFlagFwdDecl)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1197, file: !31, line: 1252, baseType: !1655, size: 256, offset: 7296)
!1655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1656)
!1656 = !{!1657}
!1657 = !DISubrange(count: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1197, file: !31, line: 1253, baseType: !1659, size: 128, offset: 7552)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1660, line: 21, baseType: !1661)
!1660 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1660, line: 19, size: 128, elements: !1662)
!1662 = !{!1663}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1661, file: !1660, line: 20, baseType: !1664, size: 128)
!1664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 128, elements: !1665)
!1665 = !{!1666}
!1666 = !DISubrange(count: 16)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1197, file: !31, line: 1255, baseType: !18, size: 32, offset: 7680)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1197, file: !31, line: 1261, baseType: !869, size: 256, offset: 7744)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1197, file: !31, line: 1267, baseType: !90, size: 64, offset: 8000)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1197, file: !31, line: 1269, baseType: !1671, size: 64, offset: 8064)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1673)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !955, line: 128, size: 1024, align: 512, elements: !1674)
!1674 = !{!1675, !1679, !1680, !1687, !1693, !1697, !1701, !1705, !1706, !1710, !1714, !1719, !1723}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1673, file: !955, line: 129, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!95, !953, !18}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1673, file: !955, line: 130, baseType: !1676, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1673, file: !955, line: 131, baseType: !1681, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!95, !1684, !1686}
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !954)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1673, file: !955, line: 132, baseType: !1688, size: 64, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!95, !1684, !18, !90, !1691}
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !973)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1673, file: !955, line: 134, baseType: !1694, size: 64, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!95, !1684}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1673, file: !955, line: 135, baseType: !1698, size: 64, offset: 320)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!95, !953}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1673, file: !955, line: 136, baseType: !1702, size: 64, offset: 384)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{null, !953}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1673, file: !955, line: 137, baseType: !1702, size: 64, offset: 448)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1673, file: !955, line: 138, baseType: !1707, size: 64, offset: 512)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{null, !953, !988}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1673, file: !955, line: 139, baseType: !1711, size: 64, offset: 576)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!398, !953, !398, !95}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1673, file: !955, line: 140, baseType: !1715, size: 64, offset: 640)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!948, !1718}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1673, file: !955, line: 141, baseType: !1720, size: 64, offset: 704)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!95, !1110, !387}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1673, file: !955, line: 142, baseType: !1724, size: 64, offset: 768)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!953, !953, !1727}
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !989)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1197, file: !31, line: 1271, baseType: !1730, size: 448, offset: 8128)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1408, line: 63, size: 448, elements: !1731)
!1731 = !{!1732, !1737, !1738, !1739, !1740, !1741, !1742}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1730, file: !1408, line: 64, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!112, !1736, !1406}
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1730, file: !1408, line: 66, baseType: !1733, size: 64, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1730, file: !1408, line: 69, baseType: !1102, size: 64, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1730, file: !1408, line: 70, baseType: !95, size: 32, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1730, file: !1408, line: 71, baseType: !18, size: 32, offset: 224)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1730, file: !1408, line: 74, baseType: !170, size: 128, offset: 256)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1730, file: !1408, line: 85, baseType: !1743, size: 64, offset: 384)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1197, file: !31, line: 1274, baseType: !246, size: 64, offset: 8576)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1197, file: !31, line: 1280, baseType: !246, size: 64, offset: 8640)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1197, file: !31, line: 1283, baseType: !95, size: 32, offset: 8704)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1197, file: !31, line: 1286, baseType: !1748, size: 32, offset: 8736)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1749, line: 8, baseType: !343)
!1749 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1197, file: !31, line: 1289, baseType: !1751, size: 64, offset: 8768)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1753, line: 18, flags: DIFlagFwdDecl)
!1753 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1197, file: !31, line: 1290, baseType: !913, size: 64, offset: 8832)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1197, file: !31, line: 1297, baseType: !479, size: 64, offset: 8896)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1197, file: !31, line: 1304, baseType: !1757, size: 64, offset: 8960)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1758, line: 49, size: 64, elements: !1759)
!1758 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!1759 = !{!1760}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1757, file: !1758, line: 50, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1758, line: 41, size: 512, align: 512, elements: !1763)
!1763 = !{!1764, !1765, !1770}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1762, file: !1758, line: 43, baseType: !132, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1762, file: !1758, line: 45, baseType: !1766, size: 192, offset: 64)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1758, line: 29, size: 192, elements: !1767)
!1767 = !{!1768, !1769}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1766, file: !1758, line: 30, baseType: !170, size: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1766, file: !1758, line: 32, baseType: !1102, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1762, file: !1758, line: 46, baseType: !1102, size: 64, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1197, file: !31, line: 1305, baseType: !1757, size: 64, offset: 9024)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1197, file: !31, line: 1306, baseType: !377, size: 128, align: 64, offset: 9088)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1197, file: !31, line: 1307, baseType: !1774, size: 256, offset: 9216)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1753, line: 98, size: 256, elements: !1775)
!1775 = !{!1776, !1777, !1778}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1774, file: !1753, line: 99, baseType: !246, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1774, file: !1753, line: 100, baseType: !170, size: 128, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1774, file: !1753, line: 101, baseType: !1779, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1753, line: 21, baseType: !1780)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{null, !1783}
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1197, file: !31, line: 1309, baseType: !869, size: 256, offset: 9472)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1197, file: !31, line: 1314, baseType: !95, size: 32, offset: 9728)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1197, file: !31, line: 1317, baseType: !132, size: 32, align: 512, offset: 10240)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1197, file: !31, line: 1318, baseType: !170, size: 128, offset: 10304)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1197, file: !31, line: 1320, baseType: !132, size: 32, offset: 10432)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1197, file: !31, line: 1321, baseType: !170, size: 128, offset: 10496)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !989, file: !31, line: 656, baseType: !1791, size: 64, offset: 512)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 472, size: 1536, align: 64, elements: !1793)
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !2284, !2285, !2286, !2287, !2288, !2289}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1792, file: !31, line: 473, baseType: !988, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1792, file: !31, line: 474, baseType: !1188, size: 128, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1792, file: !31, line: 475, baseType: !313, size: 320, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1792, file: !31, line: 476, baseType: !239, size: 32, offset: 512)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1792, file: !31, line: 477, baseType: !122, size: 32, offset: 544)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1792, file: !31, line: 482, baseType: !710, size: 128, offset: 576)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1792, file: !31, line: 483, baseType: !112, size: 64, offset: 704)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1792, file: !31, line: 484, baseType: !112, size: 64, offset: 768)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1792, file: !31, line: 485, baseType: !1803, size: 64, offset: 832)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 404, size: 1280, elements: !1806)
!1806 = !{!1807, !2108, !2178, !2182, !2186, !2192, !2198, !2202, !2207, !2211, !2215, !2219, !2248, !2252, !2256, !2260, !2265, !2269, !2276, !2280}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1805, file: !31, line: 405, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!95, !1811, !1268}
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !50, line: 74, size: 512, align: 128, elements: !1813)
!1813 = !{!1814, !1815, !2102, !2107}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1812, file: !50, line: 75, baseType: !112, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, scope: !1812, file: !50, line: 83, baseType: !1816, size: 320, offset: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1812, file: !50, line: 83, size: 320, elements: !1817)
!1817 = !{!1818, !1839, !1853, !1857, !2101}
!1818 = !DIDerivedType(tag: DW_TAG_member, scope: !1816, file: !50, line: 84, baseType: !1819, size: 320)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1816, file: !50, line: 84, size: 320, elements: !1820)
!1820 = !{!1821, !1832, !1833, !1838}
!1821 = !DIDerivedType(tag: DW_TAG_member, scope: !1819, file: !50, line: 90, baseType: !1822, size: 128)
!1822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1819, file: !50, line: 90, size: 128, elements: !1823)
!1823 = !{!1824, !1825, !1830, !1831}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1822, file: !50, line: 91, baseType: !170, size: 128)
!1825 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !50, line: 94, baseType: !1826, size: 128)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1822, file: !50, line: 94, size: 128, elements: !1827)
!1827 = !{!1828, !1829}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1826, file: !50, line: 96, baseType: !93, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1826, file: !50, line: 98, baseType: !18, size: 32, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1822, file: !50, line: 102, baseType: !170, size: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1822, file: !50, line: 103, baseType: !170, size: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1819, file: !50, line: 106, baseType: !1791, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, scope: !1819, file: !50, line: 107, baseType: !1834, size: 64, offset: 192)
!1834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1819, file: !50, line: 107, size: 64, elements: !1835)
!1835 = !{!1836, !1837}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1834, file: !50, line: 108, baseType: !112, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1834, file: !50, line: 109, baseType: !112, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1819, file: !50, line: 117, baseType: !112, size: 64, offset: 256)
!1839 = !DIDerivedType(tag: DW_TAG_member, scope: !1816, file: !50, line: 119, baseType: !1840, size: 320)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1816, file: !50, line: 119, size: 320, elements: !1841)
!1841 = !{!1842, !1843, !1846, !1847, !1848}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1840, file: !50, line: 124, baseType: !112, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1840, file: !50, line: 125, baseType: !1844, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !50, line: 125, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1840, file: !50, line: 126, baseType: !112, size: 64, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1840, file: !50, line: 127, baseType: !112, size: 64, offset: 192)
!1848 = !DIDerivedType(tag: DW_TAG_member, scope: !1840, file: !50, line: 128, baseType: !1849, size: 64, offset: 256)
!1849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1840, file: !50, line: 128, size: 64, elements: !1850)
!1850 = !{!1851, !1852}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1849, file: !50, line: 133, baseType: !112, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1849, file: !50, line: 138, baseType: !246, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, scope: !1816, file: !50, line: 141, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1816, file: !50, line: 141, size: 64, elements: !1855)
!1855 = !{!1856}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1854, file: !50, line: 142, baseType: !112, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, scope: !1816, file: !50, line: 144, baseType: !1858, size: 128)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1816, file: !50, line: 144, size: 128, elements: !1859)
!1859 = !{!1860, !2100}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1858, file: !50, line: 146, baseType: !1861, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !42, line: 126, size: 1216, elements: !1863)
!1863 = !{!1864, !1874, !1895, !1906, !1907, !1908, !1909, !2082, !2083, !2084}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1862, file: !42, line: 127, baseType: !1865, size: 384)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !42, line: 21, size: 384, elements: !1866)
!1866 = !{!1867, !1868, !1870, !1871, !1872, !1873}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1865, file: !42, line: 22, baseType: !112, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1865, file: !42, line: 23, baseType: !1869, size: 64, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1865, file: !42, line: 24, baseType: !1869, size: 64, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1865, file: !42, line: 25, baseType: !112, size: 64, offset: 192)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1865, file: !42, line: 26, baseType: !112, size: 64, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1865, file: !42, line: 27, baseType: !112, size: 64, offset: 320)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1862, file: !42, line: 128, baseType: !1875, size: 128, offset: 384)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1876, line: 105, size: 128, elements: !1877)
!1876 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1877 = !{!1878, !1879}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1875, file: !1876, line: 110, baseType: !112, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1875, file: !1876, line: 118, baseType: !1880, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1876, line: 95, size: 448, elements: !1882)
!1882 = !{!1883, !1884, !1890, !1891, !1892, !1893, !1894}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1881, file: !1876, line: 96, baseType: !246, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1881, file: !1876, line: 97, baseType: !1885, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1876, line: 60, baseType: !1887)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{null, !1889}
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1881, file: !1876, line: 98, baseType: !1885, size: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1881, file: !1876, line: 99, baseType: !387, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1881, file: !1876, line: 100, baseType: !387, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1881, file: !1876, line: 101, baseType: !377, size: 128, align: 64, offset: 256)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1881, file: !1876, line: 102, baseType: !1889, size: 64, offset: 384)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1862, file: !42, line: 129, baseType: !1896, size: 256, offset: 512)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1897, line: 26, size: 256, elements: !1898)
!1897 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1898 = !{!1899, !1900}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1896, file: !1897, line: 27, baseType: !18, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1896, file: !1897, line: 28, baseType: !1901, size: 192, offset: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1902, line: 43, size: 192, elements: !1903)
!1902 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1903 = !{!1904, !1905}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1901, file: !1902, line: 44, baseType: !324, size: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1901, file: !1902, line: 45, baseType: !170, size: 128, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1862, file: !42, line: 130, baseType: !41, size: 32, offset: 768)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1862, file: !42, line: 131, baseType: !18, size: 32, offset: 800)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1862, file: !42, line: 132, baseType: !112, size: 64, offset: 832)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1862, file: !42, line: 133, baseType: !1910, size: 64, offset: 896)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1912)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !42, line: 77, size: 192, elements: !1913)
!1913 = !{!1914, !1918, !2078}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1912, file: !42, line: 83, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{null, !1811}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1912, file: !42, line: 89, baseType: !1919, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!1922, !1923}
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !50, line: 1184, baseType: !18)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1925, line: 512, size: 896, elements: !1926)
!1925 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1926 = !{!1927, !2045, !2046, !2053, !2060, !2070, !2071, !2072, !2074, !2076}
!1927 = !DIDerivedType(tag: DW_TAG_member, scope: !1924, file: !1925, line: 513, baseType: !1928, size: 320)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1924, file: !1925, line: 513, size: 320, elements: !1929)
!1929 = !{!1930, !2041, !2042, !2043, !2044}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1928, file: !1925, line: 514, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !50, line: 625, size: 1344, elements: !1933)
!1933 = !{!1934, !1943, !1944, !1952, !1959, !1960, !1965, !1966, !1971, !1972, !1975, !2034, !2035, !2036, !2037, !2038, !2039}
!1934 = !DIDerivedType(tag: DW_TAG_member, scope: !1932, file: !50, line: 628, baseType: !1935, size: 128)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1932, file: !50, line: 628, size: 128, elements: !1936)
!1936 = !{!1937, !1942}
!1937 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !50, line: 629, baseType: !1938, size: 128)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !50, line: 629, size: 128, elements: !1939)
!1939 = !{!1940, !1941}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1938, file: !50, line: 631, baseType: !112, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1938, file: !50, line: 632, baseType: !112, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1935, file: !50, line: 635, baseType: !377, size: 128, align: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1932, file: !50, line: 639, baseType: !827, size: 64, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1932, file: !50, line: 640, baseType: !1945, size: 64, offset: 192)
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1946, line: 297, baseType: !1947)
!1946 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1946, line: 297, size: 64, elements: !1948)
!1948 = !{!1949}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1947, file: !1946, line: 297, baseType: !1950, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1951, line: 19, baseType: !112)
!1951 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1952 = !DIDerivedType(tag: DW_TAG_member, scope: !1932, file: !50, line: 646, baseType: !1953, size: 64, offset: 256)
!1953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1932, file: !50, line: 646, size: 64, elements: !1954)
!1954 = !{!1955, !1958}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1953, file: !50, line: 647, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1957)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !50, line: 542, baseType: !112)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1953, file: !50, line: 648, baseType: !1957, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1932, file: !50, line: 666, baseType: !95, size: 32, offset: 320)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1932, file: !50, line: 667, baseType: !1961, size: 64, offset: 384)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !50, line: 579, size: 320, elements: !1963)
!1963 = !{!1964}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1962, file: !50, line: 580, baseType: !313, size: 320)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1932, file: !50, line: 670, baseType: !387, size: 8, offset: 448)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1932, file: !50, line: 681, baseType: !1967, size: 256, offset: 512)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1932, file: !50, line: 678, size: 256, elements: !1968)
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1967, file: !50, line: 679, baseType: !305, size: 192, align: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1967, file: !50, line: 680, baseType: !112, size: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1932, file: !50, line: 689, baseType: !170, size: 128, offset: 768)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1932, file: !50, line: 691, baseType: !1973, size: 64, offset: 896)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !50, line: 691, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1932, file: !50, line: 694, baseType: !1976, size: 64, offset: 960)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1978)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1925, line: 563, size: 1024, elements: !1979)
!1979 = !{!1980, !1984, !1985, !1989, !1993, !1997, !1998, !2002, !2006, !2010, !2011, !2012, !2016, !2020, !2026, !2030}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1978, file: !1925, line: 564, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !1931}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1978, file: !1925, line: 569, baseType: !1981, size: 64, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1978, file: !1925, line: 571, baseType: !1986, size: 64, offset: 128)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!95, !1931, !112}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1978, file: !1925, line: 572, baseType: !1990, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!95, !1931}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1978, file: !1925, line: 578, baseType: !1994, size: 64, offset: 256)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!95, !1931, !112, !112, !112}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1978, file: !1925, line: 580, baseType: !1919, size: 64, offset: 320)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1978, file: !1925, line: 581, baseType: !1999, size: 64, offset: 384)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!1922, !1923, !18}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1978, file: !1925, line: 582, baseType: !2003, size: 64, offset: 448)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!1922, !1923, !112, !112}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1978, file: !1925, line: 584, baseType: !2007, size: 64, offset: 512)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!112, !1931}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1978, file: !1925, line: 588, baseType: !1919, size: 64, offset: 576)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1978, file: !1925, line: 591, baseType: !1919, size: 64, offset: 640)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1978, file: !1925, line: 597, baseType: !2013, size: 64, offset: 704)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!95, !1931, !112, !93, !95, !95}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1978, file: !1925, line: 603, baseType: !2017, size: 64, offset: 768)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!90, !1931}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1978, file: !1925, line: 613, baseType: !2021, size: 64, offset: 832)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!95, !1931, !2024}
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !531, line: 54, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1978, file: !1925, line: 625, baseType: !2027, size: 64, offset: 896)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!2024, !1931, !112}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1978, file: !1925, line: 633, baseType: !2031, size: 64, offset: 960)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!1811, !1931, !112}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1932, file: !50, line: 697, baseType: !112, size: 64, offset: 1024)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1932, file: !50, line: 699, baseType: !855, size: 64, offset: 1088)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1932, file: !50, line: 700, baseType: !93, size: 64, offset: 1152)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1932, file: !50, line: 711, baseType: !246, size: 64, offset: 1216)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1932, file: !50, line: 717, baseType: !2024, size: 64, offset: 1280)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1932, file: !50, line: 722, baseType: !2040, offset: 1344)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !50, line: 570, elements: !848)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1928, file: !1925, line: 515, baseType: !239, size: 32, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1928, file: !1925, line: 516, baseType: !112, size: 64, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1928, file: !1925, line: 517, baseType: !112, size: 64, offset: 192)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1928, file: !1925, line: 518, baseType: !112, size: 64, offset: 256)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1924, file: !1925, line: 520, baseType: !49, size: 32, offset: 320)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1924, file: !1925, line: 522, baseType: !2047, size: 64, offset: 384)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1951, line: 22, baseType: !2049)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1951, line: 22, size: 64, elements: !2050)
!2050 = !{!2051}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2049, file: !1951, line: 22, baseType: !2052, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1951, line: 15, baseType: !112)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1924, file: !1925, line: 524, baseType: !2054, size: 64, offset: 448)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1946, line: 372, baseType: !2056)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1946, line: 372, size: 64, elements: !2057)
!2057 = !{!2058}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2056, file: !1946, line: 372, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1951, line: 16, baseType: !112)
!2060 = !DIDerivedType(tag: DW_TAG_member, scope: !1924, file: !1925, line: 527, baseType: !2061, size: 64, offset: 512)
!2061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1924, file: !1925, line: 527, size: 64, elements: !2062)
!2062 = !{!2063, !2069}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2061, file: !1925, line: 528, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1951, line: 21, baseType: !2065)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1951, line: 21, size: 64, elements: !2066)
!2066 = !{!2067}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2065, file: !1951, line: 21, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1951, line: 14, baseType: !112)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2061, file: !1925, line: 529, baseType: !2048, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1924, file: !1925, line: 534, baseType: !1811, size: 64, offset: 576)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1924, file: !1925, line: 535, baseType: !1811, size: 64, offset: 640)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1924, file: !1925, line: 541, baseType: !2073, size: 64, offset: 704)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1924, file: !1925, line: 545, baseType: !2075, size: 64, offset: 768)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1924, file: !1925, line: 549, baseType: !2077, size: 64, offset: 832)
!2077 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1946, line: 520, baseType: !1811)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1912, file: !42, line: 100, baseType: !2079, size: 64, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!95, !1861, !112, !112, !95}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1862, file: !42, line: 134, baseType: !93, size: 64, offset: 960)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1862, file: !42, line: 135, baseType: !95, size: 32, offset: 1024)
!2084 = !DIDerivedType(tag: DW_TAG_member, scope: !1862, file: !42, line: 136, baseType: !2085, size: 128, offset: 1088)
!2085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1862, file: !42, line: 136, size: 128, elements: !2086)
!2086 = !{!2087, !2093}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2085, file: !42, line: 137, baseType: !2088, size: 128)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2089, line: 6, size: 128, elements: !2090)
!2089 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2090 = !{!2091, !2092}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2088, file: !2089, line: 7, baseType: !236, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2088, file: !2089, line: 8, baseType: !236, size: 64, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, scope: !2085, file: !42, line: 138, baseType: !2094)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2085, file: !42, line: 138, elements: !2095)
!2095 = !{!2096, !2098}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2094, file: !42, line: 138, baseType: !2097)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2094, file: !42, line: 138, elements: !848)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2094, file: !42, line: 138, baseType: !2099)
!2099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2088, elements: !927)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1858, file: !50, line: 147, baseType: !93, size: 64, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1816, file: !50, line: 161, baseType: !377, size: 128, align: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, scope: !1812, file: !50, line: 164, baseType: !2103, size: 32, offset: 384)
!2103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1812, file: !50, line: 164, size: 32, elements: !2104)
!2104 = !{!2105, !2106}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2103, file: !50, line: 169, baseType: !122, size: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2103, file: !50, line: 177, baseType: !18, size: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1812, file: !50, line: 181, baseType: !122, size: 32, offset: 416)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1805, file: !31, line: 406, baseType: !2109, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!95, !855, !2112}
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !50, line: 293, size: 1536, elements: !2114)
!2114 = !{!2115, !2145, !2159}
!2115 = !DIDerivedType(tag: DW_TAG_member, scope: !2113, file: !50, line: 295, baseType: !2116, size: 512)
!2116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2113, file: !50, line: 295, size: 512, elements: !2117)
!2117 = !{!2118, !2144}
!2118 = !DIDerivedType(tag: DW_TAG_member, scope: !2116, file: !50, line: 296, baseType: !2119, size: 448)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2116, file: !50, line: 296, size: 448, elements: !2120)
!2120 = !{!2121, !2122, !2131, !2132, !2133, !2142, !2143}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2119, file: !50, line: 298, baseType: !112, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, scope: !2119, file: !50, line: 299, baseType: !2123, size: 128, offset: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2119, file: !50, line: 299, size: 128, elements: !2124)
!2124 = !{!2125, !2126}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2123, file: !50, line: 300, baseType: !170, size: 128)
!2126 = !DIDerivedType(tag: DW_TAG_member, scope: !2123, file: !50, line: 302, baseType: !2127, size: 128)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2123, file: !50, line: 302, size: 128, elements: !2128)
!2128 = !{!2129, !2130}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2127, file: !50, line: 303, baseType: !93, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2127, file: !50, line: 305, baseType: !18, size: 32, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2119, file: !50, line: 310, baseType: !1791, size: 64, offset: 192)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2119, file: !50, line: 311, baseType: !112, size: 64, offset: 256)
!2133 = !DIDerivedType(tag: DW_TAG_member, scope: !2119, file: !50, line: 312, baseType: !2134, size: 64, offset: 320)
!2134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2119, file: !50, line: 312, size: 64, elements: !2135)
!2135 = !{!2136, !2137}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2134, file: !50, line: 313, baseType: !93, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2134, file: !50, line: 314, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !50, line: 257, baseType: !2139)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 255, size: 64, elements: !2140)
!2140 = !{!2141}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2139, file: !50, line: 256, baseType: !112, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2119, file: !50, line: 316, baseType: !122, size: 32, offset: 384)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2119, file: !50, line: 317, baseType: !122, size: 32, offset: 416)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2116, file: !50, line: 323, baseType: !1812, size: 512, align: 128)
!2145 = !DIDerivedType(tag: DW_TAG_member, scope: !2113, file: !50, line: 325, baseType: !2146, size: 512, offset: 512)
!2146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2113, file: !50, line: 325, size: 512, elements: !2147)
!2147 = !{!2148, !2158}
!2148 = !DIDerivedType(tag: DW_TAG_member, scope: !2146, file: !50, line: 326, baseType: !2149, size: 320)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2146, file: !50, line: 326, size: 320, elements: !2150)
!2150 = !{!2151, !2152, !2153, !2154, !2155, !2156, !2157}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2149, file: !50, line: 327, baseType: !112, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2149, file: !50, line: 328, baseType: !112, size: 64, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2149, file: !50, line: 329, baseType: !112, size: 64, offset: 128)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2149, file: !50, line: 331, baseType: !122, size: 32, offset: 192)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2149, file: !50, line: 332, baseType: !122, size: 32, offset: 224)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2149, file: !50, line: 333, baseType: !122, size: 32, offset: 256)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2149, file: !50, line: 335, baseType: !18, size: 32, offset: 288)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2146, file: !50, line: 339, baseType: !1812, size: 512, align: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, scope: !2113, file: !50, line: 341, baseType: !2160, size: 512, offset: 1024)
!2160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2113, file: !50, line: 341, size: 512, elements: !2161)
!2161 = !{!2162, !2171, !2177}
!2162 = !DIDerivedType(tag: DW_TAG_member, scope: !2160, file: !50, line: 342, baseType: !2163, size: 384)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2160, file: !50, line: 342, size: 384, elements: !2164)
!2164 = !{!2165, !2166, !2167, !2168, !2169, !2170}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2163, file: !50, line: 343, baseType: !112, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2163, file: !50, line: 344, baseType: !112, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2163, file: !50, line: 346, baseType: !93, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2163, file: !50, line: 347, baseType: !93, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2163, file: !50, line: 348, baseType: !93, size: 64, offset: 256)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2163, file: !50, line: 349, baseType: !93, size: 64, offset: 320)
!2171 = !DIDerivedType(tag: DW_TAG_member, scope: !2160, file: !50, line: 352, baseType: !2172, size: 256)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2160, file: !50, line: 352, size: 256, elements: !2173)
!2173 = !{!2174, !2175, !2176}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2172, file: !50, line: 353, baseType: !112, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2172, file: !50, line: 354, baseType: !112, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2172, file: !50, line: 356, baseType: !170, size: 128, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2160, file: !50, line: 359, baseType: !1812, size: 512, align: 128)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1805, file: !31, line: 409, baseType: !2179, size: 64, offset: 128)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!95, !1791, !1268}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1805, file: !31, line: 412, baseType: !2183, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!387, !1791, !2112}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1805, file: !31, line: 414, baseType: !2187, size: 64, offset: 256)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{null, !2190}
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 310, flags: DIFlagFwdDecl)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1805, file: !31, line: 416, baseType: !2193, size: 64, offset: 320)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!95, !855, !1791, !114, !18, !2196, !2197}
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1805, file: !31, line: 419, baseType: !2199, size: 64, offset: 384)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!95, !855, !1791, !114, !18, !18, !1811, !93}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1805, file: !31, line: 424, baseType: !2203, size: 64, offset: 448)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!2206, !1791, !2206}
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !98, line: 131, baseType: !236)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1805, file: !31, line: 425, baseType: !2208, size: 64, offset: 512)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{null, !2112, !108, !108}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1805, file: !31, line: 426, baseType: !2212, size: 64, offset: 576)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!387, !2112, !239}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1805, file: !31, line: 427, baseType: !2216, size: 64, offset: 640)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{null, !2112}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1805, file: !31, line: 428, baseType: !2220, size: 64, offset: 704)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!1141, !2223, !2245}
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 373, size: 384, elements: !2225)
!2225 = !{!2226, !2227, !2228, !2232, !2233, !2234, !2235}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2224, file: !31, line: 374, baseType: !855, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2224, file: !31, line: 375, baseType: !114, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2224, file: !31, line: 376, baseType: !2229, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{null, !2223, !1102}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2224, file: !31, line: 377, baseType: !93, size: 64, offset: 192)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2224, file: !31, line: 378, baseType: !95, size: 32, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2224, file: !31, line: 379, baseType: !166, size: 16, offset: 288)
!2235 = !DIDerivedType(tag: DW_TAG_member, scope: !2224, file: !31, line: 380, baseType: !2236, size: 64, offset: 320)
!2236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2224, file: !31, line: 380, size: 64, elements: !2237)
!2237 = !{!2238, !2241}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2236, file: !31, line: 386, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 386, flags: DIFlagFwdDecl)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2236, file: !31, line: 395, baseType: !2242, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!1141, !93}
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2247, line: 17, flags: DIFlagFwdDecl)
!2247 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1805, file: !31, line: 433, baseType: !2249, size: 64, offset: 768)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!95, !1791, !2112, !2112, !65}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1805, file: !31, line: 435, baseType: !2253, size: 64, offset: 832)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!95, !2112}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1805, file: !31, line: 436, baseType: !2257, size: 64, offset: 896)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!387, !2112, !108, !108}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1805, file: !31, line: 438, baseType: !2261, size: 64, offset: 960)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{null, !2112, !2264, !2264}
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1805, file: !31, line: 439, baseType: !2266, size: 64, offset: 1024)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!95, !1791, !1811}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1805, file: !31, line: 442, baseType: !2270, size: 64, offset: 1088)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!95, !2273, !855, !2275}
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 66, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1805, file: !31, line: 444, baseType: !2277, size: 64, offset: 1152)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{null, !855}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1805, file: !31, line: 445, baseType: !2281, size: 64, offset: 1216)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!95, !2223, !2245}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1792, file: !31, line: 486, baseType: !112, size: 64, offset: 896)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1792, file: !31, line: 487, baseType: !313, size: 320, offset: 960)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1792, file: !31, line: 488, baseType: !1748, size: 32, offset: 1280)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1792, file: !31, line: 489, baseType: !132, size: 32, offset: 1312)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1792, file: !31, line: 490, baseType: !170, size: 128, offset: 1344)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1792, file: !31, line: 491, baseType: !93, size: 64, offset: 1472)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !989, file: !31, line: 659, baseType: !93, size: 64, offset: 576)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !989, file: !31, line: 663, baseType: !112, size: 64, offset: 640)
!2292 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !31, line: 671, baseType: !2293, size: 32, offset: 704)
!2293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !989, file: !31, line: 671, size: 32, elements: !2294)
!2294 = !{!2295, !2297}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2293, file: !31, line: 672, baseType: !2296, size: 32)
!2296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2293, file: !31, line: 673, baseType: !18, size: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !989, file: !31, line: 675, baseType: !1062, size: 32, offset: 736)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !989, file: !31, line: 676, baseType: !114, size: 64, offset: 768)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !989, file: !31, line: 677, baseType: !1098, size: 128, offset: 832)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !989, file: !31, line: 678, baseType: !1098, size: 128, offset: 960)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !989, file: !31, line: 679, baseType: !1098, size: 128, offset: 1088)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !989, file: !31, line: 680, baseType: !132, size: 32, offset: 1216)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !989, file: !31, line: 681, baseType: !99, size: 16, offset: 1248)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !989, file: !31, line: 682, baseType: !156, size: 8, offset: 1264)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !989, file: !31, line: 683, baseType: !156, size: 8, offset: 1272)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !989, file: !31, line: 684, baseType: !1539, size: 64, offset: 1280)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !989, file: !31, line: 691, baseType: !112, size: 64, offset: 1344)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !989, file: !31, line: 692, baseType: !313, size: 320, offset: 1408)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !989, file: !31, line: 694, baseType: !112, size: 64, offset: 1728)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !989, file: !31, line: 695, baseType: !112, size: 64, offset: 1792)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !989, file: !31, line: 697, baseType: !459, size: 128, offset: 1856)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !989, file: !31, line: 698, baseType: !170, size: 128, offset: 1984)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !989, file: !31, line: 707, baseType: !170, size: 128, offset: 2112)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !989, file: !31, line: 708, baseType: !170, size: 128, offset: 2240)
!2316 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !31, line: 709, baseType: !2317, size: 128, offset: 2368)
!2317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !989, file: !31, line: 709, size: 128, elements: !2318)
!2318 = !{!2319, !2320}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2317, file: !31, line: 710, baseType: !913, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2317, file: !31, line: 711, baseType: !377, size: 128, align: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !989, file: !31, line: 713, baseType: !248, size: 64, offset: 2496)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !989, file: !31, line: 714, baseType: !248, size: 64, offset: 2560)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !989, file: !31, line: 715, baseType: !122, size: 32, offset: 2624)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !989, file: !31, line: 716, baseType: !122, size: 32, offset: 2656)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !989, file: !31, line: 717, baseType: !122, size: 32, offset: 2688)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !989, file: !31, line: 719, baseType: !122, size: 32, offset: 2720)
!2327 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !31, line: 721, baseType: !2328, size: 64, offset: 2752)
!2328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !989, file: !31, line: 721, size: 64, elements: !2329)
!2329 = !{!2330, !2460}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2328, file: !31, line: 722, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2333)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1914, size: 2112, elements: !2334)
!2334 = !{!2335, !2336, !2340, !2344, !2348, !2349, !2350, !2356, !2369, !2377, !2381, !2382, !2386, !2387, !2391, !2396, !2397, !2401, !2405, !2411, !2412, !2416, !2417, !2423, !2427, !2428, !2433, !2437, !2441, !2445, !2449, !2450, !2456}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2333, file: !31, line: 1915, baseType: !1230, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2333, file: !31, line: 1916, baseType: !2337, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!114, !855, !114, !95}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2333, file: !31, line: 1917, baseType: !2341, size: 64, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!1141, !855, !398, !108, !113}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2333, file: !31, line: 1918, baseType: !2345, size: 64, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!1141, !855, !90, !108, !113}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2333, file: !31, line: 1919, baseType: !2220, size: 64, offset: 256)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2333, file: !31, line: 1920, baseType: !2220, size: 64, offset: 320)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2333, file: !31, line: 1921, baseType: !2351, size: 64, offset: 384)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!95, !2223, !2354, !18}
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !31, line: 53, flags: DIFlagFwdDecl)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2333, file: !31, line: 1923, baseType: !2357, size: 64, offset: 448)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!95, !855, !2360}
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1858, size: 128, elements: !2362)
!2362 = !{!2363, !2368}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2361, file: !31, line: 1859, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1855, baseType: !2365)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!387, !2360, !90, !95, !114, !236, !18}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2361, file: !31, line: 1860, baseType: !114, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2333, file: !31, line: 1924, baseType: !2370, size: 64, offset: 512)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!2373, !855, !2375}
!2373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2374, line: 59, baseType: !18)
!2374 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1216, line: 31, flags: DIFlagFwdDecl)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2333, file: !31, line: 1925, baseType: !2378, size: 64, offset: 576)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!1102, !855, !18, !112}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2333, file: !31, line: 1926, baseType: !2378, size: 64, offset: 640)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2333, file: !31, line: 1927, baseType: !2383, size: 64, offset: 704)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!95, !855, !1931}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2333, file: !31, line: 1928, baseType: !112, size: 64, offset: 768)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2333, file: !31, line: 1929, baseType: !2388, size: 64, offset: 832)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!95, !988, !855}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2333, file: !31, line: 1930, baseType: !2392, size: 64, offset: 896)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!95, !855, !2395}
!2395 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1061, baseType: !93)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2333, file: !31, line: 1931, baseType: !2388, size: 64, offset: 960)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2333, file: !31, line: 1932, baseType: !2398, size: 64, offset: 1024)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!95, !855, !114, !114, !95}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2333, file: !31, line: 1933, baseType: !2402, size: 64, offset: 1088)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!95, !95, !855, !95}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2333, file: !31, line: 1934, baseType: !2406, size: 64, offset: 1152)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!95, !855, !95, !2409}
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1063, flags: DIFlagFwdDecl)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2333, file: !31, line: 1935, baseType: !852, size: 64, offset: 1216)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2333, file: !31, line: 1936, baseType: !2413, size: 64, offset: 1280)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!95, !95}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2333, file: !31, line: 1937, baseType: !2406, size: 64, offset: 1344)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2333, file: !31, line: 1938, baseType: !2418, size: 64, offset: 1408)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!1141, !2421, !855, !113, !108, !18}
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !531, line: 59, flags: DIFlagFwdDecl)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2333, file: !31, line: 1939, baseType: !2424, size: 64, offset: 1472)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!1141, !855, !113, !2421, !108, !18}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2333, file: !31, line: 1940, baseType: !2277, size: 64, offset: 1536)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2333, file: !31, line: 1941, baseType: !2429, size: 64, offset: 1600)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!95, !855, !95, !2432, !2197}
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2333, file: !31, line: 1942, baseType: !2434, size: 64, offset: 1664)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!1102, !855, !95, !114, !114}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2333, file: !31, line: 1944, baseType: !2438, size: 64, offset: 1728)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{null, !1306, !855}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2333, file: !31, line: 1948, baseType: !2442, size: 64, offset: 1792)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!1141, !855, !114, !855, !114, !108, !18}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2333, file: !31, line: 1950, baseType: !2446, size: 64, offset: 1856)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!114, !855, !114, !855, !114, !114, !18}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2333, file: !31, line: 1953, baseType: !2398, size: 64, offset: 1920)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2333, file: !31, line: 1954, baseType: !2451, size: 64, offset: 1984)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!95, !2454, !18}
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !31, line: 1911, flags: DIFlagFwdDecl)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2333, file: !31, line: 1955, baseType: !2457, size: 64, offset: 2048)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!95, !2454, !2354, !18}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2328, file: !31, line: 723, baseType: !1256, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !989, file: !31, line: 725, baseType: !2462, size: 64, offset: 2816)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 725, flags: DIFlagFwdDecl)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !989, file: !31, line: 726, baseType: !1792, size: 1536, align: 64, offset: 2880)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !989, file: !31, line: 727, baseType: !170, size: 128, offset: 4416)
!2466 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !31, line: 728, baseType: !2467, size: 64, offset: 4544)
!2467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !989, file: !31, line: 728, size: 64, elements: !2468)
!2468 = !{!2469, !2470, !2473, !2474}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2467, file: !31, line: 729, baseType: !2421, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2467, file: !31, line: 730, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 730, flags: DIFlagFwdDecl)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2467, file: !31, line: 731, baseType: !398, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2467, file: !31, line: 732, baseType: !18, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !989, file: !31, line: 735, baseType: !344, size: 32, offset: 4608)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !989, file: !31, line: 738, baseType: !344, size: 32, offset: 4640)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !989, file: !31, line: 739, baseType: !1652, size: 64, offset: 4672)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !989, file: !31, line: 750, baseType: !93, size: 64, offset: 4736)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !954, file: !955, line: 91, baseType: !2480, size: 256, offset: 448)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 256, elements: !1656)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !954, file: !955, line: 94, baseType: !2482, size: 64, offset: 704)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2483, line: 25, size: 64, elements: !2484)
!2483 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2484 = !{!2485}
!2485 = !DIDerivedType(tag: DW_TAG_member, scope: !2482, file: !2483, line: 26, baseType: !2486, size: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2482, file: !2483, line: 26, size: 64, elements: !2487)
!2487 = !{!2488, !2489}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2486, file: !2483, line: 28, baseType: !237, size: 64, align: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, scope: !2486, file: !2483, line: 30, baseType: !2490, size: 64)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2486, file: !2483, line: 30, size: 64, elements: !2491)
!2491 = !{!2492, !2493}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2490, file: !2483, line: 31, baseType: !132, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2490, file: !2483, line: 32, baseType: !95, size: 32, offset: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !954, file: !955, line: 95, baseType: !1671, size: 64, offset: 768)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !954, file: !955, line: 96, baseType: !1196, size: 64, offset: 832)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !954, file: !955, line: 97, baseType: !112, size: 64, offset: 896)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !954, file: !955, line: 98, baseType: !93, size: 64, offset: 960)
!2498 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !955, line: 100, baseType: !2499, size: 128, offset: 1024)
!2499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !954, file: !955, line: 100, size: 128, elements: !2500)
!2500 = !{!2501, !2502}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2499, file: !955, line: 101, baseType: !170, size: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2499, file: !955, line: 102, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !954, file: !955, line: 104, baseType: !170, size: 128, offset: 1152)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !954, file: !955, line: 105, baseType: !170, size: 128, offset: 1280)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !954, file: !955, line: 113, baseType: !2507, size: 128, offset: 1408)
!2507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !954, file: !955, line: 109, size: 128, elements: !2508)
!2508 = !{!2509, !2510, !2511}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2507, file: !955, line: 110, baseType: !459, size: 128)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2507, file: !955, line: 111, baseType: !964, size: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2507, file: !955, line: 112, baseType: !377, size: 128, align: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !949, file: !950, line: 72, baseType: !1196, size: 64, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !949, file: !950, line: 73, baseType: !95, size: 32, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !949, file: !950, line: 74, baseType: !1027, size: 64, offset: 192)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !944, file: !945, line: 10, baseType: !953, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !856, file: !31, line: 1015, baseType: !988, size: 64, offset: 1344)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !856, file: !31, line: 1016, baseType: !2331, size: 64, offset: 1408)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !856, file: !31, line: 1018, baseType: !236, size: 64, offset: 1472)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !856, file: !31, line: 1020, baseType: !93, size: 64, offset: 1536)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !856, file: !31, line: 1023, baseType: !93, size: 64, offset: 1600)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !856, file: !31, line: 1027, baseType: !2522, size: 64, offset: 1664)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !856, file: !31, line: 1029, baseType: !1791, size: 64, offset: 1728)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !856, file: !31, line: 1030, baseType: !1748, size: 32, offset: 1792)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !856, file: !31, line: 1031, baseType: !1748, size: 32, offset: 1824)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !831, file: !50, line: 756, baseType: !112, size: 64, offset: 704)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !831, file: !50, line: 757, baseType: !112, size: 64, offset: 768)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !831, file: !50, line: 760, baseType: !112, size: 64, offset: 832)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !831, file: !50, line: 761, baseType: !112, size: 64, offset: 896)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !831, file: !50, line: 763, baseType: !112, size: 64, offset: 960)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !831, file: !50, line: 764, baseType: !2532, size: 64, offset: 1024)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1946, line: 299, baseType: !2534)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1946, line: 299, size: 64, elements: !2535)
!2535 = !{!2536}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2534, file: !1946, line: 299, baseType: !2537, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1951, line: 18, baseType: !112)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !831, file: !50, line: 773, baseType: !122, size: 32, offset: 1088)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !831, file: !50, line: 785, baseType: !122, size: 32, offset: 1120)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !831, file: !50, line: 795, baseType: !2541, size: 64, offset: 1152)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !50, line: 726, size: 128, elements: !2543)
!2543 = !{!2544, !2545}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2542, file: !50, line: 727, baseType: !236, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2542, file: !50, line: 728, baseType: !95, size: 32, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !831, file: !50, line: 801, baseType: !112, size: 64, offset: 1216)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !831, file: !50, line: 804, baseType: !246, size: 64, offset: 1280)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !831, file: !50, line: 806, baseType: !95, size: 32, offset: 1344)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !831, file: !50, line: 808, baseType: !132, size: 32, offset: 1376)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !831, file: !50, line: 823, baseType: !313, size: 320, offset: 1408)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !831, file: !50, line: 825, baseType: !170, size: 128, offset: 1728)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !831, file: !50, line: 845, baseType: !95, size: 32, offset: 1856)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !831, file: !50, line: 849, baseType: !112, size: 64, offset: 1920)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !831, file: !50, line: 850, baseType: !112, size: 64, offset: 1984)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !831, file: !50, line: 852, baseType: !112, size: 64, offset: 2048)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !831, file: !50, line: 853, baseType: !112, size: 64, offset: 2112)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !831, file: !50, line: 854, baseType: !248, size: 64, offset: 2176)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !831, file: !50, line: 855, baseType: !112, size: 64, offset: 2240)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !831, file: !50, line: 856, baseType: !112, size: 64, offset: 2304)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !831, file: !50, line: 857, baseType: !112, size: 64, offset: 2368)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !831, file: !50, line: 858, baseType: !112, size: 64, offset: 2432)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !831, file: !50, line: 865, baseType: !701, size: 32, offset: 2496)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !831, file: !50, line: 867, baseType: !132, size: 32, offset: 2528)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !831, file: !50, line: 869, baseType: !112, size: 64, offset: 2560)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !831, file: !50, line: 869, baseType: !112, size: 64, offset: 2624)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !831, file: !50, line: 869, baseType: !112, size: 64, offset: 2688)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !831, file: !50, line: 869, baseType: !112, size: 64, offset: 2752)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !831, file: !50, line: 870, baseType: !112, size: 64, offset: 2816)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !831, file: !50, line: 870, baseType: !112, size: 64, offset: 2880)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !831, file: !50, line: 870, baseType: !112, size: 64, offset: 2944)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !831, file: !50, line: 871, baseType: !112, size: 64, offset: 3008)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !831, file: !50, line: 871, baseType: !112, size: 64, offset: 3072)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !831, file: !50, line: 871, baseType: !112, size: 64, offset: 3136)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !831, file: !50, line: 871, baseType: !112, size: 64, offset: 3200)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !831, file: !50, line: 873, baseType: !2576, size: 3328, offset: 3264)
!2576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 3328, elements: !2577)
!2577 = !{!2578}
!2578 = !DISubrange(count: 52)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !831, file: !50, line: 875, baseType: !2580, size: 1280, offset: 6592)
!2580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 1280, elements: !408)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !831, file: !50, line: 877, baseType: !2582, size: 64, offset: 7872)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !50, line: 877, flags: DIFlagFwdDecl)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !831, file: !50, line: 880, baseType: !2585, size: 1088, offset: 7936)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2586, line: 72, baseType: !2587)
!2586 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2586, line: 23, size: 1088, elements: !2588)
!2588 = !{!2589, !2590, !2591, !2592, !2593, !2596, !2597, !2598, !2599, !2603, !2604, !2605}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2587, file: !2586, line: 28, baseType: !236, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2587, file: !2586, line: 38, baseType: !248, size: 64, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2587, file: !2586, line: 40, baseType: !112, size: 64, offset: 128)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2587, file: !2586, line: 43, baseType: !313, size: 320, offset: 192)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2587, file: !2586, line: 44, baseType: !2594, size: 64, offset: 512)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2586, line: 44, flags: DIFlagFwdDecl)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2587, file: !2586, line: 48, baseType: !112, size: 64, offset: 576)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2587, file: !2586, line: 59, baseType: !869, size: 256, offset: 640)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2587, file: !2586, line: 60, baseType: !93, size: 64, offset: 896)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2587, file: !2586, line: 61, baseType: !2600, size: 64, offset: 960)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2602)
!2602 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2586, line: 61, flags: DIFlagFwdDecl)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2587, file: !2586, line: 63, baseType: !122, size: 32, offset: 1024)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2587, file: !2586, line: 69, baseType: !166, size: 16, offset: 1056)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2587, file: !2586, line: 70, baseType: !2606, size: 16, offset: 1072)
!2606 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !157, line: 18, baseType: !2607)
!2607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !159, line: 23, baseType: !348)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !831, file: !50, line: 882, baseType: !112, size: 64, offset: 9024)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !831, file: !50, line: 885, baseType: !132, size: 32, offset: 9088)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !831, file: !50, line: 886, baseType: !2611, size: 64, offset: 9152)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !50, line: 732, flags: DIFlagFwdDecl)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !831, file: !50, line: 901, baseType: !479, size: 64, offset: 9216)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !831, file: !50, line: 904, baseType: !855, size: 64, offset: 9280)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !831, file: !50, line: 906, baseType: !2616, size: 64, offset: 9344)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !50, line: 906, flags: DIFlagFwdDecl)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !831, file: !50, line: 930, baseType: !122, size: 32, offset: 9408)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !831, file: !50, line: 933, baseType: !122, size: 32, offset: 9440)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !831, file: !50, line: 935, baseType: !2621, size: 64, offset: 9472)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !79, line: 103, size: 64, elements: !2622)
!2622 = !{!2623}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2621, file: !79, line: 104, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !79, line: 101, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !831, file: !50, line: 940, baseType: !246, size: 64, offset: 9536)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !831, file: !50, line: 942, baseType: !1774, size: 256, offset: 9600)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !828, file: !50, line: 986, baseType: !2629, offset: 10240)
!2629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, elements: !927)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !530, file: !531, line: 882, baseType: !827, size: 64, offset: 9792)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !530, file: !531, line: 884, baseType: !95, size: 32, offset: 9856)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !530, file: !531, line: 885, baseType: !95, size: 32, offset: 9888)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !530, file: !531, line: 886, baseType: !95, size: 32, offset: 9920)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !530, file: !531, line: 888, baseType: !95, size: 32, offset: 9952)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !530, file: !531, line: 890, baseType: !112, size: 64, offset: 9984)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !530, file: !531, line: 893, baseType: !18, size: 32, offset: 10048)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !530, file: !531, line: 896, baseType: !18, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !530, file: !531, line: 897, baseType: !18, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !530, file: !531, line: 898, baseType: !18, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !530, file: !531, line: 899, baseType: !18, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !530, file: !531, line: 919, baseType: !18, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !530, file: !531, line: 922, baseType: !18, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !530, file: !531, line: 923, baseType: !18, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !530, file: !531, line: 925, baseType: !18, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !530, file: !531, line: 939, baseType: !18, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !530, file: !531, line: 941, baseType: !18, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !530, file: !531, line: 944, baseType: !18, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !530, file: !531, line: 956, baseType: !18, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !530, file: !531, line: 962, baseType: !18, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !530, file: !531, line: 966, baseType: !18, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !530, file: !531, line: 969, baseType: !112, size: 64, offset: 10176)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !530, file: !531, line: 971, baseType: !2653, size: 448, offset: 10240)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !73, line: 25, size: 448, elements: !2654)
!2654 = !{!2655, !2656, !2661}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2653, file: !73, line: 26, baseType: !112, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2653, file: !73, line: 27, baseType: !2657, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!1102, !2660}
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, scope: !2653, file: !73, line: 28, baseType: !2662, size: 320, offset: 128)
!2662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2653, file: !73, line: 28, size: 320, elements: !2663)
!2663 = !{!2664, !2674, !2699}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2662, file: !73, line: 37, baseType: !2665, size: 320)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2662, file: !73, line: 30, size: 320, elements: !2666)
!2666 = !{!2667, !2669, !2670, !2671, !2672, !2673}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2665, file: !73, line: 31, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2665, file: !73, line: 32, baseType: !343, size: 32, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2665, file: !73, line: 33, baseType: !343, size: 32, offset: 96)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2665, file: !73, line: 34, baseType: !343, size: 32, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2665, file: !73, line: 35, baseType: !236, size: 64, offset: 192)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2665, file: !73, line: 36, baseType: !2668, size: 64, offset: 256)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2662, file: !73, line: 47, baseType: !2675, size: 192)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2662, file: !73, line: 39, size: 192, elements: !2676)
!2676 = !{!2677, !2678, !2679, !2698}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2675, file: !73, line: 40, baseType: !693, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2675, file: !73, line: 41, baseType: !72, size: 32, offset: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, scope: !2675, file: !73, line: 42, baseType: !2680, size: 64, offset: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2675, file: !73, line: 42, size: 64, elements: !2681)
!2681 = !{!2682, !2690}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2680, file: !73, line: 43, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2685, line: 7, size: 128, elements: !2686)
!2685 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2686 = !{!2687, !2689}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2684, file: !2685, line: 8, baseType: !2688, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !110, line: 93, baseType: !116)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2684, file: !2685, line: 9, baseType: !116, size: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2680, file: !73, line: 44, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2693, line: 7, size: 64, elements: !2694)
!2693 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2694 = !{!2695, !2697}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2692, file: !2693, line: 8, baseType: !2696, size: 32)
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2693, line: 5, baseType: !298)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2692, file: !2693, line: 9, baseType: !298, size: 32, offset: 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2675, file: !73, line: 46, baseType: !236, size: 64, offset: 128)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2662, file: !73, line: 55, baseType: !2700, size: 256)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2662, file: !73, line: 49, size: 256, elements: !2701)
!2701 = !{!2702, !2705, !2706, !2707, !2708}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2700, file: !73, line: 50, baseType: !2703, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !73, line: 14, flags: DIFlagFwdDecl)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2700, file: !73, line: 51, baseType: !95, size: 32, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2700, file: !73, line: 52, baseType: !95, size: 32, offset: 96)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2700, file: !73, line: 53, baseType: !112, size: 64, offset: 128)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2700, file: !73, line: 54, baseType: !112, size: 64, offset: 192)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !530, file: !531, line: 973, baseType: !2710, size: 32, offset: 10688)
!2710 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !98, line: 27, baseType: !2711)
!2711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !110, line: 28, baseType: !95)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !530, file: !531, line: 974, baseType: !2710, size: 32, offset: 10720)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !530, file: !531, line: 978, baseType: !112, size: 64, offset: 10752)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !530, file: !531, line: 987, baseType: !529, size: 64, offset: 10816)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !530, file: !531, line: 990, baseType: !529, size: 64, offset: 10880)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !530, file: !531, line: 995, baseType: !170, size: 128, offset: 10944)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !530, file: !531, line: 996, baseType: !170, size: 128, offset: 11072)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !530, file: !531, line: 997, baseType: !529, size: 64, offset: 11200)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !530, file: !531, line: 1005, baseType: !170, size: 128, offset: 11264)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !530, file: !531, line: 1006, baseType: !170, size: 128, offset: 11392)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !530, file: !531, line: 1009, baseType: !905, size: 64, offset: 11520)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !530, file: !531, line: 1010, baseType: !2723, size: 512, offset: 11584)
!2723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 512, elements: !408)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !530, file: !531, line: 1011, baseType: !170, size: 128, offset: 12096)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !530, file: !531, line: 1012, baseType: !170, size: 128, offset: 12224)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !530, file: !531, line: 1014, baseType: !2727, size: 64, offset: 12352)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !530, file: !531, line: 1017, baseType: !1300, size: 64, offset: 12416)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !530, file: !531, line: 1020, baseType: !1300, size: 64, offset: 12480)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !530, file: !531, line: 1023, baseType: !93, size: 64, offset: 12544)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !530, file: !531, line: 1025, baseType: !236, size: 64, offset: 12608)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !530, file: !531, line: 1026, baseType: !236, size: 64, offset: 12672)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !530, file: !531, line: 1031, baseType: !236, size: 64, offset: 12736)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !530, file: !531, line: 1032, baseType: !2735, size: 192, offset: 12800)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !531, line: 324, size: 192, elements: !2736)
!2736 = !{!2737, !2738, !2739}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2735, file: !531, line: 326, baseType: !236, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2735, file: !531, line: 327, baseType: !236, size: 64, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2735, file: !531, line: 328, baseType: !324, size: 32, offset: 128)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !530, file: !531, line: 1041, baseType: !112, size: 64, offset: 12992)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !530, file: !531, line: 1042, baseType: !112, size: 64, offset: 13056)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !530, file: !531, line: 1045, baseType: !236, size: 64, offset: 13120)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !530, file: !531, line: 1048, baseType: !236, size: 64, offset: 13184)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !530, file: !531, line: 1051, baseType: !112, size: 64, offset: 13248)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !530, file: !531, line: 1052, baseType: !112, size: 64, offset: 13312)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !530, file: !531, line: 1055, baseType: !2747, size: 640, offset: 13376)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2748, line: 132, size: 640, elements: !2749)
!2748 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2749 = !{!2750, !2756, !2757}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2747, file: !2748, line: 133, baseType: !2751, size: 576)
!2751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2752, size: 576, elements: !901)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2748, line: 117, size: 192, elements: !2753)
!2753 = !{!2754, !2755}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2752, file: !2748, line: 118, baseType: !236, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2752, file: !2748, line: 119, baseType: !707, size: 128, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2747, file: !2748, line: 134, baseType: !18, size: 32, offset: 576)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2747, file: !2748, line: 135, baseType: !18, size: 32, offset: 608)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !530, file: !531, line: 1058, baseType: !2759, size: 448, offset: 14016)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2748, line: 144, size: 448, elements: !2760)
!2760 = !{!2761, !2762, !2763}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2759, file: !2748, line: 145, baseType: !377, size: 128, align: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2759, file: !2748, line: 146, baseType: !869, size: 256, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2759, file: !2748, line: 147, baseType: !18, size: 32, offset: 384)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !530, file: !531, line: 1064, baseType: !240, size: 64, offset: 14464)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !530, file: !531, line: 1067, baseType: !240, size: 64, offset: 14528)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !530, file: !531, line: 1070, baseType: !240, size: 64, offset: 14592)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !530, file: !531, line: 1074, baseType: !286, size: 64, offset: 14656)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !530, file: !531, line: 1084, baseType: !2769, size: 128, offset: 14720)
!2769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1665)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !530, file: !531, line: 1086, baseType: !2771, size: 64, offset: 14848)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !531, line: 55, flags: DIFlagFwdDecl)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !530, file: !531, line: 1089, baseType: !2774, size: 64, offset: 14912)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2775, line: 12, size: 64, elements: !2776)
!2775 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2776 = !{!2777}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2774, file: !2775, line: 13, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2775, line: 8, flags: DIFlagFwdDecl)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !530, file: !531, line: 1090, baseType: !2781, size: 128, offset: 14976)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2782, line: 13, size: 128, elements: !2783)
!2782 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2783 = !{!2784}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2781, file: !2782, line: 14, baseType: !170, size: 128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !530, file: !531, line: 1097, baseType: !2786, size: 64, offset: 15104)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !531, line: 50, flags: DIFlagFwdDecl)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !530, file: !531, line: 1100, baseType: !2789, size: 64, offset: 15168)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !531, line: 1100, flags: DIFlagFwdDecl)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !530, file: !531, line: 1103, baseType: !2792, size: 64, offset: 15232)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !531, line: 53, flags: DIFlagFwdDecl)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !530, file: !531, line: 1107, baseType: !2795, size: 64, offset: 15296)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2797, line: 31, size: 576, elements: !2798)
!2797 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2798 = !{!2799, !2800, !2803, !2806, !2809, !2810, !2813, !2841, !2842}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2796, file: !2797, line: 32, baseType: !291, size: 32)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2796, file: !2797, line: 33, baseType: !2801, size: 64, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2797, line: 9, flags: DIFlagFwdDecl)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2796, file: !2797, line: 34, baseType: !2804, size: 64, offset: 128)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2797, line: 10, flags: DIFlagFwdDecl)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2796, file: !2797, line: 35, baseType: !2807, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2797, line: 8, flags: DIFlagFwdDecl)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2796, file: !2797, line: 36, baseType: !925, size: 64, offset: 256)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2796, file: !2797, line: 37, baseType: !2811, size: 64, offset: 320)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2797, line: 37, flags: DIFlagFwdDecl)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2796, file: !2797, line: 38, baseType: !2814, size: 64, offset: 384)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2816, line: 19, size: 704, elements: !2817)
!2816 = !DIFile(filename: "./include/linux/time_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e4f4316dfa2293dcdad2ed9ce6a78cf")
!2817 = !{!2818, !2819, !2833, !2834, !2839, !2840}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2815, file: !2816, line: 20, baseType: !479, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2815, file: !2816, line: 21, baseType: !2820, size: 64, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !194, line: 107, size: 1152, elements: !2822)
!2822 = !{!2823, !2824, !2825, !2826, !2827, !2831}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2821, file: !194, line: 108, baseType: !459, size: 128)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2821, file: !194, line: 109, baseType: !479, size: 64, offset: 128)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2821, file: !194, line: 110, baseType: !253, size: 32, offset: 192)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2821, file: !194, line: 111, baseType: !122, size: 32, offset: 224)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !2821, file: !194, line: 112, baseType: !2828, size: 640, offset: 256)
!2828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 640, elements: !2829)
!2829 = !{!2830}
!2830 = !DISubrange(count: 10)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !2821, file: !194, line: 113, baseType: !2832, size: 256, offset: 896)
!2832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 256, elements: !408)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2815, file: !2816, line: 22, baseType: !511, size: 192, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !2815, file: !2816, line: 23, baseType: !2835, size: 256, offset: 320)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timens_offsets", file: !2816, line: 14, size: 256, elements: !2836)
!2836 = !{!2837, !2838}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "monotonic", scope: !2835, file: !2816, line: 15, baseType: !1098, size: 128)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "boottime", scope: !2835, file: !2816, line: 16, baseType: !1098, size: 128, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "vvar_page", scope: !2815, file: !2816, line: 24, baseType: !1811, size: 64, offset: 576)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "frozen_offsets", scope: !2815, file: !2816, line: 26, baseType: !387, size: 8, offset: 640)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2796, file: !2797, line: 39, baseType: !2814, size: 64, offset: 448)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2796, file: !2797, line: 40, baseType: !2843, size: 64, offset: 512)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2797, line: 12, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !530, file: !531, line: 1110, baseType: !2846, size: 64, offset: 15360)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2848, line: 93, size: 8768, elements: !2849)
!2848 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2849 = !{!2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2900, !2909, !2910, !2912, !2913, !2914, !2917, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2955, !2956, !2963, !2973, !2976, !2977, !2980, !2981, !2982, !2983, !2984, !2985}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2847, file: !2848, line: 94, baseType: !291, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2847, file: !2848, line: 95, baseType: !122, size: 32, offset: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2847, file: !2848, line: 96, baseType: !95, size: 32, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2847, file: !2848, line: 97, baseType: !95, size: 32, offset: 96)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2847, file: !2848, line: 98, baseType: !170, size: 128, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2847, file: !2848, line: 100, baseType: !127, size: 192, offset: 256)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2847, file: !2848, line: 103, baseType: !529, size: 64, offset: 448)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2847, file: !2848, line: 106, baseType: !2858, size: 192, offset: 512)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2859, line: 32, size: 192, elements: !2860)
!2859 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2860 = !{!2861, !2862}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2858, file: !2859, line: 33, baseType: !170, size: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2858, file: !2859, line: 34, baseType: !2863, size: 64, offset: 128)
!2863 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2864, line: 25, baseType: !2865)
!2864 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2864, line: 23, size: 64, elements: !2866)
!2866 = !{!2867}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2865, file: !2864, line: 24, baseType: !778, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2847, file: !2848, line: 109, baseType: !913, size: 64, offset: 704)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2847, file: !2848, line: 112, baseType: !95, size: 32, offset: 768)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2847, file: !2848, line: 114, baseType: !95, size: 32, offset: 800)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2847, file: !2848, line: 115, baseType: !529, size: 64, offset: 832)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2847, file: !2848, line: 118, baseType: !95, size: 32, offset: 896)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2847, file: !2848, line: 119, baseType: !18, size: 32, offset: 928)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2847, file: !2848, line: 121, baseType: !2875, size: 64, offset: 960)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2848, line: 80, size: 448, elements: !2877)
!2877 = !{!2878, !2879, !2885}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2876, file: !2848, line: 81, baseType: !122, size: 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2876, file: !2848, line: 82, baseType: !2880, size: 128, offset: 64)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2848, line: 75, size: 128, elements: !2881)
!2881 = !{!2882, !2883}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2880, file: !2848, line: 76, baseType: !529, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2880, file: !2848, line: 77, baseType: !2884, size: 64, offset: 64)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2876, file: !2848, line: 83, baseType: !1896, size: 256, offset: 192)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2847, file: !2848, line: 132, baseType: !18, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2847, file: !2848, line: 133, baseType: !18, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2847, file: !2848, line: 138, baseType: !18, size: 32, offset: 1056)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2847, file: !2848, line: 139, baseType: !170, size: 128, offset: 1088)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2847, file: !2848, line: 142, baseType: !646, size: 512, offset: 1216)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2847, file: !2848, line: 143, baseType: !654, size: 64, offset: 1728)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2847, file: !2848, line: 150, baseType: !2893, size: 256, offset: 1792)
!2893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2894, size: 256, elements: !2898)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2848, line: 38, size: 128, elements: !2895)
!2895 = !{!2896, !2897}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2894, file: !2848, line: 39, baseType: !236, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2894, file: !2848, line: 40, baseType: !236, size: 64, offset: 64)
!2898 = !{!2899}
!2899 = !DISubrange(count: 2)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2847, file: !2848, line: 156, baseType: !2901, size: 192, offset: 2048)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2848, line: 66, size: 192, elements: !2902)
!2902 = !{!2903}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2901, file: !2848, line: 67, baseType: !2904, size: 192)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2848, line: 47, size: 192, elements: !2905)
!2905 = !{!2906, !2907, !2908}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2904, file: !2848, line: 48, baseType: !248, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2904, file: !2848, line: 49, baseType: !248, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2904, file: !2848, line: 50, baseType: !248, size: 64, offset: 128)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2847, file: !2848, line: 160, baseType: !2747, size: 640, offset: 2240)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2847, file: !2848, line: 163, baseType: !2911, size: 256, offset: 2880)
!2911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 256, elements: !408)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2847, file: !2848, line: 169, baseType: !905, size: 64, offset: 3136)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2847, file: !2848, line: 172, baseType: !95, size: 32, offset: 3200)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2847, file: !2848, line: 174, baseType: !2915, size: 64, offset: 3264)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2848, line: 174, flags: DIFlagFwdDecl)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2847, file: !2848, line: 185, baseType: !2918, size: 64, offset: 3328)
!2918 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !697, line: 860, baseType: !2919)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !697, line: 853, size: 64, elements: !2920)
!2920 = !{!2921, !2922}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2919, file: !697, line: 858, baseType: !959, size: 32)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2919, file: !697, line: 859, baseType: !132, size: 32, offset: 32)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2847, file: !2848, line: 186, baseType: !236, size: 64, offset: 3392)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2847, file: !2848, line: 186, baseType: !236, size: 64, offset: 3456)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2847, file: !2848, line: 186, baseType: !236, size: 64, offset: 3520)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2847, file: !2848, line: 186, baseType: !236, size: 64, offset: 3584)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2847, file: !2848, line: 187, baseType: !236, size: 64, offset: 3648)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2847, file: !2848, line: 188, baseType: !236, size: 64, offset: 3712)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2847, file: !2848, line: 189, baseType: !2735, size: 192, offset: 3776)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2847, file: !2848, line: 190, baseType: !112, size: 64, offset: 3968)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2847, file: !2848, line: 190, baseType: !112, size: 64, offset: 4032)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2847, file: !2848, line: 190, baseType: !112, size: 64, offset: 4096)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2847, file: !2848, line: 190, baseType: !112, size: 64, offset: 4160)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2847, file: !2848, line: 191, baseType: !112, size: 64, offset: 4224)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2847, file: !2848, line: 191, baseType: !112, size: 64, offset: 4288)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2847, file: !2848, line: 191, baseType: !112, size: 64, offset: 4352)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2847, file: !2848, line: 191, baseType: !112, size: 64, offset: 4416)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2847, file: !2848, line: 192, baseType: !112, size: 64, offset: 4480)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2847, file: !2848, line: 192, baseType: !112, size: 64, offset: 4544)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2847, file: !2848, line: 192, baseType: !112, size: 64, offset: 4608)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2847, file: !2848, line: 192, baseType: !112, size: 64, offset: 4672)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2847, file: !2848, line: 193, baseType: !112, size: 64, offset: 4736)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2847, file: !2848, line: 193, baseType: !112, size: 64, offset: 4800)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2847, file: !2848, line: 194, baseType: !2945, size: 448, offset: 4864)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2946, line: 12, size: 448, elements: !2947)
!2946 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2947 = !{!2948, !2949, !2950, !2951, !2952, !2953, !2954}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2945, file: !2946, line: 15, baseType: !236, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2945, file: !2946, line: 17, baseType: !236, size: 64, offset: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2945, file: !2946, line: 19, baseType: !236, size: 64, offset: 128)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2945, file: !2946, line: 21, baseType: !236, size: 64, offset: 192)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2945, file: !2946, line: 29, baseType: !236, size: 64, offset: 256)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2945, file: !2946, line: 35, baseType: !236, size: 64, offset: 320)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2945, file: !2946, line: 44, baseType: !236, size: 64, offset: 384)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2847, file: !2848, line: 202, baseType: !238, size: 64, offset: 5312)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2847, file: !2848, line: 213, baseType: !2957, size: 2048, offset: 5376)
!2957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2958, size: 2048, elements: !1665)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2959, line: 43, size: 128, elements: !2960)
!2959 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2960 = !{!2961, !2962}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2958, file: !2959, line: 44, baseType: !111, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2958, file: !2959, line: 45, baseType: !111, size: 64, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2847, file: !2848, line: 216, baseType: !2964, size: 448, offset: 7424)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2848, line: 30, size: 448, elements: !2965)
!2965 = !{!2966, !2967, !2968, !2969, !2970, !2971, !2972}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2964, file: !2848, line: 31, baseType: !95, size: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2964, file: !2848, line: 32, baseType: !1102, size: 64, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2964, file: !2848, line: 33, baseType: !112, size: 64, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2964, file: !2848, line: 34, baseType: !236, size: 64, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2964, file: !2848, line: 34, baseType: !236, size: 64, offset: 256)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2964, file: !2848, line: 35, baseType: !112, size: 64, offset: 320)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2964, file: !2848, line: 35, baseType: !112, size: 64, offset: 384)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2847, file: !2848, line: 219, baseType: !2974, size: 64, offset: 7872)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2848, line: 219, flags: DIFlagFwdDecl)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2847, file: !2848, line: 222, baseType: !18, size: 32, offset: 7936)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2847, file: !2848, line: 223, baseType: !2978, size: 64, offset: 8000)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2848, line: 223, flags: DIFlagFwdDecl)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2847, file: !2848, line: 230, baseType: !387, size: 8, offset: 8064)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2847, file: !2848, line: 231, baseType: !348, size: 16, offset: 8080)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2847, file: !2848, line: 232, baseType: !348, size: 16, offset: 8096)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2847, file: !2848, line: 234, baseType: !827, size: 64, offset: 8128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2847, file: !2848, line: 237, baseType: !869, size: 256, offset: 8192)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2847, file: !2848, line: 243, baseType: !313, size: 320, offset: 8448)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !530, file: !531, line: 1111, baseType: !2987, size: 64, offset: 15424)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2848, line: 20, size: 16640, elements: !2989)
!2989 = !{!2990, !2991, !2992, !2993}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2988, file: !2848, line: 21, baseType: !132, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2988, file: !2848, line: 22, baseType: !291, size: 32, offset: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2988, file: !2848, line: 23, baseType: !127, size: 192, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2988, file: !2848, line: 24, baseType: !2994, size: 16384, offset: 256)
!2994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2995, size: 16384, elements: !3015)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2859, line: 51, size: 256, elements: !2996)
!2996 = !{!2997}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2995, file: !2859, line: 52, baseType: !2998, size: 256)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2859, line: 37, size: 256, elements: !2999)
!2999 = !{!3000, !3007, !3008, !3014}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2998, file: !2859, line: 39, baseType: !3001, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3002, line: 83, baseType: !3003)
!3002 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3002, line: 82, baseType: !3005)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{null, !95}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2998, file: !2859, line: 40, baseType: !112, size: 64, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2998, file: !2859, line: 46, baseType: !3009, size: 64, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3002, line: 86, baseType: !3010)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3002, line: 85, baseType: !3012)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{null}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2998, file: !2859, line: 48, baseType: !2863, size: 64, offset: 192)
!3015 = !{!3016}
!3016 = !DISubrange(count: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !530, file: !531, line: 1112, baseType: !2863, size: 64, offset: 15488)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !530, file: !531, line: 1113, baseType: !2863, size: 64, offset: 15552)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !530, file: !531, line: 1115, baseType: !2863, size: 64, offset: 15616)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !530, file: !531, line: 1116, baseType: !2858, size: 192, offset: 15680)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !530, file: !531, line: 1117, baseType: !112, size: 64, offset: 15872)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !530, file: !531, line: 1118, baseType: !108, size: 64, offset: 15936)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !530, file: !531, line: 1119, baseType: !18, size: 32, offset: 16000)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !530, file: !531, line: 1121, baseType: !380, size: 64, offset: 16064)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !530, file: !531, line: 1125, baseType: !3026, size: 64, offset: 16128)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !531, line: 43, flags: DIFlagFwdDecl)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !530, file: !531, line: 1127, baseType: !253, size: 32, offset: 16192)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !530, file: !531, line: 1128, baseType: !18, size: 32, offset: 16224)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !530, file: !531, line: 1130, baseType: !3031, size: 128, offset: 16256)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3032, line: 37, size: 128, elements: !3033)
!3032 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3033 = !{!3034, !3035, !3036}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3031, file: !3032, line: 38, baseType: !95, size: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3031, file: !3032, line: 39, baseType: !122, size: 32, offset: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3031, file: !3032, line: 40, baseType: !3037, size: 64, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3032, line: 24, flags: DIFlagFwdDecl)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !530, file: !531, line: 1131, baseType: !3040, size: 256, offset: 16384)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3041, line: 12, size: 256, elements: !3042)
!3041 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3042 = !{!3043, !3044, !3045, !3046}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3040, file: !3041, line: 13, baseType: !398, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3040, file: !3041, line: 14, baseType: !112, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3040, file: !3041, line: 15, baseType: !112, size: 64, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3040, file: !3041, line: 16, baseType: !387, size: 8, offset: 192)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !530, file: !531, line: 1134, baseType: !236, size: 64, offset: 16640)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !530, file: !531, line: 1135, baseType: !236, size: 64, offset: 16704)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !530, file: !531, line: 1138, baseType: !132, size: 32, offset: 16768)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !530, file: !531, line: 1141, baseType: !324, size: 32, offset: 16800)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !530, file: !531, line: 1143, baseType: !3052, size: 64, offset: 16832)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !531, line: 735, size: 64, elements: !3053)
!3053 = !{!3054}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3052, file: !531, line: 736, baseType: !3055, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !530, file: !531, line: 1147, baseType: !710, size: 128, offset: 16896)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !530, file: !531, line: 1149, baseType: !529, size: 64, offset: 17024)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !530, file: !531, line: 1151, baseType: !3059, size: 64, offset: 17088)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !531, line: 1151, flags: DIFlagFwdDecl)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !530, file: !531, line: 1188, baseType: !93, size: 64, offset: 17152)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !530, file: !531, line: 1191, baseType: !3063, size: 64, offset: 17216)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !531, line: 44, flags: DIFlagFwdDecl)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !530, file: !531, line: 1194, baseType: !3066, size: 64, offset: 17280)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !531, line: 45, flags: DIFlagFwdDecl)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !530, file: !531, line: 1197, baseType: !3069, size: 64, offset: 17344)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !531, line: 61, flags: DIFlagFwdDecl)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !530, file: !531, line: 1199, baseType: !3072, size: 64, offset: 17408)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3074, line: 99, size: 128, elements: !3075)
!3074 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3075 = !{!3076, !3077, !3078}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3073, file: !3074, line: 100, baseType: !246, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3073, file: !3074, line: 101, baseType: !122, size: 32, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3073, file: !3074, line: 103, baseType: !99, size: 16, offset: 96)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !530, file: !531, line: 1202, baseType: !3080, size: 64, offset: 17472)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !531, line: 48, flags: DIFlagFwdDecl)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !530, file: !531, line: 1205, baseType: !112, size: 64, offset: 17536)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !530, file: !531, line: 1206, baseType: !3084, size: 64, offset: 17600)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2859, line: 14, baseType: !3086)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2859, line: 12, size: 384, elements: !3087)
!3087 = !{!3088}
!3088 = !DIDerivedType(tag: DW_TAG_member, scope: !3086, file: !2859, line: 13, baseType: !3089, size: 384)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3086, file: !2859, line: 13, size: 384, elements: !3090)
!3090 = !{!3091, !3092, !3093, !3094}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3089, file: !2859, line: 13, baseType: !95, size: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3089, file: !2859, line: 13, baseType: !95, size: 32, offset: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3089, file: !2859, line: 13, baseType: !95, size: 32, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3089, file: !2859, line: 13, baseType: !3095, size: 256, offset: 128)
!3095 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3096, line: 37, size: 256, elements: !3097)
!3096 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3097 = !{!3098, !3103, !3116, !3122, !3131, !3158, !3163}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3095, file: !3096, line: 42, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3095, file: !3096, line: 39, size: 64, elements: !3100)
!3100 = !{!3101, !3102}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3099, file: !3096, line: 40, baseType: !2711, size: 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3099, file: !3096, line: 41, baseType: !259, size: 32, offset: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3095, file: !3096, line: 50, baseType: !3104, size: 192)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3095, file: !3096, line: 45, size: 192, elements: !3105)
!3105 = !{!3106, !3108, !3109, !3115}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3104, file: !3096, line: 46, baseType: !3107, size: 32)
!3107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !110, line: 95, baseType: !95)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3104, file: !3096, line: 47, baseType: !95, size: 32, offset: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3104, file: !3096, line: 48, baseType: !3110, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3096, line: 11, baseType: !3111)
!3111 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3096, line: 8, size: 64, elements: !3112)
!3112 = !{!3113, !3114}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3111, file: !3096, line: 9, baseType: !95, size: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3111, file: !3096, line: 10, baseType: !93, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3104, file: !3096, line: 49, baseType: !95, size: 32, offset: 128)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3095, file: !3096, line: 57, baseType: !3117, size: 128)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3095, file: !3096, line: 53, size: 128, elements: !3118)
!3118 = !{!3119, !3120, !3121}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3117, file: !3096, line: 54, baseType: !2711, size: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3117, file: !3096, line: 55, baseType: !259, size: 32, offset: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3117, file: !3096, line: 56, baseType: !3110, size: 64, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3095, file: !3096, line: 66, baseType: !3123, size: 256)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3095, file: !3096, line: 60, size: 256, elements: !3124)
!3124 = !{!3125, !3126, !3127, !3128, !3130}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3123, file: !3096, line: 61, baseType: !2711, size: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3123, file: !3096, line: 62, baseType: !259, size: 32, offset: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3123, file: !3096, line: 63, baseType: !95, size: 32, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3123, file: !3096, line: 64, baseType: !3129, size: 64, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !110, line: 94, baseType: !1143)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3123, file: !3096, line: 65, baseType: !3129, size: 64, offset: 192)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3095, file: !3096, line: 105, baseType: !3132, size: 256)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3095, file: !3096, line: 69, size: 256, elements: !3133)
!3133 = !{!3134, !3135}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3132, file: !3096, line: 70, baseType: !93, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, scope: !3132, file: !3096, line: 79, baseType: !3136, size: 192, offset: 64)
!3136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3132, file: !3096, line: 79, size: 192, elements: !3137)
!3137 = !{!3138, !3139, !3140, !3147, !3152}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3136, file: !3096, line: 81, baseType: !95, size: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3136, file: !3096, line: 86, baseType: !348, size: 16)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3136, file: !3096, line: 92, baseType: !3141, size: 192)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3136, file: !3096, line: 88, size: 192, elements: !3142)
!3142 = !{!3143, !3145, !3146}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3141, file: !3096, line: 89, baseType: !3144, size: 64)
!3144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !689)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3141, file: !3096, line: 90, baseType: !93, size: 64, offset: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3141, file: !3096, line: 91, baseType: !93, size: 64, offset: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3136, file: !3096, line: 97, baseType: !3148, size: 96)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3136, file: !3096, line: 94, size: 96, elements: !3149)
!3149 = !{!3150, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3148, file: !3096, line: 95, baseType: !3144, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3148, file: !3096, line: 96, baseType: !344, size: 32, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3136, file: !3096, line: 103, baseType: !3153, size: 128)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3136, file: !3096, line: 99, size: 128, elements: !3154)
!3154 = !{!3155, !3156, !3157}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3153, file: !3096, line: 100, baseType: !112, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3153, file: !3096, line: 101, baseType: !344, size: 32, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3153, file: !3096, line: 102, baseType: !344, size: 32, offset: 96)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3095, file: !3096, line: 111, baseType: !3159, size: 128)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3095, file: !3096, line: 108, size: 128, elements: !3160)
!3160 = !{!3161, !3162}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3159, file: !3096, line: 109, baseType: !1102, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3159, file: !3096, line: 110, baseType: !95, size: 32, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3095, file: !3096, line: 118, baseType: !3164, size: 128)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3095, file: !3096, line: 114, size: 128, elements: !3165)
!3165 = !{!3166, !3167, !3168}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3164, file: !3096, line: 115, baseType: !93, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3164, file: !3096, line: 116, baseType: !95, size: 32, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3164, file: !3096, line: 117, baseType: !18, size: 32, offset: 96)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !530, file: !531, line: 1208, baseType: !2945, size: 448, offset: 17664)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !530, file: !531, line: 1215, baseType: !236, size: 64, offset: 18112)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !530, file: !531, line: 1217, baseType: !236, size: 64, offset: 18176)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !530, file: !531, line: 1219, baseType: !236, size: 64, offset: 18240)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !530, file: !531, line: 1223, baseType: !3174, size: 64, offset: 18304)
!3174 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3175, line: 99, baseType: !3176)
!3175 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3175, line: 99, size: 64, elements: !3177)
!3177 = !{!3178}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3176, file: !3175, line: 99, baseType: !778, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !530, file: !531, line: 1225, baseType: !959, size: 32, offset: 18368)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !530, file: !531, line: 1226, baseType: !95, size: 32, offset: 18400)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !530, file: !531, line: 1227, baseType: !95, size: 32, offset: 18432)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !530, file: !531, line: 1231, baseType: !3183, size: 64, offset: 18496)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !531, line: 1231, flags: DIFlagFwdDecl)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !530, file: !531, line: 1233, baseType: !170, size: 128, offset: 18560)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !530, file: !531, line: 1240, baseType: !3187, size: 64, offset: 18688)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !531, line: 62, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !530, file: !531, line: 1242, baseType: !3190, size: 64, offset: 18752)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !531, line: 1242, flags: DIFlagFwdDecl)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !530, file: !531, line: 1244, baseType: !170, size: 128, offset: 18816)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !530, file: !531, line: 1245, baseType: !3194, size: 64, offset: 18944)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !531, line: 51, flags: DIFlagFwdDecl)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !530, file: !531, line: 1246, baseType: !869, size: 256, offset: 19008)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !530, file: !531, line: 1247, baseType: !18, size: 32, offset: 19264)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !530, file: !531, line: 1250, baseType: !3199, size: 64, offset: 19328)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !531, line: 57, flags: DIFlagFwdDecl)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !530, file: !531, line: 1251, baseType: !869, size: 256, offset: 19392)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !530, file: !531, line: 1252, baseType: !170, size: 128, offset: 19648)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !530, file: !531, line: 1259, baseType: !2024, size: 64, offset: 19776)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !530, file: !531, line: 1260, baseType: !348, size: 16, offset: 19840)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !530, file: !531, line: 1261, baseType: !348, size: 16, offset: 19856)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !530, file: !531, line: 1314, baseType: !3207, size: 64, offset: 19904)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3209, line: 62, size: 256, align: 256, elements: !3210)
!3209 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3210 = !{!3211, !3212, !3213, !3214, !3215, !3216, !3217}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3208, file: !3209, line: 75, baseType: !344, size: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3208, file: !3209, line: 90, baseType: !344, size: 32, offset: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3208, file: !3209, line: 112, baseType: !237, size: 64, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3208, file: !3209, line: 132, baseType: !344, size: 32, offset: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3208, file: !3209, line: 140, baseType: !344, size: 32, offset: 160)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3208, file: !3209, line: 149, baseType: !344, size: 32, offset: 192)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3208, file: !3209, line: 154, baseType: !3218, offset: 224)
!3218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !927)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !530, file: !531, line: 1315, baseType: !343, size: 32, offset: 19968)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !530, file: !531, line: 1316, baseType: !343, size: 32, offset: 20000)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !530, file: !531, line: 1321, baseType: !112, size: 64, offset: 20032)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !530, file: !531, line: 1325, baseType: !95, size: 32, offset: 20096)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !530, file: !531, line: 1326, baseType: !95, size: 32, offset: 20128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !530, file: !531, line: 1327, baseType: !95, size: 32, offset: 20160)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !530, file: !531, line: 1328, baseType: !95, size: 32, offset: 20192)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !530, file: !531, line: 1329, baseType: !377, size: 128, align: 64, offset: 20224)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !530, file: !531, line: 1332, baseType: !3228, size: 128, offset: 20352)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3229, line: 51, size: 128, elements: !3230)
!3229 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3230 = !{!3231, !3236, !3237}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3228, file: !3229, line: 60, baseType: !3232, size: 64)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3233, line: 7, size: 64, elements: !3234)
!3233 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3234 = !{!3235}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3232, file: !3233, line: 12, baseType: !775, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3228, file: !3229, line: 63, baseType: !387, size: 8, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3228, file: !3229, line: 70, baseType: !387, size: 8, offset: 72)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !530, file: !531, line: 1335, baseType: !2421, size: 64, offset: 20480)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !530, file: !531, line: 1337, baseType: !3240, size: 128, offset: 20544)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3229, line: 39, size: 128, elements: !3241)
!3241 = !{!3242, !3243, !3244}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3240, file: !3229, line: 40, baseType: !1811, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3240, file: !3229, line: 42, baseType: !344, size: 32, offset: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3240, file: !3229, line: 43, baseType: !344, size: 32, offset: 96)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !530, file: !531, line: 1340, baseType: !3246, size: 64, offset: 20672)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !531, line: 69, flags: DIFlagFwdDecl)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !530, file: !531, line: 1351, baseType: !95, size: 32, offset: 20736)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !530, file: !531, line: 1352, baseType: !95, size: 32, offset: 20768)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !530, file: !531, line: 1354, baseType: !112, size: 64, offset: 20800)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !530, file: !531, line: 1364, baseType: !236, size: 64, offset: 20864)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !530, file: !531, line: 1365, baseType: !236, size: 64, offset: 20928)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !530, file: !531, line: 1412, baseType: !112, size: 64, offset: 20992)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !530, file: !531, line: 1453, baseType: !3255, size: 64, offset: 21056)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !531, line: 1453, flags: DIFlagFwdDecl)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !530, file: !531, line: 1457, baseType: !3258, size: 64, offset: 21120)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !79, line: 61, size: 576, elements: !3260)
!3260 = !{!3261, !3262, !3281, !3284, !3285, !3318, !3328}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3259, file: !79, line: 62, baseType: !78, size: 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, scope: !3259, file: !79, line: 64, baseType: !3263, size: 192, offset: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3259, file: !79, line: 64, size: 192, elements: !3264)
!3264 = !{!3265, !3276}
!3265 = !DIDerivedType(tag: DW_TAG_member, scope: !3263, file: !79, line: 65, baseType: !3266, size: 192)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3263, file: !79, line: 65, size: 192, elements: !3267)
!3267 = !{!3268, !3275}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3266, file: !79, line: 66, baseType: !3269, size: 128)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3270, line: 50, size: 128, elements: !3271)
!3270 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3271 = !{!3272, !3273, !3274}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3269, file: !3270, line: 52, baseType: !112, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3269, file: !3270, line: 54, baseType: !18, size: 32, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3269, file: !3270, line: 55, baseType: !18, size: 32, offset: 96)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3266, file: !79, line: 67, baseType: !112, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_member, scope: !3263, file: !79, line: 70, baseType: !3277, size: 192)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3263, file: !79, line: 70, size: 192, elements: !3278)
!3278 = !{!3279, !3280}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3277, file: !79, line: 71, baseType: !377, size: 128, align: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3277, file: !79, line: 72, baseType: !112, size: 64, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3259, file: !79, line: 76, baseType: !3282, size: 64, offset: 256)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !79, line: 76, flags: DIFlagFwdDecl)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3259, file: !79, line: 77, baseType: !112, size: 64, offset: 320)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3259, file: !79, line: 79, baseType: !3286, size: 64, offset: 384)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3270, line: 25, size: 256, elements: !3288)
!3288 = !{!3289, !3295, !3299}
!3289 = !DIDerivedType(tag: DW_TAG_member, scope: !3287, file: !3270, line: 26, baseType: !3290, size: 128)
!3290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3287, file: !3270, line: 26, size: 128, elements: !3291)
!3291 = !{!3292, !3294}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3290, file: !3270, line: 27, baseType: !3293, size: 128)
!3293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 128, elements: !1665)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3290, file: !3270, line: 28, baseType: !3293, size: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3287, file: !3270, line: 31, baseType: !3296, size: 64, offset: 128)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3298)
!3298 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3270, line: 23, flags: DIFlagFwdDecl)
!3299 = !DIDerivedType(tag: DW_TAG_member, scope: !3287, file: !3270, line: 33, baseType: !3300, size: 64, offset: 192)
!3300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3287, file: !3270, line: 33, size: 64, elements: !3301)
!3301 = !{!3302, !3308, !3313}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3300, file: !3270, line: 38, baseType: !3303, size: 64)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3300, file: !3270, line: 34, size: 64, elements: !3304)
!3304 = !{!3305, !3306, !3307}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3303, file: !3270, line: 35, baseType: !298, size: 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3303, file: !3270, line: 36, baseType: !156, size: 8, offset: 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3303, file: !3270, line: 37, baseType: !156, size: 8, offset: 40)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3300, file: !3270, line: 42, baseType: !3309, size: 16)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3300, file: !3270, line: 39, size: 16, elements: !3310)
!3310 = !{!3311, !3312}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3309, file: !3270, line: 40, baseType: !156, size: 8)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3309, file: !3270, line: 41, baseType: !156, size: 8, offset: 8)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3300, file: !3270, line: 46, baseType: !3314, size: 16)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3300, file: !3270, line: 43, size: 16, elements: !3315)
!3315 = !{!3316, !3317}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3314, file: !3270, line: 44, baseType: !156, size: 8)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3314, file: !3270, line: 45, baseType: !156, size: 8, offset: 8)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3259, file: !79, line: 81, baseType: !3319, size: 64, offset: 448)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !79, line: 85, size: 384, elements: !3321)
!3321 = !{!3322, !3323, !3324, !3325, !3326, !3327}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3320, file: !79, line: 86, baseType: !3282, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3320, file: !79, line: 87, baseType: !112, size: 64, offset: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3320, file: !79, line: 88, baseType: !112, size: 64, offset: 128)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3320, file: !79, line: 89, baseType: !112, size: 64, offset: 192)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3320, file: !79, line: 90, baseType: !387, size: 8, offset: 256)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3320, file: !79, line: 92, baseType: !3319, size: 64, offset: 320)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3259, file: !79, line: 82, baseType: !18, size: 32, offset: 512)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !530, file: !531, line: 1463, baseType: !3330, offset: 21184)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !531, line: 739, elements: !848)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !530, file: !531, line: 1470, baseType: !377, size: 128, align: 64, offset: 21184)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !530, file: !531, line: 1471, baseType: !291, size: 32, offset: 21312)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !530, file: !531, line: 1472, baseType: !95, size: 32, offset: 21344)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !530, file: !531, line: 1474, baseType: !529, size: 64, offset: 21376)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !530, file: !531, line: 1475, baseType: !3336, size: 320, offset: 21440)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3337, line: 11, size: 320, elements: !3338)
!3337 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3338 = !{!3339, !3340, !3341, !3346}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3336, file: !3337, line: 16, baseType: !459, size: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3336, file: !3337, line: 17, baseType: !112, size: 64, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3336, file: !3337, line: 18, baseType: !3342, size: 64, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{null, !3345}
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3336, file: !3337, line: 19, baseType: !343, size: 32, offset: 256)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !530, file: !531, line: 1478, baseType: !3348, size: 64, offset: 21760)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2247, line: 49, size: 512, elements: !3350)
!3350 = !{!3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3360}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3349, file: !2247, line: 50, baseType: !3348, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3349, file: !2247, line: 51, baseType: !93, size: 64, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3349, file: !2247, line: 52, baseType: !112, size: 64, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3349, file: !2247, line: 53, baseType: !112, size: 64, offset: 192)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3349, file: !2247, line: 54, baseType: !2196, size: 64, offset: 256)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3349, file: !2247, line: 56, baseType: !18, size: 32, offset: 320)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3349, file: !2247, line: 58, baseType: !18, size: 32, offset: 352)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3349, file: !2247, line: 59, baseType: !3359, size: 64, offset: 384)
!3359 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !98, line: 159, baseType: !236)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3349, file: !2247, line: 60, baseType: !3361, size: 64, offset: 448)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !530, file: !531, line: 1482, baseType: !291, size: 32, offset: 21824)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !530, file: !531, line: 1489, baseType: !93, size: 64, offset: 21888)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !530, file: !531, line: 1504, baseType: !93, size: 64, offset: 21952)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !530, file: !531, line: 1505, baseType: !237, size: 64, offset: 22016)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !530, file: !531, line: 1506, baseType: !236, size: 64, offset: 22080)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !530, file: !531, line: 1507, baseType: !237, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !530, file: !531, line: 1508, baseType: !237, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !530, file: !531, line: 1509, baseType: !237, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !530, file: !531, line: 1510, baseType: !377, size: 128, align: 64, offset: 22208)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !530, file: !531, line: 1511, baseType: !95, size: 32, offset: 22336)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !530, file: !531, line: 1515, baseType: !3374, size: 64, offset: 22400)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !553, line: 56, size: 64, elements: !3375)
!3375 = !{!3376}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3374, file: !553, line: 57, baseType: !556, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !530, file: !531, line: 1518, baseType: !3374, size: 64, offset: 22464)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !530, file: !531, line: 1528, baseType: !377, size: 128, align: 64, offset: 22528)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !530, file: !531, line: 1552, baseType: !3380, size: 35328, offset: 23040)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3381, line: 430, size: 35328, elements: !3382)
!3381 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3382 = !{!3383, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3412, !3413, !3414, !3415, !3416, !3417, !3420, !3421, !3422, !3423}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3380, file: !3381, line: 432, baseType: !3384, size: 192)
!3384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3385, size: 192, elements: !901)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3386, line: 16, size: 64, elements: !3387)
!3386 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3387 = !{!3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3385, file: !3386, line: 17, baseType: !166, size: 16)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3385, file: !3386, line: 18, baseType: !166, size: 16, offset: 16)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3385, file: !3386, line: 19, baseType: !166, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3385, file: !3386, line: 19, baseType: !166, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3385, file: !3386, line: 19, baseType: !166, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3385, file: !3386, line: 19, baseType: !166, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3385, file: !3386, line: 19, baseType: !166, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3385, file: !3386, line: 20, baseType: !166, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3385, file: !3386, line: 20, baseType: !166, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3385, file: !3386, line: 20, baseType: !166, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3385, file: !3386, line: 20, baseType: !166, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3385, file: !3386, line: 20, baseType: !166, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3385, file: !3386, line: 20, baseType: !166, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3380, file: !3381, line: 436, baseType: !112, size: 64, offset: 192)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3380, file: !3381, line: 440, baseType: !99, size: 16, offset: 256)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3380, file: !3381, line: 441, baseType: !99, size: 16, offset: 272)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3380, file: !3381, line: 442, baseType: !99, size: 16, offset: 288)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3380, file: !3381, line: 443, baseType: !99, size: 16, offset: 304)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3380, file: !3381, line: 447, baseType: !112, size: 64, offset: 320)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3380, file: !3381, line: 448, baseType: !112, size: 64, offset: 384)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3380, file: !3381, line: 459, baseType: !3409, size: 256, offset: 448)
!3409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3410, size: 256, elements: !408)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3381, line: 428, flags: DIFlagFwdDecl)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3380, file: !3381, line: 461, baseType: !112, size: 64, offset: 704)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3380, file: !3381, line: 463, baseType: !112, size: 64, offset: 768)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3380, file: !3381, line: 465, baseType: !112, size: 64, offset: 832)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3380, file: !3381, line: 466, baseType: !112, size: 64, offset: 896)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3380, file: !3381, line: 467, baseType: !112, size: 64, offset: 960)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3380, file: !3381, line: 473, baseType: !3418, size: 64, offset: 1024)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3381, line: 10, flags: DIFlagFwdDecl)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3380, file: !3381, line: 480, baseType: !112, size: 64, offset: 1088)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3380, file: !3381, line: 482, baseType: !18, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3380, file: !3381, line: 491, baseType: !343, size: 32, offset: 1184)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3380, file: !3381, line: 501, baseType: !3424, size: 33792, offset: 1536)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3425, line: 448, size: 33792, elements: !3426)
!3425 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3426 = !{!3427, !3428, !3429, !3591, !3592, !3598, !3599}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3424, file: !3425, line: 461, baseType: !18, size: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3424, file: !3425, line: 468, baseType: !112, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3424, file: !3425, line: 476, baseType: !3430, size: 64, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3425, line: 356, size: 33280, align: 512, elements: !3432)
!3432 = !{!3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3431, file: !3425, line: 358, baseType: !18, size: 32)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3431, file: !3425, line: 361, baseType: !18, size: 32, offset: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3431, file: !3425, line: 364, baseType: !236, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3431, file: !3425, line: 367, baseType: !236, size: 64, offset: 128)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3431, file: !3425, line: 370, baseType: !236, size: 64, offset: 192)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3431, file: !3425, line: 373, baseType: !18, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3431, file: !3425, line: 376, baseType: !18, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3431, file: !3425, line: 391, baseType: !18, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3431, file: !3425, line: 394, baseType: !18, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3431, file: !3425, line: 397, baseType: !3443, size: 32768, offset: 512)
!3443 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3425, line: 348, size: 32768, elements: !3444)
!3444 = !{!3445, !3460, !3497, !3574, !3587}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3443, file: !3425, line: 349, baseType: !3446, size: 896)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3425, line: 12, size: 896, elements: !3447)
!3447 = !{!3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3459}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3446, file: !3425, line: 13, baseType: !343, size: 32)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3446, file: !3425, line: 14, baseType: !343, size: 32, offset: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3446, file: !3425, line: 15, baseType: !343, size: 32, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3446, file: !3425, line: 16, baseType: !343, size: 32, offset: 96)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3446, file: !3425, line: 17, baseType: !343, size: 32, offset: 128)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3446, file: !3425, line: 18, baseType: !343, size: 32, offset: 160)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3446, file: !3425, line: 19, baseType: !343, size: 32, offset: 192)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3446, file: !3425, line: 22, baseType: !3456, size: 640, offset: 224)
!3456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 640, elements: !3457)
!3457 = !{!3458}
!3458 = !DISubrange(count: 20)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3446, file: !3425, line: 25, baseType: !343, size: 32, offset: 864)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3443, file: !3425, line: 350, baseType: !3461, size: 4096, align: 128)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3425, line: 34, size: 4096, align: 128, elements: !3462)
!3462 = !{!3463, !3464, !3465, !3466, !3467, !3482, !3483, !3484, !3486, !3488, !3492}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3461, file: !3425, line: 35, baseType: !166, size: 16)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3461, file: !3425, line: 36, baseType: !166, size: 16, offset: 16)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3461, file: !3425, line: 37, baseType: !166, size: 16, offset: 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3461, file: !3425, line: 38, baseType: !166, size: 16, offset: 48)
!3467 = !DIDerivedType(tag: DW_TAG_member, scope: !3461, file: !3425, line: 39, baseType: !3468, size: 128, offset: 64)
!3468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3461, file: !3425, line: 39, size: 128, elements: !3469)
!3469 = !{!3470, !3475}
!3470 = !DIDerivedType(tag: DW_TAG_member, scope: !3468, file: !3425, line: 40, baseType: !3471, size: 128)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3468, file: !3425, line: 40, size: 128, elements: !3472)
!3472 = !{!3473, !3474}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3471, file: !3425, line: 41, baseType: !236, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3471, file: !3425, line: 42, baseType: !236, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, scope: !3468, file: !3425, line: 44, baseType: !3476, size: 128)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3468, file: !3425, line: 44, size: 128, elements: !3477)
!3477 = !{!3478, !3479, !3480, !3481}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3476, file: !3425, line: 45, baseType: !343, size: 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3476, file: !3425, line: 46, baseType: !343, size: 32, offset: 32)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3476, file: !3425, line: 47, baseType: !343, size: 32, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3476, file: !3425, line: 48, baseType: !343, size: 32, offset: 96)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3461, file: !3425, line: 51, baseType: !343, size: 32, offset: 192)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3461, file: !3425, line: 52, baseType: !343, size: 32, offset: 224)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3461, file: !3425, line: 55, baseType: !3485, size: 1024, offset: 256)
!3485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 1024, elements: !1656)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3461, file: !3425, line: 58, baseType: !3487, size: 2048, offset: 1280)
!3487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 2048, elements: !3015)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3461, file: !3425, line: 60, baseType: !3489, size: 384, offset: 3328)
!3489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 384, elements: !3490)
!3490 = !{!3491}
!3491 = !DISubrange(count: 12)
!3492 = !DIDerivedType(tag: DW_TAG_member, scope: !3461, file: !3425, line: 62, baseType: !3493, size: 384, offset: 3712)
!3493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3461, file: !3425, line: 62, size: 384, elements: !3494)
!3494 = !{!3495, !3496}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3493, file: !3425, line: 63, baseType: !3489, size: 384)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3493, file: !3425, line: 64, baseType: !3489, size: 384)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3443, file: !3425, line: 351, baseType: !3498, size: 1088)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3425, line: 79, size: 1088, elements: !3499)
!3499 = !{!3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3573}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3498, file: !3425, line: 80, baseType: !343, size: 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3498, file: !3425, line: 81, baseType: !343, size: 32, offset: 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3498, file: !3425, line: 82, baseType: !343, size: 32, offset: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3498, file: !3425, line: 83, baseType: !343, size: 32, offset: 96)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3498, file: !3425, line: 84, baseType: !343, size: 32, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3498, file: !3425, line: 85, baseType: !343, size: 32, offset: 160)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3498, file: !3425, line: 86, baseType: !343, size: 32, offset: 192)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3498, file: !3425, line: 88, baseType: !3456, size: 640, offset: 224)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3498, file: !3425, line: 89, baseType: !156, size: 8, offset: 864)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3498, file: !3425, line: 90, baseType: !156, size: 8, offset: 872)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3498, file: !3425, line: 91, baseType: !156, size: 8, offset: 880)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3498, file: !3425, line: 92, baseType: !156, size: 8, offset: 888)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3498, file: !3425, line: 93, baseType: !156, size: 8, offset: 896)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3498, file: !3425, line: 94, baseType: !156, size: 8, offset: 904)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3498, file: !3425, line: 95, baseType: !3515, size: 64, offset: 960)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3517, line: 11, size: 128, elements: !3518)
!3517 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3518 = !{!3519, !3520}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3516, file: !3517, line: 12, baseType: !1102, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3516, file: !3517, line: 13, baseType: !3521, size: 64, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3523, line: 103, size: 1344, elements: !3524)
!3523 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3524 = !{!3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3553, !3554, !3555}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3522, file: !3523, line: 109, baseType: !112, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3522, file: !3523, line: 110, baseType: !112, size: 64, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3522, file: !3523, line: 111, baseType: !112, size: 64, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3522, file: !3523, line: 112, baseType: !112, size: 64, offset: 192)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3522, file: !3523, line: 113, baseType: !112, size: 64, offset: 256)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3522, file: !3523, line: 114, baseType: !112, size: 64, offset: 320)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3522, file: !3523, line: 117, baseType: !112, size: 64, offset: 384)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3522, file: !3523, line: 118, baseType: !112, size: 64, offset: 448)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3522, file: !3523, line: 119, baseType: !112, size: 64, offset: 512)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3522, file: !3523, line: 120, baseType: !112, size: 64, offset: 576)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3522, file: !3523, line: 121, baseType: !112, size: 64, offset: 640)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3522, file: !3523, line: 122, baseType: !112, size: 64, offset: 704)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3522, file: !3523, line: 123, baseType: !112, size: 64, offset: 768)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3522, file: !3523, line: 124, baseType: !112, size: 64, offset: 832)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3522, file: !3523, line: 125, baseType: !112, size: 64, offset: 896)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3522, file: !3523, line: 139, baseType: !112, size: 64, offset: 960)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3522, file: !3523, line: 142, baseType: !112, size: 64, offset: 1024)
!3542 = !DIDerivedType(tag: DW_TAG_member, scope: !3522, file: !3523, line: 144, baseType: !3543, size: 64, offset: 1088)
!3543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3522, file: !3523, line: 144, size: 64, elements: !3544)
!3544 = !{!3545, !3546, !3547}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3543, file: !3523, line: 146, baseType: !166, size: 16)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3543, file: !3523, line: 148, baseType: !236, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3543, file: !3523, line: 150, baseType: !3548, size: 64)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3523, line: 59, size: 64, elements: !3549)
!3549 = !{!3550, !3551, !3552}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3548, file: !3523, line: 61, baseType: !236, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3548, file: !3523, line: 63, baseType: !236, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3548, file: !3523, line: 65, baseType: !236, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3522, file: !3523, line: 153, baseType: !112, size: 64, offset: 1152)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3522, file: !3523, line: 154, baseType: !112, size: 64, offset: 1216)
!3555 = !DIDerivedType(tag: DW_TAG_member, scope: !3522, file: !3523, line: 156, baseType: !3556, size: 64, offset: 1280)
!3556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3522, file: !3523, line: 156, size: 64, elements: !3557)
!3557 = !{!3558, !3559, !3560}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3556, file: !3523, line: 158, baseType: !166, size: 16)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3556, file: !3523, line: 160, baseType: !236, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3556, file: !3523, line: 162, baseType: !3561, size: 64)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3523, line: 69, size: 64, elements: !3562)
!3562 = !{!3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3561, file: !3523, line: 71, baseType: !236, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3561, file: !3523, line: 73, baseType: !236, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3561, file: !3523, line: 75, baseType: !236, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3561, file: !3523, line: 77, baseType: !236, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3561, file: !3523, line: 80, baseType: !236, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3561, file: !3523, line: 83, baseType: !236, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3561, file: !3523, line: 86, baseType: !236, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3561, file: !3523, line: 88, baseType: !236, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3561, file: !3523, line: 93, baseType: !236, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3561, file: !3523, line: 100, baseType: !236, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3498, file: !3425, line: 96, baseType: !343, size: 32, offset: 1024)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3443, file: !3425, line: 352, baseType: !3575, size: 4608, align: 512)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3425, line: 333, size: 4608, align: 512, elements: !3576)
!3576 = !{!3577, !3578, !3585}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3575, file: !3425, line: 334, baseType: !3461, size: 4096, align: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3575, file: !3425, line: 335, baseType: !3579, size: 512, offset: 4096)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3425, line: 312, size: 512, elements: !3580)
!3580 = !{!3581, !3582, !3583}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3579, file: !3425, line: 313, baseType: !236, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3579, file: !3425, line: 314, baseType: !236, size: 64, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3579, file: !3425, line: 315, baseType: !3584, size: 384, offset: 128)
!3584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 384, elements: !366)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3575, file: !3425, line: 336, baseType: !3586, offset: 4608)
!3586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, elements: !927)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3443, file: !3425, line: 353, baseType: !3588, size: 32768)
!3588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 32768, elements: !3589)
!3589 = !{!3590}
!3590 = !DISubrange(count: 4096)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3424, file: !3425, line: 484, baseType: !3430, size: 64, offset: 192)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3424, file: !3425, line: 491, baseType: !3593, size: 128, offset: 256)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3425, line: 404, size: 128, elements: !3594)
!3594 = !{!3595, !3596, !3597}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3593, file: !3425, line: 424, baseType: !236, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3593, file: !3425, line: 432, baseType: !18, size: 32, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3593, file: !3425, line: 440, baseType: !18, size: 32, offset: 96)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3424, file: !3425, line: 498, baseType: !3593, size: 128, offset: 384)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3424, file: !3425, line: 508, baseType: !3431, size: 33280, align: 512, offset: 512)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !518, file: !519, line: 21, baseType: !3601, size: 64, offset: 256)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{null, !528}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !518, file: !519, line: 22, baseType: !3605, size: 64, offset: 320)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!95, !3608, !528}
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsset", file: !2797, line: 53, size: 256, elements: !3610)
!3610 = !{!3611, !3612, !3613, !3614}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3609, file: !2797, line: 54, baseType: !18, size: 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3609, file: !2797, line: 55, baseType: !2795, size: 64, offset: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3609, file: !2797, line: 56, baseType: !2786, size: 64, offset: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3609, file: !2797, line: 57, baseType: !240, size: 64, offset: 192)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !518, file: !519, line: 23, baseType: !3616, size: 64, offset: 384)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!479, !528}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !518, file: !519, line: 24, baseType: !3620, size: 64, offset: 448)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!528, !528}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !511, file: !512, line: 12, baseType: !18, size: 32, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !511, file: !512, line: 13, baseType: !291, size: 32, offset: 160)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !480, file: !194, line: 77, baseType: !112, size: 64, offset: 2112)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !480, file: !194, line: 80, baseType: !387, size: 8, offset: 2176)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !480, file: !194, line: 88, baseType: !170, size: 128, offset: 2240)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !480, file: !194, line: 89, baseType: !286, size: 64, offset: 2368)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !480, file: !194, line: 90, baseType: !313, size: 320, offset: 2432)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !480, file: !194, line: 97, baseType: !1774, size: 256, offset: 2752)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !480, file: !194, line: 99, baseType: !3632, size: 768, offset: 3008)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !86, line: 199, size: 768, elements: !3633)
!3633 = !{!3634, !3639}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !3632, file: !86, line: 200, baseType: !3635, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!95, !3638}
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3632, file: !86, line: 201, baseType: !3640, size: 704, offset: 64)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !86, line: 193, size: 704, elements: !3641)
!3641 = !{!3642, !3689}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3640, file: !86, line: 195, baseType: !3643, size: 640)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !86, line: 173, size: 640, elements: !3644)
!3644 = !{!3645, !3657, !3658, !3659, !3679, !3680, !3682, !3688}
!3645 = !DIDerivedType(tag: DW_TAG_member, scope: !3643, file: !86, line: 174, baseType: !3646, size: 192)
!3646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3643, file: !86, line: 174, size: 192, elements: !3647)
!3647 = !{!3648, !3656}
!3648 = !DIDerivedType(tag: DW_TAG_member, scope: !3646, file: !86, line: 175, baseType: !3649, size: 192)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3646, file: !86, line: 175, size: 192, elements: !3650)
!3650 = !{!3651, !3652, !3653, !3654, !3655}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !3649, file: !86, line: 176, baseType: !106, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !3649, file: !86, line: 177, baseType: !95, size: 32, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3649, file: !86, line: 178, baseType: !95, size: 32, offset: 96)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3649, file: !86, line: 179, baseType: !95, size: 32, offset: 128)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !3649, file: !86, line: 180, baseType: !95, size: 32, offset: 160)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3646, file: !86, line: 182, baseType: !377, size: 128, align: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3643, file: !86, line: 184, baseType: !2727, size: 64, offset: 192)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !3643, file: !86, line: 185, baseType: !106, size: 64, offset: 256)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3643, file: !86, line: 186, baseType: !3660, size: 64, offset: 320)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !86, line: 204, size: 960, elements: !3662)
!3662 = !{!3663, !3664, !3668, !3675}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !3661, file: !86, line: 205, baseType: !3632, size: 768)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !3661, file: !86, line: 206, baseType: !3665, size: 64, offset: 768)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!3638, !3660}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !3661, file: !86, line: 207, baseType: !3669, size: 64, offset: 832)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{null, !3672, !3673, !3674}
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !3661, file: !86, line: 209, baseType: !3676, size: 64, offset: 896)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!95, !3672, !106}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3643, file: !86, line: 187, baseType: !3638, size: 64, offset: 384)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3643, file: !86, line: 188, baseType: !3681, size: 64, offset: 448)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3643, file: !86, line: 189, baseType: !3683, size: 64, offset: 512)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !86, line: 157, size: 256, elements: !3685)
!3685 = !{!3686, !3687}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3684, file: !86, line: 158, baseType: !305, size: 192, align: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3684, file: !86, line: 159, baseType: !3672, size: 64, offset: 192)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !3643, file: !86, line: 190, baseType: !913, size: 64, offset: 576)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3640, file: !86, line: 196, baseType: !713, size: 64, offset: 640)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !480, file: !194, line: 100, baseType: !3672, size: 64, offset: 3776)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !480, file: !194, line: 102, baseType: !2820, size: 64, offset: 3840)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !480, file: !194, line: 103, baseType: !3693, size: 640, offset: 3904)
!3693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1102, size: 640, elements: !2829)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !480, file: !194, line: 104, baseType: !3695, size: 256, offset: 4544)
!3695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1102, size: 256, elements: !408)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !242, file: !243, line: 139, baseType: !2820, size: 64, offset: 1216)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !242, file: !243, line: 140, baseType: !3698, size: 64, offset: 1280)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !243, line: 25, size: 64, elements: !3700)
!3700 = !{!3701, !3702, !3703}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3699, file: !243, line: 26, baseType: !122, size: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !3699, file: !243, line: 27, baseType: !95, size: 32, offset: 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3699, file: !243, line: 28, baseType: !3704, offset: 64)
!3704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, elements: !927)
!3705 = !DIDerivedType(tag: DW_TAG_member, scope: !242, file: !243, line: 142, baseType: !3706, size: 128, offset: 1344)
!3706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !242, file: !243, line: 142, size: 128, elements: !3707)
!3707 = !{!3708, !3709}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !3706, file: !243, line: 143, baseType: !95, size: 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3706, file: !243, line: 144, baseType: !377, size: 128, align: 64)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !95)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !234)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!3715 = !{!0, !7, !3716, !3719, !3721, !3726, !3728, !3730, !3735, !3740, !3743, !3745, !12}
!3716 = !DIGlobalVariableExpression(var: !3717, expr: !DIExpression())
!3717 = distinct !DIGlobalVariable(scope: null, file: !2, line: 461, type: !3718, isLocal: true, isDefinition: true)
!3718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !496)
!3719 = !DIGlobalVariableExpression(var: !3720, expr: !DIExpression())
!3720 = distinct !DIGlobalVariable(name: "timens_operations", scope: !14, file: !2, line: 460, type: !517, isLocal: false, isDefinition: true)
!3721 = !DIGlobalVariableExpression(var: !3722, expr: !DIExpression())
!3722 = distinct !DIGlobalVariable(scope: null, file: !2, line: 470, type: !3723, isLocal: true, isDefinition: true)
!3723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !3724)
!3724 = !{!3725}
!3725 = !DISubrange(count: 18)
!3726 = !DIGlobalVariableExpression(var: !3727, expr: !DIExpression())
!3727 = distinct !DIGlobalVariable(name: "timens_for_children_operations", scope: !14, file: !2, line: 469, type: !517, isLocal: false, isDefinition: true)
!3728 = !DIGlobalVariableExpression(var: !3729, expr: !DIExpression())
!3729 = distinct !DIGlobalVariable(name: "init_time_ns", scope: !14, file: !2, line: 479, type: !2815, isLocal: false, isDefinition: true)
!3730 = !DIGlobalVariableExpression(var: !3731, expr: !DIExpression())
!3731 = distinct !DIGlobalVariable(scope: null, file: !208, line: 480, type: !3732, isLocal: true, isDefinition: true)
!3732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !3733)
!3733 = !{!3734}
!3734 = !DISubrange(count: 21)
!3735 = !DIGlobalVariableExpression(var: !3736, expr: !DIExpression())
!3736 = distinct !DIGlobalVariable(scope: null, file: !2, line: 353, type: !3737, isLocal: true, isDefinition: true)
!3737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !3738)
!3738 = !{!3739}
!3739 = !DISubrange(count: 9)
!3740 = !DIGlobalVariableExpression(var: !3741, expr: !DIExpression())
!3741 = distinct !DIGlobalVariable(scope: null, file: !2, line: 356, type: !3742, isLocal: true, isDefinition: true)
!3742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !2829)
!3743 = !DIGlobalVariableExpression(var: !3744, expr: !DIExpression())
!3744 = distinct !DIGlobalVariable(scope: null, file: !2, line: 359, type: !3144, isLocal: true, isDefinition: true)
!3745 = !DIGlobalVariableExpression(var: !3746, expr: !DIExpression())
!3746 = distinct !DIGlobalVariable(scope: null, file: !2, line: 362, type: !3747, isLocal: true, isDefinition: true)
!3747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !3748)
!3748 = !{!3749}
!3749 = !DISubrange(count: 19)
!3750 = !{i32 7, !"Dwarf Version", i32 5}
!3751 = !{i32 2, !"Debug Info Version", i32 3}
!3752 = !{i32 1, !"wchar_size", i32 2}
!3753 = !{i32 8, !"cf-protection-branch", i32 1}
!3754 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3755 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3756 = !{i32 1, !"Code Model", i32 2}
!3757 = !{i32 1, !"override-stack-alignment", i32 8}
!3758 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3759 = distinct !DISubprogram(name: "do_timens_ktime_to_host", scope: !2, file: !2, line: 23, type: !3760, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3763)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!654, !693, !654, !3762}
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!3763 = !{!3764, !3765, !3766, !3767}
!3764 = !DILocalVariable(name: "clockid", arg: 1, scope: !3759, file: !2, line: 23, type: !693)
!3765 = !DILocalVariable(name: "tim", arg: 2, scope: !3759, file: !2, line: 23, type: !654)
!3766 = !DILocalVariable(name: "ns_offsets", arg: 3, scope: !3759, file: !2, line: 24, type: !3762)
!3767 = !DILocalVariable(name: "offset", scope: !3759, file: !2, line: 26, type: !654)
!3768 = !DILocation(line: 23, column: 43, scope: !3759)
!3769 = !DILocation(line: 23, column: 60, scope: !3759)
!3770 = !DILocation(line: 24, column: 28, scope: !3759)
!3771 = !DILocation(line: 26, column: 2, scope: !3759)
!3772 = !DILocation(line: 26, column: 10, scope: !3759)
!3773 = !DILocation(line: 28, column: 10, scope: !3759)
!3774 = !DILocation(line: 28, column: 2, scope: !3759)
!3775 = !DILocation(line: 30, column: 32, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3759, file: !2, line: 28, column: 19)
!3777 = !DILocation(line: 30, column: 44, scope: !3776)
!3778 = !DILocation(line: 30, column: 12, scope: !3776)
!3779 = !DILocation(line: 30, column: 10, scope: !3776)
!3780 = !DILocation(line: 31, column: 3, scope: !3776)
!3781 = !DILocation(line: 34, column: 32, scope: !3776)
!3782 = !DILocation(line: 34, column: 44, scope: !3776)
!3783 = !DILocation(line: 34, column: 12, scope: !3776)
!3784 = !DILocation(line: 34, column: 10, scope: !3776)
!3785 = !DILocation(line: 35, column: 3, scope: !3776)
!3786 = !DILocation(line: 37, column: 10, scope: !3776)
!3787 = !DILocation(line: 37, column: 3, scope: !3776)
!3788 = !DILocation(line: 44, column: 6, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3759, file: !2, line: 44, column: 6)
!3790 = !DILocation(line: 44, column: 12, scope: !3789)
!3791 = !DILocation(line: 44, column: 10, scope: !3789)
!3792 = !DILocation(line: 44, column: 6, scope: !3759)
!3793 = !DILocation(line: 49, column: 7, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3789, file: !2, line: 44, column: 20)
!3795 = !DILocation(line: 50, column: 2, scope: !3794)
!3796 = !DILocation(line: 51, column: 9, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3789, file: !2, line: 50, column: 9)
!3798 = !DILocation(line: 51, column: 7, scope: !3797)
!3799 = !DILocation(line: 52, column: 7, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3797, file: !2, line: 52, column: 7)
!3801 = !DILocation(line: 52, column: 7, scope: !3797)
!3802 = !DILocation(line: 53, column: 8, scope: !3800)
!3803 = !DILocation(line: 53, column: 4, scope: !3800)
!3804 = !DILocation(line: 56, column: 9, scope: !3759)
!3805 = !DILocation(line: 56, column: 2, scope: !3759)
!3806 = !DILocation(line: 57, column: 1, scope: !3759)
!3807 = distinct !DISubprogram(name: "timespec64_to_ktime", scope: !655, file: !655, line: 71, type: !3808, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3810)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!654, !1098}
!3810 = !{!3811}
!3811 = !DILocalVariable(name: "ts", arg: 1, scope: !3807, file: !655, line: 71, type: !1098)
!3812 = !DILocation(line: 71, column: 61, scope: !3807)
!3813 = !DILocation(line: 73, column: 22, scope: !3807)
!3814 = !DILocation(line: 73, column: 33, scope: !3807)
!3815 = !DILocation(line: 73, column: 9, scope: !3807)
!3816 = !DILocation(line: 73, column: 2, scope: !3807)
!3817 = distinct !DISubprogram(name: "copy_time_ns", scope: !2, file: !2, line: 133, type: !3818, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3820)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!2814, !112, !479, !2814}
!3820 = !{!3821, !3822, !3823}
!3821 = !DILocalVariable(name: "flags", arg: 1, scope: !3817, file: !2, line: 133, type: !112)
!3822 = !DILocalVariable(name: "user_ns", arg: 2, scope: !3817, file: !2, line: 134, type: !479)
!3823 = !DILocalVariable(name: "old_ns", arg: 3, scope: !3817, file: !2, line: 134, type: !2814)
!3824 = !DILocation(line: 133, column: 51, scope: !3817)
!3825 = !DILocation(line: 134, column: 25, scope: !3817)
!3826 = !DILocation(line: 134, column: 57, scope: !3817)
!3827 = !DILocation(line: 136, column: 8, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3817, file: !2, line: 136, column: 6)
!3829 = !DILocation(line: 136, column: 14, scope: !3828)
!3830 = !DILocation(line: 136, column: 6, scope: !3817)
!3831 = !DILocation(line: 137, column: 22, scope: !3828)
!3832 = !DILocation(line: 137, column: 10, scope: !3828)
!3833 = !DILocation(line: 137, column: 3, scope: !3828)
!3834 = !DILocation(line: 139, column: 23, scope: !3817)
!3835 = !DILocation(line: 139, column: 32, scope: !3817)
!3836 = !DILocation(line: 139, column: 9, scope: !3817)
!3837 = !DILocation(line: 139, column: 2, scope: !3817)
!3838 = !DILocation(line: 140, column: 1, scope: !3817)
!3839 = distinct !DISubprogram(name: "get_time_ns", scope: !2816, file: !2816, line: 36, type: !3840, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3842)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!2814, !2814}
!3842 = !{!3843}
!3843 = !DILocalVariable(name: "ns", arg: 1, scope: !3839, file: !2816, line: 36, type: !2814)
!3844 = !DILocation(line: 36, column: 73, scope: !3839)
!3845 = !DILocation(line: 38, column: 16, scope: !3839)
!3846 = !DILocation(line: 38, column: 20, scope: !3839)
!3847 = !DILocation(line: 38, column: 23, scope: !3839)
!3848 = !DILocation(line: 38, column: 2, scope: !3839)
!3849 = !DILocation(line: 39, column: 9, scope: !3839)
!3850 = !DILocation(line: 39, column: 2, scope: !3839)
!3851 = distinct !DISubprogram(name: "clone_time_ns", scope: !2, file: !2, line: 78, type: !3852, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3854)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!2814, !479, !2814}
!3854 = !{!3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863}
!3855 = !DILocalVariable(name: "user_ns", arg: 1, scope: !3851, file: !2, line: 78, type: !479)
!3856 = !DILocalVariable(name: "old_ns", arg: 2, scope: !3851, file: !2, line: 79, type: !2814)
!3857 = !DILocalVariable(name: "ns", scope: !3851, file: !2, line: 81, type: !2814)
!3858 = !DILocalVariable(name: "ucounts", scope: !3851, file: !2, line: 82, type: !2820)
!3859 = !DILocalVariable(name: "err", scope: !3851, file: !2, line: 83, type: !95)
!3860 = !DILabel(scope: !3851, name: "fail_free_page", file: !2, line: 112)
!3861 = !DILabel(scope: !3851, name: "fail_free", file: !2, line: 114)
!3862 = !DILabel(scope: !3851, name: "fail_dec", file: !2, line: 116)
!3863 = !DILabel(scope: !3851, name: "fail", file: !2, line: 118)
!3864 = !DILocation(line: 78, column: 68, scope: !3851)
!3865 = !DILocation(line: 79, column: 31, scope: !3851)
!3866 = !DILocation(line: 81, column: 2, scope: !3851)
!3867 = !DILocation(line: 81, column: 25, scope: !3851)
!3868 = !DILocation(line: 82, column: 2, scope: !3851)
!3869 = !DILocation(line: 82, column: 18, scope: !3851)
!3870 = !DILocation(line: 83, column: 2, scope: !3851)
!3871 = !DILocation(line: 83, column: 6, scope: !3851)
!3872 = !DILocation(line: 85, column: 6, scope: !3851)
!3873 = !DILocation(line: 86, column: 32, scope: !3851)
!3874 = !DILocation(line: 86, column: 12, scope: !3851)
!3875 = !DILocation(line: 86, column: 10, scope: !3851)
!3876 = !DILocation(line: 87, column: 7, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3851, file: !2, line: 87, column: 6)
!3878 = !DILocation(line: 87, column: 6, scope: !3851)
!3879 = !DILocation(line: 88, column: 3, scope: !3877)
!3880 = !DILocation(line: 90, column: 6, scope: !3851)
!3881 = !DILocation(line: 91, column: 7, scope: !3851)
!3882 = !DILocation(line: 91, column: 5, scope: !3851)
!3883 = !DILocation(line: 92, column: 7, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3851, file: !2, line: 92, column: 6)
!3885 = !DILocation(line: 92, column: 6, scope: !3851)
!3886 = !DILocation(line: 93, column: 3, scope: !3884)
!3887 = !DILocation(line: 95, column: 16, scope: !3851)
!3888 = !DILocation(line: 95, column: 20, scope: !3851)
!3889 = !DILocation(line: 95, column: 23, scope: !3851)
!3890 = !DILocation(line: 95, column: 2, scope: !3851)
!3891 = !DILocation(line: 97, column: 18, scope: !3851)
!3892 = !DILocation(line: 97, column: 2, scope: !3851)
!3893 = !DILocation(line: 97, column: 6, scope: !3851)
!3894 = !DILocation(line: 97, column: 16, scope: !3851)
!3895 = !DILocation(line: 98, column: 7, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3851, file: !2, line: 98, column: 6)
!3897 = !DILocation(line: 98, column: 11, scope: !3896)
!3898 = !DILocation(line: 98, column: 6, scope: !3851)
!3899 = !DILocation(line: 99, column: 3, scope: !3896)
!3900 = !DILocation(line: 101, column: 23, scope: !3851)
!3901 = !DILocation(line: 101, column: 27, scope: !3851)
!3902 = !DILocation(line: 101, column: 8, scope: !3851)
!3903 = !DILocation(line: 101, column: 6, scope: !3851)
!3904 = !DILocation(line: 102, column: 6, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3851, file: !2, line: 102, column: 6)
!3906 = !DILocation(line: 102, column: 6, scope: !3851)
!3907 = !DILocation(line: 103, column: 3, scope: !3905)
!3908 = !DILocation(line: 105, column: 16, scope: !3851)
!3909 = !DILocation(line: 105, column: 2, scope: !3851)
!3910 = !DILocation(line: 105, column: 6, scope: !3851)
!3911 = !DILocation(line: 105, column: 14, scope: !3851)
!3912 = !DILocation(line: 106, column: 2, scope: !3851)
!3913 = !DILocation(line: 106, column: 6, scope: !3851)
!3914 = !DILocation(line: 106, column: 9, scope: !3851)
!3915 = !DILocation(line: 106, column: 13, scope: !3851)
!3916 = !DILocation(line: 107, column: 28, scope: !3851)
!3917 = !DILocation(line: 107, column: 16, scope: !3851)
!3918 = !DILocation(line: 107, column: 2, scope: !3851)
!3919 = !DILocation(line: 107, column: 6, scope: !3851)
!3920 = !DILocation(line: 107, column: 14, scope: !3851)
!3921 = !DILocation(line: 108, column: 2, scope: !3851)
!3922 = !DILocation(line: 108, column: 6, scope: !3851)
!3923 = !DILocation(line: 108, column: 16, scope: !3851)
!3924 = !DILocation(line: 108, column: 24, scope: !3851)
!3925 = !DILocation(line: 109, column: 2, scope: !3851)
!3926 = !DILocation(line: 109, column: 6, scope: !3851)
!3927 = !DILocation(line: 109, column: 21, scope: !3851)
!3928 = !DILocation(line: 110, column: 9, scope: !3851)
!3929 = !DILocation(line: 110, column: 2, scope: !3851)
!3930 = !DILocation(line: 112, column: 1, scope: !3851)
!3931 = !DILocation(line: 113, column: 2, scope: !3851)
!3932 = !DILocation(line: 114, column: 1, scope: !3851)
!3933 = !DILocation(line: 115, column: 8, scope: !3851)
!3934 = !DILocation(line: 115, column: 2, scope: !3851)
!3935 = !DILocation(line: 116, column: 1, scope: !3851)
!3936 = !DILocation(line: 117, column: 22, scope: !3851)
!3937 = !DILocation(line: 117, column: 2, scope: !3851)
!3938 = !DILocation(line: 118, column: 1, scope: !3851)
!3939 = !DILocation(line: 119, column: 17, scope: !3851)
!3940 = !DILocation(line: 119, column: 9, scope: !3851)
!3941 = !DILocation(line: 119, column: 2, scope: !3851)
!3942 = !DILocation(line: 120, column: 1, scope: !3851)
!3943 = distinct !DISubprogram(name: "find_timens_vvar_page", scope: !2, file: !2, line: 195, type: !3944, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3946)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!1811, !1931}
!3946 = !{!3947, !3948, !3950}
!3947 = !DILocalVariable(name: "vma", arg: 1, scope: !3943, file: !2, line: 195, type: !1931)
!3948 = !DILocalVariable(name: "__ret_warn_on", scope: !3949, file: !2, line: 208, type: !95)
!3949 = distinct !DILexicalBlock(scope: !3943, file: !2, line: 208, column: 2)
!3950 = !DILocalVariable(name: "__flags", scope: !3951, file: !2, line: 208, type: !95)
!3951 = distinct !DILexicalBlock(scope: !3952, file: !2, line: 208, column: 2)
!3952 = distinct !DILexicalBlock(scope: !3953, file: !2, line: 208, column: 2)
!3953 = distinct !DILexicalBlock(scope: !3949, file: !2, line: 208, column: 2)
!3954 = !DILocation(line: 195, column: 59, scope: !3943)
!3955 = !DILocation(line: 197, column: 6, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3943, file: !2, line: 197, column: 6)
!3957 = !DILocation(line: 197, column: 6, scope: !3943)
!3958 = !DILocation(line: 198, column: 10, scope: !3956)
!3959 = !DILocation(line: 198, column: 19, scope: !3956)
!3960 = !DILocation(line: 198, column: 28, scope: !3956)
!3961 = !DILocation(line: 198, column: 37, scope: !3956)
!3962 = !DILocation(line: 198, column: 3, scope: !3956)
!3963 = !DILocation(line: 208, column: 2, scope: !3949)
!3964 = !DILocation(line: 208, column: 2, scope: !3953)
!3965 = !DILocation(line: 208, column: 2, scope: !3952)
!3966 = !DILocation(line: 208, column: 2, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3952, file: !2, line: 208, column: 2)
!3968 = !DILocation(line: 208, column: 2, scope: !3951)
!3969 = !DILocation(line: 208, column: 2, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3951, file: !2, line: 208, column: 2)
!3971 = !DILocation(line: 208, column: 2, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3951, file: !2, line: 208, column: 2)
!3973 = !{i64 2154376254, i64 2154376283, i64 2154376329, i64 2154376387, i64 2154376441, i64 2154376495, i64 2154376550, i64 2154376581, i64 2154376889, i64 2154376895, i64 2154376942, i64 2154376965, i64 2154376991}
!3974 = !DILocation(line: 208, column: 2, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3951, file: !2, line: 208, column: 2)
!3976 = !DILocation(line: 208, column: 2, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3952, file: !2, line: 208, column: 2)
!3978 = !DILocation(line: 208, column: 2, scope: !3943)
!3979 = !DILocation(line: 210, column: 2, scope: !3943)
!3980 = !DILocation(line: 211, column: 1, scope: !3943)
!3981 = distinct !DISubprogram(name: "get_current", scope: !3982, file: !3982, line: 39, type: !3983, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3985)
!3982 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!529}
!3985 = !{!3986, !3988, !3990}
!3986 = !DILocalVariable(name: "pscr_ret__", scope: !3987, file: !3982, line: 41, type: !529)
!3987 = distinct !DILexicalBlock(scope: !3981, file: !3982, line: 41, column: 9)
!3988 = !DILocalVariable(name: "__vpp_verify", scope: !3989, file: !3982, line: 41, type: !3361)
!3989 = distinct !DILexicalBlock(scope: !3987, file: !3982, line: 41, column: 9)
!3990 = !DILocalVariable(name: "pfo_val__", scope: !3991, file: !3982, line: 41, type: !236)
!3991 = distinct !DILexicalBlock(scope: !3987, file: !3982, line: 41, column: 9)
!3992 = !DILocation(line: 41, column: 9, scope: !3987)
!3993 = !DILocation(line: 41, column: 9, scope: !3989)
!3994 = !DILocation(line: 41, column: 9, scope: !3991)
!3995 = !{i64 2148204428}
!3996 = !DILocation(line: 41, column: 9, scope: !3981)
!3997 = !DILocation(line: 41, column: 2, scope: !3981)
!3998 = !DISubprogram(name: "__warn_printk", scope: !3999, file: !3999, line: 93, type: !4000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3999 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4000 = !DISubroutineType(types: !4001)
!4001 = !{null, !90, null}
!4002 = distinct !DISubprogram(name: "free_time_ns", scope: !2, file: !2, line: 247, type: !4003, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4005)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{null, !2814}
!4005 = !{!4006}
!4006 = !DILocalVariable(name: "ns", arg: 1, scope: !4002, file: !2, line: 247, type: !2814)
!4007 = !DILocation(line: 247, column: 42, scope: !4002)
!4008 = !DILocation(line: 249, column: 22, scope: !4002)
!4009 = !DILocation(line: 249, column: 26, scope: !4002)
!4010 = !DILocation(line: 249, column: 2, scope: !4002)
!4011 = !DILocation(line: 250, column: 14, scope: !4002)
!4012 = !DILocation(line: 250, column: 18, scope: !4002)
!4013 = !DILocation(line: 250, column: 2, scope: !4002)
!4014 = !DILocation(line: 251, column: 2, scope: !4002)
!4015 = !DILocation(line: 252, column: 2, scope: !4002)
!4016 = !DILocation(line: 253, column: 8, scope: !4002)
!4017 = !DILocation(line: 253, column: 2, scope: !4002)
!4018 = !DILocation(line: 254, column: 1, scope: !4002)
!4019 = distinct !DISubprogram(name: "dec_time_namespaces", scope: !2, file: !2, line: 64, type: !4020, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4022)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{null, !2820}
!4022 = !{!4023}
!4023 = !DILocalVariable(name: "ucounts", arg: 1, scope: !4019, file: !2, line: 64, type: !2820)
!4024 = !DILocation(line: 64, column: 49, scope: !4019)
!4025 = !DILocation(line: 66, column: 13, scope: !4019)
!4026 = !DILocation(line: 66, column: 2, scope: !4019)
!4027 = !DILocation(line: 67, column: 1, scope: !4019)
!4028 = distinct !DISubprogram(name: "put_user_ns", scope: !194, file: !194, line: 203, type: !4029, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4031)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{null, !479}
!4031 = !{!4032}
!4032 = !DILocalVariable(name: "ns", arg: 1, scope: !4028, file: !194, line: 203, type: !479)
!4033 = !DILocation(line: 203, column: 55, scope: !4028)
!4034 = !DILocation(line: 205, column: 1, scope: !4028)
!4035 = !DISubprogram(name: "proc_free_inum", scope: !519, file: !519, line: 54, type: !4036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{null, !18}
!4038 = !DISubprogram(name: "__free_pages", scope: !4039, file: !4039, line: 302, type: !4040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4039 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!4040 = !DISubroutineType(types: !4041)
!4041 = !{null, !1811, !18}
!4042 = !DISubprogram(name: "kfree", scope: !208, file: !208, line: 227, type: !4043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{null, !3361}
!4045 = distinct !DISubprogram(name: "timens_commit", scope: !2, file: !2, line: 298, type: !4046, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4048)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{null, !529, !2814}
!4048 = !{!4049, !4050}
!4049 = !DILocalVariable(name: "tsk", arg: 1, scope: !4045, file: !2, line: 298, type: !529)
!4050 = !DILocalVariable(name: "ns", arg: 2, scope: !4045, file: !2, line: 298, type: !2814)
!4051 = !DILocation(line: 298, column: 40, scope: !4045)
!4052 = !DILocation(line: 298, column: 68, scope: !4045)
!4053 = !DILocation(line: 300, column: 23, scope: !4045)
!4054 = !DILocation(line: 300, column: 28, scope: !4045)
!4055 = !DILocation(line: 300, column: 2, scope: !4045)
!4056 = !DILocation(line: 301, column: 19, scope: !4045)
!4057 = !DILocation(line: 301, column: 24, scope: !4045)
!4058 = !DILocation(line: 301, column: 2, scope: !4045)
!4059 = !DILocation(line: 302, column: 1, scope: !4045)
!4060 = distinct !DISubprogram(name: "timens_set_vvar_page", scope: !2, file: !2, line: 219, type: !4046, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4061)
!4061 = !{!4062, !4063, !4064, !4097, !4098}
!4062 = !DILocalVariable(name: "task", arg: 1, scope: !4060, file: !2, line: 219, type: !529)
!4063 = !DILocalVariable(name: "ns", arg: 2, scope: !4060, file: !2, line: 220, type: !2814)
!4064 = !DILocalVariable(name: "vdata", scope: !4060, file: !2, line: 222, type: !4065)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_data", file: !4067, line: 90, size: 1920, elements: !4068)
!4067 = !DIFile(filename: "./include/vdso/datapage.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd561b8fc8d778c148cc9e4ad5fe7dc5")
!4068 = !{!4069, !4070, !4071, !4072, !4073, !4074, !4075, !4091, !4092, !4093, !4094, !4095}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4066, file: !4067, line: 91, baseType: !343, size: 32)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "clock_mode", scope: !4066, file: !4067, line: 93, baseType: !298, size: 32, offset: 32)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "cycle_last", scope: !4066, file: !4067, line: 94, baseType: !236, size: 64, offset: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4066, file: !4067, line: 95, baseType: !236, size: 64, offset: 128)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !4066, file: !4067, line: 96, baseType: !343, size: 32, offset: 192)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !4066, file: !4067, line: 97, baseType: !343, size: 32, offset: 224)
!4075 = !DIDerivedType(tag: DW_TAG_member, scope: !4066, file: !4067, line: 99, baseType: !4076, size: 1536, offset: 256)
!4076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4066, file: !4067, line: 99, size: 1536, elements: !4077)
!4077 = !{!4078, !4084}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "basetime", scope: !4076, file: !4067, line: 100, baseType: !4079, size: 1536)
!4079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4080, size: 1536, elements: !3490)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_timestamp", file: !4067, line: 54, size: 128, elements: !4081)
!4081 = !{!4082, !4083}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !4080, file: !4067, line: 55, baseType: !236, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !4080, file: !4067, line: 56, baseType: !236, size: 64, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4076, file: !4067, line: 101, baseType: !4085, size: 1536)
!4085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4086, size: 1536, elements: !3490)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timens_offset", file: !4087, line: 7, size: 128, elements: !4088)
!4087 = !DIFile(filename: "./include/vdso/time.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba8fbefc3ceb6aad90a49911c36b3121")
!4088 = !{!4089, !4090}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !4086, file: !4087, line: 8, baseType: !234, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !4086, file: !4087, line: 9, baseType: !236, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "tz_minuteswest", scope: !4066, file: !4067, line: 104, baseType: !298, size: 32, offset: 1792)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "tz_dsttime", scope: !4066, file: !4067, line: 105, baseType: !298, size: 32, offset: 1824)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_res", scope: !4066, file: !4067, line: 106, baseType: !343, size: 32, offset: 1856)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !4066, file: !4067, line: 107, baseType: !343, size: 32, offset: 1888)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4066, file: !4067, line: 109, baseType: !4096, offset: 1920)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_vdso_data", file: !4067, line: 25, elements: !848)
!4097 = !DILocalVariable(name: "i", scope: !4060, file: !2, line: 223, type: !18)
!4098 = !DILabel(scope: !4060, name: "out", file: !2, line: 243)
!4099 = !DILocation(line: 219, column: 54, scope: !4060)
!4100 = !DILocation(line: 220, column: 28, scope: !4060)
!4101 = !DILocation(line: 222, column: 2, scope: !4060)
!4102 = !DILocation(line: 222, column: 20, scope: !4060)
!4103 = !DILocation(line: 223, column: 2, scope: !4060)
!4104 = !DILocation(line: 223, column: 15, scope: !4060)
!4105 = !DILocation(line: 225, column: 6, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4060, file: !2, line: 225, column: 6)
!4107 = !DILocation(line: 225, column: 9, scope: !4106)
!4108 = !DILocation(line: 225, column: 6, scope: !4060)
!4109 = !DILocation(line: 226, column: 3, scope: !4106)
!4110 = !DILocation(line: 229, column: 6, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4060, file: !2, line: 229, column: 6)
!4112 = !{i8 0, i8 2}
!4113 = !DILocation(line: 229, column: 6, scope: !4060)
!4114 = !DILocation(line: 230, column: 3, scope: !4111)
!4115 = !DILocation(line: 232, column: 2, scope: !4060)
!4116 = !DILocation(line: 234, column: 6, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4060, file: !2, line: 234, column: 6)
!4118 = !DILocation(line: 234, column: 10, scope: !4117)
!4119 = !DILocation(line: 234, column: 6, scope: !4060)
!4120 = !DILocation(line: 235, column: 3, scope: !4117)
!4121 = !DILocation(line: 237, column: 2, scope: !4060)
!4122 = !DILocation(line: 237, column: 6, scope: !4060)
!4123 = !DILocation(line: 237, column: 21, scope: !4060)
!4124 = !DILocation(line: 238, column: 29, scope: !4060)
!4125 = !DILocation(line: 238, column: 10, scope: !4060)
!4126 = !DILocation(line: 238, column: 8, scope: !4060)
!4127 = !DILocation(line: 240, column: 9, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4060, file: !2, line: 240, column: 2)
!4129 = !DILocation(line: 240, column: 7, scope: !4128)
!4130 = !DILocation(line: 240, column: 14, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4128, file: !2, line: 240, column: 2)
!4132 = !DILocation(line: 240, column: 16, scope: !4131)
!4133 = !DILocation(line: 240, column: 2, scope: !4128)
!4134 = !DILocation(line: 241, column: 27, scope: !4131)
!4135 = !DILocation(line: 241, column: 33, scope: !4131)
!4136 = !DILocation(line: 241, column: 37, scope: !4131)
!4137 = !DILocation(line: 241, column: 3, scope: !4131)
!4138 = !DILocation(line: 240, column: 29, scope: !4131)
!4139 = !DILocation(line: 240, column: 2, scope: !4131)
!4140 = distinct !{!4140, !4133, !4141, !4142, !4143}
!4141 = !DILocation(line: 241, column: 39, scope: !4128)
!4142 = !{!"llvm.loop.mustprogress"}
!4143 = !{!"llvm.loop.unroll.disable"}
!4144 = !DILocation(line: 243, column: 1, scope: !4060)
!4145 = !DILocation(line: 244, column: 2, scope: !4060)
!4146 = !DILocation(line: 245, column: 1, scope: !4060)
!4147 = !DISubprogram(name: "vdso_join_timens", scope: !2816, file: !2816, line: 32, type: !4148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!95, !529, !2814}
!4150 = distinct !DISubprogram(name: "timens_on_fork", scope: !2, file: !2, line: 326, type: !4151, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4153)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{null, !2795, !529}
!4153 = !{!4154, !4155, !4156, !4157}
!4154 = !DILocalVariable(name: "nsproxy", arg: 1, scope: !4150, file: !2, line: 326, type: !2795)
!4155 = !DILocalVariable(name: "tsk", arg: 2, scope: !4150, file: !2, line: 326, type: !529)
!4156 = !DILocalVariable(name: "nsc", scope: !4150, file: !2, line: 328, type: !528)
!4157 = !DILocalVariable(name: "ns", scope: !4150, file: !2, line: 329, type: !2814)
!4158 = !DILocation(line: 326, column: 37, scope: !4150)
!4159 = !DILocation(line: 326, column: 66, scope: !4150)
!4160 = !DILocation(line: 328, column: 2, scope: !4150)
!4161 = !DILocation(line: 328, column: 20, scope: !4150)
!4162 = !DILocation(line: 328, column: 27, scope: !4150)
!4163 = !DILocation(line: 328, column: 36, scope: !4150)
!4164 = !DILocation(line: 328, column: 58, scope: !4150)
!4165 = !DILocation(line: 329, column: 2, scope: !4150)
!4166 = !DILocation(line: 329, column: 25, scope: !4150)
!4167 = !DILocation(line: 329, column: 41, scope: !4150)
!4168 = !DILocation(line: 329, column: 30, scope: !4150)
!4169 = !DILocation(line: 332, column: 6, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4150, file: !2, line: 332, column: 6)
!4171 = !DILocation(line: 332, column: 15, scope: !4170)
!4172 = !DILocation(line: 332, column: 26, scope: !4170)
!4173 = !DILocation(line: 332, column: 35, scope: !4170)
!4174 = !DILocation(line: 332, column: 23, scope: !4170)
!4175 = !DILocation(line: 332, column: 6, scope: !4150)
!4176 = !DILocation(line: 333, column: 3, scope: !4170)
!4177 = !DILocation(line: 335, column: 14, scope: !4150)
!4178 = !DILocation(line: 335, column: 2, scope: !4150)
!4179 = !DILocation(line: 336, column: 14, scope: !4150)
!4180 = !DILocation(line: 336, column: 23, scope: !4150)
!4181 = !DILocation(line: 336, column: 2, scope: !4150)
!4182 = !DILocation(line: 337, column: 21, scope: !4150)
!4183 = !DILocation(line: 337, column: 2, scope: !4150)
!4184 = !DILocation(line: 337, column: 11, scope: !4150)
!4185 = !DILocation(line: 337, column: 19, scope: !4150)
!4186 = !DILocation(line: 339, column: 16, scope: !4150)
!4187 = !DILocation(line: 339, column: 21, scope: !4150)
!4188 = !DILocation(line: 339, column: 2, scope: !4150)
!4189 = !DILocation(line: 340, column: 1, scope: !4150)
!4190 = distinct !DISubprogram(name: "to_time_ns", scope: !2, file: !2, line: 256, type: !4191, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4193)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!2814, !528}
!4193 = !{!4194, !4195}
!4194 = !DILocalVariable(name: "ns", arg: 1, scope: !4190, file: !2, line: 256, type: !528)
!4195 = !DILocalVariable(name: "__mptr", scope: !4196, file: !2, line: 258, type: !93)
!4196 = distinct !DILexicalBlock(scope: !4190, file: !2, line: 258, column: 9)
!4197 = !DILocation(line: 256, column: 60, scope: !4190)
!4198 = !DILocation(line: 258, column: 9, scope: !4196)
!4199 = !DILocation(line: 258, column: 9, scope: !4190)
!4200 = !DILocation(line: 258, column: 2, scope: !4190)
!4201 = distinct !DISubprogram(name: "put_time_ns", scope: !2816, file: !2816, line: 49, type: !4003, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4202)
!4202 = !{!4203}
!4203 = !DILocalVariable(name: "ns", arg: 1, scope: !4201, file: !2816, line: 49, type: !2814)
!4204 = !DILocation(line: 49, column: 55, scope: !4201)
!4205 = !DILocation(line: 51, column: 29, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4201, file: !2816, line: 51, column: 6)
!4207 = !DILocation(line: 51, column: 33, scope: !4206)
!4208 = !DILocation(line: 51, column: 36, scope: !4206)
!4209 = !DILocation(line: 51, column: 6, scope: !4206)
!4210 = !DILocation(line: 51, column: 6, scope: !4201)
!4211 = !DILocation(line: 52, column: 16, scope: !4206)
!4212 = !DILocation(line: 52, column: 3, scope: !4206)
!4213 = !DILocation(line: 53, column: 1, scope: !4201)
!4214 = distinct !DISubprogram(name: "proc_timens_show_offsets", scope: !2, file: !2, line: 365, type: !4215, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4217)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{null, !529, !1306}
!4217 = !{!4218, !4219, !4220, !4221}
!4218 = !DILocalVariable(name: "p", arg: 1, scope: !4214, file: !2, line: 365, type: !529)
!4219 = !DILocalVariable(name: "m", arg: 2, scope: !4214, file: !2, line: 365, type: !1306)
!4220 = !DILocalVariable(name: "ns", scope: !4214, file: !2, line: 367, type: !528)
!4221 = !DILocalVariable(name: "time_ns", scope: !4214, file: !2, line: 368, type: !2814)
!4222 = !DILocation(line: 365, column: 51, scope: !4214)
!4223 = !DILocation(line: 365, column: 71, scope: !4214)
!4224 = !DILocation(line: 367, column: 2, scope: !4214)
!4225 = !DILocation(line: 367, column: 20, scope: !4214)
!4226 = !DILocation(line: 368, column: 2, scope: !4214)
!4227 = !DILocation(line: 368, column: 25, scope: !4214)
!4228 = !DILocation(line: 370, column: 31, scope: !4214)
!4229 = !DILocation(line: 370, column: 7, scope: !4214)
!4230 = !DILocation(line: 370, column: 5, scope: !4214)
!4231 = !DILocation(line: 371, column: 7, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4214, file: !2, line: 371, column: 6)
!4233 = !DILocation(line: 371, column: 6, scope: !4214)
!4234 = !DILocation(line: 372, column: 3, scope: !4232)
!4235 = !DILocation(line: 373, column: 23, scope: !4214)
!4236 = !DILocation(line: 373, column: 12, scope: !4214)
!4237 = !DILocation(line: 373, column: 10, scope: !4214)
!4238 = !DILocation(line: 375, column: 14, scope: !4214)
!4239 = !DILocation(line: 375, column: 35, scope: !4214)
!4240 = !DILocation(line: 375, column: 44, scope: !4214)
!4241 = !DILocation(line: 375, column: 52, scope: !4214)
!4242 = !DILocation(line: 375, column: 2, scope: !4214)
!4243 = !DILocation(line: 376, column: 14, scope: !4214)
!4244 = !DILocation(line: 376, column: 34, scope: !4214)
!4245 = !DILocation(line: 376, column: 43, scope: !4214)
!4246 = !DILocation(line: 376, column: 51, scope: !4214)
!4247 = !DILocation(line: 376, column: 2, scope: !4214)
!4248 = !DILocation(line: 377, column: 14, scope: !4214)
!4249 = !DILocation(line: 377, column: 2, scope: !4214)
!4250 = !DILocation(line: 378, column: 1, scope: !4214)
!4251 = distinct !DISubprogram(name: "timens_for_children_get", scope: !2, file: !2, line: 277, type: !526, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4252)
!4252 = !{!4253, !4254, !4255}
!4253 = !DILocalVariable(name: "task", arg: 1, scope: !4251, file: !2, line: 277, type: !529)
!4254 = !DILocalVariable(name: "ns", scope: !4251, file: !2, line: 279, type: !2814)
!4255 = !DILocalVariable(name: "nsproxy", scope: !4251, file: !2, line: 280, type: !2795)
!4256 = !DILocation(line: 277, column: 70, scope: !4251)
!4257 = !DILocation(line: 279, column: 2, scope: !4251)
!4258 = !DILocation(line: 279, column: 25, scope: !4251)
!4259 = !DILocation(line: 280, column: 2, scope: !4251)
!4260 = !DILocation(line: 280, column: 18, scope: !4251)
!4261 = !DILocation(line: 282, column: 12, scope: !4251)
!4262 = !DILocation(line: 282, column: 2, scope: !4251)
!4263 = !DILocation(line: 283, column: 12, scope: !4251)
!4264 = !DILocation(line: 283, column: 18, scope: !4251)
!4265 = !DILocation(line: 283, column: 10, scope: !4251)
!4266 = !DILocation(line: 284, column: 6, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4251, file: !2, line: 284, column: 6)
!4268 = !DILocation(line: 284, column: 6, scope: !4251)
!4269 = !DILocation(line: 285, column: 8, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4267, file: !2, line: 284, column: 15)
!4271 = !DILocation(line: 285, column: 17, scope: !4270)
!4272 = !DILocation(line: 285, column: 6, scope: !4270)
!4273 = !DILocation(line: 286, column: 15, scope: !4270)
!4274 = !DILocation(line: 286, column: 3, scope: !4270)
!4275 = !DILocation(line: 287, column: 2, scope: !4270)
!4276 = !DILocation(line: 288, column: 14, scope: !4251)
!4277 = !DILocation(line: 288, column: 2, scope: !4251)
!4278 = !DILocation(line: 290, column: 9, scope: !4251)
!4279 = !DILocation(line: 290, column: 15, scope: !4251)
!4280 = !DILocation(line: 290, column: 19, scope: !4251)
!4281 = !DILocation(line: 291, column: 1, scope: !4251)
!4282 = !DILocation(line: 290, column: 2, scope: !4251)
!4283 = distinct !DISubprogram(name: "show_offset", scope: !2, file: !2, line: 347, type: !4284, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4287)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{null, !1306, !95, !4286}
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!4287 = !{!4288, !4289, !4290, !4291}
!4288 = !DILocalVariable(name: "m", arg: 1, scope: !4283, file: !2, line: 347, type: !1306)
!4289 = !DILocalVariable(name: "clockid", arg: 2, scope: !4283, file: !2, line: 347, type: !95)
!4290 = !DILocalVariable(name: "ts", arg: 3, scope: !4283, file: !2, line: 347, type: !4286)
!4291 = !DILocalVariable(name: "clock", scope: !4283, file: !2, line: 349, type: !398)
!4292 = !DILocation(line: 347, column: 42, scope: !4283)
!4293 = !DILocation(line: 347, column: 49, scope: !4283)
!4294 = !DILocation(line: 347, column: 77, scope: !4283)
!4295 = !DILocation(line: 349, column: 2, scope: !4283)
!4296 = !DILocation(line: 349, column: 8, scope: !4283)
!4297 = !DILocation(line: 351, column: 10, scope: !4283)
!4298 = !DILocation(line: 351, column: 2, scope: !4283)
!4299 = !DILocation(line: 353, column: 9, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4283, file: !2, line: 351, column: 19)
!4301 = !DILocation(line: 354, column: 3, scope: !4300)
!4302 = !DILocation(line: 356, column: 9, scope: !4300)
!4303 = !DILocation(line: 357, column: 3, scope: !4300)
!4304 = !DILocation(line: 359, column: 9, scope: !4300)
!4305 = !DILocation(line: 360, column: 3, scope: !4300)
!4306 = !DILocation(line: 362, column: 13, scope: !4283)
!4307 = !DILocation(line: 362, column: 39, scope: !4283)
!4308 = !DILocation(line: 362, column: 46, scope: !4283)
!4309 = !DILocation(line: 362, column: 50, scope: !4283)
!4310 = !DILocation(line: 362, column: 58, scope: !4283)
!4311 = !DILocation(line: 362, column: 62, scope: !4283)
!4312 = !DILocation(line: 362, column: 2, scope: !4283)
!4313 = !DILocation(line: 363, column: 1, scope: !4283)
!4314 = distinct !DISubprogram(name: "proc_timens_set_offset", scope: !2, file: !2, line: 380, type: !4315, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4322)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!95, !855, !529, !4317, !95}
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_timens_offset", file: !2816, line: 57, size: 192, elements: !4319)
!4319 = !{!4320, !4321}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4318, file: !2816, line: 58, baseType: !95, size: 32)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4318, file: !2816, line: 59, baseType: !1098, size: 128, offset: 64)
!4322 = !{!4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4336, !4340, !4341, !4342}
!4323 = !DILocalVariable(name: "file", arg: 1, scope: !4314, file: !2, line: 380, type: !855)
!4324 = !DILocalVariable(name: "p", arg: 2, scope: !4314, file: !2, line: 380, type: !529)
!4325 = !DILocalVariable(name: "offsets", arg: 3, scope: !4314, file: !2, line: 381, type: !4317)
!4326 = !DILocalVariable(name: "noffsets", arg: 4, scope: !4314, file: !2, line: 381, type: !95)
!4327 = !DILocalVariable(name: "ns", scope: !4314, file: !2, line: 383, type: !528)
!4328 = !DILocalVariable(name: "time_ns", scope: !4314, file: !2, line: 384, type: !2814)
!4329 = !DILocalVariable(name: "tp", scope: !4314, file: !2, line: 385, type: !1098)
!4330 = !DILocalVariable(name: "i", scope: !4314, file: !2, line: 386, type: !95)
!4331 = !DILocalVariable(name: "err", scope: !4314, file: !2, line: 386, type: !95)
!4332 = !DILocalVariable(name: "off", scope: !4333, file: !2, line: 399, type: !4317)
!4333 = distinct !DILexicalBlock(scope: !4334, file: !2, line: 398, column: 33)
!4334 = distinct !DILexicalBlock(scope: !4335, file: !2, line: 398, column: 2)
!4335 = distinct !DILexicalBlock(scope: !4314, file: !2, line: 398, column: 2)
!4336 = !DILocalVariable(name: "off", scope: !4337, file: !2, line: 437, type: !4317)
!4337 = distinct !DILexicalBlock(scope: !4338, file: !2, line: 436, column: 33)
!4338 = distinct !DILexicalBlock(scope: !4339, file: !2, line: 436, column: 2)
!4339 = distinct !DILexicalBlock(scope: !4314, file: !2, line: 436, column: 2)
!4340 = !DILocalVariable(name: "offset", scope: !4337, file: !2, line: 438, type: !4286)
!4341 = !DILabel(scope: !4314, name: "out_unlock", file: !2, line: 452)
!4342 = !DILabel(scope: !4314, name: "out", file: !2, line: 454)
!4343 = !DILocation(line: 380, column: 41, scope: !4314)
!4344 = !DILocation(line: 380, column: 67, scope: !4314)
!4345 = !DILocation(line: 381, column: 34, scope: !4314)
!4346 = !DILocation(line: 381, column: 47, scope: !4314)
!4347 = !DILocation(line: 383, column: 2, scope: !4314)
!4348 = !DILocation(line: 383, column: 20, scope: !4314)
!4349 = !DILocation(line: 384, column: 2, scope: !4314)
!4350 = !DILocation(line: 384, column: 25, scope: !4314)
!4351 = !DILocation(line: 385, column: 2, scope: !4314)
!4352 = !DILocation(line: 385, column: 20, scope: !4314)
!4353 = !DILocation(line: 386, column: 2, scope: !4314)
!4354 = !DILocation(line: 386, column: 6, scope: !4314)
!4355 = !DILocation(line: 386, column: 9, scope: !4314)
!4356 = !DILocation(line: 388, column: 31, scope: !4314)
!4357 = !DILocation(line: 388, column: 7, scope: !4314)
!4358 = !DILocation(line: 388, column: 5, scope: !4314)
!4359 = !DILocation(line: 389, column: 7, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4314, file: !2, line: 389, column: 6)
!4361 = !DILocation(line: 389, column: 6, scope: !4314)
!4362 = !DILocation(line: 390, column: 3, scope: !4360)
!4363 = !DILocation(line: 391, column: 23, scope: !4314)
!4364 = !DILocation(line: 391, column: 12, scope: !4314)
!4365 = !DILocation(line: 391, column: 10, scope: !4314)
!4366 = !DILocation(line: 393, column: 23, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4314, file: !2, line: 393, column: 6)
!4368 = !DILocation(line: 393, column: 29, scope: !4367)
!4369 = !DILocation(line: 393, column: 38, scope: !4367)
!4370 = !DILocation(line: 393, column: 7, scope: !4367)
!4371 = !DILocation(line: 393, column: 6, scope: !4314)
!4372 = !DILocation(line: 394, column: 15, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4367, file: !2, line: 393, column: 62)
!4374 = !DILocation(line: 394, column: 3, scope: !4373)
!4375 = !DILocation(line: 395, column: 3, scope: !4373)
!4376 = !DILocation(line: 398, column: 9, scope: !4335)
!4377 = !DILocation(line: 398, column: 7, scope: !4335)
!4378 = !DILocation(line: 398, column: 14, scope: !4334)
!4379 = !DILocation(line: 398, column: 18, scope: !4334)
!4380 = !DILocation(line: 398, column: 16, scope: !4334)
!4381 = !DILocation(line: 398, column: 2, scope: !4335)
!4382 = !DILocation(line: 399, column: 3, scope: !4333)
!4383 = !DILocation(line: 399, column: 30, scope: !4333)
!4384 = !DILocation(line: 399, column: 37, scope: !4333)
!4385 = !DILocation(line: 399, column: 45, scope: !4333)
!4386 = !DILocation(line: 401, column: 11, scope: !4333)
!4387 = !DILocation(line: 401, column: 16, scope: !4333)
!4388 = !DILocation(line: 401, column: 3, scope: !4333)
!4389 = !DILocation(line: 403, column: 4, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4333, file: !2, line: 401, column: 25)
!4391 = !DILocation(line: 404, column: 4, scope: !4390)
!4392 = !DILocation(line: 406, column: 4, scope: !4390)
!4393 = !DILocation(line: 407, column: 4, scope: !4390)
!4394 = !DILocation(line: 409, column: 8, scope: !4390)
!4395 = !DILocation(line: 410, column: 4, scope: !4390)
!4396 = !DILocation(line: 413, column: 7, scope: !4333)
!4397 = !DILocation(line: 415, column: 7, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4333, file: !2, line: 415, column: 7)
!4399 = !DILocation(line: 415, column: 12, scope: !4398)
!4400 = !DILocation(line: 415, column: 16, scope: !4398)
!4401 = !DILocation(line: 415, column: 23, scope: !4398)
!4402 = !DILocation(line: 415, column: 39, scope: !4398)
!4403 = !DILocation(line: 416, column: 7, scope: !4398)
!4404 = !DILocation(line: 416, column: 12, scope: !4398)
!4405 = !DILocation(line: 416, column: 16, scope: !4398)
!4406 = !DILocation(line: 416, column: 23, scope: !4398)
!4407 = !DILocation(line: 415, column: 7, scope: !4333)
!4408 = !DILocation(line: 417, column: 4, scope: !4398)
!4409 = !DILocation(line: 419, column: 8, scope: !4333)
!4410 = !DILocation(line: 419, column: 27, scope: !4333)
!4411 = !DILocation(line: 419, column: 32, scope: !4333)
!4412 = !DILocation(line: 424, column: 10, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4333, file: !2, line: 424, column: 7)
!4414 = !DILocation(line: 424, column: 17, scope: !4413)
!4415 = !DILocation(line: 424, column: 21, scope: !4413)
!4416 = !DILocation(line: 424, column: 27, scope: !4413)
!4417 = !DILocation(line: 424, column: 34, scope: !4413)
!4418 = !DILocation(line: 424, column: 7, scope: !4333)
!4419 = !DILocation(line: 425, column: 4, scope: !4413)
!4420 = !DILocation(line: 426, column: 2, scope: !4334)
!4421 = !DILocation(line: 426, column: 2, scope: !4333)
!4422 = !DILocation(line: 398, column: 29, scope: !4334)
!4423 = !DILocation(line: 398, column: 2, scope: !4334)
!4424 = distinct !{!4424, !4381, !4425, !4142, !4143}
!4425 = !DILocation(line: 426, column: 2, scope: !4335)
!4426 = !DILocation(line: 428, column: 2, scope: !4314)
!4427 = !DILocation(line: 429, column: 6, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4314, file: !2, line: 429, column: 6)
!4429 = !DILocation(line: 429, column: 15, scope: !4428)
!4430 = !DILocation(line: 429, column: 6, scope: !4314)
!4431 = !DILocation(line: 430, column: 7, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4428, file: !2, line: 429, column: 31)
!4433 = !DILocation(line: 431, column: 3, scope: !4432)
!4434 = !DILocation(line: 434, column: 6, scope: !4314)
!4435 = !DILocation(line: 436, column: 9, scope: !4339)
!4436 = !DILocation(line: 436, column: 7, scope: !4339)
!4437 = !DILocation(line: 436, column: 14, scope: !4338)
!4438 = !DILocation(line: 436, column: 18, scope: !4338)
!4439 = !DILocation(line: 436, column: 16, scope: !4338)
!4440 = !DILocation(line: 436, column: 2, scope: !4339)
!4441 = !DILocation(line: 437, column: 3, scope: !4337)
!4442 = !DILocation(line: 437, column: 30, scope: !4337)
!4443 = !DILocation(line: 437, column: 37, scope: !4337)
!4444 = !DILocation(line: 437, column: 45, scope: !4337)
!4445 = !DILocation(line: 438, column: 3, scope: !4337)
!4446 = !DILocation(line: 438, column: 22, scope: !4337)
!4447 = !DILocation(line: 440, column: 11, scope: !4337)
!4448 = !DILocation(line: 440, column: 16, scope: !4337)
!4449 = !DILocation(line: 440, column: 3, scope: !4337)
!4450 = !DILocation(line: 442, column: 14, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4337, file: !2, line: 440, column: 25)
!4452 = !DILocation(line: 442, column: 23, scope: !4451)
!4453 = !DILocation(line: 442, column: 31, scope: !4451)
!4454 = !DILocation(line: 442, column: 11, scope: !4451)
!4455 = !DILocation(line: 443, column: 4, scope: !4451)
!4456 = !DILocation(line: 445, column: 14, scope: !4451)
!4457 = !DILocation(line: 445, column: 23, scope: !4451)
!4458 = !DILocation(line: 445, column: 31, scope: !4451)
!4459 = !DILocation(line: 445, column: 11, scope: !4451)
!4460 = !DILocation(line: 446, column: 4, scope: !4451)
!4461 = !DILocation(line: 449, column: 4, scope: !4337)
!4462 = !DILocation(line: 449, column: 13, scope: !4337)
!4463 = !DILocation(line: 449, column: 18, scope: !4337)
!4464 = !DILocation(line: 450, column: 2, scope: !4338)
!4465 = !DILocation(line: 450, column: 2, scope: !4337)
!4466 = !DILocation(line: 436, column: 29, scope: !4338)
!4467 = !DILocation(line: 436, column: 2, scope: !4338)
!4468 = distinct !{!4468, !4440, !4469, !4142, !4143}
!4469 = !DILocation(line: 450, column: 2, scope: !4339)
!4470 = !DILocation(line: 452, column: 1, scope: !4314)
!4471 = !DILocation(line: 453, column: 2, scope: !4314)
!4472 = !DILocation(line: 454, column: 1, scope: !4314)
!4473 = !DILocation(line: 455, column: 14, scope: !4314)
!4474 = !DILocation(line: 455, column: 2, scope: !4314)
!4475 = !DILocation(line: 457, column: 9, scope: !4314)
!4476 = !DILocation(line: 457, column: 2, scope: !4314)
!4477 = !DILocation(line: 458, column: 1, scope: !4314)
!4478 = !DISubprogram(name: "file_ns_capable", scope: !276, file: !276, line: 193, type: !4479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!387, !1341, !479, !95}
!4481 = !DISubprogram(name: "ktime_get_ts64", scope: !227, file: !227, line: 42, type: !4482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{null, !4286}
!4484 = distinct !DISubprogram(name: "ktime_get_boottime_ts64", scope: !227, file: !227, line: 188, type: !4482, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4485)
!4485 = !{!4486}
!4486 = !DILocalVariable(name: "ts", arg: 1, scope: !4484, file: !227, line: 188, type: !4286)
!4487 = !DILocation(line: 188, column: 63, scope: !4484)
!4488 = !DILocation(line: 190, column: 3, scope: !4484)
!4489 = !DILocation(line: 190, column: 8, scope: !4484)
!4490 = !DILocation(line: 191, column: 1, scope: !4484)
!4491 = distinct !DISubprogram(name: "timespec64_add", scope: !335, file: !335, line: 68, type: !4492, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4494)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!1098, !1098, !1098}
!4494 = !{!4495, !4496, !4497}
!4495 = !DILocalVariable(name: "lhs", arg: 1, scope: !4491, file: !335, line: 68, type: !1098)
!4496 = !DILocalVariable(name: "rhs", arg: 2, scope: !4491, file: !335, line: 69, type: !1098)
!4497 = !DILocalVariable(name: "ts_delta", scope: !4491, file: !335, line: 71, type: !1098)
!4498 = !DILocation(line: 68, column: 66, scope: !4491)
!4499 = !DILocation(line: 69, column: 25, scope: !4491)
!4500 = !DILocation(line: 71, column: 20, scope: !4491)
!4501 = !DILocation(line: 72, column: 43, scope: !4491)
!4502 = !DILocation(line: 72, column: 56, scope: !4491)
!4503 = !DILocation(line: 72, column: 50, scope: !4491)
!4504 = !DILocation(line: 73, column: 9, scope: !4491)
!4505 = !DILocation(line: 73, column: 23, scope: !4491)
!4506 = !DILocation(line: 73, column: 17, scope: !4491)
!4507 = !DILocation(line: 72, column: 2, scope: !4491)
!4508 = !DILocation(line: 74, column: 2, scope: !4491)
!4509 = !DISubprogram(name: "mutex_lock", scope: !870, file: !870, line: 227, type: !4510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{null, !4512}
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!4513 = !DISubprogram(name: "mutex_unlock", scope: !870, file: !870, line: 246, type: !4510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4514 = distinct !DISubprogram(name: "timens_get", scope: !2, file: !2, line: 261, type: !526, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4515)
!4515 = !{!4516, !4517, !4518}
!4516 = !DILocalVariable(name: "task", arg: 1, scope: !4514, file: !2, line: 261, type: !529)
!4517 = !DILocalVariable(name: "ns", scope: !4514, file: !2, line: 263, type: !2814)
!4518 = !DILocalVariable(name: "nsproxy", scope: !4514, file: !2, line: 264, type: !2795)
!4519 = !DILocation(line: 261, column: 57, scope: !4514)
!4520 = !DILocation(line: 263, column: 2, scope: !4514)
!4521 = !DILocation(line: 263, column: 25, scope: !4514)
!4522 = !DILocation(line: 264, column: 2, scope: !4514)
!4523 = !DILocation(line: 264, column: 18, scope: !4514)
!4524 = !DILocation(line: 266, column: 12, scope: !4514)
!4525 = !DILocation(line: 266, column: 2, scope: !4514)
!4526 = !DILocation(line: 267, column: 12, scope: !4514)
!4527 = !DILocation(line: 267, column: 18, scope: !4514)
!4528 = !DILocation(line: 267, column: 10, scope: !4514)
!4529 = !DILocation(line: 268, column: 6, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4514, file: !2, line: 268, column: 6)
!4531 = !DILocation(line: 268, column: 6, scope: !4514)
!4532 = !DILocation(line: 269, column: 8, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4530, file: !2, line: 268, column: 15)
!4534 = !DILocation(line: 269, column: 17, scope: !4533)
!4535 = !DILocation(line: 269, column: 6, scope: !4533)
!4536 = !DILocation(line: 270, column: 15, scope: !4533)
!4537 = !DILocation(line: 270, column: 3, scope: !4533)
!4538 = !DILocation(line: 271, column: 2, scope: !4533)
!4539 = !DILocation(line: 272, column: 14, scope: !4514)
!4540 = !DILocation(line: 272, column: 2, scope: !4514)
!4541 = !DILocation(line: 274, column: 9, scope: !4514)
!4542 = !DILocation(line: 274, column: 15, scope: !4514)
!4543 = !DILocation(line: 274, column: 19, scope: !4514)
!4544 = !DILocation(line: 275, column: 1, scope: !4514)
!4545 = !DILocation(line: 274, column: 2, scope: !4514)
!4546 = distinct !DISubprogram(name: "timens_put", scope: !2, file: !2, line: 293, type: !3602, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4547)
!4547 = !{!4548}
!4548 = !DILocalVariable(name: "ns", arg: 1, scope: !4546, file: !2, line: 293, type: !528)
!4549 = !DILocation(line: 293, column: 42, scope: !4546)
!4550 = !DILocation(line: 295, column: 25, scope: !4546)
!4551 = !DILocation(line: 295, column: 14, scope: !4546)
!4552 = !DILocation(line: 295, column: 2, scope: !4546)
!4553 = !DILocation(line: 296, column: 1, scope: !4546)
!4554 = distinct !DISubprogram(name: "timens_install", scope: !2, file: !2, line: 304, type: !3606, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4555)
!4555 = !{!4556, !4557, !4558, !4559}
!4556 = !DILocalVariable(name: "nsset", arg: 1, scope: !4554, file: !2, line: 304, type: !3608)
!4557 = !DILocalVariable(name: "new", arg: 2, scope: !4554, file: !2, line: 304, type: !528)
!4558 = !DILocalVariable(name: "nsproxy", scope: !4554, file: !2, line: 306, type: !2795)
!4559 = !DILocalVariable(name: "ns", scope: !4554, file: !2, line: 307, type: !2814)
!4560 = !DILocation(line: 304, column: 41, scope: !4554)
!4561 = !DILocation(line: 304, column: 66, scope: !4554)
!4562 = !DILocation(line: 306, column: 2, scope: !4554)
!4563 = !DILocation(line: 306, column: 18, scope: !4554)
!4564 = !DILocation(line: 306, column: 28, scope: !4554)
!4565 = !DILocation(line: 306, column: 35, scope: !4554)
!4566 = !DILocation(line: 307, column: 2, scope: !4554)
!4567 = !DILocation(line: 307, column: 25, scope: !4554)
!4568 = !DILocation(line: 307, column: 41, scope: !4554)
!4569 = !DILocation(line: 307, column: 30, scope: !4554)
!4570 = !DILocation(line: 309, column: 7, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4554, file: !2, line: 309, column: 6)
!4572 = !DILocation(line: 309, column: 6, scope: !4554)
!4573 = !DILocation(line: 310, column: 3, scope: !4571)
!4574 = !DILocation(line: 312, column: 18, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4554, file: !2, line: 312, column: 6)
!4576 = !DILocation(line: 312, column: 22, scope: !4575)
!4577 = !DILocation(line: 312, column: 7, scope: !4575)
!4578 = !DILocation(line: 312, column: 46, scope: !4575)
!4579 = !DILocation(line: 313, column: 18, scope: !4575)
!4580 = !DILocation(line: 313, column: 25, scope: !4575)
!4581 = !DILocation(line: 313, column: 31, scope: !4575)
!4582 = !DILocation(line: 313, column: 7, scope: !4575)
!4583 = !DILocation(line: 312, column: 6, scope: !4554)
!4584 = !DILocation(line: 314, column: 3, scope: !4575)
!4585 = !DILocation(line: 316, column: 14, scope: !4554)
!4586 = !DILocation(line: 316, column: 2, scope: !4554)
!4587 = !DILocation(line: 317, column: 14, scope: !4554)
!4588 = !DILocation(line: 317, column: 23, scope: !4554)
!4589 = !DILocation(line: 317, column: 2, scope: !4554)
!4590 = !DILocation(line: 318, column: 21, scope: !4554)
!4591 = !DILocation(line: 318, column: 2, scope: !4554)
!4592 = !DILocation(line: 318, column: 11, scope: !4554)
!4593 = !DILocation(line: 318, column: 19, scope: !4554)
!4594 = !DILocation(line: 320, column: 14, scope: !4554)
!4595 = !DILocation(line: 320, column: 2, scope: !4554)
!4596 = !DILocation(line: 321, column: 14, scope: !4554)
!4597 = !DILocation(line: 321, column: 23, scope: !4554)
!4598 = !DILocation(line: 321, column: 2, scope: !4554)
!4599 = !DILocation(line: 322, column: 34, scope: !4554)
!4600 = !DILocation(line: 322, column: 2, scope: !4554)
!4601 = !DILocation(line: 322, column: 11, scope: !4554)
!4602 = !DILocation(line: 322, column: 32, scope: !4554)
!4603 = !DILocation(line: 323, column: 2, scope: !4554)
!4604 = !DILocation(line: 324, column: 1, scope: !4554)
!4605 = distinct !DISubprogram(name: "timens_owner", scope: !2, file: !2, line: 342, type: !3617, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4606)
!4606 = !{!4607}
!4607 = !DILocalVariable(name: "ns", arg: 1, scope: !4605, file: !2, line: 342, type: !528)
!4608 = !DILocation(line: 342, column: 62, scope: !4605)
!4609 = !DILocation(line: 344, column: 20, scope: !4605)
!4610 = !DILocation(line: 344, column: 9, scope: !4605)
!4611 = !DILocation(line: 344, column: 25, scope: !4605)
!4612 = !DILocation(line: 344, column: 2, scope: !4605)
!4613 = distinct !DISubprogram(name: "ktime_set", scope: !655, file: !655, line: 38, type: !4614, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4617)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!654, !4616, !1869}
!4616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!4617 = !{!4618, !4619}
!4618 = !DILocalVariable(name: "secs", arg: 1, scope: !4613, file: !655, line: 38, type: !4616)
!4619 = !DILocalVariable(name: "nsecs", arg: 2, scope: !4613, file: !655, line: 38, type: !1869)
!4620 = !DILocation(line: 38, column: 43, scope: !4613)
!4621 = !DILocation(line: 38, column: 69, scope: !4613)
!4622 = !DILocation(line: 40, column: 6, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4613, file: !655, line: 40, column: 6)
!4624 = !DILocation(line: 40, column: 6, scope: !4613)
!4625 = !DILocation(line: 41, column: 3, scope: !4623)
!4626 = !DILocation(line: 43, column: 9, scope: !4613)
!4627 = !DILocation(line: 43, column: 14, scope: !4613)
!4628 = !DILocation(line: 43, column: 36, scope: !4613)
!4629 = !DILocation(line: 43, column: 29, scope: !4613)
!4630 = !DILocation(line: 43, column: 2, scope: !4613)
!4631 = !DILocation(line: 44, column: 1, scope: !4613)
!4632 = distinct !DISubprogram(name: "refcount_inc", scope: !181, file: !181, line: 265, type: !4633, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4636)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{null, !4635}
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!4636 = !{!4637}
!4637 = !DILocalVariable(name: "r", arg: 1, scope: !4632, file: !181, line: 265, type: !4635)
!4638 = !DILocation(line: 265, column: 45, scope: !4632)
!4639 = !DILocation(line: 267, column: 17, scope: !4632)
!4640 = !DILocation(line: 267, column: 2, scope: !4632)
!4641 = !DILocation(line: 268, column: 1, scope: !4632)
!4642 = distinct !DISubprogram(name: "__refcount_inc", scope: !181, file: !181, line: 248, type: !4643, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4645)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{null, !4635, !1300}
!4645 = !{!4646, !4647}
!4646 = !DILocalVariable(name: "r", arg: 1, scope: !4642, file: !181, line: 248, type: !4635)
!4647 = !DILocalVariable(name: "oldp", arg: 2, scope: !4642, file: !181, line: 248, type: !1300)
!4648 = !DILocation(line: 248, column: 47, scope: !4642)
!4649 = !DILocation(line: 248, column: 55, scope: !4642)
!4650 = !DILocation(line: 250, column: 20, scope: !4642)
!4651 = !DILocation(line: 250, column: 23, scope: !4642)
!4652 = !DILocation(line: 250, column: 2, scope: !4642)
!4653 = !DILocation(line: 251, column: 1, scope: !4642)
!4654 = distinct !DISubprogram(name: "__refcount_add", scope: !181, file: !181, line: 191, type: !4655, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4657)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{null, !95, !4635, !1300}
!4657 = !{!4658, !4659, !4660, !4661}
!4658 = !DILocalVariable(name: "i", arg: 1, scope: !4654, file: !181, line: 191, type: !95)
!4659 = !DILocalVariable(name: "r", arg: 2, scope: !4654, file: !181, line: 191, type: !4635)
!4660 = !DILocalVariable(name: "oldp", arg: 3, scope: !4654, file: !181, line: 191, type: !1300)
!4661 = !DILocalVariable(name: "old", scope: !4654, file: !181, line: 193, type: !95)
!4662 = !DILocation(line: 191, column: 39, scope: !4654)
!4663 = !DILocation(line: 191, column: 54, scope: !4654)
!4664 = !DILocation(line: 191, column: 62, scope: !4654)
!4665 = !DILocation(line: 193, column: 2, scope: !4654)
!4666 = !DILocation(line: 193, column: 6, scope: !4654)
!4667 = !DILocation(line: 193, column: 37, scope: !4654)
!4668 = !DILocation(line: 193, column: 41, scope: !4654)
!4669 = !DILocation(line: 193, column: 44, scope: !4654)
!4670 = !DILocation(line: 193, column: 12, scope: !4654)
!4671 = !DILocation(line: 195, column: 6, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4654, file: !181, line: 195, column: 6)
!4673 = !DILocation(line: 195, column: 6, scope: !4654)
!4674 = !DILocation(line: 196, column: 11, scope: !4672)
!4675 = !DILocation(line: 196, column: 4, scope: !4672)
!4676 = !DILocation(line: 196, column: 9, scope: !4672)
!4677 = !DILocation(line: 196, column: 3, scope: !4672)
!4678 = !DILocation(line: 198, column: 6, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4654, file: !181, line: 198, column: 6)
!4680 = !DILocation(line: 198, column: 6, scope: !4654)
!4681 = !DILocation(line: 199, column: 26, scope: !4679)
!4682 = !DILocation(line: 199, column: 3, scope: !4679)
!4683 = !DILocation(line: 200, column: 11, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4679, file: !181, line: 200, column: 11)
!4685 = !DILocation(line: 200, column: 11, scope: !4679)
!4686 = !DILocation(line: 201, column: 26, scope: !4684)
!4687 = !DILocation(line: 201, column: 3, scope: !4684)
!4688 = !DILocation(line: 202, column: 1, scope: !4654)
!4689 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !4690, file: !4690, line: 250, type: !4691, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4694)
!4690 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!95, !95, !4693}
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!4694 = !{!4695, !4696}
!4695 = !DILocalVariable(name: "i", arg: 1, scope: !4689, file: !4690, line: 250, type: !95)
!4696 = !DILocalVariable(name: "v", arg: 2, scope: !4689, file: !4690, line: 250, type: !4693)
!4697 = !DILocation(line: 250, column: 30, scope: !4689)
!4698 = !DILocation(line: 250, column: 43, scope: !4689)
!4699 = !DILocation(line: 252, column: 31, scope: !4689)
!4700 = !DILocation(line: 252, column: 2, scope: !4689)
!4701 = !DILocation(line: 253, column: 38, scope: !4689)
!4702 = !DILocation(line: 253, column: 41, scope: !4689)
!4703 = !DILocation(line: 253, column: 9, scope: !4689)
!4704 = !DILocation(line: 253, column: 2, scope: !4689)
!4705 = !DISubprogram(name: "refcount_warn_saturate", scope: !181, file: !181, line: 127, type: !4706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{null, !4635, !180}
!4708 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4709, file: !4709, line: 94, type: !4710, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4715)
!4709 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4710 = !DISubroutineType(types: !4711)
!4711 = !{null, !4712, !108}
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4714)
!4714 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4715 = !{!4716, !4717}
!4716 = !DILocalVariable(name: "v", arg: 1, scope: !4708, file: !4709, line: 94, type: !4712)
!4717 = !DILocalVariable(name: "size", arg: 2, scope: !4708, file: !4709, line: 94, type: !108)
!4718 = !DILocation(line: 94, column: 79, scope: !4708)
!4719 = !DILocation(line: 94, column: 89, scope: !4708)
!4720 = !DILocation(line: 96, column: 20, scope: !4708)
!4721 = !DILocation(line: 96, column: 23, scope: !4708)
!4722 = !DILocation(line: 96, column: 2, scope: !4708)
!4723 = !DILocation(line: 97, column: 2, scope: !4708)
!4724 = !DILocation(line: 98, column: 1, scope: !4708)
!4725 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !4726, file: !4726, line: 731, type: !4691, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4727)
!4726 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4727 = !{!4728, !4729}
!4728 = !DILocalVariable(name: "i", arg: 1, scope: !4725, file: !4726, line: 731, type: !95)
!4729 = !DILocalVariable(name: "v", arg: 2, scope: !4725, file: !4726, line: 731, type: !4693)
!4730 = !DILocation(line: 731, column: 34, scope: !4725)
!4731 = !DILocation(line: 731, column: 47, scope: !4725)
!4732 = !DILocation(line: 736, column: 31, scope: !4725)
!4733 = !DILocation(line: 736, column: 34, scope: !4725)
!4734 = !DILocation(line: 736, column: 9, scope: !4725)
!4735 = !DILocation(line: 736, column: 2, scope: !4725)
!4736 = distinct !DISubprogram(name: "kasan_check_write", scope: !4737, file: !4737, line: 44, type: !4738, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4740)
!4737 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!387, !4712, !18}
!4740 = !{!4741, !4742}
!4741 = !DILocalVariable(name: "p", arg: 1, scope: !4736, file: !4737, line: 44, type: !4712)
!4742 = !DILocalVariable(name: "size", arg: 2, scope: !4736, file: !4737, line: 44, type: !18)
!4743 = !DILocation(line: 44, column: 59, scope: !4736)
!4744 = !DILocation(line: 44, column: 75, scope: !4736)
!4745 = !DILocation(line: 46, column: 2, scope: !4736)
!4746 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4747, file: !4747, line: 229, type: !4748, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4750)
!4747 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4748 = !DISubroutineType(types: !4749)
!4749 = !{null, !4712, !108, !95}
!4750 = !{!4751, !4752, !4753}
!4751 = !DILocalVariable(name: "ptr", arg: 1, scope: !4746, file: !4747, line: 229, type: !4712)
!4752 = !DILocalVariable(name: "size", arg: 2, scope: !4746, file: !4747, line: 229, type: !108)
!4753 = !DILocalVariable(name: "type", arg: 3, scope: !4746, file: !4747, line: 230, type: !95)
!4754 = !DILocation(line: 229, column: 60, scope: !4746)
!4755 = !DILocation(line: 229, column: 72, scope: !4746)
!4756 = !DILocation(line: 230, column: 15, scope: !4746)
!4757 = !DILocation(line: 230, column: 23, scope: !4746)
!4758 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !4759, file: !4759, line: 95, type: !4691, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4760)
!4759 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!4760 = !{!4761, !4762, !4763}
!4761 = !DILocalVariable(name: "i", arg: 1, scope: !4758, file: !4759, line: 95, type: !95)
!4762 = !DILocalVariable(name: "v", arg: 2, scope: !4758, file: !4759, line: 95, type: !4693)
!4763 = !DILocalVariable(name: "__ret", scope: !4764, file: !4759, line: 97, type: !95)
!4764 = distinct !DILexicalBlock(scope: !4758, file: !4759, line: 97, column: 9)
!4765 = !DILocation(line: 95, column: 54, scope: !4758)
!4766 = !DILocation(line: 95, column: 67, scope: !4758)
!4767 = !DILocation(line: 97, column: 9, scope: !4764)
!4768 = !{i64 2148421932, i64 2148421971, i64 2148421992, i64 2148422029, i64 2148422052, i64 2148422061}
!4769 = !DILocation(line: 97, column: 9, scope: !4758)
!4770 = !DILocation(line: 97, column: 2, scope: !4758)
!4771 = distinct !DISubprogram(name: "inc_time_namespaces", scope: !2, file: !2, line: 59, type: !4772, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4774)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!2820, !479}
!4774 = !{!4775}
!4775 = !DILocalVariable(name: "ns", arg: 1, scope: !4771, file: !2, line: 59, type: !479)
!4776 = !DILocation(line: 59, column: 67, scope: !4771)
!4777 = !DILocation(line: 61, column: 20, scope: !4771)
!4778 = !DILocation(line: 61, column: 24, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4780, file: !2, line: 61, column: 24)
!4780 = distinct !DILexicalBlock(scope: !4771, file: !2, line: 61, column: 24)
!4781 = !DILocation(line: 61, column: 24, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4779, file: !2, line: 61, column: 24)
!4783 = !DILocation(line: 61, column: 24, scope: !4780)
!4784 = !DILocation(line: 61, column: 9, scope: !4771)
!4785 = !DILocation(line: 61, column: 2, scope: !4771)
!4786 = distinct !DISubprogram(name: "kmalloc", scope: !208, file: !208, line: 591, type: !4787, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4789)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!93, !108, !239}
!4789 = !{!4790, !4791, !4792}
!4790 = !DILocalVariable(name: "size", arg: 1, scope: !4786, file: !208, line: 591, type: !108)
!4791 = !DILocalVariable(name: "flags", arg: 2, scope: !4786, file: !208, line: 591, type: !239)
!4792 = !DILocalVariable(name: "index", scope: !4793, file: !208, line: 594, type: !18)
!4793 = distinct !DILexicalBlock(scope: !4794, file: !208, line: 593, column: 42)
!4794 = distinct !DILexicalBlock(scope: !4786, file: !208, line: 593, column: 6)
!4795 = !DILocation(line: 591, column: 61, scope: !4786)
!4796 = !DILocation(line: 591, column: 73, scope: !4786)
!4797 = !DILocation(line: 593, column: 27, scope: !4794)
!4798 = !DILocation(line: 593, column: 6, scope: !4794)
!4799 = !DILocation(line: 593, column: 33, scope: !4794)
!4800 = !DILocation(line: 593, column: 36, scope: !4794)
!4801 = !DILocation(line: 593, column: 6, scope: !4786)
!4802 = !DILocation(line: 594, column: 3, scope: !4793)
!4803 = !DILocation(line: 594, column: 16, scope: !4793)
!4804 = !DILocation(line: 596, column: 7, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4793, file: !208, line: 596, column: 7)
!4806 = !DILocation(line: 596, column: 12, scope: !4805)
!4807 = !DILocation(line: 596, column: 7, scope: !4793)
!4808 = !DILocation(line: 597, column: 25, scope: !4805)
!4809 = !DILocation(line: 597, column: 31, scope: !4805)
!4810 = !DILocation(line: 597, column: 11, scope: !4805)
!4811 = !DILocation(line: 597, column: 4, scope: !4805)
!4812 = !DILocation(line: 599, column: 11, scope: !4793)
!4813 = !DILocation(line: 599, column: 9, scope: !4793)
!4814 = !DILocation(line: 601, column: 33, scope: !4793)
!4815 = !DILocation(line: 601, column: 40, scope: !4793)
!4816 = !DILocation(line: 601, column: 20, scope: !4793)
!4817 = !DILocation(line: 601, column: 5, scope: !4793)
!4818 = !DILocation(line: 601, column: 51, scope: !4793)
!4819 = !DILocation(line: 602, column: 5, scope: !4793)
!4820 = !DILocation(line: 602, column: 12, scope: !4793)
!4821 = !DILocation(line: 600, column: 10, scope: !4793)
!4822 = !DILocation(line: 600, column: 3, scope: !4793)
!4823 = !DILocation(line: 603, column: 2, scope: !4794)
!4824 = !DILocation(line: 604, column: 19, scope: !4786)
!4825 = !DILocation(line: 604, column: 25, scope: !4786)
!4826 = !DILocation(line: 604, column: 9, scope: !4786)
!4827 = !DILocation(line: 604, column: 2, scope: !4786)
!4828 = !DILocation(line: 605, column: 1, scope: !4786)
!4829 = distinct !DISubprogram(name: "refcount_set", scope: !181, file: !181, line: 134, type: !4830, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4832)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{null, !4635, !95}
!4832 = !{!4833, !4834}
!4833 = !DILocalVariable(name: "r", arg: 1, scope: !4829, file: !181, line: 134, type: !4635)
!4834 = !DILocalVariable(name: "n", arg: 2, scope: !4829, file: !181, line: 134, type: !95)
!4835 = !DILocation(line: 134, column: 45, scope: !4829)
!4836 = !DILocation(line: 134, column: 52, scope: !4829)
!4837 = !DILocation(line: 136, column: 14, scope: !4829)
!4838 = !DILocation(line: 136, column: 17, scope: !4829)
!4839 = !DILocation(line: 136, column: 23, scope: !4829)
!4840 = !DILocation(line: 136, column: 2, scope: !4829)
!4841 = !DILocation(line: 137, column: 1, scope: !4829)
!4842 = !DISubprogram(name: "alloc_pages", scope: !4039, file: !4039, line: 264, type: !4843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!1811, !239, !18}
!4845 = distinct !DISubprogram(name: "ns_alloc_inum", scope: !519, file: !519, line: 67, type: !4846, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4848)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!95, !528}
!4848 = !{!4849}
!4849 = !DILocalVariable(name: "ns", arg: 1, scope: !4845, file: !519, line: 67, type: !528)
!4850 = !DILocation(line: 67, column: 51, scope: !4845)
!4851 = !DILocation(line: 69, column: 19, scope: !4845)
!4852 = !DILocation(line: 69, column: 23, scope: !4845)
!4853 = !DILocation(line: 69, column: 2, scope: !4845)
!4854 = !DILocation(line: 70, column: 26, scope: !4845)
!4855 = !DILocation(line: 70, column: 30, scope: !4845)
!4856 = !DILocation(line: 70, column: 9, scope: !4845)
!4857 = !DILocation(line: 70, column: 2, scope: !4845)
!4858 = distinct !DISubprogram(name: "get_user_ns", scope: !194, file: !194, line: 185, type: !4859, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4861)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!479, !479}
!4861 = !{!4862}
!4862 = !DILocalVariable(name: "ns", arg: 1, scope: !4858, file: !194, line: 185, type: !479)
!4863 = !DILocation(line: 185, column: 73, scope: !4858)
!4864 = !DILocation(line: 187, column: 2, scope: !4858)
!4865 = distinct !DISubprogram(name: "ERR_PTR", scope: !4866, file: !4866, line: 39, type: !4867, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4869)
!4866 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!93, !1102}
!4869 = !{!4870}
!4870 = !DILocalVariable(name: "error", arg: 1, scope: !4865, file: !4866, line: 39, type: !1102)
!4871 = !DILocation(line: 39, column: 48, scope: !4865)
!4872 = !DILocation(line: 41, column: 18, scope: !4865)
!4873 = !DILocation(line: 41, column: 9, scope: !4865)
!4874 = !DILocation(line: 41, column: 2, scope: !4865)
!4875 = !DISubprogram(name: "inc_ucount", scope: !194, file: !194, line: 121, type: !4876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{!2820, !479, !253, !193}
!4878 = !DISubprogram(name: "kmalloc_large", scope: !208, file: !208, line: 531, type: !4787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4879 = distinct !DISubprogram(name: "__kmalloc_index", scope: !208, file: !208, line: 444, type: !4880, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4882)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!18, !108, !387}
!4882 = !{!4883, !4884}
!4883 = !DILocalVariable(name: "size", arg: 1, scope: !4879, file: !208, line: 444, type: !108)
!4884 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4879, file: !208, line: 445, type: !387)
!4885 = !DILocation(line: 444, column: 60, scope: !4879)
!4886 = !DILocation(line: 445, column: 16, scope: !4879)
!4887 = !DILocation(line: 447, column: 7, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 447, column: 6)
!4889 = !DILocation(line: 447, column: 6, scope: !4879)
!4890 = !DILocation(line: 448, column: 3, scope: !4888)
!4891 = !DILocation(line: 450, column: 6, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 450, column: 6)
!4893 = !DILocation(line: 450, column: 11, scope: !4892)
!4894 = !DILocation(line: 450, column: 6, scope: !4879)
!4895 = !DILocation(line: 451, column: 3, scope: !4892)
!4896 = !DILocation(line: 453, column: 32, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 453, column: 6)
!4898 = !DILocation(line: 453, column: 37, scope: !4897)
!4899 = !DILocation(line: 453, column: 42, scope: !4897)
!4900 = !DILocation(line: 453, column: 45, scope: !4897)
!4901 = !DILocation(line: 453, column: 50, scope: !4897)
!4902 = !DILocation(line: 453, column: 6, scope: !4879)
!4903 = !DILocation(line: 454, column: 3, scope: !4897)
!4904 = !DILocation(line: 455, column: 32, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 455, column: 6)
!4906 = !DILocation(line: 455, column: 37, scope: !4905)
!4907 = !DILocation(line: 455, column: 43, scope: !4905)
!4908 = !DILocation(line: 455, column: 46, scope: !4905)
!4909 = !DILocation(line: 455, column: 51, scope: !4905)
!4910 = !DILocation(line: 455, column: 6, scope: !4879)
!4911 = !DILocation(line: 456, column: 3, scope: !4905)
!4912 = !DILocation(line: 457, column: 6, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 457, column: 6)
!4914 = !DILocation(line: 457, column: 11, scope: !4913)
!4915 = !DILocation(line: 457, column: 6, scope: !4879)
!4916 = !DILocation(line: 457, column: 26, scope: !4913)
!4917 = !DILocation(line: 458, column: 6, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 458, column: 6)
!4919 = !DILocation(line: 458, column: 11, scope: !4918)
!4920 = !DILocation(line: 458, column: 6, scope: !4879)
!4921 = !DILocation(line: 458, column: 26, scope: !4918)
!4922 = !DILocation(line: 459, column: 6, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 459, column: 6)
!4924 = !DILocation(line: 459, column: 11, scope: !4923)
!4925 = !DILocation(line: 459, column: 6, scope: !4879)
!4926 = !DILocation(line: 459, column: 26, scope: !4923)
!4927 = !DILocation(line: 460, column: 6, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 460, column: 6)
!4929 = !DILocation(line: 460, column: 11, scope: !4928)
!4930 = !DILocation(line: 460, column: 6, scope: !4879)
!4931 = !DILocation(line: 460, column: 26, scope: !4928)
!4932 = !DILocation(line: 461, column: 6, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 461, column: 6)
!4934 = !DILocation(line: 461, column: 11, scope: !4933)
!4935 = !DILocation(line: 461, column: 6, scope: !4879)
!4936 = !DILocation(line: 461, column: 26, scope: !4933)
!4937 = !DILocation(line: 462, column: 6, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 462, column: 6)
!4939 = !DILocation(line: 462, column: 11, scope: !4938)
!4940 = !DILocation(line: 462, column: 6, scope: !4879)
!4941 = !DILocation(line: 462, column: 26, scope: !4938)
!4942 = !DILocation(line: 463, column: 6, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 463, column: 6)
!4944 = !DILocation(line: 463, column: 11, scope: !4943)
!4945 = !DILocation(line: 463, column: 6, scope: !4879)
!4946 = !DILocation(line: 463, column: 26, scope: !4943)
!4947 = !DILocation(line: 464, column: 6, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 464, column: 6)
!4949 = !DILocation(line: 464, column: 11, scope: !4948)
!4950 = !DILocation(line: 464, column: 6, scope: !4879)
!4951 = !DILocation(line: 464, column: 26, scope: !4948)
!4952 = !DILocation(line: 465, column: 6, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 465, column: 6)
!4954 = !DILocation(line: 465, column: 11, scope: !4953)
!4955 = !DILocation(line: 465, column: 6, scope: !4879)
!4956 = !DILocation(line: 465, column: 26, scope: !4953)
!4957 = !DILocation(line: 466, column: 6, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 466, column: 6)
!4959 = !DILocation(line: 466, column: 11, scope: !4958)
!4960 = !DILocation(line: 466, column: 6, scope: !4879)
!4961 = !DILocation(line: 466, column: 26, scope: !4958)
!4962 = !DILocation(line: 467, column: 6, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 467, column: 6)
!4964 = !DILocation(line: 467, column: 11, scope: !4963)
!4965 = !DILocation(line: 467, column: 6, scope: !4879)
!4966 = !DILocation(line: 467, column: 26, scope: !4963)
!4967 = !DILocation(line: 468, column: 6, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 468, column: 6)
!4969 = !DILocation(line: 468, column: 11, scope: !4968)
!4970 = !DILocation(line: 468, column: 6, scope: !4879)
!4971 = !DILocation(line: 468, column: 26, scope: !4968)
!4972 = !DILocation(line: 469, column: 6, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 469, column: 6)
!4974 = !DILocation(line: 469, column: 11, scope: !4973)
!4975 = !DILocation(line: 469, column: 6, scope: !4879)
!4976 = !DILocation(line: 469, column: 26, scope: !4973)
!4977 = !DILocation(line: 470, column: 6, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 470, column: 6)
!4979 = !DILocation(line: 470, column: 11, scope: !4978)
!4980 = !DILocation(line: 470, column: 6, scope: !4879)
!4981 = !DILocation(line: 470, column: 26, scope: !4978)
!4982 = !DILocation(line: 471, column: 6, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 471, column: 6)
!4984 = !DILocation(line: 471, column: 11, scope: !4983)
!4985 = !DILocation(line: 471, column: 6, scope: !4879)
!4986 = !DILocation(line: 471, column: 26, scope: !4983)
!4987 = !DILocation(line: 472, column: 6, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 472, column: 6)
!4989 = !DILocation(line: 472, column: 11, scope: !4988)
!4990 = !DILocation(line: 472, column: 6, scope: !4879)
!4991 = !DILocation(line: 472, column: 26, scope: !4988)
!4992 = !DILocation(line: 473, column: 6, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 473, column: 6)
!4994 = !DILocation(line: 473, column: 11, scope: !4993)
!4995 = !DILocation(line: 473, column: 6, scope: !4879)
!4996 = !DILocation(line: 473, column: 26, scope: !4993)
!4997 = !DILocation(line: 474, column: 6, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 474, column: 6)
!4999 = !DILocation(line: 474, column: 11, scope: !4998)
!5000 = !DILocation(line: 474, column: 6, scope: !4879)
!5001 = !DILocation(line: 474, column: 27, scope: !4998)
!5002 = !DILocation(line: 475, column: 6, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 475, column: 6)
!5004 = !DILocation(line: 475, column: 11, scope: !5003)
!5005 = !DILocation(line: 475, column: 6, scope: !4879)
!5006 = !DILocation(line: 475, column: 32, scope: !5003)
!5007 = !DILocation(line: 477, column: 50, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !4879, file: !208, line: 477, column: 6)
!5009 = !DILocation(line: 477, column: 6, scope: !4879)
!5010 = !DILocation(line: 478, column: 3, scope: !5008)
!5011 = !DILocation(line: 478, column: 3, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !5013, file: !208, line: 478, column: 3)
!5013 = distinct !DILexicalBlock(scope: !5008, file: !208, line: 478, column: 3)
!5014 = !{i32 -2141330592}
!5015 = !DILocation(line: 478, column: 3, scope: !5013)
!5016 = !DILocation(line: 480, column: 3, scope: !5008)
!5017 = !DILocation(line: 480, column: 3, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !5008, file: !208, line: 480, column: 3)
!5019 = !DILocation(line: 480, column: 3, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5018, file: !208, line: 480, column: 3)
!5021 = !DILocation(line: 480, column: 3, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5018, file: !208, line: 480, column: 3)
!5023 = !{i64 2153636907, i64 2153636936, i64 2153636982, i64 2153637040, i64 2153637094, i64 2153637148, i64 2153637203, i64 2153637234}
!5024 = !DILocation(line: 483, column: 2, scope: !4879)
!5025 = !DILocation(line: 484, column: 1, scope: !4879)
!5026 = !DISubprogram(name: "kmalloc_trace", scope: !208, file: !208, line: 525, type: !5027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!93, !5029, !239, !108}
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5031, line: 325, flags: DIFlagFwdDecl)
!5031 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5032 = distinct !DISubprogram(name: "kmalloc_type", scope: !208, file: !208, line: 401, type: !5033, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5035)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{!207, !239, !112}
!5035 = !{!5036, !5037}
!5036 = !DILocalVariable(name: "flags", arg: 1, scope: !5032, file: !208, line: 401, type: !239)
!5037 = !DILocalVariable(name: "caller", arg: 2, scope: !5032, file: !208, line: 401, type: !112)
!5038 = !DILocation(line: 401, column: 67, scope: !5032)
!5039 = !DILocation(line: 401, column: 88, scope: !5032)
!5040 = !DILocation(line: 407, column: 6, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !5032, file: !208, line: 407, column: 6)
!5042 = !DILocation(line: 407, column: 6, scope: !5032)
!5043 = !DILocation(line: 413, column: 3, scope: !5041)
!5044 = !DILocation(line: 423, column: 38, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5032, file: !208, line: 423, column: 6)
!5046 = !DILocation(line: 423, column: 44, scope: !5045)
!5047 = !DILocation(line: 423, column: 6, scope: !5032)
!5048 = !DILocation(line: 424, column: 3, scope: !5045)
!5049 = !DILocation(line: 426, column: 3, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5032, file: !208, line: 425, column: 6)
!5051 = !DILocation(line: 429, column: 1, scope: !5032)
!5052 = !DISubprogram(name: "__kmalloc", scope: !208, file: !208, line: 488, type: !4787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5053 = !DISubprogram(name: "__compiletime_assert_253", scope: !208, file: !208, line: 478, type: !3012, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5054 = distinct !DISubprogram(name: "atomic_set", scope: !4690, file: !4690, line: 65, type: !5055, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5057)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{null, !4693, !95}
!5057 = !{!5058, !5059}
!5058 = !DILocalVariable(name: "v", arg: 1, scope: !5054, file: !4690, line: 65, type: !4693)
!5059 = !DILocalVariable(name: "i", arg: 2, scope: !5054, file: !4690, line: 65, type: !95)
!5060 = !DILocation(line: 65, column: 22, scope: !5054)
!5061 = !DILocation(line: 65, column: 29, scope: !5054)
!5062 = !DILocation(line: 67, column: 26, scope: !5054)
!5063 = !DILocation(line: 67, column: 2, scope: !5054)
!5064 = !DILocation(line: 68, column: 17, scope: !5054)
!5065 = !DILocation(line: 68, column: 20, scope: !5054)
!5066 = !DILocation(line: 68, column: 2, scope: !5054)
!5067 = !DILocation(line: 69, column: 1, scope: !5054)
!5068 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4709, file: !4709, line: 80, type: !4710, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5069)
!5069 = !{!5070, !5071}
!5070 = !DILocalVariable(name: "v", arg: 1, scope: !5068, file: !4709, line: 80, type: !4712)
!5071 = !DILocalVariable(name: "size", arg: 2, scope: !5068, file: !4709, line: 80, type: !108)
!5072 = !DILocation(line: 80, column: 74, scope: !5068)
!5073 = !DILocation(line: 80, column: 84, scope: !5068)
!5074 = !DILocation(line: 82, column: 20, scope: !5068)
!5075 = !DILocation(line: 82, column: 23, scope: !5068)
!5076 = !DILocation(line: 82, column: 2, scope: !5068)
!5077 = !DILocation(line: 83, column: 2, scope: !5068)
!5078 = !DILocation(line: 84, column: 1, scope: !5068)
!5079 = distinct !DISubprogram(name: "raw_atomic_set", scope: !4726, file: !4726, line: 488, type: !5055, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5080)
!5080 = !{!5081, !5082}
!5081 = !DILocalVariable(name: "v", arg: 1, scope: !5079, file: !4726, line: 488, type: !4693)
!5082 = !DILocalVariable(name: "i", arg: 2, scope: !5079, file: !4726, line: 488, type: !95)
!5083 = !DILocation(line: 488, column: 26, scope: !5079)
!5084 = !DILocation(line: 488, column: 33, scope: !5079)
!5085 = !DILocation(line: 490, column: 18, scope: !5079)
!5086 = !DILocation(line: 490, column: 21, scope: !5079)
!5087 = !DILocation(line: 490, column: 2, scope: !5079)
!5088 = !DILocation(line: 491, column: 1, scope: !5079)
!5089 = distinct !DISubprogram(name: "arch_atomic_set", scope: !4759, file: !4759, line: 26, type: !5055, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5090)
!5090 = !{!5091, !5092}
!5091 = !DILocalVariable(name: "v", arg: 1, scope: !5089, file: !4759, line: 26, type: !4693)
!5092 = !DILocalVariable(name: "i", arg: 2, scope: !5089, file: !4759, line: 26, type: !95)
!5093 = !DILocation(line: 26, column: 55, scope: !5089)
!5094 = !DILocation(line: 26, column: 62, scope: !5089)
!5095 = !DILocation(line: 28, column: 2, scope: !5089)
!5096 = !DILocation(line: 28, column: 2, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5089, file: !4759, line: 28, column: 2)
!5098 = !DILocation(line: 29, column: 1, scope: !5089)
!5099 = distinct !DISubprogram(name: "atomic_long_set", scope: !4690, file: !4690, line: 3193, type: !5100, scopeLine: 3194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5102)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{null, !1743, !1102}
!5102 = !{!5103, !5104}
!5103 = !DILocalVariable(name: "v", arg: 1, scope: !5099, file: !4690, line: 3193, type: !1743)
!5104 = !DILocalVariable(name: "i", arg: 2, scope: !5099, file: !4690, line: 3193, type: !1102)
!5105 = !DILocation(line: 3193, column: 32, scope: !5099)
!5106 = !DILocation(line: 3193, column: 40, scope: !5099)
!5107 = !DILocation(line: 3195, column: 26, scope: !5099)
!5108 = !DILocation(line: 3195, column: 2, scope: !5099)
!5109 = !DILocation(line: 3196, column: 22, scope: !5099)
!5110 = !DILocation(line: 3196, column: 25, scope: !5099)
!5111 = !DILocation(line: 3196, column: 2, scope: !5099)
!5112 = !DILocation(line: 3197, column: 1, scope: !5099)
!5113 = !DISubprogram(name: "proc_alloc_inum", scope: !519, file: !519, line: 53, type: !5114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{!95, !1638}
!5116 = distinct !DISubprogram(name: "raw_atomic_long_set", scope: !247, file: !247, line: 76, type: !5100, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5117)
!5117 = !{!5118, !5119}
!5118 = !DILocalVariable(name: "v", arg: 1, scope: !5116, file: !247, line: 76, type: !1743)
!5119 = !DILocalVariable(name: "i", arg: 2, scope: !5116, file: !247, line: 76, type: !1102)
!5120 = !DILocation(line: 76, column: 36, scope: !5116)
!5121 = !DILocation(line: 76, column: 44, scope: !5116)
!5122 = !DILocation(line: 79, column: 19, scope: !5116)
!5123 = !DILocation(line: 79, column: 22, scope: !5116)
!5124 = !DILocation(line: 79, column: 2, scope: !5116)
!5125 = !DILocation(line: 83, column: 1, scope: !5116)
!5126 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !4726, file: !4726, line: 2600, type: !5127, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5130)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{null, !5129, !234}
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!5130 = !{!5131, !5132}
!5131 = !DILocalVariable(name: "v", arg: 1, scope: !5126, file: !4726, line: 2600, type: !5129)
!5132 = !DILocalVariable(name: "i", arg: 2, scope: !5126, file: !4726, line: 2600, type: !234)
!5133 = !DILocation(line: 2600, column: 30, scope: !5126)
!5134 = !DILocation(line: 2600, column: 37, scope: !5126)
!5135 = !DILocation(line: 2602, column: 20, scope: !5126)
!5136 = !DILocation(line: 2602, column: 23, scope: !5126)
!5137 = !DILocation(line: 2602, column: 2, scope: !5126)
!5138 = !DILocation(line: 2603, column: 1, scope: !5126)
!5139 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !5140, file: !5140, line: 18, type: !5127, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5141)
!5140 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!5141 = !{!5142, !5143}
!5142 = !DILocalVariable(name: "v", arg: 1, scope: !5139, file: !5140, line: 18, type: !5129)
!5143 = !DILocalVariable(name: "i", arg: 2, scope: !5139, file: !5140, line: 18, type: !234)
!5144 = !DILocation(line: 18, column: 59, scope: !5139)
!5145 = !DILocation(line: 18, column: 66, scope: !5139)
!5146 = !DILocation(line: 20, column: 2, scope: !5139)
!5147 = !DILocation(line: 20, column: 2, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5139, file: !5140, line: 20, column: 2)
!5149 = !DILocation(line: 21, column: 1, scope: !5139)
!5150 = !DISubprogram(name: "dec_ucount", scope: !194, file: !194, line: 122, type: !5151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5151 = !DISubroutineType(types: !5152)
!5152 = !{null, !2820, !193}
!5153 = !DISubprogram(name: "arch_get_vdso_data", scope: !2816, file: !2816, line: 165, type: !5154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{!4065, !93}
!5156 = distinct !DISubprogram(name: "lowmem_page_address", scope: !1925, file: !1925, line: 2176, type: !5157, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5161)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!93, !5159}
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1812)
!5161 = !{!5162}
!5162 = !DILocalVariable(name: "page", arg: 1, scope: !5156, file: !1925, line: 2176, type: !5159)
!5163 = !DILocation(line: 2176, column: 69, scope: !5156)
!5164 = !DILocation(line: 2178, column: 9, scope: !5156)
!5165 = !DILocation(line: 2178, column: 2, scope: !5156)
!5166 = distinct !DISubprogram(name: "timens_setup_vdso_data", scope: !2, file: !2, line: 179, type: !5167, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5169)
!5167 = !DISubroutineType(types: !5168)
!5168 = !{null, !4065, !2814}
!5169 = !{!5170, !5171, !5172, !5174, !5175}
!5170 = !DILocalVariable(name: "vdata", arg: 1, scope: !5166, file: !2, line: 179, type: !4065)
!5171 = !DILocalVariable(name: "ns", arg: 2, scope: !5166, file: !2, line: 180, type: !2814)
!5172 = !DILocalVariable(name: "offset", scope: !5166, file: !2, line: 182, type: !5173)
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!5174 = !DILocalVariable(name: "monotonic", scope: !5166, file: !2, line: 183, type: !4086)
!5175 = !DILocalVariable(name: "boottime", scope: !5166, file: !2, line: 184, type: !4086)
!5176 = !DILocation(line: 179, column: 54, scope: !5166)
!5177 = !DILocation(line: 180, column: 31, scope: !5166)
!5178 = !DILocation(line: 182, column: 2, scope: !5166)
!5179 = !DILocation(line: 182, column: 24, scope: !5166)
!5180 = !DILocation(line: 182, column: 33, scope: !5166)
!5181 = !DILocation(line: 182, column: 40, scope: !5166)
!5182 = !DILocation(line: 183, column: 2, scope: !5166)
!5183 = !DILocation(line: 183, column: 23, scope: !5166)
!5184 = !DILocation(line: 183, column: 50, scope: !5166)
!5185 = !DILocation(line: 183, column: 54, scope: !5166)
!5186 = !DILocation(line: 183, column: 62, scope: !5166)
!5187 = !DILocation(line: 183, column: 35, scope: !5166)
!5188 = !DILocation(line: 184, column: 2, scope: !5166)
!5189 = !DILocation(line: 184, column: 23, scope: !5166)
!5190 = !DILocation(line: 184, column: 49, scope: !5166)
!5191 = !DILocation(line: 184, column: 53, scope: !5166)
!5192 = !DILocation(line: 184, column: 61, scope: !5166)
!5193 = !DILocation(line: 184, column: 34, scope: !5166)
!5194 = !DILocation(line: 186, column: 2, scope: !5166)
!5195 = !DILocation(line: 186, column: 9, scope: !5166)
!5196 = !DILocation(line: 186, column: 15, scope: !5166)
!5197 = !DILocation(line: 187, column: 2, scope: !5166)
!5198 = !DILocation(line: 187, column: 9, scope: !5166)
!5199 = !DILocation(line: 187, column: 21, scope: !5166)
!5200 = !DILocation(line: 188, column: 2, scope: !5166)
!5201 = !DILocation(line: 188, column: 29, scope: !5166)
!5202 = !DILocation(line: 189, column: 2, scope: !5166)
!5203 = !DILocation(line: 189, column: 32, scope: !5166)
!5204 = !DILocation(line: 190, column: 2, scope: !5166)
!5205 = !DILocation(line: 190, column: 35, scope: !5166)
!5206 = !DILocation(line: 191, column: 2, scope: !5166)
!5207 = !DILocation(line: 191, column: 28, scope: !5166)
!5208 = !DILocation(line: 192, column: 2, scope: !5166)
!5209 = !DILocation(line: 192, column: 33, scope: !5166)
!5210 = !DILocation(line: 193, column: 1, scope: !5166)
!5211 = distinct !DISubprogram(name: "offset_from_ts", scope: !2, file: !2, line: 142, type: !5212, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5214)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!4086, !1098}
!5214 = !{!5215, !5216}
!5215 = !DILocalVariable(name: "off", arg: 1, scope: !5211, file: !2, line: 142, type: !1098)
!5216 = !DILocalVariable(name: "ret", scope: !5211, file: !2, line: 144, type: !4086)
!5217 = !DILocation(line: 142, column: 62, scope: !5211)
!5218 = !DILocation(line: 144, column: 23, scope: !5211)
!5219 = !DILocation(line: 146, column: 16, scope: !5211)
!5220 = !DILocation(line: 146, column: 6, scope: !5211)
!5221 = !DILocation(line: 146, column: 10, scope: !5211)
!5222 = !DILocation(line: 147, column: 17, scope: !5211)
!5223 = !DILocation(line: 147, column: 6, scope: !5211)
!5224 = !DILocation(line: 147, column: 11, scope: !5211)
!5225 = !DILocation(line: 149, column: 2, scope: !5211)
!5226 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !181, file: !181, line: 331, type: !5227, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5229)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{!387, !4635}
!5229 = !{!5230}
!5230 = !DILocalVariable(name: "r", arg: 1, scope: !5226, file: !181, line: 331, type: !4635)
!5231 = !DILocation(line: 331, column: 67, scope: !5226)
!5232 = !DILocation(line: 333, column: 33, scope: !5226)
!5233 = !DILocation(line: 333, column: 9, scope: !5226)
!5234 = !DILocation(line: 333, column: 2, scope: !5226)
!5235 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !181, file: !181, line: 313, type: !5236, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5238)
!5236 = !DISubroutineType(types: !5237)
!5237 = !{!387, !4635, !1300}
!5238 = !{!5239, !5240}
!5239 = !DILocalVariable(name: "r", arg: 1, scope: !5235, file: !181, line: 313, type: !4635)
!5240 = !DILocalVariable(name: "oldp", arg: 2, scope: !5235, file: !181, line: 313, type: !1300)
!5241 = !DILocation(line: 313, column: 69, scope: !5235)
!5242 = !DILocation(line: 313, column: 77, scope: !5235)
!5243 = !DILocation(line: 315, column: 36, scope: !5235)
!5244 = !DILocation(line: 315, column: 39, scope: !5235)
!5245 = !DILocation(line: 315, column: 9, scope: !5235)
!5246 = !DILocation(line: 315, column: 2, scope: !5235)
!5247 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !181, file: !181, line: 270, type: !5248, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5250)
!5248 = !DISubroutineType(types: !5249)
!5249 = !{!387, !95, !4635, !1300}
!5250 = !{!5251, !5252, !5253, !5254}
!5251 = !DILocalVariable(name: "i", arg: 1, scope: !5247, file: !181, line: 270, type: !95)
!5252 = !DILocalVariable(name: "r", arg: 2, scope: !5247, file: !181, line: 270, type: !4635)
!5253 = !DILocalVariable(name: "oldp", arg: 3, scope: !5247, file: !181, line: 270, type: !1300)
!5254 = !DILocalVariable(name: "old", scope: !5247, file: !181, line: 272, type: !95)
!5255 = !DILocation(line: 270, column: 61, scope: !5247)
!5256 = !DILocation(line: 270, column: 76, scope: !5247)
!5257 = !DILocation(line: 270, column: 84, scope: !5247)
!5258 = !DILocation(line: 272, column: 2, scope: !5247)
!5259 = !DILocation(line: 272, column: 6, scope: !5247)
!5260 = !DILocation(line: 272, column: 37, scope: !5247)
!5261 = !DILocation(line: 272, column: 41, scope: !5247)
!5262 = !DILocation(line: 272, column: 44, scope: !5247)
!5263 = !DILocation(line: 272, column: 12, scope: !5247)
!5264 = !DILocation(line: 274, column: 6, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5247, file: !181, line: 274, column: 6)
!5266 = !DILocation(line: 274, column: 6, scope: !5247)
!5267 = !DILocation(line: 275, column: 11, scope: !5265)
!5268 = !DILocation(line: 275, column: 4, scope: !5265)
!5269 = !DILocation(line: 275, column: 9, scope: !5265)
!5270 = !DILocation(line: 275, column: 3, scope: !5265)
!5271 = !DILocation(line: 277, column: 6, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5247, file: !181, line: 277, column: 6)
!5273 = !DILocation(line: 277, column: 13, scope: !5272)
!5274 = !DILocation(line: 277, column: 10, scope: !5272)
!5275 = !DILocation(line: 277, column: 6, scope: !5247)
!5276 = !DILocation(line: 278, column: 3, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5272, file: !181, line: 277, column: 16)
!5278 = !DILocation(line: 278, column: 3, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5277, file: !181, line: 278, column: 3)
!5280 = !DILocation(line: 278, column: 3, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5279, file: !181, line: 278, column: 3)
!5282 = !DILocation(line: 278, column: 3, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5279, file: !181, line: 278, column: 3)
!5284 = !DILocation(line: 278, column: 3, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5283, file: !181, line: 278, column: 3)
!5286 = !{i64 2150129146}
!5287 = !DILocation(line: 279, column: 3, scope: !5277)
!5288 = !DILocation(line: 282, column: 6, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5247, file: !181, line: 282, column: 6)
!5290 = !DILocation(line: 282, column: 6, scope: !5247)
!5291 = !DILocation(line: 283, column: 26, scope: !5289)
!5292 = !DILocation(line: 283, column: 3, scope: !5289)
!5293 = !DILocation(line: 285, column: 2, scope: !5247)
!5294 = !DILocation(line: 286, column: 1, scope: !5247)
!5295 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !4690, file: !4690, line: 397, type: !4691, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5296)
!5296 = !{!5297, !5298}
!5297 = !DILocalVariable(name: "i", arg: 1, scope: !5295, file: !4690, line: 397, type: !95)
!5298 = !DILocalVariable(name: "v", arg: 2, scope: !5295, file: !4690, line: 397, type: !4693)
!5299 = !DILocation(line: 397, column: 30, scope: !5295)
!5300 = !DILocation(line: 397, column: 43, scope: !5295)
!5301 = !DILocation(line: 399, column: 2, scope: !5295)
!5302 = !DILocation(line: 399, column: 2, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5295, file: !4690, line: 399, column: 2)
!5304 = !DILocation(line: 400, column: 31, scope: !5295)
!5305 = !DILocation(line: 400, column: 2, scope: !5295)
!5306 = !DILocation(line: 401, column: 38, scope: !5295)
!5307 = !DILocation(line: 401, column: 41, scope: !5295)
!5308 = !DILocation(line: 401, column: 9, scope: !5295)
!5309 = !DILocation(line: 401, column: 2, scope: !5295)
!5310 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !4726, file: !4726, line: 928, type: !4691, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5311)
!5311 = !{!5312, !5313}
!5312 = !DILocalVariable(name: "i", arg: 1, scope: !5310, file: !4726, line: 928, type: !95)
!5313 = !DILocalVariable(name: "v", arg: 2, scope: !5310, file: !4726, line: 928, type: !4693)
!5314 = !DILocation(line: 928, column: 34, scope: !5310)
!5315 = !DILocation(line: 928, column: 47, scope: !5310)
!5316 = !DILocation(line: 936, column: 31, scope: !5310)
!5317 = !DILocation(line: 936, column: 34, scope: !5310)
!5318 = !DILocation(line: 936, column: 9, scope: !5310)
!5319 = !DILocation(line: 936, column: 2, scope: !5310)
!5320 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !4759, file: !4759, line: 101, type: !4691, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5321)
!5321 = !{!5322, !5323, !5324}
!5322 = !DILocalVariable(name: "i", arg: 1, scope: !5320, file: !4759, line: 101, type: !95)
!5323 = !DILocalVariable(name: "v", arg: 2, scope: !5320, file: !4759, line: 101, type: !4693)
!5324 = !DILocalVariable(name: "__ret", scope: !5325, file: !4759, line: 103, type: !95)
!5325 = distinct !DILexicalBlock(scope: !5320, file: !4759, line: 103, column: 9)
!5326 = !DILocation(line: 101, column: 54, scope: !5320)
!5327 = !DILocation(line: 101, column: 67, scope: !5320)
!5328 = !DILocation(line: 103, column: 9, scope: !5325)
!5329 = !{i64 2148424117, i64 2148424156, i64 2148424177, i64 2148424214, i64 2148424237, i64 2148424246}
!5330 = !DILocation(line: 103, column: 9, scope: !5320)
!5331 = !DILocation(line: 103, column: 2, scope: !5320)
!5332 = distinct !DISubprogram(name: "task_lock", scope: !5333, file: !5333, line: 220, type: !5334, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5336)
!5333 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!5334 = !DISubroutineType(types: !5335)
!5335 = !{null, !529}
!5336 = !{!5337}
!5337 = !DILocalVariable(name: "p", arg: 1, scope: !5332, file: !5333, line: 220, type: !529)
!5338 = !DILocation(line: 220, column: 50, scope: !5332)
!5339 = !DILocation(line: 222, column: 13, scope: !5332)
!5340 = !DILocation(line: 222, column: 16, scope: !5332)
!5341 = !DILocation(line: 222, column: 2, scope: !5332)
!5342 = !DILocation(line: 223, column: 1, scope: !5332)
!5343 = distinct !DISubprogram(name: "task_unlock", scope: !5333, file: !5333, line: 225, type: !5334, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5344)
!5344 = !{!5345}
!5345 = !DILocalVariable(name: "p", arg: 1, scope: !5343, file: !5333, line: 225, type: !529)
!5346 = !DILocation(line: 225, column: 52, scope: !5343)
!5347 = !DILocation(line: 227, column: 15, scope: !5343)
!5348 = !DILocation(line: 227, column: 18, scope: !5343)
!5349 = !DILocation(line: 227, column: 2, scope: !5343)
!5350 = !DILocation(line: 228, column: 1, scope: !5343)
!5351 = distinct !DISubprogram(name: "spin_lock", scope: !5352, file: !5352, line: 349, type: !5353, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5355)
!5352 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5353 = !DISubroutineType(types: !5354)
!5354 = !{null, !2075}
!5355 = !{!5356}
!5356 = !DILocalVariable(name: "lock", arg: 1, scope: !5351, file: !5352, line: 349, type: !2075)
!5357 = !DILocation(line: 349, column: 51, scope: !5351)
!5358 = !DILocation(line: 351, column: 2, scope: !5351)
!5359 = !DILocation(line: 352, column: 1, scope: !5351)
!5360 = !DISubprogram(name: "_raw_spin_lock", scope: !5361, file: !5361, line: 22, type: !5362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5361 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5362 = !DISubroutineType(types: !5363)
!5363 = !{null, !5364}
!5364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!5365 = distinct !DISubprogram(name: "spin_unlock", scope: !5352, file: !5352, line: 389, type: !5353, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5366)
!5366 = !{!5367}
!5367 = !DILocalVariable(name: "lock", arg: 1, scope: !5365, file: !5352, line: 389, type: !2075)
!5368 = !DILocation(line: 389, column: 53, scope: !5365)
!5369 = !DILocation(line: 391, column: 2, scope: !5365)
!5370 = !DILocation(line: 392, column: 1, scope: !5365)
!5371 = !DISubprogram(name: "_raw_spin_unlock", scope: !5361, file: !5361, line: 39, type: !5362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5372 = !DISubprogram(name: "seq_printf", scope: !1308, file: !1308, line: 119, type: !5373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{null, !1306, !90, null}
!5375 = !DISubprogram(name: "ns_to_timespec64", scope: !335, file: !335, line: 148, type: !5376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5376 = !DISubroutineType(types: !5377)
!5377 = !{!1098, !234}
!5378 = distinct !DISubprogram(name: "ktime_get_boottime", scope: !227, file: !227, line: 93, type: !719, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14)
!5379 = !DILocation(line: 95, column: 9, scope: !5378)
!5380 = !DILocation(line: 95, column: 2, scope: !5378)
!5381 = !DISubprogram(name: "ktime_get_with_offset", scope: !227, file: !227, line: 68, type: !5382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5382 = !DISubroutineType(types: !5383)
!5383 = !{!654, !226}
!5384 = !DISubprogram(name: "set_normalized_timespec64", scope: !335, file: !335, line: 66, type: !5385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5385 = !DISubroutineType(types: !5386)
!5386 = !{null, !4286, !334, !234}
!5387 = !DISubprogram(name: "current_is_single_threaded", scope: !2848, file: !2848, line: 649, type: !5388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5388 = !DISubroutineType(types: !5389)
!5389 = !{!387}
!5390 = !DISubprogram(name: "ns_capable", scope: !276, file: !276, line: 149, type: !5391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{!387, !479, !95}
