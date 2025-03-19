; ModuleID = 'fs/proc_namespace.c'
source_filename = "fs/proc_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lockdep_map = type {}
%struct.proc_fs_opts = type { i32, ptr }
%struct.mnt_idmap = type opaque
%struct.file = type { %union.anon.13, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.14, %struct.qspinlock }
%union.anon.14 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.proc_mounts = type { ptr, %struct.path, ptr, %struct.mount }
%struct.mount = type { %struct.hlist_node, ptr, ptr, %struct.vfsmount, %union.anon.16, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %union.anon.17, %struct.list_head, ptr, i32, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%struct.hlist_node = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%union.anon.16 = type { %struct.callback_head }
%union.anon.17 = type { %struct.hlist_node }
%struct.hlist_head = type { ptr }
%struct.mnt_namespace = type { %struct.ns_common, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, i64, %struct.wait_queue_head, i64, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.poll_table_struct = type { ptr, i32 }
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
%struct.nsproxy = type { %struct.refcount_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.26, %struct.list_head, %struct.list_head, %union.anon.27 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.22, ptr }
%union.anon.22 = type { i64 }
%struct.lockref = type { %union.anon.24 }
%union.anon.24 = type { i64 }
%union.anon.26 = type { %struct.list_head }
%union.anon.27 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i64, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i16, i16, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i64, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.proc_inode = type { ptr, i32, %union.proc_op, ptr, ptr, ptr, %struct.hlist_node, ptr, %struct.inode }
%union.proc_op = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.18, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.19, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.20, ptr, %struct.address_space, %struct.list_head, %union.anon.21, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.18 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.19 = type { %struct.callback_head }
%union.anon.20 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.21 = type { ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.lock_class_key = type {}

@proc_mounts_operations = hidden constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr null, ptr null, ptr @seq_read_iter, ptr null, ptr null, ptr null, ptr @mounts_poll, ptr null, ptr null, ptr null, i64 0, ptr @mounts_open, ptr null, ptr @mounts_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @copy_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !0
@proc_mountinfo_operations = hidden constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr null, ptr null, ptr @seq_read_iter, ptr null, ptr null, ptr null, ptr @mounts_poll, ptr null, ptr null, ptr null, i64 0, ptr @mountinfo_open, ptr null, ptr @mounts_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @copy_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !3809
@proc_mountstats_operations = hidden constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr null, ptr null, ptr @seq_read_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @mountstats_open, ptr null, ptr @mounts_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @copy_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !3811
@mounts_op = external dso_local constant %struct.seq_operations, align 8
@put_task_struct.put_task_map = internal global %struct.lockdep_map undef, align 1, !dbg !3813
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1, !dbg !3822
@.str.1 = private unnamed_addr constant [5 x i8] c" \09\0A\\\00", align 1, !dbg !3827
@.str.2 = private unnamed_addr constant [4 x i8] c" ro\00", align 1, !dbg !3829
@.str.3 = private unnamed_addr constant [4 x i8] c" rw\00", align 1, !dbg !3832
@.str.4 = private unnamed_addr constant [6 x i8] c" 0 0\0A\00", align 1, !dbg !3834
@.str.5 = private unnamed_addr constant [6 x i8] c" \09\0A\\#\00", align 1, !dbg !3836
@show_sb_opts.fs_opts = internal constant [5 x %struct.proc_fs_opts] [%struct.proc_fs_opts { i32 16, ptr @.str.6 }, %struct.proc_fs_opts { i32 128, ptr @.str.7 }, %struct.proc_fs_opts { i32 64, ptr @.str.8 }, %struct.proc_fs_opts { i32 33554432, ptr @.str.9 }, %struct.proc_fs_opts zeroinitializer], align 16, !dbg !3852
@.str.6 = private unnamed_addr constant [6 x i8] c",sync\00", align 1, !dbg !3838
@.str.7 = private unnamed_addr constant [9 x i8] c",dirsync\00", align 1, !dbg !3840
@.str.8 = private unnamed_addr constant [6 x i8] c",mand\00", align 1, !dbg !3845
@.str.9 = private unnamed_addr constant [10 x i8] c",lazytime\00", align 1, !dbg !3847
@show_mnt_opts.mnt_opts = internal constant [8 x %struct.proc_fs_opts] [%struct.proc_fs_opts { i32 1, ptr @.str.10 }, %struct.proc_fs_opts { i32 2, ptr @.str.11 }, %struct.proc_fs_opts { i32 4, ptr @.str.12 }, %struct.proc_fs_opts { i32 8, ptr @.str.13 }, %struct.proc_fs_opts { i32 16, ptr @.str.14 }, %struct.proc_fs_opts { i32 32, ptr @.str.15 }, %struct.proc_fs_opts { i32 128, ptr @.str.16 }, %struct.proc_fs_opts zeroinitializer], align 16, !dbg !3889
@.str.10 = private unnamed_addr constant [8 x i8] c",nosuid\00", align 1, !dbg !3868
@.str.11 = private unnamed_addr constant [7 x i8] c",nodev\00", align 1, !dbg !3870
@.str.12 = private unnamed_addr constant [8 x i8] c",noexec\00", align 1, !dbg !3875
@.str.13 = private unnamed_addr constant [9 x i8] c",noatime\00", align 1, !dbg !3877
@.str.14 = private unnamed_addr constant [12 x i8] c",nodiratime\00", align 1, !dbg !3879
@.str.15 = private unnamed_addr constant [10 x i8] c",relatime\00", align 1, !dbg !3882
@.str.16 = private unnamed_addr constant [13 x i8] c",nosymfollow\00", align 1, !dbg !3884
@.str.17 = private unnamed_addr constant [10 x i8] c",idmapped\00", align 1, !dbg !3899
@nop_mnt_idmap = external dso_local global %struct.mnt_idmap, align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"%i %i %u:%u \00", align 1, !dbg !3901
@.str.19 = private unnamed_addr constant [11 x i8] c" shared:%i\00", align 1, !dbg !3903
@.str.20 = private unnamed_addr constant [11 x i8] c" master:%i\00", align 1, !dbg !3908
@.str.21 = private unnamed_addr constant [19 x i8] c" propagate_from:%i\00", align 1, !dbg !3910
@.str.22 = private unnamed_addr constant [12 x i8] c" unbindable\00", align 1, !dbg !3915
@.str.23 = private unnamed_addr constant [4 x i8] c" - \00", align 1, !dbg !3917
@.str.24 = private unnamed_addr constant [8 x i8] c"device \00", align 1, !dbg !3919
@.str.25 = private unnamed_addr constant [10 x i8] c"no device\00", align 1, !dbg !3921
@.str.26 = private unnamed_addr constant [13 x i8] c" mounted on \00", align 1, !dbg !3923
@.str.27 = private unnamed_addr constant [13 x i8] c"with fstype \00", align 1, !dbg !3925

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read_iter(ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mounts_poll(ptr noundef %file, ptr noundef %wait) #1 align 16 !dbg !3936 {
entry:
  %file.addr = alloca ptr, align 8
  %wait.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  %p = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %res = alloca i32, align 4
  %event = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !3942, metadata !DIExpression()), !dbg !3959
  store ptr %wait, ptr %wait.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !3943, metadata !DIExpression()), !dbg !3960
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #8, !dbg !3961
  call void @llvm.dbg.declare(metadata ptr %m, metadata !3944, metadata !DIExpression()), !dbg !3962
  %0 = load ptr, ptr %file.addr, align 8, !dbg !3963
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !3964
  %1 = load ptr, ptr %private_data, align 8, !dbg !3964
  store ptr %1, ptr %m, align 8, !dbg !3962
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !3965
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3945, metadata !DIExpression()), !dbg !3966
  %2 = load ptr, ptr %m, align 8, !dbg !3967
  %private = getelementptr inbounds %struct.seq_file, ptr %2, i32 0, i32 11, !dbg !3968
  %3 = load ptr, ptr %private, align 8, !dbg !3968
  store ptr %3, ptr %p, align 8, !dbg !3966
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #8, !dbg !3969
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !3956, metadata !DIExpression()), !dbg !3970
  %4 = load ptr, ptr %p, align 8, !dbg !3971
  %ns1 = getelementptr inbounds %struct.proc_mounts, ptr %4, i32 0, i32 0, !dbg !3972
  %5 = load ptr, ptr %ns1, align 8, !dbg !3972
  store ptr %5, ptr %ns, align 8, !dbg !3970
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #8, !dbg !3973
  call void @llvm.dbg.declare(metadata ptr %res, metadata !3957, metadata !DIExpression()), !dbg !3974
  store i32 65, ptr %res, align 4, !dbg !3974
  call void @llvm.lifetime.start.p0(i64 4, ptr %event) #8, !dbg !3975
  call void @llvm.dbg.declare(metadata ptr %event, metadata !3958, metadata !DIExpression()), !dbg !3976
  %6 = load ptr, ptr %file.addr, align 8, !dbg !3977
  %7 = load ptr, ptr %p, align 8, !dbg !3978
  %ns2 = getelementptr inbounds %struct.proc_mounts, ptr %7, i32 0, i32 0, !dbg !3979
  %8 = load ptr, ptr %ns2, align 8, !dbg !3979
  %poll = getelementptr inbounds %struct.mnt_namespace, ptr %8, i32 0, i32 7, !dbg !3980
  %9 = load ptr, ptr %wait.addr, align 8, !dbg !3981
  call void @poll_wait(ptr noundef %6, ptr noundef %poll, ptr noundef %9) #9, !dbg !3982
  br label %do.body, !dbg !3983

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3985

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3985

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %ns, align 8, !dbg !3983
  %event3 = getelementptr inbounds %struct.mnt_namespace, ptr %10, i32 0, i32 8, !dbg !3983
  %11 = load volatile i64, ptr %event3, align 8, !dbg !3983
  store i64 %11, ptr %tmp, align 8, !dbg !3985
  %12 = load i64, ptr %tmp, align 8, !dbg !3983
  %conv = trunc i64 %12 to i32, !dbg !3987
  store i32 %conv, ptr %event, align 4, !dbg !3988
  %13 = load ptr, ptr %m, align 8, !dbg !3989
  %poll_event = getelementptr inbounds %struct.seq_file, ptr %13, i32 0, i32 9, !dbg !3991
  %14 = load i32, ptr %poll_event, align 8, !dbg !3991
  %15 = load i32, ptr %event, align 4, !dbg !3992
  %cmp = icmp ne i32 %14, %15, !dbg !3993
  br i1 %cmp, label %if.then, label %if.end, !dbg !3994

if.then:                                          ; preds = %do.end
  %16 = load i32, ptr %event, align 4, !dbg !3995
  %17 = load ptr, ptr %m, align 8, !dbg !3997
  %poll_event5 = getelementptr inbounds %struct.seq_file, ptr %17, i32 0, i32 9, !dbg !3998
  store i32 %16, ptr %poll_event5, align 8, !dbg !3999
  %18 = load i32, ptr %res, align 4, !dbg !4000
  %or = or i32 %18, 10, !dbg !4000
  store i32 %or, ptr %res, align 4, !dbg !4000
  br label %if.end, !dbg !4001

if.end:                                           ; preds = %if.then, %do.end
  %19 = load i32, ptr %res, align 4, !dbg !4002
  call void @llvm.lifetime.end.p0(i64 4, ptr %event) #8, !dbg !4003
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #8, !dbg !4003
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #8, !dbg !4003
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !4003
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #8, !dbg !4003
  ret i32 %19, !dbg !4004
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mounts_open(ptr noundef %inode, ptr noundef %file) #1 align 16 !dbg !4005 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4007, metadata !DIExpression()), !dbg !4009
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4008, metadata !DIExpression()), !dbg !4010
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4011
  %1 = load ptr, ptr %file.addr, align 8, !dbg !4012
  %call = call i32 @mounts_open_common(ptr noundef %0, ptr noundef %1, ptr noundef @show_vfsmnt) #9, !dbg !4013
  ret i32 %call, !dbg !4014
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mounts_release(ptr noundef %inode, ptr noundef %file) #1 align 16 !dbg !4015 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4017, metadata !DIExpression()), !dbg !4021
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4018, metadata !DIExpression()), !dbg !4022
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #8, !dbg !4023
  call void @llvm.dbg.declare(metadata ptr %m, metadata !4019, metadata !DIExpression()), !dbg !4024
  %0 = load ptr, ptr %file.addr, align 8, !dbg !4025
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !4026
  %1 = load ptr, ptr %private_data, align 8, !dbg !4026
  store ptr %1, ptr %m, align 8, !dbg !4024
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !4027
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4020, metadata !DIExpression()), !dbg !4028
  %2 = load ptr, ptr %m, align 8, !dbg !4029
  %private = getelementptr inbounds %struct.seq_file, ptr %2, i32 0, i32 11, !dbg !4030
  %3 = load ptr, ptr %private, align 8, !dbg !4030
  store ptr %3, ptr %p, align 8, !dbg !4028
  %4 = load ptr, ptr %p, align 8, !dbg !4031
  %root = getelementptr inbounds %struct.proc_mounts, ptr %4, i32 0, i32 1, !dbg !4032
  call void @path_put(ptr noundef %root) #9, !dbg !4033
  %5 = load ptr, ptr %p, align 8, !dbg !4034
  %ns = getelementptr inbounds %struct.proc_mounts, ptr %5, i32 0, i32 0, !dbg !4035
  %6 = load ptr, ptr %ns, align 8, !dbg !4035
  %7 = load ptr, ptr %p, align 8, !dbg !4036
  %cursor = getelementptr inbounds %struct.proc_mounts, ptr %7, i32 0, i32 3, !dbg !4037
  call void @mnt_cursor_del(ptr noundef %6, ptr noundef %cursor) #9, !dbg !4038
  %8 = load ptr, ptr %p, align 8, !dbg !4039
  %ns1 = getelementptr inbounds %struct.proc_mounts, ptr %8, i32 0, i32 0, !dbg !4040
  %9 = load ptr, ptr %ns1, align 8, !dbg !4040
  call void @put_mnt_ns(ptr noundef %9) #9, !dbg !4041
  %10 = load ptr, ptr %inode.addr, align 8, !dbg !4042
  %11 = load ptr, ptr %file.addr, align 8, !dbg !4043
  %call = call i32 @seq_release_private(ptr noundef %10, ptr noundef %11) #9, !dbg !4044
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !4045
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #8, !dbg !4045
  ret i32 %call, !dbg !4046
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @copy_splice_read(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mountinfo_open(ptr noundef %inode, ptr noundef %file) #1 align 16 !dbg !4047 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4049, metadata !DIExpression()), !dbg !4051
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4050, metadata !DIExpression()), !dbg !4052
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4053
  %1 = load ptr, ptr %file.addr, align 8, !dbg !4054
  %call = call i32 @mounts_open_common(ptr noundef %0, ptr noundef %1, ptr noundef @show_mountinfo) #9, !dbg !4055
  ret i32 %call, !dbg !4056
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mountstats_open(ptr noundef %inode, ptr noundef %file) #1 align 16 !dbg !4057 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4059, metadata !DIExpression()), !dbg !4061
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4060, metadata !DIExpression()), !dbg !4062
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4063
  %1 = load ptr, ptr %file.addr, align 8, !dbg !4064
  %call = call i32 @mounts_open_common(ptr noundef %0, ptr noundef %1, ptr noundef @show_vfsstat) #9, !dbg !4065
  ret i32 %call, !dbg !4066
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @poll_wait(ptr noundef %filp, ptr noundef %wait_address, ptr noundef %p) #4 align 16 !dbg !4067 {
entry:
  %filp.addr = alloca ptr, align 8
  %wait_address.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !4071, metadata !DIExpression()), !dbg !4074
  store ptr %wait_address, ptr %wait_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait_address.addr, metadata !4072, metadata !DIExpression()), !dbg !4075
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4073, metadata !DIExpression()), !dbg !4076
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4077
  %tobool = icmp ne ptr %0, null, !dbg !4077
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4079

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !4080
  %_qproc = getelementptr inbounds %struct.poll_table_struct, ptr %1, i32 0, i32 0, !dbg !4081
  %2 = load ptr, ptr %_qproc, align 8, !dbg !4081
  %tobool1 = icmp ne ptr %2, null, !dbg !4080
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !4082

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %wait_address.addr, align 8, !dbg !4083
  %tobool3 = icmp ne ptr %3, null, !dbg !4083
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4084

if.then:                                          ; preds = %land.lhs.true2
  %4 = load ptr, ptr %p.addr, align 8, !dbg !4085
  %_qproc4 = getelementptr inbounds %struct.poll_table_struct, ptr %4, i32 0, i32 0, !dbg !4087
  %5 = load ptr, ptr %_qproc4, align 8, !dbg !4087
  %6 = load ptr, ptr %filp.addr, align 8, !dbg !4088
  %7 = load ptr, ptr %wait_address.addr, align 8, !dbg !4089
  %8 = load ptr, ptr %p.addr, align 8, !dbg !4090
  call void %5(ptr noundef %6, ptr noundef %7, ptr noundef %8) #9, !dbg !4085
  br label %do.body, !dbg !4091

do.body:                                          ; preds = %if.then
  br label %do.body5, !dbg !4092

do.body5:                                         ; preds = %do.body
  br label %do.end, !dbg !4094

do.end:                                           ; preds = %do.body5
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !4092, !srcloc !4096
  br label %do.end6, !dbg !4092

do.end6:                                          ; preds = %do.end
  br label %if.end, !dbg !4097

if.end:                                           ; preds = %do.end6, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !4098
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mounts_open_common(ptr noundef %inode, ptr noundef %file, ptr noundef %show) #1 align 16 !dbg !4099 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %show.addr = alloca ptr, align 8
  %task = alloca ptr, align 8
  %nsp = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %root = alloca %struct.path, align 8
  %p = alloca ptr, align 8
  %m = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4103, metadata !DIExpression()), !dbg !4116
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4104, metadata !DIExpression()), !dbg !4117
  store ptr %show, ptr %show.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %show.addr, metadata !4105, metadata !DIExpression()), !dbg !4118
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #8, !dbg !4119
  call void @llvm.dbg.declare(metadata ptr %task, metadata !4106, metadata !DIExpression()), !dbg !4120
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4121
  %call = call ptr @get_proc_task(ptr noundef %0) #9, !dbg !4122
  store ptr %call, ptr %task, align 8, !dbg !4120
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsp) #8, !dbg !4123
  call void @llvm.dbg.declare(metadata ptr %nsp, metadata !4107, metadata !DIExpression()), !dbg !4124
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #8, !dbg !4125
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !4108, metadata !DIExpression()), !dbg !4126
  store ptr null, ptr %ns, align 8, !dbg !4126
  call void @llvm.lifetime.start.p0(i64 16, ptr %root) #8, !dbg !4127
  call void @llvm.dbg.declare(metadata ptr %root, metadata !4109, metadata !DIExpression()), !dbg !4128
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !4129
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4110, metadata !DIExpression()), !dbg !4130
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #8, !dbg !4131
  call void @llvm.dbg.declare(metadata ptr %m, metadata !4111, metadata !DIExpression()), !dbg !4132
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !4133
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4112, metadata !DIExpression()), !dbg !4134
  store i32 -22, ptr %ret, align 4, !dbg !4134
  %1 = load ptr, ptr %task, align 8, !dbg !4135
  %tobool = icmp ne ptr %1, null, !dbg !4135
  br i1 %tobool, label %if.end, label %if.then, !dbg !4137

if.then:                                          ; preds = %entry
  br label %err, !dbg !4138

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %task, align 8, !dbg !4139
  call void @task_lock(ptr noundef %2) #9, !dbg !4140
  %3 = load ptr, ptr %task, align 8, !dbg !4141
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 103, !dbg !4142
  %4 = load ptr, ptr %nsproxy, align 8, !dbg !4142
  store ptr %4, ptr %nsp, align 8, !dbg !4143
  %5 = load ptr, ptr %nsp, align 8, !dbg !4144
  %tobool1 = icmp ne ptr %5, null, !dbg !4144
  br i1 %tobool1, label %lor.lhs.false, label %if.then3, !dbg !4146

lor.lhs.false:                                    ; preds = %if.end
  %6 = load ptr, ptr %nsp, align 8, !dbg !4147
  %mnt_ns = getelementptr inbounds %struct.nsproxy, ptr %6, i32 0, i32 3, !dbg !4148
  %7 = load ptr, ptr %mnt_ns, align 8, !dbg !4148
  %tobool2 = icmp ne ptr %7, null, !dbg !4147
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4149

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %8 = load ptr, ptr %task, align 8, !dbg !4150
  call void @task_unlock(ptr noundef %8) #9, !dbg !4152
  %9 = load ptr, ptr %task, align 8, !dbg !4153
  call void @put_task_struct(ptr noundef %9) #9, !dbg !4154
  br label %err, !dbg !4155

if.end4:                                          ; preds = %lor.lhs.false
  %10 = load ptr, ptr %nsp, align 8, !dbg !4156
  %mnt_ns5 = getelementptr inbounds %struct.nsproxy, ptr %10, i32 0, i32 3, !dbg !4157
  %11 = load ptr, ptr %mnt_ns5, align 8, !dbg !4157
  store ptr %11, ptr %ns, align 8, !dbg !4158
  %12 = load ptr, ptr %ns, align 8, !dbg !4159
  call void @get_mnt_ns(ptr noundef %12) #9, !dbg !4160
  %13 = load ptr, ptr %task, align 8, !dbg !4161
  %fs = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 100, !dbg !4163
  %14 = load ptr, ptr %fs, align 32, !dbg !4163
  %tobool6 = icmp ne ptr %14, null, !dbg !4161
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4164

if.then7:                                         ; preds = %if.end4
  %15 = load ptr, ptr %task, align 8, !dbg !4165
  call void @task_unlock(ptr noundef %15) #9, !dbg !4167
  %16 = load ptr, ptr %task, align 8, !dbg !4168
  call void @put_task_struct(ptr noundef %16) #9, !dbg !4169
  store i32 -2, ptr %ret, align 4, !dbg !4170
  br label %err_put_ns, !dbg !4171

if.end8:                                          ; preds = %if.end4
  %17 = load ptr, ptr %task, align 8, !dbg !4172
  %fs9 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 100, !dbg !4173
  %18 = load ptr, ptr %fs9, align 32, !dbg !4173
  call void @get_fs_root(ptr noundef %18, ptr noundef %root) #9, !dbg !4174
  %19 = load ptr, ptr %task, align 8, !dbg !4175
  call void @task_unlock(ptr noundef %19) #9, !dbg !4176
  %20 = load ptr, ptr %task, align 8, !dbg !4177
  call void @put_task_struct(ptr noundef %20) #9, !dbg !4178
  %21 = load ptr, ptr %file.addr, align 8, !dbg !4179
  %call10 = call i32 @seq_open_private(ptr noundef %21, ptr noundef @mounts_op, i32 noundef 352) #9, !dbg !4180
  store i32 %call10, ptr %ret, align 4, !dbg !4181
  %22 = load i32, ptr %ret, align 4, !dbg !4182
  %tobool11 = icmp ne i32 %22, 0, !dbg !4182
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !4184

if.then12:                                        ; preds = %if.end8
  br label %err_put_path, !dbg !4185

if.end13:                                         ; preds = %if.end8
  %23 = load ptr, ptr %file.addr, align 8, !dbg !4186
  %private_data = getelementptr inbounds %struct.file, ptr %23, i32 0, i32 15, !dbg !4187
  %24 = load ptr, ptr %private_data, align 8, !dbg !4187
  store ptr %24, ptr %m, align 8, !dbg !4188
  %25 = load ptr, ptr %ns, align 8, !dbg !4189
  %event = getelementptr inbounds %struct.mnt_namespace, ptr %25, i32 0, i32 8, !dbg !4190
  %26 = load i64, ptr %event, align 8, !dbg !4190
  %conv = trunc i64 %26 to i32, !dbg !4189
  %27 = load ptr, ptr %m, align 8, !dbg !4191
  %poll_event = getelementptr inbounds %struct.seq_file, ptr %27, i32 0, i32 9, !dbg !4192
  store i32 %conv, ptr %poll_event, align 8, !dbg !4193
  %28 = load ptr, ptr %m, align 8, !dbg !4194
  %private = getelementptr inbounds %struct.seq_file, ptr %28, i32 0, i32 11, !dbg !4195
  %29 = load ptr, ptr %private, align 8, !dbg !4195
  store ptr %29, ptr %p, align 8, !dbg !4196
  %30 = load ptr, ptr %ns, align 8, !dbg !4197
  %31 = load ptr, ptr %p, align 8, !dbg !4198
  %ns14 = getelementptr inbounds %struct.proc_mounts, ptr %31, i32 0, i32 0, !dbg !4199
  store ptr %30, ptr %ns14, align 8, !dbg !4200
  %32 = load ptr, ptr %p, align 8, !dbg !4201
  %root15 = getelementptr inbounds %struct.proc_mounts, ptr %32, i32 0, i32 1, !dbg !4202
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %root15, ptr align 8 %root, i64 16, i1 false), !dbg !4203
  %33 = load ptr, ptr %show.addr, align 8, !dbg !4204
  %34 = load ptr, ptr %p, align 8, !dbg !4205
  %show16 = getelementptr inbounds %struct.proc_mounts, ptr %34, i32 0, i32 2, !dbg !4206
  store ptr %33, ptr %show16, align 8, !dbg !4207
  %35 = load ptr, ptr %p, align 8, !dbg !4208
  %cursor = getelementptr inbounds %struct.proc_mounts, ptr %35, i32 0, i32 3, !dbg !4209
  %mnt_list = getelementptr inbounds %struct.mount, ptr %cursor, i32 0, i32 10, !dbg !4210
  call void @INIT_LIST_HEAD(ptr noundef %mnt_list) #9, !dbg !4211
  %36 = load ptr, ptr %p, align 8, !dbg !4212
  %cursor17 = getelementptr inbounds %struct.proc_mounts, ptr %36, i32 0, i32 3, !dbg !4213
  %mnt = getelementptr inbounds %struct.mount, ptr %cursor17, i32 0, i32 3, !dbg !4214
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %mnt, i32 0, i32 2, !dbg !4215
  store i32 268435456, ptr %mnt_flags, align 8, !dbg !4216
  store i32 0, ptr %retval, align 4, !dbg !4217
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4217

err_put_path:                                     ; preds = %if.then12
  call void @llvm.dbg.label(metadata !4113), !dbg !4218
  call void @path_put(ptr noundef %root) #9, !dbg !4219
  br label %err_put_ns, !dbg !4219

err_put_ns:                                       ; preds = %err_put_path, %if.then7
  call void @llvm.dbg.label(metadata !4114), !dbg !4220
  %37 = load ptr, ptr %ns, align 8, !dbg !4221
  call void @put_mnt_ns(ptr noundef %37) #9, !dbg !4222
  br label %err, !dbg !4222

err:                                              ; preds = %err_put_ns, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !4115), !dbg !4223
  %38 = load i32, ptr %ret, align 4, !dbg !4224
  store i32 %38, ptr %retval, align 4, !dbg !4225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4225

cleanup:                                          ; preds = %err, %if.end13
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !4226
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #8, !dbg !4226
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !4226
  call void @llvm.lifetime.end.p0(i64 16, ptr %root) #8, !dbg !4226
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #8, !dbg !4226
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsp) #8, !dbg !4226
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #8, !dbg !4226
  %39 = load i32, ptr %retval, align 4, !dbg !4226
  ret i32 %39, !dbg !4226
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @show_vfsmnt(ptr noundef %m, ptr noundef %mnt) #1 align 16 !dbg !4227 {
entry:
  %m.addr = alloca ptr, align 8
  %mnt.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %r = alloca ptr, align 8
  %mnt_path = alloca %struct.path, align 8
  %sb = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4229, metadata !DIExpression()), !dbg !4237
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4230, metadata !DIExpression()), !dbg !4238
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !4239
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4231, metadata !DIExpression()), !dbg !4240
  %0 = load ptr, ptr %m.addr, align 8, !dbg !4241
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !4242
  %1 = load ptr, ptr %private, align 8, !dbg !4242
  store ptr %1, ptr %p, align 8, !dbg !4240
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #8, !dbg !4243
  call void @llvm.dbg.declare(metadata ptr %r, metadata !4232, metadata !DIExpression()), !dbg !4244
  %2 = load ptr, ptr %mnt.addr, align 8, !dbg !4245
  %call = call ptr @real_mount(ptr noundef %2) #9, !dbg !4246
  store ptr %call, ptr %r, align 8, !dbg !4244
  call void @llvm.lifetime.start.p0(i64 16, ptr %mnt_path) #8, !dbg !4247
  call void @llvm.dbg.declare(metadata ptr %mnt_path, metadata !4233, metadata !DIExpression()), !dbg !4248
  %mnt1 = getelementptr inbounds %struct.path, ptr %mnt_path, i32 0, i32 0, !dbg !4249
  %3 = load ptr, ptr %mnt.addr, align 8, !dbg !4250
  store ptr %3, ptr %mnt1, align 8, !dbg !4249
  %dentry = getelementptr inbounds %struct.path, ptr %mnt_path, i32 0, i32 1, !dbg !4249
  %4 = load ptr, ptr %mnt.addr, align 8, !dbg !4251
  %mnt_root = getelementptr inbounds %struct.vfsmount, ptr %4, i32 0, i32 0, !dbg !4252
  %5 = load ptr, ptr %mnt_root, align 8, !dbg !4252
  store ptr %5, ptr %dentry, align 8, !dbg !4249
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #8, !dbg !4253
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !4234, metadata !DIExpression()), !dbg !4254
  %dentry2 = getelementptr inbounds %struct.path, ptr %mnt_path, i32 0, i32 1, !dbg !4255
  %6 = load ptr, ptr %dentry2, align 8, !dbg !4255
  %d_sb = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 9, !dbg !4256
  %7 = load ptr, ptr %d_sb, align 8, !dbg !4256
  store ptr %7, ptr %sb, align 8, !dbg !4254
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8, !dbg !4257
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4235, metadata !DIExpression()), !dbg !4258
  %8 = load ptr, ptr %sb, align 8, !dbg !4259
  %s_op = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 6, !dbg !4261
  %9 = load ptr, ptr %s_op, align 16, !dbg !4261
  %show_devname = getelementptr inbounds %struct.super_operations, ptr %9, i32 0, i32 17, !dbg !4262
  %10 = load ptr, ptr %show_devname, align 8, !dbg !4262
  %tobool = icmp ne ptr %10, null, !dbg !4259
  br i1 %tobool, label %if.then, label %if.else, !dbg !4263

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %sb, align 8, !dbg !4264
  %s_op3 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 6, !dbg !4266
  %12 = load ptr, ptr %s_op3, align 16, !dbg !4266
  %show_devname4 = getelementptr inbounds %struct.super_operations, ptr %12, i32 0, i32 17, !dbg !4267
  %13 = load ptr, ptr %show_devname4, align 8, !dbg !4267
  %14 = load ptr, ptr %m.addr, align 8, !dbg !4268
  %dentry5 = getelementptr inbounds %struct.path, ptr %mnt_path, i32 0, i32 1, !dbg !4269
  %15 = load ptr, ptr %dentry5, align 8, !dbg !4269
  %call6 = call i32 %13(ptr noundef %14, ptr noundef %15) #9, !dbg !4264
  store i32 %call6, ptr %err, align 4, !dbg !4270
  %16 = load i32, ptr %err, align 4, !dbg !4271
  %tobool7 = icmp ne i32 %16, 0, !dbg !4271
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !4273

if.then8:                                         ; preds = %if.then
  br label %out, !dbg !4274

if.end:                                           ; preds = %if.then
  br label %if.end11, !dbg !4275

if.else:                                          ; preds = %entry
  %17 = load ptr, ptr %m.addr, align 8, !dbg !4276
  %18 = load ptr, ptr %r, align 8, !dbg !4278
  %mnt_devname = getelementptr inbounds %struct.mount, ptr %18, i32 0, i32 9, !dbg !4279
  %19 = load ptr, ptr %mnt_devname, align 8, !dbg !4279
  %tobool9 = icmp ne ptr %19, null, !dbg !4278
  br i1 %tobool9, label %cond.true, label %cond.false, !dbg !4278

cond.true:                                        ; preds = %if.else
  %20 = load ptr, ptr %r, align 8, !dbg !4280
  %mnt_devname10 = getelementptr inbounds %struct.mount, ptr %20, i32 0, i32 9, !dbg !4281
  %21 = load ptr, ptr %mnt_devname10, align 8, !dbg !4281
  br label %cond.end, !dbg !4278

cond.false:                                       ; preds = %if.else
  br label %cond.end, !dbg !4278

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %21, %cond.true ], [ @.str, %cond.false ], !dbg !4278
  call void @mangle(ptr noundef %17, ptr noundef %cond) #9, !dbg !4282
  br label %if.end11

if.end11:                                         ; preds = %cond.end, %if.end
  %22 = load ptr, ptr %m.addr, align 8, !dbg !4283
  call void @seq_putc(ptr noundef %22, i8 noundef zeroext 32) #9, !dbg !4284
  %23 = load ptr, ptr %m.addr, align 8, !dbg !4285
  %24 = load ptr, ptr %p, align 8, !dbg !4286
  %root = getelementptr inbounds %struct.proc_mounts, ptr %24, i32 0, i32 1, !dbg !4287
  %call12 = call i32 @seq_path_root(ptr noundef %23, ptr noundef %mnt_path, ptr noundef %root, ptr noundef @.str.1) #9, !dbg !4288
  store i32 %call12, ptr %err, align 4, !dbg !4289
  %25 = load i32, ptr %err, align 4, !dbg !4290
  %tobool13 = icmp ne i32 %25, 0, !dbg !4290
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4292

if.then14:                                        ; preds = %if.end11
  br label %out, !dbg !4293

if.end15:                                         ; preds = %if.end11
  %26 = load ptr, ptr %m.addr, align 8, !dbg !4294
  call void @seq_putc(ptr noundef %26, i8 noundef zeroext 32) #9, !dbg !4295
  %27 = load ptr, ptr %m.addr, align 8, !dbg !4296
  %28 = load ptr, ptr %sb, align 8, !dbg !4297
  call void @show_type(ptr noundef %27, ptr noundef %28) #9, !dbg !4298
  %29 = load ptr, ptr %m.addr, align 8, !dbg !4299
  %30 = load ptr, ptr %mnt.addr, align 8, !dbg !4300
  %call16 = call zeroext i1 @__mnt_is_readonly(ptr noundef %30) #9, !dbg !4301
  %31 = zext i1 %call16 to i64, !dbg !4301
  %cond17 = select i1 %call16, ptr @.str.2, ptr @.str.3, !dbg !4301
  call void @seq_puts(ptr noundef %29, ptr noundef %cond17) #9, !dbg !4302
  %32 = load ptr, ptr %m.addr, align 8, !dbg !4303
  %33 = load ptr, ptr %sb, align 8, !dbg !4304
  %call18 = call i32 @show_sb_opts(ptr noundef %32, ptr noundef %33) #9, !dbg !4305
  store i32 %call18, ptr %err, align 4, !dbg !4306
  %34 = load i32, ptr %err, align 4, !dbg !4307
  %tobool19 = icmp ne i32 %34, 0, !dbg !4307
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4309

if.then20:                                        ; preds = %if.end15
  br label %out, !dbg !4310

if.end21:                                         ; preds = %if.end15
  %35 = load ptr, ptr %m.addr, align 8, !dbg !4311
  %36 = load ptr, ptr %mnt.addr, align 8, !dbg !4312
  call void @show_mnt_opts(ptr noundef %35, ptr noundef %36) #9, !dbg !4313
  %37 = load ptr, ptr %sb, align 8, !dbg !4314
  %s_op22 = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 6, !dbg !4316
  %38 = load ptr, ptr %s_op22, align 16, !dbg !4316
  %show_options = getelementptr inbounds %struct.super_operations, ptr %38, i32 0, i32 16, !dbg !4317
  %39 = load ptr, ptr %show_options, align 8, !dbg !4317
  %tobool23 = icmp ne ptr %39, null, !dbg !4314
  br i1 %tobool23, label %if.then24, label %if.end29, !dbg !4318

if.then24:                                        ; preds = %if.end21
  %40 = load ptr, ptr %sb, align 8, !dbg !4319
  %s_op25 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 6, !dbg !4320
  %41 = load ptr, ptr %s_op25, align 16, !dbg !4320
  %show_options26 = getelementptr inbounds %struct.super_operations, ptr %41, i32 0, i32 16, !dbg !4321
  %42 = load ptr, ptr %show_options26, align 8, !dbg !4321
  %43 = load ptr, ptr %m.addr, align 8, !dbg !4322
  %dentry27 = getelementptr inbounds %struct.path, ptr %mnt_path, i32 0, i32 1, !dbg !4323
  %44 = load ptr, ptr %dentry27, align 8, !dbg !4323
  %call28 = call i32 %42(ptr noundef %43, ptr noundef %44) #9, !dbg !4319
  store i32 %call28, ptr %err, align 4, !dbg !4324
  br label %if.end29, !dbg !4325

if.end29:                                         ; preds = %if.then24, %if.end21
  %45 = load ptr, ptr %m.addr, align 8, !dbg !4326
  call void @seq_puts(ptr noundef %45, ptr noundef @.str.4) #9, !dbg !4327
  br label %out, !dbg !4327

out:                                              ; preds = %if.end29, %if.then20, %if.then14, %if.then8
  call void @llvm.dbg.label(metadata !4236), !dbg !4328
  %46 = load i32, ptr %err, align 4, !dbg !4329
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8, !dbg !4330
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #8, !dbg !4330
  call void @llvm.lifetime.end.p0(i64 16, ptr %mnt_path) #8, !dbg !4330
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #8, !dbg !4330
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !4330
  ret i32 %46, !dbg !4331
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_proc_task(ptr noundef %inode) #4 align 16 !dbg !4332 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4336, metadata !DIExpression()), !dbg !4337
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4338
  %call = call ptr @proc_pid(ptr noundef %0) #9, !dbg !4339
  %call1 = call ptr @get_pid_task(ptr noundef %call, i32 noundef 0) #9, !dbg !4340
  ret ptr %call1, !dbg !4341
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_lock(ptr noundef %p) #4 align 16 !dbg !4342 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4344, metadata !DIExpression()), !dbg !4345
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4346
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !4347
  call void @spin_lock(ptr noundef %alloc_lock) #9, !dbg !4348
  ret void, !dbg !4349
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_unlock(ptr noundef %p) #4 align 16 !dbg !4350 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4352, metadata !DIExpression()), !dbg !4353
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4354
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !4355
  call void @spin_unlock(ptr noundef %alloc_lock) #9, !dbg !4356
  ret void, !dbg !4357
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_task_struct(ptr noundef %t) #4 align 16 !dbg !3815 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !3820, metadata !DIExpression()), !dbg !4358
  %0 = load ptr, ptr %t.addr, align 8, !dbg !4359
  %usage = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3, !dbg !4361
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %usage) #9, !dbg !4362
  br i1 %call, label %if.end, label %if.then, !dbg !4363

if.then:                                          ; preds = %entry
  br label %return, !dbg !4364

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4365

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4368

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %t.addr, align 8, !dbg !4370
  call void @__put_task_struct(ptr noundef %1) #9, !dbg !4371
  br label %do.body1, !dbg !4372

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4373

do.end2:                                          ; preds = %do.body1
  br label %return, !dbg !4375

return:                                           ; preds = %do.end2, %if.then
  ret void, !dbg !4376
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @get_mnt_ns(ptr noundef %ns) #4 align 16 !dbg !4377 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4381, metadata !DIExpression()), !dbg !4382
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4383
  %ns1 = getelementptr inbounds %struct.mnt_namespace, ptr %0, i32 0, i32 0, !dbg !4384
  %count = getelementptr inbounds %struct.ns_common, ptr %ns1, i32 0, i32 3, !dbg !4385
  call void @refcount_inc(ptr noundef %count) #9, !dbg !4386
  ret void, !dbg !4387
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @get_fs_root(ptr noundef %fs, ptr noundef %root) #4 align 16 !dbg !4388 {
entry:
  %fs.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  store ptr %fs, ptr %fs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs.addr, metadata !4392, metadata !DIExpression()), !dbg !4394
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !4393, metadata !DIExpression()), !dbg !4395
  %0 = load ptr, ptr %fs.addr, align 8, !dbg !4396
  %lock = getelementptr inbounds %struct.fs_struct, ptr %0, i32 0, i32 1, !dbg !4397
  call void @spin_lock(ptr noundef %lock) #9, !dbg !4398
  %1 = load ptr, ptr %root.addr, align 8, !dbg !4399
  %2 = load ptr, ptr %fs.addr, align 8, !dbg !4400
  %root1 = getelementptr inbounds %struct.fs_struct, ptr %2, i32 0, i32 5, !dbg !4401
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %root1, i64 16, i1 false), !dbg !4401
  %3 = load ptr, ptr %root.addr, align 8, !dbg !4402
  call void @path_get(ptr noundef %3) #9, !dbg !4403
  %4 = load ptr, ptr %fs.addr, align 8, !dbg !4404
  %lock2 = getelementptr inbounds %struct.fs_struct, ptr %4, i32 0, i32 1, !dbg !4405
  call void @spin_unlock(ptr noundef %lock2) #9, !dbg !4406
  ret void, !dbg !4407
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4408 dso_local i32 @seq_open_private(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !4411 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4416, metadata !DIExpression()), !dbg !4417
  br label %do.body, !dbg !4418

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4419

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4421

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4419

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4423
  %1 = load ptr, ptr %list.addr, align 8, !dbg !4423
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4423
  store volatile ptr %0, ptr %next, align 8, !dbg !4423
  br label %do.end3, !dbg !4423

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4419

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !4425

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !4426

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4428

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !4426

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !4430
  %3 = load ptr, ptr %list.addr, align 8, !dbg !4430
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !4430
  store volatile ptr %2, ptr %prev, align 8, !dbg !4430
  br label %do.end9, !dbg !4430

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !4426

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !4432
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4433 dso_local void @path_put(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4436 dso_local void @put_mnt_ns(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4437 dso_local ptr @get_pid_task(ptr noundef, i32 noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_pid(ptr noundef %inode) #4 align 16 !dbg !4440 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4444, metadata !DIExpression()), !dbg !4445
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4446
  %call = call ptr @PROC_I(ptr noundef %0) #9, !dbg !4447
  %pid = getelementptr inbounds %struct.proc_inode, ptr %call, i32 0, i32 0, !dbg !4448
  %1 = load ptr, ptr %pid, align 8, !dbg !4448
  ret ptr %1, !dbg !4449
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @PROC_I(ptr noundef %inode) #4 align 16 !dbg !4450 {
entry:
  %inode.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4454, metadata !DIExpression()), !dbg !4457
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !4458
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4455, metadata !DIExpression()), !dbg !4458
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4458
  store ptr %0, ptr %__mptr, align 8, !dbg !4458
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4458
  %add.ptr = getelementptr i8, ptr %1, i64 -72, !dbg !4458
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4458
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !4459
  %2 = load ptr, ptr %tmp, align 8, !dbg !4458
  ret ptr %2, !dbg !4460
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #6 align 16 !dbg !4461 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4466, metadata !DIExpression()), !dbg !4467
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4468
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4468
  call void @_raw_spin_lock(ptr noundef %1) #9, !dbg !4468
  ret void, !dbg !4469
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4470 dso_local void @_raw_spin_lock(ptr noundef) #0 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #6 align 16 !dbg !4475 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4477, metadata !DIExpression()), !dbg !4478
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4479
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4479
  call void @_raw_spin_unlock(ptr noundef %1) #9, !dbg !4479
  ret void, !dbg !4480
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4481 dso_local void @_raw_spin_unlock(ptr noundef) #0 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #4 align 16 !dbg !4482 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4487, metadata !DIExpression()), !dbg !4488
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4489
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #9, !dbg !4490
  ret i1 %call, !dbg !4491
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4492 dso_local void @__put_task_struct(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !4493 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4497, metadata !DIExpression()), !dbg !4499
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4498, metadata !DIExpression()), !dbg !4500
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4501
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !4502
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #9, !dbg !4503
  ret i1 %call, !dbg !4504
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !4505 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4509, metadata !DIExpression()), !dbg !4513
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4510, metadata !DIExpression()), !dbg !4514
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4511, metadata !DIExpression()), !dbg !4515
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #8, !dbg !4516
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4512, metadata !DIExpression()), !dbg !4517
  %0 = load i32, ptr %i.addr, align 4, !dbg !4518
  %1 = load ptr, ptr %r.addr, align 8, !dbg !4519
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !4520
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #9, !dbg !4521
  store i32 %call, ptr %old, align 4, !dbg !4517
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !4522
  %tobool = icmp ne ptr %2, null, !dbg !4522
  br i1 %tobool, label %if.then, label %if.end, !dbg !4524

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !4525
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !4526
  store i32 %3, ptr %4, align 4, !dbg !4527
  br label %if.end, !dbg !4528

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !4529
  %6 = load i32, ptr %i.addr, align 4, !dbg !4531
  %cmp = icmp eq i32 %5, %6, !dbg !4532
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !4533

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !4534

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !4536

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !4538

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !4538

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !4536

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !4540

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !4542

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4542

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !4540, !srcloc !4544
  br label %do.cond7, !dbg !4540

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !4540

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !4536

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !4536

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !4545
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4545

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !4546
  %cmp12 = icmp slt i32 %7, 0, !dbg !4546
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !4546

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !4546
  %9 = load i32, ptr %i.addr, align 4, !dbg !4546
  %sub = sub i32 %8, %9, !dbg !4546
  %cmp13 = icmp slt i32 %sub, 0, !dbg !4546
  br label %lor.end, !dbg !4546

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !4546
  %lnot14 = xor i1 %lnot, true, !dbg !4546
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !4546
  %conv = sext i32 %lnot.ext to i64, !dbg !4546
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4546
  %tobool15 = icmp ne i64 %expval, 0, !dbg !4546
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4548

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !4549
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #9, !dbg !4550
  br label %if.end17, !dbg !4550

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !4551
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4551

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #8, !dbg !4552
  %12 = load i1, ptr %retval, align 1, !dbg !4552
  ret i1 %12, !dbg !4552
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !4553 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4559, metadata !DIExpression()), !dbg !4561
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4560, metadata !DIExpression()), !dbg !4562
  br label %do.body, !dbg !4563

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4564

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4566
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #9, !dbg !4567
  %1 = load i32, ptr %i.addr, align 4, !dbg !4568
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4569
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #9, !dbg !4570
  ret i32 %call, !dbg !4571
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4572 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #0

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !4575 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4583, metadata !DIExpression()), !dbg !4585
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4584, metadata !DIExpression()), !dbg !4586
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4587
  %1 = load i64, ptr %size.addr, align 8, !dbg !4588
  %conv = trunc i64 %1 to i32, !dbg !4588
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !4589
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4590
  %3 = load i64, ptr %size.addr, align 8, !dbg !4590
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #9, !dbg !4590
  ret void, !dbg !4591
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !4592 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4595, metadata !DIExpression()), !dbg !4597
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4596, metadata !DIExpression()), !dbg !4598
  %0 = load i32, ptr %i.addr, align 4, !dbg !4599
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4600
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #9, !dbg !4601
  ret i32 %call, !dbg !4602
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !4603 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4608, metadata !DIExpression()), !dbg !4610
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4609, metadata !DIExpression()), !dbg !4611
  ret i1 true, !dbg !4612
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !4613 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4618, metadata !DIExpression()), !dbg !4621
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4619, metadata !DIExpression()), !dbg !4622
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4620, metadata !DIExpression()), !dbg !4623
  ret void, !dbg !4624
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !4625 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4628, metadata !DIExpression()), !dbg !4632
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4629, metadata !DIExpression()), !dbg !4633
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #8, !dbg !4634
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4630, metadata !DIExpression()), !dbg !4634
  %0 = load i32, ptr %i.addr, align 4, !dbg !4634
  %sub = sub i32 0, %0, !dbg !4634
  store i32 %sub, ptr %__ret, align 4, !dbg !4634
  %1 = load i32, ptr %__ret, align 4, !dbg !4634
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4634
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !4634
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #8, !dbg !4634, !srcloc !4635
  store i32 %3, ptr %__ret, align 4, !dbg !4634
  %4 = load i32, ptr %__ret, align 4, !dbg !4634
  store i32 %4, ptr %tmp, align 4, !dbg !4634
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #8, !dbg !4636
  %5 = load i32, ptr %tmp, align 4, !dbg !4634
  ret i32 %5, !dbg !4637
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #4 align 16 !dbg !4638 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4642, metadata !DIExpression()), !dbg !4643
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4644
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #9, !dbg !4645
  ret void, !dbg !4646
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !4647 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4651, metadata !DIExpression()), !dbg !4653
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4652, metadata !DIExpression()), !dbg !4654
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4655
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !4656
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #9, !dbg !4657
  ret void, !dbg !4658
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !4659 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4663, metadata !DIExpression()), !dbg !4667
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4664, metadata !DIExpression()), !dbg !4668
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4665, metadata !DIExpression()), !dbg !4669
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #8, !dbg !4670
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4666, metadata !DIExpression()), !dbg !4671
  %0 = load i32, ptr %i.addr, align 4, !dbg !4672
  %1 = load ptr, ptr %r.addr, align 8, !dbg !4673
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !4674
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #9, !dbg !4675
  store i32 %call, ptr %old, align 4, !dbg !4671
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !4676
  %tobool = icmp ne ptr %2, null, !dbg !4676
  br i1 %tobool, label %if.then, label %if.end, !dbg !4678

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !4679
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !4680
  store i32 %3, ptr %4, align 4, !dbg !4681
  br label %if.end, !dbg !4682

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !4683
  %tobool1 = icmp ne i32 %5, 0, !dbg !4683
  %lnot = xor i1 %tobool1, true, !dbg !4683
  %lnot2 = xor i1 %lnot, true, !dbg !4683
  %lnot3 = xor i1 %lnot2, true, !dbg !4683
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4683
  %conv = sext i32 %lnot.ext to i64, !dbg !4683
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4683
  %tobool4 = icmp ne i64 %expval, 0, !dbg !4683
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !4685

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !4686
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #9, !dbg !4687
  br label %if.end18, !dbg !4687

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !4688
  %cmp = icmp slt i32 %7, 0, !dbg !4688
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !4688

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !4688
  %9 = load i32, ptr %i.addr, align 4, !dbg !4688
  %add = add i32 %8, %9, !dbg !4688
  %cmp7 = icmp slt i32 %add, 0, !dbg !4688
  br label %lor.end, !dbg !4688

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !4688
  %lnot11 = xor i1 %lnot9, true, !dbg !4688
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !4688
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !4688
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !4688
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !4688
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4690

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !4691
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #9, !dbg !4692
  br label %if.end17, !dbg !4692

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #8, !dbg !4693
  ret void, !dbg !4693
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !4694 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4696, metadata !DIExpression()), !dbg !4698
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4697, metadata !DIExpression()), !dbg !4699
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4700
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #9, !dbg !4701
  %1 = load i32, ptr %i.addr, align 4, !dbg !4702
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4703
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #9, !dbg !4704
  ret i32 %call, !dbg !4705
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !4706 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4708, metadata !DIExpression()), !dbg !4710
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4709, metadata !DIExpression()), !dbg !4711
  %0 = load i32, ptr %i.addr, align 4, !dbg !4712
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4713
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #9, !dbg !4714
  ret i32 %call, !dbg !4715
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !4716 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4718, metadata !DIExpression()), !dbg !4722
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4719, metadata !DIExpression()), !dbg !4723
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #8, !dbg !4724
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4720, metadata !DIExpression()), !dbg !4724
  %0 = load i32, ptr %i.addr, align 4, !dbg !4724
  store i32 %0, ptr %__ret, align 4, !dbg !4724
  %1 = load i32, ptr %__ret, align 4, !dbg !4724
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4724
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !4724
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #8, !dbg !4724, !srcloc !4725
  store i32 %3, ptr %__ret, align 4, !dbg !4724
  %4 = load i32, ptr %__ret, align 4, !dbg !4724
  store i32 %4, ptr %tmp, align 4, !dbg !4724
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #8, !dbg !4726
  %5 = load i32, ptr %tmp, align 4, !dbg !4724
  ret i32 %5, !dbg !4727
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4728 dso_local void @path_get(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @real_mount(ptr noundef %mnt) #4 align 16 !dbg !4729 {
entry:
  %mnt.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4733, metadata !DIExpression()), !dbg !4736
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !4737
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4734, metadata !DIExpression()), !dbg !4737
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !4737
  store ptr %0, ptr %__mptr, align 8, !dbg !4737
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4737
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !4737
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4737
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !4738
  %2 = load ptr, ptr %tmp, align 8, !dbg !4737
  ret ptr %2, !dbg !4739
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mangle(ptr noundef %m, ptr noundef %s) #4 align 16 !dbg !4740 {
entry:
  %m.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4744, metadata !DIExpression()), !dbg !4746
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !4745, metadata !DIExpression()), !dbg !4747
  %0 = load ptr, ptr %m.addr, align 8, !dbg !4748
  %1 = load ptr, ptr %s.addr, align 8, !dbg !4749
  call void @seq_escape(ptr noundef %0, ptr noundef %1, ptr noundef @.str.5) #9, !dbg !4750
  ret void, !dbg !4751
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4752 dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4755 dso_local i32 @seq_path_root(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @show_type(ptr noundef %m, ptr noundef %sb) #1 align 16 !dbg !4758 {
entry:
  %m.addr = alloca ptr, align 8
  %sb.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4762, metadata !DIExpression()), !dbg !4764
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4763, metadata !DIExpression()), !dbg !4765
  %0 = load ptr, ptr %m.addr, align 8, !dbg !4766
  %1 = load ptr, ptr %sb.addr, align 8, !dbg !4767
  %s_type = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 5, !dbg !4768
  %2 = load ptr, ptr %s_type, align 8, !dbg !4768
  %name = getelementptr inbounds %struct.file_system_type, ptr %2, i32 0, i32 0, !dbg !4769
  %3 = load ptr, ptr %name, align 8, !dbg !4769
  call void @mangle(ptr noundef %0, ptr noundef %3) #9, !dbg !4770
  %4 = load ptr, ptr %sb.addr, align 8, !dbg !4771
  %s_subtype = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 39, !dbg !4773
  %5 = load ptr, ptr %s_subtype, align 8, !dbg !4773
  %tobool = icmp ne ptr %5, null, !dbg !4771
  br i1 %tobool, label %if.then, label %if.end, !dbg !4774

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %m.addr, align 8, !dbg !4775
  call void @seq_putc(ptr noundef %6, i8 noundef zeroext 46) #9, !dbg !4777
  %7 = load ptr, ptr %m.addr, align 8, !dbg !4778
  %8 = load ptr, ptr %sb.addr, align 8, !dbg !4779
  %s_subtype1 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 39, !dbg !4780
  %9 = load ptr, ptr %s_subtype1, align 8, !dbg !4780
  call void @mangle(ptr noundef %7, ptr noundef %9) #9, !dbg !4781
  br label %if.end, !dbg !4782

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4783
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4784 dso_local void @seq_puts(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4785 dso_local zeroext i1 @__mnt_is_readonly(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @show_sb_opts(ptr noundef %m, ptr noundef %sb) #1 align 16 !dbg !3854 {
entry:
  %m.addr = alloca ptr, align 8
  %sb.addr = alloca ptr, align 8
  %fs_infop = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !3858, metadata !DIExpression()), !dbg !4788
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !3859, metadata !DIExpression()), !dbg !4789
  call void @llvm.lifetime.start.p0(i64 8, ptr %fs_infop) #8, !dbg !4790
  call void @llvm.dbg.declare(metadata ptr %fs_infop, metadata !3860, metadata !DIExpression()), !dbg !4791
  store ptr @show_sb_opts.fs_opts, ptr %fs_infop, align 8, !dbg !4792
  br label %for.cond, !dbg !4794

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %fs_infop, align 8, !dbg !4795
  %flag = getelementptr inbounds %struct.proc_fs_opts, ptr %0, i32 0, i32 0, !dbg !4797
  %1 = load i32, ptr %flag, align 8, !dbg !4797
  %tobool = icmp ne i32 %1, 0, !dbg !4798
  br i1 %tobool, label %for.body, label %for.end, !dbg !4798

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !4799
  %s_flags = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 10, !dbg !4802
  %3 = load i64, ptr %s_flags, align 16, !dbg !4802
  %4 = load ptr, ptr %fs_infop, align 8, !dbg !4803
  %flag1 = getelementptr inbounds %struct.proc_fs_opts, ptr %4, i32 0, i32 0, !dbg !4804
  %5 = load i32, ptr %flag1, align 8, !dbg !4804
  %conv = sext i32 %5 to i64, !dbg !4803
  %and = and i64 %3, %conv, !dbg !4805
  %tobool2 = icmp ne i64 %and, 0, !dbg !4805
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4806

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %m.addr, align 8, !dbg !4807
  %7 = load ptr, ptr %fs_infop, align 8, !dbg !4808
  %str = getelementptr inbounds %struct.proc_fs_opts, ptr %7, i32 0, i32 1, !dbg !4809
  %8 = load ptr, ptr %str, align 8, !dbg !4809
  call void @seq_puts(ptr noundef %6, ptr noundef %8) #9, !dbg !4810
  br label %if.end, !dbg !4810

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !4811

for.inc:                                          ; preds = %if.end
  %9 = load ptr, ptr %fs_infop, align 8, !dbg !4812
  %incdec.ptr = getelementptr %struct.proc_fs_opts, ptr %9, i32 1, !dbg !4812
  store ptr %incdec.ptr, ptr %fs_infop, align 8, !dbg !4812
  br label %for.cond, !dbg !4813, !llvm.loop !4814

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %m.addr, align 8, !dbg !4818
  %11 = load ptr, ptr %sb.addr, align 8, !dbg !4819
  %call = call i32 @security_sb_show_options(ptr noundef %10, ptr noundef %11) #9, !dbg !4820
  call void @llvm.lifetime.end.p0(i64 8, ptr %fs_infop) #8, !dbg !4821
  ret i32 %call, !dbg !4822
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @show_mnt_opts(ptr noundef %m, ptr noundef %mnt) #1 align 16 !dbg !3891 {
entry:
  %m.addr = alloca ptr, align 8
  %mnt.addr = alloca ptr, align 8
  %fs_infop = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !3895, metadata !DIExpression()), !dbg !4823
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !3896, metadata !DIExpression()), !dbg !4824
  call void @llvm.lifetime.start.p0(i64 8, ptr %fs_infop) #8, !dbg !4825
  call void @llvm.dbg.declare(metadata ptr %fs_infop, metadata !3897, metadata !DIExpression()), !dbg !4826
  store ptr @show_mnt_opts.mnt_opts, ptr %fs_infop, align 8, !dbg !4827
  br label %for.cond, !dbg !4829

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %fs_infop, align 8, !dbg !4830
  %flag = getelementptr inbounds %struct.proc_fs_opts, ptr %0, i32 0, i32 0, !dbg !4832
  %1 = load i32, ptr %flag, align 8, !dbg !4832
  %tobool = icmp ne i32 %1, 0, !dbg !4833
  br i1 %tobool, label %for.body, label %for.end, !dbg !4833

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %mnt.addr, align 8, !dbg !4834
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %2, i32 0, i32 2, !dbg !4837
  %3 = load i32, ptr %mnt_flags, align 8, !dbg !4837
  %4 = load ptr, ptr %fs_infop, align 8, !dbg !4838
  %flag1 = getelementptr inbounds %struct.proc_fs_opts, ptr %4, i32 0, i32 0, !dbg !4839
  %5 = load i32, ptr %flag1, align 8, !dbg !4839
  %and = and i32 %3, %5, !dbg !4840
  %tobool2 = icmp ne i32 %and, 0, !dbg !4840
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4841

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %m.addr, align 8, !dbg !4842
  %7 = load ptr, ptr %fs_infop, align 8, !dbg !4843
  %str = getelementptr inbounds %struct.proc_fs_opts, ptr %7, i32 0, i32 1, !dbg !4844
  %8 = load ptr, ptr %str, align 8, !dbg !4844
  call void @seq_puts(ptr noundef %6, ptr noundef %8) #9, !dbg !4845
  br label %if.end, !dbg !4845

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !4846

for.inc:                                          ; preds = %if.end
  %9 = load ptr, ptr %fs_infop, align 8, !dbg !4847
  %incdec.ptr = getelementptr %struct.proc_fs_opts, ptr %9, i32 1, !dbg !4847
  store ptr %incdec.ptr, ptr %fs_infop, align 8, !dbg !4847
  br label %for.cond, !dbg !4848, !llvm.loop !4849

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %mnt.addr, align 8, !dbg !4851
  %call = call zeroext i1 @is_idmapped_mnt(ptr noundef %10) #9, !dbg !4853
  br i1 %call, label %if.then3, label %if.end4, !dbg !4854

if.then3:                                         ; preds = %for.end
  %11 = load ptr, ptr %m.addr, align 8, !dbg !4855
  call void @seq_puts(ptr noundef %11, ptr noundef @.str.17) #9, !dbg !4856
  br label %if.end4, !dbg !4856

if.end4:                                          ; preds = %if.then3, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %fs_infop) #8, !dbg !4857
  ret void, !dbg !4857
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @seq_escape(ptr noundef %m, ptr noundef %s, ptr noundef %esc) #4 align 16 !dbg !4858 {
entry:
  %m.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %esc.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4862, metadata !DIExpression()), !dbg !4865
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !4863, metadata !DIExpression()), !dbg !4866
  store ptr %esc, ptr %esc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %esc.addr, metadata !4864, metadata !DIExpression()), !dbg !4867
  %0 = load ptr, ptr %m.addr, align 8, !dbg !4868
  %1 = load ptr, ptr %s.addr, align 8, !dbg !4869
  %2 = load ptr, ptr %esc.addr, align 8, !dbg !4870
  call void @seq_escape_str(ptr noundef %0, ptr noundef %1, i32 noundef 8, ptr noundef %2) #9, !dbg !4871
  ret void, !dbg !4872
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @seq_escape_str(ptr noundef %m, ptr noundef %src, i32 noundef %flags, ptr noundef %esc) #4 align 16 !dbg !4873 {
entry:
  %m.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %esc.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4877, metadata !DIExpression()), !dbg !4881
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4878, metadata !DIExpression()), !dbg !4882
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4879, metadata !DIExpression()), !dbg !4883
  store ptr %esc, ptr %esc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %esc.addr, metadata !4880, metadata !DIExpression()), !dbg !4884
  %0 = load ptr, ptr %m.addr, align 8, !dbg !4885
  %1 = load ptr, ptr %src.addr, align 8, !dbg !4886
  %2 = load ptr, ptr %src.addr, align 8, !dbg !4887
  %call = call i64 @strlen(ptr noundef %2) #9, !dbg !4888
  %3 = load i32, ptr %flags.addr, align 4, !dbg !4889
  %4 = load ptr, ptr %esc.addr, align 8, !dbg !4890
  call void @seq_escape_mem(ptr noundef %0, ptr noundef %1, i64 noundef %call, i32 noundef %3, ptr noundef %4) #9, !dbg !4891
  ret void, !dbg !4892
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4893 dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4896 dso_local i64 @strlen(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4900 dso_local i32 @security_sb_show_options(ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_idmapped_mnt(ptr noundef %mnt) #4 align 16 !dbg !4902 {
entry:
  %mnt.addr = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4908, metadata !DIExpression()), !dbg !4909
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !4910
  %call = call ptr @mnt_idmap(ptr noundef %0) #9, !dbg !4911
  %cmp = icmp ne ptr %call, @nop_mnt_idmap, !dbg !4912
  ret i1 %cmp, !dbg !4913
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @mnt_idmap(ptr noundef %mnt) #4 align 16 !dbg !4914 {
entry:
  %mnt.addr = alloca ptr, align 8
  %___p1 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4918, metadata !DIExpression()), !dbg !4922
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #8, !dbg !4923
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !4919, metadata !DIExpression()), !dbg !4923
  br label %do.body, !dbg !4924

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4926

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4926

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !4924
  %mnt_idmap = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 3, !dbg !4924
  %1 = load volatile ptr, ptr %mnt_idmap, align 8, !dbg !4924
  store ptr %1, ptr %tmp, align 8, !dbg !4926
  %2 = load ptr, ptr %tmp, align 8, !dbg !4924
  store ptr %2, ptr %___p1, align 8, !dbg !4923
  br label %do.body1, !dbg !4923

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !4928

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4928

do.end3:                                          ; preds = %do.cond2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !4923, !srcloc !4930
  %3 = load ptr, ptr %___p1, align 8, !dbg !4923
  store ptr %3, ptr %tmp4, align 8, !dbg !4923
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #8, !dbg !4931
  %4 = load ptr, ptr %tmp4, align 8, !dbg !4923
  ret ptr %4, !dbg !4932
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4933 dso_local void @mnt_cursor_del(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4936 dso_local i32 @seq_release_private(ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @show_mountinfo(ptr noundef %m, ptr noundef %mnt) #1 align 16 !dbg !4937 {
entry:
  %m.addr = alloca ptr, align 8
  %mnt.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %r = alloca ptr, align 8
  %sb = alloca ptr, align 8
  %mnt_path = alloca %struct.path, align 8
  %err = alloca i32, align 4
  %master = alloca i32, align 4
  %dom = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4939, metadata !DIExpression()), !dbg !4951
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !4940, metadata !DIExpression()), !dbg !4952
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !4953
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4941, metadata !DIExpression()), !dbg !4954
  %0 = load ptr, ptr %m.addr, align 8, !dbg !4955
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !4956
  %1 = load ptr, ptr %private, align 8, !dbg !4956
  store ptr %1, ptr %p, align 8, !dbg !4954
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #8, !dbg !4957
  call void @llvm.dbg.declare(metadata ptr %r, metadata !4942, metadata !DIExpression()), !dbg !4958
  %2 = load ptr, ptr %mnt.addr, align 8, !dbg !4959
  %call = call ptr @real_mount(ptr noundef %2) #9, !dbg !4960
  store ptr %call, ptr %r, align 8, !dbg !4958
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #8, !dbg !4961
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !4943, metadata !DIExpression()), !dbg !4962
  %3 = load ptr, ptr %mnt.addr, align 8, !dbg !4963
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %3, i32 0, i32 1, !dbg !4964
  %4 = load ptr, ptr %mnt_sb, align 8, !dbg !4964
  store ptr %4, ptr %sb, align 8, !dbg !4962
  call void @llvm.lifetime.start.p0(i64 16, ptr %mnt_path) #8, !dbg !4965
  call void @llvm.dbg.declare(metadata ptr %mnt_path, metadata !4944, metadata !DIExpression()), !dbg !4966
  %mnt1 = getelementptr inbounds %struct.path, ptr %mnt_path, i32 0, i32 0, !dbg !4967
  %5 = load ptr, ptr %mnt.addr, align 8, !dbg !4968
  store ptr %5, ptr %mnt1, align 8, !dbg !4967
  %dentry = getelementptr inbounds %struct.path, ptr %mnt_path, i32 0, i32 1, !dbg !4967
  %6 = load ptr, ptr %mnt.addr, align 8, !dbg !4969
  %mnt_root = getelementptr inbounds %struct.vfsmount, ptr %6, i32 0, i32 0, !dbg !4970
  %7 = load ptr, ptr %mnt_root, align 8, !dbg !4970
  store ptr %7, ptr %dentry, align 8, !dbg !4967
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8, !dbg !4971
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4945, metadata !DIExpression()), !dbg !4972
  %8 = load ptr, ptr %m.addr, align 8, !dbg !4973
  %9 = load ptr, ptr %r, align 8, !dbg !4974
  %mnt_id = getelementptr inbounds %struct.mount, ptr %9, i32 0, i32 22, !dbg !4975
  %10 = load i32, ptr %mnt_id, align 4, !dbg !4975
  %11 = load ptr, ptr %r, align 8, !dbg !4976
  %mnt_parent = getelementptr inbounds %struct.mount, ptr %11, i32 0, i32 1, !dbg !4977
  %12 = load ptr, ptr %mnt_parent, align 8, !dbg !4977
  %mnt_id2 = getelementptr inbounds %struct.mount, ptr %12, i32 0, i32 22, !dbg !4978
  %13 = load i32, ptr %mnt_id2, align 4, !dbg !4978
  %14 = load ptr, ptr %sb, align 8, !dbg !4979
  %s_dev = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 1, !dbg !4979
  %15 = load i32, ptr %s_dev, align 16, !dbg !4979
  %shr = lshr i32 %15, 20, !dbg !4979
  %16 = load ptr, ptr %sb, align 8, !dbg !4980
  %s_dev3 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 1, !dbg !4980
  %17 = load i32, ptr %s_dev3, align 16, !dbg !4980
  %and = and i32 %17, 1048575, !dbg !4980
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef @.str.18, i32 noundef %10, i32 noundef %13, i32 noundef %shr, i32 noundef %and) #9, !dbg !4981
  %18 = load ptr, ptr %sb, align 8, !dbg !4982
  %s_op = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 6, !dbg !4984
  %19 = load ptr, ptr %s_op, align 16, !dbg !4984
  %show_path = getelementptr inbounds %struct.super_operations, ptr %19, i32 0, i32 18, !dbg !4985
  %20 = load ptr, ptr %show_path, align 8, !dbg !4985
  %tobool = icmp ne ptr %20, null, !dbg !4982
  br i1 %tobool, label %if.then, label %if.else, !dbg !4986

if.then:                                          ; preds = %entry
  %21 = load ptr, ptr %sb, align 8, !dbg !4987
  %s_op4 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 6, !dbg !4989
  %22 = load ptr, ptr %s_op4, align 16, !dbg !4989
  %show_path5 = getelementptr inbounds %struct.super_operations, ptr %22, i32 0, i32 18, !dbg !4990
  %23 = load ptr, ptr %show_path5, align 8, !dbg !4990
  %24 = load ptr, ptr %m.addr, align 8, !dbg !4991
  %25 = load ptr, ptr %mnt.addr, align 8, !dbg !4992
  %mnt_root6 = getelementptr inbounds %struct.vfsmount, ptr %25, i32 0, i32 0, !dbg !4993
  %26 = load ptr, ptr %mnt_root6, align 8, !dbg !4993
  %call7 = call i32 %23(ptr noundef %24, ptr noundef %26) #9, !dbg !4987
  store i32 %call7, ptr %err, align 4, !dbg !4994
  %27 = load i32, ptr %err, align 4, !dbg !4995
  %tobool8 = icmp ne i32 %27, 0, !dbg !4995
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !4997

if.then9:                                         ; preds = %if.then
  br label %out, !dbg !4998

if.end:                                           ; preds = %if.then
  br label %if.end12, !dbg !4999

if.else:                                          ; preds = %entry
  %28 = load ptr, ptr %m.addr, align 8, !dbg !5000
  %29 = load ptr, ptr %mnt.addr, align 8, !dbg !5002
  %mnt_root10 = getelementptr inbounds %struct.vfsmount, ptr %29, i32 0, i32 0, !dbg !5003
  %30 = load ptr, ptr %mnt_root10, align 8, !dbg !5003
  %call11 = call i32 @seq_dentry(ptr noundef %28, ptr noundef %30, ptr noundef @.str.1) #9, !dbg !5004
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end
  %31 = load ptr, ptr %m.addr, align 8, !dbg !5005
  call void @seq_putc(ptr noundef %31, i8 noundef zeroext 32) #9, !dbg !5006
  %32 = load ptr, ptr %m.addr, align 8, !dbg !5007
  %33 = load ptr, ptr %p, align 8, !dbg !5008
  %root = getelementptr inbounds %struct.proc_mounts, ptr %33, i32 0, i32 1, !dbg !5009
  %call13 = call i32 @seq_path_root(ptr noundef %32, ptr noundef %mnt_path, ptr noundef %root, ptr noundef @.str.1) #9, !dbg !5010
  store i32 %call13, ptr %err, align 4, !dbg !5011
  %34 = load i32, ptr %err, align 4, !dbg !5012
  %tobool14 = icmp ne i32 %34, 0, !dbg !5012
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5014

if.then15:                                        ; preds = %if.end12
  br label %out, !dbg !5015

if.end16:                                         ; preds = %if.end12
  %35 = load ptr, ptr %m.addr, align 8, !dbg !5016
  %36 = load ptr, ptr %mnt.addr, align 8, !dbg !5017
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %36, i32 0, i32 2, !dbg !5018
  %37 = load i32, ptr %mnt_flags, align 8, !dbg !5018
  %and17 = and i32 %37, 64, !dbg !5019
  %tobool18 = icmp ne i32 %and17, 0, !dbg !5017
  %38 = zext i1 %tobool18 to i64, !dbg !5017
  %cond = select i1 %tobool18, ptr @.str.2, ptr @.str.3, !dbg !5017
  call void @seq_puts(ptr noundef %35, ptr noundef %cond) #9, !dbg !5020
  %39 = load ptr, ptr %m.addr, align 8, !dbg !5021
  %40 = load ptr, ptr %mnt.addr, align 8, !dbg !5022
  call void @show_mnt_opts(ptr noundef %39, ptr noundef %40) #9, !dbg !5023
  %41 = load ptr, ptr %r, align 8, !dbg !5024
  %mnt19 = getelementptr inbounds %struct.mount, ptr %41, i32 0, i32 3, !dbg !5024
  %mnt_flags20 = getelementptr inbounds %struct.vfsmount, ptr %mnt19, i32 0, i32 2, !dbg !5024
  %42 = load i32, ptr %mnt_flags20, align 8, !dbg !5024
  %and21 = and i32 %42, 4096, !dbg !5024
  %tobool22 = icmp ne i32 %and21, 0, !dbg !5024
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !5026

if.then23:                                        ; preds = %if.end16
  %43 = load ptr, ptr %m.addr, align 8, !dbg !5027
  %44 = load ptr, ptr %r, align 8, !dbg !5028
  %mnt_group_id = getelementptr inbounds %struct.mount, ptr %44, i32 0, i32 23, !dbg !5029
  %45 = load i32, ptr %mnt_group_id, align 8, !dbg !5029
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %43, ptr noundef @.str.19, i32 noundef %45) #9, !dbg !5030
  br label %if.end24, !dbg !5030

if.end24:                                         ; preds = %if.then23, %if.end16
  %46 = load ptr, ptr %r, align 8, !dbg !5031
  %mnt_master = getelementptr inbounds %struct.mount, ptr %46, i32 0, i32 15, !dbg !5031
  %47 = load ptr, ptr %mnt_master, align 8, !dbg !5031
  %tobool25 = icmp ne ptr %47, null, !dbg !5031
  br i1 %tobool25, label %if.then26, label %if.end34, !dbg !5032

if.then26:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 4, ptr %master) #8, !dbg !5033
  call void @llvm.dbg.declare(metadata ptr %master, metadata !4946, metadata !DIExpression()), !dbg !5034
  %48 = load ptr, ptr %r, align 8, !dbg !5035
  %mnt_master27 = getelementptr inbounds %struct.mount, ptr %48, i32 0, i32 15, !dbg !5036
  %49 = load ptr, ptr %mnt_master27, align 8, !dbg !5036
  %mnt_group_id28 = getelementptr inbounds %struct.mount, ptr %49, i32 0, i32 23, !dbg !5037
  %50 = load i32, ptr %mnt_group_id28, align 8, !dbg !5037
  store i32 %50, ptr %master, align 4, !dbg !5034
  call void @llvm.lifetime.start.p0(i64 4, ptr %dom) #8, !dbg !5038
  call void @llvm.dbg.declare(metadata ptr %dom, metadata !4949, metadata !DIExpression()), !dbg !5039
  %51 = load ptr, ptr %r, align 8, !dbg !5040
  %52 = load ptr, ptr %p, align 8, !dbg !5041
  %root29 = getelementptr inbounds %struct.proc_mounts, ptr %52, i32 0, i32 1, !dbg !5042
  %call30 = call i32 @get_dominating_id(ptr noundef %51, ptr noundef %root29) #9, !dbg !5043
  store i32 %call30, ptr %dom, align 4, !dbg !5039
  %53 = load ptr, ptr %m.addr, align 8, !dbg !5044
  %54 = load i32, ptr %master, align 4, !dbg !5045
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %53, ptr noundef @.str.20, i32 noundef %54) #9, !dbg !5046
  %55 = load i32, ptr %dom, align 4, !dbg !5047
  %tobool31 = icmp ne i32 %55, 0, !dbg !5047
  br i1 %tobool31, label %land.lhs.true, label %if.end33, !dbg !5049

land.lhs.true:                                    ; preds = %if.then26
  %56 = load i32, ptr %dom, align 4, !dbg !5050
  %57 = load i32, ptr %master, align 4, !dbg !5051
  %cmp = icmp ne i32 %56, %57, !dbg !5052
  br i1 %cmp, label %if.then32, label %if.end33, !dbg !5053

if.then32:                                        ; preds = %land.lhs.true
  %58 = load ptr, ptr %m.addr, align 8, !dbg !5054
  %59 = load i32, ptr %dom, align 4, !dbg !5055
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %58, ptr noundef @.str.21, i32 noundef %59) #9, !dbg !5056
  br label %if.end33, !dbg !5056

if.end33:                                         ; preds = %if.then32, %land.lhs.true, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %dom) #8, !dbg !5057
  call void @llvm.lifetime.end.p0(i64 4, ptr %master) #8, !dbg !5057
  br label %if.end34, !dbg !5058

if.end34:                                         ; preds = %if.end33, %if.end24
  %60 = load ptr, ptr %r, align 8, !dbg !5059
  %mnt35 = getelementptr inbounds %struct.mount, ptr %60, i32 0, i32 3, !dbg !5059
  %mnt_flags36 = getelementptr inbounds %struct.vfsmount, ptr %mnt35, i32 0, i32 2, !dbg !5059
  %61 = load i32, ptr %mnt_flags36, align 8, !dbg !5059
  %and37 = and i32 %61, 8192, !dbg !5059
  %tobool38 = icmp ne i32 %and37, 0, !dbg !5059
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !5061

if.then39:                                        ; preds = %if.end34
  %62 = load ptr, ptr %m.addr, align 8, !dbg !5062
  call void @seq_puts(ptr noundef %62, ptr noundef @.str.22) #9, !dbg !5063
  br label %if.end40, !dbg !5063

if.end40:                                         ; preds = %if.then39, %if.end34
  %63 = load ptr, ptr %m.addr, align 8, !dbg !5064
  call void @seq_puts(ptr noundef %63, ptr noundef @.str.23) #9, !dbg !5065
  %64 = load ptr, ptr %m.addr, align 8, !dbg !5066
  %65 = load ptr, ptr %sb, align 8, !dbg !5067
  call void @show_type(ptr noundef %64, ptr noundef %65) #9, !dbg !5068
  %66 = load ptr, ptr %m.addr, align 8, !dbg !5069
  call void @seq_putc(ptr noundef %66, i8 noundef zeroext 32) #9, !dbg !5070
  %67 = load ptr, ptr %sb, align 8, !dbg !5071
  %s_op41 = getelementptr inbounds %struct.super_block, ptr %67, i32 0, i32 6, !dbg !5073
  %68 = load ptr, ptr %s_op41, align 16, !dbg !5073
  %show_devname = getelementptr inbounds %struct.super_operations, ptr %68, i32 0, i32 17, !dbg !5074
  %69 = load ptr, ptr %show_devname, align 8, !dbg !5074
  %tobool42 = icmp ne ptr %69, null, !dbg !5071
  br i1 %tobool42, label %if.then43, label %if.else51, !dbg !5075

if.then43:                                        ; preds = %if.end40
  %70 = load ptr, ptr %sb, align 8, !dbg !5076
  %s_op44 = getelementptr inbounds %struct.super_block, ptr %70, i32 0, i32 6, !dbg !5078
  %71 = load ptr, ptr %s_op44, align 16, !dbg !5078
  %show_devname45 = getelementptr inbounds %struct.super_operations, ptr %71, i32 0, i32 17, !dbg !5079
  %72 = load ptr, ptr %show_devname45, align 8, !dbg !5079
  %73 = load ptr, ptr %m.addr, align 8, !dbg !5080
  %74 = load ptr, ptr %mnt.addr, align 8, !dbg !5081
  %mnt_root46 = getelementptr inbounds %struct.vfsmount, ptr %74, i32 0, i32 0, !dbg !5082
  %75 = load ptr, ptr %mnt_root46, align 8, !dbg !5082
  %call47 = call i32 %72(ptr noundef %73, ptr noundef %75) #9, !dbg !5076
  store i32 %call47, ptr %err, align 4, !dbg !5083
  %76 = load i32, ptr %err, align 4, !dbg !5084
  %tobool48 = icmp ne i32 %76, 0, !dbg !5084
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !5086

if.then49:                                        ; preds = %if.then43
  br label %out, !dbg !5087

if.end50:                                         ; preds = %if.then43
  br label %if.end55, !dbg !5088

if.else51:                                        ; preds = %if.end40
  %77 = load ptr, ptr %m.addr, align 8, !dbg !5089
  %78 = load ptr, ptr %r, align 8, !dbg !5091
  %mnt_devname = getelementptr inbounds %struct.mount, ptr %78, i32 0, i32 9, !dbg !5092
  %79 = load ptr, ptr %mnt_devname, align 8, !dbg !5092
  %tobool52 = icmp ne ptr %79, null, !dbg !5091
  br i1 %tobool52, label %cond.true, label %cond.false, !dbg !5091

cond.true:                                        ; preds = %if.else51
  %80 = load ptr, ptr %r, align 8, !dbg !5093
  %mnt_devname53 = getelementptr inbounds %struct.mount, ptr %80, i32 0, i32 9, !dbg !5094
  %81 = load ptr, ptr %mnt_devname53, align 8, !dbg !5094
  br label %cond.end, !dbg !5091

cond.false:                                       ; preds = %if.else51
  br label %cond.end, !dbg !5091

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond54 = phi ptr [ %81, %cond.true ], [ @.str, %cond.false ], !dbg !5091
  call void @mangle(ptr noundef %77, ptr noundef %cond54) #9, !dbg !5095
  br label %if.end55

if.end55:                                         ; preds = %cond.end, %if.end50
  %82 = load ptr, ptr %m.addr, align 8, !dbg !5096
  %83 = load ptr, ptr %sb, align 8, !dbg !5097
  %call56 = call zeroext i1 @sb_rdonly(ptr noundef %83) #9, !dbg !5098
  %84 = zext i1 %call56 to i64, !dbg !5098
  %cond57 = select i1 %call56, ptr @.str.2, ptr @.str.3, !dbg !5098
  call void @seq_puts(ptr noundef %82, ptr noundef %cond57) #9, !dbg !5099
  %85 = load ptr, ptr %m.addr, align 8, !dbg !5100
  %86 = load ptr, ptr %sb, align 8, !dbg !5101
  %call58 = call i32 @show_sb_opts(ptr noundef %85, ptr noundef %86) #9, !dbg !5102
  store i32 %call58, ptr %err, align 4, !dbg !5103
  %87 = load i32, ptr %err, align 4, !dbg !5104
  %tobool59 = icmp ne i32 %87, 0, !dbg !5104
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !5106

if.then60:                                        ; preds = %if.end55
  br label %out, !dbg !5107

if.end61:                                         ; preds = %if.end55
  %88 = load ptr, ptr %sb, align 8, !dbg !5108
  %s_op62 = getelementptr inbounds %struct.super_block, ptr %88, i32 0, i32 6, !dbg !5110
  %89 = load ptr, ptr %s_op62, align 16, !dbg !5110
  %show_options = getelementptr inbounds %struct.super_operations, ptr %89, i32 0, i32 16, !dbg !5111
  %90 = load ptr, ptr %show_options, align 8, !dbg !5111
  %tobool63 = icmp ne ptr %90, null, !dbg !5108
  br i1 %tobool63, label %if.then64, label %if.end69, !dbg !5112

if.then64:                                        ; preds = %if.end61
  %91 = load ptr, ptr %sb, align 8, !dbg !5113
  %s_op65 = getelementptr inbounds %struct.super_block, ptr %91, i32 0, i32 6, !dbg !5114
  %92 = load ptr, ptr %s_op65, align 16, !dbg !5114
  %show_options66 = getelementptr inbounds %struct.super_operations, ptr %92, i32 0, i32 16, !dbg !5115
  %93 = load ptr, ptr %show_options66, align 8, !dbg !5115
  %94 = load ptr, ptr %m.addr, align 8, !dbg !5116
  %95 = load ptr, ptr %mnt.addr, align 8, !dbg !5117
  %mnt_root67 = getelementptr inbounds %struct.vfsmount, ptr %95, i32 0, i32 0, !dbg !5118
  %96 = load ptr, ptr %mnt_root67, align 8, !dbg !5118
  %call68 = call i32 %93(ptr noundef %94, ptr noundef %96) #9, !dbg !5113
  store i32 %call68, ptr %err, align 4, !dbg !5119
  br label %if.end69, !dbg !5120

if.end69:                                         ; preds = %if.then64, %if.end61
  %97 = load ptr, ptr %m.addr, align 8, !dbg !5121
  call void @seq_putc(ptr noundef %97, i8 noundef zeroext 10) #9, !dbg !5122
  br label %out, !dbg !5122

out:                                              ; preds = %if.end69, %if.then60, %if.then49, %if.then15, %if.then9
  call void @llvm.dbg.label(metadata !4950), !dbg !5123
  %98 = load i32, ptr %err, align 4, !dbg !5124
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8, !dbg !5125
  call void @llvm.lifetime.end.p0(i64 16, ptr %mnt_path) #8, !dbg !5125
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #8, !dbg !5125
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #8, !dbg !5125
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !5125
  ret i32 %98, !dbg !5126
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5127 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5130 dso_local i32 @seq_dentry(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5133 dso_local i32 @get_dominating_id(ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @sb_rdonly(ptr noundef %sb) #4 align 16 !dbg !5137 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5143, metadata !DIExpression()), !dbg !5144
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5145
  %s_flags = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10, !dbg !5146
  %1 = load i64, ptr %s_flags, align 16, !dbg !5146
  %and = and i64 %1, 1, !dbg !5147
  %tobool = icmp ne i64 %and, 0, !dbg !5145
  ret i1 %tobool, !dbg !5148
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @show_vfsstat(ptr noundef %m, ptr noundef %mnt) #1 align 16 !dbg !5149 {
entry:
  %m.addr = alloca ptr, align 8
  %mnt.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %r = alloca ptr, align 8
  %mnt_path = alloca %struct.path, align 8
  %sb = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5151, metadata !DIExpression()), !dbg !5159
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !5152, metadata !DIExpression()), !dbg !5160
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !5161
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5153, metadata !DIExpression()), !dbg !5162
  %0 = load ptr, ptr %m.addr, align 8, !dbg !5163
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !5164
  %1 = load ptr, ptr %private, align 8, !dbg !5164
  store ptr %1, ptr %p, align 8, !dbg !5162
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #8, !dbg !5165
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5154, metadata !DIExpression()), !dbg !5166
  %2 = load ptr, ptr %mnt.addr, align 8, !dbg !5167
  %call = call ptr @real_mount(ptr noundef %2) #9, !dbg !5168
  store ptr %call, ptr %r, align 8, !dbg !5166
  call void @llvm.lifetime.start.p0(i64 16, ptr %mnt_path) #8, !dbg !5169
  call void @llvm.dbg.declare(metadata ptr %mnt_path, metadata !5155, metadata !DIExpression()), !dbg !5170
  %mnt1 = getelementptr inbounds %struct.path, ptr %mnt_path, i32 0, i32 0, !dbg !5171
  %3 = load ptr, ptr %mnt.addr, align 8, !dbg !5172
  store ptr %3, ptr %mnt1, align 8, !dbg !5171
  %dentry = getelementptr inbounds %struct.path, ptr %mnt_path, i32 0, i32 1, !dbg !5171
  %4 = load ptr, ptr %mnt.addr, align 8, !dbg !5173
  %mnt_root = getelementptr inbounds %struct.vfsmount, ptr %4, i32 0, i32 0, !dbg !5174
  %5 = load ptr, ptr %mnt_root, align 8, !dbg !5174
  store ptr %5, ptr %dentry, align 8, !dbg !5171
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #8, !dbg !5175
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !5156, metadata !DIExpression()), !dbg !5176
  %dentry2 = getelementptr inbounds %struct.path, ptr %mnt_path, i32 0, i32 1, !dbg !5177
  %6 = load ptr, ptr %dentry2, align 8, !dbg !5177
  %d_sb = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 9, !dbg !5178
  %7 = load ptr, ptr %d_sb, align 8, !dbg !5178
  store ptr %7, ptr %sb, align 8, !dbg !5176
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8, !dbg !5179
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5157, metadata !DIExpression()), !dbg !5180
  %8 = load ptr, ptr %sb, align 8, !dbg !5181
  %s_op = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 6, !dbg !5183
  %9 = load ptr, ptr %s_op, align 16, !dbg !5183
  %show_devname = getelementptr inbounds %struct.super_operations, ptr %9, i32 0, i32 17, !dbg !5184
  %10 = load ptr, ptr %show_devname, align 8, !dbg !5184
  %tobool = icmp ne ptr %10, null, !dbg !5181
  br i1 %tobool, label %if.then, label %if.else, !dbg !5185

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %m.addr, align 8, !dbg !5186
  call void @seq_puts(ptr noundef %11, ptr noundef @.str.24) #9, !dbg !5188
  %12 = load ptr, ptr %sb, align 8, !dbg !5189
  %s_op3 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 6, !dbg !5190
  %13 = load ptr, ptr %s_op3, align 16, !dbg !5190
  %show_devname4 = getelementptr inbounds %struct.super_operations, ptr %13, i32 0, i32 17, !dbg !5191
  %14 = load ptr, ptr %show_devname4, align 8, !dbg !5191
  %15 = load ptr, ptr %m.addr, align 8, !dbg !5192
  %dentry5 = getelementptr inbounds %struct.path, ptr %mnt_path, i32 0, i32 1, !dbg !5193
  %16 = load ptr, ptr %dentry5, align 8, !dbg !5193
  %call6 = call i32 %14(ptr noundef %15, ptr noundef %16) #9, !dbg !5189
  store i32 %call6, ptr %err, align 4, !dbg !5194
  %17 = load i32, ptr %err, align 4, !dbg !5195
  %tobool7 = icmp ne i32 %17, 0, !dbg !5195
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !5197

if.then8:                                         ; preds = %if.then
  br label %out, !dbg !5198

if.end:                                           ; preds = %if.then
  br label %if.end14, !dbg !5199

if.else:                                          ; preds = %entry
  %18 = load ptr, ptr %r, align 8, !dbg !5200
  %mnt_devname = getelementptr inbounds %struct.mount, ptr %18, i32 0, i32 9, !dbg !5203
  %19 = load ptr, ptr %mnt_devname, align 8, !dbg !5203
  %tobool9 = icmp ne ptr %19, null, !dbg !5200
  br i1 %tobool9, label %if.then10, label %if.else12, !dbg !5204

if.then10:                                        ; preds = %if.else
  %20 = load ptr, ptr %m.addr, align 8, !dbg !5205
  call void @seq_puts(ptr noundef %20, ptr noundef @.str.24) #9, !dbg !5207
  %21 = load ptr, ptr %m.addr, align 8, !dbg !5208
  %22 = load ptr, ptr %r, align 8, !dbg !5209
  %mnt_devname11 = getelementptr inbounds %struct.mount, ptr %22, i32 0, i32 9, !dbg !5210
  %23 = load ptr, ptr %mnt_devname11, align 8, !dbg !5210
  call void @mangle(ptr noundef %21, ptr noundef %23) #9, !dbg !5211
  br label %if.end13, !dbg !5212

if.else12:                                        ; preds = %if.else
  %24 = load ptr, ptr %m.addr, align 8, !dbg !5213
  call void @seq_puts(ptr noundef %24, ptr noundef @.str.25) #9, !dbg !5214
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then10
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  %25 = load ptr, ptr %m.addr, align 8, !dbg !5215
  call void @seq_puts(ptr noundef %25, ptr noundef @.str.26) #9, !dbg !5216
  %26 = load ptr, ptr %m.addr, align 8, !dbg !5217
  %27 = load ptr, ptr %p, align 8, !dbg !5218
  %root = getelementptr inbounds %struct.proc_mounts, ptr %27, i32 0, i32 1, !dbg !5219
  %call15 = call i32 @seq_path_root(ptr noundef %26, ptr noundef %mnt_path, ptr noundef %root, ptr noundef @.str.1) #9, !dbg !5220
  store i32 %call15, ptr %err, align 4, !dbg !5221
  %28 = load i32, ptr %err, align 4, !dbg !5222
  %tobool16 = icmp ne i32 %28, 0, !dbg !5222
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !5224

if.then17:                                        ; preds = %if.end14
  br label %out, !dbg !5225

if.end18:                                         ; preds = %if.end14
  %29 = load ptr, ptr %m.addr, align 8, !dbg !5226
  call void @seq_putc(ptr noundef %29, i8 noundef zeroext 32) #9, !dbg !5227
  %30 = load ptr, ptr %m.addr, align 8, !dbg !5228
  call void @seq_puts(ptr noundef %30, ptr noundef @.str.27) #9, !dbg !5229
  %31 = load ptr, ptr %m.addr, align 8, !dbg !5230
  %32 = load ptr, ptr %sb, align 8, !dbg !5231
  call void @show_type(ptr noundef %31, ptr noundef %32) #9, !dbg !5232
  %33 = load ptr, ptr %sb, align 8, !dbg !5233
  %s_op19 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 6, !dbg !5235
  %34 = load ptr, ptr %s_op19, align 16, !dbg !5235
  %show_stats = getelementptr inbounds %struct.super_operations, ptr %34, i32 0, i32 19, !dbg !5236
  %35 = load ptr, ptr %show_stats, align 8, !dbg !5236
  %tobool20 = icmp ne ptr %35, null, !dbg !5233
  br i1 %tobool20, label %if.then21, label %if.end26, !dbg !5237

if.then21:                                        ; preds = %if.end18
  %36 = load ptr, ptr %m.addr, align 8, !dbg !5238
  call void @seq_putc(ptr noundef %36, i8 noundef zeroext 32) #9, !dbg !5240
  %37 = load ptr, ptr %sb, align 8, !dbg !5241
  %s_op22 = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 6, !dbg !5242
  %38 = load ptr, ptr %s_op22, align 16, !dbg !5242
  %show_stats23 = getelementptr inbounds %struct.super_operations, ptr %38, i32 0, i32 19, !dbg !5243
  %39 = load ptr, ptr %show_stats23, align 8, !dbg !5243
  %40 = load ptr, ptr %m.addr, align 8, !dbg !5244
  %dentry24 = getelementptr inbounds %struct.path, ptr %mnt_path, i32 0, i32 1, !dbg !5245
  %41 = load ptr, ptr %dentry24, align 8, !dbg !5245
  %call25 = call i32 %39(ptr noundef %40, ptr noundef %41) #9, !dbg !5241
  store i32 %call25, ptr %err, align 4, !dbg !5246
  br label %if.end26, !dbg !5247

if.end26:                                         ; preds = %if.then21, %if.end18
  %42 = load ptr, ptr %m.addr, align 8, !dbg !5248
  call void @seq_putc(ptr noundef %42, i8 noundef zeroext 10) #9, !dbg !5249
  br label %out, !dbg !5249

out:                                              ; preds = %if.end26, %if.then17, %if.then8
  call void @llvm.dbg.label(metadata !5158), !dbg !5250
  %43 = load i32, ptr %err, align 4, !dbg !5251
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8, !dbg !5252
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #8, !dbg !5252
  call void @llvm.lifetime.end.p0(i64 16, ptr %mnt_path) #8, !dbg !5252
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #8, !dbg !5252
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !5252
  ret i32 %43, !dbg !5253
}

attributes #0 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934}
!llvm.ident = !{!3935}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "proc_mounts_operations", scope: !2, file: !3, line: 324, type: !3363, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/.proc_namespace.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/proc_namespace\22 -D KBUILD_BASENAME=\22proc_namespace\22 -D KBUILD_MODNAME=\22proc_namespace\22 -D __KBUILD_MODNAME=kmod_proc_namespace -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/proc_namespace.ll fs/proc_namespace.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !183, globals: !3808, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/proc_namespace.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "064d0040173bfdd2815796c0234e6eb6")
!4 = !{!5, !14, !19, !25, !30, !46, !53, !61, !67, !74, !170, !175}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !15, line: 2052, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!16 = !{!17, !18}
!17 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!18 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !20, line: 54, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "USRQUOTA", value: 0)
!23 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!24 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !26, line: 65, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!29 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !31, line: 1325, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!33 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!34 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!35 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!36 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!37 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!38 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!39 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!40 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!41 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!42 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!43 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!44 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!45 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !47, line: 15, baseType: !7, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!48 = !{!49, !50, !51, !52}
!49 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!50 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!51 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!52 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !54, line: 68, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!57 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!58 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!59 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !76, file: !75, line: 147, baseType: !7, size: 32, elements: !167)
!75 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !75, line: 135, size: 512, elements: !77)
!77 = !{!78, !82, !84, !86, !90, !91, !107, !165, !166}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !76, file: !75, line: 136, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !76, file: !75, line: 137, baseType: !83, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !76, file: !75, line: 138, baseType: !85, size: 32, offset: 128)
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !76, file: !75, line: 139, baseType: !87, size: 16, offset: 160)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !88, line: 24, baseType: !89)
!88 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!89 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !76, file: !75, line: 150, baseType: !74, size: 32, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !76, file: !75, line: 151, baseType: !92, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !75, line: 64, baseType: !94)
!94 = !DISubroutineType(types: !95)
!95 = !{!85, !96, !85, !83, !97, !103}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !88, line: 61, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !100, line: 72, baseType: !101)
!100 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !100, line: 16, baseType: !102)
!102 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !88, line: 52, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !100, line: 88, baseType: !106)
!106 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !76, file: !75, line: 152, baseType: !108, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !75, line: 117, size: 256, elements: !110)
!110 = !{!111, !116}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !109, file: !75, line: 118, baseType: !112, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !88, line: 174, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 172, size: 32, elements: !114)
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !113, file: !88, line: 173, baseType: !85, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !109, file: !75, line: 119, baseType: !117, size: 192, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !118, line: 41, baseType: !119)
!118 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !118, line: 37, size: 192, elements: !120)
!120 = !{!121, !159}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !119, file: !118, line: 38, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !123, line: 29, baseType: !124)
!123 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !123, line: 17, size: 32, elements: !125)
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, scope: !124, file: !123, line: 18, baseType: !127, size: 32)
!127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !124, file: !123, line: 18, size: 32, elements: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !127, file: !123, line: 19, baseType: !130, size: 32)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !131, line: 14, size: 32, elements: !132)
!131 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !130, file: !131, line: 15, baseType: !134, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !135, line: 44, baseType: !136)
!135 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !135, line: 14, size: 32, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !135, line: 15, baseType: !139, size: 32)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !135, line: 15, size: 32, elements: !140)
!140 = !{!141, !142, !152}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !139, file: !135, line: 16, baseType: !112, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, scope: !139, file: !135, line: 24, baseType: !143, size: 16)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !139, file: !135, line: 24, size: 16, elements: !144)
!144 = !{!145, !151}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !143, file: !135, line: 25, baseType: !146, size: 8)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !147, line: 17, baseType: !148)
!147 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !149, line: 21, baseType: !150)
!149 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!150 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !143, file: !135, line: 26, baseType: !146, size: 8, offset: 8)
!152 = !DIDerivedType(tag: DW_TAG_member, scope: !139, file: !135, line: 28, baseType: !153, size: 32)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !139, file: !135, line: 28, size: 32, elements: !154)
!154 = !{!155, !158}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !153, file: !135, line: 29, baseType: !156, size: 16)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !147, line: 19, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !149, line: 24, baseType: !89)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !153, file: !135, line: 30, baseType: !156, size: 16, offset: 16)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !119, file: !118, line: 39, baseType: !160, size: 128, offset: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !88, line: 190, size: 128, elements: !161)
!161 = !{!162, !164}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !160, file: !88, line: 191, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !160, file: !88, line: 191, baseType: !163, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !76, file: !75, line: 153, baseType: !83, size: 64, offset: 384)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !76, file: !75, line: 154, baseType: !83, size: 64, offset: 448)
!167 = !{!168, !169}
!168 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!169 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !171, line: 10, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!172 = !{!173, !174}
!173 = !DIEnumerator(name: "false", value: 0)
!174 = !DIEnumerator(name: "true", value: 1)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !176, line: 119, baseType: !7, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!177 = !{!178, !179, !180, !181, !182}
!178 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!179 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!180 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!181 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!182 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!183 = !{!184, !186, !83, !190, !3803, !2418, !3805, !7}
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !185, line: 59, baseType: !7)
!185 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !189)
!189 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_inode", file: !192, line: 98, size: 5376, elements: !193)
!192 = !DIFile(filename: "fs/proc/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5901c10530dd4e261f60d4f1b5caf1e")
!193 = !{!194, !239, !240, !3681, !3740, !3799, !3800, !3801, !3802}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !191, file: !192, line: 99, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !197)
!197 = !{!198, !203, !204, !205, !218, !219, !220, !229}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !196, file: !6, line: 61, baseType: !199, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !176, line: 113, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !176, line: 111, size: 32, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !200, file: !176, line: 112, baseType: !112, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !196, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !196, file: !6, line: 63, baseType: !122, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !196, file: !6, line: 65, baseType: !206, size: 256, offset: 128)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 256, elements: !216)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !88, line: 194, size: 64, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !207, file: !88, line: 195, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !88, line: 198, size: 128, elements: !212)
!212 = !{!213, !214}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !211, file: !88, line: 199, baseType: !210, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !211, file: !88, line: 199, baseType: !215, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!216 = !{!217}
!217 = !DISubrange(count: 4)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !196, file: !6, line: 66, baseType: !207, size: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !196, file: !6, line: 68, baseType: !117, size: 192, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !196, file: !6, line: 69, baseType: !221, size: 128, align: 64, offset: 640)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !88, line: 232, size: 128, align: 64, elements: !222)
!222 = !{!223, !225}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !221, file: !88, line: 233, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !221, file: !88, line: 234, baseType: !226, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !224}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !196, file: !6, line: 70, baseType: !230, offset: 768)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, elements: !237)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !231, file: !6, line: 55, baseType: !85, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !231, file: !6, line: 56, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!237 = !{!238}
!238 = !DISubrange(count: -1)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !191, file: !192, line: 100, baseType: !7, size: 32, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !191, file: !192, line: 101, baseType: !241, size: 64, offset: 128)
!241 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "proc_op", file: !192, line: 90, size: 64, elements: !242)
!242 = !{!243, !3676, !3680}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "proc_get_link", scope: !241, file: !192, line: 91, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!85, !247, !3298}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !249, line: 82, size: 1536, elements: !250)
!249 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!250 = !{!251, !252, !262, !270, !271, !290, !3644, !3646, !3659, !3660, !3661, !3662, !3663, !3668, !3669, !3670}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !248, file: !249, line: 84, baseType: !7, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !248, file: !249, line: 85, baseType: !253, size: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !254, line: 275, baseType: !255)
!254 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !254, line: 275, size: 32, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !255, file: !254, line: 275, baseType: !258, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !254, line: 69, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !254, line: 64, size: 32, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !259, file: !254, line: 65, baseType: !7, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !248, file: !249, line: 86, baseType: !263, size: 128, offset: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !264, line: 38, size: 128, elements: !265)
!264 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!265 = !{!266, !268}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !263, file: !264, line: 39, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !263, file: !264, line: 39, baseType: !269, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !248, file: !249, line: 87, baseType: !247, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !248, file: !249, line: 88, baseType: !272, size: 128, offset: 256)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !249, line: 49, size: 128, elements: !273)
!273 = !{!274, !287}
!274 = !DIDerivedType(tag: DW_TAG_member, scope: !272, file: !249, line: 50, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !272, file: !249, line: 50, size: 64, elements: !276)
!276 = !{!277, !284}
!277 = !DIDerivedType(tag: DW_TAG_member, scope: !275, file: !249, line: 51, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !275, file: !249, line: 51, size: 64, elements: !279)
!279 = !{!280, !283}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !278, file: !249, line: 52, baseType: !281, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !147, line: 21, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !149, line: 27, baseType: !7)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !278, file: !249, line: 52, baseType: !281, size: 32, offset: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !275, file: !249, line: 54, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !147, line: 23, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !149, line: 31, baseType: !189)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !249, line: 56, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !248, file: !249, line: 89, baseType: !291, size: 64, offset: 384)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !15, line: 641, size: 4800, elements: !293)
!293 = !{!294, !295, !296, !304, !305, !312, !313, !316, !317, !3582, !3583, !3584, !3585, !3586, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3626, !3629, !3630, !3631, !3640, !3641, !3642, !3643}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !292, file: !15, line: 642, baseType: !87, size: 16)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !292, file: !15, line: 643, baseType: !89, size: 16, offset: 16)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !292, file: !15, line: 644, baseType: !297, size: 32, offset: 32)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !298, line: 23, baseType: !299)
!298 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 21, size: 32, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !299, file: !298, line: 22, baseType: !302, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !88, line: 37, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !100, line: 49, baseType: !7)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !292, file: !15, line: 645, baseType: !160, size: 128, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !292, file: !15, line: 646, baseType: !306, size: 32, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !298, line: 28, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 26, size: 32, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !307, file: !298, line: 27, baseType: !310, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !88, line: 38, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !100, line: 50, baseType: !7)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !292, file: !15, line: 647, baseType: !7, size: 32, offset: 224)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !292, file: !15, line: 650, baseType: !314, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !15, line: 607, flags: DIFlagFwdDecl)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !292, file: !15, line: 651, baseType: !314, size: 64, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !292, file: !15, line: 654, baseType: !318, size: 64, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !15, line: 1966, size: 2048, align: 512, elements: !321)
!321 = !{!322, !326, !339, !346, !352, !357, !361, !365, !369, !373, !377, !378, !384, !388, !3504, !3533, !3537, !3543, !3547, !3551, !3555, !3559, !3563, !3569, !3573}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !320, file: !15, line: 1967, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!247, !291, !247, !7}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !320, file: !15, line: 1968, baseType: !327, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!79, !247, !291, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !332, line: 10, size: 128, elements: !333)
!332 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!333 = !{!334, !338}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !331, file: !332, line: 11, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !83}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !331, file: !332, line: 12, baseType: !83, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !320, file: !15, line: 1969, baseType: !340, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!85, !343, !291, !85}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !345, line: 42, flags: DIFlagFwdDecl)
!345 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!346 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !320, file: !15, line: 1970, baseType: !347, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!314, !291, !85, !350}
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !88, line: 35, baseType: !351)
!351 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !320, file: !15, line: 1972, baseType: !353, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!85, !247, !356, !85}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !320, file: !15, line: 1974, baseType: !358, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!85, !343, !291, !247, !87, !350}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !320, file: !15, line: 1976, baseType: !362, size: 64, offset: 384)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!85, !247, !291, !247}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !320, file: !15, line: 1977, baseType: !366, size: 64, offset: 448)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!85, !291, !247}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !320, file: !15, line: 1978, baseType: !370, size: 64, offset: 512)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!85, !343, !291, !247, !79}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !320, file: !15, line: 1980, baseType: !374, size: 64, offset: 576)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!85, !343, !291, !247, !87}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !320, file: !15, line: 1982, baseType: !366, size: 64, offset: 640)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !320, file: !15, line: 1983, baseType: !379, size: 64, offset: 704)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!85, !343, !291, !247, !87, !382}
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !88, line: 21, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !88, line: 18, baseType: !281)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !320, file: !15, line: 1985, baseType: !385, size: 64, offset: 768)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!85, !343, !291, !247, !291, !247, !7}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !320, file: !15, line: 1987, baseType: !389, size: 64, offset: 832)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!85, !343, !247, !392}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !15, line: 226, size: 640, elements: !394)
!394 = !{!395, !396, !397, !407, !416, !417, !426, !427, !428}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !393, file: !15, line: 227, baseType: !7, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !393, file: !15, line: 228, baseType: !87, size: 16, offset: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !15, line: 241, baseType: !398, size: 32, offset: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !15, line: 241, size: 32, elements: !399)
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !398, file: !15, line: 242, baseType: !297, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !398, file: !15, line: 243, baseType: !402, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !403, line: 16, baseType: !404)
!403 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !403, line: 14, size: 32, elements: !405)
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !404, file: !403, line: 15, baseType: !302, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !15, line: 245, baseType: !408, size: 32, offset: 96)
!408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !15, line: 245, size: 32, elements: !409)
!409 = !{!410, !411}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !408, file: !15, line: 246, baseType: !306, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !408, file: !15, line: 247, baseType: !412, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !403, line: 20, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !403, line: 18, size: 32, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !413, file: !403, line: 19, baseType: !310, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !393, file: !15, line: 249, baseType: !104, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !393, file: !15, line: 250, baseType: !418, size: 128, offset: 192)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !419, line: 13, size: 128, elements: !420)
!419 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!420 = !{!421, !424}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !418, file: !419, line: 14, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !419, line: 8, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !149, line: 30, baseType: !106)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !418, file: !419, line: 15, baseType: !425, size: 64, offset: 64)
!425 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !393, file: !15, line: 251, baseType: !418, size: 128, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !393, file: !15, line: 252, baseType: !418, size: 128, offset: 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !393, file: !15, line: 259, baseType: !429, size: 64, offset: 576)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !15, line: 994, size: 1856, align: 64, elements: !431)
!431 = !{!432, !443, !444, !446, !454, !467, !468, !469, !500, !708, !717, !3360, !3361, !3496, !3497, !3498, !3499, !3501, !3502, !3503}
!432 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !15, line: 995, baseType: !433, size: 128)
!433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !15, line: 995, size: 128, elements: !434)
!434 = !{!435, !441, !442}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !433, file: !15, line: 996, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !437, line: 60, size: 64, elements: !438)
!437 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !436, file: !437, line: 61, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !433, file: !15, line: 997, baseType: !221, size: 128, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !433, file: !15, line: 998, baseType: !7, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !430, file: !15, line: 1005, baseType: !122, size: 32, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !430, file: !15, line: 1006, baseType: !445, size: 32, offset: 160)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !88, line: 156, baseType: !7)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !430, file: !15, line: 1007, baseType: !447, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !448, line: 13, baseType: !449)
!448 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !88, line: 181, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 179, size: 64, elements: !451)
!451 = !{!452}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !450, file: !88, line: 180, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !147, line: 22, baseType: !423)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !430, file: !15, line: 1008, baseType: !455, size: 256, offset: 256)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !456, line: 66, size: 256, elements: !457)
!456 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!457 = !{!458, !459, !461, !466}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !455, file: !456, line: 67, baseType: !447, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !455, file: !456, line: 68, baseType: !460, size: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !131, line: 23, baseType: !130)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !455, file: !456, line: 70, baseType: !462, size: 32, offset: 96)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !463, line: 15, size: 32, elements: !464)
!463 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!464 = !{!465}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !462, file: !463, line: 20, baseType: !112, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !455, file: !456, line: 72, baseType: !160, size: 128, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !430, file: !15, line: 1009, baseType: !104, size: 64, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !430, file: !15, line: 1010, baseType: !7, size: 32, offset: 576)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !430, file: !15, line: 1011, baseType: !470, size: 256, offset: 640)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !15, line: 948, size: 256, elements: !471)
!471 = !{!472, !495, !496, !497, !498, !499}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !470, file: !15, line: 949, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !474, line: 34, baseType: !475)
!474 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !474, line: 25, size: 64, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !475, file: !474, line: 26, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !479, line: 27, baseType: !480)
!479 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !479, line: 13, size: 64, elements: !481)
!481 = !{!482, !494}
!482 = !DIDerivedType(tag: DW_TAG_member, scope: !480, file: !479, line: 14, baseType: !483, size: 32)
!483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !480, file: !479, line: 14, size: 32, elements: !484)
!484 = !{!485, !486}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !483, file: !479, line: 15, baseType: !112, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, scope: !483, file: !479, line: 16, baseType: !487, size: 32)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !483, file: !479, line: 16, size: 32, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !487, file: !479, line: 18, baseType: !146, size: 8)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !487, file: !479, line: 19, baseType: !491, size: 24, offset: 8)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 24, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 3)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !480, file: !479, line: 26, baseType: !134, size: 32, offset: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !470, file: !15, line: 950, baseType: !195, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !470, file: !15, line: 951, baseType: !5, size: 32, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !470, file: !15, line: 952, baseType: !297, size: 32, offset: 160)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !470, file: !15, line: 952, baseType: !297, size: 32, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !470, file: !15, line: 953, baseType: !85, size: 32, offset: 224)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !430, file: !15, line: 1012, baseType: !501, size: 64, offset: 896)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !504, line: 110, size: 1472, elements: !505)
!504 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!505 = !{!506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !521, !522, !523, !524, !525, !526, !652, !653, !654, !655, !656, !687, !691, !695, !703}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !503, file: !504, line: 111, baseType: !447, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !503, file: !504, line: 112, baseType: !297, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !503, file: !504, line: 113, baseType: !306, size: 32, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !503, file: !504, line: 114, baseType: !297, size: 32, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !503, file: !504, line: 115, baseType: !306, size: 32, offset: 160)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !503, file: !504, line: 116, baseType: !297, size: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !503, file: !504, line: 117, baseType: !306, size: 32, offset: 224)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !503, file: !504, line: 118, baseType: !297, size: 32, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !503, file: !504, line: 119, baseType: !306, size: 32, offset: 288)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !503, file: !504, line: 120, baseType: !7, size: 32, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !503, file: !504, line: 121, baseType: !517, size: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !345, line: 24, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 24, size: 64, elements: !519)
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !518, file: !345, line: 24, baseType: !285, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !503, file: !504, line: 122, baseType: !517, size: 64, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !503, file: !504, line: 123, baseType: !517, size: 64, offset: 512)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !503, file: !504, line: 124, baseType: !517, size: 64, offset: 576)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !503, file: !504, line: 125, baseType: !517, size: 64, offset: 640)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !503, file: !504, line: 127, baseType: !150, size: 8, offset: 704)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !503, file: !504, line: 129, baseType: !527, size: 64, offset: 768)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !529, line: 195, size: 1728, elements: !530)
!529 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!530 = !{!531, !532, !537, !549, !558, !561, !562, !567, !568, !569, !570, !573, !574, !575, !577, !578, !616, !637}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !528, file: !529, line: 196, baseType: !199, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !528, file: !529, line: 197, baseType: !533, size: 32, offset: 32)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !529, line: 28, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !88, line: 104, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !147, line: 20, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !149, line: 26, baseType: !85)
!537 = !DIDerivedType(tag: DW_TAG_member, scope: !528, file: !529, line: 198, baseType: !538, size: 192, offset: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !528, file: !529, line: 198, size: 192, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !538, file: !529, line: 199, baseType: !160, size: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !538, file: !529, line: 200, baseType: !542, size: 192, align: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !543, line: 5, size: 192, align: 64, elements: !544)
!543 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!544 = !{!545, !546, !548}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !542, file: !543, line: 6, baseType: !102, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !542, file: !543, line: 7, baseType: !547, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !542, file: !543, line: 8, baseType: !547, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !528, file: !529, line: 205, baseType: !550, size: 320, offset: 256)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !551, line: 48, size: 320, elements: !552)
!551 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!552 = !{!553, !554, !555, !556, !557}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !550, file: !551, line: 49, baseType: !447, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !550, file: !551, line: 55, baseType: !447, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !550, file: !551, line: 57, baseType: !462, size: 32, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !550, file: !551, line: 59, baseType: !460, size: 32, offset: 160)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !550, file: !551, line: 60, baseType: !160, size: 128, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !528, file: !529, line: 206, baseType: !559, size: 64, offset: 576)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !529, line: 206, flags: DIFlagFwdDecl)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !528, file: !529, line: 207, baseType: !83, size: 64, offset: 640)
!562 = !DIDerivedType(tag: DW_TAG_member, scope: !528, file: !529, line: 208, baseType: !563, size: 64, offset: 704)
!563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !528, file: !529, line: 208, size: 64, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !563, file: !529, line: 209, baseType: !422, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !563, file: !529, line: 210, baseType: !422, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !528, file: !529, line: 212, baseType: !422, size: 64, offset: 768)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !528, file: !529, line: 213, baseType: !297, size: 32, offset: 832)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !528, file: !529, line: 214, baseType: !306, size: 32, offset: 864)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !528, file: !529, line: 215, baseType: !571, size: 32, offset: 896)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !529, line: 31, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !88, line: 110, baseType: !281)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !528, file: !529, line: 216, baseType: !89, size: 16, offset: 928)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !528, file: !529, line: 217, baseType: !89, size: 16, offset: 944)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !528, file: !529, line: 221, baseType: !576, size: 16, offset: 960)
!576 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !528, file: !529, line: 228, baseType: !102, size: 64, offset: 1024)
!578 = !DIDerivedType(tag: DW_TAG_member, scope: !528, file: !529, line: 245, baseType: !579, size: 320, offset: 1088)
!579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !528, file: !529, line: 245, size: 320, elements: !580)
!580 = !{!581, !608}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !579, file: !529, line: 246, baseType: !582, size: 320)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !529, line: 114, size: 320, elements: !583)
!583 = !{!584, !585, !597, !600, !607}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !582, file: !529, line: 116, baseType: !102, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, scope: !582, file: !529, line: 117, baseType: !586, size: 64, offset: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !582, file: !529, line: 117, size: 64, elements: !587)
!587 = !{!588, !596}
!588 = !DIDerivedType(tag: DW_TAG_member, scope: !586, file: !529, line: 118, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !586, file: !529, line: 118, size: 64, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !589, file: !529, line: 120, baseType: !156, size: 16)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !589, file: !529, line: 121, baseType: !593, size: 48, offset: 16)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 48, elements: !594)
!594 = !{!595}
!595 = !DISubrange(count: 6)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !586, file: !529, line: 127, baseType: !102, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !582, file: !529, line: 129, baseType: !598, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !529, line: 102, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !582, file: !529, line: 130, baseType: !601, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !529, line: 108, size: 192, elements: !603)
!603 = !{!604, !605, !606}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !602, file: !529, line: 109, baseType: !221, size: 128, align: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !602, file: !529, line: 110, baseType: !199, size: 32, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !602, file: !529, line: 111, baseType: !350, size: 8, offset: 160)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !582, file: !529, line: 131, baseType: !79, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, scope: !579, file: !529, line: 247, baseType: !609, size: 320)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !579, file: !529, line: 247, size: 320, elements: !610)
!610 = !{!611, !612, !613, !614, !615}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !609, file: !529, line: 248, baseType: !102, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !609, file: !529, line: 249, baseType: !102, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !609, file: !529, line: 250, baseType: !598, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !609, file: !529, line: 251, baseType: !601, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !609, file: !529, line: 252, baseType: !356, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, scope: !528, file: !529, line: 260, baseType: !617, size: 256, offset: 1408)
!617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !528, file: !529, line: 260, size: 256, elements: !618)
!618 = !{!619, !625}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !617, file: !529, line: 261, baseType: !620, size: 256)
!620 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !529, line: 134, size: 256, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !620, file: !529, line: 135, baseType: !83, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !620, file: !529, line: 136, baseType: !624, size: 256)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 256, elements: !216)
!625 = !DIDerivedType(tag: DW_TAG_member, scope: !617, file: !529, line: 262, baseType: !626, size: 256)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !617, file: !529, line: 262, size: 256, elements: !627)
!627 = !{!628, !629}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !626, file: !529, line: 264, baseType: !160, size: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !626, file: !529, line: 265, baseType: !630, size: 128, offset: 128)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !631, line: 22, size: 128, elements: !632)
!631 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!632 = !{!633, !636}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !630, file: !631, line: 23, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !631, line: 23, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !630, file: !631, line: 24, baseType: !102, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !528, file: !529, line: 280, baseType: !638, size: 64, offset: 1664)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !529, line: 176, size: 192, elements: !640)
!640 = !{!641, !650, !651}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !639, file: !529, line: 177, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !529, line: 171, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!85, !527, !646, !648, !527}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !639, file: !529, line: 178, baseType: !527, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !639, file: !529, line: 179, baseType: !598, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !503, file: !504, line: 130, baseType: !527, size: 64, offset: 832)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !503, file: !504, line: 131, baseType: !527, size: 64, offset: 896)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !503, file: !504, line: 132, baseType: !527, size: 64, offset: 960)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !503, file: !504, line: 135, baseType: !83, size: 64, offset: 1024)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !503, file: !504, line: 137, baseType: !657, size: 64, offset: 1088)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !659, line: 14, size: 1088, elements: !660)
!659 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!660 = !{!661, !662, !671, !672, !673, !674, !675, !676}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !658, file: !659, line: 15, baseType: !199, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !658, file: !659, line: 17, baseType: !663, size: 320, offset: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !664, line: 22, size: 320, elements: !665)
!664 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!665 = !{!666, !667, !668, !669}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !663, file: !664, line: 23, baseType: !460, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !663, file: !664, line: 24, baseType: !453, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !663, file: !664, line: 26, baseType: !160, size: 128, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !663, file: !664, line: 28, baseType: !670, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !658, file: !659, line: 19, baseType: !102, size: 64, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !658, file: !659, line: 20, baseType: !447, size: 64, offset: 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !658, file: !659, line: 23, baseType: !211, size: 128, offset: 512)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !658, file: !659, line: 24, baseType: !297, size: 32, offset: 640)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !658, file: !659, line: 29, baseType: !447, size: 64, offset: 704)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !658, file: !659, line: 36, baseType: !677, size: 320, offset: 768)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !678, line: 15, size: 320, elements: !679)
!678 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!679 = !{!680, !681, !682, !683, !684, !685, !686}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !677, file: !678, line: 16, baseType: !460, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !677, file: !678, line: 18, baseType: !85, size: 32, offset: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !677, file: !678, line: 19, baseType: !85, size: 32, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !677, file: !678, line: 20, baseType: !85, size: 32, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !677, file: !678, line: 21, baseType: !85, size: 32, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !677, file: !678, line: 22, baseType: !102, size: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !678, line: 23, baseType: !102, size: 64, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !503, file: !504, line: 138, baseType: !688, size: 64, offset: 1152)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !690, line: 8, flags: DIFlagFwdDecl)
!690 = !DIFile(filename: "./include/linux/mnt_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "15c2c890187f55d35ae90dcc758625f0")
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !503, file: !504, line: 139, baseType: !692, size: 64, offset: 1216)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !694, line: 16, flags: DIFlagFwdDecl)
!694 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!695 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !503, file: !504, line: 140, baseType: !696, size: 64, offset: 1280)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !504, line: 25, size: 64, elements: !698)
!698 = !{!699, !700, !701}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !697, file: !504, line: 26, baseType: !112, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !697, file: !504, line: 27, baseType: !85, size: 32, offset: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !697, file: !504, line: 28, baseType: !702, offset: 64)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, elements: !237)
!703 = !DIDerivedType(tag: DW_TAG_member, scope: !503, file: !504, line: 142, baseType: !704, size: 128, offset: 1344)
!704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !503, file: !504, line: 142, size: 128, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !704, file: !504, line: 143, baseType: !85, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !704, file: !504, line: 144, baseType: !221, size: 128, align: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !430, file: !15, line: 1013, baseType: !709, size: 256, offset: 960)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !15, line: 970, size: 256, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !709, file: !15, line: 971, baseType: !102, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !709, file: !15, line: 972, baseType: !7, size: 32, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !709, file: !15, line: 973, baseType: !7, size: 32, offset: 96)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !709, file: !15, line: 974, baseType: !7, size: 32, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !709, file: !15, line: 975, baseType: !7, size: 32, offset: 160)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !709, file: !15, line: 976, baseType: !104, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !430, file: !15, line: 1014, baseType: !718, size: 128, offset: 1216)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !719, line: 8, size: 128, elements: !720)
!719 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!720 = !{!721, !3359}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !718, file: !719, line: 9, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !724, line: 70, size: 256, elements: !725)
!724 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!725 = !{!726, !727, !3357, !3358}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !723, file: !724, line: 71, baseType: !247, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !723, file: !724, line: 72, baseType: !728, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !15, line: 1190, size: 10752, elements: !730)
!730 = !{!731, !732, !733, !734, !735, !736, !778, !955, !995, !1080, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1097, !1101, !1102, !1105, !1108, !1111, !1114, !1115, !1116, !1157, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3240, !3247, !3248, !3249, !3250, !3309, !3324, !3325, !3326, !3327, !3328, !3331, !3332, !3333, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !729, file: !15, line: 1191, baseType: !160, size: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !729, file: !15, line: 1192, baseType: !382, size: 32, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !729, file: !15, line: 1193, baseType: !150, size: 8, offset: 160)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !729, file: !15, line: 1194, baseType: !102, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !729, file: !15, line: 1195, baseType: !104, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !729, file: !15, line: 1196, baseType: !737, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !15, line: 2366, size: 576, elements: !739)
!739 = !{!740, !741, !742, !748, !752, !756, !760, !764, !765, !766, !770, !771, !772, !774, !775, !776, !777}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !738, file: !15, line: 2367, baseType: !79, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !738, file: !15, line: 2368, baseType: !85, size: 32, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !738, file: !15, line: 2376, baseType: !743, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!85, !746}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !724, line: 21, flags: DIFlagFwdDecl)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !738, file: !15, line: 2377, baseType: !749, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !751)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !15, line: 75, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !738, file: !15, line: 2378, baseType: !753, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!247, !737, !85, !79, !83}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !738, file: !15, line: 2380, baseType: !757, size: 64, offset: 320)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !728}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !738, file: !15, line: 2381, baseType: !761, size: 64, offset: 384)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !763, line: 103, flags: DIFlagFwdDecl)
!763 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !738, file: !15, line: 2382, baseType: !737, size: 64, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !738, file: !15, line: 2383, baseType: !207, size: 64, offset: 512)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !738, file: !15, line: 2385, baseType: !767, offset: 576)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !768, line: 206, elements: !769)
!768 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!769 = !{}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !738, file: !15, line: 2386, baseType: !767, offset: 576)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !738, file: !15, line: 2387, baseType: !767, offset: 576)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !738, file: !15, line: 2388, baseType: !773, offset: 576)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !767, elements: !492)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !738, file: !15, line: 2390, baseType: !767, offset: 576)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !738, file: !15, line: 2391, baseType: !767, offset: 576)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !738, file: !15, line: 2392, baseType: !767, offset: 576)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !738, file: !15, line: 2393, baseType: !767, offset: 576)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !729, file: !15, line: 1197, baseType: !779, size: 64, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !15, line: 2057, size: 1664, elements: !782)
!782 = !{!783, !787, !791, !792, !796, !802, !806, !807, !808, !812, !816, !820, !821, !822, !828, !833, !834, !876, !877, !878, !879, !886, !890, !937, !953, !954}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !781, file: !15, line: 2058, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!291, !728}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !781, file: !15, line: 2059, baseType: !788, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !291}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !781, file: !15, line: 2060, baseType: !788, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !781, file: !15, line: 2062, baseType: !793, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !291, !85}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !781, file: !15, line: 2063, baseType: !797, size: 64, offset: 256)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!85, !291, !800}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !15, line: 309, flags: DIFlagFwdDecl)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !781, file: !15, line: 2064, baseType: !803, size: 64, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!85, !291}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !781, file: !15, line: 2065, baseType: !788, size: 64, offset: 384)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !781, file: !15, line: 2066, baseType: !757, size: 64, offset: 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !781, file: !15, line: 2067, baseType: !809, size: 64, offset: 512)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!85, !728, !85}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !781, file: !15, line: 2068, baseType: !813, size: 64, offset: 576)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!85, !728, !14}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !781, file: !15, line: 2069, baseType: !817, size: 64, offset: 640)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!85, !728}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !781, file: !15, line: 2070, baseType: !813, size: 64, offset: 704)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !781, file: !15, line: 2071, baseType: !817, size: 64, offset: 768)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !781, file: !15, line: 2072, baseType: !823, size: 64, offset: 832)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!85, !247, !826}
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !15, line: 62, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !781, file: !15, line: 2073, baseType: !829, size: 64, offset: 896)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!85, !728, !832, !356}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !781, file: !15, line: 2074, baseType: !757, size: 64, offset: 960)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !781, file: !15, line: 2076, baseType: !835, size: 64, offset: 1024)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!85, !838, !247}
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !840, line: 17, size: 960, elements: !841)
!840 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!841 = !{!842, !843, !844, !845, !846, !847, !848, !849, !850, !871, !872, !875}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !839, file: !840, line: 18, baseType: !356, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !839, file: !840, line: 19, baseType: !98, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !839, file: !840, line: 20, baseType: !98, size: 64, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !839, file: !840, line: 21, baseType: !98, size: 64, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !839, file: !840, line: 22, baseType: !98, size: 64, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !839, file: !840, line: 23, baseType: !104, size: 64, offset: 320)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !839, file: !840, line: 24, baseType: !104, size: 64, offset: 384)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !839, file: !840, line: 25, baseType: !455, size: 256, offset: 448)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !839, file: !840, line: 26, baseType: !851, size: 64, offset: 704)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !840, line: 32, size: 256, elements: !854)
!854 = !{!855, !859, !863, !867}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !853, file: !840, line: 33, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!83, !838, !103}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !853, file: !840, line: 34, baseType: !860, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !838, !83}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !853, file: !840, line: 35, baseType: !864, size: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!83, !838, !83, !103}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !853, file: !840, line: 36, baseType: !868, size: 64, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!85, !838, !83}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !839, file: !840, line: 27, baseType: !85, size: 32, offset: 768)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !839, file: !840, line: 28, baseType: !873, size: 64, offset: 832)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !839, file: !840, line: 29, baseType: !83, size: 64, offset: 896)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !781, file: !15, line: 2077, baseType: !835, size: 64, offset: 1088)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !781, file: !15, line: 2078, baseType: !835, size: 64, offset: 1152)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !781, file: !15, line: 2079, baseType: !835, size: 64, offset: 1216)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !781, file: !15, line: 2081, baseType: !880, size: 64, offset: 1280)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!883, !728, !85, !356, !98, !104}
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !88, line: 66, baseType: !884)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !100, line: 73, baseType: !885)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !100, line: 15, baseType: !425)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !781, file: !15, line: 2082, baseType: !887, size: 64, offset: 1344)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!883, !728, !85, !79, !98, !104}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !781, file: !15, line: 2083, baseType: !891, size: 64, offset: 1408)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!894, !291}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !20, line: 296, size: 1664, elements: !897)
!897 = !{!898, !899, !900, !901, !902, !903, !904, !905, !906, !922, !923, !924}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !896, file: !20, line: 297, baseType: !211, size: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !896, file: !20, line: 298, baseType: !160, size: 128, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !896, file: !20, line: 299, baseType: !160, size: 128, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !896, file: !20, line: 300, baseType: !160, size: 128, offset: 384)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !896, file: !20, line: 301, baseType: !455, size: 256, offset: 512)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !896, file: !20, line: 302, baseType: !122, size: 32, offset: 768)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !896, file: !20, line: 303, baseType: !112, size: 32, offset: 800)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !896, file: !20, line: 304, baseType: !728, size: 64, offset: 832)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !896, file: !20, line: 305, baseType: !907, size: 64, offset: 896)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !20, line: 68, size: 64, elements: !908)
!908 = !{!909, !921}
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !907, file: !20, line: 69, baseType: !910, size: 32)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !907, file: !20, line: 69, size: 32, elements: !911)
!911 = !{!912, !913, !914}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !910, file: !20, line: 70, baseType: !297, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !910, file: !20, line: 71, baseType: !306, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !910, file: !20, line: 72, baseType: !915, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !916, line: 24, baseType: !917)
!916 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !916, line: 22, size: 32, elements: !918)
!918 = !{!919}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !917, file: !916, line: 23, baseType: !920, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !916, line: 20, baseType: !303)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !907, file: !20, line: 74, baseType: !19, size: 32, offset: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !896, file: !20, line: 306, baseType: !104, size: 64, offset: 960)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !896, file: !20, line: 307, baseType: !102, size: 64, offset: 1024)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !896, file: !20, line: 308, baseType: !925, size: 576, offset: 1088)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !20, line: 205, size: 576, elements: !926)
!926 = !{!927, !929, !930, !931, !932, !933, !934, !935, !936}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !925, file: !20, line: 206, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !20, line: 66, baseType: !106)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !925, file: !20, line: 207, baseType: !928, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !925, file: !20, line: 208, baseType: !928, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !925, file: !20, line: 209, baseType: !928, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !925, file: !20, line: 210, baseType: !928, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !925, file: !20, line: 211, baseType: !928, size: 64, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !925, file: !20, line: 212, baseType: !928, size: 64, offset: 384)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !925, file: !20, line: 213, baseType: !422, size: 64, offset: 448)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !925, file: !20, line: 214, baseType: !422, size: 64, offset: 512)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !781, file: !15, line: 2085, baseType: !938, size: 64, offset: 1472)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!425, !728, !941}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !943, line: 15, size: 256, elements: !944)
!943 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!944 = !{!945, !947, !948, !949, !950}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !942, file: !943, line: 16, baseType: !946, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !88, line: 154, baseType: !7)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !942, file: !943, line: 19, baseType: !85, size: 32, offset: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !942, file: !943, line: 26, baseType: !102, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !942, file: !943, line: 33, baseType: !102, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !942, file: !943, line: 36, baseType: !951, size: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !943, line: 36, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !781, file: !15, line: 2087, baseType: !938, size: 64, offset: 1536)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !781, file: !15, line: 2089, baseType: !757, size: 64, offset: 1600)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !729, file: !15, line: 1198, baseType: !956, size: 64, offset: 448)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !958)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !20, line: 324, size: 704, elements: !959)
!959 = !{!960, !964, !968, !972, !973, !974, !975, !976, !981, !986, !990}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !958, file: !20, line: 325, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!85, !895}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !958, file: !20, line: 326, baseType: !965, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!895, !728, !85}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !958, file: !20, line: 327, baseType: !969, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{null, !895}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !958, file: !20, line: 328, baseType: !961, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !958, file: !20, line: 329, baseType: !961, size: 64, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !958, file: !20, line: 330, baseType: !961, size: 64, offset: 320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !958, file: !20, line: 331, baseType: !809, size: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !958, file: !20, line: 334, baseType: !977, size: 64, offset: 448)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!980, !291}
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !958, file: !20, line: 335, baseType: !982, size: 64, offset: 512)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!85, !291, !985}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !958, file: !20, line: 337, baseType: !987, size: 64, offset: 576)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!85, !291, !980}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !958, file: !20, line: 339, baseType: !991, size: 64, offset: 640)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!85, !728, !994}
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !729, file: !15, line: 1199, baseType: !996, size: 64, offset: 512)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !998)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !20, line: 430, size: 704, elements: !999)
!999 = !{!1000, !1006, !1007, !1011, !1012, !1013, !1028, !1051, !1055, !1056, !1079}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !998, file: !20, line: 431, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!85, !728, !85, !85, !1004}
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !998, file: !20, line: 432, baseType: !809, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !998, file: !20, line: 433, baseType: !1008, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!85, !728, !7}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !998, file: !20, line: 434, baseType: !1008, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !998, file: !20, line: 435, baseType: !809, size: 64, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !998, file: !20, line: 436, baseType: !1014, size: 64, offset: 320)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!85, !728, !85, !1017}
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !20, line: 417, size: 256, elements: !1019)
!1019 = !{!1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1018, file: !20, line: 418, baseType: !85, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1018, file: !20, line: 419, baseType: !7, size: 32, offset: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1018, file: !20, line: 420, baseType: !7, size: 32, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1018, file: !20, line: 422, baseType: !7, size: 32, offset: 96)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1018, file: !20, line: 423, baseType: !7, size: 32, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1018, file: !20, line: 424, baseType: !7, size: 32, offset: 160)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1018, file: !20, line: 425, baseType: !7, size: 32, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1018, file: !20, line: 426, baseType: !7, size: 32, offset: 224)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !998, file: !20, line: 437, baseType: !1029, size: 64, offset: 384)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!85, !728, !907, !1032}
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !20, line: 345, size: 960, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1033, file: !20, line: 346, baseType: !85, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1033, file: !20, line: 347, baseType: !285, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1033, file: !20, line: 348, baseType: !285, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1033, file: !20, line: 349, baseType: !285, size: 64, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1033, file: !20, line: 350, baseType: !285, size: 64, offset: 256)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1033, file: !20, line: 351, baseType: !285, size: 64, offset: 320)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1033, file: !20, line: 352, baseType: !285, size: 64, offset: 384)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1033, file: !20, line: 353, baseType: !453, size: 64, offset: 448)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1033, file: !20, line: 355, baseType: !453, size: 64, offset: 512)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1033, file: !20, line: 356, baseType: !85, size: 32, offset: 576)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1033, file: !20, line: 357, baseType: !85, size: 32, offset: 608)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1033, file: !20, line: 358, baseType: !285, size: 64, offset: 640)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1033, file: !20, line: 359, baseType: !285, size: 64, offset: 704)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1033, file: !20, line: 360, baseType: !285, size: 64, offset: 768)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1033, file: !20, line: 361, baseType: !453, size: 64, offset: 832)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1033, file: !20, line: 362, baseType: !85, size: 32, offset: 896)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !998, file: !20, line: 438, baseType: !1052, size: 64, offset: 448)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!85, !728, !994, !1032}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !998, file: !20, line: 440, baseType: !1029, size: 64, offset: 512)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !998, file: !20, line: 441, baseType: !1057, size: 64, offset: 576)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!85, !728, !1060}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !20, line: 411, size: 1408, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1061, file: !20, line: 412, baseType: !7, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1061, file: !20, line: 413, baseType: !1065, size: 1344, offset: 64)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1066, size: 1344, elements: !492)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !20, line: 397, size: 448, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1078}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1066, file: !20, line: 398, baseType: !7, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1066, file: !20, line: 399, baseType: !7, size: 32, offset: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1066, file: !20, line: 401, baseType: !7, size: 32, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1066, file: !20, line: 402, baseType: !7, size: 32, offset: 96)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1066, file: !20, line: 403, baseType: !7, size: 32, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1066, file: !20, line: 404, baseType: !7, size: 32, offset: 160)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1066, file: !20, line: 405, baseType: !7, size: 32, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1066, file: !20, line: 406, baseType: !189, size: 64, offset: 256)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1066, file: !20, line: 407, baseType: !1077, size: 64, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !88, line: 132, baseType: !285)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1066, file: !20, line: 408, baseType: !1077, size: 64, offset: 384)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !998, file: !20, line: 442, baseType: !1008, size: 64, offset: 640)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !729, file: !15, line: 1200, baseType: !1081, size: 64, offset: 576)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1083)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !15, line: 54, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !729, file: !15, line: 1201, baseType: !102, size: 64, offset: 640)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !729, file: !15, line: 1202, baseType: !102, size: 64, offset: 704)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !729, file: !15, line: 1203, baseType: !102, size: 64, offset: 768)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !729, file: !15, line: 1204, baseType: !247, size: 64, offset: 832)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !729, file: !15, line: 1205, baseType: !550, size: 320, offset: 896)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !729, file: !15, line: 1206, baseType: !85, size: 32, offset: 1216)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !729, file: !15, line: 1207, baseType: !112, size: 32, offset: 1248)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !729, file: !15, line: 1209, baseType: !83, size: 64, offset: 1280)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !729, file: !15, line: 1211, baseType: !1093, size: 64, offset: 1344)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1096)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !15, line: 1211, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !729, file: !15, line: 1223, baseType: !1098, size: 64, offset: 1408)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !264, line: 34, size: 64, elements: !1099)
!1099 = !{!1100}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1098, file: !264, line: 35, baseType: !267, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !729, file: !15, line: 1224, baseType: !160, size: 128, offset: 1472)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !729, file: !15, line: 1225, baseType: !1103, size: 64, offset: 1600)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !15, line: 1225, flags: DIFlagFwdDecl)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !729, file: !15, line: 1226, baseType: !1106, size: 64, offset: 1664)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !15, line: 1226, flags: DIFlagFwdDecl)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !729, file: !15, line: 1227, baseType: !1109, size: 64, offset: 1728)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !15, line: 50, flags: DIFlagFwdDecl)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !729, file: !15, line: 1228, baseType: !1112, size: 64, offset: 1792)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !15, line: 1228, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !729, file: !15, line: 1229, baseType: !211, size: 128, offset: 1856)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !729, file: !15, line: 1230, baseType: !7, size: 32, offset: 1984)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !729, file: !15, line: 1231, baseType: !1117, size: 2496, offset: 2048)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !20, line: 521, size: 2496, elements: !1118)
!1118 = !{!1119, !1120, !1121, !1123, !1155}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1117, file: !20, line: 522, baseType: !7, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1117, file: !20, line: 523, baseType: !550, size: 320, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1117, file: !20, line: 524, baseType: !1122, size: 192, offset: 384)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 192, elements: !492)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1117, file: !20, line: 525, baseType: !1124, size: 1728, offset: 576)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1125, size: 1728, elements: !492)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !20, line: 222, size: 576, elements: !1126)
!1126 = !{!1127, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1125, file: !20, line: 223, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !20, line: 445, size: 256, elements: !1130)
!1130 = !{!1131, !1132, !1145, !1146}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1129, file: !20, line: 446, baseType: !85, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1129, file: !20, line: 447, baseType: !1133, size: 64, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1135)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !20, line: 312, size: 512, elements: !1136)
!1136 = !{!1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1135, file: !20, line: 313, baseType: !809, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1135, file: !20, line: 314, baseType: !809, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1135, file: !20, line: 315, baseType: !809, size: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1135, file: !20, line: 316, baseType: !809, size: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1135, file: !20, line: 317, baseType: !961, size: 64, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1135, file: !20, line: 318, baseType: !961, size: 64, offset: 320)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1135, file: !20, line: 319, baseType: !961, size: 64, offset: 384)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1135, file: !20, line: 320, baseType: !991, size: 64, offset: 448)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1129, file: !20, line: 448, baseType: !761, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1129, file: !20, line: 449, baseType: !1128, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1125, file: !20, line: 224, baseType: !85, size: 32, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1125, file: !20, line: 226, baseType: !160, size: 128, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1125, file: !20, line: 227, baseType: !102, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1125, file: !20, line: 228, baseType: !7, size: 32, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1125, file: !20, line: 229, baseType: !7, size: 32, offset: 352)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1125, file: !20, line: 230, baseType: !928, size: 64, offset: 384)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1125, file: !20, line: 231, baseType: !928, size: 64, offset: 448)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1125, file: !20, line: 232, baseType: !83, size: 64, offset: 512)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1117, file: !20, line: 526, baseType: !1156, size: 192, offset: 2304)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1133, size: 192, elements: !492)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !729, file: !15, line: 1233, baseType: !1158, size: 2368, offset: 4544)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !15, line: 1184, size: 2368, elements: !1159)
!1159 = !{!1160, !1161, !1162}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1158, file: !15, line: 1185, baseType: !89, size: 16)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1158, file: !15, line: 1186, baseType: !89, size: 16, offset: 16)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1158, file: !15, line: 1187, baseType: !1163, size: 2304, offset: 64)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1164, size: 2304, elements: !492)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1165, line: 12, size: 768, elements: !1166)
!1165 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1166 = !{!1167, !1175, !1177, !3230, !3231}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1164, file: !1165, line: 13, baseType: !1168, size: 384)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1169, line: 17, size: 384, elements: !1170)
!1169 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1170 = !{!1171, !1172, !1173, !1174}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1168, file: !1169, line: 18, baseType: !85, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1168, file: !1169, line: 19, baseType: !85, size: 32, offset: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1168, file: !1169, line: 20, baseType: !117, size: 192, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1168, file: !1169, line: 22, baseType: !221, size: 128, align: 64, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1164, file: !1165, line: 14, baseType: !1176, size: 64, offset: 384)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1164, file: !1165, line: 15, baseType: !1178, size: 64, offset: 448)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1179, line: 16, size: 64, elements: !1180)
!1179 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1180 = !{!1181}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1178, file: !1179, line: 17, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1184, line: 746, size: 58368, elements: !1185)
!1184 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1185 = !{!1186, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1266, !1277, !1372, !1376, !1379, !1410, !1411, !1412, !1413, !1424, !1426, !1427, !1428, !1429, !1430, !1431, !1442, !1443, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1460, !1461, !1468, !1469, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2260, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2275, !2276, !2277, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2309, !2315, !2316, !2317, !2318, !2319, !2323, !2326, !2333, !2338, !2350, !2353, !2356, !2490, !2625, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2667, !2668, !2669, !2678, !2686, !2687, !2688, !2689, !2690, !2695, !2696, !2697, !2700, !2701, !2704, !2707, !2710, !2718, !2721, !2722, !2808, !2809, !2810, !2811, !2812, !2818, !2819, !2820, !2821, !2824, !2825, !2828, !2831, !2832, !2835, !2836, !2837, !2840, !2841, !2842, !2843, !2844, !2845, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2877, !2880, !2886, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2898, !2970, !2972, !2973, !2974, !2975, !2976, !2988, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3005, !3006, !3007}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1183, file: !1184, line: 752, baseType: !1187, size: 192)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1188, line: 56, size: 192, elements: !1189)
!1188 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1189 = !{!1190, !1191, !1192, !1193}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1187, file: !1188, line: 57, baseType: !102, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1187, file: !1188, line: 58, baseType: !102, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1187, file: !1188, line: 59, baseType: !281, size: 32, offset: 128)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1187, file: !1188, line: 61, baseType: !281, size: 32, offset: 160)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1183, file: !1184, line: 754, baseType: !7, size: 32, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1183, file: !1184, line: 767, baseType: !83, size: 64, offset: 256)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1183, file: !1184, line: 768, baseType: !199, size: 32, offset: 320)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1183, file: !1184, line: 770, baseType: !7, size: 32, offset: 352)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1183, file: !1184, line: 771, baseType: !7, size: 32, offset: 384)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1183, file: !1184, line: 774, baseType: !85, size: 32, offset: 416)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1183, file: !1184, line: 775, baseType: !1201, size: 128, offset: 448)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1202, line: 58, size: 128, elements: !1203)
!1202 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1203 = !{!1204, !1205, !1210, !1211}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1201, file: !1202, line: 59, baseType: !436, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !1202, line: 60, baseType: !1206, size: 32, offset: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !1202, line: 60, size: 32, elements: !1207)
!1207 = !{!1208, !1209}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1206, file: !1202, line: 61, baseType: !7, size: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1206, file: !1202, line: 62, baseType: !112, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1201, file: !1202, line: 65, baseType: !156, size: 16, offset: 96)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1201, file: !1202, line: 65, baseType: !156, size: 16, offset: 112)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1183, file: !1184, line: 776, baseType: !7, size: 32, offset: 576)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1183, file: !1184, line: 777, baseType: !102, size: 64, offset: 640)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1183, file: !1184, line: 778, baseType: !1182, size: 64, offset: 704)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1183, file: !1184, line: 787, baseType: !85, size: 32, offset: 768)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1183, file: !1184, line: 788, baseType: !85, size: 32, offset: 800)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1183, file: !1184, line: 790, baseType: !85, size: 32, offset: 832)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1183, file: !1184, line: 792, baseType: !85, size: 32, offset: 864)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1183, file: !1184, line: 793, baseType: !85, size: 32, offset: 896)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1183, file: !1184, line: 794, baseType: !85, size: 32, offset: 928)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1183, file: !1184, line: 795, baseType: !7, size: 32, offset: 960)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1183, file: !1184, line: 797, baseType: !1223, size: 2048, offset: 1024)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1184, line: 551, size: 2048, elements: !1224)
!1224 = !{!1225, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1245, !1248, !1249, !1250}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1223, file: !1184, line: 553, baseType: !1226, size: 128)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1184, line: 411, size: 128, elements: !1227)
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1226, file: !1184, line: 412, baseType: !102, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1226, file: !1184, line: 413, baseType: !281, size: 32, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1223, file: !1184, line: 554, baseType: !542, size: 192, align: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1223, file: !1184, line: 555, baseType: !285, size: 64, offset: 320)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1223, file: !1184, line: 556, baseType: !285, size: 64, offset: 384)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1223, file: !1184, line: 558, baseType: !160, size: 128, offset: 448)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1223, file: !1184, line: 559, baseType: !7, size: 32, offset: 576)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1223, file: !1184, line: 561, baseType: !285, size: 64, offset: 640)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1223, file: !1184, line: 562, baseType: !285, size: 64, offset: 704)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1223, file: !1184, line: 563, baseType: !285, size: 64, offset: 768)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1223, file: !1184, line: 564, baseType: !285, size: 64, offset: 832)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1223, file: !1184, line: 565, baseType: !453, size: 64, offset: 896)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1223, file: !1184, line: 566, baseType: !285, size: 64, offset: 960)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1223, file: !1184, line: 568, baseType: !285, size: 64, offset: 1024)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1223, file: !1184, line: 571, baseType: !85, size: 32, offset: 1088)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1223, file: !1184, line: 572, baseType: !1244, size: 64, offset: 1152)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1223, file: !1184, line: 574, baseType: !1246, size: 64, offset: 1216)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1184, line: 49, flags: DIFlagFwdDecl)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1223, file: !1184, line: 576, baseType: !1246, size: 64, offset: 1280)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1223, file: !1184, line: 578, baseType: !102, size: 64, offset: 1344)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1223, file: !1184, line: 588, baseType: !1251, size: 512, align: 512, offset: 1536)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1184, line: 497, size: 512, align: 512, elements: !1252)
!1252 = !{!1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1251, file: !1184, line: 498, baseType: !285, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1251, file: !1184, line: 499, baseType: !285, size: 64, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1251, file: !1184, line: 500, baseType: !285, size: 64, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1251, file: !1184, line: 501, baseType: !281, size: 32, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1251, file: !1184, line: 502, baseType: !281, size: 32, offset: 224)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1251, file: !1184, line: 503, baseType: !102, size: 64, offset: 256)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1251, file: !1184, line: 504, baseType: !102, size: 64, offset: 320)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1251, file: !1184, line: 505, baseType: !102, size: 64, offset: 384)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1251, file: !1184, line: 506, baseType: !1262, size: 64, align: 64, offset: 448)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1184, line: 445, size: 64, align: 64, elements: !1263)
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1262, file: !1184, line: 446, baseType: !7, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1262, file: !1184, line: 447, baseType: !7, size: 32, offset: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1183, file: !1184, line: 798, baseType: !1267, size: 384, offset: 3072)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1184, line: 592, size: 384, elements: !1268)
!1268 = !{!1269, !1270, !1271, !1272, !1273, !1274, !1275}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1267, file: !1184, line: 593, baseType: !160, size: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1267, file: !1184, line: 594, baseType: !102, size: 64, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1267, file: !1184, line: 595, baseType: !102, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1267, file: !1184, line: 596, baseType: !7, size: 32, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1267, file: !1184, line: 597, baseType: !89, size: 16, offset: 288)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1267, file: !1184, line: 598, baseType: !89, size: 16, offset: 304)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1267, file: !1184, line: 600, baseType: !1276, size: 64, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1183, file: !1184, line: 799, baseType: !1278, size: 1792, offset: 3456)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1184, line: 610, size: 1792, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1369, !1370}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1278, file: !1184, line: 611, baseType: !542, size: 192, align: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1278, file: !1184, line: 618, baseType: !285, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1278, file: !1184, line: 619, baseType: !285, size: 64, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1278, file: !1184, line: 620, baseType: !285, size: 64, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1278, file: !1184, line: 621, baseType: !285, size: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1278, file: !1184, line: 622, baseType: !285, size: 64, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1278, file: !1184, line: 629, baseType: !453, size: 64, offset: 512)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1278, file: !1184, line: 630, baseType: !285, size: 64, offset: 576)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1278, file: !1184, line: 631, baseType: !7, size: 32, offset: 640)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1278, file: !1184, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1278, file: !1184, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1278, file: !1184, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1278, file: !1184, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1278, file: !1184, line: 662, baseType: !1294, size: 512, offset: 704)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !26, line: 118, size: 512, elements: !1295)
!1295 = !{!1296, !1304, !1305, !1310, !1365, !1366, !1367, !1368}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1294, file: !26, line: 119, baseType: !1297, size: 256)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1298, line: 9, size: 256, elements: !1299)
!1298 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1297, file: !1298, line: 10, baseType: !542, size: 192, align: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1297, file: !1298, line: 11, baseType: !1302, size: 64, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1303, line: 29, baseType: !453)
!1303 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1294, file: !26, line: 120, baseType: !1302, size: 64, offset: 256)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1294, file: !26, line: 121, baseType: !1306, size: 64, offset: 320)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!25, !1309}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1294, file: !26, line: 122, baseType: !1311, size: 64, offset: 384)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !26, line: 159, size: 512, align: 512, elements: !1313)
!1313 = !{!1314, !1339, !1340, !1343, !1348, !1349, !1360, !1364}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1312, file: !26, line: 160, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !26, line: 215, size: 4608, align: 512, elements: !1317)
!1317 = !{!1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1316, file: !26, line: 216, baseType: !460, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1316, file: !26, line: 217, baseType: !7, size: 32, offset: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1316, file: !26, line: 218, baseType: !7, size: 32, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1316, file: !26, line: 219, baseType: !7, size: 32, offset: 96)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1316, file: !26, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1316, file: !26, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1316, file: !26, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1316, file: !26, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1316, file: !26, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1316, file: !26, line: 226, baseType: !7, size: 32, offset: 160)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1316, file: !26, line: 227, baseType: !89, size: 16, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1316, file: !26, line: 228, baseType: !89, size: 16, offset: 208)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1316, file: !26, line: 229, baseType: !7, size: 32, offset: 224)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1316, file: !26, line: 235, baseType: !1302, size: 64, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1316, file: !26, line: 236, baseType: !1309, size: 64, offset: 320)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1316, file: !26, line: 237, baseType: !1302, size: 64, offset: 384)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1316, file: !26, line: 238, baseType: !1309, size: 64, offset: 448)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1316, file: !26, line: 239, baseType: !1336, size: 4096, align: 512, offset: 512)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1312, size: 4096, align: 512, elements: !1337)
!1337 = !{!1338}
!1338 = !DISubrange(count: 8)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1312, file: !26, line: 161, baseType: !7, size: 32, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1312, file: !26, line: 162, baseType: !1341, size: 32, offset: 96)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !88, line: 32, baseType: !1342)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !100, line: 96, baseType: !85)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1312, file: !26, line: 163, baseType: !1344, size: 32, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !254, line: 274, baseType: !1345)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !254, line: 274, size: 32, elements: !1346)
!1346 = !{!1347}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1345, file: !254, line: 274, baseType: !258, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1312, file: !26, line: 164, baseType: !1309, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1312, file: !26, line: 165, baseType: !1350, size: 128, offset: 256)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1298, line: 14, size: 128, elements: !1351)
!1351 = !{!1352}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1350, file: !1298, line: 15, baseType: !1353, size: 128)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !543, line: 26, size: 128, elements: !1354)
!1354 = !{!1355, !1359}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1353, file: !543, line: 27, baseType: !1356, size: 64)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !543, line: 12, size: 64, elements: !1357)
!1357 = !{!1358}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1356, file: !543, line: 13, baseType: !547, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1353, file: !543, line: 28, baseType: !547, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1312, file: !26, line: 166, baseType: !1361, size: 64, offset: 384)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!1302}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1312, file: !26, line: 167, baseType: !1302, size: 64, offset: 448)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1294, file: !26, line: 123, baseType: !146, size: 8, offset: 448)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1294, file: !26, line: 124, baseType: !146, size: 8, offset: 456)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1294, file: !26, line: 125, baseType: !146, size: 8, offset: 464)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1294, file: !26, line: 126, baseType: !146, size: 8, offset: 472)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1278, file: !1184, line: 671, baseType: !1294, size: 512, offset: 1216)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1278, file: !1184, line: 679, baseType: !1371, size: 64, offset: 1728)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1183, file: !1184, line: 800, baseType: !1373, size: 64, offset: 5248)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1375)
!1375 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1184, line: 800, flags: DIFlagFwdDecl)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1183, file: !1184, line: 809, baseType: !1377, size: 64, offset: 5312)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1184, line: 70, flags: DIFlagFwdDecl)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1183, file: !1184, line: 825, baseType: !1380, size: 2048, align: 512, offset: 5632)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1184, line: 509, size: 2048, align: 512, elements: !1381)
!1381 = !{!1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1380, file: !1184, line: 511, baseType: !285, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1380, file: !1184, line: 512, baseType: !285, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1380, file: !1184, line: 513, baseType: !285, size: 64, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1380, file: !1184, line: 514, baseType: !285, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1380, file: !1184, line: 515, baseType: !285, size: 64, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1380, file: !1184, line: 516, baseType: !285, size: 64, offset: 320)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1380, file: !1184, line: 518, baseType: !285, size: 64, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1380, file: !1184, line: 519, baseType: !285, size: 64, offset: 448)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1380, file: !1184, line: 520, baseType: !453, size: 64, offset: 512)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1380, file: !1184, line: 522, baseType: !285, size: 64, offset: 576)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1380, file: !1184, line: 523, baseType: !285, size: 64, offset: 640)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1380, file: !1184, line: 524, baseType: !453, size: 64, offset: 704)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1380, file: !1184, line: 526, baseType: !453, size: 64, offset: 768)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1380, file: !1184, line: 527, baseType: !285, size: 64, offset: 832)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1380, file: !1184, line: 529, baseType: !285, size: 64, offset: 896)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1380, file: !1184, line: 530, baseType: !285, size: 64, offset: 960)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1380, file: !1184, line: 531, baseType: !285, size: 64, offset: 1024)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1380, file: !1184, line: 532, baseType: !285, size: 64, offset: 1088)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1380, file: !1184, line: 533, baseType: !285, size: 64, offset: 1152)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1380, file: !1184, line: 535, baseType: !285, size: 64, offset: 1216)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1380, file: !1184, line: 536, baseType: !285, size: 64, offset: 1280)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1380, file: !1184, line: 537, baseType: !285, size: 64, offset: 1344)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1380, file: !1184, line: 538, baseType: !285, size: 64, offset: 1408)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1380, file: !1184, line: 539, baseType: !285, size: 64, offset: 1472)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1380, file: !1184, line: 540, baseType: !285, size: 64, offset: 1536)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1380, file: !1184, line: 541, baseType: !285, size: 64, offset: 1600)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1380, file: !1184, line: 542, baseType: !285, size: 64, offset: 1664)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1380, file: !1184, line: 543, baseType: !285, size: 64, offset: 1728)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1183, file: !1184, line: 833, baseType: !7, size: 32, offset: 7680)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1183, file: !1184, line: 836, baseType: !7, size: 32, offset: 7712)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1183, file: !1184, line: 837, baseType: !85, size: 32, offset: 7744)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1183, file: !1184, line: 838, baseType: !1414, size: 64, offset: 7808)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1416)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1417, line: 19, baseType: !1418)
!1417 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1417, line: 19, size: 64, elements: !1419)
!1419 = !{!1420}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1418, file: !1417, line: 19, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !1422)
!1422 = !{!1423}
!1423 = !DISubrange(count: 1)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1183, file: !1184, line: 839, baseType: !1425, size: 64, offset: 7872)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1183, file: !1184, line: 840, baseType: !1416, size: 64, offset: 7936)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1183, file: !1184, line: 841, baseType: !83, size: 64, offset: 8000)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1183, file: !1184, line: 843, baseType: !89, size: 16, offset: 8064)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1183, file: !1184, line: 845, baseType: !89, size: 16, offset: 8080)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1183, file: !1184, line: 848, baseType: !85, size: 32, offset: 8096)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1183, file: !1184, line: 849, baseType: !1432, size: 32, offset: 8128)
!1432 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1184, line: 718, size: 32, elements: !1433)
!1433 = !{!1434, !1441}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1432, file: !1184, line: 724, baseType: !1435, size: 32)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1432, file: !1184, line: 719, size: 32, elements: !1436)
!1436 = !{!1437, !1438, !1439, !1440}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1435, file: !1184, line: 720, baseType: !146, size: 8)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1435, file: !1184, line: 721, baseType: !146, size: 8, offset: 8)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1435, file: !1184, line: 722, baseType: !146, size: 8, offset: 16)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1435, file: !1184, line: 723, baseType: !146, size: 8, offset: 24)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1432, file: !1184, line: 725, baseType: !281, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1183, file: !1184, line: 850, baseType: !160, size: 128, offset: 8192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1183, file: !1184, line: 851, baseType: !1444, size: 64, offset: 8320)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1184, line: 60, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1183, file: !1184, line: 855, baseType: !102, size: 64, offset: 8384)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1183, file: !1184, line: 856, baseType: !146, size: 8, offset: 8448)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1183, file: !1184, line: 857, baseType: !146, size: 8, offset: 8456)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1183, file: !1184, line: 858, baseType: !85, size: 32, offset: 8480)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1183, file: !1184, line: 859, baseType: !160, size: 128, offset: 8512)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1183, file: !1184, line: 860, baseType: !85, size: 32, offset: 8640)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1183, file: !1184, line: 861, baseType: !160, size: 128, offset: 8704)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1183, file: !1184, line: 873, baseType: !1454, size: 256, offset: 8832)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1184, line: 376, size: 256, elements: !1455)
!1455 = !{!1456, !1457, !1458, !1459}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1454, file: !1184, line: 381, baseType: !102, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1454, file: !1184, line: 384, baseType: !189, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1454, file: !1184, line: 389, baseType: !189, size: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1454, file: !1184, line: 392, baseType: !189, size: 64, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1183, file: !1184, line: 875, baseType: !160, size: 128, offset: 9088)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1183, file: !1184, line: 877, baseType: !1462, size: 320, offset: 9216)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1463, line: 86, size: 320, elements: !1464)
!1463 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1464 = !{!1465, !1466, !1467}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1462, file: !1463, line: 87, baseType: !85, size: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1462, file: !1463, line: 88, baseType: !160, size: 128, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1462, file: !1463, line: 89, baseType: !160, size: 128, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1183, file: !1184, line: 878, baseType: !542, size: 192, align: 64, offset: 9536)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1183, file: !1184, line: 881, baseType: !1470, size: 64, offset: 9728)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !31, line: 733, size: 10240, elements: !1472)
!1472 = !{!1473, !2174}
!1473 = !DIDerivedType(tag: DW_TAG_member, scope: !1471, file: !31, line: 734, baseType: !1474, size: 10240)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1471, file: !31, line: 734, size: 10240, elements: !1475)
!1475 = !{!1476, !1480, !1493, !1497, !1498, !1499, !1500, !1501, !1502, !1511, !1512, !1513, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1552, !1554, !2119, !2143, !2144, !2145, !2148, !2149, !2150, !2153, !2154, !2155, !2161, !2162}
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1474, file: !31, line: 739, baseType: !1477, size: 512, align: 512)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1474, file: !31, line: 739, size: 512, align: 512, elements: !1478)
!1478 = !{!1479}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1477, file: !31, line: 747, baseType: !112, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1474, file: !31, line: 750, baseType: !1481, size: 128, offset: 512)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1482, line: 218, size: 128, elements: !1483)
!1482 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1483 = !{!1484, !1491, !1492}
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1481, file: !1482, line: 219, baseType: !1485, size: 32)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1481, file: !1482, line: 219, size: 32, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1485, file: !1482, line: 220, baseType: !122, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1485, file: !1482, line: 221, baseType: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1482, line: 197, baseType: !1490)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1482, line: 197, elements: !769)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1481, file: !1482, line: 223, baseType: !7, size: 32, offset: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1481, file: !1482, line: 224, baseType: !83, size: 64, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1474, file: !31, line: 752, baseType: !1494, size: 64, offset: 640)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!102, !429, !102, !102, !102, !102}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1474, file: !31, line: 756, baseType: !102, size: 64, offset: 704)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1474, file: !31, line: 757, baseType: !102, size: 64, offset: 768)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1474, file: !31, line: 760, baseType: !102, size: 64, offset: 832)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1474, file: !31, line: 761, baseType: !102, size: 64, offset: 896)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1474, file: !31, line: 763, baseType: !102, size: 64, offset: 960)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1474, file: !31, line: 764, baseType: !1503, size: 64, offset: 1024)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1505, line: 299, baseType: !1506)
!1505 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1505, line: 299, size: 64, elements: !1507)
!1507 = !{!1508}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1506, file: !1505, line: 299, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1510, line: 18, baseType: !102)
!1510 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1474, file: !31, line: 773, baseType: !112, size: 32, offset: 1088)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1474, file: !31, line: 785, baseType: !112, size: 32, offset: 1120)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1474, file: !31, line: 795, baseType: !1514, size: 64, offset: 1152)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !31, line: 726, size: 128, elements: !1516)
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1515, file: !31, line: 727, baseType: !285, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1515, file: !31, line: 728, baseType: !85, size: 32, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1474, file: !31, line: 801, baseType: !102, size: 64, offset: 1216)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1474, file: !31, line: 804, baseType: !447, size: 64, offset: 1280)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1474, file: !31, line: 806, baseType: !85, size: 32, offset: 1344)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1474, file: !31, line: 808, baseType: !122, size: 32, offset: 1376)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1474, file: !31, line: 823, baseType: !550, size: 320, offset: 1408)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1474, file: !31, line: 825, baseType: !160, size: 128, offset: 1728)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1474, file: !31, line: 845, baseType: !85, size: 32, offset: 1856)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1474, file: !31, line: 849, baseType: !102, size: 64, offset: 1920)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1474, file: !31, line: 850, baseType: !102, size: 64, offset: 1984)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1474, file: !31, line: 852, baseType: !102, size: 64, offset: 2048)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1474, file: !31, line: 853, baseType: !102, size: 64, offset: 2112)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1474, file: !31, line: 854, baseType: !449, size: 64, offset: 2176)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1474, file: !31, line: 855, baseType: !102, size: 64, offset: 2240)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1474, file: !31, line: 856, baseType: !102, size: 64, offset: 2304)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1474, file: !31, line: 857, baseType: !102, size: 64, offset: 2368)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1474, file: !31, line: 858, baseType: !102, size: 64, offset: 2432)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1474, file: !31, line: 865, baseType: !258, size: 32, offset: 2496)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1474, file: !31, line: 867, baseType: !122, size: 32, offset: 2528)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1474, file: !31, line: 869, baseType: !102, size: 64, offset: 2560)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1474, file: !31, line: 869, baseType: !102, size: 64, offset: 2624)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1474, file: !31, line: 869, baseType: !102, size: 64, offset: 2688)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1474, file: !31, line: 869, baseType: !102, size: 64, offset: 2752)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1474, file: !31, line: 870, baseType: !102, size: 64, offset: 2816)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1474, file: !31, line: 870, baseType: !102, size: 64, offset: 2880)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1474, file: !31, line: 870, baseType: !102, size: 64, offset: 2944)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1474, file: !31, line: 871, baseType: !102, size: 64, offset: 3008)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1474, file: !31, line: 871, baseType: !102, size: 64, offset: 3072)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1474, file: !31, line: 871, baseType: !102, size: 64, offset: 3136)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1474, file: !31, line: 871, baseType: !102, size: 64, offset: 3200)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1474, file: !31, line: 873, baseType: !1549, size: 3328, offset: 3264)
!1549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 3328, elements: !1550)
!1550 = !{!1551}
!1551 = !DISubrange(count: 52)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1474, file: !31, line: 875, baseType: !1553, size: 1280, offset: 6592)
!1553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 1280, elements: !216)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1474, file: !31, line: 877, baseType: !1555, size: 64, offset: 7872)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1557, line: 84, size: 448, elements: !1558)
!1557 = !DIFile(filename: "./include/linux/binfmts.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c5e97d73c9e2b70108086968647f46d0")
!1558 = !{!1559, !1560, !1561, !2108, !2112, !2118}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "lh", scope: !1556, file: !1557, line: 85, baseType: !160, size: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !1556, file: !1557, line: 86, baseType: !761, size: 64, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "load_binary", scope: !1556, file: !1557, line: 87, baseType: !1562, size: 64, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!85, !1565}
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binprm", file: !1557, line: 18, size: 3328, elements: !1567)
!1567 = !{!1568, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2104}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1566, file: !1557, line: 20, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !31, line: 625, size: 1344, elements: !1571)
!1571 = !{!1572, !1581, !1582, !1588, !1595, !1596, !1601, !1602, !1607, !1608, !1611, !2066, !2067, !2068, !2069, !2070, !2071}
!1572 = !DIDerivedType(tag: DW_TAG_member, scope: !1570, file: !31, line: 628, baseType: !1573, size: 128)
!1573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1570, file: !31, line: 628, size: 128, elements: !1574)
!1574 = !{!1575, !1580}
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !31, line: 629, baseType: !1576, size: 128)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1573, file: !31, line: 629, size: 128, elements: !1577)
!1577 = !{!1578, !1579}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1576, file: !31, line: 631, baseType: !102, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1576, file: !31, line: 632, baseType: !102, size: 64, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1573, file: !31, line: 635, baseType: !221, size: 128, align: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1570, file: !31, line: 639, baseType: !1470, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1570, file: !31, line: 640, baseType: !1583, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1505, line: 297, baseType: !1584)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1505, line: 297, size: 64, elements: !1585)
!1585 = !{!1586}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1584, file: !1505, line: 297, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1510, line: 19, baseType: !102)
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1570, file: !31, line: 646, baseType: !1589, size: 64, offset: 256)
!1589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1570, file: !31, line: 646, size: 64, elements: !1590)
!1590 = !{!1591, !1594}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1589, file: !31, line: 647, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !31, line: 542, baseType: !102)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1589, file: !31, line: 648, baseType: !1593, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1570, file: !31, line: 666, baseType: !85, size: 32, offset: 320)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1570, file: !31, line: 667, baseType: !1597, size: 64, offset: 384)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !31, line: 579, size: 320, elements: !1599)
!1599 = !{!1600}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1598, file: !31, line: 580, baseType: !550, size: 320)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1570, file: !31, line: 670, baseType: !350, size: 8, offset: 448)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1570, file: !31, line: 681, baseType: !1603, size: 256, offset: 512)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1570, file: !31, line: 678, size: 256, elements: !1604)
!1604 = !{!1605, !1606}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1603, file: !31, line: 679, baseType: !542, size: 192, align: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1603, file: !31, line: 680, baseType: !102, size: 64, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1570, file: !31, line: 689, baseType: !160, size: 128, offset: 768)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1570, file: !31, line: 691, baseType: !1609, size: 64, offset: 896)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !31, line: 691, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1570, file: !31, line: 694, baseType: !1612, size: 64, offset: 960)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1614)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1615, line: 563, size: 1024, elements: !1616)
!1615 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1616 = !{!1617, !1621, !1622, !1626, !1630, !1634, !2030, !2034, !2038, !2042, !2043, !2044, !2048, !2052, !2058, !2062}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1614, file: !1615, line: 564, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{null, !1569}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1614, file: !1615, line: 569, baseType: !1618, size: 64, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1614, file: !1615, line: 571, baseType: !1623, size: 64, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!85, !1569, !102}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1614, file: !1615, line: 572, baseType: !1627, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!85, !1569}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1614, file: !1615, line: 578, baseType: !1631, size: 64, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!85, !1569, !102, !102, !102}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1614, file: !1615, line: 580, baseType: !1635, size: 64, offset: 320)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!1638, !1639}
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !31, line: 1184, baseType: !7)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1615, line: 512, size: 896, elements: !1641)
!1641 = !{!1642, !1650, !1651, !1658, !1665, !1675, !2023, !2024, !2026, !2028}
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1640, file: !1615, line: 513, baseType: !1643, size: 320)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1640, file: !1615, line: 513, size: 320, elements: !1644)
!1644 = !{!1645, !1646, !1647, !1648, !1649}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1643, file: !1615, line: 514, baseType: !1569, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1643, file: !1615, line: 515, baseType: !946, size: 32, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1643, file: !1615, line: 516, baseType: !102, size: 64, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1643, file: !1615, line: 517, baseType: !102, size: 64, offset: 192)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1643, file: !1615, line: 518, baseType: !102, size: 64, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1640, file: !1615, line: 520, baseType: !30, size: 32, offset: 320)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1640, file: !1615, line: 522, baseType: !1652, size: 64, offset: 384)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1510, line: 22, baseType: !1654)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1510, line: 22, size: 64, elements: !1655)
!1655 = !{!1656}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1654, file: !1510, line: 22, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1510, line: 15, baseType: !102)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1640, file: !1615, line: 524, baseType: !1659, size: 64, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1505, line: 372, baseType: !1661)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1505, line: 372, size: 64, elements: !1662)
!1662 = !{!1663}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1661, file: !1505, line: 372, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1510, line: 16, baseType: !102)
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1640, file: !1615, line: 527, baseType: !1666, size: 64, offset: 512)
!1666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1640, file: !1615, line: 527, size: 64, elements: !1667)
!1667 = !{!1668, !1674}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1666, file: !1615, line: 528, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1510, line: 21, baseType: !1670)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1510, line: 21, size: 64, elements: !1671)
!1671 = !{!1672}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1670, file: !1510, line: 21, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1510, line: 14, baseType: !102)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1666, file: !1615, line: 529, baseType: !1653, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1640, file: !1615, line: 534, baseType: !1676, size: 64, offset: 576)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !31, line: 74, size: 512, align: 128, elements: !1678)
!1678 = !{!1679, !1680, !2017, !2022}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1677, file: !31, line: 75, baseType: !102, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1677, file: !31, line: 83, baseType: !1681, size: 320, offset: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1677, file: !31, line: 83, size: 320, elements: !1682)
!1682 = !{!1683, !1913, !1927, !1931, !2016}
!1683 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !31, line: 84, baseType: !1684, size: 320)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1681, file: !31, line: 84, size: 320, elements: !1685)
!1685 = !{!1686, !1697, !1907, !1912}
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !31, line: 90, baseType: !1687, size: 128)
!1687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1684, file: !31, line: 90, size: 128, elements: !1688)
!1688 = !{!1689, !1690, !1695, !1696}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1687, file: !31, line: 91, baseType: !160, size: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, scope: !1687, file: !31, line: 94, baseType: !1691, size: 128)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1687, file: !31, line: 94, size: 128, elements: !1692)
!1692 = !{!1693, !1694}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1691, file: !31, line: 96, baseType: !83, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1691, file: !31, line: 98, baseType: !7, size: 32, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1687, file: !31, line: 102, baseType: !160, size: 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1687, file: !31, line: 103, baseType: !160, size: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1684, file: !31, line: 106, baseType: !1698, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !15, line: 472, size: 1536, align: 64, elements: !1700)
!1700 = !{!1701, !1702, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1899, !1900, !1901, !1904, !1905, !1906}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1699, file: !15, line: 473, baseType: !291, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1699, file: !15, line: 474, baseType: !1703, size: 128, offset: 64)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1704, line: 296, size: 128, elements: !1705)
!1704 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1705 = !{!1706, !1707, !1708}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1703, file: !1704, line: 297, baseType: !122, size: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1703, file: !1704, line: 299, baseType: !946, size: 32, offset: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1703, file: !1704, line: 300, baseType: !83, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1699, file: !15, line: 475, baseType: !550, size: 320, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1699, file: !15, line: 476, baseType: !946, size: 32, offset: 512)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1699, file: !15, line: 477, baseType: !112, size: 32, offset: 544)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1699, file: !15, line: 482, baseType: !1353, size: 128, offset: 576)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1699, file: !15, line: 483, baseType: !102, size: 64, offset: 704)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1699, file: !15, line: 484, baseType: !102, size: 64, offset: 768)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1699, file: !15, line: 485, baseType: !1716, size: 64, offset: 832)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1718)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !15, line: 404, size: 1280, elements: !1719)
!1719 = !{!1720, !1724, !1794, !1798, !1802, !1808, !1814, !1818, !1823, !1827, !1831, !1835, !1863, !1867, !1871, !1875, !1880, !1884, !1891, !1895}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1718, file: !15, line: 405, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!85, !1676, !800}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1718, file: !15, line: 406, baseType: !1725, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!85, !429, !1728}
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !31, line: 293, size: 1536, elements: !1730)
!1730 = !{!1731, !1761, !1775}
!1731 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !31, line: 295, baseType: !1732, size: 512)
!1732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1729, file: !31, line: 295, size: 512, elements: !1733)
!1733 = !{!1734, !1760}
!1734 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !31, line: 296, baseType: !1735, size: 448)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1732, file: !31, line: 296, size: 448, elements: !1736)
!1736 = !{!1737, !1738, !1747, !1748, !1749, !1758, !1759}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1735, file: !31, line: 298, baseType: !102, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, scope: !1735, file: !31, line: 299, baseType: !1739, size: 128, offset: 64)
!1739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1735, file: !31, line: 299, size: 128, elements: !1740)
!1740 = !{!1741, !1742}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1739, file: !31, line: 300, baseType: !160, size: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, scope: !1739, file: !31, line: 302, baseType: !1743, size: 128)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1739, file: !31, line: 302, size: 128, elements: !1744)
!1744 = !{!1745, !1746}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1743, file: !31, line: 303, baseType: !83, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1743, file: !31, line: 305, baseType: !7, size: 32, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1735, file: !31, line: 310, baseType: !1698, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1735, file: !31, line: 311, baseType: !102, size: 64, offset: 256)
!1749 = !DIDerivedType(tag: DW_TAG_member, scope: !1735, file: !31, line: 312, baseType: !1750, size: 64, offset: 320)
!1750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1735, file: !31, line: 312, size: 64, elements: !1751)
!1751 = !{!1752, !1753}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1750, file: !31, line: 313, baseType: !83, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1750, file: !31, line: 314, baseType: !1754, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !31, line: 257, baseType: !1755)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 255, size: 64, elements: !1756)
!1756 = !{!1757}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1755, file: !31, line: 256, baseType: !102, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1735, file: !31, line: 316, baseType: !112, size: 32, offset: 384)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1735, file: !31, line: 317, baseType: !112, size: 32, offset: 416)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1732, file: !31, line: 323, baseType: !1677, size: 512, align: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !31, line: 325, baseType: !1762, size: 512, offset: 512)
!1762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1729, file: !31, line: 325, size: 512, elements: !1763)
!1763 = !{!1764, !1774}
!1764 = !DIDerivedType(tag: DW_TAG_member, scope: !1762, file: !31, line: 326, baseType: !1765, size: 320)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1762, file: !31, line: 326, size: 320, elements: !1766)
!1766 = !{!1767, !1768, !1769, !1770, !1771, !1772, !1773}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1765, file: !31, line: 327, baseType: !102, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1765, file: !31, line: 328, baseType: !102, size: 64, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1765, file: !31, line: 329, baseType: !102, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1765, file: !31, line: 331, baseType: !112, size: 32, offset: 192)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1765, file: !31, line: 332, baseType: !112, size: 32, offset: 224)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1765, file: !31, line: 333, baseType: !112, size: 32, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1765, file: !31, line: 335, baseType: !7, size: 32, offset: 288)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1762, file: !31, line: 339, baseType: !1677, size: 512, align: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !31, line: 341, baseType: !1776, size: 512, offset: 1024)
!1776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1729, file: !31, line: 341, size: 512, elements: !1777)
!1777 = !{!1778, !1787, !1793}
!1778 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !31, line: 342, baseType: !1779, size: 384)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1776, file: !31, line: 342, size: 384, elements: !1780)
!1780 = !{!1781, !1782, !1783, !1784, !1785, !1786}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1779, file: !31, line: 343, baseType: !102, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1779, file: !31, line: 344, baseType: !102, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1779, file: !31, line: 346, baseType: !83, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1779, file: !31, line: 347, baseType: !83, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1779, file: !31, line: 348, baseType: !83, size: 64, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1779, file: !31, line: 349, baseType: !83, size: 64, offset: 320)
!1787 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !31, line: 352, baseType: !1788, size: 256)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1776, file: !31, line: 352, size: 256, elements: !1789)
!1789 = !{!1790, !1791, !1792}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1788, file: !31, line: 353, baseType: !102, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1788, file: !31, line: 354, baseType: !102, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1788, file: !31, line: 356, baseType: !160, size: 128, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1776, file: !31, line: 359, baseType: !1677, size: 512, align: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1718, file: !15, line: 409, baseType: !1795, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!85, !1698, !800}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1718, file: !15, line: 412, baseType: !1799, size: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!350, !1698, !1728}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1718, file: !15, line: 414, baseType: !1803, size: 64, offset: 256)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{null, !1806}
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !15, line: 310, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1718, file: !15, line: 416, baseType: !1809, size: 64, offset: 320)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!85, !429, !1698, !104, !7, !1812, !1813}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1718, file: !15, line: 419, baseType: !1815, size: 64, offset: 384)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!85, !429, !1698, !104, !7, !7, !1676, !83}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1718, file: !15, line: 424, baseType: !1819, size: 64, offset: 448)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!1822, !1698, !1822}
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !88, line: 131, baseType: !285)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1718, file: !15, line: 425, baseType: !1824, size: 64, offset: 512)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !1728, !98, !98}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1718, file: !15, line: 426, baseType: !1828, size: 64, offset: 576)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!350, !1728, !946}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1718, file: !15, line: 427, baseType: !1832, size: 64, offset: 640)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !1728}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1718, file: !15, line: 428, baseType: !1836, size: 64, offset: 704)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!883, !1839, !1861}
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !15, line: 373, size: 384, elements: !1841)
!1841 = !{!1842, !1843, !1844, !1848, !1849, !1850, !1851}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1840, file: !15, line: 374, baseType: !429, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1840, file: !15, line: 375, baseType: !104, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1840, file: !15, line: 376, baseType: !1845, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{null, !1839, !425}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1840, file: !15, line: 377, baseType: !83, size: 64, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1840, file: !15, line: 378, baseType: !85, size: 32, offset: 256)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1840, file: !15, line: 379, baseType: !156, size: 16, offset: 288)
!1851 = !DIDerivedType(tag: DW_TAG_member, scope: !1840, file: !15, line: 380, baseType: !1852, size: 64, offset: 320)
!1852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1840, file: !15, line: 380, size: 64, elements: !1853)
!1853 = !{!1854, !1857}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1852, file: !15, line: 386, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !15, line: 386, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1852, file: !15, line: 395, baseType: !1858, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!883, !83}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !15, line: 69, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1718, file: !15, line: 433, baseType: !1864, size: 64, offset: 768)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!85, !1698, !1728, !1728, !46}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1718, file: !15, line: 435, baseType: !1868, size: 64, offset: 832)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!85, !1728}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1718, file: !15, line: 436, baseType: !1872, size: 64, offset: 896)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!350, !1728, !98, !98}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1718, file: !15, line: 438, baseType: !1876, size: 64, offset: 960)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{null, !1728, !1879, !1879}
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1718, file: !15, line: 439, baseType: !1881, size: 64, offset: 1024)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!85, !1698, !1676}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1718, file: !15, line: 442, baseType: !1885, size: 64, offset: 1088)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!85, !1888, !429, !1890}
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !15, line: 66, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1718, file: !15, line: 444, baseType: !1892, size: 64, offset: 1152)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !429}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1718, file: !15, line: 445, baseType: !1896, size: 64, offset: 1216)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!85, !1839, !1861}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1699, file: !15, line: 486, baseType: !102, size: 64, offset: 896)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1699, file: !15, line: 487, baseType: !550, size: 320, offset: 960)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1699, file: !15, line: 488, baseType: !1902, size: 32, offset: 1280)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1903, line: 8, baseType: !281)
!1903 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1699, file: !15, line: 489, baseType: !122, size: 32, offset: 1312)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1699, file: !15, line: 490, baseType: !160, size: 128, offset: 1344)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1699, file: !15, line: 491, baseType: !83, size: 64, offset: 1472)
!1907 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !31, line: 107, baseType: !1908, size: 64, offset: 192)
!1908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1684, file: !31, line: 107, size: 64, elements: !1909)
!1909 = !{!1910, !1911}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1908, file: !31, line: 108, baseType: !102, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1908, file: !31, line: 109, baseType: !102, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1684, file: !31, line: 117, baseType: !102, size: 64, offset: 256)
!1913 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !31, line: 119, baseType: !1914, size: 320)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1681, file: !31, line: 119, size: 320, elements: !1915)
!1915 = !{!1916, !1917, !1920, !1921, !1922}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1914, file: !31, line: 124, baseType: !102, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1914, file: !31, line: 125, baseType: !1918, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !31, line: 125, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1914, file: !31, line: 126, baseType: !102, size: 64, offset: 128)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1914, file: !31, line: 127, baseType: !102, size: 64, offset: 192)
!1922 = !DIDerivedType(tag: DW_TAG_member, scope: !1914, file: !31, line: 128, baseType: !1923, size: 64, offset: 256)
!1923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1914, file: !31, line: 128, size: 64, elements: !1924)
!1924 = !{!1925, !1926}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1923, file: !31, line: 133, baseType: !102, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1923, file: !31, line: 138, baseType: !447, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !31, line: 141, baseType: !1928, size: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1681, file: !31, line: 141, size: 64, elements: !1929)
!1929 = !{!1930}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1928, file: !31, line: 142, baseType: !102, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !31, line: 144, baseType: !1932, size: 128)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1681, file: !31, line: 144, size: 128, elements: !1933)
!1933 = !{!1934, !2015}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1932, file: !31, line: 146, baseType: !1935, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !1937)
!1937 = !{!1938, !1948, !1969, !1980, !1981, !1982, !1983, !1997, !1998, !1999}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1936, file: !54, line: 127, baseType: !1939, size: 384)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !1940)
!1940 = !{!1941, !1942, !1944, !1945, !1946, !1947}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1939, file: !54, line: 22, baseType: !102, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1939, file: !54, line: 23, baseType: !1943, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1939, file: !54, line: 24, baseType: !1943, size: 64, offset: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1939, file: !54, line: 25, baseType: !102, size: 64, offset: 192)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1939, file: !54, line: 26, baseType: !102, size: 64, offset: 256)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1939, file: !54, line: 27, baseType: !102, size: 64, offset: 320)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1936, file: !54, line: 128, baseType: !1949, size: 128, offset: 384)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1950, line: 105, size: 128, elements: !1951)
!1950 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1951 = !{!1952, !1953}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1949, file: !1950, line: 110, baseType: !102, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1949, file: !1950, line: 118, baseType: !1954, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1950, line: 95, size: 448, elements: !1956)
!1956 = !{!1957, !1958, !1964, !1965, !1966, !1967, !1968}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1955, file: !1950, line: 96, baseType: !447, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1955, file: !1950, line: 97, baseType: !1959, size: 64, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1950, line: 60, baseType: !1961)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{null, !1963}
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1955, file: !1950, line: 98, baseType: !1959, size: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1955, file: !1950, line: 99, baseType: !350, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1955, file: !1950, line: 100, baseType: !350, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1955, file: !1950, line: 101, baseType: !221, size: 128, align: 64, offset: 256)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1955, file: !1950, line: 102, baseType: !1963, size: 64, offset: 384)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1936, file: !54, line: 129, baseType: !1970, size: 256, offset: 512)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1971, line: 26, size: 256, elements: !1972)
!1971 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1972 = !{!1973, !1974}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1970, file: !1971, line: 27, baseType: !7, size: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1970, file: !1971, line: 28, baseType: !1975, size: 192, offset: 64)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1976, line: 43, size: 192, elements: !1977)
!1976 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1977 = !{!1978, !1979}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1975, file: !1976, line: 44, baseType: !460, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1975, file: !1976, line: 45, baseType: !160, size: 128, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1936, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1936, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1936, file: !54, line: 132, baseType: !102, size: 64, offset: 832)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1936, file: !54, line: 133, baseType: !1984, size: 64, offset: 896)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1986)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !1987)
!1987 = !{!1988, !1992, !1993}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1986, file: !54, line: 83, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !1676}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1986, file: !54, line: 89, baseType: !1635, size: 64, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1986, file: !54, line: 100, baseType: !1994, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!85, !1935, !102, !102, !85}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1936, file: !54, line: 134, baseType: !83, size: 64, offset: 960)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1936, file: !54, line: 135, baseType: !85, size: 32, offset: 1024)
!1999 = !DIDerivedType(tag: DW_TAG_member, scope: !1936, file: !54, line: 136, baseType: !2000, size: 128, offset: 1088)
!2000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1936, file: !54, line: 136, size: 128, elements: !2001)
!2001 = !{!2002, !2008}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2000, file: !54, line: 137, baseType: !2003, size: 128)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2004, line: 6, size: 128, elements: !2005)
!2004 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2005 = !{!2006, !2007}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2003, file: !2004, line: 7, baseType: !285, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2003, file: !2004, line: 8, baseType: !285, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, scope: !2000, file: !54, line: 138, baseType: !2009)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2000, file: !54, line: 138, elements: !2010)
!2010 = !{!2011, !2013}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2009, file: !54, line: 138, baseType: !2012)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2009, file: !54, line: 138, elements: !769)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2009, file: !54, line: 138, baseType: !2014)
!2014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2003, elements: !237)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1932, file: !31, line: 147, baseType: !83, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1681, file: !31, line: 161, baseType: !221, size: 128, align: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, scope: !1677, file: !31, line: 164, baseType: !2018, size: 32, offset: 384)
!2018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1677, file: !31, line: 164, size: 32, elements: !2019)
!2019 = !{!2020, !2021}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2018, file: !31, line: 169, baseType: !112, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2018, file: !31, line: 177, baseType: !7, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1677, file: !31, line: 181, baseType: !112, size: 32, offset: 416)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1640, file: !1615, line: 535, baseType: !1676, size: 64, offset: 640)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1640, file: !1615, line: 541, baseType: !2025, size: 64, offset: 704)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1640, file: !1615, line: 545, baseType: !2027, size: 64, offset: 768)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1640, file: !1615, line: 549, baseType: !2029, size: 64, offset: 832)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1505, line: 520, baseType: !1676)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1614, file: !1615, line: 581, baseType: !2031, size: 64, offset: 384)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!1638, !1639, !7}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1614, file: !1615, line: 582, baseType: !2035, size: 64, offset: 448)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!1638, !1639, !102, !102}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1614, file: !1615, line: 584, baseType: !2039, size: 64, offset: 512)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!102, !1569}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1614, file: !1615, line: 588, baseType: !1635, size: 64, offset: 576)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1614, file: !1615, line: 591, baseType: !1635, size: 64, offset: 640)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1614, file: !1615, line: 597, baseType: !2045, size: 64, offset: 704)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!85, !1569, !102, !83, !85, !85}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1614, file: !1615, line: 603, baseType: !2049, size: 64, offset: 768)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!79, !1569}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1614, file: !1615, line: 613, baseType: !2053, size: 64, offset: 832)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!85, !1569, !2056}
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1184, line: 54, flags: DIFlagFwdDecl)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1614, file: !1615, line: 625, baseType: !2059, size: 64, offset: 896)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!2056, !1569, !102}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1614, file: !1615, line: 633, baseType: !2063, size: 64, offset: 960)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!1676, !1569, !102}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1570, file: !31, line: 697, baseType: !102, size: 64, offset: 1024)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1570, file: !31, line: 699, baseType: !429, size: 64, offset: 1088)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1570, file: !31, line: 700, baseType: !83, size: 64, offset: 1152)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1570, file: !31, line: 711, baseType: !447, size: 64, offset: 1216)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1570, file: !31, line: 717, baseType: !2056, size: 64, offset: 1280)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1570, file: !31, line: 722, baseType: !2072, offset: 1344)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !31, line: 570, elements: !769)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "vma_pages", scope: !1566, file: !1557, line: 21, baseType: !102, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1566, file: !1557, line: 26, baseType: !1470, size: 64, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1566, file: !1557, line: 27, baseType: !102, size: 64, offset: 192)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "argmin", scope: !1566, file: !1557, line: 28, baseType: !102, size: 64, offset: 256)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "have_execfd", scope: !1566, file: !1557, line: 31, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "execfd_creds", scope: !1566, file: !1557, line: 34, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "secureexec", scope: !1566, file: !1557, line: 40, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "point_of_no_return", scope: !1566, file: !1557, line: 45, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "comm_from_dentry", scope: !1566, file: !1557, line: 47, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "executable", scope: !1566, file: !1557, line: 48, baseType: !429, size: 64, offset: 384)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "interpreter", scope: !1566, file: !1557, line: 49, baseType: !429, size: 64, offset: 448)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1566, file: !1557, line: 50, baseType: !429, size: 64, offset: 512)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1566, file: !1557, line: 51, baseType: !2086, size: 64, offset: 576)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe", scope: !1566, file: !1557, line: 52, baseType: !85, size: 32, offset: 640)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "per_clear", scope: !1566, file: !1557, line: 53, baseType: !7, size: 32, offset: 672)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1566, file: !1557, line: 54, baseType: !85, size: 32, offset: 704)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "envc", scope: !1566, file: !1557, line: 54, baseType: !85, size: 32, offset: 736)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !1566, file: !1557, line: 55, baseType: !79, size: 64, offset: 768)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !1566, file: !1557, line: 56, baseType: !79, size: 64, offset: 832)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "fdpath", scope: !1566, file: !1557, line: 59, baseType: !79, size: 64, offset: 896)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "interp_flags", scope: !1566, file: !1557, line: 60, baseType: !7, size: 32, offset: 960)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "execfd", scope: !1566, file: !1557, line: 61, baseType: !85, size: 32, offset: 992)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "loader", scope: !1566, file: !1557, line: 62, baseType: !102, size: 64, offset: 1024)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !1566, file: !1557, line: 62, baseType: !102, size: 64, offset: 1088)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_stack", scope: !1566, file: !1557, line: 64, baseType: !2099, size: 128, offset: 1152)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2100, line: 43, size: 128, elements: !2101)
!2100 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2101 = !{!2102, !2103}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2099, file: !2100, line: 44, baseType: !101, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2099, file: !2100, line: 45, baseType: !101, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1566, file: !1557, line: 66, baseType: !2105, size: 2048, offset: 1280)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 2048, elements: !2106)
!2106 = !{!2107}
!2107 = !DISubrange(count: 256)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "load_shlib", scope: !1556, file: !1557, line: 88, baseType: !2109, size: 64, offset: 256)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!85, !429}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "core_dump", scope: !1556, file: !1557, line: 90, baseType: !2113, size: 64, offset: 320)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!85, !2116}
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "coredump_params", file: !1557, line: 11, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "min_coredump", scope: !1556, file: !1557, line: 91, baseType: !102, size: 64, offset: 384)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1474, file: !31, line: 880, baseType: !2120, size: 1088, offset: 7936)
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2121, line: 72, baseType: !2122)
!2121 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2121, line: 23, size: 1088, elements: !2123)
!2123 = !{!2124, !2125, !2126, !2127, !2128, !2131, !2132, !2133, !2134, !2138, !2139, !2140}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2122, file: !2121, line: 28, baseType: !285, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2122, file: !2121, line: 38, baseType: !449, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2122, file: !2121, line: 40, baseType: !102, size: 64, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2122, file: !2121, line: 43, baseType: !550, size: 320, offset: 192)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2122, file: !2121, line: 44, baseType: !2129, size: 64, offset: 512)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2121, line: 44, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2122, file: !2121, line: 48, baseType: !102, size: 64, offset: 576)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2122, file: !2121, line: 59, baseType: !455, size: 256, offset: 640)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2122, file: !2121, line: 60, baseType: !83, size: 64, offset: 896)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2122, file: !2121, line: 61, baseType: !2135, size: 64, offset: 960)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2137)
!2137 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2121, line: 61, flags: DIFlagFwdDecl)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2122, file: !2121, line: 63, baseType: !112, size: 32, offset: 1024)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2122, file: !2121, line: 69, baseType: !156, size: 16, offset: 1056)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2122, file: !2121, line: 70, baseType: !2141, size: 16, offset: 1072)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !147, line: 18, baseType: !2142)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !149, line: 23, baseType: !576)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1474, file: !31, line: 882, baseType: !102, size: 64, offset: 9024)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1474, file: !31, line: 885, baseType: !122, size: 32, offset: 9088)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1474, file: !31, line: 886, baseType: !2146, size: 64, offset: 9152)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !31, line: 732, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1474, file: !31, line: 901, baseType: !688, size: 64, offset: 9216)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1474, file: !31, line: 904, baseType: !429, size: 64, offset: 9280)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1474, file: !31, line: 906, baseType: !2151, size: 64, offset: 9344)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !31, line: 906, flags: DIFlagFwdDecl)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1474, file: !31, line: 930, baseType: !112, size: 32, offset: 9408)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1474, file: !31, line: 933, baseType: !112, size: 32, offset: 9440)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1474, file: !31, line: 935, baseType: !2156, size: 64, offset: 9472)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2157)
!2157 = !{!2158}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2156, file: !68, line: 104, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1474, file: !31, line: 940, baseType: !447, size: 64, offset: 9536)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1474, file: !31, line: 942, baseType: !2163, size: 256, offset: 9600)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2164, line: 98, size: 256, elements: !2165)
!2164 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2165 = !{!2166, !2167, !2168}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2163, file: !2164, line: 99, baseType: !447, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2163, file: !2164, line: 100, baseType: !160, size: 128, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2163, file: !2164, line: 101, baseType: !2169, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2164, line: 21, baseType: !2170)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{null, !2173}
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1471, file: !31, line: 986, baseType: !2175, offset: 10240)
!2175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, elements: !237)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1183, file: !1184, line: 882, baseType: !1470, size: 64, offset: 9792)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1183, file: !1184, line: 884, baseType: !85, size: 32, offset: 9856)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1183, file: !1184, line: 885, baseType: !85, size: 32, offset: 9888)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1183, file: !1184, line: 886, baseType: !85, size: 32, offset: 9920)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1183, file: !1184, line: 888, baseType: !85, size: 32, offset: 9952)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1183, file: !1184, line: 890, baseType: !102, size: 64, offset: 9984)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1183, file: !1184, line: 893, baseType: !7, size: 32, offset: 10048)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1183, file: !1184, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1183, file: !1184, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1183, file: !1184, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1183, file: !1184, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1183, file: !1184, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1183, file: !1184, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1183, file: !1184, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1183, file: !1184, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1183, file: !1184, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1183, file: !1184, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1183, file: !1184, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1183, file: !1184, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1183, file: !1184, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1183, file: !1184, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1183, file: !1184, line: 969, baseType: !102, size: 64, offset: 10176)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1183, file: !1184, line: 971, baseType: !2199, size: 448, offset: 10240)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2200)
!2200 = !{!2201, !2202, !2207}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2199, file: !62, line: 26, baseType: !102, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2199, file: !62, line: 27, baseType: !2203, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!425, !2206}
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, scope: !2199, file: !62, line: 28, baseType: !2208, size: 320, offset: 128)
!2208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2199, file: !62, line: 28, size: 320, elements: !2209)
!2209 = !{!2210, !2220, !2245}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2208, file: !62, line: 37, baseType: !2211, size: 320)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2208, file: !62, line: 30, size: 320, elements: !2212)
!2212 = !{!2213, !2215, !2216, !2217, !2218, !2219}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2211, file: !62, line: 31, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2211, file: !62, line: 32, baseType: !281, size: 32, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2211, file: !62, line: 33, baseType: !281, size: 32, offset: 96)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2211, file: !62, line: 34, baseType: !281, size: 32, offset: 128)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2211, file: !62, line: 35, baseType: !285, size: 64, offset: 192)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2211, file: !62, line: 36, baseType: !2214, size: 64, offset: 256)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2208, file: !62, line: 47, baseType: !2221, size: 192)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2208, file: !62, line: 39, size: 192, elements: !2222)
!2222 = !{!2223, !2224, !2225, !2244}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2221, file: !62, line: 40, baseType: !1341, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2221, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, scope: !2221, file: !62, line: 42, baseType: !2226, size: 64, offset: 64)
!2226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2221, file: !62, line: 42, size: 64, elements: !2227)
!2227 = !{!2228, !2236}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2226, file: !62, line: 43, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2231, line: 7, size: 128, elements: !2232)
!2231 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2232 = !{!2233, !2235}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2230, file: !2231, line: 8, baseType: !2234, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !100, line: 93, baseType: !106)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2230, file: !2231, line: 9, baseType: !106, size: 64, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2226, file: !62, line: 44, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2239, line: 7, size: 64, elements: !2240)
!2239 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2240 = !{!2241, !2243}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2238, file: !2239, line: 8, baseType: !2242, size: 32)
!2242 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2239, line: 5, baseType: !535)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2238, file: !2239, line: 9, baseType: !535, size: 32, offset: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2221, file: !62, line: 46, baseType: !285, size: 64, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2208, file: !62, line: 55, baseType: !2246, size: 256)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2208, file: !62, line: 49, size: 256, elements: !2247)
!2247 = !{!2248, !2256, !2257, !2258, !2259}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2246, file: !62, line: 50, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2251, line: 36, size: 64, elements: !2252)
!2251 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2252 = !{!2253, !2254, !2255}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2250, file: !2251, line: 37, baseType: !85, size: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2250, file: !2251, line: 38, baseType: !576, size: 16, offset: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2250, file: !2251, line: 39, baseType: !576, size: 16, offset: 48)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2246, file: !62, line: 51, baseType: !85, size: 32, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2246, file: !62, line: 52, baseType: !85, size: 32, offset: 96)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2246, file: !62, line: 53, baseType: !102, size: 64, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2246, file: !62, line: 54, baseType: !102, size: 64, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1183, file: !1184, line: 973, baseType: !2261, size: 32, offset: 10688)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !88, line: 27, baseType: !2262)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !100, line: 28, baseType: !85)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1183, file: !1184, line: 974, baseType: !2261, size: 32, offset: 10720)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1183, file: !1184, line: 978, baseType: !102, size: 64, offset: 10752)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1183, file: !1184, line: 987, baseType: !1182, size: 64, offset: 10816)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1183, file: !1184, line: 990, baseType: !1182, size: 64, offset: 10880)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1183, file: !1184, line: 995, baseType: !160, size: 128, offset: 10944)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1183, file: !1184, line: 996, baseType: !160, size: 128, offset: 11072)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1183, file: !1184, line: 997, baseType: !1182, size: 64, offset: 11200)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1183, file: !1184, line: 1005, baseType: !160, size: 128, offset: 11264)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1183, file: !1184, line: 1006, baseType: !160, size: 128, offset: 11392)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1183, file: !1184, line: 1009, baseType: !195, size: 64, offset: 11520)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1183, file: !1184, line: 1010, baseType: !2274, size: 512, offset: 11584)
!2274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 512, elements: !216)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1183, file: !1184, line: 1011, baseType: !160, size: 128, offset: 12096)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1183, file: !1184, line: 1012, baseType: !160, size: 128, offset: 12224)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1183, file: !1184, line: 1014, baseType: !2278, size: 64, offset: 12352)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1183, file: !1184, line: 1017, baseType: !832, size: 64, offset: 12416)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1183, file: !1184, line: 1020, baseType: !832, size: 64, offset: 12480)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1183, file: !1184, line: 1023, baseType: !83, size: 64, offset: 12544)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1183, file: !1184, line: 1025, baseType: !285, size: 64, offset: 12608)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1183, file: !1184, line: 1026, baseType: !285, size: 64, offset: 12672)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1183, file: !1184, line: 1031, baseType: !285, size: 64, offset: 12736)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1183, file: !1184, line: 1032, baseType: !2286, size: 192, offset: 12800)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1184, line: 324, size: 192, elements: !2287)
!2287 = !{!2288, !2289, !2290}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2286, file: !1184, line: 326, baseType: !285, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2286, file: !1184, line: 327, baseType: !285, size: 64, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2286, file: !1184, line: 328, baseType: !460, size: 32, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1183, file: !1184, line: 1041, baseType: !102, size: 64, offset: 12992)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1183, file: !1184, line: 1042, baseType: !102, size: 64, offset: 13056)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1183, file: !1184, line: 1045, baseType: !285, size: 64, offset: 13120)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1183, file: !1184, line: 1048, baseType: !285, size: 64, offset: 13184)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1183, file: !1184, line: 1051, baseType: !102, size: 64, offset: 13248)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1183, file: !1184, line: 1052, baseType: !102, size: 64, offset: 13312)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1183, file: !1184, line: 1055, baseType: !2298, size: 640, offset: 13376)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2299, line: 132, size: 640, elements: !2300)
!2299 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2300 = !{!2301, !2307, !2308}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2298, file: !2299, line: 133, baseType: !2302, size: 576)
!2302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2303, size: 576, elements: !492)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2299, line: 117, size: 192, elements: !2304)
!2304 = !{!2305, !2306}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2303, file: !2299, line: 118, baseType: !285, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2303, file: !2299, line: 119, baseType: !1350, size: 128, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2298, file: !2299, line: 134, baseType: !7, size: 32, offset: 576)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2298, file: !2299, line: 135, baseType: !7, size: 32, offset: 608)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1183, file: !1184, line: 1058, baseType: !2310, size: 448, offset: 14016)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2299, line: 144, size: 448, elements: !2311)
!2311 = !{!2312, !2313, !2314}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2310, file: !2299, line: 145, baseType: !221, size: 128, align: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2310, file: !2299, line: 146, baseType: !455, size: 256, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2310, file: !2299, line: 147, baseType: !7, size: 32, offset: 384)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1183, file: !1184, line: 1064, baseType: !501, size: 64, offset: 14464)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1183, file: !1184, line: 1067, baseType: !501, size: 64, offset: 14528)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1183, file: !1184, line: 1070, baseType: !501, size: 64, offset: 14592)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1183, file: !1184, line: 1074, baseType: !527, size: 64, offset: 14656)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1183, file: !1184, line: 1084, baseType: !2320, size: 128, offset: 14720)
!2320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 128, elements: !2321)
!2321 = !{!2322}
!2322 = !DISubrange(count: 16)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1183, file: !1184, line: 1086, baseType: !2324, size: 64, offset: 14848)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1184, line: 55, flags: DIFlagFwdDecl)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1183, file: !1184, line: 1089, baseType: !2327, size: 64, offset: 14912)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2328, line: 12, size: 64, elements: !2329)
!2328 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2329 = !{!2330}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2327, file: !2328, line: 13, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2328, line: 8, flags: DIFlagFwdDecl)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1183, file: !1184, line: 1090, baseType: !2334, size: 128, offset: 14976)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2335, line: 13, size: 128, elements: !2336)
!2335 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2336 = !{!2337}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2334, file: !2335, line: 14, baseType: !160, size: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1183, file: !1184, line: 1097, baseType: !2339, size: 64, offset: 15104)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2341, line: 9, size: 448, elements: !2342)
!2341 = !DIFile(filename: "./include/linux/fs_struct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "974310bb6a29a53024699f0fa1ab259a")
!2342 = !{!2343, !2344, !2345, !2346, !2347, !2348, !2349}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !2340, file: !2341, line: 10, baseType: !85, size: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2340, file: !2341, line: 11, baseType: !122, size: 32, offset: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2340, file: !2341, line: 12, baseType: !253, size: 32, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "umask", scope: !2340, file: !2341, line: 13, baseType: !85, size: 32, offset: 96)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "in_exec", scope: !2340, file: !2341, line: 14, baseType: !85, size: 32, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2340, file: !2341, line: 15, baseType: !718, size: 128, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "pwd", scope: !2340, file: !2341, line: 15, baseType: !718, size: 128, offset: 320)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1183, file: !1184, line: 1100, baseType: !2351, size: 64, offset: 15168)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1184, line: 1100, flags: DIFlagFwdDecl)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1183, file: !1184, line: 1103, baseType: !2354, size: 64, offset: 15232)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1184, line: 53, flags: DIFlagFwdDecl)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1183, file: !1184, line: 1107, baseType: !2357, size: 64, offset: 15296)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2359, line: 31, size: 576, elements: !2360)
!2359 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2360 = !{!2361, !2362, !2365, !2368, !2479, !2480, !2483, !2486, !2487}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2358, file: !2359, line: 32, baseType: !199, size: 32)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2358, file: !2359, line: 33, baseType: !2363, size: 64, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2359, line: 9, flags: DIFlagFwdDecl)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2358, file: !2359, line: 34, baseType: !2366, size: 64, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2359, line: 10, flags: DIFlagFwdDecl)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2358, file: !2359, line: 35, baseType: !2369, size: 64, offset: 192)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2371, line: 8, size: 960, elements: !2372)
!2371 = !DIFile(filename: "fs/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4a5eb1a988fb7c9469e00ad2dc4ac71")
!2372 = !{!2373, !2417, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2370, file: !2371, line: 9, baseType: !2374, size: 192)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !2375, line: 9, size: 192, elements: !2376)
!2375 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!2376 = !{!2377, !2378, !2415, !2416}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !2374, file: !2375, line: 10, baseType: !447, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2374, file: !2375, line: 11, baseType: !2379, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2381)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !2382, line: 16, size: 512, elements: !2383)
!2382 = !DIFile(filename: "./include/linux/proc_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10d8d049c3f8fd93040e0b5385a478ba")
!2383 = !{!2384, !2385, !2386, !2387, !2392, !2396, !2407, !2411}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2381, file: !2382, line: 17, baseType: !79, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "real_ns_name", scope: !2381, file: !2382, line: 18, baseType: !79, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2381, file: !2382, line: 19, baseType: !85, size: 32, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2381, file: !2382, line: 20, baseType: !2388, size: 64, offset: 192)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!2391, !1182}
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2381, file: !2382, line: 21, baseType: !2393, size: 64, offset: 256)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{null, !2391}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !2381, file: !2382, line: 22, baseType: !2397, size: 64, offset: 320)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!85, !2400, !2391}
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsset", file: !2359, line: 53, size: 256, elements: !2402)
!2402 = !{!2403, !2404, !2405, !2406}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2401, file: !2359, line: 54, baseType: !7, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2401, file: !2359, line: 55, baseType: !2357, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2401, file: !2359, line: 56, baseType: !2339, size: 64, offset: 128)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2401, file: !2359, line: 57, baseType: !501, size: 64, offset: 192)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2381, file: !2382, line: 23, baseType: !2408, size: 64, offset: 384)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!688, !2391}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2381, file: !2382, line: 24, baseType: !2412, size: 64, offset: 448)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!2391, !2391}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !2374, file: !2375, line: 12, baseType: !7, size: 32, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2374, file: !2375, line: 13, baseType: !199, size: 32, offset: 160)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2370, file: !2371, line: 10, baseType: !2418, size: 64, offset: 192)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mount", file: !2371, line: 39, size: 2560, elements: !2420)
!2420 = !{!2421, !2422, !2423, !2424, !2425, !2430, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2455, !2460, !2461, !2464, !2465, !2466, !2467, !2468, !2469}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_hash", scope: !2419, file: !2371, line: 40, baseType: !211, size: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_parent", scope: !2419, file: !2371, line: 41, baseType: !2418, size: 64, offset: 128)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mountpoint", scope: !2419, file: !2371, line: 42, baseType: !247, size: 64, offset: 192)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !2419, file: !2371, line: 43, baseType: !723, size: 256, offset: 256)
!2425 = !DIDerivedType(tag: DW_TAG_member, scope: !2419, file: !2371, line: 44, baseType: !2426, size: 128, offset: 512)
!2426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2419, file: !2371, line: 44, size: 128, elements: !2427)
!2427 = !{!2428, !2429}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_rcu", scope: !2426, file: !2371, line: 45, baseType: !221, size: 128, align: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_llist", scope: !2426, file: !2371, line: 46, baseType: !436, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_pcp", scope: !2419, file: !2371, line: 49, baseType: !2431, size: 64, offset: 640)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_pcp", file: !2371, line: 27, size: 64, elements: !2433)
!2433 = !{!2434, !2435}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_count", scope: !2432, file: !2371, line: 28, baseType: !85, size: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_writers", scope: !2432, file: !2371, line: 29, baseType: !85, size: 32, offset: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mounts", scope: !2419, file: !2371, line: 54, baseType: !160, size: 128, offset: 704)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_child", scope: !2419, file: !2371, line: 55, baseType: !160, size: 128, offset: 832)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_instance", scope: !2419, file: !2371, line: 56, baseType: !160, size: 128, offset: 960)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_devname", scope: !2419, file: !2371, line: 57, baseType: !79, size: 64, offset: 1088)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_list", scope: !2419, file: !2371, line: 58, baseType: !160, size: 128, offset: 1152)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_expire", scope: !2419, file: !2371, line: 59, baseType: !160, size: 128, offset: 1280)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_share", scope: !2419, file: !2371, line: 60, baseType: !160, size: 128, offset: 1408)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_slave_list", scope: !2419, file: !2371, line: 61, baseType: !160, size: 128, offset: 1536)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_slave", scope: !2419, file: !2371, line: 62, baseType: !160, size: 128, offset: 1664)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_master", scope: !2419, file: !2371, line: 63, baseType: !2418, size: 64, offset: 1792)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2419, file: !2371, line: 64, baseType: !2369, size: 64, offset: 1856)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mp", scope: !2419, file: !2371, line: 65, baseType: !2448, size: 64, offset: 1920)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mountpoint", file: !2371, line: 32, size: 320, elements: !2450)
!2450 = !{!2451, !2452, !2453, !2454}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "m_hash", scope: !2449, file: !2371, line: 33, baseType: !211, size: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "m_dentry", scope: !2449, file: !2371, line: 34, baseType: !247, size: 64, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "m_list", scope: !2449, file: !2371, line: 35, baseType: !207, size: 64, offset: 192)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "m_count", scope: !2449, file: !2371, line: 36, baseType: !85, size: 32, offset: 256)
!2455 = !DIDerivedType(tag: DW_TAG_member, scope: !2419, file: !2371, line: 66, baseType: !2456, size: 128, offset: 1984)
!2456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2419, file: !2371, line: 66, size: 128, elements: !2457)
!2457 = !{!2458, !2459}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mp_list", scope: !2456, file: !2371, line: 67, baseType: !211, size: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_umount", scope: !2456, file: !2371, line: 68, baseType: !211, size: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_umounting", scope: !2419, file: !2371, line: 70, baseType: !160, size: 128, offset: 2112)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsnotify_marks", scope: !2419, file: !2371, line: 72, baseType: !2462, size: 64, offset: 2240)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !15, line: 634, flags: DIFlagFwdDecl)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsnotify_mask", scope: !2419, file: !2371, line: 73, baseType: !282, size: 32, offset: 2304)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2419, file: !2371, line: 75, baseType: !85, size: 32, offset: 2336)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_group_id", scope: !2419, file: !2371, line: 76, baseType: !85, size: 32, offset: 2368)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_expiry_mark", scope: !2419, file: !2371, line: 77, baseType: !85, size: 32, offset: 2400)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_pins", scope: !2419, file: !2371, line: 78, baseType: !207, size: 64, offset: 2432)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_stuck_children", scope: !2419, file: !2371, line: 79, baseType: !207, size: 64, offset: 2496)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2370, file: !2371, line: 16, baseType: !160, size: 128, offset: 256)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "ns_lock", scope: !2370, file: !2371, line: 17, baseType: !122, size: 32, offset: 384)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2370, file: !2371, line: 18, baseType: !688, size: 64, offset: 448)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2370, file: !2371, line: 19, baseType: !692, size: 64, offset: 512)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2370, file: !2371, line: 20, baseType: !285, size: 64, offset: 576)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2370, file: !2371, line: 21, baseType: !117, size: 192, offset: 640)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2370, file: !2371, line: 22, baseType: !285, size: 64, offset: 832)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "mounts", scope: !2370, file: !2371, line: 23, baseType: !7, size: 32, offset: 896)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mounts", scope: !2370, file: !2371, line: 24, baseType: !7, size: 32, offset: 928)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2358, file: !2359, line: 36, baseType: !235, size: 64, offset: 256)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2358, file: !2359, line: 37, baseType: !2481, size: 64, offset: 320)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2359, line: 37, flags: DIFlagFwdDecl)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2358, file: !2359, line: 38, baseType: !2484, size: 64, offset: 384)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2359, line: 38, flags: DIFlagFwdDecl)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2358, file: !2359, line: 39, baseType: !2484, size: 64, offset: 448)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2358, file: !2359, line: 40, baseType: !2488, size: 64, offset: 512)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2359, line: 12, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1183, file: !1184, line: 1110, baseType: !2491, size: 64, offset: 15360)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2493, line: 93, size: 8768, elements: !2494)
!2493 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2494 = !{!2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2544, !2553, !2554, !2556, !2557, !2558, !2561, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2599, !2600, !2602, !2612, !2615, !2616, !2619, !2620, !2621, !2622, !2623, !2624}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2492, file: !2493, line: 94, baseType: !199, size: 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2492, file: !2493, line: 95, baseType: !112, size: 32, offset: 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2492, file: !2493, line: 96, baseType: !85, size: 32, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2492, file: !2493, line: 97, baseType: !85, size: 32, offset: 96)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2492, file: !2493, line: 98, baseType: !160, size: 128, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2492, file: !2493, line: 100, baseType: !117, size: 192, offset: 256)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2492, file: !2493, line: 103, baseType: !1182, size: 64, offset: 448)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2492, file: !2493, line: 106, baseType: !2503, size: 192, offset: 512)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !694, line: 32, size: 192, elements: !2504)
!2504 = !{!2505, !2506}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2503, file: !694, line: 33, baseType: !160, size: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2503, file: !694, line: 34, baseType: !2507, size: 64, offset: 128)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2508, line: 25, baseType: !2509)
!2508 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2508, line: 23, size: 64, elements: !2510)
!2510 = !{!2511}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2509, file: !2508, line: 24, baseType: !1421, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2492, file: !2493, line: 109, baseType: !207, size: 64, offset: 704)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2492, file: !2493, line: 112, baseType: !85, size: 32, offset: 768)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2492, file: !2493, line: 114, baseType: !85, size: 32, offset: 800)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2492, file: !2493, line: 115, baseType: !1182, size: 64, offset: 832)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2492, file: !2493, line: 118, baseType: !85, size: 32, offset: 896)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2492, file: !2493, line: 119, baseType: !7, size: 32, offset: 928)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2492, file: !2493, line: 121, baseType: !2519, size: 64, offset: 960)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2493, line: 80, size: 448, elements: !2521)
!2521 = !{!2522, !2523, !2529}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2520, file: !2493, line: 81, baseType: !112, size: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2520, file: !2493, line: 82, baseType: !2524, size: 128, offset: 64)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2493, line: 75, size: 128, elements: !2525)
!2525 = !{!2526, !2527}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2524, file: !2493, line: 76, baseType: !1182, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2524, file: !2493, line: 77, baseType: !2528, size: 64, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2520, file: !2493, line: 83, baseType: !1970, size: 256, offset: 192)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2492, file: !2493, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2492, file: !2493, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2492, file: !2493, line: 138, baseType: !7, size: 32, offset: 1056)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2492, file: !2493, line: 139, baseType: !160, size: 128, offset: 1088)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2492, file: !2493, line: 142, baseType: !1294, size: 512, offset: 1216)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2492, file: !2493, line: 143, baseType: !1302, size: 64, offset: 1728)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2492, file: !2493, line: 150, baseType: !2537, size: 256, offset: 1792)
!2537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2538, size: 256, elements: !2542)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2493, line: 38, size: 128, elements: !2539)
!2539 = !{!2540, !2541}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2538, file: !2493, line: 39, baseType: !285, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2538, file: !2493, line: 40, baseType: !285, size: 64, offset: 64)
!2542 = !{!2543}
!2543 = !DISubrange(count: 2)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2492, file: !2493, line: 156, baseType: !2545, size: 192, offset: 2048)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2493, line: 66, size: 192, elements: !2546)
!2546 = !{!2547}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2545, file: !2493, line: 67, baseType: !2548, size: 192)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2493, line: 47, size: 192, elements: !2549)
!2549 = !{!2550, !2551, !2552}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2548, file: !2493, line: 48, baseType: !449, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2548, file: !2493, line: 49, baseType: !449, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2548, file: !2493, line: 50, baseType: !449, size: 64, offset: 128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2492, file: !2493, line: 160, baseType: !2298, size: 640, offset: 2240)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2492, file: !2493, line: 163, baseType: !2555, size: 256, offset: 2880)
!2555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 256, elements: !216)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2492, file: !2493, line: 169, baseType: !195, size: 64, offset: 3136)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2492, file: !2493, line: 172, baseType: !85, size: 32, offset: 3200)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2492, file: !2493, line: 174, baseType: !2559, size: 64, offset: 3264)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2493, line: 174, flags: DIFlagFwdDecl)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2492, file: !2493, line: 185, baseType: !2562, size: 64, offset: 3328)
!2562 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !254, line: 860, baseType: !2563)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 853, size: 64, elements: !2564)
!2564 = !{!2565, !2566}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2563, file: !254, line: 858, baseType: !253, size: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2563, file: !254, line: 859, baseType: !122, size: 32, offset: 32)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2492, file: !2493, line: 186, baseType: !285, size: 64, offset: 3392)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2492, file: !2493, line: 186, baseType: !285, size: 64, offset: 3456)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2492, file: !2493, line: 186, baseType: !285, size: 64, offset: 3520)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2492, file: !2493, line: 186, baseType: !285, size: 64, offset: 3584)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2492, file: !2493, line: 187, baseType: !285, size: 64, offset: 3648)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2492, file: !2493, line: 188, baseType: !285, size: 64, offset: 3712)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2492, file: !2493, line: 189, baseType: !2286, size: 192, offset: 3776)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2492, file: !2493, line: 190, baseType: !102, size: 64, offset: 3968)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2492, file: !2493, line: 190, baseType: !102, size: 64, offset: 4032)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2492, file: !2493, line: 190, baseType: !102, size: 64, offset: 4096)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2492, file: !2493, line: 190, baseType: !102, size: 64, offset: 4160)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2492, file: !2493, line: 191, baseType: !102, size: 64, offset: 4224)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2492, file: !2493, line: 191, baseType: !102, size: 64, offset: 4288)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2492, file: !2493, line: 191, baseType: !102, size: 64, offset: 4352)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2492, file: !2493, line: 191, baseType: !102, size: 64, offset: 4416)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2492, file: !2493, line: 192, baseType: !102, size: 64, offset: 4480)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2492, file: !2493, line: 192, baseType: !102, size: 64, offset: 4544)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2492, file: !2493, line: 192, baseType: !102, size: 64, offset: 4608)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2492, file: !2493, line: 192, baseType: !102, size: 64, offset: 4672)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2492, file: !2493, line: 193, baseType: !102, size: 64, offset: 4736)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2492, file: !2493, line: 193, baseType: !102, size: 64, offset: 4800)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2492, file: !2493, line: 194, baseType: !2589, size: 448, offset: 4864)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2590, line: 12, size: 448, elements: !2591)
!2590 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2591 = !{!2592, !2593, !2594, !2595, !2596, !2597, !2598}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2589, file: !2590, line: 15, baseType: !285, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2589, file: !2590, line: 17, baseType: !285, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2589, file: !2590, line: 19, baseType: !285, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2589, file: !2590, line: 21, baseType: !285, size: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2589, file: !2590, line: 29, baseType: !285, size: 64, offset: 256)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2589, file: !2590, line: 35, baseType: !285, size: 64, offset: 320)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2589, file: !2590, line: 44, baseType: !285, size: 64, offset: 384)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2492, file: !2493, line: 202, baseType: !189, size: 64, offset: 5312)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2492, file: !2493, line: 213, baseType: !2601, size: 2048, offset: 5376)
!2601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2099, size: 2048, elements: !2321)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2492, file: !2493, line: 216, baseType: !2603, size: 448, offset: 7424)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2493, line: 30, size: 448, elements: !2604)
!2604 = !{!2605, !2606, !2607, !2608, !2609, !2610, !2611}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2603, file: !2493, line: 31, baseType: !85, size: 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2603, file: !2493, line: 32, baseType: !425, size: 64, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2603, file: !2493, line: 33, baseType: !102, size: 64, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2603, file: !2493, line: 34, baseType: !285, size: 64, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2603, file: !2493, line: 34, baseType: !285, size: 64, offset: 256)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2603, file: !2493, line: 35, baseType: !102, size: 64, offset: 320)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2603, file: !2493, line: 35, baseType: !102, size: 64, offset: 384)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2492, file: !2493, line: 219, baseType: !2613, size: 64, offset: 7872)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2493, line: 219, flags: DIFlagFwdDecl)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2492, file: !2493, line: 222, baseType: !7, size: 32, offset: 7936)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2492, file: !2493, line: 223, baseType: !2617, size: 64, offset: 8000)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2493, line: 223, flags: DIFlagFwdDecl)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2492, file: !2493, line: 230, baseType: !350, size: 8, offset: 8064)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2492, file: !2493, line: 231, baseType: !576, size: 16, offset: 8080)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2492, file: !2493, line: 232, baseType: !576, size: 16, offset: 8096)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2492, file: !2493, line: 234, baseType: !1470, size: 64, offset: 8128)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2492, file: !2493, line: 237, baseType: !455, size: 256, offset: 8192)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2492, file: !2493, line: 243, baseType: !550, size: 320, offset: 8448)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1183, file: !1184, line: 1111, baseType: !2626, size: 64, offset: 15424)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2493, line: 20, size: 16640, elements: !2628)
!2628 = !{!2629, !2630, !2631, !2632}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2627, file: !2493, line: 21, baseType: !122, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2627, file: !2493, line: 22, baseType: !199, size: 32, offset: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2627, file: !2493, line: 23, baseType: !117, size: 192, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2627, file: !2493, line: 24, baseType: !2633, size: 16384, offset: 256)
!2633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2634, size: 16384, elements: !2654)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !694, line: 51, size: 256, elements: !2635)
!2635 = !{!2636}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2634, file: !694, line: 52, baseType: !2637, size: 256)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !694, line: 37, size: 256, elements: !2638)
!2638 = !{!2639, !2646, !2647, !2653}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2637, file: !694, line: 39, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2641, line: 83, baseType: !2642)
!2641 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2641, line: 82, baseType: !2644)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{null, !85}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2637, file: !694, line: 40, baseType: !102, size: 64, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2637, file: !694, line: 46, baseType: !2648, size: 64, offset: 128)
!2648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2641, line: 86, baseType: !2649)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2641, line: 85, baseType: !2651)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{null}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2637, file: !694, line: 48, baseType: !2507, size: 64, offset: 192)
!2654 = !{!2655}
!2655 = !DISubrange(count: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1183, file: !1184, line: 1112, baseType: !2507, size: 64, offset: 15488)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1183, file: !1184, line: 1113, baseType: !2507, size: 64, offset: 15552)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1183, file: !1184, line: 1115, baseType: !2507, size: 64, offset: 15616)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1183, file: !1184, line: 1116, baseType: !2503, size: 192, offset: 15680)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1183, file: !1184, line: 1117, baseType: !102, size: 64, offset: 15872)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1183, file: !1184, line: 1118, baseType: !98, size: 64, offset: 15936)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1183, file: !1184, line: 1119, baseType: !7, size: 32, offset: 16000)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1183, file: !1184, line: 1121, baseType: !224, size: 64, offset: 16064)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1183, file: !1184, line: 1125, baseType: !2665, size: 64, offset: 16128)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1184, line: 43, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1183, file: !1184, line: 1127, baseType: !297, size: 32, offset: 16192)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1183, file: !1184, line: 1128, baseType: !7, size: 32, offset: 16224)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1183, file: !1184, line: 1130, baseType: !2670, size: 128, offset: 16256)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2671, line: 37, size: 128, elements: !2672)
!2671 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2672 = !{!2673, !2674, !2675}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2670, file: !2671, line: 38, baseType: !85, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2670, file: !2671, line: 39, baseType: !112, size: 32, offset: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2670, file: !2671, line: 40, baseType: !2676, size: 64, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2671, line: 24, flags: DIFlagFwdDecl)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1183, file: !1184, line: 1131, baseType: !2679, size: 256, offset: 16384)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2680, line: 12, size: 256, elements: !2681)
!2680 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2681 = !{!2682, !2683, !2684, !2685}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2679, file: !2680, line: 13, baseType: !356, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2679, file: !2680, line: 14, baseType: !102, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2679, file: !2680, line: 15, baseType: !102, size: 64, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2679, file: !2680, line: 16, baseType: !350, size: 8, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1183, file: !1184, line: 1134, baseType: !285, size: 64, offset: 16640)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1183, file: !1184, line: 1135, baseType: !285, size: 64, offset: 16704)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1183, file: !1184, line: 1138, baseType: !122, size: 32, offset: 16768)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1183, file: !1184, line: 1141, baseType: !460, size: 32, offset: 16800)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1183, file: !1184, line: 1143, baseType: !2691, size: 64, offset: 16832)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1184, line: 735, size: 64, elements: !2692)
!2692 = !{!2693}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2691, file: !1184, line: 736, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1183, file: !1184, line: 1147, baseType: !1353, size: 128, offset: 16896)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1183, file: !1184, line: 1149, baseType: !1182, size: 64, offset: 17024)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1183, file: !1184, line: 1151, baseType: !2698, size: 64, offset: 17088)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1184, line: 1151, flags: DIFlagFwdDecl)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1183, file: !1184, line: 1188, baseType: !83, size: 64, offset: 17152)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1183, file: !1184, line: 1191, baseType: !2702, size: 64, offset: 17216)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1184, line: 44, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1183, file: !1184, line: 1194, baseType: !2705, size: 64, offset: 17280)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1184, line: 45, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1183, file: !1184, line: 1197, baseType: !2708, size: 64, offset: 17344)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1184, line: 61, flags: DIFlagFwdDecl)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1183, file: !1184, line: 1199, baseType: !2711, size: 64, offset: 17408)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2713, line: 99, size: 128, elements: !2714)
!2713 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2714 = !{!2715, !2716, !2717}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2712, file: !2713, line: 100, baseType: !447, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2712, file: !2713, line: 101, baseType: !112, size: 32, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2712, file: !2713, line: 103, baseType: !89, size: 16, offset: 96)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1183, file: !1184, line: 1202, baseType: !2719, size: 64, offset: 17472)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1184, line: 48, flags: DIFlagFwdDecl)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1183, file: !1184, line: 1205, baseType: !102, size: 64, offset: 17536)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1183, file: !1184, line: 1206, baseType: !2723, size: 64, offset: 17600)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !694, line: 14, baseType: !2725)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !694, line: 12, size: 384, elements: !2726)
!2726 = !{!2727}
!2727 = !DIDerivedType(tag: DW_TAG_member, scope: !2725, file: !694, line: 13, baseType: !2728, size: 384)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2725, file: !694, line: 13, size: 384, elements: !2729)
!2729 = !{!2730, !2731, !2732, !2733}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2728, file: !694, line: 13, baseType: !85, size: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2728, file: !694, line: 13, baseType: !85, size: 32, offset: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2728, file: !694, line: 13, baseType: !85, size: 32, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2728, file: !694, line: 13, baseType: !2734, size: 256, offset: 128)
!2734 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2735, line: 37, size: 256, elements: !2736)
!2735 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2736 = !{!2737, !2742, !2755, !2761, !2770, !2797, !2802}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2734, file: !2735, line: 42, baseType: !2738, size: 64)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2734, file: !2735, line: 39, size: 64, elements: !2739)
!2739 = !{!2740, !2741}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2738, file: !2735, line: 40, baseType: !2262, size: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2738, file: !2735, line: 41, baseType: !303, size: 32, offset: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2734, file: !2735, line: 50, baseType: !2743, size: 192)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2734, file: !2735, line: 45, size: 192, elements: !2744)
!2744 = !{!2745, !2747, !2748, !2754}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2743, file: !2735, line: 46, baseType: !2746, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !100, line: 95, baseType: !85)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2743, file: !2735, line: 47, baseType: !85, size: 32, offset: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2743, file: !2735, line: 48, baseType: !2749, size: 64, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2735, line: 11, baseType: !2750)
!2750 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2735, line: 8, size: 64, elements: !2751)
!2751 = !{!2752, !2753}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2750, file: !2735, line: 9, baseType: !85, size: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2750, file: !2735, line: 10, baseType: !83, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2743, file: !2735, line: 49, baseType: !85, size: 32, offset: 128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2734, file: !2735, line: 57, baseType: !2756, size: 128)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2734, file: !2735, line: 53, size: 128, elements: !2757)
!2757 = !{!2758, !2759, !2760}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2756, file: !2735, line: 54, baseType: !2262, size: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2756, file: !2735, line: 55, baseType: !303, size: 32, offset: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2756, file: !2735, line: 56, baseType: !2749, size: 64, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2734, file: !2735, line: 66, baseType: !2762, size: 256)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2734, file: !2735, line: 60, size: 256, elements: !2763)
!2763 = !{!2764, !2765, !2766, !2767, !2769}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2762, file: !2735, line: 61, baseType: !2262, size: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2762, file: !2735, line: 62, baseType: !303, size: 32, offset: 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2762, file: !2735, line: 63, baseType: !85, size: 32, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2762, file: !2735, line: 64, baseType: !2768, size: 64, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !100, line: 94, baseType: !885)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2762, file: !2735, line: 65, baseType: !2768, size: 64, offset: 192)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2734, file: !2735, line: 105, baseType: !2771, size: 256)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2734, file: !2735, line: 69, size: 256, elements: !2772)
!2772 = !{!2773, !2774}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2771, file: !2735, line: 70, baseType: !83, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, scope: !2771, file: !2735, line: 79, baseType: !2775, size: 192, offset: 64)
!2775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2771, file: !2735, line: 79, size: 192, elements: !2776)
!2776 = !{!2777, !2778, !2779, !2786, !2791}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2775, file: !2735, line: 81, baseType: !85, size: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2775, file: !2735, line: 86, baseType: !576, size: 16)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2775, file: !2735, line: 92, baseType: !2780, size: 192)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2775, file: !2735, line: 88, size: 192, elements: !2781)
!2781 = !{!2782, !2784, !2785}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2780, file: !2735, line: 89, baseType: !2783, size: 64)
!2783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !1337)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2780, file: !2735, line: 90, baseType: !83, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2780, file: !2735, line: 91, baseType: !83, size: 64, offset: 128)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2775, file: !2735, line: 97, baseType: !2787, size: 96)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2775, file: !2735, line: 94, size: 96, elements: !2788)
!2788 = !{!2789, !2790}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2787, file: !2735, line: 95, baseType: !2783, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2787, file: !2735, line: 96, baseType: !282, size: 32, offset: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2775, file: !2735, line: 103, baseType: !2792, size: 128)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2775, file: !2735, line: 99, size: 128, elements: !2793)
!2793 = !{!2794, !2795, !2796}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2792, file: !2735, line: 100, baseType: !102, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2792, file: !2735, line: 101, baseType: !282, size: 32, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2792, file: !2735, line: 102, baseType: !282, size: 32, offset: 96)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2734, file: !2735, line: 111, baseType: !2798, size: 128)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2734, file: !2735, line: 108, size: 128, elements: !2799)
!2799 = !{!2800, !2801}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2798, file: !2735, line: 109, baseType: !425, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2798, file: !2735, line: 110, baseType: !85, size: 32, offset: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2734, file: !2735, line: 118, baseType: !2803, size: 128)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2734, file: !2735, line: 114, size: 128, elements: !2804)
!2804 = !{!2805, !2806, !2807}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2803, file: !2735, line: 115, baseType: !83, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2803, file: !2735, line: 116, baseType: !85, size: 32, offset: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2803, file: !2735, line: 117, baseType: !7, size: 32, offset: 96)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1183, file: !1184, line: 1208, baseType: !2589, size: 448, offset: 17664)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1183, file: !1184, line: 1215, baseType: !285, size: 64, offset: 18112)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1183, file: !1184, line: 1217, baseType: !285, size: 64, offset: 18176)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1183, file: !1184, line: 1219, baseType: !285, size: 64, offset: 18240)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1183, file: !1184, line: 1223, baseType: !2813, size: 64, offset: 18304)
!2813 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2814, line: 99, baseType: !2815)
!2814 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2814, line: 99, size: 64, elements: !2816)
!2816 = !{!2817}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2815, file: !2814, line: 99, baseType: !1421, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1183, file: !1184, line: 1225, baseType: !253, size: 32, offset: 18368)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1183, file: !1184, line: 1226, baseType: !85, size: 32, offset: 18400)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1183, file: !1184, line: 1227, baseType: !85, size: 32, offset: 18432)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1183, file: !1184, line: 1231, baseType: !2822, size: 64, offset: 18496)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1184, line: 1231, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1183, file: !1184, line: 1233, baseType: !160, size: 128, offset: 18560)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1183, file: !1184, line: 1240, baseType: !2826, size: 64, offset: 18688)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1184, line: 62, flags: DIFlagFwdDecl)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1183, file: !1184, line: 1242, baseType: !2829, size: 64, offset: 18752)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1184, line: 1242, flags: DIFlagFwdDecl)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1183, file: !1184, line: 1244, baseType: !160, size: 128, offset: 18816)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1183, file: !1184, line: 1245, baseType: !2833, size: 64, offset: 18944)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1184, line: 51, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1183, file: !1184, line: 1246, baseType: !455, size: 256, offset: 19008)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1183, file: !1184, line: 1247, baseType: !7, size: 32, offset: 19264)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1183, file: !1184, line: 1250, baseType: !2838, size: 64, offset: 19328)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1184, line: 57, flags: DIFlagFwdDecl)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1183, file: !1184, line: 1251, baseType: !455, size: 256, offset: 19392)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1183, file: !1184, line: 1252, baseType: !160, size: 128, offset: 19648)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1183, file: !1184, line: 1259, baseType: !2056, size: 64, offset: 19776)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1183, file: !1184, line: 1260, baseType: !576, size: 16, offset: 19840)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1183, file: !1184, line: 1261, baseType: !576, size: 16, offset: 19856)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1183, file: !1184, line: 1314, baseType: !2846, size: 64, offset: 19904)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2848, line: 62, size: 256, align: 256, elements: !2849)
!2848 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2849 = !{!2850, !2851, !2852, !2853, !2854, !2855, !2856}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2847, file: !2848, line: 75, baseType: !282, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2847, file: !2848, line: 90, baseType: !282, size: 32, offset: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2847, file: !2848, line: 112, baseType: !286, size: 64, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2847, file: !2848, line: 132, baseType: !282, size: 32, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2847, file: !2848, line: 140, baseType: !282, size: 32, offset: 160)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2847, file: !2848, line: 149, baseType: !282, size: 32, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2847, file: !2848, line: 154, baseType: !2857, offset: 224)
!2857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, elements: !237)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1183, file: !1184, line: 1315, baseType: !281, size: 32, offset: 19968)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1183, file: !1184, line: 1316, baseType: !281, size: 32, offset: 20000)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1183, file: !1184, line: 1321, baseType: !102, size: 64, offset: 20032)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1183, file: !1184, line: 1325, baseType: !85, size: 32, offset: 20096)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1183, file: !1184, line: 1326, baseType: !85, size: 32, offset: 20128)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1183, file: !1184, line: 1327, baseType: !85, size: 32, offset: 20160)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1183, file: !1184, line: 1328, baseType: !85, size: 32, offset: 20192)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1183, file: !1184, line: 1329, baseType: !221, size: 128, align: 64, offset: 20224)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1183, file: !1184, line: 1332, baseType: !2867, size: 128, offset: 20352)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2868, line: 51, size: 128, elements: !2869)
!2868 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2869 = !{!2870, !2875, !2876}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2867, file: !2868, line: 60, baseType: !2871, size: 64)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2872, line: 7, size: 64, elements: !2873)
!2872 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2873 = !{!2874}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2871, file: !2872, line: 12, baseType: !1418, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2867, file: !2868, line: 63, baseType: !350, size: 8, offset: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2867, file: !2868, line: 70, baseType: !350, size: 8, offset: 72)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1183, file: !1184, line: 1335, baseType: !2878, size: 64, offset: 20480)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1184, line: 59, flags: DIFlagFwdDecl)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1183, file: !1184, line: 1337, baseType: !2881, size: 128, offset: 20544)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2868, line: 39, size: 128, elements: !2882)
!2882 = !{!2883, !2884, !2885}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2881, file: !2868, line: 40, baseType: !1676, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2881, file: !2868, line: 42, baseType: !282, size: 32, offset: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2881, file: !2868, line: 43, baseType: !282, size: 32, offset: 96)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1183, file: !1184, line: 1340, baseType: !2887, size: 64, offset: 20672)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1184, line: 69, flags: DIFlagFwdDecl)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1183, file: !1184, line: 1351, baseType: !85, size: 32, offset: 20736)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1183, file: !1184, line: 1352, baseType: !85, size: 32, offset: 20768)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1183, file: !1184, line: 1354, baseType: !102, size: 64, offset: 20800)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1183, file: !1184, line: 1364, baseType: !285, size: 64, offset: 20864)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1183, file: !1184, line: 1365, baseType: !285, size: 64, offset: 20928)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1183, file: !1184, line: 1412, baseType: !102, size: 64, offset: 20992)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1183, file: !1184, line: 1453, baseType: !2896, size: 64, offset: 21056)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1184, line: 1453, flags: DIFlagFwdDecl)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1183, file: !1184, line: 1457, baseType: !2899, size: 64, offset: 21120)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !2901)
!2901 = !{!2902, !2903, !2922, !2925, !2926, !2959, !2969}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2900, file: !68, line: 62, baseType: !67, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, scope: !2900, file: !68, line: 64, baseType: !2904, size: 192, offset: 64)
!2904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2900, file: !68, line: 64, size: 192, elements: !2905)
!2905 = !{!2906, !2917}
!2906 = !DIDerivedType(tag: DW_TAG_member, scope: !2904, file: !68, line: 65, baseType: !2907, size: 192)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2904, file: !68, line: 65, size: 192, elements: !2908)
!2908 = !{!2909, !2916}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2907, file: !68, line: 66, baseType: !2910, size: 128)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2911, line: 50, size: 128, elements: !2912)
!2911 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2912 = !{!2913, !2914, !2915}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2910, file: !2911, line: 52, baseType: !102, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2910, file: !2911, line: 54, baseType: !7, size: 32, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2910, file: !2911, line: 55, baseType: !7, size: 32, offset: 96)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2907, file: !68, line: 67, baseType: !102, size: 64, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, scope: !2904, file: !68, line: 70, baseType: !2918, size: 192)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2904, file: !68, line: 70, size: 192, elements: !2919)
!2919 = !{!2920, !2921}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2918, file: !68, line: 71, baseType: !221, size: 128, align: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2918, file: !68, line: 72, baseType: !102, size: 64, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2900, file: !68, line: 76, baseType: !2923, size: 64, offset: 256)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2900, file: !68, line: 77, baseType: !102, size: 64, offset: 320)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2900, file: !68, line: 79, baseType: !2927, size: 64, offset: 384)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2911, line: 25, size: 256, elements: !2929)
!2929 = !{!2930, !2936, !2940}
!2930 = !DIDerivedType(tag: DW_TAG_member, scope: !2928, file: !2911, line: 26, baseType: !2931, size: 128)
!2931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2928, file: !2911, line: 26, size: 128, elements: !2932)
!2932 = !{!2933, !2935}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2931, file: !2911, line: 27, baseType: !2934, size: 128)
!2934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 128, elements: !2321)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2931, file: !2911, line: 28, baseType: !2934, size: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2928, file: !2911, line: 31, baseType: !2937, size: 64, offset: 128)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2939)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2911, line: 23, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, scope: !2928, file: !2911, line: 33, baseType: !2941, size: 64, offset: 192)
!2941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2928, file: !2911, line: 33, size: 64, elements: !2942)
!2942 = !{!2943, !2949, !2954}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2941, file: !2911, line: 38, baseType: !2944, size: 64)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2941, file: !2911, line: 34, size: 64, elements: !2945)
!2945 = !{!2946, !2947, !2948}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2944, file: !2911, line: 35, baseType: !535, size: 32)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2944, file: !2911, line: 36, baseType: !146, size: 8, offset: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2944, file: !2911, line: 37, baseType: !146, size: 8, offset: 40)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2941, file: !2911, line: 42, baseType: !2950, size: 16)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2941, file: !2911, line: 39, size: 16, elements: !2951)
!2951 = !{!2952, !2953}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2950, file: !2911, line: 40, baseType: !146, size: 8)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2950, file: !2911, line: 41, baseType: !146, size: 8, offset: 8)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2941, file: !2911, line: 46, baseType: !2955, size: 16)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2941, file: !2911, line: 43, size: 16, elements: !2956)
!2956 = !{!2957, !2958}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2955, file: !2911, line: 44, baseType: !146, size: 8)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2955, file: !2911, line: 45, baseType: !146, size: 8, offset: 8)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2900, file: !68, line: 81, baseType: !2960, size: 64, offset: 448)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !2962)
!2962 = !{!2963, !2964, !2965, !2966, !2967, !2968}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2961, file: !68, line: 86, baseType: !2923, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2961, file: !68, line: 87, baseType: !102, size: 64, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2961, file: !68, line: 88, baseType: !102, size: 64, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2961, file: !68, line: 89, baseType: !102, size: 64, offset: 192)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2961, file: !68, line: 90, baseType: !350, size: 8, offset: 256)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2961, file: !68, line: 92, baseType: !2960, size: 64, offset: 320)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2900, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1183, file: !1184, line: 1463, baseType: !2971, offset: 21184)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1184, line: 739, elements: !769)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1183, file: !1184, line: 1470, baseType: !221, size: 128, align: 64, offset: 21184)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1183, file: !1184, line: 1471, baseType: !199, size: 32, offset: 21312)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1183, file: !1184, line: 1472, baseType: !85, size: 32, offset: 21344)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1183, file: !1184, line: 1474, baseType: !1182, size: 64, offset: 21376)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1183, file: !1184, line: 1475, baseType: !2977, size: 320, offset: 21440)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2978, line: 11, size: 320, elements: !2979)
!2978 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2979 = !{!2980, !2981, !2982, !2987}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2977, file: !2978, line: 16, baseType: !211, size: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2977, file: !2978, line: 17, baseType: !102, size: 64, offset: 128)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2977, file: !2978, line: 18, baseType: !2983, size: 64, offset: 192)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{null, !2986}
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2977, file: !2978, line: 19, baseType: !281, size: 32, offset: 256)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1183, file: !1184, line: 1478, baseType: !2989, size: 64, offset: 21760)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1184, line: 1478, flags: DIFlagFwdDecl)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1183, file: !1184, line: 1482, baseType: !199, size: 32, offset: 21824)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1183, file: !1184, line: 1489, baseType: !83, size: 64, offset: 21888)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1183, file: !1184, line: 1504, baseType: !83, size: 64, offset: 21952)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1183, file: !1184, line: 1505, baseType: !286, size: 64, offset: 22016)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1183, file: !1184, line: 1506, baseType: !285, size: 64, offset: 22080)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1183, file: !1184, line: 1507, baseType: !286, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1183, file: !1184, line: 1508, baseType: !286, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1183, file: !1184, line: 1509, baseType: !286, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1183, file: !1184, line: 1510, baseType: !221, size: 128, align: 64, offset: 22208)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1183, file: !1184, line: 1511, baseType: !85, size: 32, offset: 22336)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1183, file: !1184, line: 1515, baseType: !3002, size: 64, offset: 22400)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !437, line: 56, size: 64, elements: !3003)
!3003 = !{!3004}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3002, file: !437, line: 57, baseType: !440, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1183, file: !1184, line: 1518, baseType: !3002, size: 64, offset: 22464)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1183, file: !1184, line: 1528, baseType: !221, size: 128, align: 64, offset: 22528)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1183, file: !1184, line: 1552, baseType: !3008, size: 35328, offset: 23040)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3009, line: 430, size: 35328, elements: !3010)
!3009 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3010 = !{!3011, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3040, !3041, !3042, !3043, !3044, !3045, !3048, !3049, !3050, !3051}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3008, file: !3009, line: 432, baseType: !3012, size: 192)
!3012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3013, size: 192, elements: !492)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3014, line: 16, size: 64, elements: !3015)
!3014 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3015 = !{!3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3013, file: !3014, line: 17, baseType: !156, size: 16)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3013, file: !3014, line: 18, baseType: !156, size: 16, offset: 16)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3013, file: !3014, line: 19, baseType: !156, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3013, file: !3014, line: 19, baseType: !156, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3013, file: !3014, line: 19, baseType: !156, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3013, file: !3014, line: 19, baseType: !156, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3013, file: !3014, line: 19, baseType: !156, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3013, file: !3014, line: 20, baseType: !156, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3013, file: !3014, line: 20, baseType: !156, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3013, file: !3014, line: 20, baseType: !156, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3013, file: !3014, line: 20, baseType: !156, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3013, file: !3014, line: 20, baseType: !156, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3013, file: !3014, line: 20, baseType: !156, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3008, file: !3009, line: 436, baseType: !102, size: 64, offset: 192)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3008, file: !3009, line: 440, baseType: !89, size: 16, offset: 256)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3008, file: !3009, line: 441, baseType: !89, size: 16, offset: 272)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3008, file: !3009, line: 442, baseType: !89, size: 16, offset: 288)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3008, file: !3009, line: 443, baseType: !89, size: 16, offset: 304)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3008, file: !3009, line: 447, baseType: !102, size: 64, offset: 320)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3008, file: !3009, line: 448, baseType: !102, size: 64, offset: 384)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3008, file: !3009, line: 459, baseType: !3037, size: 256, offset: 448)
!3037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3038, size: 256, elements: !216)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3009, line: 428, flags: DIFlagFwdDecl)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3008, file: !3009, line: 461, baseType: !102, size: 64, offset: 704)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3008, file: !3009, line: 463, baseType: !102, size: 64, offset: 768)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3008, file: !3009, line: 465, baseType: !102, size: 64, offset: 832)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3008, file: !3009, line: 466, baseType: !102, size: 64, offset: 896)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3008, file: !3009, line: 467, baseType: !102, size: 64, offset: 960)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3008, file: !3009, line: 473, baseType: !3046, size: 64, offset: 1024)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3009, line: 10, flags: DIFlagFwdDecl)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3008, file: !3009, line: 480, baseType: !102, size: 64, offset: 1088)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3008, file: !3009, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3008, file: !3009, line: 491, baseType: !281, size: 32, offset: 1184)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3008, file: !3009, line: 501, baseType: !3052, size: 33792, offset: 1536)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3053, line: 448, size: 33792, elements: !3054)
!3053 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3054 = !{!3055, !3056, !3057, !3221, !3222, !3228, !3229}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3052, file: !3053, line: 461, baseType: !7, size: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3052, file: !3053, line: 468, baseType: !102, size: 64, offset: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3052, file: !3053, line: 476, baseType: !3058, size: 64, offset: 128)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3053, line: 356, size: 33280, align: 512, elements: !3060)
!3060 = !{!3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3059, file: !3053, line: 358, baseType: !7, size: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3059, file: !3053, line: 361, baseType: !7, size: 32, offset: 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3059, file: !3053, line: 364, baseType: !285, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3059, file: !3053, line: 367, baseType: !285, size: 64, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3059, file: !3053, line: 370, baseType: !285, size: 64, offset: 192)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3059, file: !3053, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3059, file: !3053, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3059, file: !3053, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3059, file: !3053, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3059, file: !3053, line: 397, baseType: !3071, size: 32768, offset: 512)
!3071 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3053, line: 348, size: 32768, elements: !3072)
!3072 = !{!3073, !3088, !3127, !3204, !3217}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3071, file: !3053, line: 349, baseType: !3074, size: 896)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3053, line: 12, size: 896, elements: !3075)
!3075 = !{!3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3087}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3074, file: !3053, line: 13, baseType: !281, size: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3074, file: !3053, line: 14, baseType: !281, size: 32, offset: 32)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3074, file: !3053, line: 15, baseType: !281, size: 32, offset: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3074, file: !3053, line: 16, baseType: !281, size: 32, offset: 96)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3074, file: !3053, line: 17, baseType: !281, size: 32, offset: 128)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3074, file: !3053, line: 18, baseType: !281, size: 32, offset: 160)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3074, file: !3053, line: 19, baseType: !281, size: 32, offset: 192)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3074, file: !3053, line: 22, baseType: !3084, size: 640, offset: 224)
!3084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 640, elements: !3085)
!3085 = !{!3086}
!3086 = !DISubrange(count: 20)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3074, file: !3053, line: 25, baseType: !281, size: 32, offset: 864)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3071, file: !3053, line: 350, baseType: !3089, size: 4096, align: 128)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3053, line: 34, size: 4096, align: 128, elements: !3090)
!3090 = !{!3091, !3092, !3093, !3094, !3095, !3110, !3111, !3112, !3116, !3118, !3122}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3089, file: !3053, line: 35, baseType: !156, size: 16)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3089, file: !3053, line: 36, baseType: !156, size: 16, offset: 16)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3089, file: !3053, line: 37, baseType: !156, size: 16, offset: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3089, file: !3053, line: 38, baseType: !156, size: 16, offset: 48)
!3095 = !DIDerivedType(tag: DW_TAG_member, scope: !3089, file: !3053, line: 39, baseType: !3096, size: 128, offset: 64)
!3096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3089, file: !3053, line: 39, size: 128, elements: !3097)
!3097 = !{!3098, !3103}
!3098 = !DIDerivedType(tag: DW_TAG_member, scope: !3096, file: !3053, line: 40, baseType: !3099, size: 128)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3096, file: !3053, line: 40, size: 128, elements: !3100)
!3100 = !{!3101, !3102}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3099, file: !3053, line: 41, baseType: !285, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3099, file: !3053, line: 42, baseType: !285, size: 64, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, scope: !3096, file: !3053, line: 44, baseType: !3104, size: 128)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3096, file: !3053, line: 44, size: 128, elements: !3105)
!3105 = !{!3106, !3107, !3108, !3109}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3104, file: !3053, line: 45, baseType: !281, size: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3104, file: !3053, line: 46, baseType: !281, size: 32, offset: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3104, file: !3053, line: 47, baseType: !281, size: 32, offset: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3104, file: !3053, line: 48, baseType: !281, size: 32, offset: 96)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3089, file: !3053, line: 51, baseType: !281, size: 32, offset: 192)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3089, file: !3053, line: 52, baseType: !281, size: 32, offset: 224)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3089, file: !3053, line: 55, baseType: !3113, size: 1024, offset: 256)
!3113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 1024, elements: !3114)
!3114 = !{!3115}
!3115 = !DISubrange(count: 32)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3089, file: !3053, line: 58, baseType: !3117, size: 2048, offset: 1280)
!3117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 2048, elements: !2654)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3089, file: !3053, line: 60, baseType: !3119, size: 384, offset: 3328)
!3119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 384, elements: !3120)
!3120 = !{!3121}
!3121 = !DISubrange(count: 12)
!3122 = !DIDerivedType(tag: DW_TAG_member, scope: !3089, file: !3053, line: 62, baseType: !3123, size: 384, offset: 3712)
!3123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3089, file: !3053, line: 62, size: 384, elements: !3124)
!3124 = !{!3125, !3126}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3123, file: !3053, line: 63, baseType: !3119, size: 384)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3123, file: !3053, line: 64, baseType: !3119, size: 384)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3071, file: !3053, line: 351, baseType: !3128, size: 1088)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3053, line: 79, size: 1088, elements: !3129)
!3129 = !{!3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3203}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3128, file: !3053, line: 80, baseType: !281, size: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3128, file: !3053, line: 81, baseType: !281, size: 32, offset: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3128, file: !3053, line: 82, baseType: !281, size: 32, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3128, file: !3053, line: 83, baseType: !281, size: 32, offset: 96)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3128, file: !3053, line: 84, baseType: !281, size: 32, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3128, file: !3053, line: 85, baseType: !281, size: 32, offset: 160)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3128, file: !3053, line: 86, baseType: !281, size: 32, offset: 192)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3128, file: !3053, line: 88, baseType: !3084, size: 640, offset: 224)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3128, file: !3053, line: 89, baseType: !146, size: 8, offset: 864)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3128, file: !3053, line: 90, baseType: !146, size: 8, offset: 872)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3128, file: !3053, line: 91, baseType: !146, size: 8, offset: 880)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3128, file: !3053, line: 92, baseType: !146, size: 8, offset: 888)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3128, file: !3053, line: 93, baseType: !146, size: 8, offset: 896)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3128, file: !3053, line: 94, baseType: !146, size: 8, offset: 904)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3128, file: !3053, line: 95, baseType: !3145, size: 64, offset: 960)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3147, line: 11, size: 128, elements: !3148)
!3147 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3148 = !{!3149, !3150}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3146, file: !3147, line: 12, baseType: !425, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3146, file: !3147, line: 13, baseType: !3151, size: 64, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3153, line: 103, size: 1344, elements: !3154)
!3153 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3154 = !{!3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3183, !3184, !3185}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3152, file: !3153, line: 109, baseType: !102, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3152, file: !3153, line: 110, baseType: !102, size: 64, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3152, file: !3153, line: 111, baseType: !102, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3152, file: !3153, line: 112, baseType: !102, size: 64, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3152, file: !3153, line: 113, baseType: !102, size: 64, offset: 256)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3152, file: !3153, line: 114, baseType: !102, size: 64, offset: 320)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3152, file: !3153, line: 117, baseType: !102, size: 64, offset: 384)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3152, file: !3153, line: 118, baseType: !102, size: 64, offset: 448)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3152, file: !3153, line: 119, baseType: !102, size: 64, offset: 512)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3152, file: !3153, line: 120, baseType: !102, size: 64, offset: 576)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3152, file: !3153, line: 121, baseType: !102, size: 64, offset: 640)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3152, file: !3153, line: 122, baseType: !102, size: 64, offset: 704)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3152, file: !3153, line: 123, baseType: !102, size: 64, offset: 768)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3152, file: !3153, line: 124, baseType: !102, size: 64, offset: 832)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3152, file: !3153, line: 125, baseType: !102, size: 64, offset: 896)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3152, file: !3153, line: 139, baseType: !102, size: 64, offset: 960)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3152, file: !3153, line: 142, baseType: !102, size: 64, offset: 1024)
!3172 = !DIDerivedType(tag: DW_TAG_member, scope: !3152, file: !3153, line: 144, baseType: !3173, size: 64, offset: 1088)
!3173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3152, file: !3153, line: 144, size: 64, elements: !3174)
!3174 = !{!3175, !3176, !3177}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3173, file: !3153, line: 146, baseType: !156, size: 16)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3173, file: !3153, line: 148, baseType: !285, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3173, file: !3153, line: 150, baseType: !3178, size: 64)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3153, line: 59, size: 64, elements: !3179)
!3179 = !{!3180, !3181, !3182}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3178, file: !3153, line: 61, baseType: !285, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3178, file: !3153, line: 63, baseType: !285, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3178, file: !3153, line: 65, baseType: !285, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3152, file: !3153, line: 153, baseType: !102, size: 64, offset: 1152)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3152, file: !3153, line: 154, baseType: !102, size: 64, offset: 1216)
!3185 = !DIDerivedType(tag: DW_TAG_member, scope: !3152, file: !3153, line: 156, baseType: !3186, size: 64, offset: 1280)
!3186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3152, file: !3153, line: 156, size: 64, elements: !3187)
!3187 = !{!3188, !3189, !3190}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3186, file: !3153, line: 158, baseType: !156, size: 16)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3186, file: !3153, line: 160, baseType: !285, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3186, file: !3153, line: 162, baseType: !3191, size: 64)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3153, line: 69, size: 64, elements: !3192)
!3192 = !{!3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3191, file: !3153, line: 71, baseType: !285, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3191, file: !3153, line: 73, baseType: !285, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3191, file: !3153, line: 75, baseType: !285, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3191, file: !3153, line: 77, baseType: !285, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3191, file: !3153, line: 80, baseType: !285, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3191, file: !3153, line: 83, baseType: !285, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3191, file: !3153, line: 86, baseType: !285, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3191, file: !3153, line: 88, baseType: !285, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3191, file: !3153, line: 93, baseType: !285, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3191, file: !3153, line: 100, baseType: !285, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3128, file: !3053, line: 96, baseType: !281, size: 32, offset: 1024)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3071, file: !3053, line: 352, baseType: !3205, size: 4608, align: 512)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3053, line: 333, size: 4608, align: 512, elements: !3206)
!3206 = !{!3207, !3208, !3215}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3205, file: !3053, line: 334, baseType: !3089, size: 4096, align: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3205, file: !3053, line: 335, baseType: !3209, size: 512, offset: 4096)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3053, line: 312, size: 512, elements: !3210)
!3210 = !{!3211, !3212, !3213}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3209, file: !3053, line: 313, baseType: !285, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3209, file: !3053, line: 314, baseType: !285, size: 64, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3209, file: !3053, line: 315, baseType: !3214, size: 384, offset: 128)
!3214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 384, elements: !594)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3205, file: !3053, line: 336, baseType: !3216, offset: 4608)
!3216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, elements: !237)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3071, file: !3053, line: 353, baseType: !3218, size: 32768)
!3218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 32768, elements: !3219)
!3219 = !{!3220}
!3220 = !DISubrange(count: 4096)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3052, file: !3053, line: 484, baseType: !3058, size: 64, offset: 192)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3052, file: !3053, line: 491, baseType: !3223, size: 128, offset: 256)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3053, line: 404, size: 128, elements: !3224)
!3224 = !{!3225, !3226, !3227}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3223, file: !3053, line: 424, baseType: !285, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3223, file: !3053, line: 432, baseType: !7, size: 32, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3223, file: !3053, line: 440, baseType: !7, size: 32, offset: 96)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3052, file: !3053, line: 498, baseType: !3223, size: 128, offset: 384)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3052, file: !3053, line: 508, baseType: !3059, size: 33280, align: 512, offset: 512)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1164, file: !1165, line: 16, baseType: !117, size: 192, offset: 512)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1164, file: !1165, line: 17, baseType: !112, size: 32, offset: 704)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !729, file: !15, line: 1240, baseType: !83, size: 64, offset: 6912)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !729, file: !15, line: 1243, baseType: !281, size: 32, offset: 6976)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !729, file: !15, line: 1245, baseType: !422, size: 64, offset: 7040)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !729, file: !15, line: 1246, baseType: !422, size: 64, offset: 7104)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !729, file: !15, line: 1248, baseType: !282, size: 32, offset: 7168)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !729, file: !15, line: 1249, baseType: !2462, size: 64, offset: 7232)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !729, file: !15, line: 1252, baseType: !3239, size: 256, offset: 7296)
!3239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 256, elements: !3114)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !729, file: !15, line: 1253, baseType: !3241, size: 128, offset: 7552)
!3241 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3242, line: 21, baseType: !3243)
!3242 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3242, line: 19, size: 128, elements: !3244)
!3244 = !{!3245}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3243, file: !3242, line: 20, baseType: !3246, size: 128)
!3246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 128, elements: !2321)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !729, file: !15, line: 1255, baseType: !7, size: 32, offset: 7680)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !729, file: !15, line: 1261, baseType: !455, size: 256, offset: 7744)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !729, file: !15, line: 1267, baseType: !79, size: 64, offset: 8000)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !729, file: !15, line: 1269, baseType: !3251, size: 64, offset: 8064)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3253)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !249, line: 128, size: 1024, align: 512, elements: !3254)
!3254 = !{!3255, !3259, !3260, !3267, !3273, !3277, !3281, !3285, !3286, !3290, !3294, !3299, !3303}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3253, file: !249, line: 129, baseType: !3256, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!85, !247, !7}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3253, file: !249, line: 130, baseType: !3256, size: 64, offset: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3253, file: !249, line: 131, baseType: !3261, size: 64, offset: 128)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!85, !3264, !3266}
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3253, file: !249, line: 132, baseType: !3268, size: 64, offset: 192)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!85, !3264, !7, !79, !3271}
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3253, file: !249, line: 134, baseType: !3274, size: 64, offset: 256)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!85, !3264}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3253, file: !249, line: 135, baseType: !3278, size: 64, offset: 320)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!85, !247}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3253, file: !249, line: 136, baseType: !3282, size: 64, offset: 384)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{null, !247}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3253, file: !249, line: 137, baseType: !3282, size: 64, offset: 448)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3253, file: !249, line: 138, baseType: !3287, size: 64, offset: 512)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{null, !247, !291}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3253, file: !249, line: 139, baseType: !3291, size: 64, offset: 576)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!356, !247, !356, !85}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3253, file: !249, line: 140, baseType: !3295, size: 64, offset: 640)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!722, !3298}
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3253, file: !249, line: 141, baseType: !3300, size: 64, offset: 704)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!85, !1004, !350}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3253, file: !249, line: 142, baseType: !3304, size: 64, offset: 768)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!247, !247, !3307}
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !729, file: !15, line: 1271, baseType: !3310, size: 448, offset: 8128)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !943, line: 63, size: 448, elements: !3311)
!3311 = !{!3312, !3317, !3318, !3319, !3320, !3321, !3322}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3310, file: !943, line: 64, baseType: !3313, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!102, !3316, !941}
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3310, file: !943, line: 66, baseType: !3313, size: 64, offset: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3310, file: !943, line: 69, baseType: !425, size: 64, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3310, file: !943, line: 70, baseType: !85, size: 32, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3310, file: !943, line: 71, baseType: !7, size: 32, offset: 224)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3310, file: !943, line: 74, baseType: !160, size: 128, offset: 256)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3310, file: !943, line: 85, baseType: !3323, size: 64, offset: 384)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !729, file: !15, line: 1274, baseType: !447, size: 64, offset: 8576)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !729, file: !15, line: 1280, baseType: !447, size: 64, offset: 8640)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !729, file: !15, line: 1283, baseType: !85, size: 32, offset: 8704)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !729, file: !15, line: 1286, baseType: !1902, size: 32, offset: 8736)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !729, file: !15, line: 1289, baseType: !3329, size: 64, offset: 8768)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2164, line: 18, flags: DIFlagFwdDecl)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !729, file: !15, line: 1290, baseType: !207, size: 64, offset: 8832)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !729, file: !15, line: 1297, baseType: !688, size: 64, offset: 8896)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !729, file: !15, line: 1304, baseType: !3334, size: 64, offset: 8960)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3335, line: 49, size: 64, elements: !3336)
!3335 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3336 = !{!3337}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3334, file: !3335, line: 50, baseType: !3338, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3335, line: 41, size: 512, align: 512, elements: !3340)
!3340 = !{!3341, !3342, !3347}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3339, file: !3335, line: 43, baseType: !122, size: 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3339, file: !3335, line: 45, baseType: !3343, size: 192, offset: 64)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3335, line: 29, size: 192, elements: !3344)
!3344 = !{!3345, !3346}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3343, file: !3335, line: 30, baseType: !160, size: 128)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3343, file: !3335, line: 32, baseType: !425, size: 64, offset: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3339, file: !3335, line: 46, baseType: !425, size: 64, offset: 256)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !729, file: !15, line: 1305, baseType: !3334, size: 64, offset: 9024)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !729, file: !15, line: 1306, baseType: !221, size: 128, align: 64, offset: 9088)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !729, file: !15, line: 1307, baseType: !2163, size: 256, offset: 9216)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !729, file: !15, line: 1309, baseType: !455, size: 256, offset: 9472)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !729, file: !15, line: 1314, baseType: !85, size: 32, offset: 9728)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !729, file: !15, line: 1317, baseType: !122, size: 32, align: 512, offset: 10240)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !729, file: !15, line: 1318, baseType: !160, size: 128, offset: 10304)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !729, file: !15, line: 1320, baseType: !122, size: 32, offset: 10432)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !729, file: !15, line: 1321, baseType: !160, size: 128, offset: 10496)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !723, file: !724, line: 73, baseType: !85, size: 32, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !723, file: !724, line: 74, baseType: !343, size: 64, offset: 192)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !718, file: !719, line: 10, baseType: !247, size: 64, offset: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !430, file: !15, line: 1015, baseType: !291, size: 64, offset: 1344)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !430, file: !15, line: 1016, baseType: !3362, size: 64, offset: 1408)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3364)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !15, line: 1914, size: 2112, elements: !3365)
!3365 = !{!3366, !3367, !3371, !3375, !3379, !3380, !3381, !3387, !3400, !3415, !3419, !3420, !3424, !3425, !3429, !3434, !3435, !3439, !3443, !3449, !3450, !3454, !3455, !3459, !3463, !3464, !3469, !3473, !3477, !3481, !3485, !3486, !3492}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3364, file: !15, line: 1915, baseType: !761, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3364, file: !15, line: 1916, baseType: !3368, size: 64, offset: 64)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!104, !429, !104, !85}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3364, file: !15, line: 1917, baseType: !3372, size: 64, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!883, !429, !356, !98, !103}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3364, file: !15, line: 1918, baseType: !3376, size: 64, offset: 192)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!883, !429, !79, !98, !103}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3364, file: !15, line: 1919, baseType: !1836, size: 64, offset: 256)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3364, file: !15, line: 1920, baseType: !1836, size: 64, offset: 320)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3364, file: !15, line: 1921, baseType: !3382, size: 64, offset: 384)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!85, !1839, !3385, !7}
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !15, line: 53, flags: DIFlagFwdDecl)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3364, file: !15, line: 1923, baseType: !3388, size: 64, offset: 448)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!85, !429, !3391}
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !15, line: 1858, size: 128, elements: !3393)
!3393 = !{!3394, !3399}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3392, file: !15, line: 1859, baseType: !3395, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !15, line: 1855, baseType: !3396)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!350, !3391, !79, !85, !104, !285, !7}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3392, file: !15, line: 1860, baseType: !104, size: 64, offset: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3364, file: !15, line: 1924, baseType: !3401, size: 64, offset: 512)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!184, !429, !3404}
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3406, line: 37, size: 128, elements: !3407)
!3406 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!3407 = !{!3408, !3414}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3405, file: !3406, line: 38, baseType: !3409, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3406, line: 31, baseType: !3410)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{null, !429, !3413, !3404}
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3405, file: !3406, line: 39, baseType: !184, size: 32, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3364, file: !15, line: 1925, baseType: !3416, size: 64, offset: 576)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!425, !429, !7, !102}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3364, file: !15, line: 1926, baseType: !3416, size: 64, offset: 640)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3364, file: !15, line: 1927, baseType: !3421, size: 64, offset: 704)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!85, !429, !1569}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3364, file: !15, line: 1928, baseType: !102, size: 64, offset: 768)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3364, file: !15, line: 1929, baseType: !3426, size: 64, offset: 832)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!85, !291, !429}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3364, file: !15, line: 1930, baseType: !3430, size: 64, offset: 896)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!85, !429, !3433}
!3433 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !15, line: 1061, baseType: !83)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3364, file: !15, line: 1931, baseType: !3426, size: 64, offset: 960)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3364, file: !15, line: 1932, baseType: !3436, size: 64, offset: 1024)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!85, !429, !104, !104, !85}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3364, file: !15, line: 1933, baseType: !3440, size: 64, offset: 1088)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!85, !85, !429, !85}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3364, file: !15, line: 1934, baseType: !3444, size: 64, offset: 1152)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!85, !429, !85, !3447}
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !15, line: 1063, flags: DIFlagFwdDecl)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3364, file: !15, line: 1935, baseType: !1494, size: 64, offset: 1216)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3364, file: !15, line: 1936, baseType: !3451, size: 64, offset: 1280)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!85, !85}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3364, file: !15, line: 1937, baseType: !3444, size: 64, offset: 1344)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3364, file: !15, line: 1938, baseType: !3456, size: 64, offset: 1408)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!883, !2878, !429, !103, !98, !7}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3364, file: !15, line: 1939, baseType: !3460, size: 64, offset: 1472)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!883, !429, !103, !2878, !98, !7}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3364, file: !15, line: 1940, baseType: !1892, size: 64, offset: 1536)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3364, file: !15, line: 1941, baseType: !3465, size: 64, offset: 1600)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!85, !429, !85, !3468, !1813}
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3364, file: !15, line: 1942, baseType: !3470, size: 64, offset: 1664)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!425, !429, !85, !104, !104}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3364, file: !15, line: 1944, baseType: !3474, size: 64, offset: 1728)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{null, !838, !429}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3364, file: !15, line: 1948, baseType: !3478, size: 64, offset: 1792)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!883, !429, !104, !429, !104, !98, !7}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3364, file: !15, line: 1950, baseType: !3482, size: 64, offset: 1856)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!104, !429, !104, !429, !104, !104, !7}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3364, file: !15, line: 1953, baseType: !3436, size: 64, offset: 1920)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3364, file: !15, line: 1954, baseType: !3487, size: 64, offset: 1984)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!85, !3490, !7}
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !15, line: 1911, flags: DIFlagFwdDecl)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3364, file: !15, line: 1955, baseType: !3493, size: 64, offset: 2048)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!85, !3490, !3385, !7}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !430, file: !15, line: 1018, baseType: !285, size: 64, offset: 1472)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !430, file: !15, line: 1020, baseType: !83, size: 64, offset: 1536)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !430, file: !15, line: 1023, baseType: !83, size: 64, offset: 1600)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !430, file: !15, line: 1027, baseType: !3500, size: 64, offset: 1664)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !430, file: !15, line: 1029, baseType: !1698, size: 64, offset: 1728)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !430, file: !15, line: 1030, baseType: !1902, size: 32, offset: 1792)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !430, file: !15, line: 1031, baseType: !1902, size: 32, offset: 1824)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !320, file: !15, line: 1988, baseType: !3505, size: 64, offset: 896)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!85, !343, !1004, !3508, !281, !7}
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3510, line: 22, size: 1280, elements: !3511)
!3510 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3511 = !{!3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3509, file: !3510, line: 23, baseType: !281, size: 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3509, file: !3510, line: 24, baseType: !87, size: 16, offset: 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3509, file: !3510, line: 25, baseType: !7, size: 32, offset: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3509, file: !3510, line: 26, baseType: !572, size: 32, offset: 96)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3509, file: !3510, line: 27, baseType: !285, size: 64, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3509, file: !3510, line: 28, baseType: !285, size: 64, offset: 192)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3509, file: !3510, line: 41, baseType: !285, size: 64, offset: 256)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3509, file: !3510, line: 42, baseType: !382, size: 32, offset: 320)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3509, file: !3510, line: 43, baseType: !382, size: 32, offset: 352)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3509, file: !3510, line: 44, baseType: !297, size: 32, offset: 384)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3509, file: !3510, line: 45, baseType: !306, size: 32, offset: 416)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3509, file: !3510, line: 46, baseType: !104, size: 64, offset: 448)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3509, file: !3510, line: 47, baseType: !418, size: 128, offset: 512)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3509, file: !3510, line: 48, baseType: !418, size: 128, offset: 640)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3509, file: !3510, line: 49, baseType: !418, size: 128, offset: 768)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3509, file: !3510, line: 50, baseType: !418, size: 128, offset: 896)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3509, file: !3510, line: 51, baseType: !285, size: 64, offset: 1024)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3509, file: !3510, line: 52, baseType: !285, size: 64, offset: 1088)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3509, file: !3510, line: 53, baseType: !281, size: 32, offset: 1152)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3509, file: !3510, line: 54, baseType: !281, size: 32, offset: 1184)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3509, file: !3510, line: 55, baseType: !285, size: 64, offset: 1216)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !320, file: !15, line: 1990, baseType: !3534, size: 64, offset: 960)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!883, !247, !356, !98}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !320, file: !15, line: 1991, baseType: !3538, size: 64, offset: 1024)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!85, !291, !3541, !285, !285}
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !15, line: 55, flags: DIFlagFwdDecl)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !320, file: !15, line: 1993, baseType: !3544, size: 64, offset: 1088)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!85, !291, !85}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !320, file: !15, line: 1994, baseType: !3548, size: 64, offset: 1152)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!85, !291, !247, !429, !7, !87}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !320, file: !15, line: 1997, baseType: !3552, size: 64, offset: 1216)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!85, !343, !291, !429, !87}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !320, file: !15, line: 1999, baseType: !3556, size: 64, offset: 1280)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!314, !343, !247, !85}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !320, file: !15, line: 2001, baseType: !3560, size: 64, offset: 1344)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!85, !343, !247, !314, !85}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !320, file: !15, line: 2003, baseType: !3564, size: 64, offset: 1408)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!85, !343, !247, !3567}
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !15, line: 76, flags: DIFlagFwdDecl)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !320, file: !15, line: 2005, baseType: !3570, size: 64, offset: 1472)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!85, !247, !3567}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !320, file: !15, line: 2006, baseType: !3574, size: 64, offset: 1536)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!3577, !291}
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !15, line: 3192, size: 192, elements: !3579)
!3579 = !{!3580, !3581}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3578, file: !15, line: 3193, baseType: !1703, size: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3578, file: !15, line: 3194, baseType: !281, size: 32, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !292, file: !15, line: 655, baseType: !728, size: 64, offset: 448)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !292, file: !15, line: 656, baseType: !1698, size: 64, offset: 512)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !292, file: !15, line: 659, baseType: !83, size: 64, offset: 576)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !292, file: !15, line: 663, baseType: !102, size: 64, offset: 640)
!3586 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !15, line: 671, baseType: !3587, size: 32, offset: 704)
!3587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !15, line: 671, size: 32, elements: !3588)
!3588 = !{!3589, !3591}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3587, file: !15, line: 672, baseType: !3590, size: 32)
!3590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3587, file: !15, line: 673, baseType: !7, size: 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !292, file: !15, line: 675, baseType: !382, size: 32, offset: 736)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !292, file: !15, line: 676, baseType: !104, size: 64, offset: 768)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !292, file: !15, line: 677, baseType: !418, size: 128, offset: 832)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !292, file: !15, line: 678, baseType: !418, size: 128, offset: 960)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !292, file: !15, line: 679, baseType: !418, size: 128, offset: 1088)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !292, file: !15, line: 680, baseType: !122, size: 32, offset: 1216)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !292, file: !15, line: 681, baseType: !89, size: 16, offset: 1248)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !292, file: !15, line: 682, baseType: !146, size: 8, offset: 1264)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !292, file: !15, line: 683, baseType: !146, size: 8, offset: 1272)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !292, file: !15, line: 684, baseType: !1077, size: 64, offset: 1280)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !292, file: !15, line: 691, baseType: !102, size: 64, offset: 1344)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !292, file: !15, line: 692, baseType: !550, size: 320, offset: 1408)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !292, file: !15, line: 694, baseType: !102, size: 64, offset: 1728)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !292, file: !15, line: 695, baseType: !102, size: 64, offset: 1792)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !292, file: !15, line: 697, baseType: !211, size: 128, offset: 1856)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !292, file: !15, line: 698, baseType: !160, size: 128, offset: 1984)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !292, file: !15, line: 707, baseType: !160, size: 128, offset: 2112)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !292, file: !15, line: 708, baseType: !160, size: 128, offset: 2240)
!3610 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !15, line: 709, baseType: !3611, size: 128, offset: 2368)
!3611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !15, line: 709, size: 128, elements: !3612)
!3612 = !{!3613, !3614}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3611, file: !15, line: 710, baseType: !207, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3611, file: !15, line: 711, baseType: !221, size: 128, align: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !292, file: !15, line: 713, baseType: !449, size: 64, offset: 2496)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !292, file: !15, line: 714, baseType: !449, size: 64, offset: 2560)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !292, file: !15, line: 715, baseType: !112, size: 32, offset: 2624)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !292, file: !15, line: 716, baseType: !112, size: 32, offset: 2656)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !292, file: !15, line: 717, baseType: !112, size: 32, offset: 2688)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !292, file: !15, line: 719, baseType: !112, size: 32, offset: 2720)
!3621 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !15, line: 721, baseType: !3622, size: 64, offset: 2752)
!3622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !15, line: 721, size: 64, elements: !3623)
!3623 = !{!3624, !3625}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3622, file: !15, line: 722, baseType: !3362, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3622, file: !15, line: 723, baseType: !788, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !292, file: !15, line: 725, baseType: !3627, size: 64, offset: 2816)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !15, line: 725, flags: DIFlagFwdDecl)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !292, file: !15, line: 726, baseType: !1699, size: 1536, align: 64, offset: 2880)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !292, file: !15, line: 727, baseType: !160, size: 128, offset: 4416)
!3631 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !15, line: 728, baseType: !3632, size: 64, offset: 4544)
!3632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !15, line: 728, size: 64, elements: !3633)
!3633 = !{!3634, !3635, !3638, !3639}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3632, file: !15, line: 729, baseType: !2878, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3632, file: !15, line: 730, baseType: !3636, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !15, line: 730, flags: DIFlagFwdDecl)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3632, file: !15, line: 731, baseType: !356, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3632, file: !15, line: 732, baseType: !7, size: 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !292, file: !15, line: 735, baseType: !282, size: 32, offset: 4608)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !292, file: !15, line: 738, baseType: !282, size: 32, offset: 4640)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !292, file: !15, line: 739, baseType: !2462, size: 64, offset: 4672)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !292, file: !15, line: 750, baseType: !83, size: 64, offset: 4736)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !248, file: !249, line: 91, baseType: !3645, size: 256, offset: 448)
!3645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 256, elements: !3114)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !248, file: !249, line: 94, baseType: !3647, size: 64, offset: 704)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3648, line: 25, size: 64, elements: !3649)
!3648 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3649 = !{!3650}
!3650 = !DIDerivedType(tag: DW_TAG_member, scope: !3647, file: !3648, line: 26, baseType: !3651, size: 64)
!3651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3647, file: !3648, line: 26, size: 64, elements: !3652)
!3652 = !{!3653, !3654}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3651, file: !3648, line: 28, baseType: !286, size: 64, align: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, scope: !3651, file: !3648, line: 30, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3651, file: !3648, line: 30, size: 64, elements: !3656)
!3656 = !{!3657, !3658}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3655, file: !3648, line: 31, baseType: !122, size: 32)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3655, file: !3648, line: 32, baseType: !85, size: 32, offset: 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !248, file: !249, line: 95, baseType: !3251, size: 64, offset: 768)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !248, file: !249, line: 96, baseType: !728, size: 64, offset: 832)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !248, file: !249, line: 97, baseType: !102, size: 64, offset: 896)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !248, file: !249, line: 98, baseType: !83, size: 64, offset: 960)
!3663 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !249, line: 100, baseType: !3664, size: 128, offset: 1024)
!3664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !249, line: 100, size: 128, elements: !3665)
!3665 = !{!3666, !3667}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3664, file: !249, line: 101, baseType: !160, size: 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3664, file: !249, line: 102, baseType: !3413, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !248, file: !249, line: 104, baseType: !160, size: 128, offset: 1152)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !248, file: !249, line: 105, baseType: !160, size: 128, offset: 1280)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !248, file: !249, line: 113, baseType: !3671, size: 128, offset: 1408)
!3671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !249, line: 109, size: 128, elements: !3672)
!3672 = !{!3673, !3674, !3675}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3671, file: !249, line: 110, baseType: !211, size: 128)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3671, file: !249, line: 111, baseType: !263, size: 128)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3671, file: !249, line: 112, baseType: !221, size: 128, align: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !241, file: !192, line: 92, baseType: !3677, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!85, !838, !235, !195, !1182}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "lsm", scope: !241, file: !192, line: 95, baseType: !79, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "pde", scope: !191, file: !192, line: 102, baseType: !3682, size: 64, offset: 192)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !192, line: 30, size: 1408, elements: !3684)
!3684 = !{!3685, !3686, !3687, !3688, !3689, !3690, !3691, !3713, !3714, !3719, !3724, !3725, !3726, !3727, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3683, file: !192, line: 35, baseType: !112, size: 32)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3683, file: !192, line: 36, baseType: !199, size: 32, offset: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "pde_openers", scope: !3683, file: !192, line: 37, baseType: !160, size: 128, offset: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "pde_unload_lock", scope: !3683, file: !192, line: 39, baseType: !122, size: 32, offset: 192)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "pde_unload_completion", scope: !3683, file: !192, line: 40, baseType: !2278, size: 64, offset: 256)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "proc_iops", scope: !3683, file: !192, line: 41, baseType: !318, size: 64, offset: 320)
!3691 = !DIDerivedType(tag: DW_TAG_member, scope: !3683, file: !192, line: 42, baseType: !3692, size: 64, offset: 384)
!3692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3683, file: !192, line: 42, size: 64, elements: !3693)
!3693 = !{!3694, !3712}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "proc_ops", scope: !3692, file: !192, line: 43, baseType: !3695, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3697)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ops", file: !3698, line: 29, size: 768, elements: !3699)
!3698 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e8a31057d6ce7bcf5851cd096e4b3e8")
!3699 = !{!3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "proc_flags", scope: !3697, file: !3698, line: 30, baseType: !7, size: 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "proc_open", scope: !3697, file: !3698, line: 31, baseType: !3426, size: 64, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read", scope: !3697, file: !3698, line: 32, baseType: !3372, size: 64, offset: 128)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read_iter", scope: !3697, file: !3698, line: 33, baseType: !1836, size: 64, offset: 192)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "proc_write", scope: !3697, file: !3698, line: 34, baseType: !3376, size: 64, offset: 256)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "proc_lseek", scope: !3697, file: !3698, line: 36, baseType: !3368, size: 64, offset: 320)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "proc_release", scope: !3697, file: !3698, line: 37, baseType: !3426, size: 64, offset: 384)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "proc_poll", scope: !3697, file: !3698, line: 38, baseType: !3401, size: 64, offset: 448)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "proc_ioctl", scope: !3697, file: !3698, line: 39, baseType: !3416, size: 64, offset: 512)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "proc_compat_ioctl", scope: !3697, file: !3698, line: 41, baseType: !3416, size: 64, offset: 576)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "proc_mmap", scope: !3697, file: !3698, line: 43, baseType: !3421, size: 64, offset: 640)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "proc_get_unmapped_area", scope: !3697, file: !3698, line: 44, baseType: !1494, size: 64, offset: 704)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "proc_dir_ops", scope: !3692, file: !192, line: 44, baseType: !3362, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "proc_dops", scope: !3683, file: !192, line: 46, baseType: !3251, size: 64, offset: 448)
!3714 = !DIDerivedType(tag: DW_TAG_member, scope: !3683, file: !192, line: 47, baseType: !3715, size: 64, offset: 512)
!3715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3683, file: !192, line: 47, size: 64, elements: !3716)
!3716 = !{!3717, !3718}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "seq_ops", scope: !3715, file: !192, line: 48, baseType: !851, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "single_show", scope: !3715, file: !192, line: 49, baseType: !868, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3683, file: !192, line: 51, baseType: !3720, size: 64, offset: 576)
!3720 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_write_t", file: !3698, line: 77, baseType: !3721)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!85, !429, !356, !98}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3683, file: !192, line: 52, baseType: !83, size: 64, offset: 640)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "state_size", scope: !3683, file: !192, line: 53, baseType: !7, size: 32, offset: 704)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "low_ino", scope: !3683, file: !192, line: 54, baseType: !7, size: 32, offset: 736)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3683, file: !192, line: 55, baseType: !3728, size: 32, offset: 768)
!3728 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !88, line: 25, baseType: !281)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3683, file: !192, line: 56, baseType: !297, size: 32, offset: 800)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3683, file: !192, line: 57, baseType: !306, size: 32, offset: 832)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3683, file: !192, line: 58, baseType: !104, size: 64, offset: 896)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3683, file: !192, line: 59, baseType: !3682, size: 64, offset: 960)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "subdir", scope: !3683, file: !192, line: 60, baseType: !1356, size: 64, offset: 1024)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "subdir_node", scope: !3683, file: !192, line: 61, baseType: !542, size: 192, align: 64, offset: 1088)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3683, file: !192, line: 62, baseType: !356, size: 64, offset: 1280)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3683, file: !192, line: 63, baseType: !87, size: 16, offset: 1344)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3683, file: !192, line: 64, baseType: !146, size: 8, offset: 1360)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !3683, file: !192, line: 65, baseType: !146, size: 8, offset: 1368)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "inline_name", scope: !3683, file: !192, line: 66, baseType: !2857, offset: 1376)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl", scope: !191, file: !192, line: 103, baseType: !3741, size: 64, offset: 256)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !75, line: 173, size: 640, elements: !3743)
!3743 = !{!3744, !3756, !3757, !3758, !3789, !3790, !3792, !3798}
!3744 = !DIDerivedType(tag: DW_TAG_member, scope: !3742, file: !75, line: 174, baseType: !3745, size: 192)
!3745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3742, file: !75, line: 174, size: 192, elements: !3746)
!3746 = !{!3747, !3755}
!3747 = !DIDerivedType(tag: DW_TAG_member, scope: !3745, file: !75, line: 175, baseType: !3748, size: 192)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3745, file: !75, line: 175, size: 192, elements: !3749)
!3749 = !{!3750, !3751, !3752, !3753, !3754}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !3748, file: !75, line: 176, baseType: !96, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !3748, file: !75, line: 177, baseType: !85, size: 32, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3748, file: !75, line: 178, baseType: !85, size: 32, offset: 96)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3748, file: !75, line: 179, baseType: !85, size: 32, offset: 128)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !3748, file: !75, line: 180, baseType: !85, size: 32, offset: 160)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3745, file: !75, line: 182, baseType: !221, size: 128, align: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3742, file: !75, line: 184, baseType: !2278, size: 64, offset: 192)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !3742, file: !75, line: 185, baseType: !96, size: 64, offset: 256)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3742, file: !75, line: 186, baseType: !3759, size: 64, offset: 320)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !75, line: 204, size: 960, elements: !3761)
!3761 = !{!3762, !3775, !3779, !3785}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !3760, file: !75, line: 205, baseType: !3763, size: 768)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !75, line: 199, size: 768, elements: !3764)
!3764 = !{!3765, !3770}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !3763, file: !75, line: 200, baseType: !3766, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!85, !3769}
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3763, file: !75, line: 201, baseType: !3771, size: 704, offset: 64)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !75, line: 193, size: 704, elements: !3772)
!3772 = !{!3773, !3774}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3771, file: !75, line: 195, baseType: !3742, size: 640)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3771, file: !75, line: 196, baseType: !1356, size: 64, offset: 640)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !3760, file: !75, line: 206, baseType: !3776, size: 64, offset: 768)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!3769, !3759}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !3760, file: !75, line: 207, baseType: !3780, size: 64, offset: 832)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{null, !3741, !3783, !3784}
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !3760, file: !75, line: 209, baseType: !3786, size: 64, offset: 896)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!85, !3741, !96}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3742, file: !75, line: 187, baseType: !3769, size: 64, offset: 384)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3742, file: !75, line: 188, baseType: !3791, size: 64, offset: 448)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3742, file: !75, line: 189, baseType: !3793, size: 64, offset: 512)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !75, line: 157, size: 256, elements: !3795)
!3795 = !{!3796, !3797}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3794, file: !75, line: 158, baseType: !542, size: 192, align: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3794, file: !75, line: 159, baseType: !3741, size: 64, offset: 192)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !3742, file: !75, line: 190, baseType: !207, size: 64, offset: 576)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_entry", scope: !191, file: !192, line: 104, baseType: !96, size: 64, offset: 320)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_inodes", scope: !191, file: !192, line: 105, baseType: !211, size: 128, offset: 384)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ns_ops", scope: !191, file: !192, line: 106, baseType: !2379, size: 64, offset: 512)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "vfs_inode", scope: !191, file: !192, line: 107, baseType: !292, size: 4800, offset: 576)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !163)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3807)
!3807 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !343)
!3808 = !{!0, !3809, !3811, !3813, !3822, !3827, !3829, !3832, !3834, !3836, !3838, !3840, !3845, !3847, !3852, !3868, !3870, !3875, !3877, !3879, !3882, !3884, !3889, !3899, !3901, !3903, !3908, !3910, !3915, !3917, !3919, !3921, !3923, !3925}
!3809 = !DIGlobalVariableExpression(var: !3810, expr: !DIExpression())
!3810 = distinct !DIGlobalVariable(name: "proc_mountinfo_operations", scope: !2, file: !3, line: 333, type: !3363, isLocal: false, isDefinition: true)
!3811 = !DIGlobalVariableExpression(var: !3812, expr: !DIExpression())
!3812 = distinct !DIGlobalVariable(name: "proc_mountstats_operations", scope: !2, file: !3, line: 342, type: !3363, isLocal: false, isDefinition: true)
!3813 = !DIGlobalVariableExpression(var: !3814, expr: !DIExpression())
!3814 = distinct !DIGlobalVariable(name: "put_task_map", scope: !3815, file: !3816, line: 134, type: !3821, isLocal: true, isDefinition: true)
!3815 = distinct !DISubprogram(name: "put_task_struct", scope: !3816, file: !3816, line: 124, type: !3817, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3819)
!3816 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!3817 = !DISubroutineType(types: !3818)
!3818 = !{null, !1182}
!3819 = !{!3820}
!3820 = !DILocalVariable(name: "t", arg: 1, scope: !3815, file: !3816, line: 124, type: !1182)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !768, line: 211, elements: !769)
!3822 = !DIGlobalVariableExpression(var: !3823, expr: !DIExpression())
!3823 = distinct !DIGlobalVariable(scope: null, file: !3, line: 114, type: !3824, isLocal: true, isDefinition: true)
!3824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 40, elements: !3825)
!3825 = !{!3826}
!3826 = !DISubrange(count: 5)
!3827 = !DIGlobalVariableExpression(var: !3828, expr: !DIExpression())
!3828 = distinct !DIGlobalVariable(scope: null, file: !3, line: 118, type: !3824, isLocal: true, isDefinition: true)
!3829 = !DIGlobalVariableExpression(var: !3830, expr: !DIExpression())
!3830 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !3831, isLocal: true, isDefinition: true)
!3831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 32, elements: !216)
!3832 = !DIGlobalVariableExpression(var: !3833, expr: !DIExpression())
!3833 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !3831, isLocal: true, isDefinition: true)
!3834 = !DIGlobalVariableExpression(var: !3835, expr: !DIExpression())
!3835 = distinct !DIGlobalVariable(scope: null, file: !3, line: 130, type: !593, isLocal: true, isDefinition: true)
!3836 = !DIGlobalVariableExpression(var: !3837, expr: !DIExpression())
!3837 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !593, isLocal: true, isDefinition: true)
!3838 = !DIGlobalVariableExpression(var: !3839, expr: !DIExpression())
!3839 = distinct !DIGlobalVariable(scope: null, file: !3, line: 48, type: !593, isLocal: true, isDefinition: true)
!3840 = !DIGlobalVariableExpression(var: !3841, expr: !DIExpression())
!3841 = distinct !DIGlobalVariable(scope: null, file: !3, line: 49, type: !3842, isLocal: true, isDefinition: true)
!3842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 72, elements: !3843)
!3843 = !{!3844}
!3844 = !DISubrange(count: 9)
!3845 = !DIGlobalVariableExpression(var: !3846, expr: !DIExpression())
!3846 = distinct !DIGlobalVariable(scope: null, file: !3, line: 50, type: !593, isLocal: true, isDefinition: true)
!3847 = !DIGlobalVariableExpression(var: !3848, expr: !DIExpression())
!3848 = distinct !DIGlobalVariable(scope: null, file: !3, line: 51, type: !3849, isLocal: true, isDefinition: true)
!3849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 80, elements: !3850)
!3850 = !{!3851}
!3851 = !DISubrange(count: 10)
!3852 = !DIGlobalVariableExpression(var: !3853, expr: !DIExpression())
!3853 = distinct !DIGlobalVariable(name: "fs_opts", scope: !3854, file: !3, line: 47, type: !3867, isLocal: true, isDefinition: true)
!3854 = distinct !DISubprogram(name: "show_sb_opts", scope: !3, file: !3, line: 45, type: !3855, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3857)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!85, !838, !728}
!3857 = !{!3858, !3859, !3860}
!3858 = !DILocalVariable(name: "m", arg: 1, scope: !3854, file: !3, line: 45, type: !838)
!3859 = !DILocalVariable(name: "sb", arg: 2, scope: !3854, file: !3, line: 45, type: !728)
!3860 = !DILocalVariable(name: "fs_infop", scope: !3854, file: !3, line: 54, type: !3861)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3863)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_fs_opts", file: !3, line: 40, size: 128, elements: !3864)
!3864 = !{!3865, !3866}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !3863, file: !3, line: 41, baseType: !85, size: 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3863, file: !3, line: 42, baseType: !79, size: 64, offset: 64)
!3867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3862, size: 640, elements: !3825)
!3868 = !DIGlobalVariableExpression(var: !3869, expr: !DIExpression())
!3869 = distinct !DIGlobalVariable(scope: null, file: !3, line: 67, type: !2783, isLocal: true, isDefinition: true)
!3870 = !DIGlobalVariableExpression(var: !3871, expr: !DIExpression())
!3871 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !3872, isLocal: true, isDefinition: true)
!3872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 56, elements: !3873)
!3873 = !{!3874}
!3874 = !DISubrange(count: 7)
!3875 = !DIGlobalVariableExpression(var: !3876, expr: !DIExpression())
!3876 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !2783, isLocal: true, isDefinition: true)
!3877 = !DIGlobalVariableExpression(var: !3878, expr: !DIExpression())
!3878 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !3842, isLocal: true, isDefinition: true)
!3879 = !DIGlobalVariableExpression(var: !3880, expr: !DIExpression())
!3880 = distinct !DIGlobalVariable(scope: null, file: !3, line: 71, type: !3881, isLocal: true, isDefinition: true)
!3881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 96, elements: !3120)
!3882 = !DIGlobalVariableExpression(var: !3883, expr: !DIExpression())
!3883 = distinct !DIGlobalVariable(scope: null, file: !3, line: 72, type: !3849, isLocal: true, isDefinition: true)
!3884 = !DIGlobalVariableExpression(var: !3885, expr: !DIExpression())
!3885 = distinct !DIGlobalVariable(scope: null, file: !3, line: 73, type: !3886, isLocal: true, isDefinition: true)
!3886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 104, elements: !3887)
!3887 = !{!3888}
!3888 = !DISubrange(count: 13)
!3889 = !DIGlobalVariableExpression(var: !3890, expr: !DIExpression())
!3890 = distinct !DIGlobalVariable(name: "mnt_opts", scope: !3891, file: !3, line: 66, type: !3898, isLocal: true, isDefinition: true)
!3891 = distinct !DISubprogram(name: "show_mnt_opts", scope: !3, file: !3, line: 64, type: !3892, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3894)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{null, !838, !722}
!3894 = !{!3895, !3896, !3897}
!3895 = !DILocalVariable(name: "m", arg: 1, scope: !3891, file: !3, line: 64, type: !838)
!3896 = !DILocalVariable(name: "mnt", arg: 2, scope: !3891, file: !3, line: 64, type: !722)
!3897 = !DILocalVariable(name: "fs_infop", scope: !3891, file: !3, line: 76, type: !3861)
!3898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3862, size: 1024, elements: !1337)
!3899 = !DIGlobalVariableExpression(var: !3900, expr: !DIExpression())
!3900 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !3849, isLocal: true, isDefinition: true)
!3901 = !DIGlobalVariableExpression(var: !3902, expr: !DIExpression())
!3902 = distinct !DIGlobalVariable(scope: null, file: !3, line: 143, type: !3886, isLocal: true, isDefinition: true)
!3903 = !DIGlobalVariableExpression(var: !3904, expr: !DIExpression())
!3904 = distinct !DIGlobalVariable(scope: null, file: !3, line: 164, type: !3905, isLocal: true, isDefinition: true)
!3905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 88, elements: !3906)
!3906 = !{!3907}
!3907 = !DISubrange(count: 11)
!3908 = !DIGlobalVariableExpression(var: !3909, expr: !DIExpression())
!3909 = distinct !DIGlobalVariable(scope: null, file: !3, line: 168, type: !3905, isLocal: true, isDefinition: true)
!3910 = !DIGlobalVariableExpression(var: !3911, expr: !DIExpression())
!3911 = distinct !DIGlobalVariable(scope: null, file: !3, line: 170, type: !3912, isLocal: true, isDefinition: true)
!3912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 152, elements: !3913)
!3913 = !{!3914}
!3914 = !DISubrange(count: 19)
!3915 = !DIGlobalVariableExpression(var: !3916, expr: !DIExpression())
!3916 = distinct !DIGlobalVariable(scope: null, file: !3, line: 173, type: !3881, isLocal: true, isDefinition: true)
!3917 = !DIGlobalVariableExpression(var: !3918, expr: !DIExpression())
!3918 = distinct !DIGlobalVariable(scope: null, file: !3, line: 176, type: !3831, isLocal: true, isDefinition: true)
!3919 = !DIGlobalVariableExpression(var: !3920, expr: !DIExpression())
!3920 = distinct !DIGlobalVariable(scope: null, file: !3, line: 207, type: !2783, isLocal: true, isDefinition: true)
!3921 = !DIGlobalVariableExpression(var: !3922, expr: !DIExpression())
!3922 = distinct !DIGlobalVariable(scope: null, file: !3, line: 216, type: !3849, isLocal: true, isDefinition: true)
!3923 = !DIGlobalVariableExpression(var: !3924, expr: !DIExpression())
!3924 = distinct !DIGlobalVariable(scope: null, file: !3, line: 220, type: !3886, isLocal: true, isDefinition: true)
!3925 = !DIGlobalVariableExpression(var: !3926, expr: !DIExpression())
!3926 = distinct !DIGlobalVariable(scope: null, file: !3, line: 228, type: !3886, isLocal: true, isDefinition: true)
!3927 = !{i32 7, !"Dwarf Version", i32 5}
!3928 = !{i32 2, !"Debug Info Version", i32 3}
!3929 = !{i32 1, !"wchar_size", i32 2}
!3930 = !{i32 8, !"cf-protection-branch", i32 1}
!3931 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3932 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3933 = !{i32 1, !"Code Model", i32 2}
!3934 = !{i32 1, !"override-stack-alignment", i32 8}
!3935 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3936 = distinct !DISubprogram(name: "mounts_poll", scope: !3, file: !3, line: 21, type: !3937, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3941)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!184, !429, !3939}
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !3406, line: 40, baseType: !3405)
!3941 = !{!3942, !3943, !3944, !3945, !3956, !3957, !3958}
!3942 = !DILocalVariable(name: "file", arg: 1, scope: !3936, file: !3, line: 21, type: !429)
!3943 = !DILocalVariable(name: "wait", arg: 2, scope: !3936, file: !3, line: 21, type: !3939)
!3944 = !DILocalVariable(name: "m", scope: !3936, file: !3, line: 23, type: !838)
!3945 = !DILocalVariable(name: "p", scope: !3936, file: !3, line: 24, type: !3946)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_mounts", file: !2371, line: 126, size: 2816, elements: !3948)
!3948 = !{!3949, !3950, !3951, !3955}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3947, file: !2371, line: 127, baseType: !2369, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3947, file: !2371, line: 128, baseType: !718, size: 128, offset: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3947, file: !2371, line: 129, baseType: !3952, size: 64, offset: 192)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!85, !838, !722}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !3947, file: !2371, line: 130, baseType: !2419, size: 2560, offset: 256)
!3956 = !DILocalVariable(name: "ns", scope: !3936, file: !3, line: 25, type: !2369)
!3957 = !DILocalVariable(name: "res", scope: !3936, file: !3, line: 26, type: !184)
!3958 = !DILocalVariable(name: "event", scope: !3936, file: !3, line: 27, type: !85)
!3959 = !DILocation(line: 21, column: 42, scope: !3936)
!3960 = !DILocation(line: 21, column: 60, scope: !3936)
!3961 = !DILocation(line: 23, column: 2, scope: !3936)
!3962 = !DILocation(line: 23, column: 19, scope: !3936)
!3963 = !DILocation(line: 23, column: 23, scope: !3936)
!3964 = !DILocation(line: 23, column: 29, scope: !3936)
!3965 = !DILocation(line: 24, column: 2, scope: !3936)
!3966 = !DILocation(line: 24, column: 22, scope: !3936)
!3967 = !DILocation(line: 24, column: 26, scope: !3936)
!3968 = !DILocation(line: 24, column: 29, scope: !3936)
!3969 = !DILocation(line: 25, column: 2, scope: !3936)
!3970 = !DILocation(line: 25, column: 24, scope: !3936)
!3971 = !DILocation(line: 25, column: 29, scope: !3936)
!3972 = !DILocation(line: 25, column: 32, scope: !3936)
!3973 = !DILocation(line: 26, column: 2, scope: !3936)
!3974 = !DILocation(line: 26, column: 11, scope: !3936)
!3975 = !DILocation(line: 27, column: 2, scope: !3936)
!3976 = !DILocation(line: 27, column: 6, scope: !3936)
!3977 = !DILocation(line: 29, column: 12, scope: !3936)
!3978 = !DILocation(line: 29, column: 19, scope: !3936)
!3979 = !DILocation(line: 29, column: 22, scope: !3936)
!3980 = !DILocation(line: 29, column: 26, scope: !3936)
!3981 = !DILocation(line: 29, column: 32, scope: !3936)
!3982 = !DILocation(line: 29, column: 2, scope: !3936)
!3983 = !DILocation(line: 31, column: 10, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3936, file: !3, line: 31, column: 10)
!3985 = !DILocation(line: 31, column: 10, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 31, column: 10)
!3987 = !DILocation(line: 31, column: 10, scope: !3936)
!3988 = !DILocation(line: 31, column: 8, scope: !3936)
!3989 = !DILocation(line: 32, column: 6, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3936, file: !3, line: 32, column: 6)
!3991 = !DILocation(line: 32, column: 9, scope: !3990)
!3992 = !DILocation(line: 32, column: 23, scope: !3990)
!3993 = !DILocation(line: 32, column: 20, scope: !3990)
!3994 = !DILocation(line: 32, column: 6, scope: !3936)
!3995 = !DILocation(line: 33, column: 19, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 32, column: 30)
!3997 = !DILocation(line: 33, column: 3, scope: !3996)
!3998 = !DILocation(line: 33, column: 6, scope: !3996)
!3999 = !DILocation(line: 33, column: 17, scope: !3996)
!4000 = !DILocation(line: 34, column: 7, scope: !3996)
!4001 = !DILocation(line: 35, column: 2, scope: !3996)
!4002 = !DILocation(line: 37, column: 9, scope: !3936)
!4003 = !DILocation(line: 38, column: 1, scope: !3936)
!4004 = !DILocation(line: 37, column: 2, scope: !3936)
!4005 = distinct !DISubprogram(name: "mounts_open", scope: !3, file: !3, line: 309, type: !3427, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4006)
!4006 = !{!4007, !4008}
!4007 = !DILocalVariable(name: "inode", arg: 1, scope: !4005, file: !3, line: 309, type: !291)
!4008 = !DILocalVariable(name: "file", arg: 2, scope: !4005, file: !3, line: 309, type: !429)
!4009 = !DILocation(line: 309, column: 38, scope: !4005)
!4010 = !DILocation(line: 309, column: 58, scope: !4005)
!4011 = !DILocation(line: 311, column: 28, scope: !4005)
!4012 = !DILocation(line: 311, column: 35, scope: !4005)
!4013 = !DILocation(line: 311, column: 9, scope: !4005)
!4014 = !DILocation(line: 311, column: 2, scope: !4005)
!4015 = distinct !DISubprogram(name: "mounts_release", scope: !3, file: !3, line: 299, type: !3427, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4016)
!4016 = !{!4017, !4018, !4019, !4020}
!4017 = !DILocalVariable(name: "inode", arg: 1, scope: !4015, file: !3, line: 299, type: !291)
!4018 = !DILocalVariable(name: "file", arg: 2, scope: !4015, file: !3, line: 299, type: !429)
!4019 = !DILocalVariable(name: "m", scope: !4015, file: !3, line: 301, type: !838)
!4020 = !DILocalVariable(name: "p", scope: !4015, file: !3, line: 302, type: !3946)
!4021 = !DILocation(line: 299, column: 41, scope: !4015)
!4022 = !DILocation(line: 299, column: 61, scope: !4015)
!4023 = !DILocation(line: 301, column: 2, scope: !4015)
!4024 = !DILocation(line: 301, column: 19, scope: !4015)
!4025 = !DILocation(line: 301, column: 23, scope: !4015)
!4026 = !DILocation(line: 301, column: 29, scope: !4015)
!4027 = !DILocation(line: 302, column: 2, scope: !4015)
!4028 = !DILocation(line: 302, column: 22, scope: !4015)
!4029 = !DILocation(line: 302, column: 26, scope: !4015)
!4030 = !DILocation(line: 302, column: 29, scope: !4015)
!4031 = !DILocation(line: 303, column: 12, scope: !4015)
!4032 = !DILocation(line: 303, column: 15, scope: !4015)
!4033 = !DILocation(line: 303, column: 2, scope: !4015)
!4034 = !DILocation(line: 304, column: 17, scope: !4015)
!4035 = !DILocation(line: 304, column: 20, scope: !4015)
!4036 = !DILocation(line: 304, column: 25, scope: !4015)
!4037 = !DILocation(line: 304, column: 28, scope: !4015)
!4038 = !DILocation(line: 304, column: 2, scope: !4015)
!4039 = !DILocation(line: 305, column: 13, scope: !4015)
!4040 = !DILocation(line: 305, column: 16, scope: !4015)
!4041 = !DILocation(line: 305, column: 2, scope: !4015)
!4042 = !DILocation(line: 306, column: 29, scope: !4015)
!4043 = !DILocation(line: 306, column: 36, scope: !4015)
!4044 = !DILocation(line: 306, column: 9, scope: !4015)
!4045 = !DILocation(line: 307, column: 1, scope: !4015)
!4046 = !DILocation(line: 306, column: 2, scope: !4015)
!4047 = distinct !DISubprogram(name: "mountinfo_open", scope: !3, file: !3, line: 314, type: !3427, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4048)
!4048 = !{!4049, !4050}
!4049 = !DILocalVariable(name: "inode", arg: 1, scope: !4047, file: !3, line: 314, type: !291)
!4050 = !DILocalVariable(name: "file", arg: 2, scope: !4047, file: !3, line: 314, type: !429)
!4051 = !DILocation(line: 314, column: 41, scope: !4047)
!4052 = !DILocation(line: 314, column: 61, scope: !4047)
!4053 = !DILocation(line: 316, column: 28, scope: !4047)
!4054 = !DILocation(line: 316, column: 35, scope: !4047)
!4055 = !DILocation(line: 316, column: 9, scope: !4047)
!4056 = !DILocation(line: 316, column: 2, scope: !4047)
!4057 = distinct !DISubprogram(name: "mountstats_open", scope: !3, file: !3, line: 319, type: !3427, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4058)
!4058 = !{!4059, !4060}
!4059 = !DILocalVariable(name: "inode", arg: 1, scope: !4057, file: !3, line: 319, type: !291)
!4060 = !DILocalVariable(name: "file", arg: 2, scope: !4057, file: !3, line: 319, type: !429)
!4061 = !DILocation(line: 319, column: 42, scope: !4057)
!4062 = !DILocation(line: 319, column: 62, scope: !4057)
!4063 = !DILocation(line: 321, column: 28, scope: !4057)
!4064 = !DILocation(line: 321, column: 35, scope: !4057)
!4065 = !DILocation(line: 321, column: 9, scope: !4057)
!4066 = !DILocation(line: 321, column: 2, scope: !4057)
!4067 = distinct !DISubprogram(name: "poll_wait", scope: !3406, file: !3406, line: 42, type: !4068, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4070)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{null, !429, !3413, !3939}
!4070 = !{!4071, !4072, !4073}
!4071 = !DILocalVariable(name: "filp", arg: 1, scope: !4067, file: !3406, line: 42, type: !429)
!4072 = !DILocalVariable(name: "wait_address", arg: 2, scope: !4067, file: !3406, line: 42, type: !3413)
!4073 = !DILocalVariable(name: "p", arg: 3, scope: !4067, file: !3406, line: 42, type: !3939)
!4074 = !DILocation(line: 42, column: 44, scope: !4067)
!4075 = !DILocation(line: 42, column: 70, scope: !4067)
!4076 = !DILocation(line: 42, column: 96, scope: !4067)
!4077 = !DILocation(line: 44, column: 6, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4067, file: !3406, line: 44, column: 6)
!4079 = !DILocation(line: 44, column: 8, scope: !4078)
!4080 = !DILocation(line: 44, column: 11, scope: !4078)
!4081 = !DILocation(line: 44, column: 14, scope: !4078)
!4082 = !DILocation(line: 44, column: 21, scope: !4078)
!4083 = !DILocation(line: 44, column: 24, scope: !4078)
!4084 = !DILocation(line: 44, column: 6, scope: !4067)
!4085 = !DILocation(line: 45, column: 3, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4078, file: !3406, line: 44, column: 38)
!4087 = !DILocation(line: 45, column: 6, scope: !4086)
!4088 = !DILocation(line: 45, column: 13, scope: !4086)
!4089 = !DILocation(line: 45, column: 19, scope: !4086)
!4090 = !DILocation(line: 45, column: 33, scope: !4086)
!4091 = !DILocation(line: 52, column: 3, scope: !4086)
!4092 = !DILocation(line: 52, column: 3, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4086, file: !3406, line: 52, column: 3)
!4094 = !DILocation(line: 52, column: 3, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4093, file: !3406, line: 52, column: 3)
!4096 = !{i64 2154051291}
!4097 = !DILocation(line: 53, column: 2, scope: !4086)
!4098 = !DILocation(line: 54, column: 1, scope: !4067)
!4099 = distinct !DISubprogram(name: "mounts_open_common", scope: !3, file: !3, line: 242, type: !4100, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4102)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!85, !291, !429, !3952}
!4102 = !{!4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115}
!4103 = !DILocalVariable(name: "inode", arg: 1, scope: !4099, file: !3, line: 242, type: !291)
!4104 = !DILocalVariable(name: "file", arg: 2, scope: !4099, file: !3, line: 242, type: !429)
!4105 = !DILocalVariable(name: "show", arg: 3, scope: !4099, file: !3, line: 243, type: !3952)
!4106 = !DILocalVariable(name: "task", scope: !4099, file: !3, line: 245, type: !1182)
!4107 = !DILocalVariable(name: "nsp", scope: !4099, file: !3, line: 246, type: !2357)
!4108 = !DILocalVariable(name: "ns", scope: !4099, file: !3, line: 247, type: !2369)
!4109 = !DILocalVariable(name: "root", scope: !4099, file: !3, line: 248, type: !718)
!4110 = !DILocalVariable(name: "p", scope: !4099, file: !3, line: 249, type: !3946)
!4111 = !DILocalVariable(name: "m", scope: !4099, file: !3, line: 250, type: !838)
!4112 = !DILocalVariable(name: "ret", scope: !4099, file: !3, line: 251, type: !85)
!4113 = !DILabel(scope: !4099, name: "err_put_path", file: !3, line: 291)
!4114 = !DILabel(scope: !4099, name: "err_put_ns", file: !3, line: 293)
!4115 = !DILabel(scope: !4099, name: "err", file: !3, line: 295)
!4116 = !DILocation(line: 242, column: 45, scope: !4099)
!4117 = !DILocation(line: 242, column: 65, scope: !4099)
!4118 = !DILocation(line: 243, column: 16, scope: !4099)
!4119 = !DILocation(line: 245, column: 2, scope: !4099)
!4120 = !DILocation(line: 245, column: 22, scope: !4099)
!4121 = !DILocation(line: 245, column: 43, scope: !4099)
!4122 = !DILocation(line: 245, column: 29, scope: !4099)
!4123 = !DILocation(line: 246, column: 2, scope: !4099)
!4124 = !DILocation(line: 246, column: 18, scope: !4099)
!4125 = !DILocation(line: 247, column: 2, scope: !4099)
!4126 = !DILocation(line: 247, column: 24, scope: !4099)
!4127 = !DILocation(line: 248, column: 2, scope: !4099)
!4128 = !DILocation(line: 248, column: 14, scope: !4099)
!4129 = !DILocation(line: 249, column: 2, scope: !4099)
!4130 = !DILocation(line: 249, column: 22, scope: !4099)
!4131 = !DILocation(line: 250, column: 2, scope: !4099)
!4132 = !DILocation(line: 250, column: 19, scope: !4099)
!4133 = !DILocation(line: 251, column: 2, scope: !4099)
!4134 = !DILocation(line: 251, column: 6, scope: !4099)
!4135 = !DILocation(line: 253, column: 7, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 253, column: 6)
!4137 = !DILocation(line: 253, column: 6, scope: !4099)
!4138 = !DILocation(line: 254, column: 3, scope: !4136)
!4139 = !DILocation(line: 256, column: 12, scope: !4099)
!4140 = !DILocation(line: 256, column: 2, scope: !4099)
!4141 = !DILocation(line: 257, column: 8, scope: !4099)
!4142 = !DILocation(line: 257, column: 14, scope: !4099)
!4143 = !DILocation(line: 257, column: 6, scope: !4099)
!4144 = !DILocation(line: 258, column: 7, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 258, column: 6)
!4146 = !DILocation(line: 258, column: 11, scope: !4145)
!4147 = !DILocation(line: 258, column: 15, scope: !4145)
!4148 = !DILocation(line: 258, column: 20, scope: !4145)
!4149 = !DILocation(line: 258, column: 6, scope: !4099)
!4150 = !DILocation(line: 259, column: 15, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4145, file: !3, line: 258, column: 28)
!4152 = !DILocation(line: 259, column: 3, scope: !4151)
!4153 = !DILocation(line: 260, column: 19, scope: !4151)
!4154 = !DILocation(line: 260, column: 3, scope: !4151)
!4155 = !DILocation(line: 261, column: 3, scope: !4151)
!4156 = !DILocation(line: 263, column: 7, scope: !4099)
!4157 = !DILocation(line: 263, column: 12, scope: !4099)
!4158 = !DILocation(line: 263, column: 5, scope: !4099)
!4159 = !DILocation(line: 264, column: 13, scope: !4099)
!4160 = !DILocation(line: 264, column: 2, scope: !4099)
!4161 = !DILocation(line: 265, column: 7, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 265, column: 6)
!4163 = !DILocation(line: 265, column: 13, scope: !4162)
!4164 = !DILocation(line: 265, column: 6, scope: !4099)
!4165 = !DILocation(line: 266, column: 15, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 265, column: 17)
!4167 = !DILocation(line: 266, column: 3, scope: !4166)
!4168 = !DILocation(line: 267, column: 19, scope: !4166)
!4169 = !DILocation(line: 267, column: 3, scope: !4166)
!4170 = !DILocation(line: 268, column: 7, scope: !4166)
!4171 = !DILocation(line: 269, column: 3, scope: !4166)
!4172 = !DILocation(line: 271, column: 14, scope: !4099)
!4173 = !DILocation(line: 271, column: 20, scope: !4099)
!4174 = !DILocation(line: 271, column: 2, scope: !4099)
!4175 = !DILocation(line: 272, column: 14, scope: !4099)
!4176 = !DILocation(line: 272, column: 2, scope: !4099)
!4177 = !DILocation(line: 273, column: 18, scope: !4099)
!4178 = !DILocation(line: 273, column: 2, scope: !4099)
!4179 = !DILocation(line: 275, column: 25, scope: !4099)
!4180 = !DILocation(line: 275, column: 8, scope: !4099)
!4181 = !DILocation(line: 275, column: 6, scope: !4099)
!4182 = !DILocation(line: 276, column: 6, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 276, column: 6)
!4184 = !DILocation(line: 276, column: 6, scope: !4099)
!4185 = !DILocation(line: 277, column: 3, scope: !4183)
!4186 = !DILocation(line: 279, column: 6, scope: !4099)
!4187 = !DILocation(line: 279, column: 12, scope: !4099)
!4188 = !DILocation(line: 279, column: 4, scope: !4099)
!4189 = !DILocation(line: 280, column: 18, scope: !4099)
!4190 = !DILocation(line: 280, column: 22, scope: !4099)
!4191 = !DILocation(line: 280, column: 2, scope: !4099)
!4192 = !DILocation(line: 280, column: 5, scope: !4099)
!4193 = !DILocation(line: 280, column: 16, scope: !4099)
!4194 = !DILocation(line: 282, column: 6, scope: !4099)
!4195 = !DILocation(line: 282, column: 9, scope: !4099)
!4196 = !DILocation(line: 282, column: 4, scope: !4099)
!4197 = !DILocation(line: 283, column: 10, scope: !4099)
!4198 = !DILocation(line: 283, column: 2, scope: !4099)
!4199 = !DILocation(line: 283, column: 5, scope: !4099)
!4200 = !DILocation(line: 283, column: 8, scope: !4099)
!4201 = !DILocation(line: 284, column: 2, scope: !4099)
!4202 = !DILocation(line: 284, column: 5, scope: !4099)
!4203 = !DILocation(line: 284, column: 12, scope: !4099)
!4204 = !DILocation(line: 285, column: 12, scope: !4099)
!4205 = !DILocation(line: 285, column: 2, scope: !4099)
!4206 = !DILocation(line: 285, column: 5, scope: !4099)
!4207 = !DILocation(line: 285, column: 10, scope: !4099)
!4208 = !DILocation(line: 286, column: 18, scope: !4099)
!4209 = !DILocation(line: 286, column: 21, scope: !4099)
!4210 = !DILocation(line: 286, column: 28, scope: !4099)
!4211 = !DILocation(line: 286, column: 2, scope: !4099)
!4212 = !DILocation(line: 287, column: 2, scope: !4099)
!4213 = !DILocation(line: 287, column: 5, scope: !4099)
!4214 = !DILocation(line: 287, column: 12, scope: !4099)
!4215 = !DILocation(line: 287, column: 16, scope: !4099)
!4216 = !DILocation(line: 287, column: 26, scope: !4099)
!4217 = !DILocation(line: 289, column: 2, scope: !4099)
!4218 = !DILocation(line: 291, column: 2, scope: !4099)
!4219 = !DILocation(line: 292, column: 2, scope: !4099)
!4220 = !DILocation(line: 293, column: 2, scope: !4099)
!4221 = !DILocation(line: 294, column: 13, scope: !4099)
!4222 = !DILocation(line: 294, column: 2, scope: !4099)
!4223 = !DILocation(line: 295, column: 2, scope: !4099)
!4224 = !DILocation(line: 296, column: 9, scope: !4099)
!4225 = !DILocation(line: 296, column: 2, scope: !4099)
!4226 = !DILocation(line: 297, column: 1, scope: !4099)
!4227 = distinct !DISubprogram(name: "show_vfsmnt", scope: !3, file: !3, line: 101, type: !3953, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4228)
!4228 = !{!4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236}
!4229 = !DILocalVariable(name: "m", arg: 1, scope: !4227, file: !3, line: 101, type: !838)
!4230 = !DILocalVariable(name: "mnt", arg: 2, scope: !4227, file: !3, line: 101, type: !722)
!4231 = !DILocalVariable(name: "p", scope: !4227, file: !3, line: 103, type: !3946)
!4232 = !DILocalVariable(name: "r", scope: !4227, file: !3, line: 104, type: !2418)
!4233 = !DILocalVariable(name: "mnt_path", scope: !4227, file: !3, line: 105, type: !718)
!4234 = !DILocalVariable(name: "sb", scope: !4227, file: !3, line: 106, type: !728)
!4235 = !DILocalVariable(name: "err", scope: !4227, file: !3, line: 107, type: !85)
!4236 = !DILabel(scope: !4227, name: "out", file: !3, line: 131)
!4237 = !DILocation(line: 101, column: 41, scope: !4227)
!4238 = !DILocation(line: 101, column: 61, scope: !4227)
!4239 = !DILocation(line: 103, column: 2, scope: !4227)
!4240 = !DILocation(line: 103, column: 22, scope: !4227)
!4241 = !DILocation(line: 103, column: 26, scope: !4227)
!4242 = !DILocation(line: 103, column: 29, scope: !4227)
!4243 = !DILocation(line: 104, column: 2, scope: !4227)
!4244 = !DILocation(line: 104, column: 16, scope: !4227)
!4245 = !DILocation(line: 104, column: 31, scope: !4227)
!4246 = !DILocation(line: 104, column: 20, scope: !4227)
!4247 = !DILocation(line: 105, column: 2, scope: !4227)
!4248 = !DILocation(line: 105, column: 14, scope: !4227)
!4249 = !DILocation(line: 105, column: 25, scope: !4227)
!4250 = !DILocation(line: 105, column: 59, scope: !4227)
!4251 = !DILocation(line: 105, column: 37, scope: !4227)
!4252 = !DILocation(line: 105, column: 42, scope: !4227)
!4253 = !DILocation(line: 106, column: 2, scope: !4227)
!4254 = !DILocation(line: 106, column: 22, scope: !4227)
!4255 = !DILocation(line: 106, column: 36, scope: !4227)
!4256 = !DILocation(line: 106, column: 44, scope: !4227)
!4257 = !DILocation(line: 107, column: 2, scope: !4227)
!4258 = !DILocation(line: 107, column: 6, scope: !4227)
!4259 = !DILocation(line: 109, column: 6, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 109, column: 6)
!4261 = !DILocation(line: 109, column: 10, scope: !4260)
!4262 = !DILocation(line: 109, column: 16, scope: !4260)
!4263 = !DILocation(line: 109, column: 6, scope: !4227)
!4264 = !DILocation(line: 110, column: 9, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 109, column: 30)
!4266 = !DILocation(line: 110, column: 13, scope: !4265)
!4267 = !DILocation(line: 110, column: 19, scope: !4265)
!4268 = !DILocation(line: 110, column: 32, scope: !4265)
!4269 = !DILocation(line: 110, column: 44, scope: !4265)
!4270 = !DILocation(line: 110, column: 7, scope: !4265)
!4271 = !DILocation(line: 111, column: 7, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4265, file: !3, line: 111, column: 7)
!4273 = !DILocation(line: 111, column: 7, scope: !4265)
!4274 = !DILocation(line: 112, column: 4, scope: !4272)
!4275 = !DILocation(line: 113, column: 2, scope: !4265)
!4276 = !DILocation(line: 114, column: 10, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 113, column: 9)
!4278 = !DILocation(line: 114, column: 13, scope: !4277)
!4279 = !DILocation(line: 114, column: 16, scope: !4277)
!4280 = !DILocation(line: 114, column: 30, scope: !4277)
!4281 = !DILocation(line: 114, column: 33, scope: !4277)
!4282 = !DILocation(line: 114, column: 3, scope: !4277)
!4283 = !DILocation(line: 116, column: 11, scope: !4227)
!4284 = !DILocation(line: 116, column: 2, scope: !4227)
!4285 = !DILocation(line: 118, column: 22, scope: !4227)
!4286 = !DILocation(line: 118, column: 37, scope: !4227)
!4287 = !DILocation(line: 118, column: 40, scope: !4227)
!4288 = !DILocation(line: 118, column: 8, scope: !4227)
!4289 = !DILocation(line: 118, column: 6, scope: !4227)
!4290 = !DILocation(line: 119, column: 6, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 119, column: 6)
!4292 = !DILocation(line: 119, column: 6, scope: !4227)
!4293 = !DILocation(line: 120, column: 3, scope: !4291)
!4294 = !DILocation(line: 121, column: 11, scope: !4227)
!4295 = !DILocation(line: 121, column: 2, scope: !4227)
!4296 = !DILocation(line: 122, column: 12, scope: !4227)
!4297 = !DILocation(line: 122, column: 15, scope: !4227)
!4298 = !DILocation(line: 122, column: 2, scope: !4227)
!4299 = !DILocation(line: 123, column: 11, scope: !4227)
!4300 = !DILocation(line: 123, column: 32, scope: !4227)
!4301 = !DILocation(line: 123, column: 14, scope: !4227)
!4302 = !DILocation(line: 123, column: 2, scope: !4227)
!4303 = !DILocation(line: 124, column: 21, scope: !4227)
!4304 = !DILocation(line: 124, column: 24, scope: !4227)
!4305 = !DILocation(line: 124, column: 8, scope: !4227)
!4306 = !DILocation(line: 124, column: 6, scope: !4227)
!4307 = !DILocation(line: 125, column: 6, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 125, column: 6)
!4309 = !DILocation(line: 125, column: 6, scope: !4227)
!4310 = !DILocation(line: 126, column: 3, scope: !4308)
!4311 = !DILocation(line: 127, column: 16, scope: !4227)
!4312 = !DILocation(line: 127, column: 19, scope: !4227)
!4313 = !DILocation(line: 127, column: 2, scope: !4227)
!4314 = !DILocation(line: 128, column: 6, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 128, column: 6)
!4316 = !DILocation(line: 128, column: 10, scope: !4315)
!4317 = !DILocation(line: 128, column: 16, scope: !4315)
!4318 = !DILocation(line: 128, column: 6, scope: !4227)
!4319 = !DILocation(line: 129, column: 9, scope: !4315)
!4320 = !DILocation(line: 129, column: 13, scope: !4315)
!4321 = !DILocation(line: 129, column: 19, scope: !4315)
!4322 = !DILocation(line: 129, column: 32, scope: !4315)
!4323 = !DILocation(line: 129, column: 44, scope: !4315)
!4324 = !DILocation(line: 129, column: 7, scope: !4315)
!4325 = !DILocation(line: 129, column: 3, scope: !4315)
!4326 = !DILocation(line: 130, column: 11, scope: !4227)
!4327 = !DILocation(line: 130, column: 2, scope: !4227)
!4328 = !DILocation(line: 131, column: 1, scope: !4227)
!4329 = !DILocation(line: 132, column: 9, scope: !4227)
!4330 = !DILocation(line: 133, column: 1, scope: !4227)
!4331 = !DILocation(line: 132, column: 2, scope: !4227)
!4332 = distinct !DISubprogram(name: "get_proc_task", scope: !192, file: !192, line: 128, type: !4333, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4335)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!1182, !3307}
!4335 = !{!4336}
!4336 = !DILocalVariable(name: "inode", arg: 1, scope: !4332, file: !192, line: 128, type: !3307)
!4337 = !DILocation(line: 128, column: 69, scope: !4332)
!4338 = !DILocation(line: 130, column: 31, scope: !4332)
!4339 = !DILocation(line: 130, column: 22, scope: !4332)
!4340 = !DILocation(line: 130, column: 9, scope: !4332)
!4341 = !DILocation(line: 130, column: 2, scope: !4332)
!4342 = distinct !DISubprogram(name: "task_lock", scope: !3816, file: !3816, line: 220, type: !3817, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4343)
!4343 = !{!4344}
!4344 = !DILocalVariable(name: "p", arg: 1, scope: !4342, file: !3816, line: 220, type: !1182)
!4345 = !DILocation(line: 220, column: 50, scope: !4342)
!4346 = !DILocation(line: 222, column: 13, scope: !4342)
!4347 = !DILocation(line: 222, column: 16, scope: !4342)
!4348 = !DILocation(line: 222, column: 2, scope: !4342)
!4349 = !DILocation(line: 223, column: 1, scope: !4342)
!4350 = distinct !DISubprogram(name: "task_unlock", scope: !3816, file: !3816, line: 225, type: !3817, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4351)
!4351 = !{!4352}
!4352 = !DILocalVariable(name: "p", arg: 1, scope: !4350, file: !3816, line: 225, type: !1182)
!4353 = !DILocation(line: 225, column: 52, scope: !4350)
!4354 = !DILocation(line: 227, column: 15, scope: !4350)
!4355 = !DILocation(line: 227, column: 18, scope: !4350)
!4356 = !DILocation(line: 227, column: 2, scope: !4350)
!4357 = !DILocation(line: 228, column: 1, scope: !4350)
!4358 = !DILocation(line: 124, column: 56, scope: !3815)
!4359 = !DILocation(line: 126, column: 30, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !3815, file: !3816, line: 126, column: 6)
!4361 = !DILocation(line: 126, column: 33, scope: !4360)
!4362 = !DILocation(line: 126, column: 7, scope: !4360)
!4363 = !DILocation(line: 126, column: 6, scope: !3815)
!4364 = !DILocation(line: 127, column: 3, scope: !4360)
!4365 = !DILocation(line: 136, column: 3, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4367, file: !3816, line: 133, column: 55)
!4367 = distinct !DILexicalBlock(scope: !3815, file: !3816, line: 133, column: 6)
!4368 = !DILocation(line: 136, column: 3, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4366, file: !3816, line: 136, column: 3)
!4370 = !DILocation(line: 137, column: 21, scope: !4366)
!4371 = !DILocation(line: 137, column: 3, scope: !4366)
!4372 = !DILocation(line: 138, column: 3, scope: !4366)
!4373 = !DILocation(line: 138, column: 3, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4366, file: !3816, line: 138, column: 3)
!4375 = !DILocation(line: 139, column: 3, scope: !4366)
!4376 = !DILocation(line: 163, column: 1, scope: !3815)
!4377 = distinct !DISubprogram(name: "get_mnt_ns", scope: !2371, file: !2371, line: 119, type: !4378, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4380)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{null, !2369}
!4380 = !{!4381}
!4381 = !DILocalVariable(name: "ns", arg: 1, scope: !4377, file: !2371, line: 119, type: !2369)
!4382 = !DILocation(line: 119, column: 53, scope: !4377)
!4383 = !DILocation(line: 121, column: 16, scope: !4377)
!4384 = !DILocation(line: 121, column: 20, scope: !4377)
!4385 = !DILocation(line: 121, column: 23, scope: !4377)
!4386 = !DILocation(line: 121, column: 2, scope: !4377)
!4387 = !DILocation(line: 122, column: 1, scope: !4377)
!4388 = distinct !DISubprogram(name: "get_fs_root", scope: !2341, file: !2341, line: 27, type: !4389, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4391)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{null, !2339, !3298}
!4391 = !{!4392, !4393}
!4392 = !DILocalVariable(name: "fs", arg: 1, scope: !4388, file: !2341, line: 27, type: !2339)
!4393 = !DILocalVariable(name: "root", arg: 2, scope: !4388, file: !2341, line: 27, type: !3298)
!4394 = !DILocation(line: 27, column: 50, scope: !4388)
!4395 = !DILocation(line: 27, column: 67, scope: !4388)
!4396 = !DILocation(line: 29, column: 13, scope: !4388)
!4397 = !DILocation(line: 29, column: 17, scope: !4388)
!4398 = !DILocation(line: 29, column: 2, scope: !4388)
!4399 = !DILocation(line: 30, column: 3, scope: !4388)
!4400 = !DILocation(line: 30, column: 10, scope: !4388)
!4401 = !DILocation(line: 30, column: 14, scope: !4388)
!4402 = !DILocation(line: 31, column: 11, scope: !4388)
!4403 = !DILocation(line: 31, column: 2, scope: !4388)
!4404 = !DILocation(line: 32, column: 15, scope: !4388)
!4405 = !DILocation(line: 32, column: 19, scope: !4388)
!4406 = !DILocation(line: 32, column: 2, scope: !4388)
!4407 = !DILocation(line: 33, column: 1, scope: !4388)
!4408 = !DISubprogram(name: "seq_open_private", scope: !840, file: !840, line: 170, type: !4409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!85, !429, !851, !85}
!4411 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4412, file: !4412, line: 35, type: !4413, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4415)
!4412 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4413 = !DISubroutineType(types: !4414)
!4414 = !{null, !163}
!4415 = !{!4416}
!4416 = !DILocalVariable(name: "list", arg: 1, scope: !4411, file: !4412, line: 35, type: !163)
!4417 = !DILocation(line: 35, column: 53, scope: !4411)
!4418 = !DILocation(line: 37, column: 2, scope: !4411)
!4419 = !DILocation(line: 37, column: 2, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4411, file: !4412, line: 37, column: 2)
!4421 = !DILocation(line: 37, column: 2, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4420, file: !4412, line: 37, column: 2)
!4423 = !DILocation(line: 37, column: 2, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4420, file: !4412, line: 37, column: 2)
!4425 = !DILocation(line: 38, column: 2, scope: !4411)
!4426 = !DILocation(line: 38, column: 2, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4411, file: !4412, line: 38, column: 2)
!4428 = !DILocation(line: 38, column: 2, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4427, file: !4412, line: 38, column: 2)
!4430 = !DILocation(line: 38, column: 2, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4427, file: !4412, line: 38, column: 2)
!4432 = !DILocation(line: 39, column: 1, scope: !4411)
!4433 = !DISubprogram(name: "path_put", scope: !719, file: !719, line: 14, type: !4434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{null, !1004}
!4436 = !DISubprogram(name: "put_mnt_ns", scope: !690, file: !690, line: 13, type: !4378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4437 = !DISubprogram(name: "get_pid_task", scope: !6, file: !6, line: 98, type: !4438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!1182, !195, !5}
!4440 = distinct !DISubprogram(name: "proc_pid", scope: !192, file: !192, line: 123, type: !4441, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4443)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!195, !3307}
!4443 = !{!4444}
!4444 = !DILocalVariable(name: "inode", arg: 1, scope: !4440, file: !192, line: 123, type: !3307)
!4445 = !DILocation(line: 123, column: 56, scope: !4440)
!4446 = !DILocation(line: 125, column: 16, scope: !4440)
!4447 = !DILocation(line: 125, column: 9, scope: !4440)
!4448 = !DILocation(line: 125, column: 24, scope: !4440)
!4449 = !DILocation(line: 125, column: 2, scope: !4440)
!4450 = distinct !DISubprogram(name: "PROC_I", scope: !192, file: !192, line: 113, type: !4451, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4453)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!190, !3307}
!4453 = !{!4454, !4455}
!4454 = !DILocalVariable(name: "inode", arg: 1, scope: !4450, file: !192, line: 113, type: !3307)
!4455 = !DILocalVariable(name: "__mptr", scope: !4456, file: !192, line: 115, type: !83)
!4456 = distinct !DILexicalBlock(scope: !4450, file: !192, line: 115, column: 9)
!4457 = !DILocation(line: 113, column: 61, scope: !4450)
!4458 = !DILocation(line: 115, column: 9, scope: !4456)
!4459 = !DILocation(line: 115, column: 9, scope: !4450)
!4460 = !DILocation(line: 115, column: 2, scope: !4450)
!4461 = distinct !DISubprogram(name: "spin_lock", scope: !4462, file: !4462, line: 349, type: !4463, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4465)
!4462 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4463 = !DISubroutineType(types: !4464)
!4464 = !{null, !2027}
!4465 = !{!4466}
!4466 = !DILocalVariable(name: "lock", arg: 1, scope: !4461, file: !4462, line: 349, type: !2027)
!4467 = !DILocation(line: 349, column: 51, scope: !4461)
!4468 = !DILocation(line: 351, column: 2, scope: !4461)
!4469 = !DILocation(line: 352, column: 1, scope: !4461)
!4470 = !DISubprogram(name: "_raw_spin_lock", scope: !4471, file: !4471, line: 22, type: !4472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4471 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4472 = !DISubroutineType(types: !4473)
!4473 = !{null, !4474}
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!4475 = distinct !DISubprogram(name: "spin_unlock", scope: !4462, file: !4462, line: 389, type: !4463, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4476)
!4476 = !{!4477}
!4477 = !DILocalVariable(name: "lock", arg: 1, scope: !4475, file: !4462, line: 389, type: !2027)
!4478 = !DILocation(line: 389, column: 53, scope: !4475)
!4479 = !DILocation(line: 391, column: 2, scope: !4475)
!4480 = !DILocation(line: 392, column: 1, scope: !4475)
!4481 = !DISubprogram(name: "_raw_spin_unlock", scope: !4471, file: !4471, line: 39, type: !4472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4482 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !176, file: !176, line: 331, type: !4483, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4486)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!350, !4485}
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!4486 = !{!4487}
!4487 = !DILocalVariable(name: "r", arg: 1, scope: !4482, file: !176, line: 331, type: !4485)
!4488 = !DILocation(line: 331, column: 67, scope: !4482)
!4489 = !DILocation(line: 333, column: 33, scope: !4482)
!4490 = !DILocation(line: 333, column: 9, scope: !4482)
!4491 = !DILocation(line: 333, column: 2, scope: !4482)
!4492 = !DISubprogram(name: "__put_task_struct", scope: !3816, file: !3816, line: 121, type: !3817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4493 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !176, file: !176, line: 313, type: !4494, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4496)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!350, !4485, !832}
!4496 = !{!4497, !4498}
!4497 = !DILocalVariable(name: "r", arg: 1, scope: !4493, file: !176, line: 313, type: !4485)
!4498 = !DILocalVariable(name: "oldp", arg: 2, scope: !4493, file: !176, line: 313, type: !832)
!4499 = !DILocation(line: 313, column: 69, scope: !4493)
!4500 = !DILocation(line: 313, column: 77, scope: !4493)
!4501 = !DILocation(line: 315, column: 36, scope: !4493)
!4502 = !DILocation(line: 315, column: 39, scope: !4493)
!4503 = !DILocation(line: 315, column: 9, scope: !4493)
!4504 = !DILocation(line: 315, column: 2, scope: !4493)
!4505 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !176, file: !176, line: 270, type: !4506, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4508)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!350, !85, !4485, !832}
!4508 = !{!4509, !4510, !4511, !4512}
!4509 = !DILocalVariable(name: "i", arg: 1, scope: !4505, file: !176, line: 270, type: !85)
!4510 = !DILocalVariable(name: "r", arg: 2, scope: !4505, file: !176, line: 270, type: !4485)
!4511 = !DILocalVariable(name: "oldp", arg: 3, scope: !4505, file: !176, line: 270, type: !832)
!4512 = !DILocalVariable(name: "old", scope: !4505, file: !176, line: 272, type: !85)
!4513 = !DILocation(line: 270, column: 61, scope: !4505)
!4514 = !DILocation(line: 270, column: 76, scope: !4505)
!4515 = !DILocation(line: 270, column: 84, scope: !4505)
!4516 = !DILocation(line: 272, column: 2, scope: !4505)
!4517 = !DILocation(line: 272, column: 6, scope: !4505)
!4518 = !DILocation(line: 272, column: 37, scope: !4505)
!4519 = !DILocation(line: 272, column: 41, scope: !4505)
!4520 = !DILocation(line: 272, column: 44, scope: !4505)
!4521 = !DILocation(line: 272, column: 12, scope: !4505)
!4522 = !DILocation(line: 274, column: 6, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4505, file: !176, line: 274, column: 6)
!4524 = !DILocation(line: 274, column: 6, scope: !4505)
!4525 = !DILocation(line: 275, column: 11, scope: !4523)
!4526 = !DILocation(line: 275, column: 4, scope: !4523)
!4527 = !DILocation(line: 275, column: 9, scope: !4523)
!4528 = !DILocation(line: 275, column: 3, scope: !4523)
!4529 = !DILocation(line: 277, column: 6, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4505, file: !176, line: 277, column: 6)
!4531 = !DILocation(line: 277, column: 13, scope: !4530)
!4532 = !DILocation(line: 277, column: 10, scope: !4530)
!4533 = !DILocation(line: 277, column: 6, scope: !4505)
!4534 = !DILocation(line: 278, column: 3, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4530, file: !176, line: 277, column: 16)
!4536 = !DILocation(line: 278, column: 3, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4535, file: !176, line: 278, column: 3)
!4538 = !DILocation(line: 278, column: 3, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4537, file: !176, line: 278, column: 3)
!4540 = !DILocation(line: 278, column: 3, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4537, file: !176, line: 278, column: 3)
!4542 = !DILocation(line: 278, column: 3, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4541, file: !176, line: 278, column: 3)
!4544 = !{i64 2150126045}
!4545 = !DILocation(line: 279, column: 3, scope: !4535)
!4546 = !DILocation(line: 282, column: 6, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4505, file: !176, line: 282, column: 6)
!4548 = !DILocation(line: 282, column: 6, scope: !4505)
!4549 = !DILocation(line: 283, column: 26, scope: !4547)
!4550 = !DILocation(line: 283, column: 3, scope: !4547)
!4551 = !DILocation(line: 285, column: 2, scope: !4505)
!4552 = !DILocation(line: 286, column: 1, scope: !4505)
!4553 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !4554, file: !4554, line: 397, type: !4555, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4558)
!4554 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!85, !85, !4557}
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!4558 = !{!4559, !4560}
!4559 = !DILocalVariable(name: "i", arg: 1, scope: !4553, file: !4554, line: 397, type: !85)
!4560 = !DILocalVariable(name: "v", arg: 2, scope: !4553, file: !4554, line: 397, type: !4557)
!4561 = !DILocation(line: 397, column: 30, scope: !4553)
!4562 = !DILocation(line: 397, column: 43, scope: !4553)
!4563 = !DILocation(line: 399, column: 2, scope: !4553)
!4564 = !DILocation(line: 399, column: 2, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4553, file: !4554, line: 399, column: 2)
!4566 = !DILocation(line: 400, column: 31, scope: !4553)
!4567 = !DILocation(line: 400, column: 2, scope: !4553)
!4568 = !DILocation(line: 401, column: 38, scope: !4553)
!4569 = !DILocation(line: 401, column: 41, scope: !4553)
!4570 = !DILocation(line: 401, column: 9, scope: !4553)
!4571 = !DILocation(line: 401, column: 2, scope: !4553)
!4572 = !DISubprogram(name: "refcount_warn_saturate", scope: !176, file: !176, line: 127, type: !4573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{null, !4485, !175}
!4575 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4576, file: !4576, line: 94, type: !4577, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4582)
!4576 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4577 = !DISubroutineType(types: !4578)
!4578 = !{null, !4579, !98}
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4581)
!4581 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4582 = !{!4583, !4584}
!4583 = !DILocalVariable(name: "v", arg: 1, scope: !4575, file: !4576, line: 94, type: !4579)
!4584 = !DILocalVariable(name: "size", arg: 2, scope: !4575, file: !4576, line: 94, type: !98)
!4585 = !DILocation(line: 94, column: 79, scope: !4575)
!4586 = !DILocation(line: 94, column: 89, scope: !4575)
!4587 = !DILocation(line: 96, column: 20, scope: !4575)
!4588 = !DILocation(line: 96, column: 23, scope: !4575)
!4589 = !DILocation(line: 96, column: 2, scope: !4575)
!4590 = !DILocation(line: 97, column: 2, scope: !4575)
!4591 = !DILocation(line: 98, column: 1, scope: !4575)
!4592 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !4593, file: !4593, line: 928, type: !4555, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4594)
!4593 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4594 = !{!4595, !4596}
!4595 = !DILocalVariable(name: "i", arg: 1, scope: !4592, file: !4593, line: 928, type: !85)
!4596 = !DILocalVariable(name: "v", arg: 2, scope: !4592, file: !4593, line: 928, type: !4557)
!4597 = !DILocation(line: 928, column: 34, scope: !4592)
!4598 = !DILocation(line: 928, column: 47, scope: !4592)
!4599 = !DILocation(line: 936, column: 31, scope: !4592)
!4600 = !DILocation(line: 936, column: 34, scope: !4592)
!4601 = !DILocation(line: 936, column: 9, scope: !4592)
!4602 = !DILocation(line: 936, column: 2, scope: !4592)
!4603 = distinct !DISubprogram(name: "kasan_check_write", scope: !4604, file: !4604, line: 44, type: !4605, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4607)
!4604 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!350, !4579, !7}
!4607 = !{!4608, !4609}
!4608 = !DILocalVariable(name: "p", arg: 1, scope: !4603, file: !4604, line: 44, type: !4579)
!4609 = !DILocalVariable(name: "size", arg: 2, scope: !4603, file: !4604, line: 44, type: !7)
!4610 = !DILocation(line: 44, column: 59, scope: !4603)
!4611 = !DILocation(line: 44, column: 75, scope: !4603)
!4612 = !DILocation(line: 46, column: 2, scope: !4603)
!4613 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4614, file: !4614, line: 229, type: !4615, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4617)
!4614 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4615 = !DISubroutineType(types: !4616)
!4616 = !{null, !4579, !98, !85}
!4617 = !{!4618, !4619, !4620}
!4618 = !DILocalVariable(name: "ptr", arg: 1, scope: !4613, file: !4614, line: 229, type: !4579)
!4619 = !DILocalVariable(name: "size", arg: 2, scope: !4613, file: !4614, line: 229, type: !98)
!4620 = !DILocalVariable(name: "type", arg: 3, scope: !4613, file: !4614, line: 230, type: !85)
!4621 = !DILocation(line: 229, column: 60, scope: !4613)
!4622 = !DILocation(line: 229, column: 72, scope: !4613)
!4623 = !DILocation(line: 230, column: 15, scope: !4613)
!4624 = !DILocation(line: 230, column: 23, scope: !4613)
!4625 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !4626, file: !4626, line: 101, type: !4555, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4627)
!4626 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!4627 = !{!4628, !4629, !4630}
!4628 = !DILocalVariable(name: "i", arg: 1, scope: !4625, file: !4626, line: 101, type: !85)
!4629 = !DILocalVariable(name: "v", arg: 2, scope: !4625, file: !4626, line: 101, type: !4557)
!4630 = !DILocalVariable(name: "__ret", scope: !4631, file: !4626, line: 103, type: !85)
!4631 = distinct !DILexicalBlock(scope: !4625, file: !4626, line: 103, column: 9)
!4632 = !DILocation(line: 101, column: 54, scope: !4625)
!4633 = !DILocation(line: 101, column: 67, scope: !4625)
!4634 = !DILocation(line: 103, column: 9, scope: !4631)
!4635 = !{i64 2148824165, i64 2148824204, i64 2148824225, i64 2148824262, i64 2148824285, i64 2148824294}
!4636 = !DILocation(line: 103, column: 9, scope: !4625)
!4637 = !DILocation(line: 103, column: 2, scope: !4625)
!4638 = distinct !DISubprogram(name: "refcount_inc", scope: !176, file: !176, line: 265, type: !4639, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4641)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{null, !4485}
!4641 = !{!4642}
!4642 = !DILocalVariable(name: "r", arg: 1, scope: !4638, file: !176, line: 265, type: !4485)
!4643 = !DILocation(line: 265, column: 45, scope: !4638)
!4644 = !DILocation(line: 267, column: 17, scope: !4638)
!4645 = !DILocation(line: 267, column: 2, scope: !4638)
!4646 = !DILocation(line: 268, column: 1, scope: !4638)
!4647 = distinct !DISubprogram(name: "__refcount_inc", scope: !176, file: !176, line: 248, type: !4648, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4650)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{null, !4485, !832}
!4650 = !{!4651, !4652}
!4651 = !DILocalVariable(name: "r", arg: 1, scope: !4647, file: !176, line: 248, type: !4485)
!4652 = !DILocalVariable(name: "oldp", arg: 2, scope: !4647, file: !176, line: 248, type: !832)
!4653 = !DILocation(line: 248, column: 47, scope: !4647)
!4654 = !DILocation(line: 248, column: 55, scope: !4647)
!4655 = !DILocation(line: 250, column: 20, scope: !4647)
!4656 = !DILocation(line: 250, column: 23, scope: !4647)
!4657 = !DILocation(line: 250, column: 2, scope: !4647)
!4658 = !DILocation(line: 251, column: 1, scope: !4647)
!4659 = distinct !DISubprogram(name: "__refcount_add", scope: !176, file: !176, line: 191, type: !4660, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4662)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{null, !85, !4485, !832}
!4662 = !{!4663, !4664, !4665, !4666}
!4663 = !DILocalVariable(name: "i", arg: 1, scope: !4659, file: !176, line: 191, type: !85)
!4664 = !DILocalVariable(name: "r", arg: 2, scope: !4659, file: !176, line: 191, type: !4485)
!4665 = !DILocalVariable(name: "oldp", arg: 3, scope: !4659, file: !176, line: 191, type: !832)
!4666 = !DILocalVariable(name: "old", scope: !4659, file: !176, line: 193, type: !85)
!4667 = !DILocation(line: 191, column: 39, scope: !4659)
!4668 = !DILocation(line: 191, column: 54, scope: !4659)
!4669 = !DILocation(line: 191, column: 62, scope: !4659)
!4670 = !DILocation(line: 193, column: 2, scope: !4659)
!4671 = !DILocation(line: 193, column: 6, scope: !4659)
!4672 = !DILocation(line: 193, column: 37, scope: !4659)
!4673 = !DILocation(line: 193, column: 41, scope: !4659)
!4674 = !DILocation(line: 193, column: 44, scope: !4659)
!4675 = !DILocation(line: 193, column: 12, scope: !4659)
!4676 = !DILocation(line: 195, column: 6, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4659, file: !176, line: 195, column: 6)
!4678 = !DILocation(line: 195, column: 6, scope: !4659)
!4679 = !DILocation(line: 196, column: 11, scope: !4677)
!4680 = !DILocation(line: 196, column: 4, scope: !4677)
!4681 = !DILocation(line: 196, column: 9, scope: !4677)
!4682 = !DILocation(line: 196, column: 3, scope: !4677)
!4683 = !DILocation(line: 198, column: 6, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4659, file: !176, line: 198, column: 6)
!4685 = !DILocation(line: 198, column: 6, scope: !4659)
!4686 = !DILocation(line: 199, column: 26, scope: !4684)
!4687 = !DILocation(line: 199, column: 3, scope: !4684)
!4688 = !DILocation(line: 200, column: 11, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4684, file: !176, line: 200, column: 11)
!4690 = !DILocation(line: 200, column: 11, scope: !4684)
!4691 = !DILocation(line: 201, column: 26, scope: !4689)
!4692 = !DILocation(line: 201, column: 3, scope: !4689)
!4693 = !DILocation(line: 202, column: 1, scope: !4659)
!4694 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !4554, file: !4554, line: 250, type: !4555, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4695)
!4695 = !{!4696, !4697}
!4696 = !DILocalVariable(name: "i", arg: 1, scope: !4694, file: !4554, line: 250, type: !85)
!4697 = !DILocalVariable(name: "v", arg: 2, scope: !4694, file: !4554, line: 250, type: !4557)
!4698 = !DILocation(line: 250, column: 30, scope: !4694)
!4699 = !DILocation(line: 250, column: 43, scope: !4694)
!4700 = !DILocation(line: 252, column: 31, scope: !4694)
!4701 = !DILocation(line: 252, column: 2, scope: !4694)
!4702 = !DILocation(line: 253, column: 38, scope: !4694)
!4703 = !DILocation(line: 253, column: 41, scope: !4694)
!4704 = !DILocation(line: 253, column: 9, scope: !4694)
!4705 = !DILocation(line: 253, column: 2, scope: !4694)
!4706 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !4593, file: !4593, line: 731, type: !4555, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4707)
!4707 = !{!4708, !4709}
!4708 = !DILocalVariable(name: "i", arg: 1, scope: !4706, file: !4593, line: 731, type: !85)
!4709 = !DILocalVariable(name: "v", arg: 2, scope: !4706, file: !4593, line: 731, type: !4557)
!4710 = !DILocation(line: 731, column: 34, scope: !4706)
!4711 = !DILocation(line: 731, column: 47, scope: !4706)
!4712 = !DILocation(line: 736, column: 31, scope: !4706)
!4713 = !DILocation(line: 736, column: 34, scope: !4706)
!4714 = !DILocation(line: 736, column: 9, scope: !4706)
!4715 = !DILocation(line: 736, column: 2, scope: !4706)
!4716 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !4626, file: !4626, line: 95, type: !4555, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4717)
!4717 = !{!4718, !4719, !4720}
!4718 = !DILocalVariable(name: "i", arg: 1, scope: !4716, file: !4626, line: 95, type: !85)
!4719 = !DILocalVariable(name: "v", arg: 2, scope: !4716, file: !4626, line: 95, type: !4557)
!4720 = !DILocalVariable(name: "__ret", scope: !4721, file: !4626, line: 97, type: !85)
!4721 = distinct !DILexicalBlock(scope: !4716, file: !4626, line: 97, column: 9)
!4722 = !DILocation(line: 95, column: 54, scope: !4716)
!4723 = !DILocation(line: 95, column: 67, scope: !4716)
!4724 = !DILocation(line: 97, column: 9, scope: !4721)
!4725 = !{i64 2148821980, i64 2148822019, i64 2148822040, i64 2148822077, i64 2148822100, i64 2148822109}
!4726 = !DILocation(line: 97, column: 9, scope: !4716)
!4727 = !DILocation(line: 97, column: 2, scope: !4716)
!4728 = !DISubprogram(name: "path_get", scope: !719, file: !719, line: 13, type: !4434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4729 = distinct !DISubprogram(name: "real_mount", scope: !2371, file: !2371, line: 84, type: !4730, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4732)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!2418, !722}
!4732 = !{!4733, !4734}
!4733 = !DILocalVariable(name: "mnt", arg: 1, scope: !4729, file: !2371, line: 84, type: !722)
!4734 = !DILocalVariable(name: "__mptr", scope: !4735, file: !2371, line: 86, type: !83)
!4735 = distinct !DILexicalBlock(scope: !4729, file: !2371, line: 86, column: 9)
!4736 = !DILocation(line: 84, column: 57, scope: !4729)
!4737 = !DILocation(line: 86, column: 9, scope: !4735)
!4738 = !DILocation(line: 86, column: 9, scope: !4729)
!4739 = !DILocation(line: 86, column: 2, scope: !4729)
!4740 = distinct !DISubprogram(name: "mangle", scope: !3, file: !3, line: 87, type: !4741, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4743)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{null, !838, !79}
!4743 = !{!4744, !4745}
!4744 = !DILocalVariable(name: "m", arg: 1, scope: !4740, file: !3, line: 87, type: !838)
!4745 = !DILocalVariable(name: "s", arg: 2, scope: !4740, file: !3, line: 87, type: !79)
!4746 = !DILocation(line: 87, column: 44, scope: !4740)
!4747 = !DILocation(line: 87, column: 59, scope: !4740)
!4748 = !DILocation(line: 89, column: 13, scope: !4740)
!4749 = !DILocation(line: 89, column: 16, scope: !4740)
!4750 = !DILocation(line: 89, column: 2, scope: !4740)
!4751 = !DILocation(line: 90, column: 1, scope: !4740)
!4752 = !DISubprogram(name: "seq_putc", scope: !840, file: !840, line: 120, type: !4753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{null, !838, !81}
!4755 = !DISubprogram(name: "seq_path_root", scope: !840, file: !840, line: 162, type: !4756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4756 = !DISubroutineType(types: !4757)
!4757 = !{!85, !838, !1004, !1004, !79}
!4758 = distinct !DISubprogram(name: "show_type", scope: !3, file: !3, line: 92, type: !4759, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4761)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{null, !838, !728}
!4761 = !{!4762, !4763}
!4762 = !DILocalVariable(name: "m", arg: 1, scope: !4758, file: !3, line: 92, type: !838)
!4763 = !DILocalVariable(name: "sb", arg: 2, scope: !4758, file: !3, line: 92, type: !728)
!4764 = !DILocation(line: 92, column: 40, scope: !4758)
!4765 = !DILocation(line: 92, column: 63, scope: !4758)
!4766 = !DILocation(line: 94, column: 9, scope: !4758)
!4767 = !DILocation(line: 94, column: 12, scope: !4758)
!4768 = !DILocation(line: 94, column: 16, scope: !4758)
!4769 = !DILocation(line: 94, column: 24, scope: !4758)
!4770 = !DILocation(line: 94, column: 2, scope: !4758)
!4771 = !DILocation(line: 95, column: 6, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4758, file: !3, line: 95, column: 6)
!4773 = !DILocation(line: 95, column: 10, scope: !4772)
!4774 = !DILocation(line: 95, column: 6, scope: !4758)
!4775 = !DILocation(line: 96, column: 12, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 95, column: 21)
!4777 = !DILocation(line: 96, column: 3, scope: !4776)
!4778 = !DILocation(line: 97, column: 10, scope: !4776)
!4779 = !DILocation(line: 97, column: 13, scope: !4776)
!4780 = !DILocation(line: 97, column: 17, scope: !4776)
!4781 = !DILocation(line: 97, column: 3, scope: !4776)
!4782 = !DILocation(line: 98, column: 2, scope: !4776)
!4783 = !DILocation(line: 99, column: 1, scope: !4758)
!4784 = !DISubprogram(name: "seq_puts", scope: !840, file: !840, line: 121, type: !4741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4785 = !DISubprogram(name: "__mnt_is_readonly", scope: !724, file: !724, line: 91, type: !4786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!350, !722}
!4788 = !DILocation(line: 45, column: 42, scope: !3854)
!4789 = !DILocation(line: 45, column: 65, scope: !3854)
!4790 = !DILocation(line: 54, column: 2, scope: !3854)
!4791 = !DILocation(line: 54, column: 29, scope: !3854)
!4792 = !DILocation(line: 56, column: 16, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !3854, file: !3, line: 56, column: 2)
!4794 = !DILocation(line: 56, column: 7, scope: !4793)
!4795 = !DILocation(line: 56, column: 27, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 56, column: 2)
!4797 = !DILocation(line: 56, column: 37, scope: !4796)
!4798 = !DILocation(line: 56, column: 2, scope: !4793)
!4799 = !DILocation(line: 57, column: 7, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 57, column: 7)
!4801 = distinct !DILexicalBlock(scope: !4796, file: !3, line: 56, column: 55)
!4802 = !DILocation(line: 57, column: 11, scope: !4800)
!4803 = !DILocation(line: 57, column: 21, scope: !4800)
!4804 = !DILocation(line: 57, column: 31, scope: !4800)
!4805 = !DILocation(line: 57, column: 19, scope: !4800)
!4806 = !DILocation(line: 57, column: 7, scope: !4801)
!4807 = !DILocation(line: 58, column: 13, scope: !4800)
!4808 = !DILocation(line: 58, column: 16, scope: !4800)
!4809 = !DILocation(line: 58, column: 26, scope: !4800)
!4810 = !DILocation(line: 58, column: 4, scope: !4800)
!4811 = !DILocation(line: 59, column: 2, scope: !4801)
!4812 = !DILocation(line: 56, column: 51, scope: !4796)
!4813 = !DILocation(line: 56, column: 2, scope: !4796)
!4814 = distinct !{!4814, !4798, !4815, !4816, !4817}
!4815 = !DILocation(line: 59, column: 2, scope: !4793)
!4816 = !{!"llvm.loop.mustprogress"}
!4817 = !{!"llvm.loop.unroll.disable"}
!4818 = !DILocation(line: 61, column: 34, scope: !3854)
!4819 = !DILocation(line: 61, column: 37, scope: !3854)
!4820 = !DILocation(line: 61, column: 9, scope: !3854)
!4821 = !DILocation(line: 62, column: 1, scope: !3854)
!4822 = !DILocation(line: 61, column: 2, scope: !3854)
!4823 = !DILocation(line: 64, column: 44, scope: !3891)
!4824 = !DILocation(line: 64, column: 64, scope: !3891)
!4825 = !DILocation(line: 76, column: 2, scope: !3891)
!4826 = !DILocation(line: 76, column: 29, scope: !3891)
!4827 = !DILocation(line: 78, column: 16, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 78, column: 2)
!4829 = !DILocation(line: 78, column: 7, scope: !4828)
!4830 = !DILocation(line: 78, column: 28, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 78, column: 2)
!4832 = !DILocation(line: 78, column: 38, scope: !4831)
!4833 = !DILocation(line: 78, column: 2, scope: !4828)
!4834 = !DILocation(line: 79, column: 7, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4836, file: !3, line: 79, column: 7)
!4836 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 78, column: 56)
!4837 = !DILocation(line: 79, column: 12, scope: !4835)
!4838 = !DILocation(line: 79, column: 24, scope: !4835)
!4839 = !DILocation(line: 79, column: 34, scope: !4835)
!4840 = !DILocation(line: 79, column: 22, scope: !4835)
!4841 = !DILocation(line: 79, column: 7, scope: !4836)
!4842 = !DILocation(line: 80, column: 13, scope: !4835)
!4843 = !DILocation(line: 80, column: 16, scope: !4835)
!4844 = !DILocation(line: 80, column: 26, scope: !4835)
!4845 = !DILocation(line: 80, column: 4, scope: !4835)
!4846 = !DILocation(line: 81, column: 2, scope: !4836)
!4847 = !DILocation(line: 78, column: 52, scope: !4831)
!4848 = !DILocation(line: 78, column: 2, scope: !4831)
!4849 = distinct !{!4849, !4833, !4850, !4816, !4817}
!4850 = !DILocation(line: 81, column: 2, scope: !4828)
!4851 = !DILocation(line: 83, column: 22, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 83, column: 6)
!4853 = !DILocation(line: 83, column: 6, scope: !4852)
!4854 = !DILocation(line: 83, column: 6, scope: !3891)
!4855 = !DILocation(line: 84, column: 12, scope: !4852)
!4856 = !DILocation(line: 84, column: 3, scope: !4852)
!4857 = !DILocation(line: 85, column: 1, scope: !3891)
!4858 = distinct !DISubprogram(name: "seq_escape", scope: !840, file: !840, line: 150, type: !4859, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4861)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{null, !838, !79, !79}
!4861 = !{!4862, !4863, !4864}
!4862 = !DILocalVariable(name: "m", arg: 1, scope: !4858, file: !840, line: 150, type: !838)
!4863 = !DILocalVariable(name: "s", arg: 2, scope: !4858, file: !840, line: 150, type: !79)
!4864 = !DILocalVariable(name: "esc", arg: 3, scope: !4858, file: !840, line: 150, type: !79)
!4865 = !DILocation(line: 150, column: 48, scope: !4858)
!4866 = !DILocation(line: 150, column: 63, scope: !4858)
!4867 = !DILocation(line: 150, column: 78, scope: !4858)
!4868 = !DILocation(line: 152, column: 17, scope: !4858)
!4869 = !DILocation(line: 152, column: 20, scope: !4858)
!4870 = !DILocation(line: 152, column: 37, scope: !4858)
!4871 = !DILocation(line: 152, column: 2, scope: !4858)
!4872 = !DILocation(line: 153, column: 1, scope: !4858)
!4873 = distinct !DISubprogram(name: "seq_escape_str", scope: !840, file: !840, line: 133, type: !4874, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4876)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{null, !838, !79, !7, !79}
!4876 = !{!4877, !4878, !4879, !4880}
!4877 = !DILocalVariable(name: "m", arg: 1, scope: !4873, file: !840, line: 133, type: !838)
!4878 = !DILocalVariable(name: "src", arg: 2, scope: !4873, file: !840, line: 133, type: !79)
!4879 = !DILocalVariable(name: "flags", arg: 3, scope: !4873, file: !840, line: 134, type: !7)
!4880 = !DILocalVariable(name: "esc", arg: 4, scope: !4873, file: !840, line: 134, type: !79)
!4881 = !DILocation(line: 133, column: 52, scope: !4873)
!4882 = !DILocation(line: 133, column: 67, scope: !4873)
!4883 = !DILocation(line: 134, column: 20, scope: !4873)
!4884 = !DILocation(line: 134, column: 39, scope: !4873)
!4885 = !DILocation(line: 136, column: 17, scope: !4873)
!4886 = !DILocation(line: 136, column: 20, scope: !4873)
!4887 = !DILocation(line: 136, column: 32, scope: !4873)
!4888 = !DILocation(line: 136, column: 25, scope: !4873)
!4889 = !DILocation(line: 136, column: 38, scope: !4873)
!4890 = !DILocation(line: 136, column: 45, scope: !4873)
!4891 = !DILocation(line: 136, column: 2, scope: !4873)
!4892 = !DILocation(line: 137, column: 1, scope: !4873)
!4893 = !DISubprogram(name: "seq_escape_mem", scope: !840, file: !840, line: 130, type: !4894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4894 = !DISubroutineType(types: !4895)
!4895 = !{null, !838, !79, !98, !7, !79}
!4896 = !DISubprogram(name: "strlen", scope: !4897, file: !4897, line: 128, type: !4898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4897 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!102, !79}
!4900 = !DISubprogram(name: "security_sb_show_options", scope: !4901, file: !4901, line: 308, type: !3855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4901 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!4902 = distinct !DISubprogram(name: "is_idmapped_mnt", scope: !15, file: !15, line: 2492, type: !4903, scopeLine: 2493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4907)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{!350, !4905}
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !723)
!4907 = !{!4908}
!4908 = !DILocalVariable(name: "mnt", arg: 1, scope: !4902, file: !15, line: 2492, type: !4905)
!4909 = !DILocation(line: 2492, column: 59, scope: !4902)
!4910 = !DILocation(line: 2494, column: 19, scope: !4902)
!4911 = !DILocation(line: 2494, column: 9, scope: !4902)
!4912 = !DILocation(line: 2494, column: 24, scope: !4902)
!4913 = !DILocation(line: 2494, column: 2, scope: !4902)
!4914 = distinct !DISubprogram(name: "mnt_idmap", scope: !724, file: !724, line: 77, type: !4915, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4917)
!4915 = !DISubroutineType(types: !4916)
!4916 = !{!343, !4905}
!4917 = !{!4918, !4919}
!4918 = !DILocalVariable(name: "mnt", arg: 1, scope: !4914, file: !724, line: 77, type: !4905)
!4919 = !DILocalVariable(name: "___p1", scope: !4920, file: !724, line: 80, type: !4921)
!4920 = distinct !DILexicalBlock(scope: !4914, file: !724, line: 80, column: 9)
!4921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!4922 = !DILocation(line: 77, column: 66, scope: !4914)
!4923 = !DILocation(line: 80, column: 9, scope: !4920)
!4924 = !DILocation(line: 80, column: 9, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4920, file: !724, line: 80, column: 9)
!4926 = !DILocation(line: 80, column: 9, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4925, file: !724, line: 80, column: 9)
!4928 = !DILocation(line: 80, column: 9, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4920, file: !724, line: 80, column: 9)
!4930 = !{i64 2153201097}
!4931 = !DILocation(line: 80, column: 9, scope: !4914)
!4932 = !DILocation(line: 80, column: 2, scope: !4914)
!4933 = !DISubprogram(name: "mnt_cursor_del", scope: !2371, file: !2371, line: 149, type: !4934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4934 = !DISubroutineType(types: !4935)
!4935 = !{null, !2369, !2418}
!4936 = !DISubprogram(name: "seq_release_private", scope: !840, file: !840, line: 171, type: !3427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4937 = distinct !DISubprogram(name: "show_mountinfo", scope: !3, file: !3, line: 135, type: !3953, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4938)
!4938 = !{!4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4949, !4950}
!4939 = !DILocalVariable(name: "m", arg: 1, scope: !4937, file: !3, line: 135, type: !838)
!4940 = !DILocalVariable(name: "mnt", arg: 2, scope: !4937, file: !3, line: 135, type: !722)
!4941 = !DILocalVariable(name: "p", scope: !4937, file: !3, line: 137, type: !3946)
!4942 = !DILocalVariable(name: "r", scope: !4937, file: !3, line: 138, type: !2418)
!4943 = !DILocalVariable(name: "sb", scope: !4937, file: !3, line: 139, type: !728)
!4944 = !DILocalVariable(name: "mnt_path", scope: !4937, file: !3, line: 140, type: !718)
!4945 = !DILocalVariable(name: "err", scope: !4937, file: !3, line: 141, type: !85)
!4946 = !DILocalVariable(name: "master", scope: !4947, file: !3, line: 166, type: !85)
!4947 = distinct !DILexicalBlock(scope: !4948, file: !3, line: 165, column: 23)
!4948 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 165, column: 6)
!4949 = !DILocalVariable(name: "dom", scope: !4947, file: !3, line: 167, type: !85)
!4950 = !DILabel(scope: !4937, name: "out", file: !3, line: 193)
!4951 = !DILocation(line: 135, column: 44, scope: !4937)
!4952 = !DILocation(line: 135, column: 64, scope: !4937)
!4953 = !DILocation(line: 137, column: 2, scope: !4937)
!4954 = !DILocation(line: 137, column: 22, scope: !4937)
!4955 = !DILocation(line: 137, column: 26, scope: !4937)
!4956 = !DILocation(line: 137, column: 29, scope: !4937)
!4957 = !DILocation(line: 138, column: 2, scope: !4937)
!4958 = !DILocation(line: 138, column: 16, scope: !4937)
!4959 = !DILocation(line: 138, column: 31, scope: !4937)
!4960 = !DILocation(line: 138, column: 20, scope: !4937)
!4961 = !DILocation(line: 139, column: 2, scope: !4937)
!4962 = !DILocation(line: 139, column: 22, scope: !4937)
!4963 = !DILocation(line: 139, column: 27, scope: !4937)
!4964 = !DILocation(line: 139, column: 32, scope: !4937)
!4965 = !DILocation(line: 140, column: 2, scope: !4937)
!4966 = !DILocation(line: 140, column: 14, scope: !4937)
!4967 = !DILocation(line: 140, column: 25, scope: !4937)
!4968 = !DILocation(line: 140, column: 59, scope: !4937)
!4969 = !DILocation(line: 140, column: 37, scope: !4937)
!4970 = !DILocation(line: 140, column: 42, scope: !4937)
!4971 = !DILocation(line: 141, column: 2, scope: !4937)
!4972 = !DILocation(line: 141, column: 6, scope: !4937)
!4973 = !DILocation(line: 143, column: 13, scope: !4937)
!4974 = !DILocation(line: 143, column: 32, scope: !4937)
!4975 = !DILocation(line: 143, column: 35, scope: !4937)
!4976 = !DILocation(line: 143, column: 43, scope: !4937)
!4977 = !DILocation(line: 143, column: 46, scope: !4937)
!4978 = !DILocation(line: 143, column: 58, scope: !4937)
!4979 = !DILocation(line: 144, column: 6, scope: !4937)
!4980 = !DILocation(line: 144, column: 24, scope: !4937)
!4981 = !DILocation(line: 143, column: 2, scope: !4937)
!4982 = !DILocation(line: 145, column: 6, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 145, column: 6)
!4984 = !DILocation(line: 145, column: 10, scope: !4983)
!4985 = !DILocation(line: 145, column: 16, scope: !4983)
!4986 = !DILocation(line: 145, column: 6, scope: !4937)
!4987 = !DILocation(line: 146, column: 9, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 145, column: 27)
!4989 = !DILocation(line: 146, column: 13, scope: !4988)
!4990 = !DILocation(line: 146, column: 19, scope: !4988)
!4991 = !DILocation(line: 146, column: 29, scope: !4988)
!4992 = !DILocation(line: 146, column: 32, scope: !4988)
!4993 = !DILocation(line: 146, column: 37, scope: !4988)
!4994 = !DILocation(line: 146, column: 7, scope: !4988)
!4995 = !DILocation(line: 147, column: 7, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4988, file: !3, line: 147, column: 7)
!4997 = !DILocation(line: 147, column: 7, scope: !4988)
!4998 = !DILocation(line: 148, column: 4, scope: !4996)
!4999 = !DILocation(line: 149, column: 2, scope: !4988)
!5000 = !DILocation(line: 150, column: 14, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 149, column: 9)
!5002 = !DILocation(line: 150, column: 17, scope: !5001)
!5003 = !DILocation(line: 150, column: 22, scope: !5001)
!5004 = !DILocation(line: 150, column: 3, scope: !5001)
!5005 = !DILocation(line: 152, column: 11, scope: !4937)
!5006 = !DILocation(line: 152, column: 2, scope: !4937)
!5007 = !DILocation(line: 155, column: 22, scope: !4937)
!5008 = !DILocation(line: 155, column: 37, scope: !4937)
!5009 = !DILocation(line: 155, column: 40, scope: !4937)
!5010 = !DILocation(line: 155, column: 8, scope: !4937)
!5011 = !DILocation(line: 155, column: 6, scope: !4937)
!5012 = !DILocation(line: 156, column: 6, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 156, column: 6)
!5014 = !DILocation(line: 156, column: 6, scope: !4937)
!5015 = !DILocation(line: 157, column: 3, scope: !5013)
!5016 = !DILocation(line: 159, column: 11, scope: !4937)
!5017 = !DILocation(line: 159, column: 14, scope: !4937)
!5018 = !DILocation(line: 159, column: 19, scope: !4937)
!5019 = !DILocation(line: 159, column: 29, scope: !4937)
!5020 = !DILocation(line: 159, column: 2, scope: !4937)
!5021 = !DILocation(line: 160, column: 16, scope: !4937)
!5022 = !DILocation(line: 160, column: 19, scope: !4937)
!5023 = !DILocation(line: 160, column: 2, scope: !4937)
!5024 = !DILocation(line: 163, column: 6, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 163, column: 6)
!5026 = !DILocation(line: 163, column: 6, scope: !4937)
!5027 = !DILocation(line: 164, column: 14, scope: !5025)
!5028 = !DILocation(line: 164, column: 31, scope: !5025)
!5029 = !DILocation(line: 164, column: 34, scope: !5025)
!5030 = !DILocation(line: 164, column: 3, scope: !5025)
!5031 = !DILocation(line: 165, column: 6, scope: !4948)
!5032 = !DILocation(line: 165, column: 6, scope: !4937)
!5033 = !DILocation(line: 166, column: 3, scope: !4947)
!5034 = !DILocation(line: 166, column: 7, scope: !4947)
!5035 = !DILocation(line: 166, column: 16, scope: !4947)
!5036 = !DILocation(line: 166, column: 19, scope: !4947)
!5037 = !DILocation(line: 166, column: 31, scope: !4947)
!5038 = !DILocation(line: 167, column: 3, scope: !4947)
!5039 = !DILocation(line: 167, column: 7, scope: !4947)
!5040 = !DILocation(line: 167, column: 31, scope: !4947)
!5041 = !DILocation(line: 167, column: 35, scope: !4947)
!5042 = !DILocation(line: 167, column: 38, scope: !4947)
!5043 = !DILocation(line: 167, column: 13, scope: !4947)
!5044 = !DILocation(line: 168, column: 14, scope: !4947)
!5045 = !DILocation(line: 168, column: 31, scope: !4947)
!5046 = !DILocation(line: 168, column: 3, scope: !4947)
!5047 = !DILocation(line: 169, column: 7, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !4947, file: !3, line: 169, column: 7)
!5049 = !DILocation(line: 169, column: 11, scope: !5048)
!5050 = !DILocation(line: 169, column: 14, scope: !5048)
!5051 = !DILocation(line: 169, column: 21, scope: !5048)
!5052 = !DILocation(line: 169, column: 18, scope: !5048)
!5053 = !DILocation(line: 169, column: 7, scope: !4947)
!5054 = !DILocation(line: 170, column: 15, scope: !5048)
!5055 = !DILocation(line: 170, column: 40, scope: !5048)
!5056 = !DILocation(line: 170, column: 4, scope: !5048)
!5057 = !DILocation(line: 171, column: 2, scope: !4948)
!5058 = !DILocation(line: 171, column: 2, scope: !4947)
!5059 = !DILocation(line: 172, column: 6, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 172, column: 6)
!5061 = !DILocation(line: 172, column: 6, scope: !4937)
!5062 = !DILocation(line: 173, column: 12, scope: !5060)
!5063 = !DILocation(line: 173, column: 3, scope: !5060)
!5064 = !DILocation(line: 176, column: 11, scope: !4937)
!5065 = !DILocation(line: 176, column: 2, scope: !4937)
!5066 = !DILocation(line: 177, column: 12, scope: !4937)
!5067 = !DILocation(line: 177, column: 15, scope: !4937)
!5068 = !DILocation(line: 177, column: 2, scope: !4937)
!5069 = !DILocation(line: 178, column: 11, scope: !4937)
!5070 = !DILocation(line: 178, column: 2, scope: !4937)
!5071 = !DILocation(line: 179, column: 6, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 179, column: 6)
!5073 = !DILocation(line: 179, column: 10, scope: !5072)
!5074 = !DILocation(line: 179, column: 16, scope: !5072)
!5075 = !DILocation(line: 179, column: 6, scope: !4937)
!5076 = !DILocation(line: 180, column: 9, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 179, column: 30)
!5078 = !DILocation(line: 180, column: 13, scope: !5077)
!5079 = !DILocation(line: 180, column: 19, scope: !5077)
!5080 = !DILocation(line: 180, column: 32, scope: !5077)
!5081 = !DILocation(line: 180, column: 35, scope: !5077)
!5082 = !DILocation(line: 180, column: 40, scope: !5077)
!5083 = !DILocation(line: 180, column: 7, scope: !5077)
!5084 = !DILocation(line: 181, column: 7, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5077, file: !3, line: 181, column: 7)
!5086 = !DILocation(line: 181, column: 7, scope: !5077)
!5087 = !DILocation(line: 182, column: 4, scope: !5085)
!5088 = !DILocation(line: 183, column: 2, scope: !5077)
!5089 = !DILocation(line: 184, column: 10, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 183, column: 9)
!5091 = !DILocation(line: 184, column: 13, scope: !5090)
!5092 = !DILocation(line: 184, column: 16, scope: !5090)
!5093 = !DILocation(line: 184, column: 30, scope: !5090)
!5094 = !DILocation(line: 184, column: 33, scope: !5090)
!5095 = !DILocation(line: 184, column: 3, scope: !5090)
!5096 = !DILocation(line: 186, column: 11, scope: !4937)
!5097 = !DILocation(line: 186, column: 24, scope: !4937)
!5098 = !DILocation(line: 186, column: 14, scope: !4937)
!5099 = !DILocation(line: 186, column: 2, scope: !4937)
!5100 = !DILocation(line: 187, column: 21, scope: !4937)
!5101 = !DILocation(line: 187, column: 24, scope: !4937)
!5102 = !DILocation(line: 187, column: 8, scope: !4937)
!5103 = !DILocation(line: 187, column: 6, scope: !4937)
!5104 = !DILocation(line: 188, column: 6, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 188, column: 6)
!5106 = !DILocation(line: 188, column: 6, scope: !4937)
!5107 = !DILocation(line: 189, column: 3, scope: !5105)
!5108 = !DILocation(line: 190, column: 6, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 190, column: 6)
!5110 = !DILocation(line: 190, column: 10, scope: !5109)
!5111 = !DILocation(line: 190, column: 16, scope: !5109)
!5112 = !DILocation(line: 190, column: 6, scope: !4937)
!5113 = !DILocation(line: 191, column: 9, scope: !5109)
!5114 = !DILocation(line: 191, column: 13, scope: !5109)
!5115 = !DILocation(line: 191, column: 19, scope: !5109)
!5116 = !DILocation(line: 191, column: 32, scope: !5109)
!5117 = !DILocation(line: 191, column: 35, scope: !5109)
!5118 = !DILocation(line: 191, column: 40, scope: !5109)
!5119 = !DILocation(line: 191, column: 7, scope: !5109)
!5120 = !DILocation(line: 191, column: 3, scope: !5109)
!5121 = !DILocation(line: 192, column: 11, scope: !4937)
!5122 = !DILocation(line: 192, column: 2, scope: !4937)
!5123 = !DILocation(line: 193, column: 1, scope: !4937)
!5124 = !DILocation(line: 194, column: 9, scope: !4937)
!5125 = !DILocation(line: 195, column: 1, scope: !4937)
!5126 = !DILocation(line: 194, column: 2, scope: !4937)
!5127 = !DISubprogram(name: "seq_printf", scope: !840, file: !840, line: 119, type: !5128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5128 = !DISubroutineType(types: !5129)
!5129 = !{null, !838, !79, null}
!5130 = !DISubprogram(name: "seq_dentry", scope: !840, file: !840, line: 161, type: !5131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5131 = !DISubroutineType(types: !5132)
!5132 = !{!85, !838, !247, !79}
!5133 = !DISubprogram(name: "get_dominating_id", scope: !5134, file: !5134, line: 46, type: !5135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5134 = !DIFile(filename: "fs/pnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4b78f2a3ce9b4cf14a45ba4b0e24d9d9")
!5135 = !DISubroutineType(types: !5136)
!5136 = !{!85, !2418, !1004}
!5137 = distinct !DISubprogram(name: "sb_rdonly", scope: !15, file: !15, line: 2133, type: !5138, scopeLine: 2133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5142)
!5138 = !DISubroutineType(types: !5139)
!5139 = !{!350, !5140}
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!5142 = !{!5143}
!5143 = !DILocalVariable(name: "sb", arg: 1, scope: !5137, file: !15, line: 2133, type: !5140)
!5144 = !DILocation(line: 2133, column: 56, scope: !5137)
!5145 = !DILocation(line: 2133, column: 69, scope: !5137)
!5146 = !DILocation(line: 2133, column: 73, scope: !5137)
!5147 = !DILocation(line: 2133, column: 81, scope: !5137)
!5148 = !DILocation(line: 2133, column: 62, scope: !5137)
!5149 = distinct !DISubprogram(name: "show_vfsstat", scope: !3, file: !3, line: 197, type: !3953, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5150)
!5150 = !{!5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158}
!5151 = !DILocalVariable(name: "m", arg: 1, scope: !5149, file: !3, line: 197, type: !838)
!5152 = !DILocalVariable(name: "mnt", arg: 2, scope: !5149, file: !3, line: 197, type: !722)
!5153 = !DILocalVariable(name: "p", scope: !5149, file: !3, line: 199, type: !3946)
!5154 = !DILocalVariable(name: "r", scope: !5149, file: !3, line: 200, type: !2418)
!5155 = !DILocalVariable(name: "mnt_path", scope: !5149, file: !3, line: 201, type: !718)
!5156 = !DILocalVariable(name: "sb", scope: !5149, file: !3, line: 202, type: !728)
!5157 = !DILocalVariable(name: "err", scope: !5149, file: !3, line: 203, type: !85)
!5158 = !DILabel(scope: !5149, name: "out", file: !3, line: 238)
!5159 = !DILocation(line: 197, column: 42, scope: !5149)
!5160 = !DILocation(line: 197, column: 62, scope: !5149)
!5161 = !DILocation(line: 199, column: 2, scope: !5149)
!5162 = !DILocation(line: 199, column: 22, scope: !5149)
!5163 = !DILocation(line: 199, column: 26, scope: !5149)
!5164 = !DILocation(line: 199, column: 29, scope: !5149)
!5165 = !DILocation(line: 200, column: 2, scope: !5149)
!5166 = !DILocation(line: 200, column: 16, scope: !5149)
!5167 = !DILocation(line: 200, column: 31, scope: !5149)
!5168 = !DILocation(line: 200, column: 20, scope: !5149)
!5169 = !DILocation(line: 201, column: 2, scope: !5149)
!5170 = !DILocation(line: 201, column: 14, scope: !5149)
!5171 = !DILocation(line: 201, column: 25, scope: !5149)
!5172 = !DILocation(line: 201, column: 59, scope: !5149)
!5173 = !DILocation(line: 201, column: 37, scope: !5149)
!5174 = !DILocation(line: 201, column: 42, scope: !5149)
!5175 = !DILocation(line: 202, column: 2, scope: !5149)
!5176 = !DILocation(line: 202, column: 22, scope: !5149)
!5177 = !DILocation(line: 202, column: 36, scope: !5149)
!5178 = !DILocation(line: 202, column: 44, scope: !5149)
!5179 = !DILocation(line: 203, column: 2, scope: !5149)
!5180 = !DILocation(line: 203, column: 6, scope: !5149)
!5181 = !DILocation(line: 206, column: 6, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 206, column: 6)
!5183 = !DILocation(line: 206, column: 10, scope: !5182)
!5184 = !DILocation(line: 206, column: 16, scope: !5182)
!5185 = !DILocation(line: 206, column: 6, scope: !5149)
!5186 = !DILocation(line: 207, column: 12, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 206, column: 30)
!5188 = !DILocation(line: 207, column: 3, scope: !5187)
!5189 = !DILocation(line: 208, column: 9, scope: !5187)
!5190 = !DILocation(line: 208, column: 13, scope: !5187)
!5191 = !DILocation(line: 208, column: 19, scope: !5187)
!5192 = !DILocation(line: 208, column: 32, scope: !5187)
!5193 = !DILocation(line: 208, column: 44, scope: !5187)
!5194 = !DILocation(line: 208, column: 7, scope: !5187)
!5195 = !DILocation(line: 209, column: 7, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 209, column: 7)
!5197 = !DILocation(line: 209, column: 7, scope: !5187)
!5198 = !DILocation(line: 210, column: 4, scope: !5196)
!5199 = !DILocation(line: 211, column: 2, scope: !5187)
!5200 = !DILocation(line: 212, column: 7, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 212, column: 7)
!5202 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 211, column: 9)
!5203 = !DILocation(line: 212, column: 10, scope: !5201)
!5204 = !DILocation(line: 212, column: 7, scope: !5202)
!5205 = !DILocation(line: 213, column: 13, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5201, file: !3, line: 212, column: 23)
!5207 = !DILocation(line: 213, column: 4, scope: !5206)
!5208 = !DILocation(line: 214, column: 11, scope: !5206)
!5209 = !DILocation(line: 214, column: 14, scope: !5206)
!5210 = !DILocation(line: 214, column: 17, scope: !5206)
!5211 = !DILocation(line: 214, column: 4, scope: !5206)
!5212 = !DILocation(line: 215, column: 3, scope: !5206)
!5213 = !DILocation(line: 216, column: 13, scope: !5201)
!5214 = !DILocation(line: 216, column: 4, scope: !5201)
!5215 = !DILocation(line: 220, column: 11, scope: !5149)
!5216 = !DILocation(line: 220, column: 2, scope: !5149)
!5217 = !DILocation(line: 222, column: 22, scope: !5149)
!5218 = !DILocation(line: 222, column: 37, scope: !5149)
!5219 = !DILocation(line: 222, column: 40, scope: !5149)
!5220 = !DILocation(line: 222, column: 8, scope: !5149)
!5221 = !DILocation(line: 222, column: 6, scope: !5149)
!5222 = !DILocation(line: 223, column: 6, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 223, column: 6)
!5224 = !DILocation(line: 223, column: 6, scope: !5149)
!5225 = !DILocation(line: 224, column: 3, scope: !5223)
!5226 = !DILocation(line: 225, column: 11, scope: !5149)
!5227 = !DILocation(line: 225, column: 2, scope: !5149)
!5228 = !DILocation(line: 228, column: 11, scope: !5149)
!5229 = !DILocation(line: 228, column: 2, scope: !5149)
!5230 = !DILocation(line: 229, column: 12, scope: !5149)
!5231 = !DILocation(line: 229, column: 15, scope: !5149)
!5232 = !DILocation(line: 229, column: 2, scope: !5149)
!5233 = !DILocation(line: 232, column: 6, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 232, column: 6)
!5235 = !DILocation(line: 232, column: 10, scope: !5234)
!5236 = !DILocation(line: 232, column: 16, scope: !5234)
!5237 = !DILocation(line: 232, column: 6, scope: !5149)
!5238 = !DILocation(line: 233, column: 12, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 232, column: 28)
!5240 = !DILocation(line: 233, column: 3, scope: !5239)
!5241 = !DILocation(line: 234, column: 9, scope: !5239)
!5242 = !DILocation(line: 234, column: 13, scope: !5239)
!5243 = !DILocation(line: 234, column: 19, scope: !5239)
!5244 = !DILocation(line: 234, column: 30, scope: !5239)
!5245 = !DILocation(line: 234, column: 42, scope: !5239)
!5246 = !DILocation(line: 234, column: 7, scope: !5239)
!5247 = !DILocation(line: 235, column: 2, scope: !5239)
!5248 = !DILocation(line: 237, column: 11, scope: !5149)
!5249 = !DILocation(line: 237, column: 2, scope: !5149)
!5250 = !DILocation(line: 238, column: 1, scope: !5149)
!5251 = !DILocation(line: 239, column: 9, scope: !5149)
!5252 = !DILocation(line: 240, column: 1, scope: !5149)
!5253 = !DILocation(line: 239, column: 2, scope: !5149)
