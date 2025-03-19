; ModuleID = 'ipc/namespace.c'
source_filename = "ipc/namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }
%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.pcpu_hot = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17, [16 x i8] }
%struct.anon.17 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [10 x i64], [4 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19, [48 x i8] }
%struct.anon.19 = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.13, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { ptr, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, i64, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, %struct.ctl_table_set, ptr, %struct.ctl_table_set, ptr, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, %struct.rhashtable }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.llist_node = type { ptr }
%struct.kern_ipc_perm = type { %struct.spinlock, i8, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i64, ptr, %struct.rhash_head, %struct.callback_head, %struct.refcount_struct, [44 x i8] }
%struct.rhash_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
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
%struct.nsset = type { i32, ptr, ptr, ptr }
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.15 }
%struct.kernel_cap_t = type { i64 }
%union.anon.15 = type { %struct.callback_head }

@mq_lock = external dso_local global %struct.spinlock, align 4
@free_ipc_list = internal global %struct.llist_head zeroinitializer, align 8, !dbg !0
@free_ipc_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { ptr getelementptr (i8, ptr @free_ipc_work, i64 8), ptr getelementptr (i8, ptr @free_ipc_work, i64 8) }, ptr @free_ipc }, align 8, !dbg !3633
@.str = private unnamed_addr constant [4 x i8] c"ipc\00", align 1, !dbg !3623
@ipcns_operations = hidden constant %struct.proc_ns_operations { ptr @.str, ptr null, i32 134217728, ptr @ipcns_get, ptr @ipcns_put, ptr @ipcns_install, ptr @ipcns_owner, ptr null }, align 8, !dbg !3626
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3628
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@system_wq = external dso_local global ptr, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @copy_ipcs(i64 noundef %flags, ptr noundef %user_ns, ptr noundef %ns) #0 align 16 !dbg !3644 {
entry:
  %retval = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %user_ns.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3648, metadata !DIExpression()), !dbg !3651
  store ptr %user_ns, ptr %user_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_ns.addr, metadata !3649, metadata !DIExpression()), !dbg !3652
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !3650, metadata !DIExpression()), !dbg !3653
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3654
  %and = and i64 %0, 134217728, !dbg !3656
  %tobool = icmp ne i64 %and, 0, !dbg !3656
  br i1 %tobool, label %if.end, label %if.then, !dbg !3657

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !3658
  %call = call ptr @get_ipc_ns(ptr noundef %1) #14, !dbg !3659
  store ptr %call, ptr %retval, align 8, !dbg !3660
  br label %return, !dbg !3660

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %user_ns.addr, align 8, !dbg !3661
  %3 = load ptr, ptr %ns.addr, align 8, !dbg !3662
  %call1 = call ptr @create_ipc_ns(ptr noundef %2, ptr noundef %3) #14, !dbg !3663
  store ptr %call1, ptr %retval, align 8, !dbg !3664
  br label %return, !dbg !3664

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8, !dbg !3665
  ret ptr %4, !dbg !3665
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_ipc_ns(ptr noundef %ns) #2 align 16 !dbg !3666 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !3670, metadata !DIExpression()), !dbg !3671
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !3672
  %tobool = icmp ne ptr %0, null, !dbg !3672
  br i1 %tobool, label %if.then, label %if.end, !dbg !3674

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !3675
  %ns1 = getelementptr inbounds %struct.ipc_namespace, ptr %1, i32 0, i32 28, !dbg !3676
  %count = getelementptr inbounds %struct.ns_common, ptr %ns1, i32 0, i32 3, !dbg !3677
  call void @refcount_inc(ptr noundef %count) #14, !dbg !3678
  br label %if.end, !dbg !3678

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %ns.addr, align 8, !dbg !3679
  ret ptr %2, !dbg !3680
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @create_ipc_ns(ptr noundef %user_ns, ptr noundef %old_ns) #0 align 16 !dbg !3681 {
entry:
  %retval = alloca ptr, align 8
  %user_ns.addr = alloca ptr, align 8
  %old_ns.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %ucounts = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %user_ns, ptr %user_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_ns.addr, metadata !3685, metadata !DIExpression()), !dbg !3697
  store ptr %old_ns, ptr %old_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_ns.addr, metadata !3686, metadata !DIExpression()), !dbg !3698
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #15, !dbg !3699
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !3687, metadata !DIExpression()), !dbg !3700
  call void @llvm.lifetime.start.p0(i64 8, ptr %ucounts) #15, !dbg !3701
  call void @llvm.dbg.declare(metadata ptr %ucounts, metadata !3688, metadata !DIExpression()), !dbg !3702
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !3703
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3689, metadata !DIExpression()), !dbg !3704
  store i32 -28, ptr %err, align 4, !dbg !3705
  br label %again, !dbg !3706

again:                                            ; preds = %if.then2, %entry
  call void @llvm.dbg.label(metadata !3690), !dbg !3707
  %0 = load ptr, ptr %user_ns.addr, align 8, !dbg !3708
  %call = call ptr @inc_ipc_namespaces(ptr noundef %0) #14, !dbg !3709
  store ptr %call, ptr %ucounts, align 8, !dbg !3710
  %1 = load ptr, ptr %ucounts, align 8, !dbg !3711
  %tobool = icmp ne ptr %1, null, !dbg !3711
  br i1 %tobool, label %if.end3, label %if.then, !dbg !3713

if.then:                                          ; preds = %again
  %call1 = call zeroext i1 @flush_work(ptr noundef @free_ipc_work) #14, !dbg !3714
  br i1 %call1, label %if.then2, label %if.end, !dbg !3717

if.then2:                                         ; preds = %if.then
  br label %again, !dbg !3718

if.end:                                           ; preds = %if.then
  br label %fail, !dbg !3719

if.end3:                                          ; preds = %again
  store i32 -12, ptr %err, align 4, !dbg !3720
  %call4 = call noalias ptr @kzalloc(i64 noundef 1104, i32 noundef 4197568) #16, !dbg !3721
  store ptr %call4, ptr %ns, align 8, !dbg !3722
  %2 = load ptr, ptr %ns, align 8, !dbg !3723
  %cmp = icmp eq ptr %2, null, !dbg !3725
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !3726

if.then5:                                         ; preds = %if.end3
  br label %fail_dec, !dbg !3727

if.end6:                                          ; preds = %if.end3
  %3 = load ptr, ptr %ns, align 8, !dbg !3728
  %ns7 = getelementptr inbounds %struct.ipc_namespace, ptr %3, i32 0, i32 28, !dbg !3729
  %call8 = call i32 @ns_alloc_inum(ptr noundef %ns7) #14, !dbg !3730
  store i32 %call8, ptr %err, align 4, !dbg !3731
  %4 = load i32, ptr %err, align 4, !dbg !3732
  %tobool9 = icmp ne i32 %4, 0, !dbg !3732
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3734

if.then10:                                        ; preds = %if.end6
  br label %fail_free, !dbg !3735

if.end11:                                         ; preds = %if.end6
  %5 = load ptr, ptr %ns, align 8, !dbg !3736
  %ns12 = getelementptr inbounds %struct.ipc_namespace, ptr %5, i32 0, i32 28, !dbg !3737
  %ops = getelementptr inbounds %struct.ns_common, ptr %ns12, i32 0, i32 1, !dbg !3738
  store ptr @ipcns_operations, ptr %ops, align 8, !dbg !3739
  %6 = load ptr, ptr %ns, align 8, !dbg !3740
  %ns13 = getelementptr inbounds %struct.ipc_namespace, ptr %6, i32 0, i32 28, !dbg !3741
  %count = getelementptr inbounds %struct.ns_common, ptr %ns13, i32 0, i32 3, !dbg !3742
  call void @refcount_set(ptr noundef %count, i32 noundef 1) #14, !dbg !3743
  %7 = load ptr, ptr %user_ns.addr, align 8, !dbg !3744
  %call14 = call ptr @get_user_ns(ptr noundef %7) #14, !dbg !3745
  %8 = load ptr, ptr %ns, align 8, !dbg !3746
  %user_ns15 = getelementptr inbounds %struct.ipc_namespace, ptr %8, i32 0, i32 25, !dbg !3747
  store ptr %call14, ptr %user_ns15, align 8, !dbg !3748
  %9 = load ptr, ptr %ucounts, align 8, !dbg !3749
  %10 = load ptr, ptr %ns, align 8, !dbg !3750
  %ucounts16 = getelementptr inbounds %struct.ipc_namespace, ptr %10, i32 0, i32 26, !dbg !3751
  store ptr %9, ptr %ucounts16, align 8, !dbg !3752
  %11 = load ptr, ptr %ns, align 8, !dbg !3753
  %call17 = call i32 @mq_init_ns(ptr noundef %11) #14, !dbg !3754
  store i32 %call17, ptr %err, align 4, !dbg !3755
  %12 = load i32, ptr %err, align 4, !dbg !3756
  %tobool18 = icmp ne i32 %12, 0, !dbg !3756
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !3758

if.then19:                                        ; preds = %if.end11
  br label %fail_put, !dbg !3759

if.end20:                                         ; preds = %if.end11
  store i32 -12, ptr %err, align 4, !dbg !3760
  %13 = load ptr, ptr %ns, align 8, !dbg !3761
  %call21 = call zeroext i1 @setup_mq_sysctls(ptr noundef %13) #14, !dbg !3763
  br i1 %call21, label %if.end23, label %if.then22, !dbg !3764

if.then22:                                        ; preds = %if.end20
  br label %fail_put, !dbg !3765

if.end23:                                         ; preds = %if.end20
  %14 = load ptr, ptr %ns, align 8, !dbg !3766
  %call24 = call zeroext i1 @setup_ipc_sysctls(ptr noundef %14) #14, !dbg !3768
  br i1 %call24, label %if.end26, label %if.then25, !dbg !3769

if.then25:                                        ; preds = %if.end23
  br label %fail_mq, !dbg !3770

if.end26:                                         ; preds = %if.end23
  %15 = load ptr, ptr %ns, align 8, !dbg !3771
  %call27 = call i32 @msg_init_ns(ptr noundef %15) #14, !dbg !3772
  store i32 %call27, ptr %err, align 4, !dbg !3773
  %16 = load i32, ptr %err, align 4, !dbg !3774
  %tobool28 = icmp ne i32 %16, 0, !dbg !3774
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !3776

if.then29:                                        ; preds = %if.end26
  br label %fail_ipc, !dbg !3777

if.end30:                                         ; preds = %if.end26
  %17 = load ptr, ptr %ns, align 8, !dbg !3778
  call void @sem_init_ns(ptr noundef %17) #14, !dbg !3779
  %18 = load ptr, ptr %ns, align 8, !dbg !3780
  call void @shm_init_ns(ptr noundef %18) #14, !dbg !3781
  %19 = load ptr, ptr %ns, align 8, !dbg !3782
  store ptr %19, ptr %retval, align 8, !dbg !3783
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3783

fail_ipc:                                         ; preds = %if.then29
  call void @llvm.dbg.label(metadata !3691), !dbg !3784
  %20 = load ptr, ptr %ns, align 8, !dbg !3785
  call void @retire_ipc_sysctls(ptr noundef %20) #14, !dbg !3786
  br label %fail_mq, !dbg !3786

fail_mq:                                          ; preds = %fail_ipc, %if.then25
  call void @llvm.dbg.label(metadata !3692), !dbg !3787
  %21 = load ptr, ptr %ns, align 8, !dbg !3788
  call void @retire_mq_sysctls(ptr noundef %21) #14, !dbg !3789
  br label %fail_put, !dbg !3789

fail_put:                                         ; preds = %fail_mq, %if.then22, %if.then19
  call void @llvm.dbg.label(metadata !3693), !dbg !3790
  %22 = load ptr, ptr %ns, align 8, !dbg !3791
  %user_ns31 = getelementptr inbounds %struct.ipc_namespace, ptr %22, i32 0, i32 25, !dbg !3792
  %23 = load ptr, ptr %user_ns31, align 8, !dbg !3792
  call void @put_user_ns(ptr noundef %23) #14, !dbg !3793
  %24 = load ptr, ptr %ns, align 8, !dbg !3794
  %ns32 = getelementptr inbounds %struct.ipc_namespace, ptr %24, i32 0, i32 28, !dbg !3794
  %inum = getelementptr inbounds %struct.ns_common, ptr %ns32, i32 0, i32 2, !dbg !3794
  %25 = load i32, ptr %inum, align 8, !dbg !3794
  call void @proc_free_inum(i32 noundef %25) #14, !dbg !3794
  br label %fail_free, !dbg !3794

fail_free:                                        ; preds = %fail_put, %if.then10
  call void @llvm.dbg.label(metadata !3694), !dbg !3795
  %26 = load ptr, ptr %ns, align 8, !dbg !3796
  call void @kfree(ptr noundef %26) #14, !dbg !3797
  br label %fail_dec, !dbg !3797

fail_dec:                                         ; preds = %fail_free, %if.then5
  call void @llvm.dbg.label(metadata !3695), !dbg !3798
  %27 = load ptr, ptr %ucounts, align 8, !dbg !3799
  call void @dec_ipc_namespaces(ptr noundef %27) #14, !dbg !3800
  br label %fail, !dbg !3800

fail:                                             ; preds = %fail_dec, %if.end
  call void @llvm.dbg.label(metadata !3696), !dbg !3801
  %28 = load i32, ptr %err, align 4, !dbg !3802
  %conv = sext i32 %28 to i64, !dbg !3802
  %call33 = call ptr @ERR_PTR(i64 noundef %conv) #14, !dbg !3803
  store ptr %call33, ptr %retval, align 8, !dbg !3804
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3804

cleanup:                                          ; preds = %fail, %if.end30
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !3805
  call void @llvm.lifetime.end.p0(i64 8, ptr %ucounts) #15, !dbg !3805
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #15, !dbg !3805
  %29 = load ptr, ptr %retval, align 8, !dbg !3805
  ret ptr %29, !dbg !3805
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @free_ipcs(ptr noundef %ns, ptr noundef %ids, ptr noundef %free) #0 align 16 !dbg !3806 {
entry:
  %ns.addr = alloca ptr, align 8
  %ids.addr = alloca ptr, align 8
  %free.addr = alloca ptr, align 8
  %perm = alloca ptr, align 8
  %next_id = alloca i32, align 4
  %total = alloca i32, align 4
  %in_use = alloca i32, align 4
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !3839, metadata !DIExpression()), !dbg !3846
  store ptr %ids, ptr %ids.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ids.addr, metadata !3840, metadata !DIExpression()), !dbg !3847
  store ptr %free, ptr %free.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %free.addr, metadata !3841, metadata !DIExpression()), !dbg !3848
  call void @llvm.lifetime.start.p0(i64 8, ptr %perm) #15, !dbg !3849
  call void @llvm.dbg.declare(metadata ptr %perm, metadata !3842, metadata !DIExpression()), !dbg !3850
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_id) #15, !dbg !3851
  call void @llvm.dbg.declare(metadata ptr %next_id, metadata !3843, metadata !DIExpression()), !dbg !3852
  call void @llvm.lifetime.start.p0(i64 4, ptr %total) #15, !dbg !3853
  call void @llvm.dbg.declare(metadata ptr %total, metadata !3844, metadata !DIExpression()), !dbg !3854
  call void @llvm.lifetime.start.p0(i64 4, ptr %in_use) #15, !dbg !3853
  call void @llvm.dbg.declare(metadata ptr %in_use, metadata !3845, metadata !DIExpression()), !dbg !3855
  %0 = load ptr, ptr %ids.addr, align 8, !dbg !3856
  %rwsem = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 2, !dbg !3857
  call void @down_write(ptr noundef %rwsem) #14, !dbg !3858
  %1 = load ptr, ptr %ids.addr, align 8, !dbg !3859
  %in_use1 = getelementptr inbounds %struct.ipc_ids, ptr %1, i32 0, i32 0, !dbg !3860
  %2 = load i32, ptr %in_use1, align 8, !dbg !3860
  store i32 %2, ptr %in_use, align 4, !dbg !3861
  store i32 0, ptr %total, align 4, !dbg !3862
  store i32 0, ptr %next_id, align 4, !dbg !3864
  br label %for.cond, !dbg !3865

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %total, align 4, !dbg !3866
  %4 = load i32, ptr %in_use, align 4, !dbg !3868
  %cmp = icmp slt i32 %3, %4, !dbg !3869
  br i1 %cmp, label %for.body, label %for.end, !dbg !3870

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %ids.addr, align 8, !dbg !3871
  %ipcs_idr = getelementptr inbounds %struct.ipc_ids, ptr %5, i32 0, i32 3, !dbg !3873
  %6 = load i32, ptr %next_id, align 4, !dbg !3874
  %conv = sext i32 %6 to i64, !dbg !3874
  %call = call ptr @idr_find(ptr noundef %ipcs_idr, i64 noundef %conv) #14, !dbg !3875
  store ptr %call, ptr %perm, align 8, !dbg !3876
  %7 = load ptr, ptr %perm, align 8, !dbg !3877
  %cmp2 = icmp eq ptr %7, null, !dbg !3879
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3880

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !3881

if.end:                                           ; preds = %for.body
  call void @rcu_read_lock() #14, !dbg !3882
  %8 = load ptr, ptr %perm, align 8, !dbg !3883
  call void @ipc_lock_object(ptr noundef %8) #14, !dbg !3884
  %9 = load ptr, ptr %free.addr, align 8, !dbg !3885
  %10 = load ptr, ptr %ns.addr, align 8, !dbg !3886
  %11 = load ptr, ptr %perm, align 8, !dbg !3887
  call void %9(ptr noundef %10, ptr noundef %11) #14, !dbg !3885
  %12 = load i32, ptr %total, align 4, !dbg !3888
  %inc = add i32 %12, 1, !dbg !3888
  store i32 %inc, ptr %total, align 4, !dbg !3888
  br label %for.inc, !dbg !3889

for.inc:                                          ; preds = %if.end, %if.then
  %13 = load i32, ptr %next_id, align 4, !dbg !3890
  %inc4 = add i32 %13, 1, !dbg !3890
  store i32 %inc4, ptr %next_id, align 4, !dbg !3890
  br label %for.cond, !dbg !3891, !llvm.loop !3892

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %ids.addr, align 8, !dbg !3896
  %rwsem5 = getelementptr inbounds %struct.ipc_ids, ptr %14, i32 0, i32 2, !dbg !3897
  call void @up_write(ptr noundef %rwsem5) #14, !dbg !3898
  call void @llvm.lifetime.end.p0(i64 4, ptr %in_use) #15, !dbg !3899
  call void @llvm.lifetime.end.p0(i64 4, ptr %total) #15, !dbg !3899
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_id) #15, !dbg !3899
  call void @llvm.lifetime.end.p0(i64 8, ptr %perm) #15, !dbg !3899
  ret void, !dbg !3899
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3900 dso_local void @down_write(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3904 dso_local ptr @idr_find(ptr noundef, i64 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #5 align 16 !dbg !3909 {
entry:
  call void @__rcu_read_lock() #14, !dbg !3911
  br label %do.body, !dbg !3912

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3913

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !3915

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !3916

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !3918
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ipc_lock_object(ptr noundef %perm) #2 align 16 !dbg !3919 {
entry:
  %perm.addr = alloca ptr, align 8
  store ptr %perm, ptr %perm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %perm.addr, metadata !3924, metadata !DIExpression()), !dbg !3925
  %0 = load ptr, ptr %perm.addr, align 8, !dbg !3926
  %lock = getelementptr inbounds %struct.kern_ipc_perm, ptr %0, i32 0, i32 0, !dbg !3927
  call void @spin_lock(ptr noundef %lock) #14, !dbg !3928
  ret void, !dbg !3929
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3930 dso_local void @up_write(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @put_ipc_ns(ptr noundef %ns) #0 align 16 !dbg !3931 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !3935, metadata !DIExpression()), !dbg !3936
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !3937
  %ns1 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 28, !dbg !3939
  %count = getelementptr inbounds %struct.ns_common, ptr %ns1, i32 0, i32 3, !dbg !3940
  %call = call zeroext i1 @refcount_dec_and_lock(ptr noundef %count, ptr noundef @mq_lock) #14, !dbg !3941
  br i1 %call, label %if.then, label %if.end5, !dbg !3942

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !3943
  call void @mq_clear_sbinfo(ptr noundef %1) #14, !dbg !3945
  call void @spin_unlock(ptr noundef @mq_lock) #14, !dbg !3946
  %2 = load ptr, ptr %ns.addr, align 8, !dbg !3947
  %mnt_llist = getelementptr inbounds %struct.ipc_namespace, ptr %2, i32 0, i32 27, !dbg !3949
  %call2 = call zeroext i1 @llist_add(ptr noundef %mnt_llist, ptr noundef @free_ipc_list) #14, !dbg !3950
  br i1 %call2, label %if.then3, label %if.end, !dbg !3951

if.then3:                                         ; preds = %if.then
  %call4 = call zeroext i1 @schedule_work(ptr noundef @free_ipc_work) #14, !dbg !3952
  br label %if.end, !dbg !3952

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5, !dbg !3953

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !3954
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3955 dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3960 dso_local void @mq_clear_sbinfo(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #5 align 16 !dbg !3961 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3966, metadata !DIExpression()), !dbg !3967
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3968
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3968
  call void @_raw_spin_unlock(ptr noundef %1) #14, !dbg !3968
  ret void, !dbg !3969
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @llist_add(ptr noundef %new, ptr noundef %head) #2 align 16 !dbg !3970 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3975, metadata !DIExpression()), !dbg !3977
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3976, metadata !DIExpression()), !dbg !3978
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3979
  %1 = load ptr, ptr %new.addr, align 8, !dbg !3980
  %2 = load ptr, ptr %head.addr, align 8, !dbg !3981
  %call = call zeroext i1 @llist_add_batch(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14, !dbg !3982
  ret i1 %call, !dbg !3983
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_work(ptr noundef %work) #2 align 16 !dbg !3984 {
entry:
  %work.addr = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !3988, metadata !DIExpression()), !dbg !3989
  %0 = load ptr, ptr @system_wq, align 8, !dbg !3990
  %1 = load ptr, ptr %work.addr, align 8, !dbg !3991
  %call = call zeroext i1 @queue_work(ptr noundef %0, ptr noundef %1) #14, !dbg !3992
  ret i1 %call, !dbg !3993
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ipcns_get(ptr noundef %task) #0 align 16 !dbg !3994 {
entry:
  %task.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %nsproxy = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !3996, metadata !DIExpression()), !dbg !3999
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #15, !dbg !4000
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !3997, metadata !DIExpression()), !dbg !4001
  store ptr null, ptr %ns, align 8, !dbg !4001
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsproxy) #15, !dbg !4002
  call void @llvm.dbg.declare(metadata ptr %nsproxy, metadata !3998, metadata !DIExpression()), !dbg !4003
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4004
  call void @task_lock(ptr noundef %0) #14, !dbg !4005
  %1 = load ptr, ptr %task.addr, align 8, !dbg !4006
  %nsproxy1 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 103, !dbg !4007
  %2 = load ptr, ptr %nsproxy1, align 8, !dbg !4007
  store ptr %2, ptr %nsproxy, align 8, !dbg !4008
  %3 = load ptr, ptr %nsproxy, align 8, !dbg !4009
  %tobool = icmp ne ptr %3, null, !dbg !4009
  br i1 %tobool, label %if.then, label %if.end, !dbg !4011

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %nsproxy, align 8, !dbg !4012
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %4, i32 0, i32 2, !dbg !4013
  %5 = load ptr, ptr %ipc_ns, align 8, !dbg !4013
  %call = call ptr @get_ipc_ns(ptr noundef %5) #14, !dbg !4014
  store ptr %call, ptr %ns, align 8, !dbg !4015
  br label %if.end, !dbg !4016

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %task.addr, align 8, !dbg !4017
  call void @task_unlock(ptr noundef %6) #14, !dbg !4018
  %7 = load ptr, ptr %ns, align 8, !dbg !4019
  %tobool2 = icmp ne ptr %7, null, !dbg !4019
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !4019

cond.true:                                        ; preds = %if.end
  %8 = load ptr, ptr %ns, align 8, !dbg !4020
  %ns3 = getelementptr inbounds %struct.ipc_namespace, ptr %8, i32 0, i32 28, !dbg !4021
  br label %cond.end, !dbg !4019

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4019

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %ns3, %cond.true ], [ null, %cond.false ], !dbg !4019
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsproxy) #15, !dbg !4022
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #15, !dbg !4022
  ret ptr %cond, !dbg !4023
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ipcns_put(ptr noundef %ns) #0 align 16 !dbg !4024 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4026, metadata !DIExpression()), !dbg !4027
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4028
  %call = call ptr @to_ipc_ns(ptr noundef %0) #14, !dbg !4029
  call void @put_ipc_ns(ptr noundef %call) #14, !dbg !4030
  ret void, !dbg !4031
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ipcns_install(ptr noundef %nsset, ptr noundef %new) #0 align 16 !dbg !4032 {
entry:
  %retval = alloca i32, align 4
  %nsset.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %nsproxy = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nsset, ptr %nsset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nsset.addr, metadata !4034, metadata !DIExpression()), !dbg !4038
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4035, metadata !DIExpression()), !dbg !4039
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsproxy) #15, !dbg !4040
  call void @llvm.dbg.declare(metadata ptr %nsproxy, metadata !4036, metadata !DIExpression()), !dbg !4041
  %0 = load ptr, ptr %nsset.addr, align 8, !dbg !4042
  %nsproxy1 = getelementptr inbounds %struct.nsset, ptr %0, i32 0, i32 1, !dbg !4043
  %1 = load ptr, ptr %nsproxy1, align 8, !dbg !4043
  store ptr %1, ptr %nsproxy, align 8, !dbg !4041
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #15, !dbg !4044
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !4037, metadata !DIExpression()), !dbg !4045
  %2 = load ptr, ptr %new.addr, align 8, !dbg !4046
  %call = call ptr @to_ipc_ns(ptr noundef %2) #14, !dbg !4047
  store ptr %call, ptr %ns, align 8, !dbg !4045
  %3 = load ptr, ptr %ns, align 8, !dbg !4048
  %user_ns = getelementptr inbounds %struct.ipc_namespace, ptr %3, i32 0, i32 25, !dbg !4050
  %4 = load ptr, ptr %user_ns, align 8, !dbg !4050
  %call2 = call zeroext i1 @ns_capable(ptr noundef %4, i32 noundef 21) #14, !dbg !4051
  br i1 %call2, label %lor.lhs.false, label %if.then, !dbg !4052

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %nsset.addr, align 8, !dbg !4053
  %cred = getelementptr inbounds %struct.nsset, ptr %5, i32 0, i32 3, !dbg !4054
  %6 = load ptr, ptr %cred, align 8, !dbg !4054
  %user_ns3 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 22, !dbg !4055
  %7 = load ptr, ptr %user_ns3, align 8, !dbg !4055
  %call4 = call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 21) #14, !dbg !4056
  br i1 %call4, label %if.end, label %if.then, !dbg !4057

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !4058
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4058

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %nsproxy, align 8, !dbg !4059
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %8, i32 0, i32 2, !dbg !4060
  %9 = load ptr, ptr %ipc_ns, align 8, !dbg !4060
  call void @put_ipc_ns(ptr noundef %9) #14, !dbg !4061
  %10 = load ptr, ptr %ns, align 8, !dbg !4062
  %call5 = call ptr @get_ipc_ns(ptr noundef %10) #14, !dbg !4063
  %11 = load ptr, ptr %nsproxy, align 8, !dbg !4064
  %ipc_ns6 = getelementptr inbounds %struct.nsproxy, ptr %11, i32 0, i32 2, !dbg !4065
  store ptr %call5, ptr %ipc_ns6, align 8, !dbg !4066
  store i32 0, ptr %retval, align 4, !dbg !4067
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4067

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #15, !dbg !4068
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsproxy) #15, !dbg !4068
  %12 = load i32, ptr %retval, align 4, !dbg !4068
  ret i32 %12, !dbg !4068
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ipcns_owner(ptr noundef %ns) #0 align 16 !dbg !4069 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4071, metadata !DIExpression()), !dbg !4072
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4073
  %call = call ptr @to_ipc_ns(ptr noundef %0) #14, !dbg !4074
  %user_ns = getelementptr inbounds %struct.ipc_namespace, ptr %call, i32 0, i32 25, !dbg !4075
  %1 = load ptr, ptr %user_ns, align 8, !dbg !4075
  ret ptr %1, !dbg !4076
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #2 align 16 !dbg !4077 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4081, metadata !DIExpression()), !dbg !4082
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4083
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #14, !dbg !4084
  ret void, !dbg !4085
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !4086 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4090, metadata !DIExpression()), !dbg !4092
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4091, metadata !DIExpression()), !dbg !4093
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4094
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !4095
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #14, !dbg !4096
  ret void, !dbg !4097
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !4098 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4102, metadata !DIExpression()), !dbg !4106
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4103, metadata !DIExpression()), !dbg !4107
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4104, metadata !DIExpression()), !dbg !4108
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #15, !dbg !4109
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4105, metadata !DIExpression()), !dbg !4110
  %0 = load i32, ptr %i.addr, align 4, !dbg !4111
  %1 = load ptr, ptr %r.addr, align 8, !dbg !4112
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !4113
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #14, !dbg !4114
  store i32 %call, ptr %old, align 4, !dbg !4110
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !4115
  %tobool = icmp ne ptr %2, null, !dbg !4115
  br i1 %tobool, label %if.then, label %if.end, !dbg !4117

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !4118
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !4119
  store i32 %3, ptr %4, align 4, !dbg !4120
  br label %if.end, !dbg !4121

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !4122
  %tobool1 = icmp ne i32 %5, 0, !dbg !4122
  %lnot = xor i1 %tobool1, true, !dbg !4122
  %lnot2 = xor i1 %lnot, true, !dbg !4122
  %lnot3 = xor i1 %lnot2, true, !dbg !4122
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4122
  %conv = sext i32 %lnot.ext to i64, !dbg !4122
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4122
  %tobool4 = icmp ne i64 %expval, 0, !dbg !4122
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !4124

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !4125
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #14, !dbg !4126
  br label %if.end18, !dbg !4126

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !4127
  %cmp = icmp slt i32 %7, 0, !dbg !4127
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !4127

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !4127
  %9 = load i32, ptr %i.addr, align 4, !dbg !4127
  %add = add i32 %8, %9, !dbg !4127
  %cmp7 = icmp slt i32 %add, 0, !dbg !4127
  br label %lor.end, !dbg !4127

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !4127
  %lnot11 = xor i1 %lnot9, true, !dbg !4127
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !4127
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !4127
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !4127
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !4127
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4129

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !4130
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #14, !dbg !4131
  br label %if.end17, !dbg !4131

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #15, !dbg !4132
  ret void, !dbg !4132
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !4133 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4139, metadata !DIExpression()), !dbg !4141
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4140, metadata !DIExpression()), !dbg !4142
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4143
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !4144
  %1 = load i32, ptr %i.addr, align 4, !dbg !4145
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4146
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #14, !dbg !4147
  ret i32 %call, !dbg !4148
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4149 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !4152 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4160, metadata !DIExpression()), !dbg !4162
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4161, metadata !DIExpression()), !dbg !4163
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4164
  %1 = load i64, ptr %size.addr, align 8, !dbg !4165
  %conv = trunc i64 %1 to i32, !dbg !4165
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !4166
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4167
  %3 = load i64, ptr %size.addr, align 8, !dbg !4167
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !4167
  ret void, !dbg !4168
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !4169 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4172, metadata !DIExpression()), !dbg !4174
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4173, metadata !DIExpression()), !dbg !4175
  %0 = load i32, ptr %i.addr, align 4, !dbg !4176
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4177
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #14, !dbg !4178
  ret i32 %call, !dbg !4179
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !4180 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4185, metadata !DIExpression()), !dbg !4187
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4186, metadata !DIExpression()), !dbg !4188
  ret i1 true, !dbg !4189
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !4190 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4195, metadata !DIExpression()), !dbg !4198
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4196, metadata !DIExpression()), !dbg !4199
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4197, metadata !DIExpression()), !dbg !4200
  ret void, !dbg !4201
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !4202 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4205, metadata !DIExpression()), !dbg !4209
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4206, metadata !DIExpression()), !dbg !4210
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !4211
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4207, metadata !DIExpression()), !dbg !4211
  %0 = load i32, ptr %i.addr, align 4, !dbg !4211
  store i32 %0, ptr %__ret, align 4, !dbg !4211
  %1 = load i32, ptr %__ret, align 4, !dbg !4211
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4211
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !4211
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #15, !dbg !4211, !srcloc !4212
  store i32 %3, ptr %__ret, align 4, !dbg !4211
  %4 = load i32, ptr %__ret, align 4, !dbg !4211
  store i32 %4, ptr %tmp, align 4, !dbg !4211
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !4213
  %5 = load i32, ptr %tmp, align 4, !dbg !4211
  ret i32 %5, !dbg !4214
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @inc_ipc_namespaces(ptr noundef %ns) #0 align 16 !dbg !4215 {
entry:
  %ns.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.kuid_t, align 4
  %tmp = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4219, metadata !DIExpression()), !dbg !4220
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4221
  br label %do.body, !dbg !4222

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4225

do.end:                                           ; preds = %do.body
  %call = call ptr @get_current() #14, !dbg !4222
  %cred = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 94, !dbg !4222
  %1 = load ptr, ptr %cred, align 32, !dbg !4222
  store ptr %1, ptr %tmp, align 8, !dbg !4225
  %2 = load ptr, ptr %tmp, align 8, !dbg !4222
  %euid = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 5, !dbg !4227
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp, ptr align 8 %euid, i64 4, i1 false), !dbg !4227
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4228
  %3 = load i32, ptr %coerce.dive, align 4, !dbg !4228
  %call1 = call ptr @inc_ucount(ptr noundef %0, i32 %3, i32 noundef 3) #14, !dbg !4228
  ret ptr %call1, !dbg !4229
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4230 dso_local zeroext i1 @flush_work(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !4231 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4235, metadata !DIExpression()), !dbg !4237
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4236, metadata !DIExpression()), !dbg !4238
  %0 = load i64, ptr %size.addr, align 8, !dbg !4239
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4240
  %or = or i32 %1, 256, !dbg !4241
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !4242
  ret ptr %call, !dbg !4243
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ns_alloc_inum(ptr noundef %ns) #2 align 16 !dbg !4244 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4248, metadata !DIExpression()), !dbg !4249
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4250
  %stashed = getelementptr inbounds %struct.ns_common, ptr %0, i32 0, i32 0, !dbg !4251
  call void @atomic_long_set(ptr noundef %stashed, i64 noundef 0) #14, !dbg !4252
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !4253
  %inum = getelementptr inbounds %struct.ns_common, ptr %1, i32 0, i32 2, !dbg !4254
  %call = call i32 @proc_alloc_inum(ptr noundef %inum) #14, !dbg !4255
  ret i32 %call, !dbg !4256
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #2 align 16 !dbg !4257 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4261, metadata !DIExpression()), !dbg !4263
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4262, metadata !DIExpression()), !dbg !4264
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4265
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !4266
  %1 = load i32, ptr %n.addr, align 4, !dbg !4267
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #14, !dbg !4268
  ret void, !dbg !4269
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_user_ns(ptr noundef %ns) #2 align 16 !dbg !4270 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4274, metadata !DIExpression()), !dbg !4275
  ret ptr @init_user_ns, !dbg !4276
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4277 dso_local i32 @mq_init_ns(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4280 dso_local zeroext i1 @setup_mq_sysctls(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4283 dso_local zeroext i1 @setup_ipc_sysctls(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4284 dso_local i32 @msg_init_ns(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4285 dso_local void @sem_init_ns(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4286 dso_local void @shm_init_ns(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4287 dso_local void @retire_ipc_sysctls(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4288 dso_local void @retire_mq_sysctls(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_user_ns(ptr noundef %ns) #2 align 16 !dbg !4289 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4293, metadata !DIExpression()), !dbg !4294
  ret void, !dbg !4295
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4296 dso_local void @proc_free_inum(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4299 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dec_ipc_namespaces(ptr noundef %ucounts) #0 align 16 !dbg !4302 {
entry:
  %ucounts.addr = alloca ptr, align 8
  store ptr %ucounts, ptr %ucounts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ucounts.addr, metadata !4306, metadata !DIExpression()), !dbg !4307
  %0 = load ptr, ptr %ucounts.addr, align 8, !dbg !4308
  call void @dec_ucount(ptr noundef %0, i32 noundef 3) #14, !dbg !4309
  ret void, !dbg !4310
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #2 align 16 !dbg !4311 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4316, metadata !DIExpression()), !dbg !4317
  %0 = load i64, ptr %error.addr, align 8, !dbg !4318
  %1 = inttoptr i64 %0 to ptr, !dbg !4319
  ret ptr %1, !dbg !4320
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4321 dso_local ptr @inc_ucount(ptr noundef, i32, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !4324 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !4335
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4329, metadata !DIExpression()), !dbg !4335
  br label %do.body, !dbg !4335

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4336
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4331, metadata !DIExpression()), !dbg !4336
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4336
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4336
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !4335
  br label %do.cond, !dbg !4336

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4336

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !4337
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4333, metadata !DIExpression()), !dbg !4337
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #17, !dbg !4337, !srcloc !4338
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4337
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4337
  %3 = inttoptr i64 %2 to ptr, !dbg !4337
  store ptr %3, ptr %tmp, align 8, !dbg !4337
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !4335
  %4 = load ptr, ptr %tmp, align 8, !dbg !4337
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4335
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4335
  store ptr %5, ptr %tmp1, align 8, !dbg !4335
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !4339
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4335
  ret ptr %6, !dbg !4340
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !4341 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4343, metadata !DIExpression()), !dbg !4348
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4344, metadata !DIExpression()), !dbg !4349
  %0 = load i64, ptr %size.addr, align 8, !dbg !4350
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4351
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4352

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4353
  %tobool = icmp ne i64 %2, 0, !dbg !4353
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4354

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !4355
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4345, metadata !DIExpression()), !dbg !4356
  %3 = load i64, ptr %size.addr, align 8, !dbg !4357
  %cmp = icmp ugt i64 %3, 8192, !dbg !4359
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4360

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4361
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4362
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !4363
  store ptr %call, ptr %retval, align 8, !dbg !4364
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4364

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4365
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !4365
  store i32 %call2, ptr %index, align 4, !dbg !4366
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4367
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4368
  %9 = ptrtoint ptr %8 to i64, !dbg !4368
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !4369
  %idxprom = zext i32 %call3 to i64, !dbg !4370
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4370
  %10 = load i32, ptr %index, align 4, !dbg !4371
  %idxprom4 = zext i32 %10 to i64, !dbg !4370
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4370
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4370
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4372
  %13 = load i64, ptr %size.addr, align 8, !dbg !4373
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !4374
  store ptr %call6, ptr %retval, align 8, !dbg !4375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4375

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !4376
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4377
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4378
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !4379
  store ptr %call8, ptr %retval, align 8, !dbg !4380
  br label %return, !dbg !4380

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4381
  ret ptr %16, !dbg !4381
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4382 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !4383 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4387, metadata !DIExpression()), !dbg !4389
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4388, metadata !DIExpression()), !dbg !4390
  %0 = load i64, ptr %size.addr, align 8, !dbg !4391
  %tobool = icmp ne i64 %0, 0, !dbg !4391
  br i1 %tobool, label %if.end, label %if.then, !dbg !4393

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4394
  br label %return, !dbg !4394

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4395
  %cmp = icmp ule i64 %1, 8, !dbg !4397
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4398

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4399
  br label %return, !dbg !4399

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4400
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4402
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4403

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4404
  %cmp4 = icmp ule i64 %3, 96, !dbg !4405
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4406

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4407
  br label %return, !dbg !4407

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4408
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4410
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4411

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4412
  %cmp9 = icmp ule i64 %5, 192, !dbg !4413
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4414

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4415
  br label %return, !dbg !4415

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4416
  %cmp12 = icmp ule i64 %6, 8, !dbg !4418
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4419

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4420
  br label %return, !dbg !4420

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4421
  %cmp15 = icmp ule i64 %7, 16, !dbg !4423
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4424

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4425
  br label %return, !dbg !4425

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4426
  %cmp18 = icmp ule i64 %8, 32, !dbg !4428
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4429

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4430
  br label %return, !dbg !4430

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4431
  %cmp21 = icmp ule i64 %9, 64, !dbg !4433
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4434

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4435
  br label %return, !dbg !4435

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4436
  %cmp24 = icmp ule i64 %10, 128, !dbg !4438
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4439

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4440
  br label %return, !dbg !4440

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4441
  %cmp27 = icmp ule i64 %11, 256, !dbg !4443
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4444

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4445
  br label %return, !dbg !4445

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4446
  %cmp30 = icmp ule i64 %12, 512, !dbg !4448
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4449

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4450
  br label %return, !dbg !4450

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4451
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4453
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4454

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4455
  br label %return, !dbg !4455

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4456
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4458
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4459

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4460
  br label %return, !dbg !4460

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4461
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4463
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4464

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4465
  br label %return, !dbg !4465

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4466
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4468
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4469

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4470
  br label %return, !dbg !4470

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4471
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4473
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4474

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4475
  br label %return, !dbg !4475

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4476
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4478
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4479

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4480
  br label %return, !dbg !4480

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4481
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4483
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4484

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4485
  br label %return, !dbg !4485

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4486
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4488
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4489

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4490
  br label %return, !dbg !4490

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4491
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4493
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4494

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4495
  br label %return, !dbg !4495

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4496
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4498
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4499

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4500
  br label %return, !dbg !4500

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4501
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4503
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4504

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4505
  br label %return, !dbg !4505

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4506
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4508
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4509

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4510
  br label %return, !dbg !4510

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4511, !range !4513, !noundef !825
  %tobool69 = trunc i8 %25 to i1, !dbg !4511
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4514

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4515

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_189() #19, !dbg !4516, !srcloc !4519
  unreachable, !dbg !4516

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4520

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4521

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4522

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4524

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4522

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #15, !dbg !4526, !srcloc !4528
  br label %do.end75, !dbg !4526

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4522

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4529
  br label %return, !dbg !4529

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4530
  ret i32 %26, !dbg !4530
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4531 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !4537 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4541, metadata !DIExpression()), !dbg !4543
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4542, metadata !DIExpression()), !dbg !4544
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4545
  %and = and i32 %0, 17, !dbg !4545
  %cmp = icmp eq i32 %and, 0, !dbg !4545
  %lnot = xor i1 %cmp, true, !dbg !4545
  %lnot1 = xor i1 %lnot, true, !dbg !4545
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4545
  %conv = sext i32 %lnot.ext to i64, !dbg !4545
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4545
  %tobool = icmp ne i64 %expval, 0, !dbg !4545
  br i1 %tobool, label %if.then, label %if.end, !dbg !4547

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4548
  br label %return, !dbg !4548

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4549
  %and2 = and i32 %1, 1, !dbg !4551
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4551
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4552

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4553
  br label %return, !dbg !4553

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4554
  br label %return, !dbg !4554

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4556
  ret i32 %2, !dbg !4556
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4557 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4558 dso_local void @__compiletime_assert_189() #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_set(ptr noundef %v, i64 noundef %i) #5 align 16 !dbg !4559 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4563, metadata !DIExpression()), !dbg !4565
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4564, metadata !DIExpression()), !dbg !4566
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4567
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #14, !dbg !4568
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4569
  %2 = load i64, ptr %i.addr, align 8, !dbg !4570
  call void @raw_atomic_long_set(ptr noundef %1, i64 noundef %2) #14, !dbg !4571
  ret void, !dbg !4572
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4573 dso_local i32 @proc_alloc_inum(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !4576 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4578, metadata !DIExpression()), !dbg !4580
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4579, metadata !DIExpression()), !dbg !4581
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4582
  %1 = load i64, ptr %size.addr, align 8, !dbg !4583
  %conv = trunc i64 %1 to i32, !dbg !4583
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !4584
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4585
  %3 = load i64, ptr %size.addr, align 8, !dbg !4585
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #14, !dbg !4585
  ret void, !dbg !4586
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_set(ptr noundef %v, i64 noundef %i) #5 align 16 !dbg !4587 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4589, metadata !DIExpression()), !dbg !4591
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4590, metadata !DIExpression()), !dbg !4592
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4593
  %1 = load i64, ptr %i.addr, align 8, !dbg !4594
  call void @raw_atomic64_set(ptr noundef %0, i64 noundef %1) #14, !dbg !4595
  ret void, !dbg !4596
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #5 align 16 !dbg !4597 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4602, metadata !DIExpression()), !dbg !4604
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4603, metadata !DIExpression()), !dbg !4605
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4606
  %1 = load i64, ptr %i.addr, align 8, !dbg !4607
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #14, !dbg !4608
  ret void, !dbg !4609
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #5 align 16 !dbg !4610 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4613, metadata !DIExpression()), !dbg !4615
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4614, metadata !DIExpression()), !dbg !4616
  br label %do.body, !dbg !4617

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !4618
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4618
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !4618
  store volatile i64 %0, ptr %counter, align 8, !dbg !4618
  br label %do.end, !dbg !4618

do.end:                                           ; preds = %do.body
  ret void, !dbg !4620
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !4621 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4625, metadata !DIExpression()), !dbg !4627
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4626, metadata !DIExpression()), !dbg !4628
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4629
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #14, !dbg !4630
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4631
  %2 = load i32, ptr %i.addr, align 4, !dbg !4632
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #14, !dbg !4633
  ret void, !dbg !4634
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !4635 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4637, metadata !DIExpression()), !dbg !4639
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4638, metadata !DIExpression()), !dbg !4640
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4641
  %1 = load i32, ptr %i.addr, align 4, !dbg !4642
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #14, !dbg !4643
  ret void, !dbg !4644
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !4645 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4647, metadata !DIExpression()), !dbg !4649
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4648, metadata !DIExpression()), !dbg !4650
  br label %do.body, !dbg !4651

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !4652
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4652
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !4652
  store volatile i32 %0, ptr %counter, align 4, !dbg !4652
  br label %do.end, !dbg !4652

do.end:                                           ; preds = %do.body
  ret void, !dbg !4654
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4655 dso_local void @dec_ucount(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4658 dso_local void @__rcu_read_lock() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #5 align 16 !dbg !4659 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4661, metadata !DIExpression()), !dbg !4662
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4663
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4663
  call void @_raw_spin_lock(ptr noundef %1) #14, !dbg !4663
  ret void, !dbg !4664
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4665 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4670 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4671 dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #2 align 16 !dbg !4674 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !4678, metadata !DIExpression()), !dbg !4680
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !4679, metadata !DIExpression()), !dbg !4681
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !4682
  %1 = load ptr, ptr %work.addr, align 8, !dbg !4683
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #14, !dbg !4684
  ret i1 %call, !dbg !4685
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4686 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_ipc(ptr noundef %unused) #0 align 16 !dbg !4689 {
entry:
  %unused.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %n = alloca ptr, align 8
  %t = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr4 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr11 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  store ptr %unused, ptr %unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !4691, metadata !DIExpression()), !dbg !4707
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #15, !dbg !4708
  call void @llvm.dbg.declare(metadata ptr %node, metadata !4692, metadata !DIExpression()), !dbg !4709
  %call = call ptr @llist_del_all(ptr noundef @free_ipc_list) #14, !dbg !4710
  store ptr %call, ptr %node, align 8, !dbg !4709
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #15, !dbg !4711
  call void @llvm.dbg.declare(metadata ptr %n, metadata !4693, metadata !DIExpression()), !dbg !4712
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #15, !dbg !4711
  call void @llvm.dbg.declare(metadata ptr %t, metadata !4694, metadata !DIExpression()), !dbg !4713
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4714
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4695, metadata !DIExpression()), !dbg !4714
  %0 = load ptr, ptr %node, align 8, !dbg !4714
  store ptr %0, ptr %__mptr, align 8, !dbg !4714
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4714
  %add.ptr = getelementptr i8, ptr %1, i64 -1072, !dbg !4714
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4714
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4715
  %2 = load ptr, ptr %tmp, align 8, !dbg !4714
  store ptr %2, ptr %n, align 8, !dbg !4715
  br label %for.cond, !dbg !4715

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %n, align 8, !dbg !4716
  %4 = ptrtoint ptr %3 to i64, !dbg !4716
  %add = add i64 %4, 1072, !dbg !4716
  %cmp = icmp ne i64 %add, 0, !dbg !4716
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4716

land.rhs:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !4717
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !4698, metadata !DIExpression()), !dbg !4717
  %5 = load ptr, ptr %n, align 8, !dbg !4717
  %mnt_llist = getelementptr inbounds %struct.ipc_namespace, ptr %5, i32 0, i32 27, !dbg !4717
  %next = getelementptr inbounds %struct.llist_node, ptr %mnt_llist, i32 0, i32 0, !dbg !4717
  %6 = load ptr, ptr %next, align 8, !dbg !4717
  store ptr %6, ptr %__mptr1, align 8, !dbg !4717
  %7 = load ptr, ptr %__mptr1, align 8, !dbg !4717
  %add.ptr3 = getelementptr i8, ptr %7, i64 -1072, !dbg !4717
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !4717
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !4716
  %8 = load ptr, ptr %tmp2, align 8, !dbg !4717
  store ptr %8, ptr %t, align 8, !dbg !4716
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ true, %land.rhs ], !dbg !4718
  br i1 %9, label %for.body, label %for.end, !dbg !4715

for.body:                                         ; preds = %land.end
  %10 = load ptr, ptr %n, align 8, !dbg !4719
  %mq_mnt = getelementptr inbounds %struct.ipc_namespace, ptr %10, i32 0, i32 14, !dbg !4720
  %11 = load ptr, ptr %mq_mnt, align 8, !dbg !4720
  call void @mnt_make_shortterm(ptr noundef %11) #14, !dbg !4721
  br label %for.inc, !dbg !4721

for.inc:                                          ; preds = %for.body
  %12 = load ptr, ptr %t, align 8, !dbg !4716
  store ptr %12, ptr %n, align 8, !dbg !4716
  br label %for.cond, !dbg !4716, !llvm.loop !4722

for.end:                                          ; preds = %land.end
  call void @synchronize_rcu() #14, !dbg !4724
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #15, !dbg !4725
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !4701, metadata !DIExpression()), !dbg !4725
  %13 = load ptr, ptr %node, align 8, !dbg !4725
  store ptr %13, ptr %__mptr4, align 8, !dbg !4725
  %14 = load ptr, ptr %__mptr4, align 8, !dbg !4725
  %add.ptr6 = getelementptr i8, ptr %14, i64 -1072, !dbg !4725
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !4725
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #15, !dbg !4726
  %15 = load ptr, ptr %tmp5, align 8, !dbg !4725
  store ptr %15, ptr %n, align 8, !dbg !4726
  br label %for.cond7, !dbg !4726

for.cond7:                                        ; preds = %for.inc18, %for.end
  %16 = load ptr, ptr %n, align 8, !dbg !4727
  %17 = ptrtoint ptr %16 to i64, !dbg !4727
  %add8 = add i64 %17, 1072, !dbg !4727
  %cmp9 = icmp ne i64 %add8, 0, !dbg !4727
  br i1 %cmp9, label %land.rhs10, label %land.end16, !dbg !4727

land.rhs10:                                       ; preds = %for.cond7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr11) #15, !dbg !4728
  call void @llvm.dbg.declare(metadata ptr %__mptr11, metadata !4704, metadata !DIExpression()), !dbg !4728
  %18 = load ptr, ptr %n, align 8, !dbg !4728
  %mnt_llist12 = getelementptr inbounds %struct.ipc_namespace, ptr %18, i32 0, i32 27, !dbg !4728
  %next13 = getelementptr inbounds %struct.llist_node, ptr %mnt_llist12, i32 0, i32 0, !dbg !4728
  %19 = load ptr, ptr %next13, align 8, !dbg !4728
  store ptr %19, ptr %__mptr11, align 8, !dbg !4728
  %20 = load ptr, ptr %__mptr11, align 8, !dbg !4728
  %add.ptr15 = getelementptr i8, ptr %20, i64 -1072, !dbg !4728
  store ptr %add.ptr15, ptr %tmp14, align 8, !dbg !4728
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr11) #15, !dbg !4727
  %21 = load ptr, ptr %tmp14, align 8, !dbg !4728
  store ptr %21, ptr %t, align 8, !dbg !4727
  br label %land.end16

land.end16:                                       ; preds = %land.rhs10, %for.cond7
  %22 = phi i1 [ false, %for.cond7 ], [ true, %land.rhs10 ], !dbg !4729
  br i1 %22, label %for.body17, label %for.end19, !dbg !4726

for.body17:                                       ; preds = %land.end16
  %23 = load ptr, ptr %n, align 8, !dbg !4730
  call void @free_ipc_ns(ptr noundef %23) #14, !dbg !4731
  br label %for.inc18, !dbg !4731

for.inc18:                                        ; preds = %for.body17
  %24 = load ptr, ptr %t, align 8, !dbg !4727
  store ptr %24, ptr %n, align 8, !dbg !4727
  br label %for.cond7, !dbg !4727, !llvm.loop !4732

for.end19:                                        ; preds = %land.end16
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #15, !dbg !4734
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #15, !dbg !4734
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #15, !dbg !4734
  ret void, !dbg !4734
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @llist_del_all(ptr noundef %head) #2 align 16 !dbg !4735 {
entry:
  %head.addr = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4739, metadata !DIExpression()), !dbg !4745
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #15, !dbg !4746
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !4740, metadata !DIExpression()), !dbg !4746
  %0 = load ptr, ptr %head.addr, align 8, !dbg !4746
  %first = getelementptr inbounds %struct.llist_head, ptr %0, i32 0, i32 0, !dbg !4746
  store ptr %first, ptr %__ai_ptr, align 8, !dbg !4746
  br label %do.body, !dbg !4746

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4747

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4747

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %__ai_ptr, align 8, !dbg !4746
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 8) #14, !dbg !4746
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #15, !dbg !4749
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4743, metadata !DIExpression()), !dbg !4749
  store ptr null, ptr %__ret, align 8, !dbg !4749
  %2 = load ptr, ptr %__ret, align 8, !dbg !4749
  %3 = load ptr, ptr %__ai_ptr, align 8, !dbg !4749
  %4 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %3, ptr %2, ptr elementtype(ptr) %3) #15, !dbg !4749, !srcloc !4750
  store ptr %4, ptr %__ret, align 8, !dbg !4749
  %5 = load ptr, ptr %__ret, align 8, !dbg !4749
  store ptr %5, ptr %tmp1, align 8, !dbg !4749
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #15, !dbg !4746
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4749
  store ptr %6, ptr %tmp, align 8, !dbg !4746
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #15, !dbg !4751
  %7 = load ptr, ptr %tmp, align 8, !dbg !4746
  ret ptr %7, !dbg !4752
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4753 dso_local void @mnt_make_shortterm(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4756 dso_local void @synchronize_rcu() #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_ipc_ns(ptr noundef %ns) #0 align 16 !dbg !4757 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4759, metadata !DIExpression()), !dbg !4760
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4761
  %mq_mnt = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 14, !dbg !4762
  %1 = load ptr, ptr %mq_mnt, align 8, !dbg !4762
  call void @mntput(ptr noundef %1) #14, !dbg !4763
  %2 = load ptr, ptr %ns.addr, align 8, !dbg !4764
  call void @sem_exit_ns(ptr noundef %2) #14, !dbg !4765
  %3 = load ptr, ptr %ns.addr, align 8, !dbg !4766
  call void @msg_exit_ns(ptr noundef %3) #14, !dbg !4767
  %4 = load ptr, ptr %ns.addr, align 8, !dbg !4768
  call void @shm_exit_ns(ptr noundef %4) #14, !dbg !4769
  %5 = load ptr, ptr %ns.addr, align 8, !dbg !4770
  call void @retire_mq_sysctls(ptr noundef %5) #14, !dbg !4771
  %6 = load ptr, ptr %ns.addr, align 8, !dbg !4772
  call void @retire_ipc_sysctls(ptr noundef %6) #14, !dbg !4773
  %7 = load ptr, ptr %ns.addr, align 8, !dbg !4774
  %ucounts = getelementptr inbounds %struct.ipc_namespace, ptr %7, i32 0, i32 26, !dbg !4775
  %8 = load ptr, ptr %ucounts, align 8, !dbg !4775
  call void @dec_ipc_namespaces(ptr noundef %8) #14, !dbg !4776
  %9 = load ptr, ptr %ns.addr, align 8, !dbg !4777
  %user_ns = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 25, !dbg !4778
  %10 = load ptr, ptr %user_ns, align 8, !dbg !4778
  call void @put_user_ns(ptr noundef %10) #14, !dbg !4779
  %11 = load ptr, ptr %ns.addr, align 8, !dbg !4780
  %ns1 = getelementptr inbounds %struct.ipc_namespace, ptr %11, i32 0, i32 28, !dbg !4780
  %inum = getelementptr inbounds %struct.ns_common, ptr %ns1, i32 0, i32 2, !dbg !4780
  %12 = load i32, ptr %inum, align 8, !dbg !4780
  call void @proc_free_inum(i32 noundef %12) #14, !dbg !4780
  %13 = load ptr, ptr %ns.addr, align 8, !dbg !4781
  call void @kfree(ptr noundef %13) #14, !dbg !4782
  ret void, !dbg !4783
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4784 dso_local void @mntput(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4785 dso_local void @sem_exit_ns(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4786 dso_local void @msg_exit_ns(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4787 dso_local void @shm_exit_ns(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_lock(ptr noundef %p) #2 align 16 !dbg !4788 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4793, metadata !DIExpression()), !dbg !4794
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4795
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !4796
  call void @spin_lock(ptr noundef %alloc_lock) #14, !dbg !4797
  ret void, !dbg !4798
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_unlock(ptr noundef %p) #2 align 16 !dbg !4799 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4801, metadata !DIExpression()), !dbg !4802
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4803
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !4804
  call void @spin_unlock(ptr noundef %alloc_lock) #14, !dbg !4805
  ret void, !dbg !4806
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_ipc_ns(ptr noundef %ns) #2 align 16 !dbg !4807 {
entry:
  %ns.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4811, metadata !DIExpression()), !dbg !4814
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4815
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4812, metadata !DIExpression()), !dbg !4815
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4815
  store ptr %0, ptr %__mptr, align 8, !dbg !4815
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4815
  %add.ptr = getelementptr i8, ptr %1, i64 -1080, !dbg !4815
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4815
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4816
  %2 = load ptr, ptr %tmp, align 8, !dbg !4815
  ret ptr %2, !dbg !4817
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4818 dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { nounwind memory(none) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642}
!llvm.ident = !{!3643}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "free_ipc_list", scope: !2, file: !3, line: 168, type: !3338, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF ipc/.namespace.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22ipc/namespace\22 -D KBUILD_BASENAME=\22namespace\22 -D KBUILD_MODNAME=\22namespace\22 -D __KBUILD_MODNAME=kmod_namespace -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o ipc/namespace.ll ipc/namespace.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !209, globals: !3622, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "ipc/namespace.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bec2bcbe0e2a13b5f04b56f7fe2dbd3a")
!4 = !{!5, !14, !19, !25, !32, !39, !135, !140, !146, !154, !159, !173, !183}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !15, line: 65, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!16 = !{!17, !18}
!17 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!18 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !20, line: 16, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "TT_NONE", value: 0)
!23 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!24 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !26, line: 15, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!29 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!30 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!31 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !33, line: 51, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!34 = !{!35, !36, !37, !38}
!35 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!36 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!37 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!38 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !41, file: !40, line: 147, baseType: !7, size: 32, elements: !132)
!40 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !40, line: 135, size: 512, elements: !42)
!42 = !{!43, !47, !49, !51, !55, !56, !72, !130, !131}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !41, file: !40, line: 136, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !41, file: !40, line: 137, baseType: !48, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !41, file: !40, line: 138, baseType: !50, size: 32, offset: 128)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !41, file: !40, line: 139, baseType: !52, size: 16, offset: 160)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !53, line: 24, baseType: !54)
!53 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !41, file: !40, line: 150, baseType: !39, size: 32, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !41, file: !40, line: 151, baseType: !57, size: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !40, line: 64, baseType: !59)
!59 = !DISubroutineType(types: !60)
!60 = !{!50, !61, !50, !48, !62, !68}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !53, line: 61, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !65, line: 72, baseType: !66)
!65 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !65, line: 16, baseType: !67)
!67 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !53, line: 52, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !65, line: 88, baseType: !71)
!71 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !41, file: !40, line: 152, baseType: !73, size: 64, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !40, line: 117, size: 256, elements: !75)
!75 = !{!76, !81}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !74, file: !40, line: 118, baseType: !77, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !53, line: 174, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 172, size: 32, elements: !79)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !78, file: !53, line: 173, baseType: !50, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !74, file: !40, line: 119, baseType: !82, size: 192, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !83, line: 41, baseType: !84)
!83 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !83, line: 37, size: 192, elements: !85)
!85 = !{!86, !124}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !84, file: !83, line: 38, baseType: !87, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !88, line: 29, baseType: !89)
!88 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !88, line: 17, size: 32, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !88, line: 18, baseType: !92, size: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !88, line: 18, size: 32, elements: !93)
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !92, file: !88, line: 19, baseType: !95, size: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !96, line: 14, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !95, file: !96, line: 15, baseType: !99, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !100, line: 44, baseType: !101)
!100 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !100, line: 14, size: 32, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !100, line: 15, baseType: !104, size: 32)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !100, line: 15, size: 32, elements: !105)
!105 = !{!106, !107, !117}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !104, file: !100, line: 16, baseType: !77, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, scope: !104, file: !100, line: 24, baseType: !108, size: 16)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !100, line: 24, size: 16, elements: !109)
!109 = !{!110, !116}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !108, file: !100, line: 25, baseType: !111, size: 8)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !112, line: 17, baseType: !113)
!112 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !114, line: 21, baseType: !115)
!114 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!115 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !108, file: !100, line: 26, baseType: !111, size: 8, offset: 8)
!117 = !DIDerivedType(tag: DW_TAG_member, scope: !104, file: !100, line: 28, baseType: !118, size: 32)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !100, line: 28, size: 32, elements: !119)
!119 = !{!120, !123}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !118, file: !100, line: 29, baseType: !121, size: 16)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !112, line: 19, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !114, line: 24, baseType: !54)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !118, file: !100, line: 30, baseType: !121, size: 16, offset: 16)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !84, file: !83, line: 39, baseType: !125, size: 128, offset: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !53, line: 190, size: 128, elements: !126)
!126 = !{!127, !129}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !53, line: 191, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !125, file: !53, line: 191, baseType: !128, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !41, file: !40, line: 153, baseType: !48, size: 64, offset: 384)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !41, file: !40, line: 154, baseType: !48, size: 64, offset: 448)
!132 = !{!133, !134}
!133 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!134 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
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
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !147, line: 119, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!148 = !{!149, !150, !151, !152, !153}
!149 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!150 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!151 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!152 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!153 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !155, line: 10, baseType: !7, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!156 = !{!157, !158}
!157 = !DIEnumerator(name: "false", value: 0)
!158 = !DIEnumerator(name: "true", value: 1)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ucount_type", file: !160, line: 40, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!162 = !DIEnumerator(name: "UCOUNT_USER_NAMESPACES", value: 0)
!163 = !DIEnumerator(name: "UCOUNT_PID_NAMESPACES", value: 1)
!164 = !DIEnumerator(name: "UCOUNT_UTS_NAMESPACES", value: 2)
!165 = !DIEnumerator(name: "UCOUNT_IPC_NAMESPACES", value: 3)
!166 = !DIEnumerator(name: "UCOUNT_NET_NAMESPACES", value: 4)
!167 = !DIEnumerator(name: "UCOUNT_MNT_NAMESPACES", value: 5)
!168 = !DIEnumerator(name: "UCOUNT_CGROUP_NAMESPACES", value: 6)
!169 = !DIEnumerator(name: "UCOUNT_TIME_NAMESPACES", value: 7)
!170 = !DIEnumerator(name: "UCOUNT_INOTIFY_INSTANCES", value: 8)
!171 = !DIEnumerator(name: "UCOUNT_INOTIFY_WATCHES", value: 9)
!172 = !DIEnumerator(name: "UCOUNT_COUNTS", value: 10)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !174, line: 364, baseType: !7, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!175 = !{!176, !177, !178, !179, !180, !181, !182}
!176 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!177 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!178 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!179 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!180 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!181 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!182 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !184, line: 30, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208}
!186 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!187 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!188 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!189 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!190 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!191 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!192 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!193 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!194 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!195 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!196 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!197 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!198 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!199 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!200 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!201 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!202 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!203 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!204 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!205 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!206 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!207 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!208 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!209 = !{!48, !210, !211, !3616, !505, !67, !3617, !3619, !2622, !3621}
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !53, line: 154, baseType: !7)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !214, line: 110, size: 1472, elements: !215)
!214 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!215 = !{!216, !225, !233, !240, !241, !242, !243, !244, !245, !246, !247, !256, !257, !258, !259, !260, !261, !413, !414, !415, !416, !417, !454, !3602, !3603, !3611}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !213, file: !214, line: 111, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !218, line: 13, baseType: !219)
!218 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !53, line: 181, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 179, size: 64, elements: !221)
!221 = !{!222}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !220, file: !53, line: 180, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !112, line: 22, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !114, line: 30, baseType: !71)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !213, file: !214, line: 112, baseType: !226, size: 32, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !227, line: 23, baseType: !228)
!227 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 21, size: 32, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !228, file: !227, line: 22, baseType: !231, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !53, line: 37, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !65, line: 49, baseType: !7)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !213, file: !214, line: 113, baseType: !234, size: 32, offset: 96)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !227, line: 28, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 26, size: 32, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !235, file: !227, line: 27, baseType: !238, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !53, line: 38, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !65, line: 50, baseType: !7)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !213, file: !214, line: 114, baseType: !226, size: 32, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !213, file: !214, line: 115, baseType: !234, size: 32, offset: 160)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !213, file: !214, line: 116, baseType: !226, size: 32, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !213, file: !214, line: 117, baseType: !234, size: 32, offset: 224)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !213, file: !214, line: 118, baseType: !226, size: 32, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !213, file: !214, line: 119, baseType: !234, size: 32, offset: 288)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !213, file: !214, line: 120, baseType: !7, size: 32, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !213, file: !214, line: 121, baseType: !248, size: 64, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !249, line: 24, baseType: !250)
!249 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 24, size: 64, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !250, file: !249, line: 24, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !112, line: 23, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !114, line: 31, baseType: !255)
!255 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !213, file: !214, line: 122, baseType: !248, size: 64, offset: 448)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !213, file: !214, line: 123, baseType: !248, size: 64, offset: 512)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !213, file: !214, line: 124, baseType: !248, size: 64, offset: 576)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !213, file: !214, line: 125, baseType: !248, size: 64, offset: 640)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !213, file: !214, line: 127, baseType: !115, size: 8, offset: 704)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !213, file: !214, line: 129, baseType: !262, size: 64, offset: 768)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !264, line: 195, size: 1728, elements: !265)
!264 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!265 = !{!266, !271, !276, !288, !302, !305, !306, !313, !314, !315, !316, !321, !322, !323, !325, !326, !375, !398}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !263, file: !264, line: 196, baseType: !267, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !147, line: 113, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !147, line: 111, size: 32, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !268, file: !147, line: 112, baseType: !77, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !263, file: !264, line: 197, baseType: !272, size: 32, offset: 32)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !264, line: 28, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !53, line: 104, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !112, line: 20, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !114, line: 26, baseType: !50)
!276 = !DIDerivedType(tag: DW_TAG_member, scope: !263, file: !264, line: 198, baseType: !277, size: 192, offset: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !263, file: !264, line: 198, size: 192, elements: !278)
!278 = !{!279, !280}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !277, file: !264, line: 199, baseType: !125, size: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !277, file: !264, line: 200, baseType: !281, size: 192, align: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !282, line: 5, size: 192, align: 64, elements: !283)
!282 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!283 = !{!284, !285, !287}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !281, file: !282, line: 6, baseType: !67, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !281, file: !282, line: 7, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !281, file: !282, line: 8, baseType: !286, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !263, file: !264, line: 205, baseType: !289, size: 320, offset: 256)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !290, line: 48, size: 320, elements: !291)
!290 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!291 = !{!292, !293, !294, !299, !301}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !289, file: !290, line: 49, baseType: !217, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !289, file: !290, line: 55, baseType: !217, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !289, file: !290, line: 57, baseType: !295, size: 32, offset: 128)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !296, line: 15, size: 32, elements: !297)
!296 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !295, file: !296, line: 20, baseType: !77, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !289, file: !290, line: 59, baseType: !300, size: 32, offset: 160)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !96, line: 23, baseType: !95)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !289, file: !290, line: 60, baseType: !125, size: 128, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !263, file: !264, line: 206, baseType: !303, size: 64, offset: 576)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !264, line: 206, flags: DIFlagFwdDecl)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !263, file: !264, line: 207, baseType: !48, size: 64, offset: 640)
!306 = !DIDerivedType(tag: DW_TAG_member, scope: !263, file: !264, line: 208, baseType: !307, size: 64, offset: 704)
!307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !263, file: !264, line: 208, size: 64, elements: !308)
!308 = !{!309, !312}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !307, file: !264, line: 209, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !311, line: 8, baseType: !224)
!311 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!312 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !307, file: !264, line: 210, baseType: !310, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !263, file: !264, line: 212, baseType: !310, size: 64, offset: 768)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !263, file: !264, line: 213, baseType: !226, size: 32, offset: 832)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !263, file: !264, line: 214, baseType: !234, size: 32, offset: 864)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !263, file: !264, line: 215, baseType: !317, size: 32, offset: 896)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !264, line: 31, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !53, line: 110, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !112, line: 21, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !114, line: 27, baseType: !7)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !263, file: !264, line: 216, baseType: !54, size: 16, offset: 928)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !263, file: !264, line: 217, baseType: !54, size: 16, offset: 944)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !263, file: !264, line: 221, baseType: !324, size: 16, offset: 960)
!324 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !263, file: !264, line: 228, baseType: !67, size: 64, offset: 1024)
!326 = !DIDerivedType(tag: DW_TAG_member, scope: !263, file: !264, line: 245, baseType: !327, size: 320, offset: 1088)
!327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !263, file: !264, line: 245, size: 320, elements: !328)
!328 = !{!329, !366}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !327, file: !264, line: 246, baseType: !330, size: 320)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !264, line: 114, size: 320, elements: !331)
!331 = !{!332, !333, !345, !348, !365}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !330, file: !264, line: 116, baseType: !67, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, scope: !330, file: !264, line: 117, baseType: !334, size: 64, offset: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !330, file: !264, line: 117, size: 64, elements: !335)
!335 = !{!336, !344}
!336 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !264, line: 118, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !334, file: !264, line: 118, size: 64, elements: !338)
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !337, file: !264, line: 120, baseType: !121, size: 16)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !337, file: !264, line: 121, baseType: !341, size: 48, offset: 16)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 48, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 6)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !334, file: !264, line: 127, baseType: !67, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !330, file: !264, line: 129, baseType: !346, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !264, line: 102, flags: DIFlagFwdDecl)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !330, file: !264, line: 130, baseType: !349, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !264, line: 108, size: 192, elements: !351)
!351 = !{!352, !361, !362}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !350, file: !264, line: 109, baseType: !353, size: 128, align: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !53, line: 232, size: 128, align: 64, elements: !354)
!354 = !{!355, !357}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !53, line: 233, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !353, file: !53, line: 234, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !356}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !350, file: !264, line: 110, baseType: !267, size: 32, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !350, file: !264, line: 111, baseType: !363, size: 8, offset: 160)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !53, line: 35, baseType: !364)
!364 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !330, file: !264, line: 131, baseType: !44, size: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !327, file: !264, line: 247, baseType: !367, size: 320)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !327, file: !264, line: 247, size: 320, elements: !368)
!368 = !{!369, !370, !371, !372, !373}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !367, file: !264, line: 248, baseType: !67, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !367, file: !264, line: 249, baseType: !67, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !367, file: !264, line: 250, baseType: !346, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !367, file: !264, line: 251, baseType: !349, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !367, file: !264, line: 252, baseType: !374, size: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, scope: !263, file: !264, line: 260, baseType: !376, size: 256, offset: 1408)
!376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !263, file: !264, line: 260, size: 256, elements: !377)
!377 = !{!378, !386}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !376, file: !264, line: 261, baseType: !379, size: 256)
!379 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !264, line: 134, size: 256, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !379, file: !264, line: 135, baseType: !48, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !379, file: !264, line: 136, baseType: !383, size: 256)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 256, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 4)
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !376, file: !264, line: 262, baseType: !387, size: 256)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !376, file: !264, line: 262, size: 256, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !387, file: !264, line: 264, baseType: !125, size: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !387, file: !264, line: 265, baseType: !391, size: 128, offset: 128)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !392, line: 22, size: 128, elements: !393)
!392 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!393 = !{!394, !397}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !391, file: !392, line: 23, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !392, line: 23, flags: DIFlagFwdDecl)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !391, file: !392, line: 24, baseType: !67, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !263, file: !264, line: 280, baseType: !399, size: 64, offset: 1664)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !264, line: 176, size: 192, elements: !401)
!401 = !{!402, !411, !412}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !400, file: !264, line: 177, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !264, line: 171, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!50, !262, !407, !409, !262}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !400, file: !264, line: 178, baseType: !262, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !400, file: !264, line: 179, baseType: !346, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !213, file: !214, line: 130, baseType: !262, size: 64, offset: 832)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !213, file: !214, line: 131, baseType: !262, size: 64, offset: 896)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !213, file: !214, line: 132, baseType: !262, size: 64, offset: 960)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !213, file: !214, line: 135, baseType: !48, size: 64, offset: 1024)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !213, file: !214, line: 137, baseType: !418, size: 64, offset: 1088)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !420, line: 14, size: 1088, elements: !421)
!420 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!421 = !{!422, !423, !432, !433, !434, !441, !442, !443}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !419, file: !420, line: 15, baseType: !267, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !419, file: !420, line: 17, baseType: !424, size: 320, offset: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !425, line: 22, size: 320, elements: !426)
!425 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!426 = !{!427, !428, !429, !430}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !424, file: !425, line: 23, baseType: !300, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !424, file: !425, line: 24, baseType: !223, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !424, file: !425, line: 26, baseType: !125, size: 128, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !424, file: !425, line: 28, baseType: !431, size: 64, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !419, file: !420, line: 19, baseType: !67, size: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !419, file: !420, line: 20, baseType: !217, size: 64, offset: 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !419, file: !420, line: 23, baseType: !435, size: 128, offset: 512)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !53, line: 198, size: 128, elements: !436)
!436 = !{!437, !439}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !435, file: !53, line: 199, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !435, file: !53, line: 199, baseType: !440, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !419, file: !420, line: 24, baseType: !226, size: 32, offset: 640)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !419, file: !420, line: 29, baseType: !217, size: 64, offset: 704)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !419, file: !420, line: 36, baseType: !444, size: 320, offset: 768)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !445, line: 15, size: 320, elements: !446)
!445 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!446 = !{!447, !448, !449, !450, !451, !452, !453}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !444, file: !445, line: 16, baseType: !300, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !444, file: !445, line: 18, baseType: !50, size: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !444, file: !445, line: 19, baseType: !50, size: 32, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !444, file: !445, line: 20, baseType: !50, size: 32, offset: 96)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !444, file: !445, line: 21, baseType: !50, size: 32, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !444, file: !445, line: 22, baseType: !67, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !444, file: !445, line: 23, baseType: !67, size: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !213, file: !214, line: 138, baseType: !455, size: 64, offset: 1152)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !160, line: 68, size: 4800, elements: !457)
!457 = !{!458, !480, !481, !482, !483, !484, !485, !486, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3600}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !456, file: !160, line: 69, baseType: !459, size: 576)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !160, line: 23, size: 576, elements: !460)
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !459, file: !160, line: 24, baseType: !319, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, scope: !459, file: !160, line: 25, baseType: !463, size: 512, offset: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !459, file: !160, line: 25, size: 512, elements: !464)
!464 = !{!465, !474}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !463, file: !160, line: 26, baseType: !466, size: 480)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 480, elements: !472)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !160, line: 17, size: 96, elements: !468)
!468 = !{!469, !470, !471}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !467, file: !160, line: 18, baseType: !319, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !467, file: !160, line: 19, baseType: !319, size: 32, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !467, file: !160, line: 20, baseType: !319, size: 32, offset: 64)
!472 = !{!473}
!473 = !DISubrange(count: 5)
!474 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !160, line: 27, baseType: !475, size: 128)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !463, file: !160, line: 27, size: 128, elements: !476)
!476 = !{!477, !479}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !475, file: !160, line: 28, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !475, file: !160, line: 29, baseType: !478, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !456, file: !160, line: 70, baseType: !459, size: 576, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !456, file: !160, line: 71, baseType: !459, size: 576, offset: 1152)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !456, file: !160, line: 72, baseType: !455, size: 64, offset: 1728)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !456, file: !160, line: 73, baseType: !50, size: 32, offset: 1792)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !456, file: !160, line: 74, baseType: !226, size: 32, offset: 1824)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !456, file: !160, line: 75, baseType: !234, size: 32, offset: 1856)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !456, file: !160, line: 76, baseType: !487, size: 192, offset: 1920)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !488, line: 9, size: 192, elements: !489)
!488 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!489 = !{!490, !491, !3587, !3588}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !487, file: !488, line: 10, baseType: !217, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !487, file: !488, line: 11, baseType: !492, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !495, line: 16, size: 512, elements: !496)
!495 = !DIFile(filename: "./include/linux/proc_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10d8d049c3f8fd93040e0b5385a478ba")
!496 = !{!497, !498, !499, !500, !3564, !3568, !3579, !3583}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !494, file: !495, line: 17, baseType: !44, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "real_ns_name", scope: !494, file: !495, line: 18, baseType: !44, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !494, file: !495, line: 19, baseType: !50, size: 32, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !494, file: !495, line: 20, baseType: !501, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !507, line: 746, size: 58368, elements: !508)
!507 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!508 = !{!509, !517, !518, !519, !520, !521, !522, !523, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !594, !605, !705, !709, !712, !743, !744, !745, !746, !757, !759, !760, !761, !762, !763, !764, !775, !776, !779, !780, !781, !782, !783, !784, !785, !786, !793, !794, !801, !802, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2517, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2532, !2533, !2534, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2576, !2582, !2583, !2584, !2585, !2586, !2588, !2591, !2598, !2603, !2606, !2609, !2612, !2811, !2952, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2994, !2995, !2996, !3005, !3013, !3014, !3015, !3016, !3017, !3022, !3023, !3024, !3027, !3028, !3031, !3034, !3037, !3045, !3048, !3049, !3135, !3136, !3137, !3138, !3139, !3145, !3146, !3147, !3148, !3151, !3152, !3155, !3169, !3170, !3173, !3174, !3175, !3178, !3179, !3180, !3181, !3182, !3183, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3215, !3216, !3222, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3234, !3306, !3308, !3309, !3310, !3311, !3312, !3324, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3341, !3342, !3343}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !506, file: !507, line: 752, baseType: !510, size: 192)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !511, line: 56, size: 192, elements: !512)
!511 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!512 = !{!513, !514, !515, !516}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !510, file: !511, line: 57, baseType: !67, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !510, file: !511, line: 58, baseType: !67, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !510, file: !511, line: 59, baseType: !319, size: 32, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !510, file: !511, line: 61, baseType: !319, size: 32, offset: 160)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !506, file: !507, line: 754, baseType: !7, size: 32, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !506, file: !507, line: 767, baseType: !48, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !506, file: !507, line: 768, baseType: !267, size: 32, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !507, line: 770, baseType: !7, size: 32, offset: 352)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !506, file: !507, line: 771, baseType: !7, size: 32, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !506, file: !507, line: 774, baseType: !50, size: 32, offset: 416)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !506, file: !507, line: 775, baseType: !524, size: 128, offset: 448)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !525, line: 58, size: 128, elements: !526)
!525 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!526 = !{!527, !533, !538, !539}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !524, file: !525, line: 59, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !529, line: 60, size: 64, elements: !530)
!529 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !528, file: !529, line: 61, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, scope: !524, file: !525, line: 60, baseType: !534, size: 32, offset: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !524, file: !525, line: 60, size: 32, elements: !535)
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !534, file: !525, line: 61, baseType: !7, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !534, file: !525, line: 62, baseType: !77, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !524, file: !525, line: 65, baseType: !121, size: 16, offset: 96)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !524, file: !525, line: 65, baseType: !121, size: 16, offset: 112)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !506, file: !507, line: 776, baseType: !7, size: 32, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !506, file: !507, line: 777, baseType: !67, size: 64, offset: 640)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !506, file: !507, line: 778, baseType: !505, size: 64, offset: 704)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !506, file: !507, line: 787, baseType: !50, size: 32, offset: 768)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !506, file: !507, line: 788, baseType: !50, size: 32, offset: 800)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !506, file: !507, line: 790, baseType: !50, size: 32, offset: 832)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !506, file: !507, line: 792, baseType: !50, size: 32, offset: 864)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !506, file: !507, line: 793, baseType: !50, size: 32, offset: 896)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !506, file: !507, line: 794, baseType: !50, size: 32, offset: 928)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !506, file: !507, line: 795, baseType: !7, size: 32, offset: 960)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !506, file: !507, line: 797, baseType: !551, size: 2048, offset: 1024)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !507, line: 551, size: 2048, elements: !552)
!552 = !{!553, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !573, !576, !577, !578}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !551, file: !507, line: 553, baseType: !554, size: 128)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !507, line: 411, size: 128, elements: !555)
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !554, file: !507, line: 412, baseType: !67, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !554, file: !507, line: 413, baseType: !319, size: 32, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !551, file: !507, line: 554, baseType: !281, size: 192, align: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !551, file: !507, line: 555, baseType: !253, size: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !551, file: !507, line: 556, baseType: !253, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !551, file: !507, line: 558, baseType: !125, size: 128, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !551, file: !507, line: 559, baseType: !7, size: 32, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !551, file: !507, line: 561, baseType: !253, size: 64, offset: 640)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !551, file: !507, line: 562, baseType: !253, size: 64, offset: 704)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !551, file: !507, line: 563, baseType: !253, size: 64, offset: 768)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !551, file: !507, line: 564, baseType: !253, size: 64, offset: 832)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !551, file: !507, line: 565, baseType: !223, size: 64, offset: 896)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !551, file: !507, line: 566, baseType: !253, size: 64, offset: 960)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !551, file: !507, line: 568, baseType: !253, size: 64, offset: 1024)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !551, file: !507, line: 571, baseType: !50, size: 32, offset: 1088)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !551, file: !507, line: 572, baseType: !572, size: 64, offset: 1152)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !551, file: !507, line: 574, baseType: !574, size: 64, offset: 1216)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !507, line: 49, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !551, file: !507, line: 576, baseType: !574, size: 64, offset: 1280)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !551, file: !507, line: 578, baseType: !67, size: 64, offset: 1344)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !551, file: !507, line: 588, baseType: !579, size: 512, align: 512, offset: 1536)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !507, line: 497, size: 512, align: 512, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !579, file: !507, line: 498, baseType: !253, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !579, file: !507, line: 499, baseType: !253, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !579, file: !507, line: 500, baseType: !253, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !579, file: !507, line: 501, baseType: !319, size: 32, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !579, file: !507, line: 502, baseType: !319, size: 32, offset: 224)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !579, file: !507, line: 503, baseType: !67, size: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !579, file: !507, line: 504, baseType: !67, size: 64, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !579, file: !507, line: 505, baseType: !67, size: 64, offset: 384)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !579, file: !507, line: 506, baseType: !590, size: 64, align: 64, offset: 448)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !507, line: 445, size: 64, align: 64, elements: !591)
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !590, file: !507, line: 446, baseType: !7, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !590, file: !507, line: 447, baseType: !7, size: 32, offset: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !506, file: !507, line: 798, baseType: !595, size: 384, offset: 3072)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !507, line: 592, size: 384, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602, !603}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !595, file: !507, line: 593, baseType: !125, size: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !595, file: !507, line: 594, baseType: !67, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !595, file: !507, line: 595, baseType: !67, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !595, file: !507, line: 596, baseType: !7, size: 32, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !595, file: !507, line: 597, baseType: !54, size: 16, offset: 288)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !595, file: !507, line: 598, baseType: !54, size: 16, offset: 304)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !595, file: !507, line: 600, baseType: !604, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !506, file: !507, line: 799, baseType: !606, size: 1792, offset: 3456)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !507, line: 610, size: 1792, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !702, !703}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !606, file: !507, line: 611, baseType: !281, size: 192, align: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !606, file: !507, line: 618, baseType: !253, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !606, file: !507, line: 619, baseType: !253, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !606, file: !507, line: 620, baseType: !253, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !606, file: !507, line: 621, baseType: !253, size: 64, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !606, file: !507, line: 622, baseType: !253, size: 64, offset: 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !606, file: !507, line: 629, baseType: !223, size: 64, offset: 512)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !606, file: !507, line: 630, baseType: !253, size: 64, offset: 576)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !606, file: !507, line: 631, baseType: !7, size: 32, offset: 640)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !606, file: !507, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !606, file: !507, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !606, file: !507, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !606, file: !507, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !606, file: !507, line: 662, baseType: !622, size: 512, offset: 704)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !15, line: 118, size: 512, elements: !623)
!623 = !{!624, !632, !633, !638, !698, !699, !700, !701}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !622, file: !15, line: 119, baseType: !625, size: 256)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !626, line: 9, size: 256, elements: !627)
!626 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!627 = !{!628, !629}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !625, file: !626, line: 10, baseType: !281, size: 192, align: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !625, file: !626, line: 11, baseType: !630, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !631, line: 29, baseType: !223)
!631 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !622, file: !15, line: 120, baseType: !630, size: 64, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !622, file: !15, line: 121, baseType: !634, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!14, !637}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !622, file: !15, line: 122, baseType: !639, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !15, line: 159, size: 512, align: 512, elements: !641)
!641 = !{!642, !667, !668, !671, !681, !682, !693, !697}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !640, file: !15, line: 160, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !15, line: 215, size: 4608, align: 512, elements: !645)
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !644, file: !15, line: 216, baseType: !300, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !644, file: !15, line: 217, baseType: !7, size: 32, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !644, file: !15, line: 218, baseType: !7, size: 32, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !644, file: !15, line: 219, baseType: !7, size: 32, offset: 96)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !644, file: !15, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !644, file: !15, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !644, file: !15, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !644, file: !15, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !644, file: !15, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !644, file: !15, line: 226, baseType: !7, size: 32, offset: 160)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !644, file: !15, line: 227, baseType: !54, size: 16, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !644, file: !15, line: 228, baseType: !54, size: 16, offset: 208)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !644, file: !15, line: 229, baseType: !7, size: 32, offset: 224)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !644, file: !15, line: 235, baseType: !630, size: 64, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !644, file: !15, line: 236, baseType: !637, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !644, file: !15, line: 237, baseType: !630, size: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !644, file: !15, line: 238, baseType: !637, size: 64, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !644, file: !15, line: 239, baseType: !664, size: 4096, align: 512, offset: 512)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 4096, align: 512, elements: !665)
!665 = !{!666}
!666 = !DISubrange(count: 8)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !640, file: !15, line: 161, baseType: !7, size: 32, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !640, file: !15, line: 162, baseType: !669, size: 32, offset: 96)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !53, line: 32, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !65, line: 96, baseType: !50)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !640, file: !15, line: 163, baseType: !672, size: 32, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !673, line: 274, baseType: !674)
!673 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !673, line: 274, size: 32, elements: !675)
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !674, file: !673, line: 274, baseType: !677, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !673, line: 69, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !673, line: 64, size: 32, elements: !679)
!679 = !{!680}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !678, file: !673, line: 65, baseType: !7, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !640, file: !15, line: 164, baseType: !637, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !640, file: !15, line: 165, baseType: !683, size: 128, offset: 256)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !626, line: 14, size: 128, elements: !684)
!684 = !{!685}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !683, file: !626, line: 15, baseType: !686, size: 128)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !282, line: 26, size: 128, elements: !687)
!687 = !{!688, !692}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !686, file: !282, line: 27, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !282, line: 12, size: 64, elements: !690)
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !689, file: !282, line: 13, baseType: !286, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !686, file: !282, line: 28, baseType: !286, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !640, file: !15, line: 166, baseType: !694, size: 64, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!630}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !640, file: !15, line: 167, baseType: !630, size: 64, offset: 448)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !622, file: !15, line: 123, baseType: !111, size: 8, offset: 448)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !622, file: !15, line: 124, baseType: !111, size: 8, offset: 456)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !622, file: !15, line: 125, baseType: !111, size: 8, offset: 464)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !622, file: !15, line: 126, baseType: !111, size: 8, offset: 472)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !606, file: !507, line: 671, baseType: !622, size: 512, offset: 1216)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !606, file: !507, line: 679, baseType: !704, size: 64, offset: 1728)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !506, file: !507, line: 800, baseType: !706, size: 64, offset: 5248)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !708)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !507, line: 800, flags: DIFlagFwdDecl)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !506, file: !507, line: 809, baseType: !710, size: 64, offset: 5312)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !507, line: 70, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !506, file: !507, line: 825, baseType: !713, size: 2048, align: 512, offset: 5632)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !507, line: 509, size: 2048, align: 512, elements: !714)
!714 = !{!715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !713, file: !507, line: 511, baseType: !253, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !713, file: !507, line: 512, baseType: !253, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !713, file: !507, line: 513, baseType: !253, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !713, file: !507, line: 514, baseType: !253, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !713, file: !507, line: 515, baseType: !253, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !713, file: !507, line: 516, baseType: !253, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !713, file: !507, line: 518, baseType: !253, size: 64, offset: 384)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !713, file: !507, line: 519, baseType: !253, size: 64, offset: 448)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !713, file: !507, line: 520, baseType: !223, size: 64, offset: 512)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !713, file: !507, line: 522, baseType: !253, size: 64, offset: 576)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !713, file: !507, line: 523, baseType: !253, size: 64, offset: 640)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !713, file: !507, line: 524, baseType: !223, size: 64, offset: 704)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !713, file: !507, line: 526, baseType: !223, size: 64, offset: 768)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !713, file: !507, line: 527, baseType: !253, size: 64, offset: 832)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !713, file: !507, line: 529, baseType: !253, size: 64, offset: 896)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !713, file: !507, line: 530, baseType: !253, size: 64, offset: 960)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !713, file: !507, line: 531, baseType: !253, size: 64, offset: 1024)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !713, file: !507, line: 532, baseType: !253, size: 64, offset: 1088)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !713, file: !507, line: 533, baseType: !253, size: 64, offset: 1152)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !713, file: !507, line: 535, baseType: !253, size: 64, offset: 1216)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !713, file: !507, line: 536, baseType: !253, size: 64, offset: 1280)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !713, file: !507, line: 537, baseType: !253, size: 64, offset: 1344)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !713, file: !507, line: 538, baseType: !253, size: 64, offset: 1408)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !713, file: !507, line: 539, baseType: !253, size: 64, offset: 1472)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !713, file: !507, line: 540, baseType: !253, size: 64, offset: 1536)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !713, file: !507, line: 541, baseType: !253, size: 64, offset: 1600)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !713, file: !507, line: 542, baseType: !253, size: 64, offset: 1664)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !713, file: !507, line: 543, baseType: !253, size: 64, offset: 1728)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !506, file: !507, line: 833, baseType: !7, size: 32, offset: 7680)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !506, file: !507, line: 836, baseType: !7, size: 32, offset: 7712)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !506, file: !507, line: 837, baseType: !50, size: 32, offset: 7744)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !506, file: !507, line: 838, baseType: !747, size: 64, offset: 7808)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !750, line: 19, baseType: !751)
!750 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !750, line: 19, size: 64, elements: !752)
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !751, file: !750, line: 19, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 64, elements: !755)
!755 = !{!756}
!756 = !DISubrange(count: 1)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !506, file: !507, line: 839, baseType: !758, size: 64, offset: 7872)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !506, file: !507, line: 840, baseType: !749, size: 64, offset: 7936)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !506, file: !507, line: 841, baseType: !48, size: 64, offset: 8000)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !506, file: !507, line: 843, baseType: !54, size: 16, offset: 8064)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !506, file: !507, line: 845, baseType: !54, size: 16, offset: 8080)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !506, file: !507, line: 848, baseType: !50, size: 32, offset: 8096)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !506, file: !507, line: 849, baseType: !765, size: 32, offset: 8128)
!765 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !507, line: 718, size: 32, elements: !766)
!766 = !{!767, !774}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !765, file: !507, line: 724, baseType: !768, size: 32)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !765, file: !507, line: 719, size: 32, elements: !769)
!769 = !{!770, !771, !772, !773}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !768, file: !507, line: 720, baseType: !111, size: 8)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !768, file: !507, line: 721, baseType: !111, size: 8, offset: 8)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !768, file: !507, line: 722, baseType: !111, size: 8, offset: 16)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !768, file: !507, line: 723, baseType: !111, size: 8, offset: 24)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !765, file: !507, line: 725, baseType: !319, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !506, file: !507, line: 850, baseType: !125, size: 128, offset: 8192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !506, file: !507, line: 851, baseType: !777, size: 64, offset: 8320)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !507, line: 60, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !506, file: !507, line: 855, baseType: !67, size: 64, offset: 8384)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !506, file: !507, line: 856, baseType: !111, size: 8, offset: 8448)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !506, file: !507, line: 857, baseType: !111, size: 8, offset: 8456)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !506, file: !507, line: 858, baseType: !50, size: 32, offset: 8480)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !506, file: !507, line: 859, baseType: !125, size: 128, offset: 8512)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !506, file: !507, line: 860, baseType: !50, size: 32, offset: 8640)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !506, file: !507, line: 861, baseType: !125, size: 128, offset: 8704)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !506, file: !507, line: 873, baseType: !787, size: 256, offset: 8832)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !507, line: 376, size: 256, elements: !788)
!788 = !{!789, !790, !791, !792}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !787, file: !507, line: 381, baseType: !67, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !787, file: !507, line: 384, baseType: !255, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !787, file: !507, line: 389, baseType: !255, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !787, file: !507, line: 392, baseType: !255, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !506, file: !507, line: 875, baseType: !125, size: 128, offset: 9088)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !506, file: !507, line: 877, baseType: !795, size: 320, offset: 9216)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !796, line: 86, size: 320, elements: !797)
!796 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!797 = !{!798, !799, !800}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !795, file: !796, line: 87, baseType: !50, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !795, file: !796, line: 88, baseType: !125, size: 128, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !795, file: !796, line: 89, baseType: !125, size: 128, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !506, file: !507, line: 878, baseType: !281, size: 192, align: 64, offset: 9536)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !506, file: !507, line: 881, baseType: !803, size: 64, offset: 9728)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !805, line: 733, size: 10240, elements: !806)
!805 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!806 = !{!807, !2436}
!807 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !805, line: 734, baseType: !808, size: 10240)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !804, file: !805, line: 734, size: 10240, elements: !809)
!809 = !{!810, !814, !828, !2334, !2335, !2336, !2337, !2338, !2339, !2346, !2347, !2348, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2387, !2389, !2392, !2416, !2417, !2418, !2421, !2422, !2423, !2426, !2427, !2428, !2434, !2435}
!810 = !DIDerivedType(tag: DW_TAG_member, scope: !808, file: !805, line: 739, baseType: !811, size: 512, align: 512)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !808, file: !805, line: 739, size: 512, align: 512, elements: !812)
!812 = !{!813}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !811, file: !805, line: 747, baseType: !77, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !808, file: !805, line: 750, baseType: !815, size: 128, offset: 512)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !816, line: 218, size: 128, elements: !817)
!816 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!817 = !{!818, !826, !827}
!818 = !DIDerivedType(tag: DW_TAG_member, scope: !815, file: !816, line: 219, baseType: !819, size: 32)
!819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !815, file: !816, line: 219, size: 32, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !819, file: !816, line: 220, baseType: !87, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !819, file: !816, line: 221, baseType: !823)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !816, line: 197, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !816, line: 197, elements: !825)
!825 = !{}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !815, file: !816, line: 223, baseType: !7, size: 32, offset: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !815, file: !816, line: 224, baseType: !48, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !808, file: !805, line: 752, baseType: !829, size: 64, offset: 640)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!67, !832, !67, !67, !67, !67}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !136, line: 994, size: 1856, align: 64, elements: !834)
!834 = !{!835, !841, !842, !844, !845, !853, !854, !855, !910, !911, !920, !2324, !2325, !2326, !2327, !2328, !2329, !2331, !2332, !2333}
!835 = !DIDerivedType(tag: DW_TAG_member, scope: !833, file: !136, line: 995, baseType: !836, size: 128)
!836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !833, file: !136, line: 995, size: 128, elements: !837)
!837 = !{!838, !839, !840}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !836, file: !136, line: 996, baseType: !528, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !836, file: !136, line: 997, baseType: !353, size: 128, align: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !836, file: !136, line: 998, baseType: !7, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !833, file: !136, line: 1005, baseType: !87, size: 32, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !833, file: !136, line: 1006, baseType: !843, size: 32, offset: 160)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !53, line: 156, baseType: !7)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !833, file: !136, line: 1007, baseType: !217, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !833, file: !136, line: 1008, baseType: !846, size: 256, offset: 256)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !847, line: 66, size: 256, elements: !848)
!847 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!848 = !{!849, !850, !851, !852}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !846, file: !847, line: 67, baseType: !217, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !846, file: !847, line: 68, baseType: !300, size: 32, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !846, file: !847, line: 70, baseType: !295, size: 32, offset: 96)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !846, file: !847, line: 72, baseType: !125, size: 128, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !833, file: !136, line: 1009, baseType: !69, size: 64, offset: 512)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !833, file: !136, line: 1010, baseType: !7, size: 32, offset: 576)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !833, file: !136, line: 1011, baseType: !856, size: 256, offset: 640)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !136, line: 948, size: 256, elements: !857)
!857 = !{!858, !881, !906, !907, !908, !909}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !856, file: !136, line: 949, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !860, line: 34, baseType: !861)
!860 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !860, line: 25, size: 64, elements: !862)
!862 = !{!863}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !861, file: !860, line: 26, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !865, line: 27, baseType: !866)
!865 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !865, line: 13, size: 64, elements: !867)
!867 = !{!868, !880}
!868 = !DIDerivedType(tag: DW_TAG_member, scope: !866, file: !865, line: 14, baseType: !869, size: 32)
!869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !866, file: !865, line: 14, size: 32, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !869, file: !865, line: 15, baseType: !77, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, scope: !869, file: !865, line: 16, baseType: !873, size: 32)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !869, file: !865, line: 16, size: 32, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !873, file: !865, line: 18, baseType: !111, size: 8)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !873, file: !865, line: 19, baseType: !877, size: 24, offset: 8)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 24, elements: !878)
!878 = !{!879}
!879 = !DISubrange(count: 3)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !866, file: !865, line: 26, baseType: !99, size: 32, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !856, file: !136, line: 950, baseType: !882, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !884)
!884 = !{!885, !886, !887, !888, !893, !894, !895, !896}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !883, file: !6, line: 61, baseType: !267, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !883, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !883, file: !6, line: 63, baseType: !87, size: 32, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !883, file: !6, line: 65, baseType: !889, size: 256, offset: 128)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !890, size: 256, elements: !384)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !53, line: 194, size: 64, elements: !891)
!891 = !{!892}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !890, file: !53, line: 195, baseType: !438, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !883, file: !6, line: 66, baseType: !890, size: 64, offset: 384)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !883, file: !6, line: 68, baseType: !82, size: 192, offset: 448)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !883, file: !6, line: 69, baseType: !353, size: 128, align: 64, offset: 640)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !883, file: !6, line: 70, baseType: !897, offset: 768)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, elements: !904)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !898, file: !6, line: 55, baseType: !50, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !898, file: !6, line: 56, baseType: !902, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!904 = !{!905}
!905 = !DISubrange(count: -1)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !856, file: !136, line: 951, baseType: !5, size: 32, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !856, file: !136, line: 952, baseType: !226, size: 32, offset: 160)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !856, file: !136, line: 952, baseType: !226, size: 32, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !856, file: !136, line: 953, baseType: !50, size: 32, offset: 224)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !833, file: !136, line: 1012, baseType: !211, size: 64, offset: 896)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !833, file: !136, line: 1013, baseType: !912, size: 256, offset: 960)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !136, line: 970, size: 256, elements: !913)
!913 = !{!914, !915, !916, !917, !918, !919}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !912, file: !136, line: 971, baseType: !67, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !912, file: !136, line: 972, baseType: !7, size: 32, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !912, file: !136, line: 973, baseType: !7, size: 32, offset: 96)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !912, file: !136, line: 974, baseType: !7, size: 32, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !912, file: !136, line: 975, baseType: !7, size: 32, offset: 160)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !912, file: !136, line: 976, baseType: !69, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !833, file: !136, line: 1014, baseType: !921, size: 128, offset: 1216)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !922, line: 8, size: 128, elements: !923)
!922 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!923 = !{!924, !2323}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !921, file: !922, line: 9, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !927, line: 70, size: 256, elements: !928)
!927 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!928 = !{!929, !2320, !2321, !2322}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !926, file: !927, line: 71, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !932, line: 82, size: 1536, elements: !933)
!932 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!933 = !{!934, !935, !940, !948, !949, !964, !2287, !2289, !2302, !2303, !2304, !2305, !2306, !2312, !2313, !2314}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !931, file: !932, line: 84, baseType: !7, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !931, file: !932, line: 85, baseType: !936, size: 32, offset: 32)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !673, line: 275, baseType: !937)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !673, line: 275, size: 32, elements: !938)
!938 = !{!939}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !937, file: !673, line: 275, baseType: !677, size: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !931, file: !932, line: 86, baseType: !941, size: 128, offset: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !942, line: 38, size: 128, elements: !943)
!942 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!943 = !{!944, !946}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !941, file: !942, line: 39, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !941, file: !942, line: 39, baseType: !947, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !931, file: !932, line: 87, baseType: !930, size: 64, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !931, file: !932, line: 88, baseType: !950, size: 128, offset: 256)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !932, line: 49, size: 128, elements: !951)
!951 = !{!952, !961}
!952 = !DIDerivedType(tag: DW_TAG_member, scope: !950, file: !932, line: 50, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !950, file: !932, line: 50, size: 64, elements: !954)
!954 = !{!955, !960}
!955 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !932, line: 51, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !932, line: 51, size: 64, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !956, file: !932, line: 52, baseType: !319, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !956, file: !932, line: 52, baseType: !319, size: 32, offset: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !953, file: !932, line: 54, baseType: !253, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !950, file: !932, line: 56, baseType: !962, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !931, file: !932, line: 89, baseType: !965, size: 64, offset: 384)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !136, line: 641, size: 4800, elements: !967)
!967 = !{!968, !969, !970, !971, !972, !973, !974, !977, !978, !1172, !1729, !2041, !2042, !2043, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2269, !2272, !2273, !2274, !2283, !2284, !2285, !2286}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !966, file: !136, line: 642, baseType: !52, size: 16)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !966, file: !136, line: 643, baseType: !54, size: 16, offset: 16)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !966, file: !136, line: 644, baseType: !226, size: 32, offset: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !966, file: !136, line: 645, baseType: !125, size: 128, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !966, file: !136, line: 646, baseType: !234, size: 32, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !966, file: !136, line: 647, baseType: !7, size: 32, offset: 224)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !966, file: !136, line: 650, baseType: !975, size: 64, offset: 256)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !136, line: 607, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !966, file: !136, line: 651, baseType: !975, size: 64, offset: 320)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !966, file: !136, line: 654, baseType: !979, size: 64, offset: 384)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !981)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !136, line: 1966, size: 2048, align: 512, elements: !982)
!982 = !{!983, !987, !1000, !1006, !1010, !1014, !1018, !1022, !1026, !1030, !1034, !1035, !1041, !1045, !1083, !1114, !1121, !1127, !1131, !1135, !1139, !1143, !1147, !1153, !1157}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !981, file: !136, line: 1967, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!930, !965, !930, !7}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !981, file: !136, line: 1968, baseType: !988, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!44, !930, !965, !991}
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !993, line: 10, size: 128, elements: !994)
!993 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!994 = !{!995, !999}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !992, file: !993, line: 11, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !48}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !992, file: !993, line: 12, baseType: !48, size: 64, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !981, file: !136, line: 1969, baseType: !1001, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!50, !1004, !965, !50}
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !249, line: 42, flags: DIFlagFwdDecl)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !981, file: !136, line: 1970, baseType: !1007, size: 64, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!975, !965, !50, !363}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !981, file: !136, line: 1972, baseType: !1011, size: 64, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!50, !930, !374, !50}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !981, file: !136, line: 1974, baseType: !1015, size: 64, offset: 320)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!50, !1004, !965, !930, !52, !363}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !981, file: !136, line: 1976, baseType: !1019, size: 64, offset: 384)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!50, !930, !965, !930}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !981, file: !136, line: 1977, baseType: !1023, size: 64, offset: 448)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!50, !965, !930}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !981, file: !136, line: 1978, baseType: !1027, size: 64, offset: 512)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!50, !1004, !965, !930, !44}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !981, file: !136, line: 1980, baseType: !1031, size: 64, offset: 576)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!50, !1004, !965, !930, !52}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !981, file: !136, line: 1982, baseType: !1023, size: 64, offset: 640)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !981, file: !136, line: 1983, baseType: !1036, size: 64, offset: 704)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!50, !1004, !965, !930, !52, !1039}
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !53, line: 21, baseType: !1040)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !53, line: 18, baseType: !319)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !981, file: !136, line: 1985, baseType: !1042, size: 64, offset: 768)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!50, !1004, !965, !930, !965, !930, !7}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !981, file: !136, line: 1987, baseType: !1046, size: 64, offset: 832)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!50, !1004, !930, !1049}
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !136, line: 226, size: 640, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1064, !1073, !1074, !1080, !1081, !1082}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1050, file: !136, line: 227, baseType: !7, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1050, file: !136, line: 228, baseType: !52, size: 16, offset: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, scope: !1050, file: !136, line: 241, baseType: !1055, size: 32, offset: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1050, file: !136, line: 241, size: 32, elements: !1056)
!1056 = !{!1057, !1058}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1055, file: !136, line: 242, baseType: !226, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1055, file: !136, line: 243, baseType: !1059, size: 32)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1060, line: 16, baseType: !1061)
!1060 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1060, line: 14, size: 32, elements: !1062)
!1062 = !{!1063}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1061, file: !1060, line: 15, baseType: !231, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, scope: !1050, file: !136, line: 245, baseType: !1065, size: 32, offset: 96)
!1065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1050, file: !136, line: 245, size: 32, elements: !1066)
!1066 = !{!1067, !1068}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1065, file: !136, line: 246, baseType: !234, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1065, file: !136, line: 247, baseType: !1069, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1060, line: 20, baseType: !1070)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1060, line: 18, size: 32, elements: !1071)
!1071 = !{!1072}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1070, file: !1060, line: 19, baseType: !238, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1050, file: !136, line: 249, baseType: !69, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1050, file: !136, line: 250, baseType: !1075, size: 128, offset: 192)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !311, line: 13, size: 128, elements: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1075, file: !311, line: 14, baseType: !310, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1075, file: !311, line: 15, baseType: !1079, size: 64, offset: 64)
!1079 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1050, file: !136, line: 251, baseType: !1075, size: 128, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1050, file: !136, line: 252, baseType: !1075, size: 128, offset: 448)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1050, file: !136, line: 259, baseType: !832, size: 64, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !981, file: !136, line: 1988, baseType: !1084, size: 64, offset: 896)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!50, !1004, !1087, !1089, !319, !7}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !921)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1091, line: 22, size: 1280, elements: !1092)
!1091 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1092 = !{!1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1090, file: !1091, line: 23, baseType: !319, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1090, file: !1091, line: 24, baseType: !52, size: 16, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1090, file: !1091, line: 25, baseType: !7, size: 32, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1090, file: !1091, line: 26, baseType: !318, size: 32, offset: 96)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1090, file: !1091, line: 27, baseType: !253, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1090, file: !1091, line: 28, baseType: !253, size: 64, offset: 192)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1090, file: !1091, line: 41, baseType: !253, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1090, file: !1091, line: 42, baseType: !1039, size: 32, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1090, file: !1091, line: 43, baseType: !1039, size: 32, offset: 352)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1090, file: !1091, line: 44, baseType: !226, size: 32, offset: 384)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1090, file: !1091, line: 45, baseType: !234, size: 32, offset: 416)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1090, file: !1091, line: 46, baseType: !69, size: 64, offset: 448)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1090, file: !1091, line: 47, baseType: !1075, size: 128, offset: 512)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1090, file: !1091, line: 48, baseType: !1075, size: 128, offset: 640)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1090, file: !1091, line: 49, baseType: !1075, size: 128, offset: 768)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1090, file: !1091, line: 50, baseType: !1075, size: 128, offset: 896)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1090, file: !1091, line: 51, baseType: !253, size: 64, offset: 1024)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1090, file: !1091, line: 52, baseType: !253, size: 64, offset: 1088)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1090, file: !1091, line: 53, baseType: !319, size: 32, offset: 1152)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1090, file: !1091, line: 54, baseType: !319, size: 32, offset: 1184)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1090, file: !1091, line: 55, baseType: !253, size: 64, offset: 1216)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !981, file: !136, line: 1990, baseType: !1115, size: 64, offset: 960)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!1118, !930, !374, !63}
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !53, line: 66, baseType: !1119)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !65, line: 73, baseType: !1120)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !65, line: 15, baseType: !1079)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !981, file: !136, line: 1991, baseType: !1122, size: 64, offset: 1024)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!50, !965, !1125, !253, !253}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !136, line: 55, flags: DIFlagFwdDecl)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !981, file: !136, line: 1993, baseType: !1128, size: 64, offset: 1088)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!50, !965, !50}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !981, file: !136, line: 1994, baseType: !1132, size: 64, offset: 1152)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!50, !965, !930, !832, !7, !52}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !981, file: !136, line: 1997, baseType: !1136, size: 64, offset: 1216)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!50, !1004, !965, !832, !52}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !981, file: !136, line: 1999, baseType: !1140, size: 64, offset: 1280)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!975, !1004, !930, !50}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !981, file: !136, line: 2001, baseType: !1144, size: 64, offset: 1344)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!50, !1004, !930, !975, !50}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !981, file: !136, line: 2003, baseType: !1148, size: 64, offset: 1408)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!50, !1004, !930, !1151}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !136, line: 76, flags: DIFlagFwdDecl)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !981, file: !136, line: 2005, baseType: !1154, size: 64, offset: 1472)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!50, !930, !1151}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !981, file: !136, line: 2006, baseType: !1158, size: 64, offset: 1536)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!1161, !965}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !136, line: 3192, size: 192, elements: !1163)
!1163 = !{!1164, !1171}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1162, file: !136, line: 3193, baseType: !1165, size: 128)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1166, line: 296, size: 128, elements: !1167)
!1166 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1167 = !{!1168, !1169, !1170}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1165, file: !1166, line: 297, baseType: !87, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1165, file: !1166, line: 299, baseType: !210, size: 32, offset: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1165, file: !1166, line: 300, baseType: !48, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1162, file: !136, line: 3194, baseType: !319, size: 32, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !966, file: !136, line: 655, baseType: !1173, size: 64, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !136, line: 1190, size: 10752, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1179, !1180, !1181, !1222, !1359, !1399, !1482, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1499, !1503, !1504, !1507, !1510, !1513, !1516, !1517, !1518, !1559, !1586, !1587, !1588, !1589, !1590, !1591, !1594, !1598, !1607, !1608, !1609, !1610, !1669, !1684, !1685, !1686, !1687, !1690, !1693, !1694, !1695, !1710, !1711, !1712, !1723, !1724, !1725, !1726, !1727, !1728}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1174, file: !136, line: 1191, baseType: !125, size: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1174, file: !136, line: 1192, baseType: !1039, size: 32, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1174, file: !136, line: 1193, baseType: !115, size: 8, offset: 160)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1174, file: !136, line: 1194, baseType: !67, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1174, file: !136, line: 1195, baseType: !69, size: 64, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1174, file: !136, line: 1196, baseType: !1182, size: 64, offset: 320)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !136, line: 2366, size: 576, elements: !1184)
!1184 = !{!1185, !1186, !1187, !1193, !1197, !1201, !1205, !1209, !1210, !1211, !1214, !1215, !1216, !1218, !1219, !1220, !1221}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1183, file: !136, line: 2367, baseType: !44, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1183, file: !136, line: 2368, baseType: !50, size: 32, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1183, file: !136, line: 2376, baseType: !1188, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!50, !1191}
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !927, line: 21, flags: DIFlagFwdDecl)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1183, file: !136, line: 2377, baseType: !1194, size: 64, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !136, line: 75, flags: DIFlagFwdDecl)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1183, file: !136, line: 2378, baseType: !1198, size: 64, offset: 256)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!930, !1182, !50, !44, !48}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1183, file: !136, line: 2380, baseType: !1202, size: 64, offset: 320)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !1173}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1183, file: !136, line: 2381, baseType: !1206, size: 64, offset: 384)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1208, line: 103, flags: DIFlagFwdDecl)
!1208 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1183, file: !136, line: 2382, baseType: !1182, size: 64, offset: 448)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1183, file: !136, line: 2383, baseType: !890, size: 64, offset: 512)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1183, file: !136, line: 2385, baseType: !1212, offset: 576)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1213, line: 206, elements: !825)
!1213 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1183, file: !136, line: 2386, baseType: !1212, offset: 576)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1183, file: !136, line: 2387, baseType: !1212, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1183, file: !136, line: 2388, baseType: !1217, offset: 576)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1212, elements: !878)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1183, file: !136, line: 2390, baseType: !1212, offset: 576)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1183, file: !136, line: 2391, baseType: !1212, offset: 576)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1183, file: !136, line: 2392, baseType: !1212, offset: 576)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1183, file: !136, line: 2393, baseType: !1212, offset: 576)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1174, file: !136, line: 1197, baseType: !1223, size: 64, offset: 384)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1225)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !136, line: 2057, size: 1664, elements: !1226)
!1226 = !{!1227, !1231, !1235, !1236, !1240, !1246, !1250, !1251, !1252, !1256, !1260, !1264, !1265, !1266, !1272, !1277, !1278, !1284, !1285, !1286, !1287, !1291, !1295, !1342, !1357, !1358}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1225, file: !136, line: 2058, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!965, !1173}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1225, file: !136, line: 2059, baseType: !1232, size: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !965}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1225, file: !136, line: 2060, baseType: !1232, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1225, file: !136, line: 2062, baseType: !1237, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !965, !50}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1225, file: !136, line: 2063, baseType: !1241, size: 64, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!50, !965, !1244}
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !136, line: 309, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1225, file: !136, line: 2064, baseType: !1247, size: 64, offset: 320)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!50, !965}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1225, file: !136, line: 2065, baseType: !1232, size: 64, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1225, file: !136, line: 2066, baseType: !1202, size: 64, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1225, file: !136, line: 2067, baseType: !1253, size: 64, offset: 512)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!50, !1173, !50}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1225, file: !136, line: 2068, baseType: !1257, size: 64, offset: 576)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!50, !1173, !135}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1225, file: !136, line: 2069, baseType: !1261, size: 64, offset: 640)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!50, !1173}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1225, file: !136, line: 2070, baseType: !1257, size: 64, offset: 704)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1225, file: !136, line: 2071, baseType: !1261, size: 64, offset: 768)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1225, file: !136, line: 2072, baseType: !1267, size: 64, offset: 832)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!50, !930, !1270}
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !136, line: 62, flags: DIFlagFwdDecl)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1225, file: !136, line: 2073, baseType: !1273, size: 64, offset: 896)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!50, !1173, !1276, !374}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1225, file: !136, line: 2074, baseType: !1202, size: 64, offset: 960)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1225, file: !136, line: 2076, baseType: !1279, size: 64, offset: 1024)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!50, !1282, !930}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !507, line: 66, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1225, file: !136, line: 2077, baseType: !1279, size: 64, offset: 1088)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1225, file: !136, line: 2078, baseType: !1279, size: 64, offset: 1152)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1225, file: !136, line: 2079, baseType: !1279, size: 64, offset: 1216)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1225, file: !136, line: 2081, baseType: !1288, size: 64, offset: 1280)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!1118, !1173, !50, !374, !63, !69}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1225, file: !136, line: 2082, baseType: !1292, size: 64, offset: 1344)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!1118, !1173, !50, !44, !63, !69}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1225, file: !136, line: 2083, baseType: !1296, size: 64, offset: 1408)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!1299, !965}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !141, line: 296, size: 1664, elements: !1302)
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1327, !1328, !1329}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1301, file: !141, line: 297, baseType: !435, size: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1301, file: !141, line: 298, baseType: !125, size: 128, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1301, file: !141, line: 299, baseType: !125, size: 128, offset: 256)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1301, file: !141, line: 300, baseType: !125, size: 128, offset: 384)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1301, file: !141, line: 301, baseType: !846, size: 256, offset: 512)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1301, file: !141, line: 302, baseType: !87, size: 32, offset: 768)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1301, file: !141, line: 303, baseType: !77, size: 32, offset: 800)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1301, file: !141, line: 304, baseType: !1173, size: 64, offset: 832)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1301, file: !141, line: 305, baseType: !1312, size: 64, offset: 896)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !141, line: 68, size: 64, elements: !1313)
!1313 = !{!1314, !1326}
!1314 = !DIDerivedType(tag: DW_TAG_member, scope: !1312, file: !141, line: 69, baseType: !1315, size: 32)
!1315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1312, file: !141, line: 69, size: 32, elements: !1316)
!1316 = !{!1317, !1318, !1319}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1315, file: !141, line: 70, baseType: !226, size: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1315, file: !141, line: 71, baseType: !234, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1315, file: !141, line: 72, baseType: !1320, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1321, line: 24, baseType: !1322)
!1321 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1321, line: 22, size: 32, elements: !1323)
!1323 = !{!1324}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1322, file: !1321, line: 23, baseType: !1325, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1321, line: 20, baseType: !232)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1312, file: !141, line: 74, baseType: !140, size: 32, offset: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1301, file: !141, line: 306, baseType: !69, size: 64, offset: 960)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1301, file: !141, line: 307, baseType: !67, size: 64, offset: 1024)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1301, file: !141, line: 308, baseType: !1330, size: 576, offset: 1088)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !141, line: 205, size: 576, elements: !1331)
!1331 = !{!1332, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1330, file: !141, line: 206, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !141, line: 66, baseType: !71)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1330, file: !141, line: 207, baseType: !1333, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1330, file: !141, line: 208, baseType: !1333, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1330, file: !141, line: 209, baseType: !1333, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1330, file: !141, line: 210, baseType: !1333, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1330, file: !141, line: 211, baseType: !1333, size: 64, offset: 320)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1330, file: !141, line: 212, baseType: !1333, size: 64, offset: 384)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1330, file: !141, line: 213, baseType: !310, size: 64, offset: 448)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1330, file: !141, line: 214, baseType: !310, size: 64, offset: 512)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1225, file: !136, line: 2085, baseType: !1343, size: 64, offset: 1472)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!1079, !1173, !1346}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1348, line: 15, size: 256, elements: !1349)
!1348 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1349 = !{!1350, !1351, !1352, !1353, !1354}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1347, file: !1348, line: 16, baseType: !210, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1347, file: !1348, line: 19, baseType: !50, size: 32, offset: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1347, file: !1348, line: 26, baseType: !67, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1347, file: !1348, line: 33, baseType: !67, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1347, file: !1348, line: 36, baseType: !1355, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !805, line: 33, flags: DIFlagFwdDecl)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1225, file: !136, line: 2087, baseType: !1343, size: 64, offset: 1536)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1225, file: !136, line: 2089, baseType: !1202, size: 64, offset: 1600)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1174, file: !136, line: 1198, baseType: !1360, size: 64, offset: 448)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1362)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !141, line: 324, size: 704, elements: !1363)
!1363 = !{!1364, !1368, !1372, !1376, !1377, !1378, !1379, !1380, !1385, !1390, !1394}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1362, file: !141, line: 325, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!50, !1300}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1362, file: !141, line: 326, baseType: !1369, size: 64, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!1300, !1173, !50}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1362, file: !141, line: 327, baseType: !1373, size: 64, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{null, !1300}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1362, file: !141, line: 328, baseType: !1365, size: 64, offset: 192)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1362, file: !141, line: 329, baseType: !1365, size: 64, offset: 256)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1362, file: !141, line: 330, baseType: !1365, size: 64, offset: 320)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1362, file: !141, line: 331, baseType: !1253, size: 64, offset: 384)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1362, file: !141, line: 334, baseType: !1381, size: 64, offset: 448)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!1384, !965}
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1362, file: !141, line: 335, baseType: !1386, size: 64, offset: 512)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!50, !965, !1389}
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1362, file: !141, line: 337, baseType: !1391, size: 64, offset: 576)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!50, !965, !1384}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1362, file: !141, line: 339, baseType: !1395, size: 64, offset: 640)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!50, !1173, !1398}
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1174, file: !136, line: 1199, baseType: !1400, size: 64, offset: 512)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1402)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !141, line: 430, size: 704, elements: !1403)
!1403 = !{!1404, !1408, !1409, !1413, !1414, !1415, !1430, !1453, !1457, !1458, !1481}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1402, file: !141, line: 431, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!50, !1173, !50, !50, !1087}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1402, file: !141, line: 432, baseType: !1253, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1402, file: !141, line: 433, baseType: !1410, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!50, !1173, !7}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1402, file: !141, line: 434, baseType: !1410, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1402, file: !141, line: 435, baseType: !1253, size: 64, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1402, file: !141, line: 436, baseType: !1416, size: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!50, !1173, !50, !1419}
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !141, line: 417, size: 256, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1420, file: !141, line: 418, baseType: !50, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1420, file: !141, line: 419, baseType: !7, size: 32, offset: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1420, file: !141, line: 420, baseType: !7, size: 32, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1420, file: !141, line: 422, baseType: !7, size: 32, offset: 96)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1420, file: !141, line: 423, baseType: !7, size: 32, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1420, file: !141, line: 424, baseType: !7, size: 32, offset: 160)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1420, file: !141, line: 425, baseType: !7, size: 32, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1420, file: !141, line: 426, baseType: !7, size: 32, offset: 224)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1402, file: !141, line: 437, baseType: !1431, size: 64, offset: 384)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!50, !1173, !1312, !1434}
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !141, line: 345, size: 960, elements: !1436)
!1436 = !{!1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1435, file: !141, line: 346, baseType: !50, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1435, file: !141, line: 347, baseType: !253, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1435, file: !141, line: 348, baseType: !253, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1435, file: !141, line: 349, baseType: !253, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1435, file: !141, line: 350, baseType: !253, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1435, file: !141, line: 351, baseType: !253, size: 64, offset: 320)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1435, file: !141, line: 352, baseType: !253, size: 64, offset: 384)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1435, file: !141, line: 353, baseType: !223, size: 64, offset: 448)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1435, file: !141, line: 355, baseType: !223, size: 64, offset: 512)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1435, file: !141, line: 356, baseType: !50, size: 32, offset: 576)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1435, file: !141, line: 357, baseType: !50, size: 32, offset: 608)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1435, file: !141, line: 358, baseType: !253, size: 64, offset: 640)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1435, file: !141, line: 359, baseType: !253, size: 64, offset: 704)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1435, file: !141, line: 360, baseType: !253, size: 64, offset: 768)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1435, file: !141, line: 361, baseType: !223, size: 64, offset: 832)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1435, file: !141, line: 362, baseType: !50, size: 32, offset: 896)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1402, file: !141, line: 438, baseType: !1454, size: 64, offset: 448)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!50, !1173, !1398, !1434}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1402, file: !141, line: 440, baseType: !1431, size: 64, offset: 512)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1402, file: !141, line: 441, baseType: !1459, size: 64, offset: 576)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!50, !1173, !1462}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !141, line: 411, size: 1408, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1463, file: !141, line: 412, baseType: !7, size: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1463, file: !141, line: 413, baseType: !1467, size: 1344, offset: 64)
!1467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1468, size: 1344, elements: !878)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !141, line: 397, size: 448, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1480}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1468, file: !141, line: 398, baseType: !7, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1468, file: !141, line: 399, baseType: !7, size: 32, offset: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1468, file: !141, line: 401, baseType: !7, size: 32, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1468, file: !141, line: 402, baseType: !7, size: 32, offset: 96)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1468, file: !141, line: 403, baseType: !7, size: 32, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1468, file: !141, line: 404, baseType: !7, size: 32, offset: 160)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1468, file: !141, line: 405, baseType: !7, size: 32, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1468, file: !141, line: 406, baseType: !255, size: 64, offset: 256)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1468, file: !141, line: 407, baseType: !1479, size: 64, offset: 320)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !53, line: 132, baseType: !253)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1468, file: !141, line: 408, baseType: !1479, size: 64, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1402, file: !141, line: 442, baseType: !1410, size: 64, offset: 640)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1174, file: !136, line: 1200, baseType: !1483, size: 64, offset: 576)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1485)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !136, line: 54, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1174, file: !136, line: 1201, baseType: !67, size: 64, offset: 640)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1174, file: !136, line: 1202, baseType: !67, size: 64, offset: 704)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1174, file: !136, line: 1203, baseType: !67, size: 64, offset: 768)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1174, file: !136, line: 1204, baseType: !930, size: 64, offset: 832)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1174, file: !136, line: 1205, baseType: !289, size: 320, offset: 896)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1174, file: !136, line: 1206, baseType: !50, size: 32, offset: 1216)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1174, file: !136, line: 1207, baseType: !77, size: 32, offset: 1248)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1174, file: !136, line: 1209, baseType: !48, size: 64, offset: 1280)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1174, file: !136, line: 1211, baseType: !1495, size: 64, offset: 1344)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1498)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !136, line: 1211, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1174, file: !136, line: 1223, baseType: !1500, size: 64, offset: 1408)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !942, line: 34, size: 64, elements: !1501)
!1501 = !{!1502}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1500, file: !942, line: 35, baseType: !945, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1174, file: !136, line: 1224, baseType: !125, size: 128, offset: 1472)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1174, file: !136, line: 1225, baseType: !1505, size: 64, offset: 1600)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !136, line: 1225, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1174, file: !136, line: 1226, baseType: !1508, size: 64, offset: 1664)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !136, line: 1226, flags: DIFlagFwdDecl)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1174, file: !136, line: 1227, baseType: !1511, size: 64, offset: 1728)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !136, line: 50, flags: DIFlagFwdDecl)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1174, file: !136, line: 1228, baseType: !1514, size: 64, offset: 1792)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !136, line: 1228, flags: DIFlagFwdDecl)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1174, file: !136, line: 1229, baseType: !435, size: 128, offset: 1856)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1174, file: !136, line: 1230, baseType: !7, size: 32, offset: 1984)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1174, file: !136, line: 1231, baseType: !1519, size: 2496, offset: 2048)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !141, line: 521, size: 2496, elements: !1520)
!1520 = !{!1521, !1522, !1523, !1525, !1557}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1519, file: !141, line: 522, baseType: !7, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1519, file: !141, line: 523, baseType: !289, size: 320, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1519, file: !141, line: 524, baseType: !1524, size: 192, offset: 384)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !965, size: 192, elements: !878)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1519, file: !141, line: 525, baseType: !1526, size: 1728, offset: 576)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1527, size: 1728, elements: !878)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !141, line: 222, size: 576, elements: !1528)
!1528 = !{!1529, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1527, file: !141, line: 223, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !141, line: 445, size: 256, elements: !1532)
!1532 = !{!1533, !1534, !1547, !1548}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1531, file: !141, line: 446, baseType: !50, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1531, file: !141, line: 447, baseType: !1535, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !141, line: 312, size: 512, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1537, file: !141, line: 313, baseType: !1253, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1537, file: !141, line: 314, baseType: !1253, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1537, file: !141, line: 315, baseType: !1253, size: 64, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1537, file: !141, line: 316, baseType: !1253, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1537, file: !141, line: 317, baseType: !1365, size: 64, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1537, file: !141, line: 318, baseType: !1365, size: 64, offset: 320)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1537, file: !141, line: 319, baseType: !1365, size: 64, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1537, file: !141, line: 320, baseType: !1395, size: 64, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1531, file: !141, line: 448, baseType: !1206, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1531, file: !141, line: 449, baseType: !1530, size: 64, offset: 192)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1527, file: !141, line: 224, baseType: !50, size: 32, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1527, file: !141, line: 226, baseType: !125, size: 128, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1527, file: !141, line: 227, baseType: !67, size: 64, offset: 256)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1527, file: !141, line: 228, baseType: !7, size: 32, offset: 320)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1527, file: !141, line: 229, baseType: !7, size: 32, offset: 352)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1527, file: !141, line: 230, baseType: !1333, size: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1527, file: !141, line: 231, baseType: !1333, size: 64, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1527, file: !141, line: 232, baseType: !48, size: 64, offset: 512)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1519, file: !141, line: 526, baseType: !1558, size: 192, offset: 2304)
!1558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1535, size: 192, elements: !878)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1174, file: !136, line: 1233, baseType: !1560, size: 2368, offset: 4544)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !136, line: 1184, size: 2368, elements: !1561)
!1561 = !{!1562, !1563, !1564}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1560, file: !136, line: 1185, baseType: !54, size: 16)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1560, file: !136, line: 1186, baseType: !54, size: 16, offset: 16)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1560, file: !136, line: 1187, baseType: !1565, size: 2304, offset: 64)
!1565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1566, size: 2304, elements: !878)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1567, line: 12, size: 768, elements: !1568)
!1567 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1568 = !{!1569, !1577, !1579, !1584, !1585}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1566, file: !1567, line: 13, baseType: !1570, size: 384)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1571, line: 17, size: 384, elements: !1572)
!1571 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1572 = !{!1573, !1574, !1575, !1576}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1570, file: !1571, line: 18, baseType: !50, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1570, file: !1571, line: 19, baseType: !50, size: 32, offset: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1570, file: !1571, line: 20, baseType: !82, size: 192, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1570, file: !1571, line: 22, baseType: !353, size: 128, align: 64, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1566, file: !1567, line: 14, baseType: !1578, size: 64, offset: 384)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1566, file: !1567, line: 15, baseType: !1580, size: 64, offset: 448)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1581, line: 16, size: 64, elements: !1582)
!1581 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1582 = !{!1583}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1580, file: !1581, line: 17, baseType: !505, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1566, file: !1567, line: 16, baseType: !82, size: 192, offset: 512)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1566, file: !1567, line: 17, baseType: !77, size: 32, offset: 704)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1174, file: !136, line: 1240, baseType: !48, size: 64, offset: 6912)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1174, file: !136, line: 1243, baseType: !319, size: 32, offset: 6976)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1174, file: !136, line: 1245, baseType: !310, size: 64, offset: 7040)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1174, file: !136, line: 1246, baseType: !310, size: 64, offset: 7104)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1174, file: !136, line: 1248, baseType: !320, size: 32, offset: 7168)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1174, file: !136, line: 1249, baseType: !1592, size: 64, offset: 7232)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !136, line: 634, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1174, file: !136, line: 1252, baseType: !1595, size: 256, offset: 7296)
!1595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 256, elements: !1596)
!1596 = !{!1597}
!1597 = !DISubrange(count: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1174, file: !136, line: 1253, baseType: !1599, size: 128, offset: 7552)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1600, line: 21, baseType: !1601)
!1600 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1600, line: 19, size: 128, elements: !1602)
!1602 = !{!1603}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1601, file: !1600, line: 20, baseType: !1604, size: 128)
!1604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 128, elements: !1605)
!1605 = !{!1606}
!1606 = !DISubrange(count: 16)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1174, file: !136, line: 1255, baseType: !7, size: 32, offset: 7680)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1174, file: !136, line: 1261, baseType: !846, size: 256, offset: 7744)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1174, file: !136, line: 1267, baseType: !44, size: 64, offset: 8000)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1174, file: !136, line: 1269, baseType: !1611, size: 64, offset: 8064)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1613)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !932, line: 128, size: 1024, align: 512, elements: !1614)
!1614 = !{!1615, !1619, !1620, !1627, !1633, !1637, !1641, !1645, !1646, !1650, !1654, !1659, !1663}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1613, file: !932, line: 129, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!50, !930, !7}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1613, file: !932, line: 130, baseType: !1616, size: 64, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1613, file: !932, line: 131, baseType: !1621, size: 64, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!50, !1624, !1626}
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !931)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1613, file: !932, line: 132, baseType: !1628, size: 64, offset: 192)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!50, !1624, !7, !44, !1631}
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !950)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1613, file: !932, line: 134, baseType: !1634, size: 64, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!50, !1624}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1613, file: !932, line: 135, baseType: !1638, size: 64, offset: 320)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!50, !930}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1613, file: !932, line: 136, baseType: !1642, size: 64, offset: 384)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{null, !930}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1613, file: !932, line: 137, baseType: !1642, size: 64, offset: 448)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1613, file: !932, line: 138, baseType: !1647, size: 64, offset: 512)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{null, !930, !965}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1613, file: !932, line: 139, baseType: !1651, size: 64, offset: 576)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!374, !930, !374, !50}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1613, file: !932, line: 140, baseType: !1655, size: 64, offset: 640)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!925, !1658}
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1613, file: !932, line: 141, baseType: !1660, size: 64, offset: 704)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!50, !1087, !363}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1613, file: !932, line: 142, baseType: !1664, size: 64, offset: 768)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!930, !930, !1667}
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !966)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1174, file: !136, line: 1271, baseType: !1670, size: 448, offset: 8128)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1348, line: 63, size: 448, elements: !1671)
!1671 = !{!1672, !1677, !1678, !1679, !1680, !1681, !1682}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1670, file: !1348, line: 64, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!67, !1676, !1346}
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1670, file: !1348, line: 66, baseType: !1673, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1670, file: !1348, line: 69, baseType: !1079, size: 64, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1670, file: !1348, line: 70, baseType: !50, size: 32, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1670, file: !1348, line: 71, baseType: !7, size: 32, offset: 224)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1670, file: !1348, line: 74, baseType: !125, size: 128, offset: 256)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1670, file: !1348, line: 85, baseType: !1683, size: 64, offset: 384)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1174, file: !136, line: 1274, baseType: !217, size: 64, offset: 8576)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1174, file: !136, line: 1280, baseType: !217, size: 64, offset: 8640)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1174, file: !136, line: 1283, baseType: !50, size: 32, offset: 8704)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1174, file: !136, line: 1286, baseType: !1688, size: 32, offset: 8736)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1689, line: 8, baseType: !319)
!1689 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1174, file: !136, line: 1289, baseType: !1691, size: 64, offset: 8768)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !184, line: 18, flags: DIFlagFwdDecl)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1174, file: !136, line: 1290, baseType: !890, size: 64, offset: 8832)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1174, file: !136, line: 1297, baseType: !455, size: 64, offset: 8896)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1174, file: !136, line: 1304, baseType: !1696, size: 64, offset: 8960)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1697, line: 49, size: 64, elements: !1698)
!1697 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!1698 = !{!1699}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1696, file: !1697, line: 50, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1697, line: 41, size: 512, align: 512, elements: !1702)
!1702 = !{!1703, !1704, !1709}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1701, file: !1697, line: 43, baseType: !87, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1701, file: !1697, line: 45, baseType: !1705, size: 192, offset: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1697, line: 29, size: 192, elements: !1706)
!1706 = !{!1707, !1708}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1705, file: !1697, line: 30, baseType: !125, size: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1705, file: !1697, line: 32, baseType: !1079, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1701, file: !1697, line: 46, baseType: !1079, size: 64, offset: 256)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1174, file: !136, line: 1305, baseType: !1696, size: 64, offset: 9024)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1174, file: !136, line: 1306, baseType: !353, size: 128, align: 64, offset: 9088)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1174, file: !136, line: 1307, baseType: !1713, size: 256, offset: 9216)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !184, line: 98, size: 256, elements: !1714)
!1714 = !{!1715, !1716, !1717}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1713, file: !184, line: 99, baseType: !217, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1713, file: !184, line: 100, baseType: !125, size: 128, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1713, file: !184, line: 101, baseType: !1718, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !184, line: 21, baseType: !1719)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{null, !1722}
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1174, file: !136, line: 1309, baseType: !846, size: 256, offset: 9472)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1174, file: !136, line: 1314, baseType: !50, size: 32, offset: 9728)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1174, file: !136, line: 1317, baseType: !87, size: 32, align: 512, offset: 10240)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1174, file: !136, line: 1318, baseType: !125, size: 128, offset: 10304)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1174, file: !136, line: 1320, baseType: !87, size: 32, offset: 10432)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1174, file: !136, line: 1321, baseType: !125, size: 128, offset: 10496)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !966, file: !136, line: 656, baseType: !1730, size: 64, offset: 512)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !136, line: 472, size: 1536, align: 64, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !2035, !2036, !2037, !2038, !2039, !2040}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1731, file: !136, line: 473, baseType: !965, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1731, file: !136, line: 474, baseType: !1165, size: 128, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1731, file: !136, line: 475, baseType: !289, size: 320, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1731, file: !136, line: 476, baseType: !210, size: 32, offset: 512)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1731, file: !136, line: 477, baseType: !77, size: 32, offset: 544)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1731, file: !136, line: 482, baseType: !686, size: 128, offset: 576)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1731, file: !136, line: 483, baseType: !67, size: 64, offset: 704)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1731, file: !136, line: 484, baseType: !67, size: 64, offset: 768)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1731, file: !136, line: 485, baseType: !1742, size: 64, offset: 832)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1744)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !136, line: 404, size: 1280, elements: !1745)
!1745 = !{!1746, !1810, !1880, !1884, !1888, !1894, !1900, !1904, !1909, !1913, !1917, !1921, !1999, !2003, !2007, !2011, !2016, !2020, !2027, !2031}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1744, file: !136, line: 405, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!50, !1750, !1244}
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !805, line: 74, size: 512, align: 128, elements: !1752)
!1752 = !{!1753, !1754, !1804, !1809}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1751, file: !805, line: 75, baseType: !67, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !805, line: 83, baseType: !1755, size: 320, offset: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1751, file: !805, line: 83, size: 320, elements: !1756)
!1756 = !{!1757, !1778, !1792, !1796, !1803}
!1757 = !DIDerivedType(tag: DW_TAG_member, scope: !1755, file: !805, line: 84, baseType: !1758, size: 320)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1755, file: !805, line: 84, size: 320, elements: !1759)
!1759 = !{!1760, !1771, !1772, !1777}
!1760 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !805, line: 90, baseType: !1761, size: 128)
!1761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1758, file: !805, line: 90, size: 128, elements: !1762)
!1762 = !{!1763, !1764, !1769, !1770}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1761, file: !805, line: 91, baseType: !125, size: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, scope: !1761, file: !805, line: 94, baseType: !1765, size: 128)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1761, file: !805, line: 94, size: 128, elements: !1766)
!1766 = !{!1767, !1768}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1765, file: !805, line: 96, baseType: !48, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1765, file: !805, line: 98, baseType: !7, size: 32, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1761, file: !805, line: 102, baseType: !125, size: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1761, file: !805, line: 103, baseType: !125, size: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1758, file: !805, line: 106, baseType: !1730, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !805, line: 107, baseType: !1773, size: 64, offset: 192)
!1773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1758, file: !805, line: 107, size: 64, elements: !1774)
!1774 = !{!1775, !1776}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1773, file: !805, line: 108, baseType: !67, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1773, file: !805, line: 109, baseType: !67, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1758, file: !805, line: 117, baseType: !67, size: 64, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, scope: !1755, file: !805, line: 119, baseType: !1779, size: 320)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1755, file: !805, line: 119, size: 320, elements: !1780)
!1780 = !{!1781, !1782, !1785, !1786, !1787}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1779, file: !805, line: 124, baseType: !67, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1779, file: !805, line: 125, baseType: !1783, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !805, line: 125, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1779, file: !805, line: 126, baseType: !67, size: 64, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1779, file: !805, line: 127, baseType: !67, size: 64, offset: 192)
!1787 = !DIDerivedType(tag: DW_TAG_member, scope: !1779, file: !805, line: 128, baseType: !1788, size: 64, offset: 256)
!1788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1779, file: !805, line: 128, size: 64, elements: !1789)
!1789 = !{!1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1788, file: !805, line: 133, baseType: !67, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1788, file: !805, line: 138, baseType: !217, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, scope: !1755, file: !805, line: 141, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1755, file: !805, line: 141, size: 64, elements: !1794)
!1794 = !{!1795}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1793, file: !805, line: 142, baseType: !67, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, scope: !1755, file: !805, line: 144, baseType: !1797, size: 128)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1755, file: !805, line: 144, size: 128, elements: !1798)
!1798 = !{!1799, !1802}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1797, file: !805, line: 146, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !805, line: 146, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1797, file: !805, line: 147, baseType: !48, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1755, file: !805, line: 161, baseType: !353, size: 128, align: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !805, line: 164, baseType: !1805, size: 32, offset: 384)
!1805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1751, file: !805, line: 164, size: 32, elements: !1806)
!1806 = !{!1807, !1808}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1805, file: !805, line: 169, baseType: !77, size: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1805, file: !805, line: 177, baseType: !7, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1751, file: !805, line: 181, baseType: !77, size: 32, offset: 416)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1744, file: !136, line: 406, baseType: !1811, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!50, !832, !1814}
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !805, line: 293, size: 1536, elements: !1816)
!1816 = !{!1817, !1847, !1861}
!1817 = !DIDerivedType(tag: DW_TAG_member, scope: !1815, file: !805, line: 295, baseType: !1818, size: 512)
!1818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1815, file: !805, line: 295, size: 512, elements: !1819)
!1819 = !{!1820, !1846}
!1820 = !DIDerivedType(tag: DW_TAG_member, scope: !1818, file: !805, line: 296, baseType: !1821, size: 448)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1818, file: !805, line: 296, size: 448, elements: !1822)
!1822 = !{!1823, !1824, !1833, !1834, !1835, !1844, !1845}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1821, file: !805, line: 298, baseType: !67, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1821, file: !805, line: 299, baseType: !1825, size: 128, offset: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1821, file: !805, line: 299, size: 128, elements: !1826)
!1826 = !{!1827, !1828}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1825, file: !805, line: 300, baseType: !125, size: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, scope: !1825, file: !805, line: 302, baseType: !1829, size: 128)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1825, file: !805, line: 302, size: 128, elements: !1830)
!1830 = !{!1831, !1832}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1829, file: !805, line: 303, baseType: !48, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1829, file: !805, line: 305, baseType: !7, size: 32, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1821, file: !805, line: 310, baseType: !1730, size: 64, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1821, file: !805, line: 311, baseType: !67, size: 64, offset: 256)
!1835 = !DIDerivedType(tag: DW_TAG_member, scope: !1821, file: !805, line: 312, baseType: !1836, size: 64, offset: 320)
!1836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1821, file: !805, line: 312, size: 64, elements: !1837)
!1837 = !{!1838, !1839}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1836, file: !805, line: 313, baseType: !48, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1836, file: !805, line: 314, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !805, line: 257, baseType: !1841)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !805, line: 255, size: 64, elements: !1842)
!1842 = !{!1843}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1841, file: !805, line: 256, baseType: !67, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1821, file: !805, line: 316, baseType: !77, size: 32, offset: 384)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1821, file: !805, line: 317, baseType: !77, size: 32, offset: 416)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1818, file: !805, line: 323, baseType: !1751, size: 512, align: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, scope: !1815, file: !805, line: 325, baseType: !1848, size: 512, offset: 512)
!1848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1815, file: !805, line: 325, size: 512, elements: !1849)
!1849 = !{!1850, !1860}
!1850 = !DIDerivedType(tag: DW_TAG_member, scope: !1848, file: !805, line: 326, baseType: !1851, size: 320)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1848, file: !805, line: 326, size: 320, elements: !1852)
!1852 = !{!1853, !1854, !1855, !1856, !1857, !1858, !1859}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1851, file: !805, line: 327, baseType: !67, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1851, file: !805, line: 328, baseType: !67, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1851, file: !805, line: 329, baseType: !67, size: 64, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1851, file: !805, line: 331, baseType: !77, size: 32, offset: 192)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1851, file: !805, line: 332, baseType: !77, size: 32, offset: 224)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1851, file: !805, line: 333, baseType: !77, size: 32, offset: 256)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1851, file: !805, line: 335, baseType: !7, size: 32, offset: 288)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1848, file: !805, line: 339, baseType: !1751, size: 512, align: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !1815, file: !805, line: 341, baseType: !1862, size: 512, offset: 1024)
!1862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1815, file: !805, line: 341, size: 512, elements: !1863)
!1863 = !{!1864, !1873, !1879}
!1864 = !DIDerivedType(tag: DW_TAG_member, scope: !1862, file: !805, line: 342, baseType: !1865, size: 384)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1862, file: !805, line: 342, size: 384, elements: !1866)
!1866 = !{!1867, !1868, !1869, !1870, !1871, !1872}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1865, file: !805, line: 343, baseType: !67, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1865, file: !805, line: 344, baseType: !67, size: 64, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1865, file: !805, line: 346, baseType: !48, size: 64, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1865, file: !805, line: 347, baseType: !48, size: 64, offset: 192)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1865, file: !805, line: 348, baseType: !48, size: 64, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1865, file: !805, line: 349, baseType: !48, size: 64, offset: 320)
!1873 = !DIDerivedType(tag: DW_TAG_member, scope: !1862, file: !805, line: 352, baseType: !1874, size: 256)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1862, file: !805, line: 352, size: 256, elements: !1875)
!1875 = !{!1876, !1877, !1878}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1874, file: !805, line: 353, baseType: !67, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1874, file: !805, line: 354, baseType: !67, size: 64, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1874, file: !805, line: 356, baseType: !125, size: 128, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1862, file: !805, line: 359, baseType: !1751, size: 512, align: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1744, file: !136, line: 409, baseType: !1881, size: 64, offset: 128)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!50, !1730, !1244}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1744, file: !136, line: 412, baseType: !1885, size: 64, offset: 192)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!363, !1730, !1814}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1744, file: !136, line: 414, baseType: !1889, size: 64, offset: 256)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{null, !1892}
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !136, line: 310, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1744, file: !136, line: 416, baseType: !1895, size: 64, offset: 320)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!50, !832, !1730, !69, !7, !1898, !1899}
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1744, file: !136, line: 419, baseType: !1901, size: 64, offset: 384)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!50, !832, !1730, !69, !7, !7, !1750, !48}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1744, file: !136, line: 424, baseType: !1905, size: 64, offset: 448)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!1908, !1730, !1908}
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !53, line: 131, baseType: !253)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1744, file: !136, line: 425, baseType: !1910, size: 64, offset: 512)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{null, !1814, !63, !63}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1744, file: !136, line: 426, baseType: !1914, size: 64, offset: 576)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!363, !1814, !210}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1744, file: !136, line: 427, baseType: !1918, size: 64, offset: 640)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{null, !1814}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1744, file: !136, line: 428, baseType: !1922, size: 64, offset: 704)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!1118, !1925, !1947}
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !136, line: 373, size: 384, elements: !1927)
!1927 = !{!1928, !1929, !1930, !1934, !1935, !1936, !1937}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1926, file: !136, line: 374, baseType: !832, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1926, file: !136, line: 375, baseType: !69, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1926, file: !136, line: 376, baseType: !1931, size: 64, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{null, !1925, !1079}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1926, file: !136, line: 377, baseType: !48, size: 64, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1926, file: !136, line: 378, baseType: !50, size: 32, offset: 256)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1926, file: !136, line: 379, baseType: !121, size: 16, offset: 288)
!1937 = !DIDerivedType(tag: DW_TAG_member, scope: !1926, file: !136, line: 380, baseType: !1938, size: 64, offset: 320)
!1938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1926, file: !136, line: 380, size: 64, elements: !1939)
!1939 = !{!1940, !1943}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1938, file: !136, line: 386, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !136, line: 386, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1938, file: !136, line: 395, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!1118, !48}
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1949, line: 41, size: 320, elements: !1950)
!1949 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1950 = !{!1951, !1952, !1953, !1954, !1955, !1956, !1961, !1994}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1948, file: !1949, line: 42, baseType: !111, size: 8)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1948, file: !1949, line: 43, baseType: !363, size: 8, offset: 8)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1948, file: !1949, line: 44, baseType: !363, size: 8, offset: 16)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1948, file: !1949, line: 45, baseType: !363, size: 8, offset: 24)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1948, file: !1949, line: 46, baseType: !363, size: 8, offset: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, scope: !1948, file: !1949, line: 47, baseType: !1957, size: 64, offset: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1948, file: !1949, line: 47, size: 64, elements: !1958)
!1958 = !{!1959, !1960}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1957, file: !1949, line: 48, baseType: !63, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1957, file: !1949, line: 49, baseType: !50, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, scope: !1948, file: !1949, line: 61, baseType: !1962, size: 128, offset: 128)
!1962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1948, file: !1949, line: 61, size: 128, elements: !1963)
!1963 = !{!1964, !1970}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1962, file: !1949, line: 67, baseType: !1965, size: 128)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1966, line: 17, size: 128, elements: !1967)
!1966 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1967 = !{!1968, !1969}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1965, file: !1966, line: 19, baseType: !48, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1965, file: !1966, line: 20, baseType: !64, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, scope: !1962, file: !1949, line: 68, baseType: !1971, size: 128)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1962, file: !1949, line: 68, size: 128, elements: !1972)
!1972 = !{!1973, !1993}
!1973 = !DIDerivedType(tag: DW_TAG_member, scope: !1971, file: !1949, line: 69, baseType: !1974, size: 64)
!1974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1971, file: !1949, line: 69, size: 64, elements: !1975)
!1975 = !{!1976, !1979, !1986, !1990, !1992}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1974, file: !1949, line: 71, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1965)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1974, file: !1949, line: 72, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1982)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1949, line: 17, size: 128, elements: !1983)
!1983 = !{!1984, !1985}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1982, file: !1949, line: 18, baseType: !48, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1982, file: !1949, line: 19, baseType: !63, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1974, file: !1949, line: 73, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1989)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1949, line: 73, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1974, file: !1949, line: 74, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1974, file: !1949, line: 75, baseType: !48, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1971, file: !1949, line: 77, baseType: !63, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, scope: !1948, file: !1949, line: 80, baseType: !1995, size: 64, offset: 256)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1948, file: !1949, line: 80, size: 64, elements: !1996)
!1996 = !{!1997, !1998}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1995, file: !1949, line: 81, baseType: !67, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1995, file: !1949, line: 82, baseType: !69, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1744, file: !136, line: 433, baseType: !2000, size: 64, offset: 768)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!50, !1730, !1814, !1814, !25}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1744, file: !136, line: 435, baseType: !2004, size: 64, offset: 832)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!50, !1814}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1744, file: !136, line: 436, baseType: !2008, size: 64, offset: 896)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!363, !1814, !63, !63}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1744, file: !136, line: 438, baseType: !2012, size: 64, offset: 960)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{null, !1814, !2015, !2015}
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1744, file: !136, line: 439, baseType: !2017, size: 64, offset: 1024)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!50, !1730, !1750}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1744, file: !136, line: 442, baseType: !2021, size: 64, offset: 1088)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!50, !2024, !832, !2026}
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !136, line: 66, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1744, file: !136, line: 444, baseType: !2028, size: 64, offset: 1152)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{null, !832}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1744, file: !136, line: 445, baseType: !2032, size: 64, offset: 1216)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!50, !1925, !1947}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1731, file: !136, line: 486, baseType: !67, size: 64, offset: 896)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1731, file: !136, line: 487, baseType: !289, size: 320, offset: 960)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1731, file: !136, line: 488, baseType: !1688, size: 32, offset: 1280)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1731, file: !136, line: 489, baseType: !87, size: 32, offset: 1312)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1731, file: !136, line: 490, baseType: !125, size: 128, offset: 1344)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1731, file: !136, line: 491, baseType: !48, size: 64, offset: 1472)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !966, file: !136, line: 659, baseType: !48, size: 64, offset: 576)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !966, file: !136, line: 663, baseType: !67, size: 64, offset: 640)
!2043 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !136, line: 671, baseType: !2044, size: 32, offset: 704)
!2044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !136, line: 671, size: 32, elements: !2045)
!2045 = !{!2046, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2044, file: !136, line: 672, baseType: !2047, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2044, file: !136, line: 673, baseType: !7, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !966, file: !136, line: 675, baseType: !1039, size: 32, offset: 736)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !966, file: !136, line: 676, baseType: !69, size: 64, offset: 768)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !966, file: !136, line: 677, baseType: !1075, size: 128, offset: 832)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !966, file: !136, line: 678, baseType: !1075, size: 128, offset: 960)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !966, file: !136, line: 679, baseType: !1075, size: 128, offset: 1088)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !966, file: !136, line: 680, baseType: !87, size: 32, offset: 1216)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !966, file: !136, line: 681, baseType: !54, size: 16, offset: 1248)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !966, file: !136, line: 682, baseType: !111, size: 8, offset: 1264)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !966, file: !136, line: 683, baseType: !111, size: 8, offset: 1272)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !966, file: !136, line: 684, baseType: !1479, size: 64, offset: 1280)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !966, file: !136, line: 691, baseType: !67, size: 64, offset: 1344)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !966, file: !136, line: 692, baseType: !289, size: 320, offset: 1408)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !966, file: !136, line: 694, baseType: !67, size: 64, offset: 1728)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !966, file: !136, line: 695, baseType: !67, size: 64, offset: 1792)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !966, file: !136, line: 697, baseType: !435, size: 128, offset: 1856)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !966, file: !136, line: 698, baseType: !125, size: 128, offset: 1984)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !966, file: !136, line: 707, baseType: !125, size: 128, offset: 2112)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !966, file: !136, line: 708, baseType: !125, size: 128, offset: 2240)
!2067 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !136, line: 709, baseType: !2068, size: 128, offset: 2368)
!2068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !136, line: 709, size: 128, elements: !2069)
!2069 = !{!2070, !2071}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2068, file: !136, line: 710, baseType: !890, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2068, file: !136, line: 711, baseType: !353, size: 128, align: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !966, file: !136, line: 713, baseType: !219, size: 64, offset: 2496)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !966, file: !136, line: 714, baseType: !219, size: 64, offset: 2560)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !966, file: !136, line: 715, baseType: !77, size: 32, offset: 2624)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !966, file: !136, line: 716, baseType: !77, size: 32, offset: 2656)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !966, file: !136, line: 717, baseType: !77, size: 32, offset: 2688)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !966, file: !136, line: 719, baseType: !77, size: 32, offset: 2720)
!2078 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !136, line: 721, baseType: !2079, size: 64, offset: 2752)
!2079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !136, line: 721, size: 64, elements: !2080)
!2080 = !{!2081, !2268}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2079, file: !136, line: 722, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2084)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !136, line: 1914, size: 2112, elements: !2085)
!2085 = !{!2086, !2087, !2091, !2095, !2099, !2100, !2101, !2107, !2120, !2128, !2132, !2133, !2194, !2195, !2199, !2204, !2205, !2209, !2213, !2219, !2220, !2224, !2225, !2231, !2235, !2236, !2241, !2245, !2249, !2253, !2257, !2258, !2264}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2084, file: !136, line: 1915, baseType: !1206, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2084, file: !136, line: 1916, baseType: !2088, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!69, !832, !69, !50}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2084, file: !136, line: 1917, baseType: !2092, size: 64, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!1118, !832, !374, !63, !68}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2084, file: !136, line: 1918, baseType: !2096, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!1118, !832, !44, !63, !68}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2084, file: !136, line: 1919, baseType: !1922, size: 64, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2084, file: !136, line: 1920, baseType: !1922, size: 64, offset: 320)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2084, file: !136, line: 1921, baseType: !2102, size: 64, offset: 384)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!50, !1925, !2105, !7}
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !136, line: 53, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2084, file: !136, line: 1923, baseType: !2108, size: 64, offset: 448)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!50, !832, !2111}
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !136, line: 1858, size: 128, elements: !2113)
!2113 = !{!2114, !2119}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2112, file: !136, line: 1859, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !136, line: 1855, baseType: !2116)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!363, !2111, !44, !50, !69, !253, !7}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2112, file: !136, line: 1860, baseType: !69, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2084, file: !136, line: 1924, baseType: !2121, size: 64, offset: 512)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!2124, !832, !2126}
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2125, line: 59, baseType: !7)
!2125 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !136, line: 61, flags: DIFlagFwdDecl)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2084, file: !136, line: 1925, baseType: !2129, size: 64, offset: 576)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!1079, !832, !7, !67}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2084, file: !136, line: 1926, baseType: !2129, size: 64, offset: 640)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2084, file: !136, line: 1927, baseType: !2134, size: 64, offset: 704)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!50, !832, !2137}
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !805, line: 625, size: 1344, elements: !2139)
!2139 = !{!2140, !2149, !2150, !2158, !2165, !2166, !2171, !2172, !2177, !2178, !2181, !2185, !2186, !2187, !2188, !2189, !2192}
!2140 = !DIDerivedType(tag: DW_TAG_member, scope: !2138, file: !805, line: 628, baseType: !2141, size: 128)
!2141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2138, file: !805, line: 628, size: 128, elements: !2142)
!2142 = !{!2143, !2148}
!2143 = !DIDerivedType(tag: DW_TAG_member, scope: !2141, file: !805, line: 629, baseType: !2144, size: 128)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2141, file: !805, line: 629, size: 128, elements: !2145)
!2145 = !{!2146, !2147}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2144, file: !805, line: 631, baseType: !67, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2144, file: !805, line: 632, baseType: !67, size: 64, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2141, file: !805, line: 635, baseType: !353, size: 128, align: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2138, file: !805, line: 639, baseType: !803, size: 64, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2138, file: !805, line: 640, baseType: !2151, size: 64, offset: 192)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2152, line: 297, baseType: !2153)
!2152 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2152, line: 297, size: 64, elements: !2154)
!2154 = !{!2155}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2153, file: !2152, line: 297, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2157, line: 19, baseType: !67)
!2157 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2158 = !DIDerivedType(tag: DW_TAG_member, scope: !2138, file: !805, line: 646, baseType: !2159, size: 64, offset: 256)
!2159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2138, file: !805, line: 646, size: 64, elements: !2160)
!2160 = !{!2161, !2164}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2159, file: !805, line: 647, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2163)
!2163 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !805, line: 542, baseType: !67)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2159, file: !805, line: 648, baseType: !2163, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2138, file: !805, line: 666, baseType: !50, size: 32, offset: 320)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2138, file: !805, line: 667, baseType: !2167, size: 64, offset: 384)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !805, line: 579, size: 320, elements: !2169)
!2169 = !{!2170}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2168, file: !805, line: 580, baseType: !289, size: 320)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2138, file: !805, line: 670, baseType: !363, size: 8, offset: 448)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2138, file: !805, line: 681, baseType: !2173, size: 256, offset: 512)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2138, file: !805, line: 678, size: 256, elements: !2174)
!2174 = !{!2175, !2176}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2173, file: !805, line: 679, baseType: !281, size: 192, align: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2173, file: !805, line: 680, baseType: !67, size: 64, offset: 192)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2138, file: !805, line: 689, baseType: !125, size: 128, offset: 768)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2138, file: !805, line: 691, baseType: !2179, size: 64, offset: 896)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !805, line: 691, flags: DIFlagFwdDecl)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2138, file: !805, line: 694, baseType: !2182, size: 64, offset: 960)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2184)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !805, line: 694, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2138, file: !805, line: 697, baseType: !67, size: 64, offset: 1024)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2138, file: !805, line: 699, baseType: !832, size: 64, offset: 1088)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2138, file: !805, line: 700, baseType: !48, size: 64, offset: 1152)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2138, file: !805, line: 711, baseType: !217, size: 64, offset: 1216)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2138, file: !805, line: 717, baseType: !2190, size: 64, offset: 1280)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !805, line: 717, flags: DIFlagFwdDecl)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2138, file: !805, line: 722, baseType: !2193, offset: 1344)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !805, line: 570, elements: !825)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2084, file: !136, line: 1928, baseType: !67, size: 64, offset: 768)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2084, file: !136, line: 1929, baseType: !2196, size: 64, offset: 832)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!50, !965, !832}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2084, file: !136, line: 1930, baseType: !2200, size: 64, offset: 896)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!50, !832, !2203}
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !136, line: 1061, baseType: !48)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2084, file: !136, line: 1931, baseType: !2196, size: 64, offset: 960)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2084, file: !136, line: 1932, baseType: !2206, size: 64, offset: 1024)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!50, !832, !69, !69, !50}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2084, file: !136, line: 1933, baseType: !2210, size: 64, offset: 1088)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!50, !50, !832, !50}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2084, file: !136, line: 1934, baseType: !2214, size: 64, offset: 1152)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!50, !832, !50, !2217}
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !136, line: 1063, flags: DIFlagFwdDecl)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2084, file: !136, line: 1935, baseType: !829, size: 64, offset: 1216)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2084, file: !136, line: 1936, baseType: !2221, size: 64, offset: 1280)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!50, !50}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2084, file: !136, line: 1937, baseType: !2214, size: 64, offset: 1344)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2084, file: !136, line: 1938, baseType: !2226, size: 64, offset: 1408)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!1118, !2229, !832, !68, !63, !7}
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !507, line: 59, flags: DIFlagFwdDecl)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2084, file: !136, line: 1939, baseType: !2232, size: 64, offset: 1472)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!1118, !832, !68, !2229, !63, !7}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2084, file: !136, line: 1940, baseType: !2028, size: 64, offset: 1536)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2084, file: !136, line: 1941, baseType: !2237, size: 64, offset: 1600)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!50, !832, !50, !2240, !1899}
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2084, file: !136, line: 1942, baseType: !2242, size: 64, offset: 1664)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!1079, !832, !50, !69, !69}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2084, file: !136, line: 1944, baseType: !2246, size: 64, offset: 1728)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{null, !1282, !832}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2084, file: !136, line: 1948, baseType: !2250, size: 64, offset: 1792)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!1118, !832, !69, !832, !69, !63, !7}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2084, file: !136, line: 1950, baseType: !2254, size: 64, offset: 1856)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!69, !832, !69, !832, !69, !69, !7}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2084, file: !136, line: 1953, baseType: !2206, size: 64, offset: 1920)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2084, file: !136, line: 1954, baseType: !2259, size: 64, offset: 1984)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!50, !2262, !7}
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !136, line: 1911, flags: DIFlagFwdDecl)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2084, file: !136, line: 1955, baseType: !2265, size: 64, offset: 2048)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!50, !2262, !2105, !7}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2079, file: !136, line: 723, baseType: !1232, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !966, file: !136, line: 725, baseType: !2270, size: 64, offset: 2816)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !136, line: 725, flags: DIFlagFwdDecl)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !966, file: !136, line: 726, baseType: !1731, size: 1536, align: 64, offset: 2880)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !966, file: !136, line: 727, baseType: !125, size: 128, offset: 4416)
!2274 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !136, line: 728, baseType: !2275, size: 64, offset: 4544)
!2275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !136, line: 728, size: 64, elements: !2276)
!2276 = !{!2277, !2278, !2281, !2282}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2275, file: !136, line: 729, baseType: !2229, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2275, file: !136, line: 730, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !136, line: 730, flags: DIFlagFwdDecl)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2275, file: !136, line: 731, baseType: !374, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2275, file: !136, line: 732, baseType: !7, size: 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !966, file: !136, line: 735, baseType: !320, size: 32, offset: 4608)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !966, file: !136, line: 738, baseType: !320, size: 32, offset: 4640)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !966, file: !136, line: 739, baseType: !1592, size: 64, offset: 4672)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !966, file: !136, line: 750, baseType: !48, size: 64, offset: 4736)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !931, file: !932, line: 91, baseType: !2288, size: 256, offset: 448)
!2288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 256, elements: !1596)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !931, file: !932, line: 94, baseType: !2290, size: 64, offset: 704)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2291, line: 25, size: 64, elements: !2292)
!2291 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2292 = !{!2293}
!2293 = !DIDerivedType(tag: DW_TAG_member, scope: !2290, file: !2291, line: 26, baseType: !2294, size: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2290, file: !2291, line: 26, size: 64, elements: !2295)
!2295 = !{!2296, !2297}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2294, file: !2291, line: 28, baseType: !254, size: 64, align: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, scope: !2294, file: !2291, line: 30, baseType: !2298, size: 64)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2294, file: !2291, line: 30, size: 64, elements: !2299)
!2299 = !{!2300, !2301}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2298, file: !2291, line: 31, baseType: !87, size: 32)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2298, file: !2291, line: 32, baseType: !50, size: 32, offset: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !931, file: !932, line: 95, baseType: !1611, size: 64, offset: 768)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !931, file: !932, line: 96, baseType: !1173, size: 64, offset: 832)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !931, file: !932, line: 97, baseType: !67, size: 64, offset: 896)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !931, file: !932, line: 98, baseType: !48, size: 64, offset: 960)
!2306 = !DIDerivedType(tag: DW_TAG_member, scope: !931, file: !932, line: 100, baseType: !2307, size: 128, offset: 1024)
!2307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !931, file: !932, line: 100, size: 128, elements: !2308)
!2308 = !{!2309, !2310}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2307, file: !932, line: 101, baseType: !125, size: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2307, file: !932, line: 102, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !931, file: !932, line: 104, baseType: !125, size: 128, offset: 1152)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !931, file: !932, line: 105, baseType: !125, size: 128, offset: 1280)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !931, file: !932, line: 113, baseType: !2315, size: 128, offset: 1408)
!2315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !931, file: !932, line: 109, size: 128, elements: !2316)
!2316 = !{!2317, !2318, !2319}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2315, file: !932, line: 110, baseType: !435, size: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2315, file: !932, line: 111, baseType: !941, size: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2315, file: !932, line: 112, baseType: !353, size: 128, align: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !926, file: !927, line: 72, baseType: !1173, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !926, file: !927, line: 73, baseType: !50, size: 32, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !926, file: !927, line: 74, baseType: !1004, size: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !921, file: !922, line: 10, baseType: !930, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !833, file: !136, line: 1015, baseType: !965, size: 64, offset: 1344)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !833, file: !136, line: 1016, baseType: !2082, size: 64, offset: 1408)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !833, file: !136, line: 1018, baseType: !253, size: 64, offset: 1472)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !833, file: !136, line: 1020, baseType: !48, size: 64, offset: 1536)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !833, file: !136, line: 1023, baseType: !48, size: 64, offset: 1600)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !833, file: !136, line: 1027, baseType: !2330, size: 64, offset: 1664)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !833, file: !136, line: 1029, baseType: !1730, size: 64, offset: 1728)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !833, file: !136, line: 1030, baseType: !1688, size: 32, offset: 1792)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !833, file: !136, line: 1031, baseType: !1688, size: 32, offset: 1824)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !808, file: !805, line: 756, baseType: !67, size: 64, offset: 704)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !808, file: !805, line: 757, baseType: !67, size: 64, offset: 768)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !808, file: !805, line: 760, baseType: !67, size: 64, offset: 832)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !808, file: !805, line: 761, baseType: !67, size: 64, offset: 896)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !808, file: !805, line: 763, baseType: !67, size: 64, offset: 960)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !808, file: !805, line: 764, baseType: !2340, size: 64, offset: 1024)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2152, line: 299, baseType: !2342)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2152, line: 299, size: 64, elements: !2343)
!2343 = !{!2344}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2342, file: !2152, line: 299, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2157, line: 18, baseType: !67)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !808, file: !805, line: 773, baseType: !77, size: 32, offset: 1088)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !808, file: !805, line: 785, baseType: !77, size: 32, offset: 1120)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !808, file: !805, line: 795, baseType: !2349, size: 64, offset: 1152)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !805, line: 726, size: 128, elements: !2351)
!2351 = !{!2352, !2353}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2350, file: !805, line: 727, baseType: !253, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2350, file: !805, line: 728, baseType: !50, size: 32, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !808, file: !805, line: 801, baseType: !67, size: 64, offset: 1216)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !808, file: !805, line: 804, baseType: !217, size: 64, offset: 1280)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !808, file: !805, line: 806, baseType: !50, size: 32, offset: 1344)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !808, file: !805, line: 808, baseType: !87, size: 32, offset: 1376)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !808, file: !805, line: 823, baseType: !289, size: 320, offset: 1408)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !808, file: !805, line: 825, baseType: !125, size: 128, offset: 1728)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !808, file: !805, line: 845, baseType: !50, size: 32, offset: 1856)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !808, file: !805, line: 849, baseType: !67, size: 64, offset: 1920)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !808, file: !805, line: 850, baseType: !67, size: 64, offset: 1984)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !808, file: !805, line: 852, baseType: !67, size: 64, offset: 2048)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !808, file: !805, line: 853, baseType: !67, size: 64, offset: 2112)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !808, file: !805, line: 854, baseType: !219, size: 64, offset: 2176)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !808, file: !805, line: 855, baseType: !67, size: 64, offset: 2240)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !808, file: !805, line: 856, baseType: !67, size: 64, offset: 2304)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !808, file: !805, line: 857, baseType: !67, size: 64, offset: 2368)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !808, file: !805, line: 858, baseType: !67, size: 64, offset: 2432)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !808, file: !805, line: 865, baseType: !677, size: 32, offset: 2496)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !808, file: !805, line: 867, baseType: !87, size: 32, offset: 2528)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !808, file: !805, line: 869, baseType: !67, size: 64, offset: 2560)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !808, file: !805, line: 869, baseType: !67, size: 64, offset: 2624)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !808, file: !805, line: 869, baseType: !67, size: 64, offset: 2688)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !808, file: !805, line: 869, baseType: !67, size: 64, offset: 2752)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !808, file: !805, line: 870, baseType: !67, size: 64, offset: 2816)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !808, file: !805, line: 870, baseType: !67, size: 64, offset: 2880)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !808, file: !805, line: 870, baseType: !67, size: 64, offset: 2944)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !808, file: !805, line: 871, baseType: !67, size: 64, offset: 3008)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !808, file: !805, line: 871, baseType: !67, size: 64, offset: 3072)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !808, file: !805, line: 871, baseType: !67, size: 64, offset: 3136)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !808, file: !805, line: 871, baseType: !67, size: 64, offset: 3200)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !808, file: !805, line: 873, baseType: !2384, size: 3328, offset: 3264)
!2384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 3328, elements: !2385)
!2385 = !{!2386}
!2386 = !DISubrange(count: 52)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !808, file: !805, line: 875, baseType: !2388, size: 1280, offset: 6592)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 1280, elements: !384)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !808, file: !805, line: 877, baseType: !2390, size: 64, offset: 7872)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !805, line: 877, flags: DIFlagFwdDecl)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !808, file: !805, line: 880, baseType: !2393, size: 1088, offset: 7936)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2394, line: 72, baseType: !2395)
!2394 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2394, line: 23, size: 1088, elements: !2396)
!2396 = !{!2397, !2398, !2399, !2400, !2401, !2404, !2405, !2406, !2407, !2411, !2412, !2413}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2395, file: !2394, line: 28, baseType: !253, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2395, file: !2394, line: 38, baseType: !219, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2395, file: !2394, line: 40, baseType: !67, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2395, file: !2394, line: 43, baseType: !289, size: 320, offset: 192)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2395, file: !2394, line: 44, baseType: !2402, size: 64, offset: 512)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2394, line: 44, flags: DIFlagFwdDecl)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2395, file: !2394, line: 48, baseType: !67, size: 64, offset: 576)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2395, file: !2394, line: 59, baseType: !846, size: 256, offset: 640)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2395, file: !2394, line: 60, baseType: !48, size: 64, offset: 896)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2395, file: !2394, line: 61, baseType: !2408, size: 64, offset: 960)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2410)
!2410 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2394, line: 61, flags: DIFlagFwdDecl)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2395, file: !2394, line: 63, baseType: !77, size: 32, offset: 1024)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2395, file: !2394, line: 69, baseType: !121, size: 16, offset: 1056)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2395, file: !2394, line: 70, baseType: !2414, size: 16, offset: 1072)
!2414 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !112, line: 18, baseType: !2415)
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !114, line: 23, baseType: !324)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !808, file: !805, line: 882, baseType: !67, size: 64, offset: 9024)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !808, file: !805, line: 885, baseType: !87, size: 32, offset: 9088)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !808, file: !805, line: 886, baseType: !2419, size: 64, offset: 9152)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !805, line: 732, flags: DIFlagFwdDecl)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !808, file: !805, line: 901, baseType: !455, size: 64, offset: 9216)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !808, file: !805, line: 904, baseType: !832, size: 64, offset: 9280)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !808, file: !805, line: 906, baseType: !2424, size: 64, offset: 9344)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !805, line: 906, flags: DIFlagFwdDecl)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !808, file: !805, line: 930, baseType: !77, size: 32, offset: 9408)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !808, file: !805, line: 933, baseType: !77, size: 32, offset: 9440)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !808, file: !805, line: 935, baseType: !2429, size: 64, offset: 9472)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !33, line: 103, size: 64, elements: !2430)
!2430 = !{!2431}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2429, file: !33, line: 104, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !33, line: 101, flags: DIFlagFwdDecl)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !808, file: !805, line: 940, baseType: !217, size: 64, offset: 9536)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !808, file: !805, line: 942, baseType: !1713, size: 256, offset: 9600)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !804, file: !805, line: 986, baseType: !2437, offset: 10240)
!2437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, elements: !904)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !506, file: !507, line: 882, baseType: !803, size: 64, offset: 9792)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !506, file: !507, line: 884, baseType: !50, size: 32, offset: 9856)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !506, file: !507, line: 885, baseType: !50, size: 32, offset: 9888)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !506, file: !507, line: 886, baseType: !50, size: 32, offset: 9920)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !506, file: !507, line: 888, baseType: !50, size: 32, offset: 9952)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !506, file: !507, line: 890, baseType: !67, size: 64, offset: 9984)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !506, file: !507, line: 893, baseType: !7, size: 32, offset: 10048)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !506, file: !507, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !506, file: !507, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !506, file: !507, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !506, file: !507, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !506, file: !507, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !506, file: !507, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !506, file: !507, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !506, file: !507, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !506, file: !507, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !506, file: !507, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !506, file: !507, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !506, file: !507, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !506, file: !507, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !506, file: !507, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !506, file: !507, line: 969, baseType: !67, size: 64, offset: 10176)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !506, file: !507, line: 971, baseType: !2461, size: 448, offset: 10240)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !20, line: 25, size: 448, elements: !2462)
!2462 = !{!2463, !2464, !2469}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2461, file: !20, line: 26, baseType: !67, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2461, file: !20, line: 27, baseType: !2465, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!1079, !2468}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, scope: !2461, file: !20, line: 28, baseType: !2470, size: 320, offset: 128)
!2470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2461, file: !20, line: 28, size: 320, elements: !2471)
!2471 = !{!2472, !2482, !2507}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2470, file: !20, line: 37, baseType: !2473, size: 320)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2470, file: !20, line: 30, size: 320, elements: !2474)
!2474 = !{!2475, !2477, !2478, !2479, !2480, !2481}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2473, file: !20, line: 31, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2473, file: !20, line: 32, baseType: !319, size: 32, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2473, file: !20, line: 33, baseType: !319, size: 32, offset: 96)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2473, file: !20, line: 34, baseType: !319, size: 32, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2473, file: !20, line: 35, baseType: !253, size: 64, offset: 192)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2473, file: !20, line: 36, baseType: !2476, size: 64, offset: 256)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2470, file: !20, line: 47, baseType: !2483, size: 192)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2470, file: !20, line: 39, size: 192, elements: !2484)
!2484 = !{!2485, !2486, !2487, !2506}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2483, file: !20, line: 40, baseType: !669, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2483, file: !20, line: 41, baseType: !19, size: 32, offset: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, scope: !2483, file: !20, line: 42, baseType: !2488, size: 64, offset: 64)
!2488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2483, file: !20, line: 42, size: 64, elements: !2489)
!2489 = !{!2490, !2498}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2488, file: !20, line: 43, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2493, line: 7, size: 128, elements: !2494)
!2493 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2494 = !{!2495, !2497}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2492, file: !2493, line: 8, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !65, line: 93, baseType: !71)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2492, file: !2493, line: 9, baseType: !71, size: 64, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2488, file: !20, line: 44, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2501, line: 7, size: 64, elements: !2502)
!2501 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2502 = !{!2503, !2505}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2500, file: !2501, line: 8, baseType: !2504, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2501, line: 5, baseType: !274)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2500, file: !2501, line: 9, baseType: !274, size: 32, offset: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2483, file: !20, line: 46, baseType: !253, size: 64, offset: 128)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2470, file: !20, line: 55, baseType: !2508, size: 256)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2470, file: !20, line: 49, size: 256, elements: !2509)
!2509 = !{!2510, !2513, !2514, !2515, !2516}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2508, file: !20, line: 50, baseType: !2511, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !20, line: 14, flags: DIFlagFwdDecl)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2508, file: !20, line: 51, baseType: !50, size: 32, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2508, file: !20, line: 52, baseType: !50, size: 32, offset: 96)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2508, file: !20, line: 53, baseType: !67, size: 64, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2508, file: !20, line: 54, baseType: !67, size: 64, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !506, file: !507, line: 973, baseType: !2518, size: 32, offset: 10688)
!2518 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !53, line: 27, baseType: !2519)
!2519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !65, line: 28, baseType: !50)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !506, file: !507, line: 974, baseType: !2518, size: 32, offset: 10720)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !506, file: !507, line: 978, baseType: !67, size: 64, offset: 10752)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !506, file: !507, line: 987, baseType: !505, size: 64, offset: 10816)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !506, file: !507, line: 990, baseType: !505, size: 64, offset: 10880)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !506, file: !507, line: 995, baseType: !125, size: 128, offset: 10944)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !506, file: !507, line: 996, baseType: !125, size: 128, offset: 11072)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !506, file: !507, line: 997, baseType: !505, size: 64, offset: 11200)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !506, file: !507, line: 1005, baseType: !125, size: 128, offset: 11264)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !506, file: !507, line: 1006, baseType: !125, size: 128, offset: 11392)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !506, file: !507, line: 1009, baseType: !882, size: 64, offset: 11520)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !506, file: !507, line: 1010, baseType: !2531, size: 512, offset: 11584)
!2531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 512, elements: !384)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !506, file: !507, line: 1011, baseType: !125, size: 128, offset: 12096)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !506, file: !507, line: 1012, baseType: !125, size: 128, offset: 12224)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !506, file: !507, line: 1014, baseType: !2535, size: 64, offset: 12352)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2537, line: 26, size: 256, elements: !2538)
!2537 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2538 = !{!2539, !2540}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2536, file: !2537, line: 27, baseType: !7, size: 32)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2536, file: !2537, line: 28, baseType: !2541, size: 192, offset: 64)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2542, line: 43, size: 192, elements: !2543)
!2542 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2543 = !{!2544, !2545}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2541, file: !2542, line: 44, baseType: !300, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2541, file: !2542, line: 45, baseType: !125, size: 128, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !506, file: !507, line: 1017, baseType: !1276, size: 64, offset: 12416)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !506, file: !507, line: 1020, baseType: !1276, size: 64, offset: 12480)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !506, file: !507, line: 1023, baseType: !48, size: 64, offset: 12544)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !506, file: !507, line: 1025, baseType: !253, size: 64, offset: 12608)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !506, file: !507, line: 1026, baseType: !253, size: 64, offset: 12672)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !506, file: !507, line: 1031, baseType: !253, size: 64, offset: 12736)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !506, file: !507, line: 1032, baseType: !2553, size: 192, offset: 12800)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !507, line: 324, size: 192, elements: !2554)
!2554 = !{!2555, !2556, !2557}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2553, file: !507, line: 326, baseType: !253, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2553, file: !507, line: 327, baseType: !253, size: 64, offset: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2553, file: !507, line: 328, baseType: !300, size: 32, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !506, file: !507, line: 1041, baseType: !67, size: 64, offset: 12992)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !506, file: !507, line: 1042, baseType: !67, size: 64, offset: 13056)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !506, file: !507, line: 1045, baseType: !253, size: 64, offset: 13120)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !506, file: !507, line: 1048, baseType: !253, size: 64, offset: 13184)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !506, file: !507, line: 1051, baseType: !67, size: 64, offset: 13248)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !506, file: !507, line: 1052, baseType: !67, size: 64, offset: 13312)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !506, file: !507, line: 1055, baseType: !2565, size: 640, offset: 13376)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2566, line: 132, size: 640, elements: !2567)
!2566 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2567 = !{!2568, !2574, !2575}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2565, file: !2566, line: 133, baseType: !2569, size: 576)
!2569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2570, size: 576, elements: !878)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2566, line: 117, size: 192, elements: !2571)
!2571 = !{!2572, !2573}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2570, file: !2566, line: 118, baseType: !253, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2570, file: !2566, line: 119, baseType: !683, size: 128, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2565, file: !2566, line: 134, baseType: !7, size: 32, offset: 576)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2565, file: !2566, line: 135, baseType: !7, size: 32, offset: 608)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !506, file: !507, line: 1058, baseType: !2577, size: 448, offset: 14016)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2566, line: 144, size: 448, elements: !2578)
!2578 = !{!2579, !2580, !2581}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2577, file: !2566, line: 145, baseType: !353, size: 128, align: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2577, file: !2566, line: 146, baseType: !846, size: 256, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2577, file: !2566, line: 147, baseType: !7, size: 32, offset: 384)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !506, file: !507, line: 1064, baseType: !211, size: 64, offset: 14464)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !506, file: !507, line: 1067, baseType: !211, size: 64, offset: 14528)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !506, file: !507, line: 1070, baseType: !211, size: 64, offset: 14592)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !506, file: !507, line: 1074, baseType: !262, size: 64, offset: 14656)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !506, file: !507, line: 1084, baseType: !2587, size: 128, offset: 14720)
!2587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 128, elements: !1605)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !506, file: !507, line: 1086, baseType: !2589, size: 64, offset: 14848)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !507, line: 55, flags: DIFlagFwdDecl)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !506, file: !507, line: 1089, baseType: !2592, size: 64, offset: 14912)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2593, line: 12, size: 64, elements: !2594)
!2593 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2594 = !{!2595}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2592, file: !2593, line: 13, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2593, line: 8, flags: DIFlagFwdDecl)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !506, file: !507, line: 1090, baseType: !2599, size: 128, offset: 14976)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2600, line: 13, size: 128, elements: !2601)
!2600 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2601 = !{!2602}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2599, file: !2600, line: 14, baseType: !125, size: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !506, file: !507, line: 1097, baseType: !2604, size: 64, offset: 15104)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !507, line: 50, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !506, file: !507, line: 1100, baseType: !2607, size: 64, offset: 15168)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !507, line: 1100, flags: DIFlagFwdDecl)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !506, file: !507, line: 1103, baseType: !2610, size: 64, offset: 15232)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !507, line: 53, flags: DIFlagFwdDecl)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !506, file: !507, line: 1107, baseType: !2613, size: 64, offset: 15296)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2615, line: 31, size: 576, elements: !2616)
!2615 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2616 = !{!2617, !2618, !2621, !2797, !2800, !2801, !2804, !2807, !2808}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2614, file: !2615, line: 32, baseType: !267, size: 32)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2614, file: !2615, line: 33, baseType: !2619, size: 64, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2615, line: 9, flags: DIFlagFwdDecl)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2614, file: !2615, line: 34, baseType: !2622, size: 64, offset: 128)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2624, line: 31, size: 8832, elements: !2625)
!2624 = !DIFile(filename: "./include/linux/ipc_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b41e274c4c0ae39d94ad49bb38518e4e")
!2625 = !{!2626, !2686, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2777, !2778, !2779, !2780, !2781, !2795, !2796}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2623, file: !2624, line: 32, baseType: !2627, size: 5184)
!2627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2628, size: 5184, elements: !878)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_ids", file: !2624, line: 18, size: 1728, elements: !2629)
!2629 = !{!2630, !2631, !2632, !2633, !2640, !2641, !2642}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2628, file: !2624, line: 19, baseType: !50, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2628, file: !2624, line: 20, baseType: !54, size: 16, offset: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !2628, file: !2624, line: 21, baseType: !289, size: 320, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ipcs_idr", scope: !2628, file: !2624, line: 22, baseType: !2634, size: 192, offset: 384)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2635, line: 19, size: 192, elements: !2636)
!2635 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!2636 = !{!2637, !2638, !2639}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2634, file: !2635, line: 20, baseType: !1165, size: 128)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2634, file: !2635, line: 21, baseType: !7, size: 32, offset: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2634, file: !2635, line: 22, baseType: !7, size: 32, offset: 160)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "max_idx", scope: !2628, file: !2624, line: 23, baseType: !50, size: 32, offset: 576)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "last_idx", scope: !2628, file: !2624, line: 24, baseType: !50, size: 32, offset: 608)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "key_ht", scope: !2628, file: !2624, line: 28, baseType: !2643, size: 1088, offset: 640)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable", file: !2644, line: 81, size: 1088, elements: !2645)
!2644 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!2645 = !{!2646, !2649, !2650, !2651, !2681, !2682, !2683, !2684, !2685}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "tbl", scope: !2643, file: !2644, line: 82, baseType: !2647, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_table", file: !2644, line: 26, flags: DIFlagFwdDecl)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !2643, file: !2644, line: 83, baseType: !7, size: 32, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "max_elems", scope: !2643, file: !2644, line: 84, baseType: !7, size: 32, offset: 96)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2643, file: !2644, line: 85, baseType: !2652, size: 320, offset: 128)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable_params", file: !2644, line: 56, size: 320, elements: !2653)
!2653 = !{!2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2668, !2670}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "nelem_hint", scope: !2652, file: !2644, line: 57, baseType: !121, size: 16)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !2652, file: !2644, line: 58, baseType: !121, size: 16, offset: 16)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "key_offset", scope: !2652, file: !2644, line: 59, baseType: !121, size: 16, offset: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "head_offset", scope: !2652, file: !2644, line: 60, baseType: !121, size: 16, offset: 48)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !2652, file: !2644, line: 61, baseType: !7, size: 32, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !2652, file: !2644, line: 62, baseType: !121, size: 16, offset: 96)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "automatic_shrinking", scope: !2652, file: !2644, line: 63, baseType: !363, size: 8, offset: 112)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "hashfn", scope: !2652, file: !2644, line: 64, baseType: !2662, size: 64, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_hashfn_t", file: !2644, line: 38, baseType: !2663)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!319, !2666, !319, !319}
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "obj_hashfn", scope: !2652, file: !2644, line: 65, baseType: !2669, size: 64, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_obj_hashfn_t", file: !2644, line: 39, baseType: !2663)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "obj_cmpfn", scope: !2652, file: !2644, line: 66, baseType: !2671, size: 64, offset: 256)
!2671 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_obj_cmpfn_t", file: !2644, line: 40, baseType: !2672)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!50, !2675, !2666}
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable_compare_arg", file: !2644, line: 33, size: 128, elements: !2677)
!2677 = !{!2678, !2680}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !2676, file: !2644, line: 34, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2676, file: !2644, line: 35, baseType: !2666, size: 64, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "rhlist", scope: !2643, file: !2644, line: 86, baseType: !363, size: 8, offset: 448)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !2643, file: !2644, line: 87, baseType: !1713, size: 256, offset: 512)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2643, file: !2644, line: 88, baseType: !846, size: 256, offset: 768)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2643, file: !2644, line: 89, baseType: !87, size: 32, offset: 1024)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "nelems", scope: !2643, file: !2644, line: 90, baseType: !77, size: 32, offset: 1056)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "sem_ctls", scope: !2623, file: !2624, line: 34, baseType: !2687, size: 128, offset: 5184)
!2687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 128, elements: !384)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "used_sems", scope: !2623, file: !2624, line: 35, baseType: !50, size: 32, offset: 5312)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "msg_ctlmax", scope: !2623, file: !2624, line: 37, baseType: !7, size: 32, offset: 5344)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "msg_ctlmnb", scope: !2623, file: !2624, line: 38, baseType: !7, size: 32, offset: 5376)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "msg_ctlmni", scope: !2623, file: !2624, line: 39, baseType: !7, size: 32, offset: 5408)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_msg_bytes", scope: !2623, file: !2624, line: 40, baseType: !424, size: 320, offset: 5440)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_msg_hdrs", scope: !2623, file: !2624, line: 41, baseType: !424, size: 320, offset: 5760)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "shm_ctlmax", scope: !2623, file: !2624, line: 43, baseType: !63, size: 64, offset: 6080)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "shm_ctlall", scope: !2623, file: !2624, line: 44, baseType: !63, size: 64, offset: 6144)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "shm_tot", scope: !2623, file: !2624, line: 45, baseType: !67, size: 64, offset: 6208)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "shm_ctlmni", scope: !2623, file: !2624, line: 46, baseType: !50, size: 32, offset: 6272)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "shm_rmid_forced", scope: !2623, file: !2624, line: 51, baseType: !50, size: 32, offset: 6304)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "ipcns_nb", scope: !2623, file: !2624, line: 53, baseType: !2700, size: 192, offset: 6336)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2701, line: 54, size: 192, elements: !2702)
!2701 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!2702 = !{!2703, !2709, !2710}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2700, file: !2701, line: 55, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2701, line: 51, baseType: !2705)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!50, !2708, !67, !48}
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2700, file: !2701, line: 56, baseType: !2708, size: 64, offset: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2700, file: !2701, line: 57, baseType: !50, size: 32, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "mq_mnt", scope: !2623, file: !2624, line: 56, baseType: !925, size: 64, offset: 6528)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "mq_queues_count", scope: !2623, file: !2624, line: 59, baseType: !7, size: 32, offset: 6592)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "mq_queues_max", scope: !2623, file: !2624, line: 62, baseType: !7, size: 32, offset: 6624)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "mq_msg_max", scope: !2623, file: !2624, line: 63, baseType: !7, size: 32, offset: 6656)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "mq_msgsize_max", scope: !2623, file: !2624, line: 64, baseType: !7, size: 32, offset: 6688)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "mq_msg_default", scope: !2623, file: !2624, line: 65, baseType: !7, size: 32, offset: 6720)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "mq_msgsize_default", scope: !2623, file: !2624, line: 66, baseType: !7, size: 32, offset: 6752)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "mq_set", scope: !2623, file: !2624, line: 68, baseType: !2719, size: 768, offset: 6784)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !40, line: 199, size: 768, elements: !2720)
!2720 = !{!2721, !2726}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !2719, file: !40, line: 200, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!50, !2725}
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2719, file: !40, line: 201, baseType: !2727, size: 704, offset: 64)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !40, line: 193, size: 704, elements: !2728)
!2728 = !{!2729, !2776}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2727, file: !40, line: 195, baseType: !2730, size: 640)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !40, line: 173, size: 640, elements: !2731)
!2731 = !{!2732, !2744, !2745, !2746, !2766, !2767, !2769, !2775}
!2732 = !DIDerivedType(tag: DW_TAG_member, scope: !2730, file: !40, line: 174, baseType: !2733, size: 192)
!2733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2730, file: !40, line: 174, size: 192, elements: !2734)
!2734 = !{!2735, !2743}
!2735 = !DIDerivedType(tag: DW_TAG_member, scope: !2733, file: !40, line: 175, baseType: !2736, size: 192)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2733, file: !40, line: 175, size: 192, elements: !2737)
!2737 = !{!2738, !2739, !2740, !2741, !2742}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !2736, file: !40, line: 176, baseType: !61, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !2736, file: !40, line: 177, baseType: !50, size: 32, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2736, file: !40, line: 178, baseType: !50, size: 32, offset: 96)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2736, file: !40, line: 179, baseType: !50, size: 32, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !2736, file: !40, line: 180, baseType: !50, size: 32, offset: 160)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2733, file: !40, line: 182, baseType: !353, size: 128, align: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !2730, file: !40, line: 184, baseType: !2535, size: 64, offset: 192)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !2730, file: !40, line: 185, baseType: !61, size: 64, offset: 256)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2730, file: !40, line: 186, baseType: !2747, size: 64, offset: 320)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !40, line: 204, size: 960, elements: !2749)
!2749 = !{!2750, !2751, !2755, !2762}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !2748, file: !40, line: 205, baseType: !2719, size: 768)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2748, file: !40, line: 206, baseType: !2752, size: 64, offset: 768)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!2725, !2747}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !2748, file: !40, line: 207, baseType: !2756, size: 64, offset: 832)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{null, !2759, !2760, !2761}
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !2748, file: !40, line: 209, baseType: !2763, size: 64, offset: 896)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!50, !2759, !61}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2730, file: !40, line: 187, baseType: !2725, size: 64, offset: 384)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2730, file: !40, line: 188, baseType: !2768, size: 64, offset: 448)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2730, file: !40, line: 189, baseType: !2770, size: 64, offset: 512)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !40, line: 157, size: 256, elements: !2772)
!2772 = !{!2773, !2774}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2771, file: !40, line: 158, baseType: !281, size: 192, align: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2771, file: !40, line: 159, baseType: !2759, size: 64, offset: 192)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2730, file: !40, line: 190, baseType: !890, size: 64, offset: 576)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2727, file: !40, line: 196, baseType: !689, size: 64, offset: 640)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysctls", scope: !2623, file: !2624, line: 69, baseType: !2759, size: 64, offset: 7552)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_set", scope: !2623, file: !2624, line: 71, baseType: !2719, size: 768, offset: 7616)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_sysctls", scope: !2623, file: !2624, line: 72, baseType: !2759, size: 64, offset: 8384)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2623, file: !2624, line: 75, baseType: !455, size: 64, offset: 8448)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2623, file: !2624, line: 76, baseType: !2782, size: 64, offset: 8512)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !160, line: 107, size: 1152, elements: !2784)
!2784 = !{!2785, !2786, !2787, !2788, !2789, !2793}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2783, file: !160, line: 108, baseType: !435, size: 128)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2783, file: !160, line: 109, baseType: !455, size: 64, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2783, file: !160, line: 110, baseType: !226, size: 32, offset: 192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2783, file: !160, line: 111, baseType: !77, size: 32, offset: 224)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !2783, file: !160, line: 112, baseType: !2790, size: 640, offset: 256)
!2790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 640, elements: !2791)
!2791 = !{!2792}
!2792 = !DISubrange(count: 10)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !2783, file: !160, line: 113, baseType: !2794, size: 256, offset: 896)
!2794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 256, elements: !384)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_llist", scope: !2623, file: !2624, line: 78, baseType: !528, size: 64, offset: 8576)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2623, file: !2624, line: 80, baseType: !487, size: 192, offset: 8640)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2614, file: !2615, line: 35, baseType: !2798, size: 64, offset: 192)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2615, line: 8, flags: DIFlagFwdDecl)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2614, file: !2615, line: 36, baseType: !902, size: 64, offset: 256)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2614, file: !2615, line: 37, baseType: !2802, size: 64, offset: 320)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2615, line: 37, flags: DIFlagFwdDecl)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2614, file: !2615, line: 38, baseType: !2805, size: 64, offset: 384)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2615, line: 38, flags: DIFlagFwdDecl)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2614, file: !2615, line: 39, baseType: !2805, size: 64, offset: 448)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2614, file: !2615, line: 40, baseType: !2809, size: 64, offset: 512)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2615, line: 12, flags: DIFlagFwdDecl)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !506, file: !507, line: 1110, baseType: !2812, size: 64, offset: 15360)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2814, line: 93, size: 8768, elements: !2815)
!2814 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2815 = !{!2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2866, !2875, !2876, !2878, !2879, !2880, !2883, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2921, !2922, !2929, !2939, !2942, !2943, !2946, !2947, !2948, !2949, !2950, !2951}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2813, file: !2814, line: 94, baseType: !267, size: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2813, file: !2814, line: 95, baseType: !77, size: 32, offset: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2813, file: !2814, line: 96, baseType: !50, size: 32, offset: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2813, file: !2814, line: 97, baseType: !50, size: 32, offset: 96)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2813, file: !2814, line: 98, baseType: !125, size: 128, offset: 128)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2813, file: !2814, line: 100, baseType: !82, size: 192, offset: 256)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2813, file: !2814, line: 103, baseType: !505, size: 64, offset: 448)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2813, file: !2814, line: 106, baseType: !2824, size: 192, offset: 512)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2825, line: 32, size: 192, elements: !2826)
!2825 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2826 = !{!2827, !2828}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2824, file: !2825, line: 33, baseType: !125, size: 128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2824, file: !2825, line: 34, baseType: !2829, size: 64, offset: 128)
!2829 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2830, line: 25, baseType: !2831)
!2830 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2830, line: 23, size: 64, elements: !2832)
!2832 = !{!2833}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2831, file: !2830, line: 24, baseType: !754, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2813, file: !2814, line: 109, baseType: !890, size: 64, offset: 704)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2813, file: !2814, line: 112, baseType: !50, size: 32, offset: 768)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2813, file: !2814, line: 114, baseType: !50, size: 32, offset: 800)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2813, file: !2814, line: 115, baseType: !505, size: 64, offset: 832)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2813, file: !2814, line: 118, baseType: !50, size: 32, offset: 896)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2813, file: !2814, line: 119, baseType: !7, size: 32, offset: 928)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2813, file: !2814, line: 121, baseType: !2841, size: 64, offset: 960)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2814, line: 80, size: 448, elements: !2843)
!2843 = !{!2844, !2845, !2851}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2842, file: !2814, line: 81, baseType: !77, size: 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2842, file: !2814, line: 82, baseType: !2846, size: 128, offset: 64)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2814, line: 75, size: 128, elements: !2847)
!2847 = !{!2848, !2849}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2846, file: !2814, line: 76, baseType: !505, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2846, file: !2814, line: 77, baseType: !2850, size: 64, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2842, file: !2814, line: 83, baseType: !2536, size: 256, offset: 192)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2813, file: !2814, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2813, file: !2814, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2813, file: !2814, line: 138, baseType: !7, size: 32, offset: 1056)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2813, file: !2814, line: 139, baseType: !125, size: 128, offset: 1088)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2813, file: !2814, line: 142, baseType: !622, size: 512, offset: 1216)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2813, file: !2814, line: 143, baseType: !630, size: 64, offset: 1728)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2813, file: !2814, line: 150, baseType: !2859, size: 256, offset: 1792)
!2859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2860, size: 256, elements: !2864)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2814, line: 38, size: 128, elements: !2861)
!2861 = !{!2862, !2863}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2860, file: !2814, line: 39, baseType: !253, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2860, file: !2814, line: 40, baseType: !253, size: 64, offset: 64)
!2864 = !{!2865}
!2865 = !DISubrange(count: 2)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2813, file: !2814, line: 156, baseType: !2867, size: 192, offset: 2048)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2814, line: 66, size: 192, elements: !2868)
!2868 = !{!2869}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2867, file: !2814, line: 67, baseType: !2870, size: 192)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2814, line: 47, size: 192, elements: !2871)
!2871 = !{!2872, !2873, !2874}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2870, file: !2814, line: 48, baseType: !219, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2870, file: !2814, line: 49, baseType: !219, size: 64, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2870, file: !2814, line: 50, baseType: !219, size: 64, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2813, file: !2814, line: 160, baseType: !2565, size: 640, offset: 2240)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2813, file: !2814, line: 163, baseType: !2877, size: 256, offset: 2880)
!2877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !882, size: 256, elements: !384)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2813, file: !2814, line: 169, baseType: !882, size: 64, offset: 3136)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2813, file: !2814, line: 172, baseType: !50, size: 32, offset: 3200)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2813, file: !2814, line: 174, baseType: !2881, size: 64, offset: 3264)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2814, line: 174, flags: DIFlagFwdDecl)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2813, file: !2814, line: 185, baseType: !2884, size: 64, offset: 3328)
!2884 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !673, line: 860, baseType: !2885)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !673, line: 853, size: 64, elements: !2886)
!2886 = !{!2887, !2888}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2885, file: !673, line: 858, baseType: !936, size: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2885, file: !673, line: 859, baseType: !87, size: 32, offset: 32)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2813, file: !2814, line: 186, baseType: !253, size: 64, offset: 3392)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2813, file: !2814, line: 186, baseType: !253, size: 64, offset: 3456)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2813, file: !2814, line: 186, baseType: !253, size: 64, offset: 3520)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2813, file: !2814, line: 186, baseType: !253, size: 64, offset: 3584)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2813, file: !2814, line: 187, baseType: !253, size: 64, offset: 3648)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2813, file: !2814, line: 188, baseType: !253, size: 64, offset: 3712)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2813, file: !2814, line: 189, baseType: !2553, size: 192, offset: 3776)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2813, file: !2814, line: 190, baseType: !67, size: 64, offset: 3968)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2813, file: !2814, line: 190, baseType: !67, size: 64, offset: 4032)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2813, file: !2814, line: 190, baseType: !67, size: 64, offset: 4096)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2813, file: !2814, line: 190, baseType: !67, size: 64, offset: 4160)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2813, file: !2814, line: 191, baseType: !67, size: 64, offset: 4224)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2813, file: !2814, line: 191, baseType: !67, size: 64, offset: 4288)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2813, file: !2814, line: 191, baseType: !67, size: 64, offset: 4352)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2813, file: !2814, line: 191, baseType: !67, size: 64, offset: 4416)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2813, file: !2814, line: 192, baseType: !67, size: 64, offset: 4480)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2813, file: !2814, line: 192, baseType: !67, size: 64, offset: 4544)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2813, file: !2814, line: 192, baseType: !67, size: 64, offset: 4608)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2813, file: !2814, line: 192, baseType: !67, size: 64, offset: 4672)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2813, file: !2814, line: 193, baseType: !67, size: 64, offset: 4736)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2813, file: !2814, line: 193, baseType: !67, size: 64, offset: 4800)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2813, file: !2814, line: 194, baseType: !2911, size: 448, offset: 4864)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2912, line: 12, size: 448, elements: !2913)
!2912 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2913 = !{!2914, !2915, !2916, !2917, !2918, !2919, !2920}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2911, file: !2912, line: 15, baseType: !253, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2911, file: !2912, line: 17, baseType: !253, size: 64, offset: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2911, file: !2912, line: 19, baseType: !253, size: 64, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2911, file: !2912, line: 21, baseType: !253, size: 64, offset: 192)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2911, file: !2912, line: 29, baseType: !253, size: 64, offset: 256)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2911, file: !2912, line: 35, baseType: !253, size: 64, offset: 320)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2911, file: !2912, line: 44, baseType: !253, size: 64, offset: 384)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2813, file: !2814, line: 202, baseType: !255, size: 64, offset: 5312)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2813, file: !2814, line: 213, baseType: !2923, size: 2048, offset: 5376)
!2923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2924, size: 2048, elements: !1605)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2925, line: 43, size: 128, elements: !2926)
!2925 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2926 = !{!2927, !2928}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2924, file: !2925, line: 44, baseType: !66, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2924, file: !2925, line: 45, baseType: !66, size: 64, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2813, file: !2814, line: 216, baseType: !2930, size: 448, offset: 7424)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2814, line: 30, size: 448, elements: !2931)
!2931 = !{!2932, !2933, !2934, !2935, !2936, !2937, !2938}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2930, file: !2814, line: 31, baseType: !50, size: 32)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2930, file: !2814, line: 32, baseType: !1079, size: 64, offset: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2930, file: !2814, line: 33, baseType: !67, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2930, file: !2814, line: 34, baseType: !253, size: 64, offset: 192)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2930, file: !2814, line: 34, baseType: !253, size: 64, offset: 256)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2930, file: !2814, line: 35, baseType: !67, size: 64, offset: 320)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2930, file: !2814, line: 35, baseType: !67, size: 64, offset: 384)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2813, file: !2814, line: 219, baseType: !2940, size: 64, offset: 7872)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2814, line: 219, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2813, file: !2814, line: 222, baseType: !7, size: 32, offset: 7936)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2813, file: !2814, line: 223, baseType: !2944, size: 64, offset: 8000)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2814, line: 223, flags: DIFlagFwdDecl)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2813, file: !2814, line: 230, baseType: !363, size: 8, offset: 8064)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2813, file: !2814, line: 231, baseType: !324, size: 16, offset: 8080)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2813, file: !2814, line: 232, baseType: !324, size: 16, offset: 8096)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2813, file: !2814, line: 234, baseType: !803, size: 64, offset: 8128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2813, file: !2814, line: 237, baseType: !846, size: 256, offset: 8192)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2813, file: !2814, line: 243, baseType: !289, size: 320, offset: 8448)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !506, file: !507, line: 1111, baseType: !2953, size: 64, offset: 15424)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2814, line: 20, size: 16640, elements: !2955)
!2955 = !{!2956, !2957, !2958, !2959}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2954, file: !2814, line: 21, baseType: !87, size: 32)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2954, file: !2814, line: 22, baseType: !267, size: 32, offset: 32)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2954, file: !2814, line: 23, baseType: !82, size: 192, offset: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2954, file: !2814, line: 24, baseType: !2960, size: 16384, offset: 256)
!2960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2961, size: 16384, elements: !2981)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2825, line: 51, size: 256, elements: !2962)
!2962 = !{!2963}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2961, file: !2825, line: 52, baseType: !2964, size: 256)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2825, line: 37, size: 256, elements: !2965)
!2965 = !{!2966, !2973, !2974, !2980}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2964, file: !2825, line: 39, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2968, line: 83, baseType: !2969)
!2968 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2968, line: 82, baseType: !2971)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{null, !50}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2964, file: !2825, line: 40, baseType: !67, size: 64, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2964, file: !2825, line: 46, baseType: !2975, size: 64, offset: 128)
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2968, line: 86, baseType: !2976)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2968, line: 85, baseType: !2978)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{null}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2964, file: !2825, line: 48, baseType: !2829, size: 64, offset: 192)
!2981 = !{!2982}
!2982 = !DISubrange(count: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !506, file: !507, line: 1112, baseType: !2829, size: 64, offset: 15488)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !506, file: !507, line: 1113, baseType: !2829, size: 64, offset: 15552)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !506, file: !507, line: 1115, baseType: !2829, size: 64, offset: 15616)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !506, file: !507, line: 1116, baseType: !2824, size: 192, offset: 15680)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !506, file: !507, line: 1117, baseType: !67, size: 64, offset: 15872)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !506, file: !507, line: 1118, baseType: !63, size: 64, offset: 15936)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !506, file: !507, line: 1119, baseType: !7, size: 32, offset: 16000)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !506, file: !507, line: 1121, baseType: !356, size: 64, offset: 16064)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !506, file: !507, line: 1125, baseType: !2992, size: 64, offset: 16128)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !507, line: 43, flags: DIFlagFwdDecl)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !506, file: !507, line: 1127, baseType: !226, size: 32, offset: 16192)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !506, file: !507, line: 1128, baseType: !7, size: 32, offset: 16224)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !506, file: !507, line: 1130, baseType: !2997, size: 128, offset: 16256)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2998, line: 37, size: 128, elements: !2999)
!2998 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2999 = !{!3000, !3001, !3002}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2997, file: !2998, line: 38, baseType: !50, size: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2997, file: !2998, line: 39, baseType: !77, size: 32, offset: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2997, file: !2998, line: 40, baseType: !3003, size: 64, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2998, line: 24, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !506, file: !507, line: 1131, baseType: !3006, size: 256, offset: 16384)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3007, line: 12, size: 256, elements: !3008)
!3007 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3008 = !{!3009, !3010, !3011, !3012}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3006, file: !3007, line: 13, baseType: !374, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3006, file: !3007, line: 14, baseType: !67, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3006, file: !3007, line: 15, baseType: !67, size: 64, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3006, file: !3007, line: 16, baseType: !363, size: 8, offset: 192)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !506, file: !507, line: 1134, baseType: !253, size: 64, offset: 16640)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !506, file: !507, line: 1135, baseType: !253, size: 64, offset: 16704)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !506, file: !507, line: 1138, baseType: !87, size: 32, offset: 16768)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !506, file: !507, line: 1141, baseType: !300, size: 32, offset: 16800)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !506, file: !507, line: 1143, baseType: !3018, size: 64, offset: 16832)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !507, line: 735, size: 64, elements: !3019)
!3019 = !{!3020}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3018, file: !507, line: 736, baseType: !3021, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !506, file: !507, line: 1147, baseType: !686, size: 128, offset: 16896)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !506, file: !507, line: 1149, baseType: !505, size: 64, offset: 17024)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !506, file: !507, line: 1151, baseType: !3025, size: 64, offset: 17088)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !507, line: 1151, flags: DIFlagFwdDecl)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !506, file: !507, line: 1188, baseType: !48, size: 64, offset: 17152)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !506, file: !507, line: 1191, baseType: !3029, size: 64, offset: 17216)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !507, line: 44, flags: DIFlagFwdDecl)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !506, file: !507, line: 1194, baseType: !3032, size: 64, offset: 17280)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !507, line: 45, flags: DIFlagFwdDecl)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !506, file: !507, line: 1197, baseType: !3035, size: 64, offset: 17344)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !507, line: 61, flags: DIFlagFwdDecl)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !506, file: !507, line: 1199, baseType: !3038, size: 64, offset: 17408)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3040, line: 99, size: 128, elements: !3041)
!3040 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3041 = !{!3042, !3043, !3044}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3039, file: !3040, line: 100, baseType: !217, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3039, file: !3040, line: 101, baseType: !77, size: 32, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3039, file: !3040, line: 103, baseType: !54, size: 16, offset: 96)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !506, file: !507, line: 1202, baseType: !3046, size: 64, offset: 17472)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !507, line: 48, flags: DIFlagFwdDecl)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !506, file: !507, line: 1205, baseType: !67, size: 64, offset: 17536)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !506, file: !507, line: 1206, baseType: !3050, size: 64, offset: 17600)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2825, line: 14, baseType: !3052)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2825, line: 12, size: 384, elements: !3053)
!3053 = !{!3054}
!3054 = !DIDerivedType(tag: DW_TAG_member, scope: !3052, file: !2825, line: 13, baseType: !3055, size: 384)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3052, file: !2825, line: 13, size: 384, elements: !3056)
!3056 = !{!3057, !3058, !3059, !3060}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3055, file: !2825, line: 13, baseType: !50, size: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3055, file: !2825, line: 13, baseType: !50, size: 32, offset: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3055, file: !2825, line: 13, baseType: !50, size: 32, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3055, file: !2825, line: 13, baseType: !3061, size: 256, offset: 128)
!3061 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3062, line: 37, size: 256, elements: !3063)
!3062 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3063 = !{!3064, !3069, !3082, !3088, !3097, !3124, !3129}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3061, file: !3062, line: 42, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3061, file: !3062, line: 39, size: 64, elements: !3066)
!3066 = !{!3067, !3068}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3065, file: !3062, line: 40, baseType: !2519, size: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3065, file: !3062, line: 41, baseType: !232, size: 32, offset: 32)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3061, file: !3062, line: 50, baseType: !3070, size: 192)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3061, file: !3062, line: 45, size: 192, elements: !3071)
!3071 = !{!3072, !3074, !3075, !3081}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3070, file: !3062, line: 46, baseType: !3073, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !65, line: 95, baseType: !50)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3070, file: !3062, line: 47, baseType: !50, size: 32, offset: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3070, file: !3062, line: 48, baseType: !3076, size: 64, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3062, line: 11, baseType: !3077)
!3077 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3062, line: 8, size: 64, elements: !3078)
!3078 = !{!3079, !3080}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3077, file: !3062, line: 9, baseType: !50, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3077, file: !3062, line: 10, baseType: !48, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3070, file: !3062, line: 49, baseType: !50, size: 32, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3061, file: !3062, line: 57, baseType: !3083, size: 128)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3061, file: !3062, line: 53, size: 128, elements: !3084)
!3084 = !{!3085, !3086, !3087}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3083, file: !3062, line: 54, baseType: !2519, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3083, file: !3062, line: 55, baseType: !232, size: 32, offset: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3083, file: !3062, line: 56, baseType: !3076, size: 64, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3061, file: !3062, line: 66, baseType: !3089, size: 256)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3061, file: !3062, line: 60, size: 256, elements: !3090)
!3090 = !{!3091, !3092, !3093, !3094, !3096}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3089, file: !3062, line: 61, baseType: !2519, size: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3089, file: !3062, line: 62, baseType: !232, size: 32, offset: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3089, file: !3062, line: 63, baseType: !50, size: 32, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3089, file: !3062, line: 64, baseType: !3095, size: 64, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !65, line: 94, baseType: !1120)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3089, file: !3062, line: 65, baseType: !3095, size: 64, offset: 192)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3061, file: !3062, line: 105, baseType: !3098, size: 256)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3061, file: !3062, line: 69, size: 256, elements: !3099)
!3099 = !{!3100, !3101}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3098, file: !3062, line: 70, baseType: !48, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, scope: !3098, file: !3062, line: 79, baseType: !3102, size: 192, offset: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3098, file: !3062, line: 79, size: 192, elements: !3103)
!3103 = !{!3104, !3105, !3106, !3113, !3118}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3102, file: !3062, line: 81, baseType: !50, size: 32)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3102, file: !3062, line: 86, baseType: !324, size: 16)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3102, file: !3062, line: 92, baseType: !3107, size: 192)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3102, file: !3062, line: 88, size: 192, elements: !3108)
!3108 = !{!3109, !3111, !3112}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3107, file: !3062, line: 89, baseType: !3110, size: 64)
!3110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !665)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3107, file: !3062, line: 90, baseType: !48, size: 64, offset: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3107, file: !3062, line: 91, baseType: !48, size: 64, offset: 128)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3102, file: !3062, line: 97, baseType: !3114, size: 96)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3102, file: !3062, line: 94, size: 96, elements: !3115)
!3115 = !{!3116, !3117}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3114, file: !3062, line: 95, baseType: !3110, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3114, file: !3062, line: 96, baseType: !320, size: 32, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3102, file: !3062, line: 103, baseType: !3119, size: 128)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3102, file: !3062, line: 99, size: 128, elements: !3120)
!3120 = !{!3121, !3122, !3123}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3119, file: !3062, line: 100, baseType: !67, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3119, file: !3062, line: 101, baseType: !320, size: 32, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3119, file: !3062, line: 102, baseType: !320, size: 32, offset: 96)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3061, file: !3062, line: 111, baseType: !3125, size: 128)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3061, file: !3062, line: 108, size: 128, elements: !3126)
!3126 = !{!3127, !3128}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3125, file: !3062, line: 109, baseType: !1079, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3125, file: !3062, line: 110, baseType: !50, size: 32, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3061, file: !3062, line: 118, baseType: !3130, size: 128)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3061, file: !3062, line: 114, size: 128, elements: !3131)
!3131 = !{!3132, !3133, !3134}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3130, file: !3062, line: 115, baseType: !48, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3130, file: !3062, line: 116, baseType: !50, size: 32, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3130, file: !3062, line: 117, baseType: !7, size: 32, offset: 96)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !506, file: !507, line: 1208, baseType: !2911, size: 448, offset: 17664)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !506, file: !507, line: 1215, baseType: !253, size: 64, offset: 18112)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !506, file: !507, line: 1217, baseType: !253, size: 64, offset: 18176)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !506, file: !507, line: 1219, baseType: !253, size: 64, offset: 18240)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !506, file: !507, line: 1223, baseType: !3140, size: 64, offset: 18304)
!3140 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3141, line: 99, baseType: !3142)
!3141 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3141, line: 99, size: 64, elements: !3143)
!3143 = !{!3144}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3142, file: !3141, line: 99, baseType: !754, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !506, file: !507, line: 1225, baseType: !936, size: 32, offset: 18368)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !506, file: !507, line: 1226, baseType: !50, size: 32, offset: 18400)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !506, file: !507, line: 1227, baseType: !50, size: 32, offset: 18432)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !506, file: !507, line: 1231, baseType: !3149, size: 64, offset: 18496)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !507, line: 1231, flags: DIFlagFwdDecl)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !506, file: !507, line: 1233, baseType: !125, size: 128, offset: 18560)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !506, file: !507, line: 1240, baseType: !3153, size: 64, offset: 18688)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !507, line: 62, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !506, file: !507, line: 1242, baseType: !3156, size: 64, offset: 18752)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3158, line: 392, size: 96, elements: !3159)
!3158 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3159 = !{!3160, !3166, !3168}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3157, file: !3158, line: 393, baseType: !3161, size: 32)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3158, line: 388, size: 32, elements: !3162)
!3162 = !{!3163}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3161, file: !3158, line: 389, baseType: !3164, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !3165, line: 46, baseType: !319)
!3165 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3157, file: !3158, line: 394, baseType: !3167, size: 32, offset: 32)
!3167 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !3165, line: 42, baseType: !274)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3157, file: !3158, line: 395, baseType: !3164, size: 32, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !506, file: !507, line: 1244, baseType: !125, size: 128, offset: 18816)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !506, file: !507, line: 1245, baseType: !3171, size: 64, offset: 18944)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !507, line: 51, flags: DIFlagFwdDecl)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !506, file: !507, line: 1246, baseType: !846, size: 256, offset: 19008)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !506, file: !507, line: 1247, baseType: !7, size: 32, offset: 19264)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !506, file: !507, line: 1250, baseType: !3176, size: 64, offset: 19328)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !507, line: 57, flags: DIFlagFwdDecl)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !506, file: !507, line: 1251, baseType: !846, size: 256, offset: 19392)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !506, file: !507, line: 1252, baseType: !125, size: 128, offset: 19648)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !506, file: !507, line: 1259, baseType: !2190, size: 64, offset: 19776)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !506, file: !507, line: 1260, baseType: !324, size: 16, offset: 19840)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !506, file: !507, line: 1261, baseType: !324, size: 16, offset: 19856)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !506, file: !507, line: 1314, baseType: !3184, size: 64, offset: 19904)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3186, line: 62, size: 256, align: 256, elements: !3187)
!3186 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3187 = !{!3188, !3189, !3190, !3191, !3192, !3193, !3194}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3185, file: !3186, line: 75, baseType: !320, size: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3185, file: !3186, line: 90, baseType: !320, size: 32, offset: 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3185, file: !3186, line: 112, baseType: !254, size: 64, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3185, file: !3186, line: 132, baseType: !320, size: 32, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3185, file: !3186, line: 140, baseType: !320, size: 32, offset: 160)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3185, file: !3186, line: 149, baseType: !320, size: 32, offset: 192)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3185, file: !3186, line: 154, baseType: !3195, offset: 224)
!3195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, elements: !904)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !506, file: !507, line: 1315, baseType: !319, size: 32, offset: 19968)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !506, file: !507, line: 1316, baseType: !319, size: 32, offset: 20000)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !506, file: !507, line: 1321, baseType: !67, size: 64, offset: 20032)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !506, file: !507, line: 1325, baseType: !50, size: 32, offset: 20096)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !506, file: !507, line: 1326, baseType: !50, size: 32, offset: 20128)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !506, file: !507, line: 1327, baseType: !50, size: 32, offset: 20160)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !506, file: !507, line: 1328, baseType: !50, size: 32, offset: 20192)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !506, file: !507, line: 1329, baseType: !353, size: 128, align: 64, offset: 20224)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !506, file: !507, line: 1332, baseType: !3205, size: 128, offset: 20352)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3206, line: 51, size: 128, elements: !3207)
!3206 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3207 = !{!3208, !3213, !3214}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3205, file: !3206, line: 60, baseType: !3209, size: 64)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3210, line: 7, size: 64, elements: !3211)
!3210 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3211 = !{!3212}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3209, file: !3210, line: 12, baseType: !751, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3205, file: !3206, line: 63, baseType: !363, size: 8, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3205, file: !3206, line: 70, baseType: !363, size: 8, offset: 72)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !506, file: !507, line: 1335, baseType: !2229, size: 64, offset: 20480)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !506, file: !507, line: 1337, baseType: !3217, size: 128, offset: 20544)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3206, line: 39, size: 128, elements: !3218)
!3218 = !{!3219, !3220, !3221}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3217, file: !3206, line: 40, baseType: !1750, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3217, file: !3206, line: 42, baseType: !320, size: 32, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3217, file: !3206, line: 43, baseType: !320, size: 32, offset: 96)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !506, file: !507, line: 1340, baseType: !3223, size: 64, offset: 20672)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !507, line: 69, flags: DIFlagFwdDecl)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !506, file: !507, line: 1351, baseType: !50, size: 32, offset: 20736)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !506, file: !507, line: 1352, baseType: !50, size: 32, offset: 20768)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !506, file: !507, line: 1354, baseType: !67, size: 64, offset: 20800)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !506, file: !507, line: 1364, baseType: !253, size: 64, offset: 20864)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !506, file: !507, line: 1365, baseType: !253, size: 64, offset: 20928)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !506, file: !507, line: 1412, baseType: !67, size: 64, offset: 20992)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !506, file: !507, line: 1453, baseType: !3232, size: 64, offset: 21056)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !507, line: 1453, flags: DIFlagFwdDecl)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !506, file: !507, line: 1457, baseType: !3235, size: 64, offset: 21120)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !33, line: 61, size: 576, elements: !3237)
!3237 = !{!3238, !3239, !3258, !3261, !3262, !3295, !3305}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3236, file: !33, line: 62, baseType: !32, size: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, scope: !3236, file: !33, line: 64, baseType: !3240, size: 192, offset: 64)
!3240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3236, file: !33, line: 64, size: 192, elements: !3241)
!3241 = !{!3242, !3253}
!3242 = !DIDerivedType(tag: DW_TAG_member, scope: !3240, file: !33, line: 65, baseType: !3243, size: 192)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3240, file: !33, line: 65, size: 192, elements: !3244)
!3244 = !{!3245, !3252}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3243, file: !33, line: 66, baseType: !3246, size: 128)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3247, line: 50, size: 128, elements: !3248)
!3247 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3248 = !{!3249, !3250, !3251}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3246, file: !3247, line: 52, baseType: !67, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3246, file: !3247, line: 54, baseType: !7, size: 32, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3246, file: !3247, line: 55, baseType: !7, size: 32, offset: 96)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3243, file: !33, line: 67, baseType: !67, size: 64, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_member, scope: !3240, file: !33, line: 70, baseType: !3254, size: 192)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3240, file: !33, line: 70, size: 192, elements: !3255)
!3255 = !{!3256, !3257}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3254, file: !33, line: 71, baseType: !353, size: 128, align: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3254, file: !33, line: 72, baseType: !67, size: 64, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3236, file: !33, line: 76, baseType: !3259, size: 64, offset: 256)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !33, line: 76, flags: DIFlagFwdDecl)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3236, file: !33, line: 77, baseType: !67, size: 64, offset: 320)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3236, file: !33, line: 79, baseType: !3263, size: 64, offset: 384)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3247, line: 25, size: 256, elements: !3265)
!3265 = !{!3266, !3272, !3276}
!3266 = !DIDerivedType(tag: DW_TAG_member, scope: !3264, file: !3247, line: 26, baseType: !3267, size: 128)
!3267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3264, file: !3247, line: 26, size: 128, elements: !3268)
!3268 = !{!3269, !3271}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3267, file: !3247, line: 27, baseType: !3270, size: 128)
!3270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 128, elements: !1605)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3267, file: !3247, line: 28, baseType: !3270, size: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3264, file: !3247, line: 31, baseType: !3273, size: 64, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3275)
!3275 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3247, line: 23, flags: DIFlagFwdDecl)
!3276 = !DIDerivedType(tag: DW_TAG_member, scope: !3264, file: !3247, line: 33, baseType: !3277, size: 64, offset: 192)
!3277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3264, file: !3247, line: 33, size: 64, elements: !3278)
!3278 = !{!3279, !3285, !3290}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3277, file: !3247, line: 38, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3277, file: !3247, line: 34, size: 64, elements: !3281)
!3281 = !{!3282, !3283, !3284}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3280, file: !3247, line: 35, baseType: !274, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3280, file: !3247, line: 36, baseType: !111, size: 8, offset: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3280, file: !3247, line: 37, baseType: !111, size: 8, offset: 40)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3277, file: !3247, line: 42, baseType: !3286, size: 16)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3277, file: !3247, line: 39, size: 16, elements: !3287)
!3287 = !{!3288, !3289}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3286, file: !3247, line: 40, baseType: !111, size: 8)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3286, file: !3247, line: 41, baseType: !111, size: 8, offset: 8)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3277, file: !3247, line: 46, baseType: !3291, size: 16)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3277, file: !3247, line: 43, size: 16, elements: !3292)
!3292 = !{!3293, !3294}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3291, file: !3247, line: 44, baseType: !111, size: 8)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3291, file: !3247, line: 45, baseType: !111, size: 8, offset: 8)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3236, file: !33, line: 81, baseType: !3296, size: 64, offset: 448)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !33, line: 85, size: 384, elements: !3298)
!3298 = !{!3299, !3300, !3301, !3302, !3303, !3304}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3297, file: !33, line: 86, baseType: !3259, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3297, file: !33, line: 87, baseType: !67, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3297, file: !33, line: 88, baseType: !67, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3297, file: !33, line: 89, baseType: !67, size: 64, offset: 192)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3297, file: !33, line: 90, baseType: !363, size: 8, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3297, file: !33, line: 92, baseType: !3296, size: 64, offset: 320)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3236, file: !33, line: 82, baseType: !7, size: 32, offset: 512)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !506, file: !507, line: 1463, baseType: !3307, offset: 21184)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !507, line: 739, elements: !825)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !506, file: !507, line: 1470, baseType: !353, size: 128, align: 64, offset: 21184)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !506, file: !507, line: 1471, baseType: !267, size: 32, offset: 21312)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !506, file: !507, line: 1472, baseType: !50, size: 32, offset: 21344)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !506, file: !507, line: 1474, baseType: !505, size: 64, offset: 21376)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !506, file: !507, line: 1475, baseType: !3313, size: 320, offset: 21440)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3314, line: 11, size: 320, elements: !3315)
!3314 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3315 = !{!3316, !3317, !3318, !3323}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3313, file: !3314, line: 16, baseType: !435, size: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3313, file: !3314, line: 17, baseType: !67, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3313, file: !3314, line: 18, baseType: !3319, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{null, !3322}
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3313, file: !3314, line: 19, baseType: !319, size: 32, offset: 256)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !506, file: !507, line: 1478, baseType: !3325, size: 64, offset: 21760)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !507, line: 1478, flags: DIFlagFwdDecl)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !506, file: !507, line: 1482, baseType: !267, size: 32, offset: 21824)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !506, file: !507, line: 1489, baseType: !48, size: 64, offset: 21888)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !506, file: !507, line: 1504, baseType: !48, size: 64, offset: 21952)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !506, file: !507, line: 1505, baseType: !254, size: 64, offset: 22016)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !506, file: !507, line: 1506, baseType: !253, size: 64, offset: 22080)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !506, file: !507, line: 1507, baseType: !254, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !506, file: !507, line: 1508, baseType: !254, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !506, file: !507, line: 1509, baseType: !254, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !506, file: !507, line: 1510, baseType: !353, size: 128, align: 64, offset: 22208)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !506, file: !507, line: 1511, baseType: !50, size: 32, offset: 22336)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !506, file: !507, line: 1515, baseType: !3338, size: 64, offset: 22400)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !529, line: 56, size: 64, elements: !3339)
!3339 = !{!3340}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3338, file: !529, line: 57, baseType: !532, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !506, file: !507, line: 1518, baseType: !3338, size: 64, offset: 22464)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !506, file: !507, line: 1528, baseType: !353, size: 128, align: 64, offset: 22528)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !506, file: !507, line: 1552, baseType: !3344, size: 35328, offset: 23040)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3345, line: 430, size: 35328, elements: !3346)
!3345 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3346 = !{!3347, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3376, !3377, !3378, !3379, !3380, !3381, !3384, !3385, !3386, !3387}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3344, file: !3345, line: 432, baseType: !3348, size: 192)
!3348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3349, size: 192, elements: !878)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3350, line: 16, size: 64, elements: !3351)
!3350 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3351 = !{!3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3349, file: !3350, line: 17, baseType: !121, size: 16)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3349, file: !3350, line: 18, baseType: !121, size: 16, offset: 16)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3349, file: !3350, line: 19, baseType: !121, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3349, file: !3350, line: 19, baseType: !121, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3349, file: !3350, line: 19, baseType: !121, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3349, file: !3350, line: 19, baseType: !121, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3349, file: !3350, line: 19, baseType: !121, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3349, file: !3350, line: 20, baseType: !121, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3349, file: !3350, line: 20, baseType: !121, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3349, file: !3350, line: 20, baseType: !121, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3349, file: !3350, line: 20, baseType: !121, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3349, file: !3350, line: 20, baseType: !121, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3349, file: !3350, line: 20, baseType: !121, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3344, file: !3345, line: 436, baseType: !67, size: 64, offset: 192)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3344, file: !3345, line: 440, baseType: !54, size: 16, offset: 256)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3344, file: !3345, line: 441, baseType: !54, size: 16, offset: 272)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3344, file: !3345, line: 442, baseType: !54, size: 16, offset: 288)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3344, file: !3345, line: 443, baseType: !54, size: 16, offset: 304)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3344, file: !3345, line: 447, baseType: !67, size: 64, offset: 320)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3344, file: !3345, line: 448, baseType: !67, size: 64, offset: 384)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3344, file: !3345, line: 459, baseType: !3373, size: 256, offset: 448)
!3373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3374, size: 256, elements: !384)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3345, line: 428, flags: DIFlagFwdDecl)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3344, file: !3345, line: 461, baseType: !67, size: 64, offset: 704)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3344, file: !3345, line: 463, baseType: !67, size: 64, offset: 768)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3344, file: !3345, line: 465, baseType: !67, size: 64, offset: 832)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3344, file: !3345, line: 466, baseType: !67, size: 64, offset: 896)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3344, file: !3345, line: 467, baseType: !67, size: 64, offset: 960)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3344, file: !3345, line: 473, baseType: !3382, size: 64, offset: 1024)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3345, line: 10, flags: DIFlagFwdDecl)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3344, file: !3345, line: 480, baseType: !67, size: 64, offset: 1088)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3344, file: !3345, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3344, file: !3345, line: 491, baseType: !319, size: 32, offset: 1184)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3344, file: !3345, line: 501, baseType: !3388, size: 33792, offset: 1536)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3389, line: 448, size: 33792, elements: !3390)
!3389 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3390 = !{!3391, !3392, !3393, !3555, !3556, !3562, !3563}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3388, file: !3389, line: 461, baseType: !7, size: 32)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3388, file: !3389, line: 468, baseType: !67, size: 64, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3388, file: !3389, line: 476, baseType: !3394, size: 64, offset: 128)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3389, line: 356, size: 33280, align: 512, elements: !3396)
!3396 = !{!3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3395, file: !3389, line: 358, baseType: !7, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3395, file: !3389, line: 361, baseType: !7, size: 32, offset: 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3395, file: !3389, line: 364, baseType: !253, size: 64, offset: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3395, file: !3389, line: 367, baseType: !253, size: 64, offset: 128)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3395, file: !3389, line: 370, baseType: !253, size: 64, offset: 192)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3395, file: !3389, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3395, file: !3389, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3395, file: !3389, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3395, file: !3389, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3395, file: !3389, line: 397, baseType: !3407, size: 32768, offset: 512)
!3407 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3389, line: 348, size: 32768, elements: !3408)
!3408 = !{!3409, !3424, !3461, !3538, !3551}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3407, file: !3389, line: 349, baseType: !3410, size: 896)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3389, line: 12, size: 896, elements: !3411)
!3411 = !{!3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3423}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3410, file: !3389, line: 13, baseType: !319, size: 32)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3410, file: !3389, line: 14, baseType: !319, size: 32, offset: 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3410, file: !3389, line: 15, baseType: !319, size: 32, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3410, file: !3389, line: 16, baseType: !319, size: 32, offset: 96)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3410, file: !3389, line: 17, baseType: !319, size: 32, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3410, file: !3389, line: 18, baseType: !319, size: 32, offset: 160)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3410, file: !3389, line: 19, baseType: !319, size: 32, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3410, file: !3389, line: 22, baseType: !3420, size: 640, offset: 224)
!3420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 640, elements: !3421)
!3421 = !{!3422}
!3422 = !DISubrange(count: 20)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3410, file: !3389, line: 25, baseType: !319, size: 32, offset: 864)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3407, file: !3389, line: 350, baseType: !3425, size: 4096, align: 128)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3389, line: 34, size: 4096, align: 128, elements: !3426)
!3426 = !{!3427, !3428, !3429, !3430, !3431, !3446, !3447, !3448, !3450, !3452, !3456}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3425, file: !3389, line: 35, baseType: !121, size: 16)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3425, file: !3389, line: 36, baseType: !121, size: 16, offset: 16)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3425, file: !3389, line: 37, baseType: !121, size: 16, offset: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3425, file: !3389, line: 38, baseType: !121, size: 16, offset: 48)
!3431 = !DIDerivedType(tag: DW_TAG_member, scope: !3425, file: !3389, line: 39, baseType: !3432, size: 128, offset: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3425, file: !3389, line: 39, size: 128, elements: !3433)
!3433 = !{!3434, !3439}
!3434 = !DIDerivedType(tag: DW_TAG_member, scope: !3432, file: !3389, line: 40, baseType: !3435, size: 128)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3432, file: !3389, line: 40, size: 128, elements: !3436)
!3436 = !{!3437, !3438}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3435, file: !3389, line: 41, baseType: !253, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3435, file: !3389, line: 42, baseType: !253, size: 64, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, scope: !3432, file: !3389, line: 44, baseType: !3440, size: 128)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3432, file: !3389, line: 44, size: 128, elements: !3441)
!3441 = !{!3442, !3443, !3444, !3445}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3440, file: !3389, line: 45, baseType: !319, size: 32)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3440, file: !3389, line: 46, baseType: !319, size: 32, offset: 32)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3440, file: !3389, line: 47, baseType: !319, size: 32, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3440, file: !3389, line: 48, baseType: !319, size: 32, offset: 96)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3425, file: !3389, line: 51, baseType: !319, size: 32, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3425, file: !3389, line: 52, baseType: !319, size: 32, offset: 224)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3425, file: !3389, line: 55, baseType: !3449, size: 1024, offset: 256)
!3449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 1024, elements: !1596)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3425, file: !3389, line: 58, baseType: !3451, size: 2048, offset: 1280)
!3451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 2048, elements: !2981)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3425, file: !3389, line: 60, baseType: !3453, size: 384, offset: 3328)
!3453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 384, elements: !3454)
!3454 = !{!3455}
!3455 = !DISubrange(count: 12)
!3456 = !DIDerivedType(tag: DW_TAG_member, scope: !3425, file: !3389, line: 62, baseType: !3457, size: 384, offset: 3712)
!3457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3425, file: !3389, line: 62, size: 384, elements: !3458)
!3458 = !{!3459, !3460}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3457, file: !3389, line: 63, baseType: !3453, size: 384)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3457, file: !3389, line: 64, baseType: !3453, size: 384)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3407, file: !3389, line: 351, baseType: !3462, size: 1088)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3389, line: 79, size: 1088, elements: !3463)
!3463 = !{!3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3537}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3462, file: !3389, line: 80, baseType: !319, size: 32)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3462, file: !3389, line: 81, baseType: !319, size: 32, offset: 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3462, file: !3389, line: 82, baseType: !319, size: 32, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3462, file: !3389, line: 83, baseType: !319, size: 32, offset: 96)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3462, file: !3389, line: 84, baseType: !319, size: 32, offset: 128)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3462, file: !3389, line: 85, baseType: !319, size: 32, offset: 160)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3462, file: !3389, line: 86, baseType: !319, size: 32, offset: 192)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3462, file: !3389, line: 88, baseType: !3420, size: 640, offset: 224)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3462, file: !3389, line: 89, baseType: !111, size: 8, offset: 864)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3462, file: !3389, line: 90, baseType: !111, size: 8, offset: 872)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3462, file: !3389, line: 91, baseType: !111, size: 8, offset: 880)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3462, file: !3389, line: 92, baseType: !111, size: 8, offset: 888)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3462, file: !3389, line: 93, baseType: !111, size: 8, offset: 896)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3462, file: !3389, line: 94, baseType: !111, size: 8, offset: 904)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3462, file: !3389, line: 95, baseType: !3479, size: 64, offset: 960)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3481, line: 11, size: 128, elements: !3482)
!3481 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3482 = !{!3483, !3484}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3480, file: !3481, line: 12, baseType: !1079, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3480, file: !3481, line: 13, baseType: !3485, size: 64, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3487, line: 103, size: 1344, elements: !3488)
!3487 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3488 = !{!3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3517, !3518, !3519}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3486, file: !3487, line: 109, baseType: !67, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3486, file: !3487, line: 110, baseType: !67, size: 64, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3486, file: !3487, line: 111, baseType: !67, size: 64, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3486, file: !3487, line: 112, baseType: !67, size: 64, offset: 192)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3486, file: !3487, line: 113, baseType: !67, size: 64, offset: 256)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3486, file: !3487, line: 114, baseType: !67, size: 64, offset: 320)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3486, file: !3487, line: 117, baseType: !67, size: 64, offset: 384)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3486, file: !3487, line: 118, baseType: !67, size: 64, offset: 448)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3486, file: !3487, line: 119, baseType: !67, size: 64, offset: 512)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3486, file: !3487, line: 120, baseType: !67, size: 64, offset: 576)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3486, file: !3487, line: 121, baseType: !67, size: 64, offset: 640)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3486, file: !3487, line: 122, baseType: !67, size: 64, offset: 704)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3486, file: !3487, line: 123, baseType: !67, size: 64, offset: 768)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3486, file: !3487, line: 124, baseType: !67, size: 64, offset: 832)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3486, file: !3487, line: 125, baseType: !67, size: 64, offset: 896)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3486, file: !3487, line: 139, baseType: !67, size: 64, offset: 960)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3486, file: !3487, line: 142, baseType: !67, size: 64, offset: 1024)
!3506 = !DIDerivedType(tag: DW_TAG_member, scope: !3486, file: !3487, line: 144, baseType: !3507, size: 64, offset: 1088)
!3507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3486, file: !3487, line: 144, size: 64, elements: !3508)
!3508 = !{!3509, !3510, !3511}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3507, file: !3487, line: 146, baseType: !121, size: 16)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3507, file: !3487, line: 148, baseType: !253, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3507, file: !3487, line: 150, baseType: !3512, size: 64)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3487, line: 59, size: 64, elements: !3513)
!3513 = !{!3514, !3515, !3516}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3512, file: !3487, line: 61, baseType: !253, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3512, file: !3487, line: 63, baseType: !253, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3512, file: !3487, line: 65, baseType: !253, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3486, file: !3487, line: 153, baseType: !67, size: 64, offset: 1152)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3486, file: !3487, line: 154, baseType: !67, size: 64, offset: 1216)
!3519 = !DIDerivedType(tag: DW_TAG_member, scope: !3486, file: !3487, line: 156, baseType: !3520, size: 64, offset: 1280)
!3520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3486, file: !3487, line: 156, size: 64, elements: !3521)
!3521 = !{!3522, !3523, !3524}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3520, file: !3487, line: 158, baseType: !121, size: 16)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3520, file: !3487, line: 160, baseType: !253, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3520, file: !3487, line: 162, baseType: !3525, size: 64)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3487, line: 69, size: 64, elements: !3526)
!3526 = !{!3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3525, file: !3487, line: 71, baseType: !253, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3525, file: !3487, line: 73, baseType: !253, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3525, file: !3487, line: 75, baseType: !253, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3525, file: !3487, line: 77, baseType: !253, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3525, file: !3487, line: 80, baseType: !253, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3525, file: !3487, line: 83, baseType: !253, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3525, file: !3487, line: 86, baseType: !253, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3525, file: !3487, line: 88, baseType: !253, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3525, file: !3487, line: 93, baseType: !253, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3525, file: !3487, line: 100, baseType: !253, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3462, file: !3389, line: 96, baseType: !319, size: 32, offset: 1024)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3407, file: !3389, line: 352, baseType: !3539, size: 4608, align: 512)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3389, line: 333, size: 4608, align: 512, elements: !3540)
!3540 = !{!3541, !3542, !3549}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3539, file: !3389, line: 334, baseType: !3425, size: 4096, align: 128)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3539, file: !3389, line: 335, baseType: !3543, size: 512, offset: 4096)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3389, line: 312, size: 512, elements: !3544)
!3544 = !{!3545, !3546, !3547}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3543, file: !3389, line: 313, baseType: !253, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3543, file: !3389, line: 314, baseType: !253, size: 64, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3543, file: !3389, line: 315, baseType: !3548, size: 384, offset: 128)
!3548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 384, elements: !342)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3539, file: !3389, line: 336, baseType: !3550, offset: 4608)
!3550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, elements: !904)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3407, file: !3389, line: 353, baseType: !3552, size: 32768)
!3552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 32768, elements: !3553)
!3553 = !{!3554}
!3554 = !DISubrange(count: 4096)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3388, file: !3389, line: 484, baseType: !3394, size: 64, offset: 192)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3388, file: !3389, line: 491, baseType: !3557, size: 128, offset: 256)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3389, line: 404, size: 128, elements: !3558)
!3558 = !{!3559, !3560, !3561}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3557, file: !3389, line: 424, baseType: !253, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3557, file: !3389, line: 432, baseType: !7, size: 32, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3557, file: !3389, line: 440, baseType: !7, size: 32, offset: 96)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3388, file: !3389, line: 498, baseType: !3557, size: 128, offset: 384)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3388, file: !3389, line: 508, baseType: !3395, size: 33280, align: 512, offset: 512)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !494, file: !495, line: 21, baseType: !3565, size: 64, offset: 256)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{null, !504}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !494, file: !495, line: 22, baseType: !3569, size: 64, offset: 320)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!50, !3572, !504}
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsset", file: !2615, line: 53, size: 256, elements: !3574)
!3574 = !{!3575, !3576, !3577, !3578}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3573, file: !2615, line: 54, baseType: !7, size: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3573, file: !2615, line: 55, baseType: !2613, size: 64, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3573, file: !2615, line: 56, baseType: !2604, size: 64, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3573, file: !2615, line: 57, baseType: !211, size: 64, offset: 192)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !494, file: !495, line: 23, baseType: !3580, size: 64, offset: 384)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!455, !504}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !494, file: !495, line: 24, baseType: !3584, size: 64, offset: 448)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!504, !504}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !487, file: !488, line: 12, baseType: !7, size: 32, offset: 128)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !487, file: !488, line: 13, baseType: !267, size: 32, offset: 160)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !456, file: !160, line: 77, baseType: !67, size: 64, offset: 2112)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !456, file: !160, line: 80, baseType: !363, size: 8, offset: 2176)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !456, file: !160, line: 88, baseType: !125, size: 128, offset: 2240)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !456, file: !160, line: 89, baseType: !262, size: 64, offset: 2368)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !456, file: !160, line: 90, baseType: !289, size: 320, offset: 2432)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !456, file: !160, line: 97, baseType: !1713, size: 256, offset: 2752)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !456, file: !160, line: 99, baseType: !2719, size: 768, offset: 3008)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !456, file: !160, line: 100, baseType: !2759, size: 64, offset: 3776)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !456, file: !160, line: 102, baseType: !2782, size: 64, offset: 3840)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !456, file: !160, line: 103, baseType: !3599, size: 640, offset: 3904)
!3599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1079, size: 640, elements: !2791)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !456, file: !160, line: 104, baseType: !3601, size: 256, offset: 4544)
!3601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1079, size: 256, elements: !384)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !213, file: !214, line: 139, baseType: !2782, size: 64, offset: 1216)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !213, file: !214, line: 140, baseType: !3604, size: 64, offset: 1280)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !214, line: 25, size: 64, elements: !3606)
!3606 = !{!3607, !3608, !3609}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3605, file: !214, line: 26, baseType: !77, size: 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !3605, file: !214, line: 27, baseType: !50, size: 32, offset: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3605, file: !214, line: 28, baseType: !3610, offset: 64)
!3610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, elements: !904)
!3611 = !DIDerivedType(tag: DW_TAG_member, scope: !213, file: !214, line: 142, baseType: !3612, size: 128, offset: 1344)
!3612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !213, file: !214, line: 142, size: 128, elements: !3613)
!3613 = !{!3614, !3615}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !3612, file: !214, line: 143, baseType: !50, size: 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3612, file: !214, line: 144, baseType: !353, size: 128, align: 64)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !223)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !50)
!3621 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !53, line: 42, baseType: !67)
!3622 = !{!3623, !3626, !3628, !0, !3633}
!3623 = !DIGlobalVariableExpression(var: !3624, expr: !DIExpression())
!3624 = distinct !DIGlobalVariable(scope: null, file: !3, line: 254, type: !3625, isLocal: true, isDefinition: true)
!3625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !384)
!3626 = !DIGlobalVariableExpression(var: !3627, expr: !DIExpression())
!3627 = distinct !DIGlobalVariable(name: "ipcns_operations", scope: !2, file: !3, line: 253, type: !493, isLocal: false, isDefinition: true)
!3628 = !DIGlobalVariableExpression(var: !3629, expr: !DIExpression())
!3629 = distinct !DIGlobalVariable(scope: null, file: !174, line: 480, type: !3630, isLocal: true, isDefinition: true)
!3630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 168, elements: !3631)
!3631 = !{!3632}
!3632 = !DISubrange(count: 21)
!3633 = !DIGlobalVariableExpression(var: !3634, expr: !DIExpression())
!3634 = distinct !DIGlobalVariable(name: "free_ipc_work", scope: !2, file: !3, line: 26, type: !1713, isLocal: true, isDefinition: true)
!3635 = !{i32 7, !"Dwarf Version", i32 5}
!3636 = !{i32 2, !"Debug Info Version", i32 3}
!3637 = !{i32 1, !"wchar_size", i32 2}
!3638 = !{i32 8, !"cf-protection-branch", i32 1}
!3639 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3640 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3641 = !{i32 1, !"Code Model", i32 2}
!3642 = !{i32 1, !"override-stack-alignment", i32 8}
!3643 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3644 = distinct !DISubprogram(name: "copy_ipcs", scope: !3, file: !3, line: 109, type: !3645, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3647)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!2622, !67, !455, !2622}
!3647 = !{!3648, !3649, !3650}
!3648 = !DILocalVariable(name: "flags", arg: 1, scope: !3644, file: !3, line: 109, type: !67)
!3649 = !DILocalVariable(name: "user_ns", arg: 2, scope: !3644, file: !3, line: 110, type: !455)
!3650 = !DILocalVariable(name: "ns", arg: 3, scope: !3644, file: !3, line: 110, type: !2622)
!3651 = !DILocation(line: 109, column: 47, scope: !3644)
!3652 = !DILocation(line: 110, column: 25, scope: !3644)
!3653 = !DILocation(line: 110, column: 56, scope: !3644)
!3654 = !DILocation(line: 112, column: 8, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3644, file: !3, line: 112, column: 6)
!3656 = !DILocation(line: 112, column: 14, scope: !3655)
!3657 = !DILocation(line: 112, column: 6, scope: !3644)
!3658 = !DILocation(line: 113, column: 21, scope: !3655)
!3659 = !DILocation(line: 113, column: 10, scope: !3655)
!3660 = !DILocation(line: 113, column: 3, scope: !3655)
!3661 = !DILocation(line: 114, column: 23, scope: !3644)
!3662 = !DILocation(line: 114, column: 32, scope: !3644)
!3663 = !DILocation(line: 114, column: 9, scope: !3644)
!3664 = !DILocation(line: 114, column: 2, scope: !3644)
!3665 = !DILocation(line: 115, column: 1, scope: !3644)
!3666 = distinct !DISubprogram(name: "get_ipc_ns", scope: !2624, file: !2624, line: 135, type: !3667, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3669)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!2622, !2622}
!3669 = !{!3670}
!3670 = !DILocalVariable(name: "ns", arg: 1, scope: !3666, file: !2624, line: 135, type: !2622)
!3671 = !DILocation(line: 135, column: 70, scope: !3666)
!3672 = !DILocation(line: 137, column: 6, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3666, file: !2624, line: 137, column: 6)
!3674 = !DILocation(line: 137, column: 6, scope: !3666)
!3675 = !DILocation(line: 138, column: 17, scope: !3673)
!3676 = !DILocation(line: 138, column: 21, scope: !3673)
!3677 = !DILocation(line: 138, column: 24, scope: !3673)
!3678 = !DILocation(line: 138, column: 3, scope: !3673)
!3679 = !DILocation(line: 139, column: 9, scope: !3666)
!3680 = !DILocation(line: 139, column: 2, scope: !3666)
!3681 = distinct !DISubprogram(name: "create_ipc_ns", scope: !3, file: !3, line: 38, type: !3682, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3684)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!2622, !455, !2622}
!3684 = !{!3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696}
!3685 = !DILocalVariable(name: "user_ns", arg: 1, scope: !3681, file: !3, line: 38, type: !455)
!3686 = !DILocalVariable(name: "old_ns", arg: 2, scope: !3681, file: !3, line: 39, type: !2622)
!3687 = !DILocalVariable(name: "ns", scope: !3681, file: !3, line: 41, type: !2622)
!3688 = !DILocalVariable(name: "ucounts", scope: !3681, file: !3, line: 42, type: !2782)
!3689 = !DILocalVariable(name: "err", scope: !3681, file: !3, line: 43, type: !50)
!3690 = !DILabel(scope: !3681, name: "again", file: !3, line: 46)
!3691 = !DILabel(scope: !3681, name: "fail_ipc", file: !3, line: 93)
!3692 = !DILabel(scope: !3681, name: "fail_mq", file: !3, line: 95)
!3693 = !DILabel(scope: !3681, name: "fail_put", file: !3, line: 98)
!3694 = !DILabel(scope: !3681, name: "fail_free", file: !3, line: 101)
!3695 = !DILabel(scope: !3681, name: "fail_dec", file: !3, line: 103)
!3696 = !DILabel(scope: !3681, name: "fail", file: !3, line: 105)
!3697 = !DILocation(line: 38, column: 67, scope: !3681)
!3698 = !DILocation(line: 39, column: 31, scope: !3681)
!3699 = !DILocation(line: 41, column: 2, scope: !3681)
!3700 = !DILocation(line: 41, column: 24, scope: !3681)
!3701 = !DILocation(line: 42, column: 2, scope: !3681)
!3702 = !DILocation(line: 42, column: 18, scope: !3681)
!3703 = !DILocation(line: 43, column: 2, scope: !3681)
!3704 = !DILocation(line: 43, column: 6, scope: !3681)
!3705 = !DILocation(line: 45, column: 6, scope: !3681)
!3706 = !DILocation(line: 45, column: 2, scope: !3681)
!3707 = !DILocation(line: 46, column: 2, scope: !3681)
!3708 = !DILocation(line: 47, column: 31, scope: !3681)
!3709 = !DILocation(line: 47, column: 12, scope: !3681)
!3710 = !DILocation(line: 47, column: 10, scope: !3681)
!3711 = !DILocation(line: 48, column: 7, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 48, column: 6)
!3713 = !DILocation(line: 48, column: 6, scope: !3681)
!3714 = !DILocation(line: 54, column: 7, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3716, file: !3, line: 54, column: 7)
!3716 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 48, column: 16)
!3717 = !DILocation(line: 54, column: 7, scope: !3716)
!3718 = !DILocation(line: 55, column: 4, scope: !3715)
!3719 = !DILocation(line: 56, column: 3, scope: !3716)
!3720 = !DILocation(line: 59, column: 6, scope: !3681)
!3721 = !DILocation(line: 60, column: 7, scope: !3681)
!3722 = !DILocation(line: 60, column: 5, scope: !3681)
!3723 = !DILocation(line: 61, column: 6, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 61, column: 6)
!3725 = !DILocation(line: 61, column: 9, scope: !3724)
!3726 = !DILocation(line: 61, column: 6, scope: !3681)
!3727 = !DILocation(line: 62, column: 3, scope: !3724)
!3728 = !DILocation(line: 64, column: 23, scope: !3681)
!3729 = !DILocation(line: 64, column: 27, scope: !3681)
!3730 = !DILocation(line: 64, column: 8, scope: !3681)
!3731 = !DILocation(line: 64, column: 6, scope: !3681)
!3732 = !DILocation(line: 65, column: 6, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 65, column: 6)
!3734 = !DILocation(line: 65, column: 6, scope: !3681)
!3735 = !DILocation(line: 66, column: 3, scope: !3733)
!3736 = !DILocation(line: 67, column: 2, scope: !3681)
!3737 = !DILocation(line: 67, column: 6, scope: !3681)
!3738 = !DILocation(line: 67, column: 9, scope: !3681)
!3739 = !DILocation(line: 67, column: 13, scope: !3681)
!3740 = !DILocation(line: 69, column: 16, scope: !3681)
!3741 = !DILocation(line: 69, column: 20, scope: !3681)
!3742 = !DILocation(line: 69, column: 23, scope: !3681)
!3743 = !DILocation(line: 69, column: 2, scope: !3681)
!3744 = !DILocation(line: 70, column: 28, scope: !3681)
!3745 = !DILocation(line: 70, column: 16, scope: !3681)
!3746 = !DILocation(line: 70, column: 2, scope: !3681)
!3747 = !DILocation(line: 70, column: 6, scope: !3681)
!3748 = !DILocation(line: 70, column: 14, scope: !3681)
!3749 = !DILocation(line: 71, column: 16, scope: !3681)
!3750 = !DILocation(line: 71, column: 2, scope: !3681)
!3751 = !DILocation(line: 71, column: 6, scope: !3681)
!3752 = !DILocation(line: 71, column: 14, scope: !3681)
!3753 = !DILocation(line: 73, column: 19, scope: !3681)
!3754 = !DILocation(line: 73, column: 8, scope: !3681)
!3755 = !DILocation(line: 73, column: 6, scope: !3681)
!3756 = !DILocation(line: 74, column: 6, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 74, column: 6)
!3758 = !DILocation(line: 74, column: 6, scope: !3681)
!3759 = !DILocation(line: 75, column: 3, scope: !3757)
!3760 = !DILocation(line: 77, column: 6, scope: !3681)
!3761 = !DILocation(line: 78, column: 24, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 78, column: 6)
!3763 = !DILocation(line: 78, column: 7, scope: !3762)
!3764 = !DILocation(line: 78, column: 6, scope: !3681)
!3765 = !DILocation(line: 79, column: 3, scope: !3762)
!3766 = !DILocation(line: 81, column: 25, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 81, column: 6)
!3768 = !DILocation(line: 81, column: 7, scope: !3767)
!3769 = !DILocation(line: 81, column: 6, scope: !3681)
!3770 = !DILocation(line: 82, column: 3, scope: !3767)
!3771 = !DILocation(line: 84, column: 20, scope: !3681)
!3772 = !DILocation(line: 84, column: 8, scope: !3681)
!3773 = !DILocation(line: 84, column: 6, scope: !3681)
!3774 = !DILocation(line: 85, column: 6, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 85, column: 6)
!3776 = !DILocation(line: 85, column: 6, scope: !3681)
!3777 = !DILocation(line: 86, column: 3, scope: !3775)
!3778 = !DILocation(line: 88, column: 14, scope: !3681)
!3779 = !DILocation(line: 88, column: 2, scope: !3681)
!3780 = !DILocation(line: 89, column: 14, scope: !3681)
!3781 = !DILocation(line: 89, column: 2, scope: !3681)
!3782 = !DILocation(line: 91, column: 9, scope: !3681)
!3783 = !DILocation(line: 91, column: 2, scope: !3681)
!3784 = !DILocation(line: 93, column: 1, scope: !3681)
!3785 = !DILocation(line: 94, column: 21, scope: !3681)
!3786 = !DILocation(line: 94, column: 2, scope: !3681)
!3787 = !DILocation(line: 95, column: 1, scope: !3681)
!3788 = !DILocation(line: 96, column: 20, scope: !3681)
!3789 = !DILocation(line: 96, column: 2, scope: !3681)
!3790 = !DILocation(line: 98, column: 1, scope: !3681)
!3791 = !DILocation(line: 99, column: 14, scope: !3681)
!3792 = !DILocation(line: 99, column: 18, scope: !3681)
!3793 = !DILocation(line: 99, column: 2, scope: !3681)
!3794 = !DILocation(line: 100, column: 2, scope: !3681)
!3795 = !DILocation(line: 101, column: 1, scope: !3681)
!3796 = !DILocation(line: 102, column: 8, scope: !3681)
!3797 = !DILocation(line: 102, column: 2, scope: !3681)
!3798 = !DILocation(line: 103, column: 1, scope: !3681)
!3799 = !DILocation(line: 104, column: 21, scope: !3681)
!3800 = !DILocation(line: 104, column: 2, scope: !3681)
!3801 = !DILocation(line: 105, column: 1, scope: !3681)
!3802 = !DILocation(line: 106, column: 17, scope: !3681)
!3803 = !DILocation(line: 106, column: 9, scope: !3681)
!3804 = !DILocation(line: 106, column: 2, scope: !3681)
!3805 = !DILocation(line: 107, column: 1, scope: !3681)
!3806 = distinct !DISubprogram(name: "free_ipcs", scope: !3, file: !3, line: 125, type: !3807, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3838)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{null, !2622, !3809, !3810}
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{null, !2622, !3813}
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kern_ipc_perm", file: !3815, line: 12, size: 1024, align: 512, elements: !3816)
!3815 = !DIFile(filename: "./include/linux/ipc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d08b6bc06423a47dcc3e2f7a33a3c4f")
!3816 = !{!3817, !3818, !3819, !3820, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3836, !3837}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3814, file: !3815, line: 13, baseType: !87, size: 32)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "deleted", scope: !3814, file: !3815, line: 14, baseType: !363, size: 8, offset: 32)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3814, file: !3815, line: 15, baseType: !50, size: 32, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3814, file: !3815, line: 16, baseType: !3821, size: 32, offset: 96)
!3821 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_t", file: !53, line: 29, baseType: !3822)
!3822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_key_t", file: !3823, line: 33, baseType: !50)
!3823 = !DIFile(filename: "./include/uapi/linux/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a17a63983e2bd17804115d95083fe9c4")
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3814, file: !3815, line: 17, baseType: !226, size: 32, offset: 128)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3814, file: !3815, line: 18, baseType: !234, size: 32, offset: 160)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "cuid", scope: !3814, file: !3815, line: 19, baseType: !226, size: 32, offset: 192)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "cgid", scope: !3814, file: !3815, line: 20, baseType: !234, size: 32, offset: 224)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3814, file: !3815, line: 21, baseType: !52, size: 16, offset: 256)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3814, file: !3815, line: 22, baseType: !67, size: 64, offset: 320)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3814, file: !3815, line: 23, baseType: !48, size: 64, offset: 384)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "khtnode", scope: !3814, file: !3815, line: 25, baseType: !3832, size: 64, offset: 448)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !2644, line: 17, size: 64, elements: !3833)
!3833 = !{!3834}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3832, file: !2644, line: 18, baseType: !3835, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3814, file: !3815, line: 27, baseType: !353, size: 128, align: 64, offset: 512)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3814, file: !3815, line: 28, baseType: !267, size: 32, offset: 640)
!3838 = !{!3839, !3840, !3841, !3842, !3843, !3844, !3845}
!3839 = !DILocalVariable(name: "ns", arg: 1, scope: !3806, file: !3, line: 125, type: !2622)
!3840 = !DILocalVariable(name: "ids", arg: 2, scope: !3806, file: !3, line: 125, type: !3809)
!3841 = !DILocalVariable(name: "free", arg: 3, scope: !3806, file: !3, line: 126, type: !3810)
!3842 = !DILocalVariable(name: "perm", scope: !3806, file: !3, line: 128, type: !3813)
!3843 = !DILocalVariable(name: "next_id", scope: !3806, file: !3, line: 129, type: !50)
!3844 = !DILocalVariable(name: "total", scope: !3806, file: !3, line: 130, type: !50)
!3845 = !DILocalVariable(name: "in_use", scope: !3806, file: !3, line: 130, type: !50)
!3846 = !DILocation(line: 125, column: 38, scope: !3806)
!3847 = !DILocation(line: 125, column: 58, scope: !3806)
!3848 = !DILocation(line: 126, column: 16, scope: !3806)
!3849 = !DILocation(line: 128, column: 2, scope: !3806)
!3850 = !DILocation(line: 128, column: 24, scope: !3806)
!3851 = !DILocation(line: 129, column: 2, scope: !3806)
!3852 = !DILocation(line: 129, column: 6, scope: !3806)
!3853 = !DILocation(line: 130, column: 2, scope: !3806)
!3854 = !DILocation(line: 130, column: 6, scope: !3806)
!3855 = !DILocation(line: 130, column: 13, scope: !3806)
!3856 = !DILocation(line: 132, column: 14, scope: !3806)
!3857 = !DILocation(line: 132, column: 19, scope: !3806)
!3858 = !DILocation(line: 132, column: 2, scope: !3806)
!3859 = !DILocation(line: 134, column: 11, scope: !3806)
!3860 = !DILocation(line: 134, column: 16, scope: !3806)
!3861 = !DILocation(line: 134, column: 9, scope: !3806)
!3862 = !DILocation(line: 136, column: 13, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 136, column: 2)
!3864 = !DILocation(line: 136, column: 26, scope: !3863)
!3865 = !DILocation(line: 136, column: 7, scope: !3863)
!3866 = !DILocation(line: 136, column: 31, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 136, column: 2)
!3868 = !DILocation(line: 136, column: 39, scope: !3867)
!3869 = !DILocation(line: 136, column: 37, scope: !3867)
!3870 = !DILocation(line: 136, column: 2, scope: !3863)
!3871 = !DILocation(line: 137, column: 20, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 136, column: 58)
!3873 = !DILocation(line: 137, column: 25, scope: !3872)
!3874 = !DILocation(line: 137, column: 35, scope: !3872)
!3875 = !DILocation(line: 137, column: 10, scope: !3872)
!3876 = !DILocation(line: 137, column: 8, scope: !3872)
!3877 = !DILocation(line: 138, column: 7, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 138, column: 7)
!3879 = !DILocation(line: 138, column: 12, scope: !3878)
!3880 = !DILocation(line: 138, column: 7, scope: !3872)
!3881 = !DILocation(line: 139, column: 4, scope: !3878)
!3882 = !DILocation(line: 140, column: 3, scope: !3872)
!3883 = !DILocation(line: 141, column: 19, scope: !3872)
!3884 = !DILocation(line: 141, column: 3, scope: !3872)
!3885 = !DILocation(line: 142, column: 3, scope: !3872)
!3886 = !DILocation(line: 142, column: 8, scope: !3872)
!3887 = !DILocation(line: 142, column: 12, scope: !3872)
!3888 = !DILocation(line: 143, column: 8, scope: !3872)
!3889 = !DILocation(line: 144, column: 2, scope: !3872)
!3890 = !DILocation(line: 136, column: 54, scope: !3867)
!3891 = !DILocation(line: 136, column: 2, scope: !3867)
!3892 = distinct !{!3892, !3870, !3893, !3894, !3895}
!3893 = !DILocation(line: 144, column: 2, scope: !3863)
!3894 = !{!"llvm.loop.mustprogress"}
!3895 = !{!"llvm.loop.unroll.disable"}
!3896 = !DILocation(line: 145, column: 12, scope: !3806)
!3897 = !DILocation(line: 145, column: 17, scope: !3806)
!3898 = !DILocation(line: 145, column: 2, scope: !3806)
!3899 = !DILocation(line: 146, column: 1, scope: !3806)
!3900 = !DISubprogram(name: "down_write", scope: !290, file: !290, line: 187, type: !3901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{null, !3903}
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!3904 = !DISubprogram(name: "idr_find", scope: !2635, file: !2635, line: 119, type: !3905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!48, !3907, !67}
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2634)
!3909 = distinct !DISubprogram(name: "rcu_read_lock", scope: !3910, file: !3910, line: 782, type: !2978, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3910 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!3911 = !DILocation(line: 784, column: 2, scope: !3909)
!3912 = !DILocation(line: 786, column: 2, scope: !3909)
!3913 = !DILocation(line: 786, column: 2, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3909, file: !3910, line: 786, column: 2)
!3915 = !DILocation(line: 787, column: 2, scope: !3909)
!3916 = !DILocation(line: 787, column: 2, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3909, file: !3910, line: 787, column: 2)
!3918 = !DILocation(line: 789, column: 1, scope: !3909)
!3919 = distinct !DISubprogram(name: "ipc_lock_object", scope: !3920, file: !3920, line: 207, type: !3921, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3923)
!3920 = !DIFile(filename: "ipc/util.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8453113c4f9f75ff3f8befe4fd6c6b01")
!3921 = !DISubroutineType(types: !3922)
!3922 = !{null, !3813}
!3923 = !{!3924}
!3924 = !DILocalVariable(name: "perm", arg: 1, scope: !3919, file: !3920, line: 207, type: !3813)
!3925 = !DILocation(line: 207, column: 58, scope: !3919)
!3926 = !DILocation(line: 209, column: 13, scope: !3919)
!3927 = !DILocation(line: 209, column: 19, scope: !3919)
!3928 = !DILocation(line: 209, column: 2, scope: !3919)
!3929 = !DILocation(line: 210, column: 1, scope: !3919)
!3930 = !DISubprogram(name: "up_write", scope: !290, file: !290, line: 203, type: !3901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3931 = distinct !DISubprogram(name: "put_ipc_ns", scope: !3, file: !3, line: 200, type: !3932, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3934)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{null, !2622}
!3934 = !{!3935}
!3935 = !DILocalVariable(name: "ns", arg: 1, scope: !3931, file: !3, line: 200, type: !2622)
!3936 = !DILocation(line: 200, column: 39, scope: !3931)
!3937 = !DILocation(line: 202, column: 29, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3931, file: !3, line: 202, column: 6)
!3939 = !DILocation(line: 202, column: 33, scope: !3938)
!3940 = !DILocation(line: 202, column: 36, scope: !3938)
!3941 = !DILocation(line: 202, column: 6, scope: !3938)
!3942 = !DILocation(line: 202, column: 6, scope: !3931)
!3943 = !DILocation(line: 203, column: 19, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 202, column: 54)
!3945 = !DILocation(line: 203, column: 3, scope: !3944)
!3946 = !DILocation(line: 204, column: 3, scope: !3944)
!3947 = !DILocation(line: 206, column: 18, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3944, file: !3, line: 206, column: 7)
!3949 = !DILocation(line: 206, column: 22, scope: !3948)
!3950 = !DILocation(line: 206, column: 7, scope: !3948)
!3951 = !DILocation(line: 206, column: 7, scope: !3944)
!3952 = !DILocation(line: 207, column: 4, scope: !3948)
!3953 = !DILocation(line: 208, column: 2, scope: !3944)
!3954 = !DILocation(line: 209, column: 1, scope: !3931)
!3955 = !DISubprogram(name: "refcount_dec_and_lock", scope: !147, file: !147, line: 365, type: !3956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!363, !3958, !3959}
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!3960 = !DISubprogram(name: "mq_clear_sbinfo", scope: !3920, file: !3920, line: 58, type: !3932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3961 = distinct !DISubprogram(name: "spin_unlock", scope: !3962, file: !3962, line: 389, type: !3963, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3965)
!3962 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!3963 = !DISubroutineType(types: !3964)
!3964 = !{null, !3959}
!3965 = !{!3966}
!3966 = !DILocalVariable(name: "lock", arg: 1, scope: !3961, file: !3962, line: 389, type: !3959)
!3967 = !DILocation(line: 389, column: 53, scope: !3961)
!3968 = !DILocation(line: 391, column: 2, scope: !3961)
!3969 = !DILocation(line: 392, column: 1, scope: !3961)
!3970 = distinct !DISubprogram(name: "llist_add", scope: !529, file: !529, line: 219, type: !3971, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3974)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!363, !532, !3973}
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3974 = !{!3975, !3976}
!3975 = !DILocalVariable(name: "new", arg: 1, scope: !3970, file: !529, line: 219, type: !532)
!3976 = !DILocalVariable(name: "head", arg: 2, scope: !3970, file: !529, line: 219, type: !3973)
!3977 = !DILocation(line: 219, column: 49, scope: !3970)
!3978 = !DILocation(line: 219, column: 73, scope: !3970)
!3979 = !DILocation(line: 221, column: 25, scope: !3970)
!3980 = !DILocation(line: 221, column: 30, scope: !3970)
!3981 = !DILocation(line: 221, column: 35, scope: !3970)
!3982 = !DILocation(line: 221, column: 9, scope: !3970)
!3983 = !DILocation(line: 221, column: 2, scope: !3970)
!3984 = distinct !DISubprogram(name: "schedule_work", scope: !184, file: !184, line: 621, type: !3985, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3987)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!363, !1722}
!3987 = !{!3988}
!3988 = !DILocalVariable(name: "work", arg: 1, scope: !3984, file: !184, line: 621, type: !1722)
!3989 = !DILocation(line: 621, column: 54, scope: !3984)
!3990 = !DILocation(line: 623, column: 20, scope: !3984)
!3991 = !DILocation(line: 623, column: 31, scope: !3984)
!3992 = !DILocation(line: 623, column: 9, scope: !3984)
!3993 = !DILocation(line: 623, column: 2, scope: !3984)
!3994 = distinct !DISubprogram(name: "ipcns_get", scope: !3, file: !3, line: 216, type: !502, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3995)
!3995 = !{!3996, !3997, !3998}
!3996 = !DILocalVariable(name: "task", arg: 1, scope: !3994, file: !3, line: 216, type: !505)
!3997 = !DILocalVariable(name: "ns", scope: !3994, file: !3, line: 218, type: !2622)
!3998 = !DILocalVariable(name: "nsproxy", scope: !3994, file: !3, line: 219, type: !2613)
!3999 = !DILocation(line: 216, column: 56, scope: !3994)
!4000 = !DILocation(line: 218, column: 2, scope: !3994)
!4001 = !DILocation(line: 218, column: 24, scope: !3994)
!4002 = !DILocation(line: 219, column: 2, scope: !3994)
!4003 = !DILocation(line: 219, column: 18, scope: !3994)
!4004 = !DILocation(line: 221, column: 12, scope: !3994)
!4005 = !DILocation(line: 221, column: 2, scope: !3994)
!4006 = !DILocation(line: 222, column: 12, scope: !3994)
!4007 = !DILocation(line: 222, column: 18, scope: !3994)
!4008 = !DILocation(line: 222, column: 10, scope: !3994)
!4009 = !DILocation(line: 223, column: 6, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3994, file: !3, line: 223, column: 6)
!4011 = !DILocation(line: 223, column: 6, scope: !3994)
!4012 = !DILocation(line: 224, column: 19, scope: !4010)
!4013 = !DILocation(line: 224, column: 28, scope: !4010)
!4014 = !DILocation(line: 224, column: 8, scope: !4010)
!4015 = !DILocation(line: 224, column: 6, scope: !4010)
!4016 = !DILocation(line: 224, column: 3, scope: !4010)
!4017 = !DILocation(line: 225, column: 14, scope: !3994)
!4018 = !DILocation(line: 225, column: 2, scope: !3994)
!4019 = !DILocation(line: 227, column: 9, scope: !3994)
!4020 = !DILocation(line: 227, column: 15, scope: !3994)
!4021 = !DILocation(line: 227, column: 19, scope: !3994)
!4022 = !DILocation(line: 228, column: 1, scope: !3994)
!4023 = !DILocation(line: 227, column: 2, scope: !3994)
!4024 = distinct !DISubprogram(name: "ipcns_put", scope: !3, file: !3, line: 230, type: !3566, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4025)
!4025 = !{!4026}
!4026 = !DILocalVariable(name: "ns", arg: 1, scope: !4024, file: !3, line: 230, type: !504)
!4027 = !DILocation(line: 230, column: 41, scope: !4024)
!4028 = !DILocation(line: 232, column: 30, scope: !4024)
!4029 = !DILocation(line: 232, column: 20, scope: !4024)
!4030 = !DILocation(line: 232, column: 9, scope: !4024)
!4031 = !DILocation(line: 232, column: 2, scope: !4024)
!4032 = distinct !DISubprogram(name: "ipcns_install", scope: !3, file: !3, line: 235, type: !3570, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4033)
!4033 = !{!4034, !4035, !4036, !4037}
!4034 = !DILocalVariable(name: "nsset", arg: 1, scope: !4032, file: !3, line: 235, type: !3572)
!4035 = !DILocalVariable(name: "new", arg: 2, scope: !4032, file: !3, line: 235, type: !504)
!4036 = !DILocalVariable(name: "nsproxy", scope: !4032, file: !3, line: 237, type: !2613)
!4037 = !DILocalVariable(name: "ns", scope: !4032, file: !3, line: 238, type: !2622)
!4038 = !DILocation(line: 235, column: 40, scope: !4032)
!4039 = !DILocation(line: 235, column: 65, scope: !4032)
!4040 = !DILocation(line: 237, column: 2, scope: !4032)
!4041 = !DILocation(line: 237, column: 18, scope: !4032)
!4042 = !DILocation(line: 237, column: 28, scope: !4032)
!4043 = !DILocation(line: 237, column: 35, scope: !4032)
!4044 = !DILocation(line: 238, column: 2, scope: !4032)
!4045 = !DILocation(line: 238, column: 24, scope: !4032)
!4046 = !DILocation(line: 238, column: 39, scope: !4032)
!4047 = !DILocation(line: 238, column: 29, scope: !4032)
!4048 = !DILocation(line: 239, column: 18, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 239, column: 6)
!4050 = !DILocation(line: 239, column: 22, scope: !4049)
!4051 = !DILocation(line: 239, column: 7, scope: !4049)
!4052 = !DILocation(line: 239, column: 46, scope: !4049)
!4053 = !DILocation(line: 240, column: 18, scope: !4049)
!4054 = !DILocation(line: 240, column: 25, scope: !4049)
!4055 = !DILocation(line: 240, column: 31, scope: !4049)
!4056 = !DILocation(line: 240, column: 7, scope: !4049)
!4057 = !DILocation(line: 239, column: 6, scope: !4032)
!4058 = !DILocation(line: 241, column: 3, scope: !4049)
!4059 = !DILocation(line: 243, column: 13, scope: !4032)
!4060 = !DILocation(line: 243, column: 22, scope: !4032)
!4061 = !DILocation(line: 243, column: 2, scope: !4032)
!4062 = !DILocation(line: 244, column: 31, scope: !4032)
!4063 = !DILocation(line: 244, column: 20, scope: !4032)
!4064 = !DILocation(line: 244, column: 2, scope: !4032)
!4065 = !DILocation(line: 244, column: 11, scope: !4032)
!4066 = !DILocation(line: 244, column: 18, scope: !4032)
!4067 = !DILocation(line: 245, column: 2, scope: !4032)
!4068 = !DILocation(line: 246, column: 1, scope: !4032)
!4069 = distinct !DISubprogram(name: "ipcns_owner", scope: !3, file: !3, line: 248, type: !3581, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4070)
!4070 = !{!4071}
!4071 = !DILocalVariable(name: "ns", arg: 1, scope: !4069, file: !3, line: 248, type: !504)
!4072 = !DILocation(line: 248, column: 61, scope: !4069)
!4073 = !DILocation(line: 250, column: 19, scope: !4069)
!4074 = !DILocation(line: 250, column: 9, scope: !4069)
!4075 = !DILocation(line: 250, column: 24, scope: !4069)
!4076 = !DILocation(line: 250, column: 2, scope: !4069)
!4077 = distinct !DISubprogram(name: "refcount_inc", scope: !147, file: !147, line: 265, type: !4078, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4080)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{null, !3958}
!4080 = !{!4081}
!4081 = !DILocalVariable(name: "r", arg: 1, scope: !4077, file: !147, line: 265, type: !3958)
!4082 = !DILocation(line: 265, column: 45, scope: !4077)
!4083 = !DILocation(line: 267, column: 17, scope: !4077)
!4084 = !DILocation(line: 267, column: 2, scope: !4077)
!4085 = !DILocation(line: 268, column: 1, scope: !4077)
!4086 = distinct !DISubprogram(name: "__refcount_inc", scope: !147, file: !147, line: 248, type: !4087, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4089)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{null, !3958, !1276}
!4089 = !{!4090, !4091}
!4090 = !DILocalVariable(name: "r", arg: 1, scope: !4086, file: !147, line: 248, type: !3958)
!4091 = !DILocalVariable(name: "oldp", arg: 2, scope: !4086, file: !147, line: 248, type: !1276)
!4092 = !DILocation(line: 248, column: 47, scope: !4086)
!4093 = !DILocation(line: 248, column: 55, scope: !4086)
!4094 = !DILocation(line: 250, column: 20, scope: !4086)
!4095 = !DILocation(line: 250, column: 23, scope: !4086)
!4096 = !DILocation(line: 250, column: 2, scope: !4086)
!4097 = !DILocation(line: 251, column: 1, scope: !4086)
!4098 = distinct !DISubprogram(name: "__refcount_add", scope: !147, file: !147, line: 191, type: !4099, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4101)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{null, !50, !3958, !1276}
!4101 = !{!4102, !4103, !4104, !4105}
!4102 = !DILocalVariable(name: "i", arg: 1, scope: !4098, file: !147, line: 191, type: !50)
!4103 = !DILocalVariable(name: "r", arg: 2, scope: !4098, file: !147, line: 191, type: !3958)
!4104 = !DILocalVariable(name: "oldp", arg: 3, scope: !4098, file: !147, line: 191, type: !1276)
!4105 = !DILocalVariable(name: "old", scope: !4098, file: !147, line: 193, type: !50)
!4106 = !DILocation(line: 191, column: 39, scope: !4098)
!4107 = !DILocation(line: 191, column: 54, scope: !4098)
!4108 = !DILocation(line: 191, column: 62, scope: !4098)
!4109 = !DILocation(line: 193, column: 2, scope: !4098)
!4110 = !DILocation(line: 193, column: 6, scope: !4098)
!4111 = !DILocation(line: 193, column: 37, scope: !4098)
!4112 = !DILocation(line: 193, column: 41, scope: !4098)
!4113 = !DILocation(line: 193, column: 44, scope: !4098)
!4114 = !DILocation(line: 193, column: 12, scope: !4098)
!4115 = !DILocation(line: 195, column: 6, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4098, file: !147, line: 195, column: 6)
!4117 = !DILocation(line: 195, column: 6, scope: !4098)
!4118 = !DILocation(line: 196, column: 11, scope: !4116)
!4119 = !DILocation(line: 196, column: 4, scope: !4116)
!4120 = !DILocation(line: 196, column: 9, scope: !4116)
!4121 = !DILocation(line: 196, column: 3, scope: !4116)
!4122 = !DILocation(line: 198, column: 6, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4098, file: !147, line: 198, column: 6)
!4124 = !DILocation(line: 198, column: 6, scope: !4098)
!4125 = !DILocation(line: 199, column: 26, scope: !4123)
!4126 = !DILocation(line: 199, column: 3, scope: !4123)
!4127 = !DILocation(line: 200, column: 11, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4123, file: !147, line: 200, column: 11)
!4129 = !DILocation(line: 200, column: 11, scope: !4123)
!4130 = !DILocation(line: 201, column: 26, scope: !4128)
!4131 = !DILocation(line: 201, column: 3, scope: !4128)
!4132 = !DILocation(line: 202, column: 1, scope: !4098)
!4133 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !4134, file: !4134, line: 250, type: !4135, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4138)
!4134 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!50, !50, !4137}
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!4138 = !{!4139, !4140}
!4139 = !DILocalVariable(name: "i", arg: 1, scope: !4133, file: !4134, line: 250, type: !50)
!4140 = !DILocalVariable(name: "v", arg: 2, scope: !4133, file: !4134, line: 250, type: !4137)
!4141 = !DILocation(line: 250, column: 30, scope: !4133)
!4142 = !DILocation(line: 250, column: 43, scope: !4133)
!4143 = !DILocation(line: 252, column: 31, scope: !4133)
!4144 = !DILocation(line: 252, column: 2, scope: !4133)
!4145 = !DILocation(line: 253, column: 38, scope: !4133)
!4146 = !DILocation(line: 253, column: 41, scope: !4133)
!4147 = !DILocation(line: 253, column: 9, scope: !4133)
!4148 = !DILocation(line: 253, column: 2, scope: !4133)
!4149 = !DISubprogram(name: "refcount_warn_saturate", scope: !147, file: !147, line: 127, type: !4150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{null, !3958, !146}
!4152 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4153, file: !4153, line: 94, type: !4154, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4159)
!4153 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4154 = !DISubroutineType(types: !4155)
!4155 = !{null, !4156, !63}
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4158)
!4158 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4159 = !{!4160, !4161}
!4160 = !DILocalVariable(name: "v", arg: 1, scope: !4152, file: !4153, line: 94, type: !4156)
!4161 = !DILocalVariable(name: "size", arg: 2, scope: !4152, file: !4153, line: 94, type: !63)
!4162 = !DILocation(line: 94, column: 79, scope: !4152)
!4163 = !DILocation(line: 94, column: 89, scope: !4152)
!4164 = !DILocation(line: 96, column: 20, scope: !4152)
!4165 = !DILocation(line: 96, column: 23, scope: !4152)
!4166 = !DILocation(line: 96, column: 2, scope: !4152)
!4167 = !DILocation(line: 97, column: 2, scope: !4152)
!4168 = !DILocation(line: 98, column: 1, scope: !4152)
!4169 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !4170, file: !4170, line: 731, type: !4135, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4171)
!4170 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4171 = !{!4172, !4173}
!4172 = !DILocalVariable(name: "i", arg: 1, scope: !4169, file: !4170, line: 731, type: !50)
!4173 = !DILocalVariable(name: "v", arg: 2, scope: !4169, file: !4170, line: 731, type: !4137)
!4174 = !DILocation(line: 731, column: 34, scope: !4169)
!4175 = !DILocation(line: 731, column: 47, scope: !4169)
!4176 = !DILocation(line: 736, column: 31, scope: !4169)
!4177 = !DILocation(line: 736, column: 34, scope: !4169)
!4178 = !DILocation(line: 736, column: 9, scope: !4169)
!4179 = !DILocation(line: 736, column: 2, scope: !4169)
!4180 = distinct !DISubprogram(name: "kasan_check_write", scope: !4181, file: !4181, line: 44, type: !4182, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4184)
!4181 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!363, !4156, !7}
!4184 = !{!4185, !4186}
!4185 = !DILocalVariable(name: "p", arg: 1, scope: !4180, file: !4181, line: 44, type: !4156)
!4186 = !DILocalVariable(name: "size", arg: 2, scope: !4180, file: !4181, line: 44, type: !7)
!4187 = !DILocation(line: 44, column: 59, scope: !4180)
!4188 = !DILocation(line: 44, column: 75, scope: !4180)
!4189 = !DILocation(line: 46, column: 2, scope: !4180)
!4190 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4191, file: !4191, line: 229, type: !4192, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4194)
!4191 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4192 = !DISubroutineType(types: !4193)
!4193 = !{null, !4156, !63, !50}
!4194 = !{!4195, !4196, !4197}
!4195 = !DILocalVariable(name: "ptr", arg: 1, scope: !4190, file: !4191, line: 229, type: !4156)
!4196 = !DILocalVariable(name: "size", arg: 2, scope: !4190, file: !4191, line: 229, type: !63)
!4197 = !DILocalVariable(name: "type", arg: 3, scope: !4190, file: !4191, line: 230, type: !50)
!4198 = !DILocation(line: 229, column: 60, scope: !4190)
!4199 = !DILocation(line: 229, column: 72, scope: !4190)
!4200 = !DILocation(line: 230, column: 15, scope: !4190)
!4201 = !DILocation(line: 230, column: 23, scope: !4190)
!4202 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !4203, file: !4203, line: 95, type: !4135, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4204)
!4203 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!4204 = !{!4205, !4206, !4207}
!4205 = !DILocalVariable(name: "i", arg: 1, scope: !4202, file: !4203, line: 95, type: !50)
!4206 = !DILocalVariable(name: "v", arg: 2, scope: !4202, file: !4203, line: 95, type: !4137)
!4207 = !DILocalVariable(name: "__ret", scope: !4208, file: !4203, line: 97, type: !50)
!4208 = distinct !DILexicalBlock(scope: !4202, file: !4203, line: 97, column: 9)
!4209 = !DILocation(line: 95, column: 54, scope: !4202)
!4210 = !DILocation(line: 95, column: 67, scope: !4202)
!4211 = !DILocation(line: 97, column: 9, scope: !4208)
!4212 = !{i64 2148816463, i64 2148816502, i64 2148816523, i64 2148816560, i64 2148816583, i64 2148816592}
!4213 = !DILocation(line: 97, column: 9, scope: !4202)
!4214 = !DILocation(line: 97, column: 2, scope: !4202)
!4215 = distinct !DISubprogram(name: "inc_ipc_namespaces", scope: !3, file: !3, line: 28, type: !4216, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4218)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!2782, !455}
!4218 = !{!4219}
!4219 = !DILocalVariable(name: "ns", arg: 1, scope: !4215, file: !3, line: 28, type: !455)
!4220 = !DILocation(line: 28, column: 66, scope: !4215)
!4221 = !DILocation(line: 30, column: 20, scope: !4215)
!4222 = !DILocation(line: 30, column: 24, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4224, file: !3, line: 30, column: 24)
!4224 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 30, column: 24)
!4225 = !DILocation(line: 30, column: 24, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4223, file: !3, line: 30, column: 24)
!4227 = !DILocation(line: 30, column: 24, scope: !4224)
!4228 = !DILocation(line: 30, column: 9, scope: !4215)
!4229 = !DILocation(line: 30, column: 2, scope: !4215)
!4230 = !DISubprogram(name: "flush_work", scope: !184, file: !184, line: 513, type: !3985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4231 = distinct !DISubprogram(name: "kzalloc", scope: !174, file: !174, line: 719, type: !4232, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4234)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!48, !63, !210}
!4234 = !{!4235, !4236}
!4235 = !DILocalVariable(name: "size", arg: 1, scope: !4231, file: !174, line: 719, type: !63)
!4236 = !DILocalVariable(name: "flags", arg: 2, scope: !4231, file: !174, line: 719, type: !210)
!4237 = !DILocation(line: 719, column: 52, scope: !4231)
!4238 = !DILocation(line: 719, column: 64, scope: !4231)
!4239 = !DILocation(line: 721, column: 17, scope: !4231)
!4240 = !DILocation(line: 721, column: 23, scope: !4231)
!4241 = !DILocation(line: 721, column: 29, scope: !4231)
!4242 = !DILocation(line: 721, column: 9, scope: !4231)
!4243 = !DILocation(line: 721, column: 2, scope: !4231)
!4244 = distinct !DISubprogram(name: "ns_alloc_inum", scope: !495, file: !495, line: 67, type: !4245, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4247)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!50, !504}
!4247 = !{!4248}
!4248 = !DILocalVariable(name: "ns", arg: 1, scope: !4244, file: !495, line: 67, type: !504)
!4249 = !DILocation(line: 67, column: 51, scope: !4244)
!4250 = !DILocation(line: 69, column: 19, scope: !4244)
!4251 = !DILocation(line: 69, column: 23, scope: !4244)
!4252 = !DILocation(line: 69, column: 2, scope: !4244)
!4253 = !DILocation(line: 70, column: 26, scope: !4244)
!4254 = !DILocation(line: 70, column: 30, scope: !4244)
!4255 = !DILocation(line: 70, column: 9, scope: !4244)
!4256 = !DILocation(line: 70, column: 2, scope: !4244)
!4257 = distinct !DISubprogram(name: "refcount_set", scope: !147, file: !147, line: 134, type: !4258, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4260)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{null, !3958, !50}
!4260 = !{!4261, !4262}
!4261 = !DILocalVariable(name: "r", arg: 1, scope: !4257, file: !147, line: 134, type: !3958)
!4262 = !DILocalVariable(name: "n", arg: 2, scope: !4257, file: !147, line: 134, type: !50)
!4263 = !DILocation(line: 134, column: 45, scope: !4257)
!4264 = !DILocation(line: 134, column: 52, scope: !4257)
!4265 = !DILocation(line: 136, column: 14, scope: !4257)
!4266 = !DILocation(line: 136, column: 17, scope: !4257)
!4267 = !DILocation(line: 136, column: 23, scope: !4257)
!4268 = !DILocation(line: 136, column: 2, scope: !4257)
!4269 = !DILocation(line: 137, column: 1, scope: !4257)
!4270 = distinct !DISubprogram(name: "get_user_ns", scope: !160, file: !160, line: 185, type: !4271, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4273)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!455, !455}
!4273 = !{!4274}
!4274 = !DILocalVariable(name: "ns", arg: 1, scope: !4270, file: !160, line: 185, type: !455)
!4275 = !DILocation(line: 185, column: 73, scope: !4270)
!4276 = !DILocation(line: 187, column: 2, scope: !4270)
!4277 = !DISubprogram(name: "mq_init_ns", scope: !2624, file: !2624, line: 93, type: !4278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!50, !2622}
!4280 = !DISubprogram(name: "setup_mq_sysctls", scope: !2624, file: !2624, line: 181, type: !4281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!363, !2622}
!4283 = !DISubprogram(name: "setup_ipc_sysctls", scope: !2624, file: !2624, line: 198, type: !4281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4284 = !DISubprogram(name: "msg_init_ns", scope: !3920, file: !3920, line: 65, type: !4278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4285 = !DISubprogram(name: "sem_init_ns", scope: !3920, file: !3920, line: 64, type: !3932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4286 = !DISubprogram(name: "shm_init_ns", scope: !3920, file: !3920, line: 66, type: !3932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4287 = !DISubprogram(name: "retire_ipc_sysctls", scope: !2624, file: !2624, line: 199, type: !3932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4288 = !DISubprogram(name: "retire_mq_sysctls", scope: !2624, file: !2624, line: 180, type: !3932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4289 = distinct !DISubprogram(name: "put_user_ns", scope: !160, file: !160, line: 203, type: !4290, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4292)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{null, !455}
!4292 = !{!4293}
!4293 = !DILocalVariable(name: "ns", arg: 1, scope: !4289, file: !160, line: 203, type: !455)
!4294 = !DILocation(line: 203, column: 55, scope: !4289)
!4295 = !DILocation(line: 205, column: 1, scope: !4289)
!4296 = !DISubprogram(name: "proc_free_inum", scope: !495, file: !495, line: 54, type: !4297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{null, !7}
!4299 = !DISubprogram(name: "kfree", scope: !174, file: !174, line: 227, type: !4300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{null, !2666}
!4302 = distinct !DISubprogram(name: "dec_ipc_namespaces", scope: !3, file: !3, line: 33, type: !4303, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4305)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{null, !2782}
!4305 = !{!4306}
!4306 = !DILocalVariable(name: "ucounts", arg: 1, scope: !4302, file: !3, line: 33, type: !2782)
!4307 = !DILocation(line: 33, column: 48, scope: !4302)
!4308 = !DILocation(line: 35, column: 13, scope: !4302)
!4309 = !DILocation(line: 35, column: 2, scope: !4302)
!4310 = !DILocation(line: 36, column: 1, scope: !4302)
!4311 = distinct !DISubprogram(name: "ERR_PTR", scope: !4312, file: !4312, line: 39, type: !4313, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4315)
!4312 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!48, !1079}
!4315 = !{!4316}
!4316 = !DILocalVariable(name: "error", arg: 1, scope: !4311, file: !4312, line: 39, type: !1079)
!4317 = !DILocation(line: 39, column: 48, scope: !4311)
!4318 = !DILocation(line: 41, column: 18, scope: !4311)
!4319 = !DILocation(line: 41, column: 9, scope: !4311)
!4320 = !DILocation(line: 41, column: 2, scope: !4311)
!4321 = !DISubprogram(name: "inc_ucount", scope: !160, file: !160, line: 121, type: !4322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!2782, !455, !226, !159}
!4324 = distinct !DISubprogram(name: "get_current", scope: !4325, file: !4325, line: 39, type: !4326, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4328)
!4325 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!505}
!4328 = !{!4329, !4331, !4333}
!4329 = !DILocalVariable(name: "pscr_ret__", scope: !4330, file: !4325, line: 41, type: !505)
!4330 = distinct !DILexicalBlock(scope: !4324, file: !4325, line: 41, column: 9)
!4331 = !DILocalVariable(name: "__vpp_verify", scope: !4332, file: !4325, line: 41, type: !2666)
!4332 = distinct !DILexicalBlock(scope: !4330, file: !4325, line: 41, column: 9)
!4333 = !DILocalVariable(name: "pfo_val__", scope: !4334, file: !4325, line: 41, type: !253)
!4334 = distinct !DILexicalBlock(scope: !4330, file: !4325, line: 41, column: 9)
!4335 = !DILocation(line: 41, column: 9, scope: !4330)
!4336 = !DILocation(line: 41, column: 9, scope: !4332)
!4337 = !DILocation(line: 41, column: 9, scope: !4334)
!4338 = !{i64 2148267521}
!4339 = !DILocation(line: 41, column: 9, scope: !4324)
!4340 = !DILocation(line: 41, column: 2, scope: !4324)
!4341 = distinct !DISubprogram(name: "kmalloc", scope: !174, file: !174, line: 591, type: !4232, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4342)
!4342 = !{!4343, !4344, !4345}
!4343 = !DILocalVariable(name: "size", arg: 1, scope: !4341, file: !174, line: 591, type: !63)
!4344 = !DILocalVariable(name: "flags", arg: 2, scope: !4341, file: !174, line: 591, type: !210)
!4345 = !DILocalVariable(name: "index", scope: !4346, file: !174, line: 594, type: !7)
!4346 = distinct !DILexicalBlock(scope: !4347, file: !174, line: 593, column: 42)
!4347 = distinct !DILexicalBlock(scope: !4341, file: !174, line: 593, column: 6)
!4348 = !DILocation(line: 591, column: 61, scope: !4341)
!4349 = !DILocation(line: 591, column: 73, scope: !4341)
!4350 = !DILocation(line: 593, column: 27, scope: !4347)
!4351 = !DILocation(line: 593, column: 6, scope: !4347)
!4352 = !DILocation(line: 593, column: 33, scope: !4347)
!4353 = !DILocation(line: 593, column: 36, scope: !4347)
!4354 = !DILocation(line: 593, column: 6, scope: !4341)
!4355 = !DILocation(line: 594, column: 3, scope: !4346)
!4356 = !DILocation(line: 594, column: 16, scope: !4346)
!4357 = !DILocation(line: 596, column: 7, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4346, file: !174, line: 596, column: 7)
!4359 = !DILocation(line: 596, column: 12, scope: !4358)
!4360 = !DILocation(line: 596, column: 7, scope: !4346)
!4361 = !DILocation(line: 597, column: 25, scope: !4358)
!4362 = !DILocation(line: 597, column: 31, scope: !4358)
!4363 = !DILocation(line: 597, column: 11, scope: !4358)
!4364 = !DILocation(line: 597, column: 4, scope: !4358)
!4365 = !DILocation(line: 599, column: 11, scope: !4346)
!4366 = !DILocation(line: 599, column: 9, scope: !4346)
!4367 = !DILocation(line: 601, column: 33, scope: !4346)
!4368 = !DILocation(line: 601, column: 40, scope: !4346)
!4369 = !DILocation(line: 601, column: 20, scope: !4346)
!4370 = !DILocation(line: 601, column: 5, scope: !4346)
!4371 = !DILocation(line: 601, column: 51, scope: !4346)
!4372 = !DILocation(line: 602, column: 5, scope: !4346)
!4373 = !DILocation(line: 602, column: 12, scope: !4346)
!4374 = !DILocation(line: 600, column: 10, scope: !4346)
!4375 = !DILocation(line: 600, column: 3, scope: !4346)
!4376 = !DILocation(line: 603, column: 2, scope: !4347)
!4377 = !DILocation(line: 604, column: 19, scope: !4341)
!4378 = !DILocation(line: 604, column: 25, scope: !4341)
!4379 = !DILocation(line: 604, column: 9, scope: !4341)
!4380 = !DILocation(line: 604, column: 2, scope: !4341)
!4381 = !DILocation(line: 605, column: 1, scope: !4341)
!4382 = !DISubprogram(name: "kmalloc_large", scope: !174, file: !174, line: 531, type: !4232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4383 = distinct !DISubprogram(name: "__kmalloc_index", scope: !174, file: !174, line: 444, type: !4384, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4386)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!7, !63, !363}
!4386 = !{!4387, !4388}
!4387 = !DILocalVariable(name: "size", arg: 1, scope: !4383, file: !174, line: 444, type: !63)
!4388 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4383, file: !174, line: 445, type: !363)
!4389 = !DILocation(line: 444, column: 60, scope: !4383)
!4390 = !DILocation(line: 445, column: 16, scope: !4383)
!4391 = !DILocation(line: 447, column: 7, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 447, column: 6)
!4393 = !DILocation(line: 447, column: 6, scope: !4383)
!4394 = !DILocation(line: 448, column: 3, scope: !4392)
!4395 = !DILocation(line: 450, column: 6, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 450, column: 6)
!4397 = !DILocation(line: 450, column: 11, scope: !4396)
!4398 = !DILocation(line: 450, column: 6, scope: !4383)
!4399 = !DILocation(line: 451, column: 3, scope: !4396)
!4400 = !DILocation(line: 453, column: 32, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 453, column: 6)
!4402 = !DILocation(line: 453, column: 37, scope: !4401)
!4403 = !DILocation(line: 453, column: 42, scope: !4401)
!4404 = !DILocation(line: 453, column: 45, scope: !4401)
!4405 = !DILocation(line: 453, column: 50, scope: !4401)
!4406 = !DILocation(line: 453, column: 6, scope: !4383)
!4407 = !DILocation(line: 454, column: 3, scope: !4401)
!4408 = !DILocation(line: 455, column: 32, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 455, column: 6)
!4410 = !DILocation(line: 455, column: 37, scope: !4409)
!4411 = !DILocation(line: 455, column: 43, scope: !4409)
!4412 = !DILocation(line: 455, column: 46, scope: !4409)
!4413 = !DILocation(line: 455, column: 51, scope: !4409)
!4414 = !DILocation(line: 455, column: 6, scope: !4383)
!4415 = !DILocation(line: 456, column: 3, scope: !4409)
!4416 = !DILocation(line: 457, column: 6, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 457, column: 6)
!4418 = !DILocation(line: 457, column: 11, scope: !4417)
!4419 = !DILocation(line: 457, column: 6, scope: !4383)
!4420 = !DILocation(line: 457, column: 26, scope: !4417)
!4421 = !DILocation(line: 458, column: 6, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 458, column: 6)
!4423 = !DILocation(line: 458, column: 11, scope: !4422)
!4424 = !DILocation(line: 458, column: 6, scope: !4383)
!4425 = !DILocation(line: 458, column: 26, scope: !4422)
!4426 = !DILocation(line: 459, column: 6, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 459, column: 6)
!4428 = !DILocation(line: 459, column: 11, scope: !4427)
!4429 = !DILocation(line: 459, column: 6, scope: !4383)
!4430 = !DILocation(line: 459, column: 26, scope: !4427)
!4431 = !DILocation(line: 460, column: 6, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 460, column: 6)
!4433 = !DILocation(line: 460, column: 11, scope: !4432)
!4434 = !DILocation(line: 460, column: 6, scope: !4383)
!4435 = !DILocation(line: 460, column: 26, scope: !4432)
!4436 = !DILocation(line: 461, column: 6, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 461, column: 6)
!4438 = !DILocation(line: 461, column: 11, scope: !4437)
!4439 = !DILocation(line: 461, column: 6, scope: !4383)
!4440 = !DILocation(line: 461, column: 26, scope: !4437)
!4441 = !DILocation(line: 462, column: 6, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 462, column: 6)
!4443 = !DILocation(line: 462, column: 11, scope: !4442)
!4444 = !DILocation(line: 462, column: 6, scope: !4383)
!4445 = !DILocation(line: 462, column: 26, scope: !4442)
!4446 = !DILocation(line: 463, column: 6, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 463, column: 6)
!4448 = !DILocation(line: 463, column: 11, scope: !4447)
!4449 = !DILocation(line: 463, column: 6, scope: !4383)
!4450 = !DILocation(line: 463, column: 26, scope: !4447)
!4451 = !DILocation(line: 464, column: 6, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 464, column: 6)
!4453 = !DILocation(line: 464, column: 11, scope: !4452)
!4454 = !DILocation(line: 464, column: 6, scope: !4383)
!4455 = !DILocation(line: 464, column: 26, scope: !4452)
!4456 = !DILocation(line: 465, column: 6, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 465, column: 6)
!4458 = !DILocation(line: 465, column: 11, scope: !4457)
!4459 = !DILocation(line: 465, column: 6, scope: !4383)
!4460 = !DILocation(line: 465, column: 26, scope: !4457)
!4461 = !DILocation(line: 466, column: 6, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 466, column: 6)
!4463 = !DILocation(line: 466, column: 11, scope: !4462)
!4464 = !DILocation(line: 466, column: 6, scope: !4383)
!4465 = !DILocation(line: 466, column: 26, scope: !4462)
!4466 = !DILocation(line: 467, column: 6, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 467, column: 6)
!4468 = !DILocation(line: 467, column: 11, scope: !4467)
!4469 = !DILocation(line: 467, column: 6, scope: !4383)
!4470 = !DILocation(line: 467, column: 26, scope: !4467)
!4471 = !DILocation(line: 468, column: 6, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 468, column: 6)
!4473 = !DILocation(line: 468, column: 11, scope: !4472)
!4474 = !DILocation(line: 468, column: 6, scope: !4383)
!4475 = !DILocation(line: 468, column: 26, scope: !4472)
!4476 = !DILocation(line: 469, column: 6, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 469, column: 6)
!4478 = !DILocation(line: 469, column: 11, scope: !4477)
!4479 = !DILocation(line: 469, column: 6, scope: !4383)
!4480 = !DILocation(line: 469, column: 26, scope: !4477)
!4481 = !DILocation(line: 470, column: 6, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 470, column: 6)
!4483 = !DILocation(line: 470, column: 11, scope: !4482)
!4484 = !DILocation(line: 470, column: 6, scope: !4383)
!4485 = !DILocation(line: 470, column: 26, scope: !4482)
!4486 = !DILocation(line: 471, column: 6, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 471, column: 6)
!4488 = !DILocation(line: 471, column: 11, scope: !4487)
!4489 = !DILocation(line: 471, column: 6, scope: !4383)
!4490 = !DILocation(line: 471, column: 26, scope: !4487)
!4491 = !DILocation(line: 472, column: 6, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 472, column: 6)
!4493 = !DILocation(line: 472, column: 11, scope: !4492)
!4494 = !DILocation(line: 472, column: 6, scope: !4383)
!4495 = !DILocation(line: 472, column: 26, scope: !4492)
!4496 = !DILocation(line: 473, column: 6, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 473, column: 6)
!4498 = !DILocation(line: 473, column: 11, scope: !4497)
!4499 = !DILocation(line: 473, column: 6, scope: !4383)
!4500 = !DILocation(line: 473, column: 26, scope: !4497)
!4501 = !DILocation(line: 474, column: 6, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 474, column: 6)
!4503 = !DILocation(line: 474, column: 11, scope: !4502)
!4504 = !DILocation(line: 474, column: 6, scope: !4383)
!4505 = !DILocation(line: 474, column: 27, scope: !4502)
!4506 = !DILocation(line: 475, column: 6, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 475, column: 6)
!4508 = !DILocation(line: 475, column: 11, scope: !4507)
!4509 = !DILocation(line: 475, column: 6, scope: !4383)
!4510 = !DILocation(line: 475, column: 32, scope: !4507)
!4511 = !DILocation(line: 477, column: 50, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4383, file: !174, line: 477, column: 6)
!4513 = !{i8 0, i8 2}
!4514 = !DILocation(line: 477, column: 6, scope: !4383)
!4515 = !DILocation(line: 478, column: 3, scope: !4512)
!4516 = !DILocation(line: 478, column: 3, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4518, file: !174, line: 478, column: 3)
!4518 = distinct !DILexicalBlock(scope: !4512, file: !174, line: 478, column: 3)
!4519 = !{i32 -2142814973}
!4520 = !DILocation(line: 478, column: 3, scope: !4518)
!4521 = !DILocation(line: 480, column: 3, scope: !4512)
!4522 = !DILocation(line: 480, column: 3, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4512, file: !174, line: 480, column: 3)
!4524 = !DILocation(line: 480, column: 3, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4523, file: !174, line: 480, column: 3)
!4526 = !DILocation(line: 480, column: 3, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4523, file: !174, line: 480, column: 3)
!4528 = !{i64 2152152526, i64 2152152555, i64 2152152601, i64 2152152659, i64 2152152713, i64 2152152767, i64 2152152822, i64 2152152853}
!4529 = !DILocation(line: 483, column: 2, scope: !4383)
!4530 = !DILocation(line: 484, column: 1, scope: !4383)
!4531 = !DISubprogram(name: "kmalloc_trace", scope: !174, file: !174, line: 525, type: !4532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!48, !4534, !210, !63}
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4536, line: 11, flags: DIFlagFwdDecl)
!4536 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!4537 = distinct !DISubprogram(name: "kmalloc_type", scope: !174, file: !174, line: 401, type: !4538, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4540)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!173, !210, !67}
!4540 = !{!4541, !4542}
!4541 = !DILocalVariable(name: "flags", arg: 1, scope: !4537, file: !174, line: 401, type: !210)
!4542 = !DILocalVariable(name: "caller", arg: 2, scope: !4537, file: !174, line: 401, type: !67)
!4543 = !DILocation(line: 401, column: 67, scope: !4537)
!4544 = !DILocation(line: 401, column: 88, scope: !4537)
!4545 = !DILocation(line: 407, column: 6, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4537, file: !174, line: 407, column: 6)
!4547 = !DILocation(line: 407, column: 6, scope: !4537)
!4548 = !DILocation(line: 413, column: 3, scope: !4546)
!4549 = !DILocation(line: 423, column: 38, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4537, file: !174, line: 423, column: 6)
!4551 = !DILocation(line: 423, column: 44, scope: !4550)
!4552 = !DILocation(line: 423, column: 6, scope: !4537)
!4553 = !DILocation(line: 424, column: 3, scope: !4550)
!4554 = !DILocation(line: 426, column: 3, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4537, file: !174, line: 425, column: 6)
!4556 = !DILocation(line: 429, column: 1, scope: !4537)
!4557 = !DISubprogram(name: "__kmalloc", scope: !174, file: !174, line: 488, type: !4232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4558 = !DISubprogram(name: "__compiletime_assert_189", scope: !174, file: !174, line: 478, type: !2978, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4559 = distinct !DISubprogram(name: "atomic_long_set", scope: !4134, file: !4134, line: 3193, type: !4560, scopeLine: 3194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4562)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{null, !1683, !1079}
!4562 = !{!4563, !4564}
!4563 = !DILocalVariable(name: "v", arg: 1, scope: !4559, file: !4134, line: 3193, type: !1683)
!4564 = !DILocalVariable(name: "i", arg: 2, scope: !4559, file: !4134, line: 3193, type: !1079)
!4565 = !DILocation(line: 3193, column: 32, scope: !4559)
!4566 = !DILocation(line: 3193, column: 40, scope: !4559)
!4567 = !DILocation(line: 3195, column: 26, scope: !4559)
!4568 = !DILocation(line: 3195, column: 2, scope: !4559)
!4569 = !DILocation(line: 3196, column: 22, scope: !4559)
!4570 = !DILocation(line: 3196, column: 25, scope: !4559)
!4571 = !DILocation(line: 3196, column: 2, scope: !4559)
!4572 = !DILocation(line: 3197, column: 1, scope: !4559)
!4573 = !DISubprogram(name: "proc_alloc_inum", scope: !495, file: !495, line: 53, type: !4574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4574 = !DISubroutineType(types: !4575)
!4575 = !{!50, !1578}
!4576 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4153, file: !4153, line: 80, type: !4154, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4577)
!4577 = !{!4578, !4579}
!4578 = !DILocalVariable(name: "v", arg: 1, scope: !4576, file: !4153, line: 80, type: !4156)
!4579 = !DILocalVariable(name: "size", arg: 2, scope: !4576, file: !4153, line: 80, type: !63)
!4580 = !DILocation(line: 80, column: 74, scope: !4576)
!4581 = !DILocation(line: 80, column: 84, scope: !4576)
!4582 = !DILocation(line: 82, column: 20, scope: !4576)
!4583 = !DILocation(line: 82, column: 23, scope: !4576)
!4584 = !DILocation(line: 82, column: 2, scope: !4576)
!4585 = !DILocation(line: 83, column: 2, scope: !4576)
!4586 = !DILocation(line: 84, column: 1, scope: !4576)
!4587 = distinct !DISubprogram(name: "raw_atomic_long_set", scope: !218, file: !218, line: 76, type: !4560, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4588)
!4588 = !{!4589, !4590}
!4589 = !DILocalVariable(name: "v", arg: 1, scope: !4587, file: !218, line: 76, type: !1683)
!4590 = !DILocalVariable(name: "i", arg: 2, scope: !4587, file: !218, line: 76, type: !1079)
!4591 = !DILocation(line: 76, column: 36, scope: !4587)
!4592 = !DILocation(line: 76, column: 44, scope: !4587)
!4593 = !DILocation(line: 79, column: 19, scope: !4587)
!4594 = !DILocation(line: 79, column: 22, scope: !4587)
!4595 = !DILocation(line: 79, column: 2, scope: !4587)
!4596 = !DILocation(line: 83, column: 1, scope: !4587)
!4597 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !4170, file: !4170, line: 2600, type: !4598, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4601)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{null, !4600, !223}
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!4601 = !{!4602, !4603}
!4602 = !DILocalVariable(name: "v", arg: 1, scope: !4597, file: !4170, line: 2600, type: !4600)
!4603 = !DILocalVariable(name: "i", arg: 2, scope: !4597, file: !4170, line: 2600, type: !223)
!4604 = !DILocation(line: 2600, column: 30, scope: !4597)
!4605 = !DILocation(line: 2600, column: 37, scope: !4597)
!4606 = !DILocation(line: 2602, column: 20, scope: !4597)
!4607 = !DILocation(line: 2602, column: 23, scope: !4597)
!4608 = !DILocation(line: 2602, column: 2, scope: !4597)
!4609 = !DILocation(line: 2603, column: 1, scope: !4597)
!4610 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !4611, file: !4611, line: 18, type: !4598, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4612)
!4611 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!4612 = !{!4613, !4614}
!4613 = !DILocalVariable(name: "v", arg: 1, scope: !4610, file: !4611, line: 18, type: !4600)
!4614 = !DILocalVariable(name: "i", arg: 2, scope: !4610, file: !4611, line: 18, type: !223)
!4615 = !DILocation(line: 18, column: 59, scope: !4610)
!4616 = !DILocation(line: 18, column: 66, scope: !4610)
!4617 = !DILocation(line: 20, column: 2, scope: !4610)
!4618 = !DILocation(line: 20, column: 2, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4610, file: !4611, line: 20, column: 2)
!4620 = !DILocation(line: 21, column: 1, scope: !4610)
!4621 = distinct !DISubprogram(name: "atomic_set", scope: !4134, file: !4134, line: 65, type: !4622, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4624)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{null, !4137, !50}
!4624 = !{!4625, !4626}
!4625 = !DILocalVariable(name: "v", arg: 1, scope: !4621, file: !4134, line: 65, type: !4137)
!4626 = !DILocalVariable(name: "i", arg: 2, scope: !4621, file: !4134, line: 65, type: !50)
!4627 = !DILocation(line: 65, column: 22, scope: !4621)
!4628 = !DILocation(line: 65, column: 29, scope: !4621)
!4629 = !DILocation(line: 67, column: 26, scope: !4621)
!4630 = !DILocation(line: 67, column: 2, scope: !4621)
!4631 = !DILocation(line: 68, column: 17, scope: !4621)
!4632 = !DILocation(line: 68, column: 20, scope: !4621)
!4633 = !DILocation(line: 68, column: 2, scope: !4621)
!4634 = !DILocation(line: 69, column: 1, scope: !4621)
!4635 = distinct !DISubprogram(name: "raw_atomic_set", scope: !4170, file: !4170, line: 488, type: !4622, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4636)
!4636 = !{!4637, !4638}
!4637 = !DILocalVariable(name: "v", arg: 1, scope: !4635, file: !4170, line: 488, type: !4137)
!4638 = !DILocalVariable(name: "i", arg: 2, scope: !4635, file: !4170, line: 488, type: !50)
!4639 = !DILocation(line: 488, column: 26, scope: !4635)
!4640 = !DILocation(line: 488, column: 33, scope: !4635)
!4641 = !DILocation(line: 490, column: 18, scope: !4635)
!4642 = !DILocation(line: 490, column: 21, scope: !4635)
!4643 = !DILocation(line: 490, column: 2, scope: !4635)
!4644 = !DILocation(line: 491, column: 1, scope: !4635)
!4645 = distinct !DISubprogram(name: "arch_atomic_set", scope: !4203, file: !4203, line: 26, type: !4622, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4646)
!4646 = !{!4647, !4648}
!4647 = !DILocalVariable(name: "v", arg: 1, scope: !4645, file: !4203, line: 26, type: !4137)
!4648 = !DILocalVariable(name: "i", arg: 2, scope: !4645, file: !4203, line: 26, type: !50)
!4649 = !DILocation(line: 26, column: 55, scope: !4645)
!4650 = !DILocation(line: 26, column: 62, scope: !4645)
!4651 = !DILocation(line: 28, column: 2, scope: !4645)
!4652 = !DILocation(line: 28, column: 2, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4645, file: !4203, line: 28, column: 2)
!4654 = !DILocation(line: 29, column: 1, scope: !4645)
!4655 = !DISubprogram(name: "dec_ucount", scope: !160, file: !160, line: 122, type: !4656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{null, !2782, !159}
!4658 = !DISubprogram(name: "__rcu_read_lock", scope: !3910, file: !3910, line: 74, type: !2978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4659 = distinct !DISubprogram(name: "spin_lock", scope: !3962, file: !3962, line: 349, type: !3963, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4660)
!4660 = !{!4661}
!4661 = !DILocalVariable(name: "lock", arg: 1, scope: !4659, file: !3962, line: 349, type: !3959)
!4662 = !DILocation(line: 349, column: 51, scope: !4659)
!4663 = !DILocation(line: 351, column: 2, scope: !4659)
!4664 = !DILocation(line: 352, column: 1, scope: !4659)
!4665 = !DISubprogram(name: "_raw_spin_lock", scope: !4666, file: !4666, line: 22, type: !4667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4666 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4667 = !DISubroutineType(types: !4668)
!4668 = !{null, !4669}
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!4670 = !DISubprogram(name: "_raw_spin_unlock", scope: !4666, file: !4666, line: 39, type: !4667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4671 = !DISubprogram(name: "llist_add_batch", scope: !529, file: !529, line: 199, type: !4672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!363, !532, !532, !3973}
!4674 = distinct !DISubprogram(name: "queue_work", scope: !184, file: !184, line: 559, type: !4675, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4677)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!363, !1691, !1722}
!4677 = !{!4678, !4679}
!4678 = !DILocalVariable(name: "wq", arg: 1, scope: !4674, file: !184, line: 559, type: !1691)
!4679 = !DILocalVariable(name: "work", arg: 2, scope: !4674, file: !184, line: 560, type: !1722)
!4680 = !DILocation(line: 559, column: 56, scope: !4674)
!4681 = !DILocation(line: 560, column: 30, scope: !4674)
!4682 = !DILocation(line: 562, column: 41, scope: !4674)
!4683 = !DILocation(line: 562, column: 45, scope: !4674)
!4684 = !DILocation(line: 562, column: 9, scope: !4674)
!4685 = !DILocation(line: 562, column: 2, scope: !4674)
!4686 = !DISubprogram(name: "queue_work_on", scope: !184, file: !184, line: 496, type: !4687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!363, !50, !1691, !1722}
!4689 = distinct !DISubprogram(name: "free_ipc", scope: !3, file: !3, line: 169, type: !1720, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4690)
!4690 = !{!4691, !4692, !4693, !4694, !4695, !4698, !4701, !4704}
!4691 = !DILocalVariable(name: "unused", arg: 1, scope: !4689, file: !3, line: 169, type: !1722)
!4692 = !DILocalVariable(name: "node", scope: !4689, file: !3, line: 171, type: !532)
!4693 = !DILocalVariable(name: "n", scope: !4689, file: !3, line: 172, type: !2622)
!4694 = !DILocalVariable(name: "t", scope: !4689, file: !3, line: 172, type: !2622)
!4695 = !DILocalVariable(name: "__mptr", scope: !4696, file: !3, line: 174, type: !48)
!4696 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 174, column: 2)
!4697 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 174, column: 2)
!4698 = !DILocalVariable(name: "__mptr", scope: !4699, file: !3, line: 174, type: !48)
!4699 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 174, column: 2)
!4700 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 174, column: 2)
!4701 = !DILocalVariable(name: "__mptr", scope: !4702, file: !3, line: 180, type: !48)
!4702 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 180, column: 2)
!4703 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 180, column: 2)
!4704 = !DILocalVariable(name: "__mptr", scope: !4705, file: !3, line: 180, type: !48)
!4705 = distinct !DILexicalBlock(scope: !4706, file: !3, line: 180, column: 2)
!4706 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 180, column: 2)
!4707 = !DILocation(line: 169, column: 42, scope: !4689)
!4708 = !DILocation(line: 171, column: 2, scope: !4689)
!4709 = !DILocation(line: 171, column: 21, scope: !4689)
!4710 = !DILocation(line: 171, column: 28, scope: !4689)
!4711 = !DILocation(line: 172, column: 2, scope: !4689)
!4712 = !DILocation(line: 172, column: 24, scope: !4689)
!4713 = !DILocation(line: 172, column: 28, scope: !4689)
!4714 = !DILocation(line: 174, column: 2, scope: !4696)
!4715 = !DILocation(line: 174, column: 2, scope: !4697)
!4716 = !DILocation(line: 174, column: 2, scope: !4700)
!4717 = !DILocation(line: 174, column: 2, scope: !4699)
!4718 = !DILocation(line: 0, scope: !4700)
!4719 = !DILocation(line: 175, column: 22, scope: !4700)
!4720 = !DILocation(line: 175, column: 25, scope: !4700)
!4721 = !DILocation(line: 175, column: 3, scope: !4700)
!4722 = distinct !{!4722, !4715, !4723, !3894, !3895}
!4723 = !DILocation(line: 175, column: 31, scope: !4697)
!4724 = !DILocation(line: 178, column: 2, scope: !4689)
!4725 = !DILocation(line: 180, column: 2, scope: !4702)
!4726 = !DILocation(line: 180, column: 2, scope: !4703)
!4727 = !DILocation(line: 180, column: 2, scope: !4706)
!4728 = !DILocation(line: 180, column: 2, scope: !4705)
!4729 = !DILocation(line: 0, scope: !4706)
!4730 = !DILocation(line: 181, column: 15, scope: !4706)
!4731 = !DILocation(line: 181, column: 3, scope: !4706)
!4732 = distinct !{!4732, !4726, !4733, !3894, !3895}
!4733 = !DILocation(line: 181, column: 16, scope: !4703)
!4734 = !DILocation(line: 182, column: 1, scope: !4689)
!4735 = distinct !DISubprogram(name: "llist_del_all", scope: !529, file: !529, line: 237, type: !4736, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4738)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!532, !3973}
!4738 = !{!4739, !4740, !4743}
!4739 = !DILocalVariable(name: "head", arg: 1, scope: !4735, file: !529, line: 237, type: !3973)
!4740 = !DILocalVariable(name: "__ai_ptr", scope: !4741, file: !529, line: 239, type: !4742)
!4741 = distinct !DILexicalBlock(scope: !4735, file: !529, line: 239, column: 9)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!4743 = !DILocalVariable(name: "__ret", scope: !4744, file: !529, line: 239, type: !532)
!4744 = distinct !DILexicalBlock(scope: !4741, file: !529, line: 239, column: 9)
!4745 = !DILocation(line: 237, column: 67, scope: !4735)
!4746 = !DILocation(line: 239, column: 9, scope: !4741)
!4747 = !DILocation(line: 239, column: 9, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4741, file: !529, line: 239, column: 9)
!4749 = !DILocation(line: 239, column: 9, scope: !4744)
!4750 = !{i64 2149526460}
!4751 = !DILocation(line: 239, column: 9, scope: !4735)
!4752 = !DILocation(line: 239, column: 2, scope: !4735)
!4753 = !DISubprogram(name: "mnt_make_shortterm", scope: !927, file: !927, line: 89, type: !4754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{null, !925}
!4756 = !DISubprogram(name: "synchronize_rcu", scope: !3910, file: !3910, line: 45, type: !2978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4757 = distinct !DISubprogram(name: "free_ipc_ns", scope: !3, file: !3, line: 148, type: !3932, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4758)
!4758 = !{!4759}
!4759 = !DILocalVariable(name: "ns", arg: 1, scope: !4757, file: !3, line: 148, type: !2622)
!4760 = !DILocation(line: 148, column: 47, scope: !4757)
!4761 = !DILocation(line: 154, column: 9, scope: !4757)
!4762 = !DILocation(line: 154, column: 13, scope: !4757)
!4763 = !DILocation(line: 154, column: 2, scope: !4757)
!4764 = !DILocation(line: 155, column: 14, scope: !4757)
!4765 = !DILocation(line: 155, column: 2, scope: !4757)
!4766 = !DILocation(line: 156, column: 14, scope: !4757)
!4767 = !DILocation(line: 156, column: 2, scope: !4757)
!4768 = !DILocation(line: 157, column: 14, scope: !4757)
!4769 = !DILocation(line: 157, column: 2, scope: !4757)
!4770 = !DILocation(line: 159, column: 20, scope: !4757)
!4771 = !DILocation(line: 159, column: 2, scope: !4757)
!4772 = !DILocation(line: 160, column: 21, scope: !4757)
!4773 = !DILocation(line: 160, column: 2, scope: !4757)
!4774 = !DILocation(line: 162, column: 21, scope: !4757)
!4775 = !DILocation(line: 162, column: 25, scope: !4757)
!4776 = !DILocation(line: 162, column: 2, scope: !4757)
!4777 = !DILocation(line: 163, column: 14, scope: !4757)
!4778 = !DILocation(line: 163, column: 18, scope: !4757)
!4779 = !DILocation(line: 163, column: 2, scope: !4757)
!4780 = !DILocation(line: 164, column: 2, scope: !4757)
!4781 = !DILocation(line: 165, column: 8, scope: !4757)
!4782 = !DILocation(line: 165, column: 2, scope: !4757)
!4783 = !DILocation(line: 166, column: 1, scope: !4757)
!4784 = !DISubprogram(name: "mntput", scope: !927, file: !927, line: 87, type: !4754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4785 = !DISubprogram(name: "sem_exit_ns", scope: !3920, file: !3920, line: 68, type: !3932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4786 = !DISubprogram(name: "msg_exit_ns", scope: !3920, file: !3920, line: 69, type: !3932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4787 = !DISubprogram(name: "shm_exit_ns", scope: !3920, file: !3920, line: 70, type: !3932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4788 = distinct !DISubprogram(name: "task_lock", scope: !4789, file: !4789, line: 220, type: !4790, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4792)
!4789 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!4790 = !DISubroutineType(types: !4791)
!4791 = !{null, !505}
!4792 = !{!4793}
!4793 = !DILocalVariable(name: "p", arg: 1, scope: !4788, file: !4789, line: 220, type: !505)
!4794 = !DILocation(line: 220, column: 50, scope: !4788)
!4795 = !DILocation(line: 222, column: 13, scope: !4788)
!4796 = !DILocation(line: 222, column: 16, scope: !4788)
!4797 = !DILocation(line: 222, column: 2, scope: !4788)
!4798 = !DILocation(line: 223, column: 1, scope: !4788)
!4799 = distinct !DISubprogram(name: "task_unlock", scope: !4789, file: !4789, line: 225, type: !4790, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4800)
!4800 = !{!4801}
!4801 = !DILocalVariable(name: "p", arg: 1, scope: !4799, file: !4789, line: 225, type: !505)
!4802 = !DILocation(line: 225, column: 52, scope: !4799)
!4803 = !DILocation(line: 227, column: 15, scope: !4799)
!4804 = !DILocation(line: 227, column: 18, scope: !4799)
!4805 = !DILocation(line: 227, column: 2, scope: !4799)
!4806 = !DILocation(line: 228, column: 1, scope: !4799)
!4807 = distinct !DISubprogram(name: "to_ipc_ns", scope: !3, file: !3, line: 211, type: !4808, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4810)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!2622, !504}
!4810 = !{!4811, !4812}
!4811 = !DILocalVariable(name: "ns", arg: 1, scope: !4807, file: !3, line: 211, type: !504)
!4812 = !DILocalVariable(name: "__mptr", scope: !4813, file: !3, line: 213, type: !48)
!4813 = distinct !DILexicalBlock(scope: !4807, file: !3, line: 213, column: 9)
!4814 = !DILocation(line: 211, column: 65, scope: !4807)
!4815 = !DILocation(line: 213, column: 9, scope: !4813)
!4816 = !DILocation(line: 213, column: 9, scope: !4807)
!4817 = !DILocation(line: 213, column: 2, scope: !4807)
!4818 = !DISubprogram(name: "ns_capable", scope: !249, file: !249, line: 149, type: !4819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!363, !455, !50}
