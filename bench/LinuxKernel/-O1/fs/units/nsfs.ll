; ModuleID = 'fs/nsfs.c'
source_filename = "fs/nsfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_open_related_ns: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad open_related_ns ; .previous"

%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.pcpu_hot = type { %union.anon.27 }
%union.anon.27 = type { %struct.anon.28, [16 x i8] }
%struct.anon.28 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [10 x i64], [4 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30, [48 x i8] }
%struct.anon.30 = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.31, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.17, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.18, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.19, ptr, %struct.address_space, %struct.list_head, %union.anon.20, i32, i32, ptr, ptr }
%union.anon.17 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.hlist_node = type { ptr, ptr }
%union.anon.18 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.19 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.20 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.25, %struct.list_head, %struct.list_head, %union.anon.26 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.21, ptr }
%union.anon.21 = type { i64 }
%struct.lockref = type { %union.anon.23 }
%union.anon.23 = type { i64 }
%union.anon.25 = type { %struct.list_head }
%union.anon.26 = type { %struct.hlist_node }
%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.ns_get_path_task_args = type { ptr, ptr }
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
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.file = type { %union.anon.14, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.15, %struct.qspinlock }
%union.anon.15 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i64, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i16, i16, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i64, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.pseudo_fs_context = type { ptr, ptr, ptr, i64 }

@ns_dentry_operations = hidden constant %struct.dentry_operations { ptr null, ptr null, ptr null, ptr null, ptr @always_delete_dentry, ptr null, ptr null, ptr @ns_prune_dentry, ptr null, ptr @ns_dname, ptr null, ptr null, ptr null, [24 x i8] undef }, align 64, !dbg !0
@__UNIQUE_ID___addressable_open_related_ns282 = internal global ptr @open_related_ns, section ".discard.addressable", align 8, !dbg !3744
@.str = private unnamed_addr constant [8 x i8] c"%s:[%u]\00", align 1, !dbg !3746
@ns_file_operations = internal constant %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ns_ioctl, ptr @compat_ptr_ioctl, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !3760
@nsfs_mnt = internal global ptr null, align 8, !dbg !3753
@nsfs = internal global %struct.file_system_type { ptr @.str.3, i32 0, ptr @nsfs_init_fs_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8, !dbg !3765
@.str.1 = private unnamed_addr constant [19 x i8] c"can't set nsfs up\0A\00", align 1, !dbg !3748
@.str.2 = private unnamed_addr constant [9 x i8] c"%s:[%lu]\00", align 1, !dbg !3755
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@overflowuid = external dso_local global i32, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"nsfs\00", align 1, !dbg !3762
@nsfs_ops = internal constant %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsfs_evict, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr @nsfs_show_path, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !3767
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_open_related_ns282], section "llvm.metadata"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @always_delete_dentry(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ns_prune_dentry(ptr noundef %dentry) #1 align 16 !dbg !3779 {
entry:
  %dentry.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %ns = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !3781, metadata !DIExpression()), !dbg !3786
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #13, !dbg !3787
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !3782, metadata !DIExpression()), !dbg !3788
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !3789
  %call = call ptr @d_inode(ptr noundef %0) #14, !dbg !3790
  store ptr %call, ptr %inode, align 8, !dbg !3788
  %1 = load ptr, ptr %inode, align 8, !dbg !3791
  %tobool = icmp ne ptr %1, null, !dbg !3791
  br i1 %tobool, label %if.then, label %if.end, !dbg !3792

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #13, !dbg !3793
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !3783, metadata !DIExpression()), !dbg !3794
  %2 = load ptr, ptr %inode, align 8, !dbg !3795
  %i_private = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 47, !dbg !3796
  %3 = load ptr, ptr %i_private, align 8, !dbg !3796
  store ptr %3, ptr %ns, align 8, !dbg !3794
  %4 = load ptr, ptr %ns, align 8, !dbg !3797
  %stashed = getelementptr inbounds %struct.ns_common, ptr %4, i32 0, i32 0, !dbg !3798
  call void @atomic_long_set(ptr noundef %stashed, i64 noundef 0) #14, !dbg !3799
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #13, !dbg !3800
  br label %if.end, !dbg !3801

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #13, !dbg !3802
  ret void, !dbg !3802
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ns_dname(ptr noundef %dentry, ptr noundef %buffer, i32 noundef %buflen) #1 align 16 !dbg !3803 {
entry:
  %dentry.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %buflen.addr = alloca i32, align 4
  %inode = alloca ptr, align 8
  %ns_ops = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !3805, metadata !DIExpression()), !dbg !3810
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !3806, metadata !DIExpression()), !dbg !3811
  store i32 %buflen, ptr %buflen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !3807, metadata !DIExpression()), !dbg !3812
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #13, !dbg !3813
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !3808, metadata !DIExpression()), !dbg !3814
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !3815
  %call = call ptr @d_inode(ptr noundef %0) #14, !dbg !3816
  store ptr %call, ptr %inode, align 8, !dbg !3814
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns_ops) #13, !dbg !3817
  call void @llvm.dbg.declare(metadata ptr %ns_ops, metadata !3809, metadata !DIExpression()), !dbg !3818
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !3819
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11, !dbg !3820
  %2 = load ptr, ptr %d_fsdata, align 8, !dbg !3820
  store ptr %2, ptr %ns_ops, align 8, !dbg !3818
  %3 = load ptr, ptr %buffer.addr, align 8, !dbg !3821
  %4 = load i32, ptr %buflen.addr, align 4, !dbg !3822
  %5 = load ptr, ptr %ns_ops, align 8, !dbg !3823
  %name = getelementptr inbounds %struct.proc_ns_operations, ptr %5, i32 0, i32 0, !dbg !3824
  %6 = load ptr, ptr %name, align 8, !dbg !3824
  %7 = load ptr, ptr %inode, align 8, !dbg !3825
  %i_ino = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 12, !dbg !3826
  %8 = load i64, ptr %i_ino, align 8, !dbg !3826
  %call1 = call ptr (ptr, i32, ptr, ...) @dynamic_dname(ptr noundef %3, i32 noundef %4, ptr noundef @.str.2, ptr noundef %6, i64 noundef %8) #14, !dbg !3827
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns_ops) #13, !dbg !3828
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #13, !dbg !3828
  ret ptr %call1, !dbg !3829
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ns_get_path_cb(ptr noundef %path, ptr noundef %ns_get_cb, ptr noundef %private_data) #1 align 16 !dbg !3830 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %ns_get_cb.addr = alloca ptr, align 8
  %private_data.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %ns = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !3838, metadata !DIExpression()), !dbg !3844
  store ptr %ns_get_cb, ptr %ns_get_cb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns_get_cb.addr, metadata !3839, metadata !DIExpression()), !dbg !3845
  store ptr %private_data, ptr %private_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %private_data.addr, metadata !3840, metadata !DIExpression()), !dbg !3846
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !3847
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3841, metadata !DIExpression()), !dbg !3848
  br label %do.body, !dbg !3849

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #13, !dbg !3850
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !3842, metadata !DIExpression()), !dbg !3851
  %0 = load ptr, ptr %ns_get_cb.addr, align 8, !dbg !3852
  %1 = load ptr, ptr %private_data.addr, align 8, !dbg !3853
  %call = call ptr %0(ptr noundef %1) #14, !dbg !3852
  store ptr %call, ptr %ns, align 8, !dbg !3851
  %2 = load ptr, ptr %ns, align 8, !dbg !3854
  %tobool = icmp ne ptr %2, null, !dbg !3854
  br i1 %tobool, label %if.end, label %if.then, !dbg !3856

if.then:                                          ; preds = %do.body
  store i32 -2, ptr %retval, align 4, !dbg !3857
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3857

if.end:                                           ; preds = %do.body
  %3 = load ptr, ptr %path.addr, align 8, !dbg !3858
  %4 = load ptr, ptr %ns, align 8, !dbg !3859
  %call1 = call i32 @__ns_get_path(ptr noundef %3, ptr noundef %4) #14, !dbg !3860
  store i32 %call1, ptr %ret, align 4, !dbg !3861
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3862
  br label %cleanup, !dbg !3862

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #13, !dbg !3862
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup2 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond, !dbg !3863

do.cond:                                          ; preds = %cleanup.cont
  %5 = load i32, ptr %ret, align 4, !dbg !3864
  %cmp = icmp eq i32 %5, -11, !dbg !3865
  br i1 %cmp, label %do.body, label %do.end, !dbg !3863, !llvm.loop !3866

do.end:                                           ; preds = %do.cond
  %6 = load i32, ptr %ret, align 4, !dbg !3870
  store i32 %6, ptr %retval, align 4, !dbg !3871
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup2, !dbg !3871

cleanup2:                                         ; preds = %do.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !3872
  %7 = load i32, ptr %retval, align 4, !dbg !3872
  ret i32 %7, !dbg !3872
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__ns_get_path(ptr noundef %path, ptr noundef %ns) #1 align 16 !dbg !3873 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  %mnt = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %d = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.timespec64, align 8
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !3877, metadata !DIExpression()), !dbg !3885
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !3878, metadata !DIExpression()), !dbg !3886
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnt) #13, !dbg !3887
  call void @llvm.dbg.declare(metadata ptr %mnt, metadata !3879, metadata !DIExpression()), !dbg !3888
  %0 = load ptr, ptr @nsfs_mnt, align 8, !dbg !3889
  store ptr %0, ptr %mnt, align 8, !dbg !3888
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #13, !dbg !3890
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !3880, metadata !DIExpression()), !dbg !3891
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #13, !dbg !3892
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !3881, metadata !DIExpression()), !dbg !3893
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #13, !dbg !3894
  call void @llvm.dbg.declare(metadata ptr %d, metadata !3882, metadata !DIExpression()), !dbg !3895
  call void @rcu_read_lock() #14, !dbg !3896
  %1 = load ptr, ptr %ns.addr, align 8, !dbg !3897
  %stashed = getelementptr inbounds %struct.ns_common, ptr %1, i32 0, i32 0, !dbg !3898
  %call = call i64 @atomic_long_read(ptr noundef %stashed) #14, !dbg !3899
  store i64 %call, ptr %d, align 8, !dbg !3900
  %2 = load i64, ptr %d, align 8, !dbg !3901
  %tobool = icmp ne i64 %2, 0, !dbg !3901
  br i1 %tobool, label %if.end, label %if.then, !dbg !3903

if.then:                                          ; preds = %entry
  br label %slow, !dbg !3904

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %d, align 8, !dbg !3905
  %4 = inttoptr i64 %3 to ptr, !dbg !3906
  store ptr %4, ptr %dentry, align 8, !dbg !3907
  %5 = load ptr, ptr %dentry, align 8, !dbg !3908
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 7, !dbg !3910
  %call1 = call i32 @lockref_get_not_dead(ptr noundef %d_lockref) #14, !dbg !3911
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3911
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3912

if.then3:                                         ; preds = %if.end
  br label %slow, !dbg !3913

if.end4:                                          ; preds = %if.end
  call void @rcu_read_unlock() #14, !dbg !3914
  %6 = load ptr, ptr %ns.addr, align 8, !dbg !3915
  %ops = getelementptr inbounds %struct.ns_common, ptr %6, i32 0, i32 1, !dbg !3916
  %7 = load ptr, ptr %ops, align 8, !dbg !3916
  %put = getelementptr inbounds %struct.proc_ns_operations, ptr %7, i32 0, i32 4, !dbg !3917
  %8 = load ptr, ptr %put, align 8, !dbg !3917
  %9 = load ptr, ptr %ns.addr, align 8, !dbg !3918
  call void %8(ptr noundef %9) #14, !dbg !3915
  br label %got_it, !dbg !3915

got_it:                                           ; preds = %if.end25, %if.end4
  call void @llvm.dbg.label(metadata !3883), !dbg !3919
  %10 = load ptr, ptr %mnt, align 8, !dbg !3920
  %call5 = call ptr @mntget(ptr noundef %10) #14, !dbg !3921
  %11 = load ptr, ptr %path.addr, align 8, !dbg !3922
  %mnt6 = getelementptr inbounds %struct.path, ptr %11, i32 0, i32 0, !dbg !3923
  store ptr %call5, ptr %mnt6, align 8, !dbg !3924
  %12 = load ptr, ptr %dentry, align 8, !dbg !3925
  %13 = load ptr, ptr %path.addr, align 8, !dbg !3926
  %dentry7 = getelementptr inbounds %struct.path, ptr %13, i32 0, i32 1, !dbg !3927
  store ptr %12, ptr %dentry7, align 8, !dbg !3928
  store i32 0, ptr %retval, align 4, !dbg !3929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3929

slow:                                             ; preds = %if.then3, %if.then
  call void @llvm.dbg.label(metadata !3884), !dbg !3930
  call void @rcu_read_unlock() #14, !dbg !3931
  %14 = load ptr, ptr %mnt, align 8, !dbg !3932
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %14, i32 0, i32 1, !dbg !3933
  %15 = load ptr, ptr %mnt_sb, align 8, !dbg !3933
  %call8 = call ptr @new_inode_pseudo(ptr noundef %15) #14, !dbg !3934
  store ptr %call8, ptr %inode, align 8, !dbg !3935
  %16 = load ptr, ptr %inode, align 8, !dbg !3936
  %tobool9 = icmp ne ptr %16, null, !dbg !3936
  br i1 %tobool9, label %if.end13, label %if.then10, !dbg !3938

if.then10:                                        ; preds = %slow
  %17 = load ptr, ptr %ns.addr, align 8, !dbg !3939
  %ops11 = getelementptr inbounds %struct.ns_common, ptr %17, i32 0, i32 1, !dbg !3941
  %18 = load ptr, ptr %ops11, align 8, !dbg !3941
  %put12 = getelementptr inbounds %struct.proc_ns_operations, ptr %18, i32 0, i32 4, !dbg !3942
  %19 = load ptr, ptr %put12, align 8, !dbg !3942
  %20 = load ptr, ptr %ns.addr, align 8, !dbg !3943
  call void %19(ptr noundef %20) #14, !dbg !3939
  store i32 -12, ptr %retval, align 4, !dbg !3944
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3944

if.end13:                                         ; preds = %slow
  %21 = load ptr, ptr %ns.addr, align 8, !dbg !3945
  %inum = getelementptr inbounds %struct.ns_common, ptr %21, i32 0, i32 2, !dbg !3946
  %22 = load i32, ptr %inum, align 8, !dbg !3946
  %conv = zext i32 %22 to i64, !dbg !3945
  %23 = load ptr, ptr %inode, align 8, !dbg !3947
  %i_ino = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 12, !dbg !3948
  store i64 %conv, ptr %i_ino, align 8, !dbg !3949
  %24 = load ptr, ptr %inode, align 8, !dbg !3950
  %i_mtime = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 17, !dbg !3951
  %25 = load ptr, ptr %inode, align 8, !dbg !3952
  %i_atime = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 16, !dbg !3953
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #13, !dbg !3954
  %26 = load ptr, ptr %inode, align 8, !dbg !3955
  %call14 = call { i64, i64 } @inode_set_ctime_current(ptr noundef %26) #14, !dbg !3954
  %27 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !3954
  %28 = extractvalue { i64, i64 } %call14, 0, !dbg !3954
  store i64 %28, ptr %27, align 8, !dbg !3954
  %29 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !3954
  %30 = extractvalue { i64, i64 } %call14, 1, !dbg !3954
  store i64 %30, ptr %29, align 8, !dbg !3954
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_atime, ptr align 8 %tmp, i64 16, i1 false), !dbg !3954
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #13, !dbg !3954
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %i_atime, i64 16, i1 false), !dbg !3956
  %31 = load ptr, ptr %inode, align 8, !dbg !3957
  %i_flags = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 5, !dbg !3958
  %32 = load i32, ptr %i_flags, align 4, !dbg !3959
  %or = or i32 %32, 8, !dbg !3959
  store i32 %or, ptr %i_flags, align 4, !dbg !3959
  %33 = load ptr, ptr %inode, align 8, !dbg !3960
  %i_mode = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 0, !dbg !3961
  store i16 -32476, ptr %i_mode, align 8, !dbg !3962
  %34 = load ptr, ptr %inode, align 8, !dbg !3963
  %35 = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 39, !dbg !3964
  store ptr @ns_file_operations, ptr %35, align 8, !dbg !3965
  %36 = load ptr, ptr %ns.addr, align 8, !dbg !3966
  %37 = load ptr, ptr %inode, align 8, !dbg !3967
  %i_private = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 47, !dbg !3968
  store ptr %36, ptr %i_private, align 8, !dbg !3969
  %38 = load ptr, ptr %mnt, align 8, !dbg !3970
  %mnt_sb15 = getelementptr inbounds %struct.vfsmount, ptr %38, i32 0, i32 1, !dbg !3971
  %39 = load ptr, ptr %mnt_sb15, align 8, !dbg !3971
  %call16 = call ptr @d_alloc_anon(ptr noundef %39) #14, !dbg !3972
  store ptr %call16, ptr %dentry, align 8, !dbg !3973
  %40 = load ptr, ptr %dentry, align 8, !dbg !3974
  %tobool17 = icmp ne ptr %40, null, !dbg !3974
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !3976

if.then18:                                        ; preds = %if.end13
  %41 = load ptr, ptr %inode, align 8, !dbg !3977
  call void @iput(ptr noundef %41) #14, !dbg !3979
  store i32 -12, ptr %retval, align 4, !dbg !3980
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3980

if.end19:                                         ; preds = %if.end13
  %42 = load ptr, ptr %dentry, align 8, !dbg !3981
  %43 = load ptr, ptr %inode, align 8, !dbg !3982
  call void @d_instantiate(ptr noundef %42, ptr noundef %43) #14, !dbg !3983
  %44 = load ptr, ptr %ns.addr, align 8, !dbg !3984
  %ops20 = getelementptr inbounds %struct.ns_common, ptr %44, i32 0, i32 1, !dbg !3985
  %45 = load ptr, ptr %ops20, align 8, !dbg !3985
  %46 = load ptr, ptr %dentry, align 8, !dbg !3986
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %46, i32 0, i32 11, !dbg !3987
  store ptr %45, ptr %d_fsdata, align 8, !dbg !3988
  %47 = load ptr, ptr %ns.addr, align 8, !dbg !3989
  %stashed21 = getelementptr inbounds %struct.ns_common, ptr %47, i32 0, i32 0, !dbg !3990
  %48 = load ptr, ptr %dentry, align 8, !dbg !3991
  %49 = ptrtoint ptr %48 to i64, !dbg !3992
  %call22 = call i64 @atomic_long_cmpxchg(ptr noundef %stashed21, i64 noundef 0, i64 noundef %49) #14, !dbg !3993
  store i64 %call22, ptr %d, align 8, !dbg !3994
  %50 = load i64, ptr %d, align 8, !dbg !3995
  %tobool23 = icmp ne i64 %50, 0, !dbg !3995
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !3997

if.then24:                                        ; preds = %if.end19
  %51 = load ptr, ptr %dentry, align 8, !dbg !3998
  call void @d_delete(ptr noundef %51) #14, !dbg !4000
  %52 = load ptr, ptr %dentry, align 8, !dbg !4001
  call void @dput(ptr noundef %52) #14, !dbg !4002
  call void @cpu_relax() #14, !dbg !4003
  store i32 -11, ptr %retval, align 4, !dbg !4004
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4004

if.end25:                                         ; preds = %if.end19
  br label %got_it, !dbg !4005

cleanup:                                          ; preds = %if.then24, %if.then18, %if.then10, %got_it
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #13, !dbg !4006
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #13, !dbg !4006
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #13, !dbg !4006
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnt) #13, !dbg !4006
  %53 = load i32, ptr %retval, align 4, !dbg !4006
  ret i32 %53, !dbg !4006
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ns_get_path(ptr noundef %path, ptr noundef %task, ptr noundef %ns_ops) #1 align 16 !dbg !4007 {
entry:
  %path.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %ns_ops.addr = alloca ptr, align 8
  %args = alloca %struct.ns_get_path_task_args, align 8
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !4011, metadata !DIExpression()), !dbg !4019
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4012, metadata !DIExpression()), !dbg !4020
  store ptr %ns_ops, ptr %ns_ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns_ops.addr, metadata !4013, metadata !DIExpression()), !dbg !4021
  call void @llvm.lifetime.start.p0(i64 16, ptr %args) #13, !dbg !4022
  call void @llvm.dbg.declare(metadata ptr %args, metadata !4014, metadata !DIExpression()), !dbg !4023
  %ns_ops1 = getelementptr inbounds %struct.ns_get_path_task_args, ptr %args, i32 0, i32 0, !dbg !4024
  %0 = load ptr, ptr %ns_ops.addr, align 8, !dbg !4025
  store ptr %0, ptr %ns_ops1, align 8, !dbg !4024
  %task2 = getelementptr inbounds %struct.ns_get_path_task_args, ptr %args, i32 0, i32 1, !dbg !4024
  %1 = load ptr, ptr %task.addr, align 8, !dbg !4026
  store ptr %1, ptr %task2, align 8, !dbg !4024
  %2 = load ptr, ptr %path.addr, align 8, !dbg !4027
  %call = call i32 @ns_get_path_cb(ptr noundef %2, ptr noundef @ns_get_path_task, ptr noundef %args) #14, !dbg !4028
  call void @llvm.lifetime.end.p0(i64 16, ptr %args) #13, !dbg !4029
  ret i32 %call, !dbg !4030
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ns_get_path_task(ptr noundef %private_data) #1 align 16 !dbg !4031 {
entry:
  %private_data.addr = alloca ptr, align 8
  %args = alloca ptr, align 8
  store ptr %private_data, ptr %private_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %private_data.addr, metadata !4033, metadata !DIExpression()), !dbg !4036
  call void @llvm.lifetime.start.p0(i64 8, ptr %args) #13, !dbg !4037
  call void @llvm.dbg.declare(metadata ptr %args, metadata !4034, metadata !DIExpression()), !dbg !4038
  %0 = load ptr, ptr %private_data.addr, align 8, !dbg !4039
  store ptr %0, ptr %args, align 8, !dbg !4038
  %1 = load ptr, ptr %args, align 8, !dbg !4040
  %ns_ops = getelementptr inbounds %struct.ns_get_path_task_args, ptr %1, i32 0, i32 0, !dbg !4041
  %2 = load ptr, ptr %ns_ops, align 8, !dbg !4041
  %get = getelementptr inbounds %struct.proc_ns_operations, ptr %2, i32 0, i32 3, !dbg !4042
  %3 = load ptr, ptr %get, align 8, !dbg !4042
  %4 = load ptr, ptr %args, align 8, !dbg !4043
  %task = getelementptr inbounds %struct.ns_get_path_task_args, ptr %4, i32 0, i32 1, !dbg !4044
  %5 = load ptr, ptr %task, align 8, !dbg !4044
  %call = call ptr %3(ptr noundef %5) #14, !dbg !4040
  call void @llvm.lifetime.end.p0(i64 8, ptr %args) #13, !dbg !4045
  ret ptr %call, !dbg !4046
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @open_related_ns(ptr noundef %ns, ptr noundef %get_ns) #1 align 16 !dbg !4047 {
entry:
  %retval = alloca i32, align 4
  %ns.addr = alloca ptr, align 8
  %get_ns.addr = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  %f = alloca ptr, align 8
  %err = alloca i32, align 4
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %relative = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4051, metadata !DIExpression()), !dbg !4059
  store ptr %get_ns, ptr %get_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %get_ns.addr, metadata !4052, metadata !DIExpression()), !dbg !4060
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #13, !dbg !4061
  call void @llvm.dbg.declare(metadata ptr %path, metadata !4053, metadata !DIExpression()), !dbg !4062
  call void @llvm.memset.p0.i64(ptr align 8 %path, i8 0, i64 16, i1 false), !dbg !4062
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #13, !dbg !4063
  call void @llvm.dbg.declare(metadata ptr %f, metadata !4054, metadata !DIExpression()), !dbg !4064
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !4065
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4055, metadata !DIExpression()), !dbg !4066
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #13, !dbg !4067
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !4056, metadata !DIExpression()), !dbg !4068
  %call = call i32 @get_unused_fd_flags(i32 noundef 524288) #14, !dbg !4069
  store i32 %call, ptr %fd, align 4, !dbg !4070
  %0 = load i32, ptr %fd, align 4, !dbg !4071
  %cmp = icmp slt i32 %0, 0, !dbg !4073
  br i1 %cmp, label %if.then, label %if.end, !dbg !4074

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %fd, align 4, !dbg !4075
  store i32 %1, ptr %retval, align 4, !dbg !4076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !4076

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4077

do.body:                                          ; preds = %do.cond, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %relative) #13, !dbg !4078
  call void @llvm.dbg.declare(metadata ptr %relative, metadata !4057, metadata !DIExpression()), !dbg !4079
  %2 = load ptr, ptr %get_ns.addr, align 8, !dbg !4080
  %3 = load ptr, ptr %ns.addr, align 8, !dbg !4081
  %call1 = call ptr %2(ptr noundef %3) #14, !dbg !4080
  store ptr %call1, ptr %relative, align 8, !dbg !4082
  %4 = load ptr, ptr %relative, align 8, !dbg !4083
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %4) #14, !dbg !4085
  br i1 %call2, label %if.then3, label %if.end5, !dbg !4086

if.then3:                                         ; preds = %do.body
  %5 = load i32, ptr %fd, align 4, !dbg !4087
  call void @put_unused_fd(i32 noundef %5) #14, !dbg !4089
  %6 = load ptr, ptr %relative, align 8, !dbg !4090
  %call4 = call i64 @PTR_ERR(ptr noundef %6) #14, !dbg !4091
  %conv = trunc i64 %call4 to i32, !dbg !4091
  store i32 %conv, ptr %retval, align 4, !dbg !4092
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4092

if.end5:                                          ; preds = %do.body
  %7 = load ptr, ptr %relative, align 8, !dbg !4093
  %call6 = call i32 @__ns_get_path(ptr noundef %path, ptr noundef %7) #14, !dbg !4094
  store i32 %call6, ptr %err, align 4, !dbg !4095
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4096
  br label %cleanup, !dbg !4096

cleanup:                                          ; preds = %if.end5, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %relative) #13, !dbg !4096
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond, !dbg !4097

do.cond:                                          ; preds = %cleanup.cont
  %8 = load i32, ptr %err, align 4, !dbg !4098
  %cmp7 = icmp eq i32 %8, -11, !dbg !4099
  br i1 %cmp7, label %do.body, label %do.end, !dbg !4097, !llvm.loop !4100

do.end:                                           ; preds = %do.cond
  %9 = load i32, ptr %err, align 4, !dbg !4102
  %tobool = icmp ne i32 %9, 0, !dbg !4102
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !4104

if.then9:                                         ; preds = %do.end
  %10 = load i32, ptr %fd, align 4, !dbg !4105
  call void @put_unused_fd(i32 noundef %10) #14, !dbg !4107
  %11 = load i32, ptr %err, align 4, !dbg !4108
  store i32 %11, ptr %retval, align 4, !dbg !4109
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !4109

if.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4110

do.body11:                                        ; preds = %if.end10
  br label %do.cond12, !dbg !4112

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4112

do.end13:                                         ; preds = %do.cond12
  %call14 = call ptr @get_current() #14, !dbg !4110
  %cred = getelementptr inbounds %struct.task_struct, ptr %call14, i32 0, i32 94, !dbg !4110
  %12 = load ptr, ptr %cred, align 32, !dbg !4110
  store ptr %12, ptr %tmp, align 8, !dbg !4112
  %13 = load ptr, ptr %tmp, align 8, !dbg !4110
  %call15 = call ptr @dentry_open(ptr noundef %path, i32 noundef 0, ptr noundef %13) #14, !dbg !4114
  store ptr %call15, ptr %f, align 8, !dbg !4115
  call void @path_put(ptr noundef %path) #14, !dbg !4116
  %14 = load ptr, ptr %f, align 8, !dbg !4117
  %call16 = call zeroext i1 @IS_ERR(ptr noundef %14) #14, !dbg !4119
  br i1 %call16, label %if.then17, label %if.else, !dbg !4120

if.then17:                                        ; preds = %do.end13
  %15 = load i32, ptr %fd, align 4, !dbg !4121
  call void @put_unused_fd(i32 noundef %15) #14, !dbg !4123
  %16 = load ptr, ptr %f, align 8, !dbg !4124
  %call18 = call i64 @PTR_ERR(ptr noundef %16) #14, !dbg !4125
  %conv19 = trunc i64 %call18 to i32, !dbg !4125
  store i32 %conv19, ptr %fd, align 4, !dbg !4126
  br label %if.end20, !dbg !4127

if.else:                                          ; preds = %do.end13
  %17 = load i32, ptr %fd, align 4, !dbg !4128
  %18 = load ptr, ptr %f, align 8, !dbg !4129
  call void @fd_install(i32 noundef %17, ptr noundef %18) #14, !dbg !4130
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  %19 = load i32, ptr %fd, align 4, !dbg !4131
  store i32 %19, ptr %retval, align 4, !dbg !4132
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !4132

cleanup21:                                        ; preds = %if.end20, %if.then9, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #13, !dbg !4133
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !4133
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #13, !dbg !4133
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #13, !dbg !4133
  %20 = load i32, ptr %retval, align 4, !dbg !4133
  ret i32 %20, !dbg !4133
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4134 dso_local i32 @get_unused_fd_flags(i32 noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #5 align 16 !dbg !4138 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4145, metadata !DIExpression()), !dbg !4146
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4147
  %1 = ptrtoint ptr %0 to i64, !dbg !4147
  %2 = inttoptr i64 %1 to ptr, !dbg !4147
  %3 = ptrtoint ptr %2 to i64, !dbg !4147
  %cmp = icmp uge i64 %3, -4095, !dbg !4147
  %lnot = xor i1 %cmp, true, !dbg !4147
  %lnot1 = xor i1 %lnot, true, !dbg !4147
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4147
  %conv = sext i32 %lnot.ext to i64, !dbg !4147
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4147
  %tobool = icmp ne i64 %expval, 0, !dbg !4147
  ret i1 %tobool, !dbg !4148
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4149 dso_local void @put_unused_fd(i32 noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #5 align 16 !dbg !4152 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4156, metadata !DIExpression()), !dbg !4157
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4158
  %1 = ptrtoint ptr %0 to i64, !dbg !4159
  ret i64 %1, !dbg !4160
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4161 dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !4164 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #13, !dbg !4175
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4169, metadata !DIExpression()), !dbg !4175
  br label %do.body, !dbg !4175

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !4176
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4171, metadata !DIExpression()), !dbg !4176
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4176
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4176
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !4175
  br label %do.cond, !dbg !4176

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4176

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #13, !dbg !4177
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4173, metadata !DIExpression()), !dbg !4177
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #15, !dbg !4177, !srcloc !4178
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4177
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4177
  %3 = inttoptr i64 %2 to ptr, !dbg !4177
  store ptr %3, ptr %tmp, align 8, !dbg !4177
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #13, !dbg !4175
  %4 = load ptr, ptr %tmp, align 8, !dbg !4177
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4175
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4175
  store ptr %5, ptr %tmp1, align 8, !dbg !4175
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #13, !dbg !4179
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4175
  ret ptr %6, !dbg !4180
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4181 dso_local void @path_put(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4184 dso_local void @fd_install(i32 noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ns_get_name(ptr noundef %buf, i64 noundef %size, ptr noundef %task, ptr noundef %ns_ops) #1 align 16 !dbg !4187 {
entry:
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %task.addr = alloca ptr, align 8
  %ns_ops.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %res = alloca i32, align 4
  %name = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4191, metadata !DIExpression()), !dbg !4198
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4192, metadata !DIExpression()), !dbg !4199
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4193, metadata !DIExpression()), !dbg !4200
  store ptr %ns_ops, ptr %ns_ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns_ops.addr, metadata !4194, metadata !DIExpression()), !dbg !4201
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #13, !dbg !4202
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !4195, metadata !DIExpression()), !dbg !4203
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #13, !dbg !4204
  call void @llvm.dbg.declare(metadata ptr %res, metadata !4196, metadata !DIExpression()), !dbg !4205
  store i32 -2, ptr %res, align 4, !dbg !4205
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #13, !dbg !4206
  call void @llvm.dbg.declare(metadata ptr %name, metadata !4197, metadata !DIExpression()), !dbg !4207
  %0 = load ptr, ptr %ns_ops.addr, align 8, !dbg !4208
  %get = getelementptr inbounds %struct.proc_ns_operations, ptr %0, i32 0, i32 3, !dbg !4209
  %1 = load ptr, ptr %get, align 8, !dbg !4209
  %2 = load ptr, ptr %task.addr, align 8, !dbg !4210
  %call = call ptr %1(ptr noundef %2) #14, !dbg !4208
  store ptr %call, ptr %ns, align 8, !dbg !4211
  %3 = load ptr, ptr %ns, align 8, !dbg !4212
  %tobool = icmp ne ptr %3, null, !dbg !4212
  br i1 %tobool, label %if.then, label %if.end, !dbg !4214

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %ns_ops.addr, align 8, !dbg !4215
  %real_ns_name = getelementptr inbounds %struct.proc_ns_operations, ptr %4, i32 0, i32 1, !dbg !4217
  %5 = load ptr, ptr %real_ns_name, align 8, !dbg !4217
  %tobool1 = icmp ne ptr %5, null, !dbg !4215
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !4215

cond.true:                                        ; preds = %if.then
  br label %cond.end, !dbg !4215

cond.false:                                       ; preds = %if.then
  %6 = load ptr, ptr %ns_ops.addr, align 8, !dbg !4218
  %name2 = getelementptr inbounds %struct.proc_ns_operations, ptr %6, i32 0, i32 0, !dbg !4219
  %7 = load ptr, ptr %name2, align 8, !dbg !4219
  br label %cond.end, !dbg !4215

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ %7, %cond.false ], !dbg !4215
  store ptr %cond, ptr %name, align 8, !dbg !4220
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !4221
  %9 = load i64, ptr %size.addr, align 8, !dbg !4222
  %10 = load ptr, ptr %name, align 8, !dbg !4223
  %11 = load ptr, ptr %ns, align 8, !dbg !4224
  %inum = getelementptr inbounds %struct.ns_common, ptr %11, i32 0, i32 2, !dbg !4225
  %12 = load i32, ptr %inum, align 8, !dbg !4225
  %call3 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %8, i64 noundef %9, ptr noundef @.str, ptr noundef %10, i32 noundef %12) #14, !dbg !4226
  store i32 %call3, ptr %res, align 4, !dbg !4227
  %13 = load ptr, ptr %ns_ops.addr, align 8, !dbg !4228
  %put = getelementptr inbounds %struct.proc_ns_operations, ptr %13, i32 0, i32 4, !dbg !4229
  %14 = load ptr, ptr %put, align 8, !dbg !4229
  %15 = load ptr, ptr %ns, align 8, !dbg !4230
  call void %14(ptr noundef %15) #14, !dbg !4228
  br label %if.end, !dbg !4231

if.end:                                           ; preds = %cond.end, %entry
  %16 = load i32, ptr %res, align 4, !dbg !4232
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #13, !dbg !4233
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #13, !dbg !4233
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #13, !dbg !4233
  ret i32 %16, !dbg !4234
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4235 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @proc_ns_file(ptr noundef %file) #1 align 16 !dbg !4239 {
entry:
  %file.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4243, metadata !DIExpression()), !dbg !4244
  %0 = load ptr, ptr %file.addr, align 8, !dbg !4245
  %f_op = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 12, !dbg !4246
  %1 = load ptr, ptr %f_op, align 8, !dbg !4246
  %cmp = icmp eq ptr %1, @ns_file_operations, !dbg !4247
  ret i1 %cmp, !dbg !4248
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @ns_match(ptr noundef %ns, i32 noundef %dev, i64 noundef %ino) #1 align 16 !dbg !4249 {
entry:
  %ns.addr = alloca ptr, align 8
  %dev.addr = alloca i32, align 4
  %ino.addr = alloca i64, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4256, metadata !DIExpression()), !dbg !4259
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4257, metadata !DIExpression()), !dbg !4260
  store i64 %ino, ptr %ino.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !4258, metadata !DIExpression()), !dbg !4261
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !4262
  %inum = getelementptr inbounds %struct.ns_common, ptr %0, i32 0, i32 2, !dbg !4263
  %1 = load i32, ptr %inum, align 8, !dbg !4263
  %conv = zext i32 %1 to i64, !dbg !4262
  %2 = load i64, ptr %ino.addr, align 8, !dbg !4264
  %cmp = icmp eq i64 %conv, %2, !dbg !4265
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4266

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr @nsfs_mnt, align 8, !dbg !4267
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %3, i32 0, i32 1, !dbg !4268
  %4 = load ptr, ptr %mnt_sb, align 8, !dbg !4268
  %s_dev = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 1, !dbg !4269
  %5 = load i32, ptr %s_dev, align 16, !dbg !4269
  %6 = load i32, ptr %dev.addr, align 4, !dbg !4270
  %cmp2 = icmp eq i32 %5, %6, !dbg !4271
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ], !dbg !4272
  ret i1 %7, !dbg !4273
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @nsfs_init() #7 section ".init.text" align 16 !dbg !4274 {
entry:
  %call = call ptr @kern_mount(ptr noundef @nsfs) #14, !dbg !4275
  store ptr %call, ptr @nsfs_mnt, align 8, !dbg !4276
  %0 = load ptr, ptr @nsfs_mnt, align 8, !dbg !4277
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %0) #14, !dbg !4279
  br i1 %call1, label %if.then, label %if.end, !dbg !4280

if.then:                                          ; preds = %entry
  call void (ptr, ...) @panic(ptr noundef @.str.1) #16, !dbg !4281
  unreachable, !dbg !4281

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @nsfs_mnt, align 8, !dbg !4282
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 1, !dbg !4283
  %2 = load ptr, ptr %mnt_sb, align 8, !dbg !4283
  %s_flags = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 10, !dbg !4284
  %3 = load i64, ptr %s_flags, align 16, !dbg !4285
  %and = and i64 %3, -2147483649, !dbg !4285
  store i64 %and, ptr %s_flags, align 16, !dbg !4285
  ret void, !dbg !4286
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4287 dso_local ptr @kern_mount(ptr noundef) #0

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !4290 dso_local void @panic(ptr noundef, ...) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #5 align 16 !dbg !4294 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4298, metadata !DIExpression()), !dbg !4299
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4300
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !4301
  %1 = load ptr, ptr %d_inode, align 8, !dbg !4301
  ret ptr %1, !dbg !4302
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_set(ptr noundef %v, i64 noundef %i) #6 align 16 !dbg !4303 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4308, metadata !DIExpression()), !dbg !4310
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4309, metadata !DIExpression()), !dbg !4311
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4312
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #14, !dbg !4313
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4314
  %2 = load i64, ptr %i.addr, align 8, !dbg !4315
  call void @raw_atomic_long_set(ptr noundef %1, i64 noundef %2) #14, !dbg !4316
  ret void, !dbg !4317
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !4318 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4326, metadata !DIExpression()), !dbg !4328
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4327, metadata !DIExpression()), !dbg !4329
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4330
  %1 = load i64, ptr %size.addr, align 8, !dbg !4331
  %conv = trunc i64 %1 to i32, !dbg !4331
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !4332
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4333
  %3 = load i64, ptr %size.addr, align 8, !dbg !4333
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #14, !dbg !4333
  ret void, !dbg !4334
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_set(ptr noundef %v, i64 noundef %i) #6 align 16 !dbg !4335 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4337, metadata !DIExpression()), !dbg !4339
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4338, metadata !DIExpression()), !dbg !4340
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4341
  %1 = load i64, ptr %i.addr, align 8, !dbg !4342
  call void @raw_atomic64_set(ptr noundef %0, i64 noundef %1) #14, !dbg !4343
  ret void, !dbg !4344
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !4345 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4350, metadata !DIExpression()), !dbg !4352
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4351, metadata !DIExpression()), !dbg !4353
  ret i1 true, !dbg !4354
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !4355 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4360, metadata !DIExpression()), !dbg !4363
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4361, metadata !DIExpression()), !dbg !4364
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4362, metadata !DIExpression()), !dbg !4365
  ret void, !dbg !4366
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #6 align 16 !dbg !4367 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4373, metadata !DIExpression()), !dbg !4375
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4374, metadata !DIExpression()), !dbg !4376
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4377
  %1 = load i64, ptr %i.addr, align 8, !dbg !4378
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #14, !dbg !4379
  ret void, !dbg !4380
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #6 align 16 !dbg !4381 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4384, metadata !DIExpression()), !dbg !4386
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4385, metadata !DIExpression()), !dbg !4387
  br label %do.body, !dbg !4388

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !4389
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4389
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !4389
  store volatile i64 %0, ptr %counter, align 8, !dbg !4389
  br label %do.end, !dbg !4389

do.end:                                           ; preds = %do.body
  ret void, !dbg !4391
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4392 dso_local ptr @dynamic_dname(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #6 align 16 !dbg !4395 {
entry:
  call void @__rcu_read_lock() #14, !dbg !4397
  br label %do.body, !dbg !4398

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4399

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4401

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4402

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4404
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #6 align 16 !dbg !4405 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4411, metadata !DIExpression()), !dbg !4412
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4413
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #14, !dbg !4414
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4415
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #14, !dbg !4416
  ret i64 %call, !dbg !4417
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4418 dso_local i32 @lockref_get_not_dead(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #5 align 16 !dbg !4422 {
entry:
  br label %do.body, !dbg !4423

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4424

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #14, !dbg !4426
  br label %do.body1, !dbg !4427

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4428

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4430
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4431 dso_local ptr @mntget(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4434 dso_local ptr @new_inode_pseudo(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4435 dso_local { i64, i64 } @inode_set_ctime_current(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4438 dso_local ptr @d_alloc_anon(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4441 dso_local void @iput(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4442 dso_local void @d_instantiate(ptr noundef, ptr noundef) #0

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_cmpxchg(ptr noundef %v, i64 noundef %old, i64 noundef %new) #6 align 16 !dbg !4443 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i64, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4447, metadata !DIExpression()), !dbg !4450
  store i64 %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !4448, metadata !DIExpression()), !dbg !4451
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4449, metadata !DIExpression()), !dbg !4452
  br label %do.body, !dbg !4453

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4454

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4456
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #14, !dbg !4457
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4458
  %2 = load i64, ptr %old.addr, align 8, !dbg !4459
  %3 = load i64, ptr %new.addr, align 8, !dbg !4460
  %call = call i64 @raw_atomic_long_cmpxchg(ptr noundef %1, i64 noundef %2, i64 noundef %3) #14, !dbg !4461
  ret i64 %call, !dbg !4462
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4463 dso_local void @d_delete(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4464 dso_local void @dput(ptr noundef) #0

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #6 align 16 !dbg !4465 {
entry:
  call void @rep_nop() #14, !dbg !4467
  ret void, !dbg !4468
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4469 dso_local void @__rcu_read_lock() #0

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !4470 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4472, metadata !DIExpression()), !dbg !4474
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4473, metadata !DIExpression()), !dbg !4475
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4476
  %1 = load i64, ptr %size.addr, align 8, !dbg !4477
  %conv = trunc i64 %1 to i32, !dbg !4477
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !4478
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4479
  %3 = load i64, ptr %size.addr, align 8, !dbg !4479
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !4479
  ret void, !dbg !4480
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #6 align 16 !dbg !4481 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4483, metadata !DIExpression()), !dbg !4484
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4485
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #14, !dbg !4486
  ret i64 %call, !dbg !4487
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !4488 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4490, metadata !DIExpression()), !dbg !4492
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4491, metadata !DIExpression()), !dbg !4493
  ret i1 true, !dbg !4494
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #6 align 16 !dbg !4495 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4501, metadata !DIExpression()), !dbg !4502
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4503
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #14, !dbg !4504
  ret i64 %call, !dbg !4505
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #6 align 16 !dbg !4506 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4508, metadata !DIExpression()), !dbg !4509
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4510
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !4510
  %1 = load volatile i64, ptr %counter, align 8, !dbg !4510
  ret i64 %1, !dbg !4511
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4512 dso_local void @__rcu_read_unlock() #0

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !4513 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4515, metadata !DIExpression()), !dbg !4517
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4516, metadata !DIExpression()), !dbg !4518
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4519
  %1 = load i64, ptr %size.addr, align 8, !dbg !4520
  %conv = trunc i64 %1 to i32, !dbg !4520
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !4521
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4522
  %3 = load i64, ptr %size.addr, align 8, !dbg !4522
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !4522
  ret void, !dbg !4523
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_cmpxchg(ptr noundef %v, i64 noundef %old, i64 noundef %new) #6 align 16 !dbg !4524 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i64, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4526, metadata !DIExpression()), !dbg !4529
  store i64 %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !4527, metadata !DIExpression()), !dbg !4530
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4528, metadata !DIExpression()), !dbg !4531
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4532
  %1 = load i64, ptr %old.addr, align 8, !dbg !4533
  %2 = load i64, ptr %new.addr, align 8, !dbg !4534
  %call = call i64 @raw_atomic64_cmpxchg(ptr noundef %0, i64 noundef %1, i64 noundef %2) #14, !dbg !4535
  ret i64 %call, !dbg !4536
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_cmpxchg(ptr noundef %v, i64 noundef %old, i64 noundef %new) #6 align 16 !dbg !4537 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i64, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4541, metadata !DIExpression()), !dbg !4544
  store i64 %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !4542, metadata !DIExpression()), !dbg !4545
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4543, metadata !DIExpression()), !dbg !4546
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4547
  %1 = load i64, ptr %old.addr, align 8, !dbg !4548
  %2 = load i64, ptr %new.addr, align 8, !dbg !4549
  %call = call i64 @arch_atomic64_cmpxchg(ptr noundef %0, i64 noundef %1, i64 noundef %2) #14, !dbg !4550
  ret i64 %call, !dbg !4551
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_cmpxchg(ptr noundef %v, i64 noundef %old, i64 noundef %new) #6 align 16 !dbg !4552 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i64, align 8
  %new.addr = alloca i64, align 8
  %__ret = alloca i64, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4554, metadata !DIExpression()), !dbg !4562
  store i64 %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !4555, metadata !DIExpression()), !dbg !4563
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4556, metadata !DIExpression()), !dbg !4564
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #13, !dbg !4565
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4557, metadata !DIExpression()), !dbg !4565
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #13, !dbg !4565
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !4559, metadata !DIExpression()), !dbg !4565
  %0 = load i64, ptr %old.addr, align 8, !dbg !4565
  store i64 %0, ptr %__old, align 8, !dbg !4565
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #13, !dbg !4565
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !4560, metadata !DIExpression()), !dbg !4565
  %1 = load i64, ptr %new.addr, align 8, !dbg !4565
  store i64 %1, ptr %__new, align 8, !dbg !4565
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #13, !dbg !4565
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4561, metadata !DIExpression()), !dbg !4565
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4565
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %2, i32 0, i32 0, !dbg !4565
  store ptr %counter, ptr %__ptr, align 8, !dbg !4565
  %3 = load ptr, ptr %__ptr, align 8, !dbg !4565
  %4 = load i64, ptr %__new, align 8, !dbg !4565
  %5 = load i64, ptr %__old, align 8, !dbg !4565
  %6 = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %3, i64 %4, i64 %5, ptr elementtype(i64) %3) #13, !dbg !4565, !srcloc !4566
  store i64 %6, ptr %__ret, align 8, !dbg !4565
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #13, !dbg !4565
  %7 = load i64, ptr %__ret, align 8, !dbg !4565
  store i64 %7, ptr %tmp, align 8, !dbg !4565
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #13, !dbg !4567
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #13, !dbg !4567
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #13, !dbg !4567
  %8 = load i64, ptr %tmp, align 8, !dbg !4565
  ret i64 %8, !dbg !4568
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #6 align 16 !dbg !4569 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !4570, !srcloc !4571
  ret void, !dbg !4572
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ns_ioctl(ptr noundef %filp, i32 noundef %ioctl, i64 noundef %arg) #1 align 16 !dbg !4573 {
entry:
  %retval = alloca i64, align 8
  %filp.addr = alloca ptr, align 8
  %ioctl.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %user_ns = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %argp = alloca ptr, align 8
  %uid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp18 = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp20 = alloca i64, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !4575, metadata !DIExpression()), !dbg !4592
  store i32 %ioctl, ptr %ioctl.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ioctl.addr, metadata !4576, metadata !DIExpression()), !dbg !4593
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !4577, metadata !DIExpression()), !dbg !4594
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_ns) #13, !dbg !4595
  call void @llvm.dbg.declare(metadata ptr %user_ns, metadata !4578, metadata !DIExpression()), !dbg !4596
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #13, !dbg !4597
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !4579, metadata !DIExpression()), !dbg !4598
  %0 = load ptr, ptr %filp.addr, align 8, !dbg !4599
  %call = call ptr @file_inode(ptr noundef %0) #14, !dbg !4599
  %i_private = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 47, !dbg !4599
  %1 = load ptr, ptr %i_private, align 8, !dbg !4599
  store ptr %1, ptr %ns, align 8, !dbg !4598
  call void @llvm.lifetime.start.p0(i64 8, ptr %argp) #13, !dbg !4600
  call void @llvm.dbg.declare(metadata ptr %argp, metadata !4580, metadata !DIExpression()), !dbg !4601
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #13, !dbg !4602
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4581, metadata !DIExpression()), !dbg !4603
  %2 = load i32, ptr %ioctl.addr, align 4, !dbg !4604
  switch i32 %2, label %sw.default [
    i32 46849, label %sw.bb
    i32 46850, label %sw.bb2
    i32 46851, label %sw.bb7
    i32 46852, label %sw.bb10
  ], !dbg !4605

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %ns, align 8, !dbg !4606
  %call1 = call i32 @open_related_ns(ptr noundef %3, ptr noundef @ns_get_owner) #14, !dbg !4607
  %conv = sext i32 %call1 to i64, !dbg !4607
  store i64 %conv, ptr %retval, align 8, !dbg !4608
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4608

sw.bb2:                                           ; preds = %entry
  %4 = load ptr, ptr %ns, align 8, !dbg !4609
  %ops = getelementptr inbounds %struct.ns_common, ptr %4, i32 0, i32 1, !dbg !4611
  %5 = load ptr, ptr %ops, align 8, !dbg !4611
  %get_parent = getelementptr inbounds %struct.proc_ns_operations, ptr %5, i32 0, i32 7, !dbg !4612
  %6 = load ptr, ptr %get_parent, align 8, !dbg !4612
  %tobool = icmp ne ptr %6, null, !dbg !4609
  br i1 %tobool, label %if.end, label %if.then, !dbg !4613

if.then:                                          ; preds = %sw.bb2
  store i64 -22, ptr %retval, align 8, !dbg !4614
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4614

if.end:                                           ; preds = %sw.bb2
  %7 = load ptr, ptr %ns, align 8, !dbg !4615
  %8 = load ptr, ptr %ns, align 8, !dbg !4616
  %ops3 = getelementptr inbounds %struct.ns_common, ptr %8, i32 0, i32 1, !dbg !4617
  %9 = load ptr, ptr %ops3, align 8, !dbg !4617
  %get_parent4 = getelementptr inbounds %struct.proc_ns_operations, ptr %9, i32 0, i32 7, !dbg !4618
  %10 = load ptr, ptr %get_parent4, align 8, !dbg !4618
  %call5 = call i32 @open_related_ns(ptr noundef %7, ptr noundef %10) #14, !dbg !4619
  %conv6 = sext i32 %call5 to i64, !dbg !4619
  store i64 %conv6, ptr %retval, align 8, !dbg !4620
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4620

sw.bb7:                                           ; preds = %entry
  %11 = load ptr, ptr %ns, align 8, !dbg !4621
  %ops8 = getelementptr inbounds %struct.ns_common, ptr %11, i32 0, i32 1, !dbg !4622
  %12 = load ptr, ptr %ops8, align 8, !dbg !4622
  %type = getelementptr inbounds %struct.proc_ns_operations, ptr %12, i32 0, i32 2, !dbg !4623
  %13 = load i32, ptr %type, align 8, !dbg !4623
  %conv9 = sext i32 %13 to i64, !dbg !4621
  store i64 %conv9, ptr %retval, align 8, !dbg !4624
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4624

sw.bb10:                                          ; preds = %entry
  %14 = load ptr, ptr %ns, align 8, !dbg !4625
  %ops11 = getelementptr inbounds %struct.ns_common, ptr %14, i32 0, i32 1, !dbg !4627
  %15 = load ptr, ptr %ops11, align 8, !dbg !4627
  %type12 = getelementptr inbounds %struct.proc_ns_operations, ptr %15, i32 0, i32 2, !dbg !4628
  %16 = load i32, ptr %type12, align 8, !dbg !4628
  %cmp = icmp ne i32 %16, 268435456, !dbg !4629
  br i1 %cmp, label %if.then14, label %if.end15, !dbg !4630

if.then14:                                        ; preds = %sw.bb10
  store i64 -22, ptr %retval, align 8, !dbg !4631
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4631

if.end15:                                         ; preds = %sw.bb10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !4632
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4582, metadata !DIExpression()), !dbg !4632
  %17 = load ptr, ptr %ns, align 8, !dbg !4632
  store ptr %17, ptr %__mptr, align 8, !dbg !4632
  %18 = load ptr, ptr %__mptr, align 8, !dbg !4632
  %add.ptr = getelementptr i8, ptr %18, i64 -240, !dbg !4632
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4632
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !4633
  %19 = load ptr, ptr %tmp, align 8, !dbg !4632
  store ptr %19, ptr %user_ns, align 8, !dbg !4634
  %20 = load i64, ptr %arg.addr, align 8, !dbg !4635
  %21 = inttoptr i64 %20 to ptr, !dbg !4636
  store ptr %21, ptr %argp, align 8, !dbg !4637
  %call16 = call ptr @current_user_ns() #14, !dbg !4638
  %22 = load ptr, ptr %user_ns, align 8, !dbg !4639
  %owner = getelementptr inbounds %struct.user_namespace, ptr %22, i32 0, i32 5, !dbg !4640
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %owner, i32 0, i32 0, !dbg !4641
  %23 = load i32, ptr %coerce.dive, align 4, !dbg !4641
  %call17 = call i32 @from_kuid_munged(ptr noundef %call16, i32 %23) #14, !dbg !4641
  store i32 %call17, ptr %uid, align 4, !dbg !4642
  call void @might_fault() #14, !dbg !4643
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #13, !dbg !4644
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !4585, metadata !DIExpression()), !dbg !4644
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #13, !dbg !4644
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !4588, metadata !DIExpression()), !dbg !4644
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #13, !dbg !4644
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !4589, metadata !DIExpression()), !dbg !4644
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #13, !dbg !4644
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !4590, metadata !DIExpression()), !dbg !4644
  %24 = load i32, ptr %uid, align 4, !dbg !4644
  store i32 %24, ptr %__x, align 4, !dbg !4644
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #13, !dbg !4644
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4591, metadata !DIExpression()), !dbg !4644
  %25 = load ptr, ptr %argp, align 8, !dbg !4644
  store ptr %25, ptr %__ptr, align 8, !dbg !4644
  %26 = load ptr, ptr %__ptr, align 8, !dbg !4644
  store ptr %26, ptr %__ptr_pu, align 8, !dbg !4644
  %27 = load i32, ptr %__x, align 4, !dbg !4644
  store i32 %27, ptr %__val_pu, align 4, !dbg !4644
  %28 = call i64 @llvm.read_register.i64(metadata !3769), !dbg !4644
  %29 = load ptr, ptr %__ptr_pu, align 8, !dbg !4644
  %30 = load i32, ptr %__val_pu, align 4, !dbg !4644
  %31 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %29, i32 %30, i64 4, i64 %28) #13, !dbg !4644, !srcloc !4645
  %asmresult = extractvalue { ptr, i64 } %31, 0, !dbg !4644
  %asmresult19 = extractvalue { ptr, i64 } %31, 1, !dbg !4644
  %32 = ptrtoint ptr %asmresult to i64, !dbg !4644
  %33 = trunc i64 %32 to i32, !dbg !4644
  store i32 %33, ptr %__ret_pu, align 4, !dbg !4644
  call void @llvm.write_register.i64(metadata !3769, i64 %asmresult19), !dbg !4644
  %34 = load ptr, ptr %__ptr, align 8, !dbg !4646
  call void @kmsan_copy_to_user(ptr noundef %34, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #14, !dbg !4646
  %35 = load i32, ptr %__ret_pu, align 4, !dbg !4644
  %conv21 = sext i32 %35 to i64, !dbg !4644
  %expval = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !4644
  store i64 %expval, ptr %tmp20, align 8, !dbg !4644
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #13, !dbg !4643
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #13, !dbg !4643
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #13, !dbg !4643
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #13, !dbg !4643
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #13, !dbg !4643
  %36 = load i64, ptr %tmp20, align 8, !dbg !4644
  store i64 %36, ptr %tmp18, align 8, !dbg !4643
  %37 = load i64, ptr %tmp18, align 8, !dbg !4643
  store i64 %37, ptr %retval, align 8, !dbg !4648
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4648

sw.default:                                       ; preds = %entry
  store i64 -25, ptr %retval, align 8, !dbg !4649
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4649

cleanup:                                          ; preds = %sw.default, %if.end15, %if.then14, %sw.bb7, %if.end, %if.then, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #13, !dbg !4650
  call void @llvm.lifetime.end.p0(i64 8, ptr %argp) #13, !dbg !4650
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #13, !dbg !4650
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_ns) #13, !dbg !4650
  %38 = load i64, ptr %retval, align 8, !dbg !4650
  ret i64 %38, !dbg !4650
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @compat_ptr_ioctl(ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #5 align 16 !dbg !4651 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !4655, metadata !DIExpression()), !dbg !4656
  %0 = load ptr, ptr %f.addr, align 8, !dbg !4657
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !4658
  %1 = load ptr, ptr %f_inode, align 8, !dbg !4658
  ret ptr %1, !dbg !4659
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ns_get_owner(ptr noundef %ns) #5 align 16 !dbg !4660 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4662, metadata !DIExpression()), !dbg !4663
  %call = call ptr @ERR_PTR(i64 noundef -1) #14, !dbg !4664
  ret ptr %call, !dbg !4665
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid_munged(ptr noundef %to, i32 %kuid.coerce) #5 align 16 !dbg !4666 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %uid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4670, metadata !DIExpression()), !dbg !4673
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !4671, metadata !DIExpression()), !dbg !4674
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #13, !dbg !4675
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4672, metadata !DIExpression()), !dbg !4676
  %0 = load ptr, ptr %to.addr, align 8, !dbg !4677
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !4678
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !4678
  %call = call i32 @from_kuid(ptr noundef %0, i32 %1) #14, !dbg !4678
  store i32 %call, ptr %uid, align 4, !dbg !4676
  %2 = load i32, ptr %uid, align 4, !dbg !4679
  %cmp = icmp eq i32 %2, -1, !dbg !4681
  br i1 %cmp, label %if.then, label %if.end, !dbg !4682

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowuid, align 4, !dbg !4683
  store i32 %3, ptr %uid, align 4, !dbg !4684
  br label %if.end, !dbg !4685

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %uid, align 4, !dbg !4686
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #13, !dbg !4687
  ret i32 %4, !dbg !4688
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @current_user_ns() #5 align 16 !dbg !4689 {
entry:
  ret ptr @init_user_ns, !dbg !4692
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #5 align 16 !dbg !4693 {
entry:
  ret void, !dbg !4695
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #11

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #5 align 16 !dbg !4696 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4701, metadata !DIExpression()), !dbg !4705
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4702, metadata !DIExpression()), !dbg !4706
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !4703, metadata !DIExpression()), !dbg !4707
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !4704, metadata !DIExpression()), !dbg !4708
  ret void, !dbg !4709
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !4710 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4714, metadata !DIExpression()), !dbg !4715
  %0 = load i64, ptr %error.addr, align 8, !dbg !4716
  %1 = inttoptr i64 %0 to ptr, !dbg !4717
  ret ptr %1, !dbg !4718
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid(ptr noundef %to, i32 %kuid.coerce) #5 align 16 !dbg !4719 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4721, metadata !DIExpression()), !dbg !4723
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !4722, metadata !DIExpression()), !dbg !4724
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !4725
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !4725
  %call = call i32 @__kuid_val(i32 %0) #14, !dbg !4725
  ret i32 %call, !dbg !4726
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #5 align 16 !dbg !4727 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4731, metadata !DIExpression()), !dbg !4732
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4733
  %0 = load i32, ptr %val, align 4, !dbg !4733
  ret i32 %0, !dbg !4734
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nsfs_init_fs_context(ptr noundef %fc) #1 align 16 !dbg !4735 {
entry:
  %retval = alloca i32, align 4
  %fc.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fc, ptr %fc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc.addr, metadata !4737, metadata !DIExpression()), !dbg !4747
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #13, !dbg !4748
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !4738, metadata !DIExpression()), !dbg !4749
  %0 = load ptr, ptr %fc.addr, align 8, !dbg !4750
  %call = call ptr @init_pseudo(ptr noundef %0, i64 noundef 1853056627) #14, !dbg !4751
  store ptr %call, ptr %ctx, align 8, !dbg !4749
  %1 = load ptr, ptr %ctx, align 8, !dbg !4752
  %tobool = icmp ne ptr %1, null, !dbg !4752
  br i1 %tobool, label %if.end, label %if.then, !dbg !4754

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4755
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4755

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ctx, align 8, !dbg !4756
  %ops = getelementptr inbounds %struct.pseudo_fs_context, ptr %2, i32 0, i32 0, !dbg !4757
  store ptr @nsfs_ops, ptr %ops, align 8, !dbg !4758
  %3 = load ptr, ptr %ctx, align 8, !dbg !4759
  %dops = getelementptr inbounds %struct.pseudo_fs_context, ptr %3, i32 0, i32 2, !dbg !4760
  store ptr @ns_dentry_operations, ptr %dops, align 8, !dbg !4761
  store i32 0, ptr %retval, align 4, !dbg !4762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4762

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #13, !dbg !4763
  %4 = load i32, ptr %retval, align 4, !dbg !4763
  ret i32 %4, !dbg !4763
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4764 dso_local ptr @init_pseudo(ptr noundef, i64 noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @nsfs_evict(ptr noundef %inode) #1 align 16 !dbg !4767 {
entry:
  %inode.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4769, metadata !DIExpression()), !dbg !4771
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #13, !dbg !4772
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !4770, metadata !DIExpression()), !dbg !4773
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4774
  %i_private = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47, !dbg !4775
  %1 = load ptr, ptr %i_private, align 8, !dbg !4775
  store ptr %1, ptr %ns, align 8, !dbg !4773
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !4776
  call void @clear_inode(ptr noundef %2) #14, !dbg !4777
  %3 = load ptr, ptr %ns, align 8, !dbg !4778
  %ops = getelementptr inbounds %struct.ns_common, ptr %3, i32 0, i32 1, !dbg !4779
  %4 = load ptr, ptr %ops, align 8, !dbg !4779
  %put = getelementptr inbounds %struct.proc_ns_operations, ptr %4, i32 0, i32 4, !dbg !4780
  %5 = load ptr, ptr %put, align 8, !dbg !4780
  %6 = load ptr, ptr %ns, align 8, !dbg !4781
  call void %5(ptr noundef %6) #14, !dbg !4778
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #13, !dbg !4782
  ret void, !dbg !4782
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nsfs_show_path(ptr noundef %seq, ptr noundef %dentry) #1 align 16 !dbg !4783 {
entry:
  %seq.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %ns_ops = alloca ptr, align 8
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !4785, metadata !DIExpression()), !dbg !4789
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4786, metadata !DIExpression()), !dbg !4790
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #13, !dbg !4791
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4787, metadata !DIExpression()), !dbg !4792
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4793
  %call = call ptr @d_inode(ptr noundef %0) #14, !dbg !4794
  store ptr %call, ptr %inode, align 8, !dbg !4792
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns_ops) #13, !dbg !4795
  call void @llvm.dbg.declare(metadata ptr %ns_ops, metadata !4788, metadata !DIExpression()), !dbg !4796
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !4797
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11, !dbg !4798
  %2 = load ptr, ptr %d_fsdata, align 8, !dbg !4798
  store ptr %2, ptr %ns_ops, align 8, !dbg !4796
  %3 = load ptr, ptr %seq.addr, align 8, !dbg !4799
  %4 = load ptr, ptr %ns_ops, align 8, !dbg !4800
  %name = getelementptr inbounds %struct.proc_ns_operations, ptr %4, i32 0, i32 0, !dbg !4801
  %5 = load ptr, ptr %name, align 8, !dbg !4801
  %6 = load ptr, ptr %inode, align 8, !dbg !4802
  %i_ino = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 12, !dbg !4803
  %7 = load i64, ptr %i_ino, align 8, !dbg !4803
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef @.str.2, ptr noundef %5, i64 noundef %7) #14, !dbg !4804
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns_ops) #13, !dbg !4805
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #13, !dbg !4805
  ret i32 0, !dbg !4806
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4807 dso_local void @clear_inode(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4808 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #0

attributes #0 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #12 = { nocallback nounwind }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { nounwind memory(none) }
attributes #16 = { cold noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!3769}
!llvm.module.flags = !{!3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777}
!llvm.ident = !{!3778}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ns_dentry_operations", scope: !2, file: !3, line: 45, type: !1724, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/.nsfs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/nsfs\22 -D KBUILD_BASENAME=\22nsfs\22 -D KBUILD_MODNAME=\22nsfs\22 -D __KBUILD_MODNAME=kmod_nsfs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/nsfs.ll fs/nsfs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !198, globals: !3743, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/nsfs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0bbdbadce614beaa0bbada420fdc1b6e")
!4 = !{!5, !14, !19, !25, !32, !40, !56, !63, !159, !168, !173, !182, !187, !193}
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !33, line: 68, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!34 = !{!35, !36, !37, !38, !39}
!35 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!36 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!37 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!38 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!39 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !41, line: 1325, baseType: !7, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!43 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!44 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!45 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!46 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!47 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!48 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!49 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!50 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!51 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!52 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!53 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!54 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!55 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !57, line: 51, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!58 = !{!59, !60, !61, !62}
!59 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!60 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!61 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!62 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !65, file: !64, line: 147, baseType: !7, size: 32, elements: !156)
!64 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !64, line: 135, size: 512, elements: !66)
!66 = !{!67, !71, !73, !75, !79, !80, !96, !154, !155}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !65, file: !64, line: 136, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !65, file: !64, line: 137, baseType: !72, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !65, file: !64, line: 138, baseType: !74, size: 32, offset: 128)
!74 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !65, file: !64, line: 139, baseType: !76, size: 16, offset: 160)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !77, line: 24, baseType: !78)
!77 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!78 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !65, file: !64, line: 150, baseType: !63, size: 32, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !65, file: !64, line: 151, baseType: !81, size: 64, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !64, line: 64, baseType: !83)
!83 = !DISubroutineType(types: !84)
!84 = !{!74, !85, !74, !72, !86, !92}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 61, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !89, line: 72, baseType: !90)
!89 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !89, line: 16, baseType: !91)
!91 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !77, line: 52, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !89, line: 88, baseType: !95)
!95 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !65, file: !64, line: 152, baseType: !97, size: 64, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !64, line: 117, size: 256, elements: !99)
!99 = !{!100, !105}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !98, file: !64, line: 118, baseType: !101, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !77, line: 174, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 172, size: 32, elements: !103)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !102, file: !77, line: 173, baseType: !74, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !98, file: !64, line: 119, baseType: !106, size: 192, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !107, line: 41, baseType: !108)
!107 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !107, line: 37, size: 192, elements: !109)
!109 = !{!110, !148}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !108, file: !107, line: 38, baseType: !111, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !112, line: 29, baseType: !113)
!112 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !112, line: 17, size: 32, elements: !114)
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_member, scope: !113, file: !112, line: 18, baseType: !116, size: 32)
!116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !113, file: !112, line: 18, size: 32, elements: !117)
!117 = !{!118}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !116, file: !112, line: 19, baseType: !119, size: 32)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !120, line: 14, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !119, file: !120, line: 15, baseType: !123, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !124, line: 44, baseType: !125)
!124 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !124, line: 14, size: 32, elements: !126)
!126 = !{!127}
!127 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !124, line: 15, baseType: !128, size: 32)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !125, file: !124, line: 15, size: 32, elements: !129)
!129 = !{!130, !131, !141}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !128, file: !124, line: 16, baseType: !101, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, scope: !128, file: !124, line: 24, baseType: !132, size: 16)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !124, line: 24, size: 16, elements: !133)
!133 = !{!134, !140}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !132, file: !124, line: 25, baseType: !135, size: 8)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !136, line: 17, baseType: !137)
!136 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !138, line: 21, baseType: !139)
!138 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!139 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !132, file: !124, line: 26, baseType: !135, size: 8, offset: 8)
!141 = !DIDerivedType(tag: DW_TAG_member, scope: !128, file: !124, line: 28, baseType: !142, size: 32)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !124, line: 28, size: 32, elements: !143)
!143 = !{!144, !147}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !142, file: !124, line: 29, baseType: !145, size: 16)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !136, line: 19, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !138, line: 24, baseType: !78)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !142, file: !124, line: 30, baseType: !145, size: 16, offset: 16)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !108, file: !107, line: 39, baseType: !149, size: 128, offset: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !77, line: 190, size: 128, elements: !150)
!150 = !{!151, !153}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !77, line: 191, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !149, file: !77, line: 191, baseType: !152, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !65, file: !64, line: 153, baseType: !72, size: 64, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !65, file: !64, line: 154, baseType: !72, size: 64, offset: 448)
!156 = !{!157, !158}
!157 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!158 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_value_type", file: !160, line: 51, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/fs_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58f4e15024eca636c2bdb50c4534d2c5")
!161 = !{!162, !163, !164, !165, !166, !167}
!162 = !DIEnumerator(name: "fs_value_is_undefined", value: 0)
!163 = !DIEnumerator(name: "fs_value_is_flag", value: 1)
!164 = !DIEnumerator(name: "fs_value_is_string", value: 2)
!165 = !DIEnumerator(name: "fs_value_is_blob", value: 3)
!166 = !DIEnumerator(name: "fs_value_is_filename", value: 4)
!167 = !DIEnumerator(name: "fs_value_is_file", value: 5)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_purpose", file: !160, line: 29, baseType: !7, size: 32, elements: !169)
!169 = !{!170, !171, !172}
!170 = !DIEnumerator(name: "FS_CONTEXT_FOR_MOUNT", value: 0)
!171 = !DIEnumerator(name: "FS_CONTEXT_FOR_SUBMOUNT", value: 1)
!172 = !DIEnumerator(name: "FS_CONTEXT_FOR_RECONFIGURE", value: 2)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_phase", file: !160, line: 38, baseType: !7, size: 32, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180, !181}
!175 = !DIEnumerator(name: "FS_CONTEXT_CREATE_PARAMS", value: 0)
!176 = !DIEnumerator(name: "FS_CONTEXT_CREATING", value: 1)
!177 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_MOUNT", value: 2)
!178 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_RECONF", value: 3)
!179 = !DIEnumerator(name: "FS_CONTEXT_RECONF_PARAMS", value: 4)
!180 = !DIEnumerator(name: "FS_CONTEXT_RECONFIGURING", value: 5)
!181 = !DIEnumerator(name: "FS_CONTEXT_FAILED", value: 6)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !183, line: 2052, baseType: !7, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!184 = !{!185, !186}
!185 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!186 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !188, line: 54, baseType: !7, size: 32, elements: !189)
!188 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!189 = !{!190, !191, !192}
!190 = !DIEnumerator(name: "USRQUOTA", value: 0)
!191 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!192 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !194, line: 10, baseType: !7, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!195 = !{!196, !197}
!196 = !DIEnumerator(name: "false", value: 0)
!197 = !DIEnumerator(name: "true", value: 1)
!198 = !{!199, !72, !3734, !919, !91, !3736, !3739, !1068, !3741, !495, !494, !444, !3742, !219}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !202, line: 110, size: 1472, elements: !203)
!202 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!203 = !{!204, !213, !221, !228, !229, !230, !231, !232, !233, !234, !235, !244, !245, !246, !247, !248, !249, !402, !403, !404, !405, !406, !443, !3720, !3721, !3729}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !201, file: !202, line: 111, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !206, line: 13, baseType: !207)
!206 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !77, line: 181, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 179, size: 64, elements: !209)
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !208, file: !77, line: 180, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !136, line: 22, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !138, line: 30, baseType: !95)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !201, file: !202, line: 112, baseType: !214, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !215, line: 23, baseType: !216)
!215 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !215, line: 21, size: 32, elements: !217)
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !216, file: !215, line: 22, baseType: !219, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !77, line: 37, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !89, line: 49, baseType: !7)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !201, file: !202, line: 113, baseType: !222, size: 32, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !215, line: 28, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !215, line: 26, size: 32, elements: !224)
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !223, file: !215, line: 27, baseType: !226, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !77, line: 38, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !89, line: 50, baseType: !7)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !201, file: !202, line: 114, baseType: !214, size: 32, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !201, file: !202, line: 115, baseType: !222, size: 32, offset: 160)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !201, file: !202, line: 116, baseType: !214, size: 32, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !201, file: !202, line: 117, baseType: !222, size: 32, offset: 224)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !201, file: !202, line: 118, baseType: !214, size: 32, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !201, file: !202, line: 119, baseType: !222, size: 32, offset: 288)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !201, file: !202, line: 120, baseType: !7, size: 32, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !201, file: !202, line: 121, baseType: !236, size: 64, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !237, line: 24, baseType: !238)
!237 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 24, size: 64, elements: !239)
!239 = !{!240}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !238, file: !237, line: 24, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !136, line: 23, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !138, line: 31, baseType: !243)
!243 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !201, file: !202, line: 122, baseType: !236, size: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !201, file: !202, line: 123, baseType: !236, size: 64, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !201, file: !202, line: 124, baseType: !236, size: 64, offset: 576)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !201, file: !202, line: 125, baseType: !236, size: 64, offset: 640)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !201, file: !202, line: 127, baseType: !139, size: 8, offset: 704)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !201, file: !202, line: 129, baseType: !250, size: 64, offset: 768)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !252, line: 195, size: 1728, elements: !253)
!252 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!253 = !{!254, !260, !265, !277, !291, !294, !295, !302, !303, !304, !305, !310, !311, !312, !314, !315, !364, !387}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !251, file: !252, line: 196, baseType: !255, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !256, line: 113, baseType: !257)
!256 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !256, line: 111, size: 32, elements: !258)
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !257, file: !256, line: 112, baseType: !101, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !251, file: !252, line: 197, baseType: !261, size: 32, offset: 32)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !252, line: 28, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !77, line: 104, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !136, line: 20, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !138, line: 26, baseType: !74)
!265 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !252, line: 198, baseType: !266, size: 192, offset: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !251, file: !252, line: 198, size: 192, elements: !267)
!267 = !{!268, !269}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !266, file: !252, line: 199, baseType: !149, size: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !266, file: !252, line: 200, baseType: !270, size: 192, align: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !271, line: 5, size: 192, align: 64, elements: !272)
!271 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!272 = !{!273, !274, !276}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !270, file: !271, line: 6, baseType: !91, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !270, file: !271, line: 7, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !270, file: !271, line: 8, baseType: !275, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !251, file: !252, line: 205, baseType: !278, size: 320, offset: 256)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !279, line: 48, size: 320, elements: !280)
!279 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!280 = !{!281, !282, !283, !288, !290}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !278, file: !279, line: 49, baseType: !205, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !278, file: !279, line: 55, baseType: !205, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !278, file: !279, line: 57, baseType: !284, size: 32, offset: 128)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !285, line: 15, size: 32, elements: !286)
!285 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !284, file: !285, line: 20, baseType: !101, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !278, file: !279, line: 59, baseType: !289, size: 32, offset: 160)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !120, line: 23, baseType: !119)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !278, file: !279, line: 60, baseType: !149, size: 128, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !251, file: !252, line: 206, baseType: !292, size: 64, offset: 576)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !252, line: 206, flags: DIFlagFwdDecl)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !251, file: !252, line: 207, baseType: !72, size: 64, offset: 640)
!295 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !252, line: 208, baseType: !296, size: 64, offset: 704)
!296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !251, file: !252, line: 208, size: 64, elements: !297)
!297 = !{!298, !301}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !296, file: !252, line: 209, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !300, line: 8, baseType: !212)
!300 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!301 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !296, file: !252, line: 210, baseType: !299, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !251, file: !252, line: 212, baseType: !299, size: 64, offset: 768)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !251, file: !252, line: 213, baseType: !214, size: 32, offset: 832)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !251, file: !252, line: 214, baseType: !222, size: 32, offset: 864)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !251, file: !252, line: 215, baseType: !306, size: 32, offset: 896)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !252, line: 31, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !77, line: 110, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !136, line: 21, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !138, line: 27, baseType: !7)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !251, file: !252, line: 216, baseType: !78, size: 16, offset: 928)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !251, file: !252, line: 217, baseType: !78, size: 16, offset: 944)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !251, file: !252, line: 221, baseType: !313, size: 16, offset: 960)
!313 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !251, file: !252, line: 228, baseType: !91, size: 64, offset: 1024)
!315 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !252, line: 245, baseType: !316, size: 320, offset: 1088)
!316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !251, file: !252, line: 245, size: 320, elements: !317)
!317 = !{!318, !355}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !316, file: !252, line: 246, baseType: !319, size: 320)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !252, line: 114, size: 320, elements: !320)
!320 = !{!321, !322, !334, !337, !354}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !319, file: !252, line: 116, baseType: !91, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, scope: !319, file: !252, line: 117, baseType: !323, size: 64, offset: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !319, file: !252, line: 117, size: 64, elements: !324)
!324 = !{!325, !333}
!325 = !DIDerivedType(tag: DW_TAG_member, scope: !323, file: !252, line: 118, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !323, file: !252, line: 118, size: 64, elements: !327)
!327 = !{!328, !329}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !326, file: !252, line: 120, baseType: !145, size: 16)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !326, file: !252, line: 121, baseType: !330, size: 48, offset: 16)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 48, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 6)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !323, file: !252, line: 127, baseType: !91, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !319, file: !252, line: 129, baseType: !335, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !252, line: 102, flags: DIFlagFwdDecl)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !319, file: !252, line: 130, baseType: !338, size: 64, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !252, line: 108, size: 192, elements: !340)
!340 = !{!341, !350, !351}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !339, file: !252, line: 109, baseType: !342, size: 128, align: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !77, line: 232, size: 128, align: 64, elements: !343)
!343 = !{!344, !346}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !77, line: 233, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !342, file: !77, line: 234, baseType: !347, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !345}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !339, file: !252, line: 110, baseType: !255, size: 32, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !339, file: !252, line: 111, baseType: !352, size: 8, offset: 160)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !77, line: 35, baseType: !353)
!353 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !319, file: !252, line: 131, baseType: !68, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_member, scope: !316, file: !252, line: 247, baseType: !356, size: 320)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !316, file: !252, line: 247, size: 320, elements: !357)
!357 = !{!358, !359, !360, !361, !362}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !356, file: !252, line: 248, baseType: !91, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !356, file: !252, line: 249, baseType: !91, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !356, file: !252, line: 250, baseType: !335, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !356, file: !252, line: 251, baseType: !338, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !356, file: !252, line: 252, baseType: !363, size: 64, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !252, line: 260, baseType: !365, size: 256, offset: 1408)
!365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !251, file: !252, line: 260, size: 256, elements: !366)
!366 = !{!367, !375}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !365, file: !252, line: 261, baseType: !368, size: 256)
!368 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !252, line: 134, size: 256, elements: !369)
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !368, file: !252, line: 135, baseType: !72, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !368, file: !252, line: 136, baseType: !372, size: 256)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 256, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 4)
!375 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !252, line: 262, baseType: !376, size: 256)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !365, file: !252, line: 262, size: 256, elements: !377)
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !376, file: !252, line: 264, baseType: !149, size: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !376, file: !252, line: 265, baseType: !380, size: 128, offset: 128)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !381, line: 22, size: 128, elements: !382)
!381 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!382 = !{!383, !386}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !380, file: !381, line: 23, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !381, line: 23, flags: DIFlagFwdDecl)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !380, file: !381, line: 24, baseType: !91, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !251, file: !252, line: 280, baseType: !388, size: 64, offset: 1664)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !252, line: 176, size: 192, elements: !390)
!390 = !{!391, !400, !401}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !389, file: !252, line: 177, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !252, line: 171, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!74, !250, !396, !398, !250}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !389, file: !252, line: 178, baseType: !250, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !389, file: !252, line: 179, baseType: !335, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !201, file: !202, line: 130, baseType: !250, size: 64, offset: 832)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !201, file: !202, line: 131, baseType: !250, size: 64, offset: 896)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !201, file: !202, line: 132, baseType: !250, size: 64, offset: 960)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !201, file: !202, line: 135, baseType: !72, size: 64, offset: 1024)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !201, file: !202, line: 137, baseType: !407, size: 64, offset: 1088)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !409, line: 14, size: 1088, elements: !410)
!409 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!410 = !{!411, !412, !421, !422, !423, !430, !431, !432}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !408, file: !409, line: 15, baseType: !255, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !408, file: !409, line: 17, baseType: !413, size: 320, offset: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !414, line: 22, size: 320, elements: !415)
!414 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!415 = !{!416, !417, !418, !419}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !413, file: !414, line: 23, baseType: !289, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !413, file: !414, line: 24, baseType: !211, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !413, file: !414, line: 26, baseType: !149, size: 128, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !413, file: !414, line: 28, baseType: !420, size: 64, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !408, file: !409, line: 19, baseType: !91, size: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !408, file: !409, line: 20, baseType: !205, size: 64, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !408, file: !409, line: 23, baseType: !424, size: 128, offset: 512)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !77, line: 198, size: 128, elements: !425)
!425 = !{!426, !428}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !424, file: !77, line: 199, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !424, file: !77, line: 199, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !408, file: !409, line: 24, baseType: !214, size: 32, offset: 640)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !408, file: !409, line: 29, baseType: !205, size: 64, offset: 704)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !408, file: !409, line: 36, baseType: !433, size: 320, offset: 768)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !434, line: 15, size: 320, elements: !435)
!434 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!435 = !{!436, !437, !438, !439, !440, !441, !442}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !433, file: !434, line: 16, baseType: !289, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !433, file: !434, line: 18, baseType: !74, size: 32, offset: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !433, file: !434, line: 19, baseType: !74, size: 32, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !433, file: !434, line: 20, baseType: !74, size: 32, offset: 96)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !433, file: !434, line: 21, baseType: !74, size: 32, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !433, file: !434, line: 22, baseType: !91, size: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !433, file: !434, line: 23, baseType: !91, size: 64, offset: 256)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !201, file: !202, line: 138, baseType: !444, size: 64, offset: 1152)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !446, line: 68, size: 4800, elements: !447)
!446 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!447 = !{!448, !470, !471, !472, !473, !474, !475, !476, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3701, !3702, !3716, !3718}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !445, file: !446, line: 69, baseType: !449, size: 576)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !446, line: 23, size: 576, elements: !450)
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !449, file: !446, line: 24, baseType: !308, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, scope: !449, file: !446, line: 25, baseType: !453, size: 512, offset: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !449, file: !446, line: 25, size: 512, elements: !454)
!454 = !{!455, !464}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !453, file: !446, line: 26, baseType: !456, size: 480)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 480, elements: !462)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !446, line: 17, size: 96, elements: !458)
!458 = !{!459, !460, !461}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !457, file: !446, line: 18, baseType: !308, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !457, file: !446, line: 19, baseType: !308, size: 32, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !457, file: !446, line: 20, baseType: !308, size: 32, offset: 64)
!462 = !{!463}
!463 = !DISubrange(count: 5)
!464 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !446, line: 27, baseType: !465, size: 128)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !453, file: !446, line: 27, size: 128, elements: !466)
!466 = !{!467, !469}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !465, file: !446, line: 28, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !465, file: !446, line: 29, baseType: !468, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !445, file: !446, line: 70, baseType: !449, size: 576, offset: 576)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !445, file: !446, line: 71, baseType: !449, size: 576, offset: 1152)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !445, file: !446, line: 72, baseType: !444, size: 64, offset: 1728)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !445, file: !446, line: 73, baseType: !74, size: 32, offset: 1792)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !445, file: !446, line: 74, baseType: !214, size: 32, offset: 1824)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !445, file: !446, line: 75, baseType: !222, size: 32, offset: 1856)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !445, file: !446, line: 76, baseType: !477, size: 192, offset: 1920)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !478, line: 9, size: 192, elements: !479)
!478 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!479 = !{!480, !481, !3634, !3635}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !477, file: !478, line: 10, baseType: !205, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !477, file: !478, line: 11, baseType: !482, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !485, line: 16, size: 512, elements: !486)
!485 = !DIFile(filename: "./include/linux/proc_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10d8d049c3f8fd93040e0b5385a478ba")
!486 = !{!487, !488, !489, !490, !3611, !3615, !3626, !3630}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !484, file: !485, line: 17, baseType: !68, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "real_ns_name", scope: !484, file: !485, line: 18, baseType: !68, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !484, file: !485, line: 19, baseType: !74, size: 32, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !484, file: !485, line: 20, baseType: !491, size: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !497, line: 746, size: 58368, elements: !498)
!497 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!498 = !{!499, !507, !508, !509, !510, !511, !512, !513, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !584, !595, !695, !699, !702, !733, !734, !735, !736, !747, !749, !750, !751, !752, !753, !754, !765, !766, !769, !770, !771, !772, !773, !774, !775, !776, !783, !784, !791, !792, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2760, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2775, !2776, !2777, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2809, !2815, !2816, !2817, !2818, !2819, !2821, !2824, !2831, !2836, !2839, !2842, !2845, !2869, !3010, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3052, !3053, !3054, !3063, !3071, !3072, !3073, !3074, !3075, !3080, !3081, !3082, !3085, !3086, !3089, !3092, !3095, !3103, !3106, !3107, !3193, !3194, !3195, !3196, !3197, !3203, !3204, !3205, !3206, !3209, !3210, !3213, !3216, !3217, !3220, !3221, !3222, !3225, !3226, !3227, !3228, !3229, !3230, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3262, !3263, !3269, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3281, !3353, !3355, !3356, !3357, !3358, !3359, !3371, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3388, !3389, !3390}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !496, file: !497, line: 752, baseType: !500, size: 192)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !501, line: 56, size: 192, elements: !502)
!501 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!502 = !{!503, !504, !505, !506}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !501, line: 57, baseType: !91, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !500, file: !501, line: 58, baseType: !91, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !500, file: !501, line: 59, baseType: !308, size: 32, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !500, file: !501, line: 61, baseType: !308, size: 32, offset: 160)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !496, file: !497, line: 754, baseType: !7, size: 32, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !496, file: !497, line: 767, baseType: !72, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !496, file: !497, line: 768, baseType: !255, size: 32, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !496, file: !497, line: 770, baseType: !7, size: 32, offset: 352)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !496, file: !497, line: 771, baseType: !7, size: 32, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !496, file: !497, line: 774, baseType: !74, size: 32, offset: 416)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !496, file: !497, line: 775, baseType: !514, size: 128, offset: 448)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !515, line: 58, size: 128, elements: !516)
!515 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!516 = !{!517, !523, !528, !529}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !514, file: !515, line: 59, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !519, line: 60, size: 64, elements: !520)
!519 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !518, file: !519, line: 61, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !515, line: 60, baseType: !524, size: 32, offset: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !514, file: !515, line: 60, size: 32, elements: !525)
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !524, file: !515, line: 61, baseType: !7, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !524, file: !515, line: 62, baseType: !101, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !514, file: !515, line: 65, baseType: !145, size: 16, offset: 96)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !514, file: !515, line: 65, baseType: !145, size: 16, offset: 112)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !496, file: !497, line: 776, baseType: !7, size: 32, offset: 576)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !496, file: !497, line: 777, baseType: !91, size: 64, offset: 640)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !496, file: !497, line: 778, baseType: !495, size: 64, offset: 704)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !496, file: !497, line: 787, baseType: !74, size: 32, offset: 768)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !496, file: !497, line: 788, baseType: !74, size: 32, offset: 800)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !496, file: !497, line: 790, baseType: !74, size: 32, offset: 832)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !496, file: !497, line: 792, baseType: !74, size: 32, offset: 864)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !496, file: !497, line: 793, baseType: !74, size: 32, offset: 896)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !496, file: !497, line: 794, baseType: !74, size: 32, offset: 928)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !496, file: !497, line: 795, baseType: !7, size: 32, offset: 960)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !496, file: !497, line: 797, baseType: !541, size: 2048, offset: 1024)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !497, line: 551, size: 2048, elements: !542)
!542 = !{!543, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !563, !566, !567, !568}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !541, file: !497, line: 553, baseType: !544, size: 128)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !497, line: 411, size: 128, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !544, file: !497, line: 412, baseType: !91, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !544, file: !497, line: 413, baseType: !308, size: 32, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !541, file: !497, line: 554, baseType: !270, size: 192, align: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !541, file: !497, line: 555, baseType: !241, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !541, file: !497, line: 556, baseType: !241, size: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !541, file: !497, line: 558, baseType: !149, size: 128, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !541, file: !497, line: 559, baseType: !7, size: 32, offset: 576)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !541, file: !497, line: 561, baseType: !241, size: 64, offset: 640)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !541, file: !497, line: 562, baseType: !241, size: 64, offset: 704)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !541, file: !497, line: 563, baseType: !241, size: 64, offset: 768)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !541, file: !497, line: 564, baseType: !241, size: 64, offset: 832)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !541, file: !497, line: 565, baseType: !211, size: 64, offset: 896)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !541, file: !497, line: 566, baseType: !241, size: 64, offset: 960)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !541, file: !497, line: 568, baseType: !241, size: 64, offset: 1024)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !541, file: !497, line: 571, baseType: !74, size: 32, offset: 1088)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !541, file: !497, line: 572, baseType: !562, size: 64, offset: 1152)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !541, file: !497, line: 574, baseType: !564, size: 64, offset: 1216)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !497, line: 49, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !541, file: !497, line: 576, baseType: !564, size: 64, offset: 1280)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !541, file: !497, line: 578, baseType: !91, size: 64, offset: 1344)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !541, file: !497, line: 588, baseType: !569, size: 512, align: 512, offset: 1536)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !497, line: 497, size: 512, align: 512, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !569, file: !497, line: 498, baseType: !241, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !569, file: !497, line: 499, baseType: !241, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !569, file: !497, line: 500, baseType: !241, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !569, file: !497, line: 501, baseType: !308, size: 32, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !569, file: !497, line: 502, baseType: !308, size: 32, offset: 224)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !569, file: !497, line: 503, baseType: !91, size: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !569, file: !497, line: 504, baseType: !91, size: 64, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !569, file: !497, line: 505, baseType: !91, size: 64, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !569, file: !497, line: 506, baseType: !580, size: 64, align: 64, offset: 448)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !497, line: 445, size: 64, align: 64, elements: !581)
!581 = !{!582, !583}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !580, file: !497, line: 446, baseType: !7, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !580, file: !497, line: 447, baseType: !7, size: 32, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !496, file: !497, line: 798, baseType: !585, size: 384, offset: 3072)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !497, line: 592, size: 384, elements: !586)
!586 = !{!587, !588, !589, !590, !591, !592, !593}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !585, file: !497, line: 593, baseType: !149, size: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !585, file: !497, line: 594, baseType: !91, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !585, file: !497, line: 595, baseType: !91, size: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !585, file: !497, line: 596, baseType: !7, size: 32, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !585, file: !497, line: 597, baseType: !78, size: 16, offset: 288)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !585, file: !497, line: 598, baseType: !78, size: 16, offset: 304)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !585, file: !497, line: 600, baseType: !594, size: 64, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !496, file: !497, line: 799, baseType: !596, size: 1792, offset: 3456)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !497, line: 610, size: 1792, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !692, !693}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !596, file: !497, line: 611, baseType: !270, size: 192, align: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !596, file: !497, line: 618, baseType: !241, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !596, file: !497, line: 619, baseType: !241, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !596, file: !497, line: 620, baseType: !241, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !596, file: !497, line: 621, baseType: !241, size: 64, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !596, file: !497, line: 622, baseType: !241, size: 64, offset: 448)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !596, file: !497, line: 629, baseType: !211, size: 64, offset: 512)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !596, file: !497, line: 630, baseType: !241, size: 64, offset: 576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !596, file: !497, line: 631, baseType: !7, size: 32, offset: 640)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !596, file: !497, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !596, file: !497, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !596, file: !497, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !596, file: !497, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !596, file: !497, line: 662, baseType: !612, size: 512, offset: 704)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !15, line: 118, size: 512, elements: !613)
!613 = !{!614, !622, !623, !628, !688, !689, !690, !691}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !612, file: !15, line: 119, baseType: !615, size: 256)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !616, line: 9, size: 256, elements: !617)
!616 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!617 = !{!618, !619}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !615, file: !616, line: 10, baseType: !270, size: 192, align: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !615, file: !616, line: 11, baseType: !620, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !621, line: 29, baseType: !211)
!621 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !612, file: !15, line: 120, baseType: !620, size: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !612, file: !15, line: 121, baseType: !624, size: 64, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!14, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !612, file: !15, line: 122, baseType: !629, size: 64, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !15, line: 159, size: 512, align: 512, elements: !631)
!631 = !{!632, !657, !658, !661, !671, !672, !683, !687}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !630, file: !15, line: 160, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !15, line: 215, size: 4608, align: 512, elements: !635)
!635 = !{!636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !634, file: !15, line: 216, baseType: !289, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !634, file: !15, line: 217, baseType: !7, size: 32, offset: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !634, file: !15, line: 218, baseType: !7, size: 32, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !634, file: !15, line: 219, baseType: !7, size: 32, offset: 96)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !634, file: !15, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !634, file: !15, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !634, file: !15, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !634, file: !15, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !634, file: !15, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !634, file: !15, line: 226, baseType: !7, size: 32, offset: 160)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !634, file: !15, line: 227, baseType: !78, size: 16, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !634, file: !15, line: 228, baseType: !78, size: 16, offset: 208)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !634, file: !15, line: 229, baseType: !7, size: 32, offset: 224)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !634, file: !15, line: 235, baseType: !620, size: 64, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !634, file: !15, line: 236, baseType: !627, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !634, file: !15, line: 237, baseType: !620, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !634, file: !15, line: 238, baseType: !627, size: 64, offset: 448)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !634, file: !15, line: 239, baseType: !654, size: 4096, align: 512, offset: 512)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 4096, align: 512, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 8)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !630, file: !15, line: 161, baseType: !7, size: 32, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !630, file: !15, line: 162, baseType: !659, size: 32, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !77, line: 32, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !89, line: 96, baseType: !74)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !630, file: !15, line: 163, baseType: !662, size: 32, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !663, line: 274, baseType: !664)
!663 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !663, line: 274, size: 32, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !664, file: !663, line: 274, baseType: !667, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !663, line: 69, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !663, line: 64, size: 32, elements: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !668, file: !663, line: 65, baseType: !7, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !630, file: !15, line: 164, baseType: !627, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !630, file: !15, line: 165, baseType: !673, size: 128, offset: 256)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !616, line: 14, size: 128, elements: !674)
!674 = !{!675}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !673, file: !616, line: 15, baseType: !676, size: 128)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !271, line: 26, size: 128, elements: !677)
!677 = !{!678, !682}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !676, file: !271, line: 27, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !271, line: 12, size: 64, elements: !680)
!680 = !{!681}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !679, file: !271, line: 13, baseType: !275, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !676, file: !271, line: 28, baseType: !275, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !630, file: !15, line: 166, baseType: !684, size: 64, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!620}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !630, file: !15, line: 167, baseType: !620, size: 64, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !612, file: !15, line: 123, baseType: !135, size: 8, offset: 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !612, file: !15, line: 124, baseType: !135, size: 8, offset: 456)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !612, file: !15, line: 125, baseType: !135, size: 8, offset: 464)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !612, file: !15, line: 126, baseType: !135, size: 8, offset: 472)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !596, file: !497, line: 671, baseType: !612, size: 512, offset: 1216)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !596, file: !497, line: 679, baseType: !694, size: 64, offset: 1728)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !496, file: !497, line: 800, baseType: !696, size: 64, offset: 5248)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !698)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !497, line: 800, flags: DIFlagFwdDecl)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !496, file: !497, line: 809, baseType: !700, size: 64, offset: 5312)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !497, line: 70, flags: DIFlagFwdDecl)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !496, file: !497, line: 825, baseType: !703, size: 2048, align: 512, offset: 5632)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !497, line: 509, size: 2048, align: 512, elements: !704)
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !703, file: !497, line: 511, baseType: !241, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !703, file: !497, line: 512, baseType: !241, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !703, file: !497, line: 513, baseType: !241, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !703, file: !497, line: 514, baseType: !241, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !703, file: !497, line: 515, baseType: !241, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !703, file: !497, line: 516, baseType: !241, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !703, file: !497, line: 518, baseType: !241, size: 64, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !703, file: !497, line: 519, baseType: !241, size: 64, offset: 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !703, file: !497, line: 520, baseType: !211, size: 64, offset: 512)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !703, file: !497, line: 522, baseType: !241, size: 64, offset: 576)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !703, file: !497, line: 523, baseType: !241, size: 64, offset: 640)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !703, file: !497, line: 524, baseType: !211, size: 64, offset: 704)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !703, file: !497, line: 526, baseType: !211, size: 64, offset: 768)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !703, file: !497, line: 527, baseType: !241, size: 64, offset: 832)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !703, file: !497, line: 529, baseType: !241, size: 64, offset: 896)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !703, file: !497, line: 530, baseType: !241, size: 64, offset: 960)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !703, file: !497, line: 531, baseType: !241, size: 64, offset: 1024)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !703, file: !497, line: 532, baseType: !241, size: 64, offset: 1088)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !703, file: !497, line: 533, baseType: !241, size: 64, offset: 1152)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !703, file: !497, line: 535, baseType: !241, size: 64, offset: 1216)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !703, file: !497, line: 536, baseType: !241, size: 64, offset: 1280)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !703, file: !497, line: 537, baseType: !241, size: 64, offset: 1344)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !703, file: !497, line: 538, baseType: !241, size: 64, offset: 1408)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !703, file: !497, line: 539, baseType: !241, size: 64, offset: 1472)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !703, file: !497, line: 540, baseType: !241, size: 64, offset: 1536)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !703, file: !497, line: 541, baseType: !241, size: 64, offset: 1600)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !703, file: !497, line: 542, baseType: !241, size: 64, offset: 1664)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !703, file: !497, line: 543, baseType: !241, size: 64, offset: 1728)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !496, file: !497, line: 833, baseType: !7, size: 32, offset: 7680)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !496, file: !497, line: 836, baseType: !7, size: 32, offset: 7712)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !496, file: !497, line: 837, baseType: !74, size: 32, offset: 7744)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !496, file: !497, line: 838, baseType: !737, size: 64, offset: 7808)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !740, line: 19, baseType: !741)
!740 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !740, line: 19, size: 64, elements: !742)
!742 = !{!743}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !741, file: !740, line: 19, baseType: !744, size: 64)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 64, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 1)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !496, file: !497, line: 839, baseType: !748, size: 64, offset: 7872)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !496, file: !497, line: 840, baseType: !739, size: 64, offset: 7936)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !496, file: !497, line: 841, baseType: !72, size: 64, offset: 8000)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !496, file: !497, line: 843, baseType: !78, size: 16, offset: 8064)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !496, file: !497, line: 845, baseType: !78, size: 16, offset: 8080)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !496, file: !497, line: 848, baseType: !74, size: 32, offset: 8096)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !496, file: !497, line: 849, baseType: !755, size: 32, offset: 8128)
!755 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !497, line: 718, size: 32, elements: !756)
!756 = !{!757, !764}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !755, file: !497, line: 724, baseType: !758, size: 32)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !755, file: !497, line: 719, size: 32, elements: !759)
!759 = !{!760, !761, !762, !763}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !758, file: !497, line: 720, baseType: !135, size: 8)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !758, file: !497, line: 721, baseType: !135, size: 8, offset: 8)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !758, file: !497, line: 722, baseType: !135, size: 8, offset: 16)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !758, file: !497, line: 723, baseType: !135, size: 8, offset: 24)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !755, file: !497, line: 725, baseType: !308, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !496, file: !497, line: 850, baseType: !149, size: 128, offset: 8192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !496, file: !497, line: 851, baseType: !767, size: 64, offset: 8320)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !497, line: 60, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !496, file: !497, line: 855, baseType: !91, size: 64, offset: 8384)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !496, file: !497, line: 856, baseType: !135, size: 8, offset: 8448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !496, file: !497, line: 857, baseType: !135, size: 8, offset: 8456)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !496, file: !497, line: 858, baseType: !74, size: 32, offset: 8480)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !496, file: !497, line: 859, baseType: !149, size: 128, offset: 8512)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !496, file: !497, line: 860, baseType: !74, size: 32, offset: 8640)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !496, file: !497, line: 861, baseType: !149, size: 128, offset: 8704)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !496, file: !497, line: 873, baseType: !777, size: 256, offset: 8832)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !497, line: 376, size: 256, elements: !778)
!778 = !{!779, !780, !781, !782}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !777, file: !497, line: 381, baseType: !91, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !777, file: !497, line: 384, baseType: !243, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !777, file: !497, line: 389, baseType: !243, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !777, file: !497, line: 392, baseType: !243, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !496, file: !497, line: 875, baseType: !149, size: 128, offset: 9088)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !496, file: !497, line: 877, baseType: !785, size: 320, offset: 9216)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !786, line: 86, size: 320, elements: !787)
!786 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!787 = !{!788, !789, !790}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !785, file: !786, line: 87, baseType: !74, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !785, file: !786, line: 88, baseType: !149, size: 128, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !785, file: !786, line: 89, baseType: !149, size: 128, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !496, file: !497, line: 878, baseType: !270, size: 192, align: 64, offset: 9536)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !496, file: !497, line: 881, baseType: !793, size: 64, offset: 9728)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !41, line: 733, size: 10240, elements: !795)
!795 = !{!796, !2679}
!796 = !DIDerivedType(tag: DW_TAG_member, scope: !794, file: !41, line: 734, baseType: !797, size: 10240)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !794, file: !41, line: 734, size: 10240, elements: !798)
!798 = !{!799, !803, !817, !2577, !2578, !2579, !2580, !2581, !2582, !2589, !2590, !2591, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2630, !2632, !2635, !2659, !2660, !2661, !2664, !2665, !2666, !2669, !2670, !2671, !2677, !2678}
!799 = !DIDerivedType(tag: DW_TAG_member, scope: !797, file: !41, line: 739, baseType: !800, size: 512, align: 512)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !797, file: !41, line: 739, size: 512, align: 512, elements: !801)
!801 = !{!802}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !800, file: !41, line: 747, baseType: !101, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !797, file: !41, line: 750, baseType: !804, size: 128, offset: 512)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !805, line: 218, size: 128, elements: !806)
!805 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!806 = !{!807, !815, !816}
!807 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !805, line: 219, baseType: !808, size: 32)
!808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !804, file: !805, line: 219, size: 32, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !808, file: !805, line: 220, baseType: !111, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !808, file: !805, line: 221, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !805, line: 197, baseType: !813)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !805, line: 197, elements: !814)
!814 = !{}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !804, file: !805, line: 223, baseType: !7, size: 32, offset: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !804, file: !805, line: 224, baseType: !72, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !797, file: !41, line: 752, baseType: !818, size: 64, offset: 640)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!91, !821, !91, !91, !91, !91}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !183, line: 994, size: 1856, align: 64, elements: !823)
!823 = !{!824, !830, !831, !833, !834, !842, !843, !844, !899, !900, !909, !2567, !2568, !2569, !2570, !2571, !2572, !2574, !2575, !2576}
!824 = !DIDerivedType(tag: DW_TAG_member, scope: !822, file: !183, line: 995, baseType: !825, size: 128)
!825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !822, file: !183, line: 995, size: 128, elements: !826)
!826 = !{!827, !828, !829}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !825, file: !183, line: 996, baseType: !518, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !825, file: !183, line: 997, baseType: !342, size: 128, align: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !825, file: !183, line: 998, baseType: !7, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !822, file: !183, line: 1005, baseType: !111, size: 32, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !822, file: !183, line: 1006, baseType: !832, size: 32, offset: 160)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !77, line: 156, baseType: !7)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !822, file: !183, line: 1007, baseType: !205, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !822, file: !183, line: 1008, baseType: !835, size: 256, offset: 256)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !836, line: 66, size: 256, elements: !837)
!836 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!837 = !{!838, !839, !840, !841}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !835, file: !836, line: 67, baseType: !205, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !835, file: !836, line: 68, baseType: !289, size: 32, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !835, file: !836, line: 70, baseType: !284, size: 32, offset: 96)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !835, file: !836, line: 72, baseType: !149, size: 128, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !822, file: !183, line: 1009, baseType: !93, size: 64, offset: 512)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !822, file: !183, line: 1010, baseType: !7, size: 32, offset: 576)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !822, file: !183, line: 1011, baseType: !845, size: 256, offset: 640)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !183, line: 948, size: 256, elements: !846)
!846 = !{!847, !870, !895, !896, !897, !898}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !845, file: !183, line: 949, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !849, line: 34, baseType: !850)
!849 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !849, line: 25, size: 64, elements: !851)
!851 = !{!852}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !850, file: !849, line: 26, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !854, line: 27, baseType: !855)
!854 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !854, line: 13, size: 64, elements: !856)
!856 = !{!857, !869}
!857 = !DIDerivedType(tag: DW_TAG_member, scope: !855, file: !854, line: 14, baseType: !858, size: 32)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !855, file: !854, line: 14, size: 32, elements: !859)
!859 = !{!860, !861}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !858, file: !854, line: 15, baseType: !101, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !854, line: 16, baseType: !862, size: 32)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !858, file: !854, line: 16, size: 32, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !862, file: !854, line: 18, baseType: !135, size: 8)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !862, file: !854, line: 19, baseType: !866, size: 24, offset: 8)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 24, elements: !867)
!867 = !{!868}
!868 = !DISubrange(count: 3)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !855, file: !854, line: 26, baseType: !123, size: 32, offset: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !845, file: !183, line: 950, baseType: !871, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !873)
!873 = !{!874, !875, !876, !877, !882, !883, !884, !885}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !872, file: !6, line: 61, baseType: !255, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !872, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !872, file: !6, line: 63, baseType: !111, size: 32, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !872, file: !6, line: 65, baseType: !878, size: 256, offset: 128)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !879, size: 256, elements: !373)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !77, line: 194, size: 64, elements: !880)
!880 = !{!881}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !879, file: !77, line: 195, baseType: !427, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !872, file: !6, line: 66, baseType: !879, size: 64, offset: 384)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !872, file: !6, line: 68, baseType: !106, size: 192, offset: 448)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !872, file: !6, line: 69, baseType: !342, size: 128, align: 64, offset: 640)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !872, file: !6, line: 70, baseType: !886, offset: 768)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !887, elements: !893)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !887, file: !6, line: 55, baseType: !74, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !887, file: !6, line: 56, baseType: !891, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!893 = !{!894}
!894 = !DISubrange(count: -1)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !845, file: !183, line: 951, baseType: !5, size: 32, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !845, file: !183, line: 952, baseType: !214, size: 32, offset: 160)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !845, file: !183, line: 952, baseType: !214, size: 32, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !845, file: !183, line: 953, baseType: !74, size: 32, offset: 224)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !822, file: !183, line: 1012, baseType: !199, size: 64, offset: 896)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !822, file: !183, line: 1013, baseType: !901, size: 256, offset: 960)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !183, line: 970, size: 256, elements: !902)
!902 = !{!903, !904, !905, !906, !907, !908}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !901, file: !183, line: 971, baseType: !91, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !901, file: !183, line: 972, baseType: !7, size: 32, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !901, file: !183, line: 973, baseType: !7, size: 32, offset: 96)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !901, file: !183, line: 974, baseType: !7, size: 32, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !901, file: !183, line: 975, baseType: !7, size: 32, offset: 160)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !901, file: !183, line: 976, baseType: !93, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !822, file: !183, line: 1014, baseType: !910, size: 128, offset: 1216)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !911, line: 8, size: 128, elements: !912)
!911 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!912 = !{!913, !2566}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !910, file: !911, line: 9, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !916, line: 70, size: 256, elements: !917)
!916 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!917 = !{!918, !2563, !2564, !2565}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !915, file: !916, line: 71, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !921, line: 82, size: 1536, elements: !922)
!921 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!922 = !{!923, !924, !929, !937, !938, !953, !2530, !2532, !2545, !2546, !2547, !2548, !2549, !2555, !2556, !2557}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !920, file: !921, line: 84, baseType: !7, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !920, file: !921, line: 85, baseType: !925, size: 32, offset: 32)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !663, line: 275, baseType: !926)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !663, line: 275, size: 32, elements: !927)
!927 = !{!928}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !926, file: !663, line: 275, baseType: !667, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !920, file: !921, line: 86, baseType: !930, size: 128, offset: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !931, line: 38, size: 128, elements: !932)
!931 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!932 = !{!933, !935}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !930, file: !931, line: 39, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !930, file: !931, line: 39, baseType: !936, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !920, file: !921, line: 87, baseType: !919, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !920, file: !921, line: 88, baseType: !939, size: 128, offset: 256)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !921, line: 49, size: 128, elements: !940)
!940 = !{!941, !950}
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !921, line: 50, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !921, line: 50, size: 64, elements: !943)
!943 = !{!944, !949}
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !942, file: !921, line: 51, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !942, file: !921, line: 51, size: 64, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !945, file: !921, line: 52, baseType: !308, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !945, file: !921, line: 52, baseType: !308, size: 32, offset: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !942, file: !921, line: 54, baseType: !241, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !939, file: !921, line: 56, baseType: !951, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !920, file: !921, line: 89, baseType: !954, size: 64, offset: 384)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !183, line: 641, size: 4800, elements: !956)
!956 = !{!957, !958, !959, !960, !961, !962, !963, !966, !967, !1162, !1842, !2341, !2342, !2343, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2512, !2515, !2516, !2517, !2526, !2527, !2528, !2529}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !955, file: !183, line: 642, baseType: !76, size: 16)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !955, file: !183, line: 643, baseType: !78, size: 16, offset: 16)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !955, file: !183, line: 644, baseType: !214, size: 32, offset: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !955, file: !183, line: 645, baseType: !149, size: 128, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !955, file: !183, line: 646, baseType: !222, size: 32, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !955, file: !183, line: 647, baseType: !7, size: 32, offset: 224)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !955, file: !183, line: 650, baseType: !964, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !183, line: 607, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !955, file: !183, line: 651, baseType: !964, size: 64, offset: 320)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !955, file: !183, line: 654, baseType: !968, size: 64, offset: 384)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !970)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !183, line: 1966, size: 2048, align: 512, elements: !971)
!971 = !{!972, !976, !989, !995, !999, !1003, !1007, !1011, !1015, !1019, !1023, !1024, !1030, !1034, !1072, !1103, !1110, !1116, !1120, !1124, !1128, !1132, !1136, !1142, !1146}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !970, file: !183, line: 1967, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!919, !954, !919, !7}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !970, file: !183, line: 1968, baseType: !977, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!68, !919, !954, !980}
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !982, line: 10, size: 128, elements: !983)
!982 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!983 = !{!984, !988}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !981, file: !982, line: 11, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{null, !72}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !981, file: !982, line: 12, baseType: !72, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !970, file: !183, line: 1969, baseType: !990, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!74, !993, !954, !74}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !916, line: 19, flags: DIFlagFwdDecl)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !970, file: !183, line: 1970, baseType: !996, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!964, !954, !74, !352}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !970, file: !183, line: 1972, baseType: !1000, size: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!74, !919, !363, !74}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !970, file: !183, line: 1974, baseType: !1004, size: 64, offset: 320)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!74, !993, !954, !919, !76, !352}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !970, file: !183, line: 1976, baseType: !1008, size: 64, offset: 384)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!74, !919, !954, !919}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !970, file: !183, line: 1977, baseType: !1012, size: 64, offset: 448)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!74, !954, !919}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !970, file: !183, line: 1978, baseType: !1016, size: 64, offset: 512)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!74, !993, !954, !919, !68}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !970, file: !183, line: 1980, baseType: !1020, size: 64, offset: 576)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!74, !993, !954, !919, !76}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !970, file: !183, line: 1982, baseType: !1012, size: 64, offset: 640)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !970, file: !183, line: 1983, baseType: !1025, size: 64, offset: 704)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!74, !993, !954, !919, !76, !1028}
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !77, line: 21, baseType: !1029)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !77, line: 18, baseType: !308)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !970, file: !183, line: 1985, baseType: !1031, size: 64, offset: 768)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!74, !993, !954, !919, !954, !919, !7}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !970, file: !183, line: 1987, baseType: !1035, size: 64, offset: 832)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!74, !993, !919, !1038}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !183, line: 226, size: 640, elements: !1040)
!1040 = !{!1041, !1042, !1043, !1053, !1062, !1063, !1069, !1070, !1071}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1039, file: !183, line: 227, baseType: !7, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1039, file: !183, line: 228, baseType: !76, size: 16, offset: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !1039, file: !183, line: 241, baseType: !1044, size: 32, offset: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1039, file: !183, line: 241, size: 32, elements: !1045)
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1044, file: !183, line: 242, baseType: !214, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1044, file: !183, line: 243, baseType: !1048, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1049, line: 16, baseType: !1050)
!1049 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1049, line: 14, size: 32, elements: !1051)
!1051 = !{!1052}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1050, file: !1049, line: 15, baseType: !219, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1039, file: !183, line: 245, baseType: !1054, size: 32, offset: 96)
!1054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1039, file: !183, line: 245, size: 32, elements: !1055)
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1054, file: !183, line: 246, baseType: !222, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1054, file: !183, line: 247, baseType: !1058, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1049, line: 20, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1049, line: 18, size: 32, elements: !1060)
!1060 = !{!1061}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1059, file: !1049, line: 19, baseType: !226, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1039, file: !183, line: 249, baseType: !93, size: 64, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1039, file: !183, line: 250, baseType: !1064, size: 128, offset: 192)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !300, line: 13, size: 128, elements: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1064, file: !300, line: 14, baseType: !299, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1064, file: !300, line: 15, baseType: !1068, size: 64, offset: 64)
!1068 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1039, file: !183, line: 251, baseType: !1064, size: 128, offset: 320)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1039, file: !183, line: 252, baseType: !1064, size: 128, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1039, file: !183, line: 259, baseType: !821, size: 64, offset: 576)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !970, file: !183, line: 1988, baseType: !1073, size: 64, offset: 896)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!74, !993, !1076, !1078, !308, !7}
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !910)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1080, line: 22, size: 1280, elements: !1081)
!1080 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1079, file: !1080, line: 23, baseType: !308, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1079, file: !1080, line: 24, baseType: !76, size: 16, offset: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1079, file: !1080, line: 25, baseType: !7, size: 32, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1079, file: !1080, line: 26, baseType: !307, size: 32, offset: 96)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1079, file: !1080, line: 27, baseType: !241, size: 64, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1079, file: !1080, line: 28, baseType: !241, size: 64, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1079, file: !1080, line: 41, baseType: !241, size: 64, offset: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1079, file: !1080, line: 42, baseType: !1028, size: 32, offset: 320)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1079, file: !1080, line: 43, baseType: !1028, size: 32, offset: 352)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1079, file: !1080, line: 44, baseType: !214, size: 32, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1079, file: !1080, line: 45, baseType: !222, size: 32, offset: 416)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1079, file: !1080, line: 46, baseType: !93, size: 64, offset: 448)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1079, file: !1080, line: 47, baseType: !1064, size: 128, offset: 512)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1079, file: !1080, line: 48, baseType: !1064, size: 128, offset: 640)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1079, file: !1080, line: 49, baseType: !1064, size: 128, offset: 768)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1079, file: !1080, line: 50, baseType: !1064, size: 128, offset: 896)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1079, file: !1080, line: 51, baseType: !241, size: 64, offset: 1024)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1079, file: !1080, line: 52, baseType: !241, size: 64, offset: 1088)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1079, file: !1080, line: 53, baseType: !308, size: 32, offset: 1152)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1079, file: !1080, line: 54, baseType: !308, size: 32, offset: 1184)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1079, file: !1080, line: 55, baseType: !241, size: 64, offset: 1216)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !970, file: !183, line: 1990, baseType: !1104, size: 64, offset: 960)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!1107, !919, !363, !87}
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !77, line: 66, baseType: !1108)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !89, line: 73, baseType: !1109)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !89, line: 15, baseType: !1068)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !970, file: !183, line: 1991, baseType: !1111, size: 64, offset: 1024)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!74, !954, !1114, !241, !241}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !183, line: 55, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !970, file: !183, line: 1993, baseType: !1117, size: 64, offset: 1088)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!74, !954, !74}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !970, file: !183, line: 1994, baseType: !1121, size: 64, offset: 1152)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!74, !954, !919, !821, !7, !76}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !970, file: !183, line: 1997, baseType: !1125, size: 64, offset: 1216)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!74, !993, !954, !821, !76}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !970, file: !183, line: 1999, baseType: !1129, size: 64, offset: 1280)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!964, !993, !919, !74}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !970, file: !183, line: 2001, baseType: !1133, size: 64, offset: 1344)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!74, !993, !919, !964, !74}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !970, file: !183, line: 2003, baseType: !1137, size: 64, offset: 1408)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!74, !993, !919, !1140}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !183, line: 76, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !970, file: !183, line: 2005, baseType: !1143, size: 64, offset: 1472)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!74, !919, !1140}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !970, file: !183, line: 2006, baseType: !1147, size: 64, offset: 1536)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!1150, !954}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !183, line: 3192, size: 192, elements: !1152)
!1152 = !{!1153, !1161}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1151, file: !183, line: 3193, baseType: !1154, size: 128)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1155, line: 296, size: 128, elements: !1156)
!1155 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1156 = !{!1157, !1158, !1160}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1154, file: !1155, line: 297, baseType: !111, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1154, file: !1155, line: 299, baseType: !1159, size: 32, offset: 32)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !77, line: 154, baseType: !7)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1154, file: !1155, line: 300, baseType: !72, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1151, file: !183, line: 3194, baseType: !308, size: 32, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !955, file: !183, line: 655, baseType: !1163, size: 64, offset: 448)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !183, line: 1190, size: 10752, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1169, !1170, !1171, !1298, !1471, !1511, !1594, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1611, !1615, !1616, !1619, !1622, !1625, !1628, !1629, !1630, !1671, !1698, !1699, !1700, !1701, !1702, !1703, !1706, !1710, !1719, !1720, !1721, !1722, !1781, !1796, !1797, !1798, !1799, !1802, !1806, !1807, !1808, !1823, !1824, !1825, !1836, !1837, !1838, !1839, !1840, !1841}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1164, file: !183, line: 1191, baseType: !149, size: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1164, file: !183, line: 1192, baseType: !1028, size: 32, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1164, file: !183, line: 1193, baseType: !139, size: 8, offset: 160)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1164, file: !183, line: 1194, baseType: !91, size: 64, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1164, file: !183, line: 1195, baseType: !93, size: 64, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1164, file: !183, line: 1196, baseType: !1172, size: 64, offset: 320)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !183, line: 2366, size: 576, elements: !1174)
!1174 = !{!1175, !1176, !1177, !1272, !1276, !1280, !1284, !1285, !1286, !1287, !1290, !1291, !1292, !1294, !1295, !1296, !1297}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1173, file: !183, line: 2367, baseType: !68, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1173, file: !183, line: 2368, baseType: !74, size: 32, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1173, file: !183, line: 2376, baseType: !1178, size: 64, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!74, !1181}
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !160, line: 90, size: 1216, elements: !1183)
!1183 = !{!1184, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1241, !1242, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1182, file: !160, line: 91, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context_operations", file: !160, line: 115, size: 384, elements: !1188)
!1188 = !{!1189, !1193, !1197, !1226, !1230, !1231}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1187, file: !160, line: 116, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !1181}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1187, file: !160, line: 117, baseType: !1194, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!74, !1181, !1181}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "parse_param", scope: !1187, file: !160, line: 118, baseType: !1198, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!74, !1181, !1201}
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter", file: !160, line: 63, size: 320, elements: !1203)
!1203 = !{!1204, !1205, !1206, !1224, !1225}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1202, file: !160, line: 64, baseType: !68, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1202, file: !160, line: 65, baseType: !159, size: 8, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !160, line: 66, baseType: !1207, size: 64, offset: 128)
!1207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1202, file: !160, line: 66, size: 64, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1223}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1207, file: !160, line: 67, baseType: !363, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !1207, file: !160, line: 68, baseType: !72, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1207, file: !160, line: 69, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filename", file: !183, line: 2470, size: 256, elements: !1214)
!1214 = !{!1215, !1216, !1217, !1218, !1221}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1213, file: !183, line: 2471, baseType: !68, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !1213, file: !183, line: 2472, baseType: !68, size: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1213, file: !183, line: 2473, baseType: !101, size: 32, offset: 128)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !1213, file: !183, line: 2474, baseType: !1219, size: 64, offset: 192)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_names", file: !183, line: 2469, flags: DIFlagFwdDecl)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !1213, file: !183, line: 2475, baseType: !1222, offset: 256)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, elements: !893)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1207, file: !160, line: 70, baseType: !821, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1202, file: !160, line: 72, baseType: !87, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "dirfd", scope: !1202, file: !160, line: 73, baseType: !74, size: 32, offset: 256)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "parse_monolithic", scope: !1187, file: !160, line: 119, baseType: !1227, size: 64, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!74, !1181, !72}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "get_tree", scope: !1187, file: !160, line: 120, baseType: !1178, size: 64, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !1187, file: !160, line: 121, baseType: !1178, size: 64, offset: 320)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "uapi_mutex", scope: !1182, file: !160, line: 92, baseType: !835, size: 256, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "fs_type", scope: !1182, file: !160, line: 93, baseType: !1172, size: 64, offset: 320)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fs_private", scope: !1182, file: !160, line: 94, baseType: !72, size: 64, offset: 384)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sget_key", scope: !1182, file: !160, line: 95, baseType: !72, size: 64, offset: 448)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1182, file: !160, line: 96, baseType: !919, size: 64, offset: 512)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1182, file: !160, line: 97, baseType: !444, size: 64, offset: 576)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1182, file: !160, line: 98, baseType: !1239, size: 64, offset: 640)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !252, line: 34, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1182, file: !160, line: 99, baseType: !199, size: 64, offset: 704)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1182, file: !160, line: 100, baseType: !1243, size: 128, offset: 768)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p_log", file: !160, line: 76, size: 128, elements: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !1243, file: !160, line: 77, baseType: !68, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1243, file: !160, line: 78, baseType: !1247, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fc_log", file: !160, line: 173, size: 640, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1258}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1248, file: !160, line: 174, baseType: !255, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1248, file: !160, line: 175, baseType: !135, size: 8, offset: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1248, file: !160, line: 176, baseType: !135, size: 8, offset: 40)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !1248, file: !160, line: 177, baseType: !135, size: 8, offset: 48)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1248, file: !160, line: 178, baseType: !1255, size: 64, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1257, line: 103, flags: DIFlagFwdDecl)
!1257 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1248, file: !160, line: 179, baseType: !1259, size: 512, offset: 128)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 512, elements: !655)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !1182, file: !160, line: 101, baseType: !68, size: 64, offset: 896)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1182, file: !160, line: 102, baseType: !72, size: 64, offset: 960)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1182, file: !160, line: 103, baseType: !72, size: 64, offset: 1024)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags", scope: !1182, file: !160, line: 104, baseType: !7, size: 32, offset: 1088)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags_mask", scope: !1182, file: !160, line: 105, baseType: !7, size: 32, offset: 1120)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1182, file: !160, line: 106, baseType: !7, size: 32, offset: 1152)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1182, file: !160, line: 107, baseType: !168, size: 8, offset: 1184, flags: DIFlagBitField, extraData: i64 1184)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !1182, file: !160, line: 108, baseType: !173, size: 8, offset: 1192, flags: DIFlagBitField, extraData: i64 1184)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !1182, file: !160, line: 109, baseType: !352, size: 1, offset: 1200, flags: DIFlagBitField, extraData: i64 1184)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1182, file: !160, line: 110, baseType: !352, size: 1, offset: 1201, flags: DIFlagBitField, extraData: i64 1184)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "oldapi", scope: !1182, file: !160, line: 111, baseType: !352, size: 1, offset: 1202, flags: DIFlagBitField, extraData: i64 1184)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !1182, file: !160, line: 112, baseType: !352, size: 1, offset: 1203, flags: DIFlagBitField, extraData: i64 1184)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1173, file: !183, line: 2377, baseType: !1273, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1275)
!1275 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !183, line: 75, flags: DIFlagFwdDecl)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1173, file: !183, line: 2378, baseType: !1277, size: 64, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!919, !1172, !74, !68, !72}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1173, file: !183, line: 2380, baseType: !1281, size: 64, offset: 320)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null, !1163}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1173, file: !183, line: 2381, baseType: !1255, size: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1173, file: !183, line: 2382, baseType: !1172, size: 64, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1173, file: !183, line: 2383, baseType: !879, size: 64, offset: 512)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1173, file: !183, line: 2385, baseType: !1288, offset: 576)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1289, line: 206, elements: !814)
!1289 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1173, file: !183, line: 2386, baseType: !1288, offset: 576)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1173, file: !183, line: 2387, baseType: !1288, offset: 576)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1173, file: !183, line: 2388, baseType: !1293, offset: 576)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1288, elements: !867)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1173, file: !183, line: 2390, baseType: !1288, offset: 576)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1173, file: !183, line: 2391, baseType: !1288, offset: 576)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1173, file: !183, line: 2392, baseType: !1288, offset: 576)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1173, file: !183, line: 2393, baseType: !1288, offset: 576)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1164, file: !183, line: 1197, baseType: !1299, size: 64, offset: 384)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1301)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !183, line: 2057, size: 1664, elements: !1302)
!1302 = !{!1303, !1307, !1311, !1312, !1316, !1322, !1326, !1327, !1328, !1332, !1336, !1340, !1341, !1342, !1348, !1353, !1354, !1396, !1397, !1398, !1399, !1403, !1407, !1454, !1469, !1470}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1301, file: !183, line: 2058, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!954, !1163}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1301, file: !183, line: 2059, baseType: !1308, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{null, !954}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1301, file: !183, line: 2060, baseType: !1308, size: 64, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1301, file: !183, line: 2062, baseType: !1313, size: 64, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null, !954, !74}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1301, file: !183, line: 2063, baseType: !1317, size: 64, offset: 256)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!74, !954, !1320}
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !183, line: 309, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1301, file: !183, line: 2064, baseType: !1323, size: 64, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!74, !954}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1301, file: !183, line: 2065, baseType: !1308, size: 64, offset: 384)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1301, file: !183, line: 2066, baseType: !1281, size: 64, offset: 448)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1301, file: !183, line: 2067, baseType: !1329, size: 64, offset: 512)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!74, !1163, !74}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1301, file: !183, line: 2068, baseType: !1333, size: 64, offset: 576)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!74, !1163, !182}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1301, file: !183, line: 2069, baseType: !1337, size: 64, offset: 640)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!74, !1163}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1301, file: !183, line: 2070, baseType: !1333, size: 64, offset: 704)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1301, file: !183, line: 2071, baseType: !1337, size: 64, offset: 768)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1301, file: !183, line: 2072, baseType: !1343, size: 64, offset: 832)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!74, !919, !1346}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !183, line: 62, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1301, file: !183, line: 2073, baseType: !1349, size: 64, offset: 896)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!74, !1163, !1352, !363}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1301, file: !183, line: 2074, baseType: !1281, size: 64, offset: 960)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1301, file: !183, line: 2076, baseType: !1355, size: 64, offset: 1024)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!74, !1358, !919}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1360, line: 17, size: 960, elements: !1361)
!1360 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1361 = !{!1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1391, !1392, !1395}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1359, file: !1360, line: 18, baseType: !363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1359, file: !1360, line: 19, baseType: !87, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1359, file: !1360, line: 20, baseType: !87, size: 64, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1359, file: !1360, line: 21, baseType: !87, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1359, file: !1360, line: 22, baseType: !87, size: 64, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1359, file: !1360, line: 23, baseType: !93, size: 64, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1359, file: !1360, line: 24, baseType: !93, size: 64, offset: 384)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1359, file: !1360, line: 25, baseType: !835, size: 256, offset: 448)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1359, file: !1360, line: 26, baseType: !1371, size: 64, offset: 704)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1373)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1360, line: 32, size: 256, elements: !1374)
!1374 = !{!1375, !1379, !1383, !1387}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1373, file: !1360, line: 33, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!72, !1358, !92}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1373, file: !1360, line: 34, baseType: !1380, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !1358, !72}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1373, file: !1360, line: 35, baseType: !1384, size: 64, offset: 128)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!72, !1358, !72, !92}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1373, file: !1360, line: 36, baseType: !1388, size: 64, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!74, !1358, !72}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1359, file: !1360, line: 27, baseType: !74, size: 32, offset: 768)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1359, file: !1360, line: 28, baseType: !1393, size: 64, offset: 832)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !822)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1359, file: !1360, line: 29, baseType: !72, size: 64, offset: 896)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1301, file: !183, line: 2077, baseType: !1355, size: 64, offset: 1088)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1301, file: !183, line: 2078, baseType: !1355, size: 64, offset: 1152)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1301, file: !183, line: 2079, baseType: !1355, size: 64, offset: 1216)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1301, file: !183, line: 2081, baseType: !1400, size: 64, offset: 1280)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!1107, !1163, !74, !363, !87, !93}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1301, file: !183, line: 2082, baseType: !1404, size: 64, offset: 1344)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!1107, !1163, !74, !68, !87, !93}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1301, file: !183, line: 2083, baseType: !1408, size: 64, offset: 1408)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!1411, !954}
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !188, line: 296, size: 1664, elements: !1414)
!1414 = !{!1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1439, !1440, !1441}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1413, file: !188, line: 297, baseType: !424, size: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1413, file: !188, line: 298, baseType: !149, size: 128, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1413, file: !188, line: 299, baseType: !149, size: 128, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1413, file: !188, line: 300, baseType: !149, size: 128, offset: 384)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1413, file: !188, line: 301, baseType: !835, size: 256, offset: 512)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1413, file: !188, line: 302, baseType: !111, size: 32, offset: 768)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1413, file: !188, line: 303, baseType: !101, size: 32, offset: 800)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1413, file: !188, line: 304, baseType: !1163, size: 64, offset: 832)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1413, file: !188, line: 305, baseType: !1424, size: 64, offset: 896)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !188, line: 68, size: 64, elements: !1425)
!1425 = !{!1426, !1438}
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1424, file: !188, line: 69, baseType: !1427, size: 32)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1424, file: !188, line: 69, size: 32, elements: !1428)
!1428 = !{!1429, !1430, !1431}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1427, file: !188, line: 70, baseType: !214, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1427, file: !188, line: 71, baseType: !222, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1427, file: !188, line: 72, baseType: !1432, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1433, line: 24, baseType: !1434)
!1433 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1433, line: 22, size: 32, elements: !1435)
!1435 = !{!1436}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1434, file: !1433, line: 23, baseType: !1437, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1433, line: 20, baseType: !220)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1424, file: !188, line: 74, baseType: !187, size: 32, offset: 32)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1413, file: !188, line: 306, baseType: !93, size: 64, offset: 960)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1413, file: !188, line: 307, baseType: !91, size: 64, offset: 1024)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1413, file: !188, line: 308, baseType: !1442, size: 576, offset: 1088)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !188, line: 205, size: 576, elements: !1443)
!1443 = !{!1444, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1442, file: !188, line: 206, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !188, line: 66, baseType: !95)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1442, file: !188, line: 207, baseType: !1445, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1442, file: !188, line: 208, baseType: !1445, size: 64, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1442, file: !188, line: 209, baseType: !1445, size: 64, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1442, file: !188, line: 210, baseType: !1445, size: 64, offset: 256)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1442, file: !188, line: 211, baseType: !1445, size: 64, offset: 320)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1442, file: !188, line: 212, baseType: !1445, size: 64, offset: 384)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1442, file: !188, line: 213, baseType: !299, size: 64, offset: 448)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1442, file: !188, line: 214, baseType: !299, size: 64, offset: 512)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1301, file: !183, line: 2085, baseType: !1455, size: 64, offset: 1472)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!1068, !1163, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1460, line: 15, size: 256, elements: !1461)
!1460 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1461 = !{!1462, !1463, !1464, !1465, !1466}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1459, file: !1460, line: 16, baseType: !1159, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1459, file: !1460, line: 19, baseType: !74, size: 32, offset: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1459, file: !1460, line: 26, baseType: !91, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1459, file: !1460, line: 33, baseType: !91, size: 64, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1459, file: !1460, line: 36, baseType: !1467, size: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1460, line: 36, flags: DIFlagFwdDecl)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1301, file: !183, line: 2087, baseType: !1455, size: 64, offset: 1536)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1301, file: !183, line: 2089, baseType: !1281, size: 64, offset: 1600)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1164, file: !183, line: 1198, baseType: !1472, size: 64, offset: 448)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1474)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !188, line: 324, size: 704, elements: !1475)
!1475 = !{!1476, !1480, !1484, !1488, !1489, !1490, !1491, !1492, !1497, !1502, !1506}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1474, file: !188, line: 325, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!74, !1412}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1474, file: !188, line: 326, baseType: !1481, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!1412, !1163, !74}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1474, file: !188, line: 327, baseType: !1485, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{null, !1412}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1474, file: !188, line: 328, baseType: !1477, size: 64, offset: 192)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1474, file: !188, line: 329, baseType: !1477, size: 64, offset: 256)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1474, file: !188, line: 330, baseType: !1477, size: 64, offset: 320)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1474, file: !188, line: 331, baseType: !1329, size: 64, offset: 384)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1474, file: !188, line: 334, baseType: !1493, size: 64, offset: 448)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!1496, !954}
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1474, file: !188, line: 335, baseType: !1498, size: 64, offset: 512)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!74, !954, !1501}
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1474, file: !188, line: 337, baseType: !1503, size: 64, offset: 576)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!74, !954, !1496}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1474, file: !188, line: 339, baseType: !1507, size: 64, offset: 640)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!74, !1163, !1510}
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1164, file: !183, line: 1199, baseType: !1512, size: 64, offset: 512)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1514)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !188, line: 430, size: 704, elements: !1515)
!1515 = !{!1516, !1520, !1521, !1525, !1526, !1527, !1542, !1565, !1569, !1570, !1593}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1514, file: !188, line: 431, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!74, !1163, !74, !74, !1076}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1514, file: !188, line: 432, baseType: !1329, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1514, file: !188, line: 433, baseType: !1522, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!74, !1163, !7}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1514, file: !188, line: 434, baseType: !1522, size: 64, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1514, file: !188, line: 435, baseType: !1329, size: 64, offset: 256)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1514, file: !188, line: 436, baseType: !1528, size: 64, offset: 320)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!74, !1163, !74, !1531}
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !188, line: 417, size: 256, elements: !1533)
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1532, file: !188, line: 418, baseType: !74, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1532, file: !188, line: 419, baseType: !7, size: 32, offset: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1532, file: !188, line: 420, baseType: !7, size: 32, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1532, file: !188, line: 422, baseType: !7, size: 32, offset: 96)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1532, file: !188, line: 423, baseType: !7, size: 32, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1532, file: !188, line: 424, baseType: !7, size: 32, offset: 160)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1532, file: !188, line: 425, baseType: !7, size: 32, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1532, file: !188, line: 426, baseType: !7, size: 32, offset: 224)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1514, file: !188, line: 437, baseType: !1543, size: 64, offset: 384)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!74, !1163, !1424, !1546}
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !188, line: 345, size: 960, elements: !1548)
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1547, file: !188, line: 346, baseType: !74, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1547, file: !188, line: 347, baseType: !241, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1547, file: !188, line: 348, baseType: !241, size: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1547, file: !188, line: 349, baseType: !241, size: 64, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1547, file: !188, line: 350, baseType: !241, size: 64, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1547, file: !188, line: 351, baseType: !241, size: 64, offset: 320)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1547, file: !188, line: 352, baseType: !241, size: 64, offset: 384)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1547, file: !188, line: 353, baseType: !211, size: 64, offset: 448)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1547, file: !188, line: 355, baseType: !211, size: 64, offset: 512)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1547, file: !188, line: 356, baseType: !74, size: 32, offset: 576)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1547, file: !188, line: 357, baseType: !74, size: 32, offset: 608)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1547, file: !188, line: 358, baseType: !241, size: 64, offset: 640)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1547, file: !188, line: 359, baseType: !241, size: 64, offset: 704)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1547, file: !188, line: 360, baseType: !241, size: 64, offset: 768)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1547, file: !188, line: 361, baseType: !211, size: 64, offset: 832)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1547, file: !188, line: 362, baseType: !74, size: 32, offset: 896)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1514, file: !188, line: 438, baseType: !1566, size: 64, offset: 448)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!74, !1163, !1510, !1546}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1514, file: !188, line: 440, baseType: !1543, size: 64, offset: 512)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1514, file: !188, line: 441, baseType: !1571, size: 64, offset: 576)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!74, !1163, !1574}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !188, line: 411, size: 1408, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1575, file: !188, line: 412, baseType: !7, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1575, file: !188, line: 413, baseType: !1579, size: 1344, offset: 64)
!1579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1580, size: 1344, elements: !867)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !188, line: 397, size: 448, elements: !1581)
!1581 = !{!1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1592}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1580, file: !188, line: 398, baseType: !7, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1580, file: !188, line: 399, baseType: !7, size: 32, offset: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1580, file: !188, line: 401, baseType: !7, size: 32, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1580, file: !188, line: 402, baseType: !7, size: 32, offset: 96)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1580, file: !188, line: 403, baseType: !7, size: 32, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1580, file: !188, line: 404, baseType: !7, size: 32, offset: 160)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1580, file: !188, line: 405, baseType: !7, size: 32, offset: 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1580, file: !188, line: 406, baseType: !243, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1580, file: !188, line: 407, baseType: !1591, size: 64, offset: 320)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !77, line: 132, baseType: !241)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1580, file: !188, line: 408, baseType: !1591, size: 64, offset: 384)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1514, file: !188, line: 442, baseType: !1522, size: 64, offset: 640)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1164, file: !183, line: 1200, baseType: !1595, size: 64, offset: 576)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1597)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !183, line: 54, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1164, file: !183, line: 1201, baseType: !91, size: 64, offset: 640)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1164, file: !183, line: 1202, baseType: !91, size: 64, offset: 704)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1164, file: !183, line: 1203, baseType: !91, size: 64, offset: 768)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1164, file: !183, line: 1204, baseType: !919, size: 64, offset: 832)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1164, file: !183, line: 1205, baseType: !278, size: 320, offset: 896)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1164, file: !183, line: 1206, baseType: !74, size: 32, offset: 1216)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1164, file: !183, line: 1207, baseType: !101, size: 32, offset: 1248)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1164, file: !183, line: 1209, baseType: !72, size: 64, offset: 1280)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1164, file: !183, line: 1211, baseType: !1607, size: 64, offset: 1344)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1610)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !183, line: 1211, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1164, file: !183, line: 1223, baseType: !1612, size: 64, offset: 1408)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !931, line: 34, size: 64, elements: !1613)
!1613 = !{!1614}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1612, file: !931, line: 35, baseType: !934, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1164, file: !183, line: 1224, baseType: !149, size: 128, offset: 1472)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1164, file: !183, line: 1225, baseType: !1617, size: 64, offset: 1600)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !183, line: 1225, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1164, file: !183, line: 1226, baseType: !1620, size: 64, offset: 1664)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !183, line: 1226, flags: DIFlagFwdDecl)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1164, file: !183, line: 1227, baseType: !1623, size: 64, offset: 1728)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !183, line: 50, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1164, file: !183, line: 1228, baseType: !1626, size: 64, offset: 1792)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !183, line: 1228, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1164, file: !183, line: 1229, baseType: !424, size: 128, offset: 1856)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1164, file: !183, line: 1230, baseType: !7, size: 32, offset: 1984)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1164, file: !183, line: 1231, baseType: !1631, size: 2496, offset: 2048)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !188, line: 521, size: 2496, elements: !1632)
!1632 = !{!1633, !1634, !1635, !1637, !1669}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1631, file: !188, line: 522, baseType: !7, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1631, file: !188, line: 523, baseType: !278, size: 320, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1631, file: !188, line: 524, baseType: !1636, size: 192, offset: 384)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !954, size: 192, elements: !867)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1631, file: !188, line: 525, baseType: !1638, size: 1728, offset: 576)
!1638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1639, size: 1728, elements: !867)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !188, line: 222, size: 576, elements: !1640)
!1640 = !{!1641, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1639, file: !188, line: 223, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !188, line: 445, size: 256, elements: !1644)
!1644 = !{!1645, !1646, !1659, !1660}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1643, file: !188, line: 446, baseType: !74, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1643, file: !188, line: 447, baseType: !1647, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1649)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !188, line: 312, size: 512, elements: !1650)
!1650 = !{!1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1649, file: !188, line: 313, baseType: !1329, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1649, file: !188, line: 314, baseType: !1329, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1649, file: !188, line: 315, baseType: !1329, size: 64, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1649, file: !188, line: 316, baseType: !1329, size: 64, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1649, file: !188, line: 317, baseType: !1477, size: 64, offset: 256)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1649, file: !188, line: 318, baseType: !1477, size: 64, offset: 320)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1649, file: !188, line: 319, baseType: !1477, size: 64, offset: 384)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1649, file: !188, line: 320, baseType: !1507, size: 64, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1643, file: !188, line: 448, baseType: !1255, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1643, file: !188, line: 449, baseType: !1642, size: 64, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1639, file: !188, line: 224, baseType: !74, size: 32, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1639, file: !188, line: 226, baseType: !149, size: 128, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1639, file: !188, line: 227, baseType: !91, size: 64, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1639, file: !188, line: 228, baseType: !7, size: 32, offset: 320)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1639, file: !188, line: 229, baseType: !7, size: 32, offset: 352)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1639, file: !188, line: 230, baseType: !1445, size: 64, offset: 384)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1639, file: !188, line: 231, baseType: !1445, size: 64, offset: 448)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1639, file: !188, line: 232, baseType: !72, size: 64, offset: 512)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1631, file: !188, line: 526, baseType: !1670, size: 192, offset: 2304)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1647, size: 192, elements: !867)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1164, file: !183, line: 1233, baseType: !1672, size: 2368, offset: 4544)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !183, line: 1184, size: 2368, elements: !1673)
!1673 = !{!1674, !1675, !1676}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1672, file: !183, line: 1185, baseType: !78, size: 16)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1672, file: !183, line: 1186, baseType: !78, size: 16, offset: 16)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1672, file: !183, line: 1187, baseType: !1677, size: 2304, offset: 64)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1678, size: 2304, elements: !867)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1679, line: 12, size: 768, elements: !1680)
!1679 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1680 = !{!1681, !1689, !1691, !1696, !1697}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1678, file: !1679, line: 13, baseType: !1682, size: 384)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1683, line: 17, size: 384, elements: !1684)
!1683 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1684 = !{!1685, !1686, !1687, !1688}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1682, file: !1683, line: 18, baseType: !74, size: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1682, file: !1683, line: 19, baseType: !74, size: 32, offset: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1682, file: !1683, line: 20, baseType: !106, size: 192, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1682, file: !1683, line: 22, baseType: !342, size: 128, align: 64, offset: 256)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1678, file: !1679, line: 14, baseType: !1690, size: 64, offset: 384)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1678, file: !1679, line: 15, baseType: !1692, size: 64, offset: 448)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1693, line: 16, size: 64, elements: !1694)
!1693 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1694 = !{!1695}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1692, file: !1693, line: 17, baseType: !495, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1678, file: !1679, line: 16, baseType: !106, size: 192, offset: 512)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1678, file: !1679, line: 17, baseType: !101, size: 32, offset: 704)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1164, file: !183, line: 1240, baseType: !72, size: 64, offset: 6912)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1164, file: !183, line: 1243, baseType: !308, size: 32, offset: 6976)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1164, file: !183, line: 1245, baseType: !299, size: 64, offset: 7040)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1164, file: !183, line: 1246, baseType: !299, size: 64, offset: 7104)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1164, file: !183, line: 1248, baseType: !309, size: 32, offset: 7168)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1164, file: !183, line: 1249, baseType: !1704, size: 64, offset: 7232)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !183, line: 634, flags: DIFlagFwdDecl)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1164, file: !183, line: 1252, baseType: !1707, size: 256, offset: 7296)
!1707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 256, elements: !1708)
!1708 = !{!1709}
!1709 = !DISubrange(count: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1164, file: !183, line: 1253, baseType: !1711, size: 128, offset: 7552)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1712, line: 21, baseType: !1713)
!1712 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1712, line: 19, size: 128, elements: !1714)
!1714 = !{!1715}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1713, file: !1712, line: 20, baseType: !1716, size: 128)
!1716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 128, elements: !1717)
!1717 = !{!1718}
!1718 = !DISubrange(count: 16)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1164, file: !183, line: 1255, baseType: !7, size: 32, offset: 7680)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1164, file: !183, line: 1261, baseType: !835, size: 256, offset: 7744)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1164, file: !183, line: 1267, baseType: !68, size: 64, offset: 8000)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1164, file: !183, line: 1269, baseType: !1723, size: 64, offset: 8064)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1725)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !921, line: 128, size: 1024, align: 512, elements: !1726)
!1726 = !{!1727, !1731, !1732, !1739, !1745, !1749, !1753, !1757, !1758, !1762, !1766, !1771, !1775}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1725, file: !921, line: 129, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!74, !919, !7}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1725, file: !921, line: 130, baseType: !1728, size: 64, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1725, file: !921, line: 131, baseType: !1733, size: 64, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!74, !1736, !1738}
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !920)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1725, file: !921, line: 132, baseType: !1740, size: 64, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!74, !1736, !7, !68, !1743}
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !939)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1725, file: !921, line: 134, baseType: !1746, size: 64, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!74, !1736}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1725, file: !921, line: 135, baseType: !1750, size: 64, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!74, !919}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1725, file: !921, line: 136, baseType: !1754, size: 64, offset: 384)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{null, !919}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1725, file: !921, line: 137, baseType: !1754, size: 64, offset: 448)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1725, file: !921, line: 138, baseType: !1759, size: 64, offset: 512)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{null, !919, !954}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1725, file: !921, line: 139, baseType: !1763, size: 64, offset: 576)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!363, !919, !363, !74}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1725, file: !921, line: 140, baseType: !1767, size: 64, offset: 640)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!914, !1770}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1725, file: !921, line: 141, baseType: !1772, size: 64, offset: 704)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!74, !1076, !352}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1725, file: !921, line: 142, baseType: !1776, size: 64, offset: 768)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!919, !919, !1779}
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !955)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1164, file: !183, line: 1271, baseType: !1782, size: 448, offset: 8128)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1460, line: 63, size: 448, elements: !1783)
!1783 = !{!1784, !1789, !1790, !1791, !1792, !1793, !1794}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1782, file: !1460, line: 64, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!91, !1788, !1458}
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1782, file: !1460, line: 66, baseType: !1785, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1782, file: !1460, line: 69, baseType: !1068, size: 64, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1782, file: !1460, line: 70, baseType: !74, size: 32, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1782, file: !1460, line: 71, baseType: !7, size: 32, offset: 224)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1782, file: !1460, line: 74, baseType: !149, size: 128, offset: 256)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1782, file: !1460, line: 85, baseType: !1795, size: 64, offset: 384)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1164, file: !183, line: 1274, baseType: !205, size: 64, offset: 8576)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1164, file: !183, line: 1280, baseType: !205, size: 64, offset: 8640)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1164, file: !183, line: 1283, baseType: !74, size: 32, offset: 8704)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1164, file: !183, line: 1286, baseType: !1800, size: 32, offset: 8736)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1801, line: 8, baseType: !308)
!1801 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1164, file: !183, line: 1289, baseType: !1803, size: 64, offset: 8768)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1805, line: 18, flags: DIFlagFwdDecl)
!1805 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1164, file: !183, line: 1290, baseType: !879, size: 64, offset: 8832)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1164, file: !183, line: 1297, baseType: !444, size: 64, offset: 8896)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1164, file: !183, line: 1304, baseType: !1809, size: 64, offset: 8960)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1810, line: 49, size: 64, elements: !1811)
!1810 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!1811 = !{!1812}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1809, file: !1810, line: 50, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1810, line: 41, size: 512, align: 512, elements: !1815)
!1815 = !{!1816, !1817, !1822}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1814, file: !1810, line: 43, baseType: !111, size: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1814, file: !1810, line: 45, baseType: !1818, size: 192, offset: 64)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1810, line: 29, size: 192, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1818, file: !1810, line: 30, baseType: !149, size: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1818, file: !1810, line: 32, baseType: !1068, size: 64, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1814, file: !1810, line: 46, baseType: !1068, size: 64, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1164, file: !183, line: 1305, baseType: !1809, size: 64, offset: 9024)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1164, file: !183, line: 1306, baseType: !342, size: 128, align: 64, offset: 9088)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1164, file: !183, line: 1307, baseType: !1826, size: 256, offset: 9216)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1805, line: 98, size: 256, elements: !1827)
!1827 = !{!1828, !1829, !1830}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1826, file: !1805, line: 99, baseType: !205, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1826, file: !1805, line: 100, baseType: !149, size: 128, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1826, file: !1805, line: 101, baseType: !1831, size: 64, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1805, line: 21, baseType: !1832)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !1835}
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1164, file: !183, line: 1309, baseType: !835, size: 256, offset: 9472)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1164, file: !183, line: 1314, baseType: !74, size: 32, offset: 9728)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1164, file: !183, line: 1317, baseType: !111, size: 32, align: 512, offset: 10240)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1164, file: !183, line: 1318, baseType: !149, size: 128, offset: 10304)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1164, file: !183, line: 1320, baseType: !111, size: 32, offset: 10432)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1164, file: !183, line: 1321, baseType: !149, size: 128, offset: 10496)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !955, file: !183, line: 656, baseType: !1843, size: 64, offset: 512)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !183, line: 472, size: 1536, align: 64, elements: !1845)
!1845 = !{!1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !2335, !2336, !2337, !2338, !2339, !2340}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1844, file: !183, line: 473, baseType: !954, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1844, file: !183, line: 474, baseType: !1154, size: 128, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1844, file: !183, line: 475, baseType: !278, size: 320, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1844, file: !183, line: 476, baseType: !1159, size: 32, offset: 512)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1844, file: !183, line: 477, baseType: !101, size: 32, offset: 544)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1844, file: !183, line: 482, baseType: !676, size: 128, offset: 576)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1844, file: !183, line: 483, baseType: !91, size: 64, offset: 704)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1844, file: !183, line: 484, baseType: !91, size: 64, offset: 768)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1844, file: !183, line: 485, baseType: !1855, size: 64, offset: 832)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1857)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !183, line: 404, size: 1280, elements: !1858)
!1858 = !{!1859, !2160, !2230, !2234, !2238, !2244, !2250, !2254, !2259, !2263, !2267, !2271, !2299, !2303, !2307, !2311, !2316, !2320, !2327, !2331}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1857, file: !183, line: 405, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!74, !1863, !1320}
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !41, line: 74, size: 512, align: 128, elements: !1865)
!1865 = !{!1866, !1867, !2154, !2159}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1864, file: !41, line: 75, baseType: !91, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, scope: !1864, file: !41, line: 83, baseType: !1868, size: 320, offset: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1864, file: !41, line: 83, size: 320, elements: !1869)
!1869 = !{!1870, !1891, !1905, !1909, !2153}
!1870 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !41, line: 84, baseType: !1871, size: 320)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1868, file: !41, line: 84, size: 320, elements: !1872)
!1872 = !{!1873, !1884, !1885, !1890}
!1873 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !41, line: 90, baseType: !1874, size: 128)
!1874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !41, line: 90, size: 128, elements: !1875)
!1875 = !{!1876, !1877, !1882, !1883}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1874, file: !41, line: 91, baseType: !149, size: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !41, line: 94, baseType: !1878, size: 128)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1874, file: !41, line: 94, size: 128, elements: !1879)
!1879 = !{!1880, !1881}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1878, file: !41, line: 96, baseType: !72, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1878, file: !41, line: 98, baseType: !7, size: 32, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1874, file: !41, line: 102, baseType: !149, size: 128)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1874, file: !41, line: 103, baseType: !149, size: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1871, file: !41, line: 106, baseType: !1843, size: 64, offset: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !41, line: 107, baseType: !1886, size: 64, offset: 192)
!1886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !41, line: 107, size: 64, elements: !1887)
!1887 = !{!1888, !1889}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1886, file: !41, line: 108, baseType: !91, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1886, file: !41, line: 109, baseType: !91, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1871, file: !41, line: 117, baseType: !91, size: 64, offset: 256)
!1891 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !41, line: 119, baseType: !1892, size: 320)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1868, file: !41, line: 119, size: 320, elements: !1893)
!1893 = !{!1894, !1895, !1898, !1899, !1900}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1892, file: !41, line: 124, baseType: !91, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1892, file: !41, line: 125, baseType: !1896, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !41, line: 125, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1892, file: !41, line: 126, baseType: !91, size: 64, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1892, file: !41, line: 127, baseType: !91, size: 64, offset: 192)
!1900 = !DIDerivedType(tag: DW_TAG_member, scope: !1892, file: !41, line: 128, baseType: !1901, size: 64, offset: 256)
!1901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1892, file: !41, line: 128, size: 64, elements: !1902)
!1902 = !{!1903, !1904}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1901, file: !41, line: 133, baseType: !91, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1901, file: !41, line: 138, baseType: !205, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !41, line: 141, baseType: !1906, size: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1868, file: !41, line: 141, size: 64, elements: !1907)
!1907 = !{!1908}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1906, file: !41, line: 142, baseType: !91, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !41, line: 144, baseType: !1910, size: 128)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1868, file: !41, line: 144, size: 128, elements: !1911)
!1911 = !{!1912, !2152}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1910, file: !41, line: 146, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !33, line: 126, size: 1216, elements: !1915)
!1915 = !{!1916, !1926, !1947, !1958, !1959, !1960, !1961, !2134, !2135, !2136}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1914, file: !33, line: 127, baseType: !1917, size: 384)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !33, line: 21, size: 384, elements: !1918)
!1918 = !{!1919, !1920, !1922, !1923, !1924, !1925}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1917, file: !33, line: 22, baseType: !91, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1917, file: !33, line: 23, baseType: !1921, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1917, file: !33, line: 24, baseType: !1921, size: 64, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1917, file: !33, line: 25, baseType: !91, size: 64, offset: 192)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1917, file: !33, line: 26, baseType: !91, size: 64, offset: 256)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1917, file: !33, line: 27, baseType: !91, size: 64, offset: 320)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1914, file: !33, line: 128, baseType: !1927, size: 128, offset: 384)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1928, line: 105, size: 128, elements: !1929)
!1928 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1929 = !{!1930, !1931}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1927, file: !1928, line: 110, baseType: !91, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1927, file: !1928, line: 118, baseType: !1932, size: 64, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1928, line: 95, size: 448, elements: !1934)
!1934 = !{!1935, !1936, !1942, !1943, !1944, !1945, !1946}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1933, file: !1928, line: 96, baseType: !205, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1933, file: !1928, line: 97, baseType: !1937, size: 64, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1928, line: 60, baseType: !1939)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{null, !1941}
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1933, file: !1928, line: 98, baseType: !1937, size: 64, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1933, file: !1928, line: 99, baseType: !352, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1933, file: !1928, line: 100, baseType: !352, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1933, file: !1928, line: 101, baseType: !342, size: 128, align: 64, offset: 256)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1933, file: !1928, line: 102, baseType: !1941, size: 64, offset: 384)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1914, file: !33, line: 129, baseType: !1948, size: 256, offset: 512)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1949, line: 26, size: 256, elements: !1950)
!1949 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1950 = !{!1951, !1952}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1948, file: !1949, line: 27, baseType: !7, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1948, file: !1949, line: 28, baseType: !1953, size: 192, offset: 64)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1954, line: 43, size: 192, elements: !1955)
!1954 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1955 = !{!1956, !1957}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1953, file: !1954, line: 44, baseType: !289, size: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1953, file: !1954, line: 45, baseType: !149, size: 128, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1914, file: !33, line: 130, baseType: !32, size: 32, offset: 768)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1914, file: !33, line: 131, baseType: !7, size: 32, offset: 800)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1914, file: !33, line: 132, baseType: !91, size: 64, offset: 832)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1914, file: !33, line: 133, baseType: !1962, size: 64, offset: 896)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1964)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !33, line: 77, size: 192, elements: !1965)
!1965 = !{!1966, !1970, !2130}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1964, file: !33, line: 83, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{null, !1863}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1964, file: !33, line: 89, baseType: !1971, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!1974, !1975}
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !41, line: 1184, baseType: !7)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1977, line: 512, size: 896, elements: !1978)
!1977 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1978 = !{!1979, !2097, !2098, !2105, !2112, !2122, !2123, !2124, !2126, !2128}
!1979 = !DIDerivedType(tag: DW_TAG_member, scope: !1976, file: !1977, line: 513, baseType: !1980, size: 320)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1976, file: !1977, line: 513, size: 320, elements: !1981)
!1981 = !{!1982, !2093, !2094, !2095, !2096}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1980, file: !1977, line: 514, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !41, line: 625, size: 1344, elements: !1985)
!1985 = !{!1986, !1995, !1996, !2004, !2011, !2012, !2017, !2018, !2023, !2024, !2027, !2086, !2087, !2088, !2089, !2090, !2091}
!1986 = !DIDerivedType(tag: DW_TAG_member, scope: !1984, file: !41, line: 628, baseType: !1987, size: 128)
!1987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1984, file: !41, line: 628, size: 128, elements: !1988)
!1988 = !{!1989, !1994}
!1989 = !DIDerivedType(tag: DW_TAG_member, scope: !1987, file: !41, line: 629, baseType: !1990, size: 128)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1987, file: !41, line: 629, size: 128, elements: !1991)
!1991 = !{!1992, !1993}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1990, file: !41, line: 631, baseType: !91, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1990, file: !41, line: 632, baseType: !91, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1987, file: !41, line: 635, baseType: !342, size: 128, align: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1984, file: !41, line: 639, baseType: !793, size: 64, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1984, file: !41, line: 640, baseType: !1997, size: 64, offset: 192)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1998, line: 297, baseType: !1999)
!1998 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1998, line: 297, size: 64, elements: !2000)
!2000 = !{!2001}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1999, file: !1998, line: 297, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2003, line: 19, baseType: !91)
!2003 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2004 = !DIDerivedType(tag: DW_TAG_member, scope: !1984, file: !41, line: 646, baseType: !2005, size: 64, offset: 256)
!2005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1984, file: !41, line: 646, size: 64, elements: !2006)
!2006 = !{!2007, !2010}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2005, file: !41, line: 647, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2009)
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !41, line: 542, baseType: !91)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2005, file: !41, line: 648, baseType: !2009, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1984, file: !41, line: 666, baseType: !74, size: 32, offset: 320)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1984, file: !41, line: 667, baseType: !2013, size: 64, offset: 384)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !41, line: 579, size: 320, elements: !2015)
!2015 = !{!2016}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2014, file: !41, line: 580, baseType: !278, size: 320)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1984, file: !41, line: 670, baseType: !352, size: 8, offset: 448)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1984, file: !41, line: 681, baseType: !2019, size: 256, offset: 512)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1984, file: !41, line: 678, size: 256, elements: !2020)
!2020 = !{!2021, !2022}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2019, file: !41, line: 679, baseType: !270, size: 192, align: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2019, file: !41, line: 680, baseType: !91, size: 64, offset: 192)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1984, file: !41, line: 689, baseType: !149, size: 128, offset: 768)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1984, file: !41, line: 691, baseType: !2025, size: 64, offset: 896)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !41, line: 691, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1984, file: !41, line: 694, baseType: !2028, size: 64, offset: 960)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2030)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1977, line: 563, size: 1024, elements: !2031)
!2031 = !{!2032, !2036, !2037, !2041, !2045, !2049, !2050, !2054, !2058, !2062, !2063, !2064, !2068, !2072, !2078, !2082}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2030, file: !1977, line: 564, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null, !1983}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2030, file: !1977, line: 569, baseType: !2033, size: 64, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2030, file: !1977, line: 571, baseType: !2038, size: 64, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!74, !1983, !91}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2030, file: !1977, line: 572, baseType: !2042, size: 64, offset: 192)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!74, !1983}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2030, file: !1977, line: 578, baseType: !2046, size: 64, offset: 256)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!74, !1983, !91, !91, !91}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2030, file: !1977, line: 580, baseType: !1971, size: 64, offset: 320)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2030, file: !1977, line: 581, baseType: !2051, size: 64, offset: 384)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!1974, !1975, !7}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2030, file: !1977, line: 582, baseType: !2055, size: 64, offset: 448)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!1974, !1975, !91, !91}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2030, file: !1977, line: 584, baseType: !2059, size: 64, offset: 512)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!91, !1983}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2030, file: !1977, line: 588, baseType: !1971, size: 64, offset: 576)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2030, file: !1977, line: 591, baseType: !1971, size: 64, offset: 640)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2030, file: !1977, line: 597, baseType: !2065, size: 64, offset: 704)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!74, !1983, !91, !72, !74, !74}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2030, file: !1977, line: 603, baseType: !2069, size: 64, offset: 768)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!68, !1983}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2030, file: !1977, line: 613, baseType: !2073, size: 64, offset: 832)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!74, !1983, !2076}
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !41, line: 717, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2030, file: !1977, line: 625, baseType: !2079, size: 64, offset: 896)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!2076, !1983, !91}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2030, file: !1977, line: 633, baseType: !2083, size: 64, offset: 960)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!1863, !1983, !91}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1984, file: !41, line: 697, baseType: !91, size: 64, offset: 1024)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1984, file: !41, line: 699, baseType: !821, size: 64, offset: 1088)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1984, file: !41, line: 700, baseType: !72, size: 64, offset: 1152)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1984, file: !41, line: 711, baseType: !205, size: 64, offset: 1216)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1984, file: !41, line: 717, baseType: !2076, size: 64, offset: 1280)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1984, file: !41, line: 722, baseType: !2092, offset: 1344)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !41, line: 570, elements: !814)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1980, file: !1977, line: 515, baseType: !1159, size: 32, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1980, file: !1977, line: 516, baseType: !91, size: 64, offset: 128)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1980, file: !1977, line: 517, baseType: !91, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1980, file: !1977, line: 518, baseType: !91, size: 64, offset: 256)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1976, file: !1977, line: 520, baseType: !40, size: 32, offset: 320)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1976, file: !1977, line: 522, baseType: !2099, size: 64, offset: 384)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2003, line: 22, baseType: !2101)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2003, line: 22, size: 64, elements: !2102)
!2102 = !{!2103}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2101, file: !2003, line: 22, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2003, line: 15, baseType: !91)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1976, file: !1977, line: 524, baseType: !2106, size: 64, offset: 448)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1998, line: 372, baseType: !2108)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1998, line: 372, size: 64, elements: !2109)
!2109 = !{!2110}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2108, file: !1998, line: 372, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2003, line: 16, baseType: !91)
!2112 = !DIDerivedType(tag: DW_TAG_member, scope: !1976, file: !1977, line: 527, baseType: !2113, size: 64, offset: 512)
!2113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1976, file: !1977, line: 527, size: 64, elements: !2114)
!2114 = !{!2115, !2121}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2113, file: !1977, line: 528, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2003, line: 21, baseType: !2117)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2003, line: 21, size: 64, elements: !2118)
!2118 = !{!2119}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2117, file: !2003, line: 21, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2003, line: 14, baseType: !91)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2113, file: !1977, line: 529, baseType: !2100, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1976, file: !1977, line: 534, baseType: !1863, size: 64, offset: 576)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1976, file: !1977, line: 535, baseType: !1863, size: 64, offset: 640)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1976, file: !1977, line: 541, baseType: !2125, size: 64, offset: 704)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1976, file: !1977, line: 545, baseType: !2127, size: 64, offset: 768)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1976, file: !1977, line: 549, baseType: !2129, size: 64, offset: 832)
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1998, line: 520, baseType: !1863)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1964, file: !33, line: 100, baseType: !2131, size: 64, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!74, !1913, !91, !91, !74}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1914, file: !33, line: 134, baseType: !72, size: 64, offset: 960)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1914, file: !33, line: 135, baseType: !74, size: 32, offset: 1024)
!2136 = !DIDerivedType(tag: DW_TAG_member, scope: !1914, file: !33, line: 136, baseType: !2137, size: 128, offset: 1088)
!2137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1914, file: !33, line: 136, size: 128, elements: !2138)
!2138 = !{!2139, !2145}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2137, file: !33, line: 137, baseType: !2140, size: 128)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2141, line: 6, size: 128, elements: !2142)
!2141 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2142 = !{!2143, !2144}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2140, file: !2141, line: 7, baseType: !241, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2140, file: !2141, line: 8, baseType: !241, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, scope: !2137, file: !33, line: 138, baseType: !2146)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !33, line: 138, elements: !2147)
!2147 = !{!2148, !2150}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2146, file: !33, line: 138, baseType: !2149)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2146, file: !33, line: 138, elements: !814)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2146, file: !33, line: 138, baseType: !2151)
!2151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2140, elements: !893)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1910, file: !41, line: 147, baseType: !72, size: 64, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1868, file: !41, line: 161, baseType: !342, size: 128, align: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, scope: !1864, file: !41, line: 164, baseType: !2155, size: 32, offset: 384)
!2155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1864, file: !41, line: 164, size: 32, elements: !2156)
!2156 = !{!2157, !2158}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2155, file: !41, line: 169, baseType: !101, size: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2155, file: !41, line: 177, baseType: !7, size: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1864, file: !41, line: 181, baseType: !101, size: 32, offset: 416)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1857, file: !183, line: 406, baseType: !2161, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!74, !821, !2164}
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !41, line: 293, size: 1536, elements: !2166)
!2166 = !{!2167, !2197, !2211}
!2167 = !DIDerivedType(tag: DW_TAG_member, scope: !2165, file: !41, line: 295, baseType: !2168, size: 512)
!2168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2165, file: !41, line: 295, size: 512, elements: !2169)
!2169 = !{!2170, !2196}
!2170 = !DIDerivedType(tag: DW_TAG_member, scope: !2168, file: !41, line: 296, baseType: !2171, size: 448)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2168, file: !41, line: 296, size: 448, elements: !2172)
!2172 = !{!2173, !2174, !2183, !2184, !2185, !2194, !2195}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2171, file: !41, line: 298, baseType: !91, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, scope: !2171, file: !41, line: 299, baseType: !2175, size: 128, offset: 64)
!2175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2171, file: !41, line: 299, size: 128, elements: !2176)
!2176 = !{!2177, !2178}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2175, file: !41, line: 300, baseType: !149, size: 128)
!2178 = !DIDerivedType(tag: DW_TAG_member, scope: !2175, file: !41, line: 302, baseType: !2179, size: 128)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2175, file: !41, line: 302, size: 128, elements: !2180)
!2180 = !{!2181, !2182}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2179, file: !41, line: 303, baseType: !72, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2179, file: !41, line: 305, baseType: !7, size: 32, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2171, file: !41, line: 310, baseType: !1843, size: 64, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2171, file: !41, line: 311, baseType: !91, size: 64, offset: 256)
!2185 = !DIDerivedType(tag: DW_TAG_member, scope: !2171, file: !41, line: 312, baseType: !2186, size: 64, offset: 320)
!2186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2171, file: !41, line: 312, size: 64, elements: !2187)
!2187 = !{!2188, !2189}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2186, file: !41, line: 313, baseType: !72, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2186, file: !41, line: 314, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !41, line: 257, baseType: !2191)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 255, size: 64, elements: !2192)
!2192 = !{!2193}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2191, file: !41, line: 256, baseType: !91, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2171, file: !41, line: 316, baseType: !101, size: 32, offset: 384)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2171, file: !41, line: 317, baseType: !101, size: 32, offset: 416)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2168, file: !41, line: 323, baseType: !1864, size: 512, align: 128)
!2197 = !DIDerivedType(tag: DW_TAG_member, scope: !2165, file: !41, line: 325, baseType: !2198, size: 512, offset: 512)
!2198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2165, file: !41, line: 325, size: 512, elements: !2199)
!2199 = !{!2200, !2210}
!2200 = !DIDerivedType(tag: DW_TAG_member, scope: !2198, file: !41, line: 326, baseType: !2201, size: 320)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2198, file: !41, line: 326, size: 320, elements: !2202)
!2202 = !{!2203, !2204, !2205, !2206, !2207, !2208, !2209}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2201, file: !41, line: 327, baseType: !91, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2201, file: !41, line: 328, baseType: !91, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2201, file: !41, line: 329, baseType: !91, size: 64, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2201, file: !41, line: 331, baseType: !101, size: 32, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2201, file: !41, line: 332, baseType: !101, size: 32, offset: 224)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2201, file: !41, line: 333, baseType: !101, size: 32, offset: 256)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2201, file: !41, line: 335, baseType: !7, size: 32, offset: 288)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2198, file: !41, line: 339, baseType: !1864, size: 512, align: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, scope: !2165, file: !41, line: 341, baseType: !2212, size: 512, offset: 1024)
!2212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2165, file: !41, line: 341, size: 512, elements: !2213)
!2213 = !{!2214, !2223, !2229}
!2214 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !41, line: 342, baseType: !2215, size: 384)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !41, line: 342, size: 384, elements: !2216)
!2216 = !{!2217, !2218, !2219, !2220, !2221, !2222}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2215, file: !41, line: 343, baseType: !91, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2215, file: !41, line: 344, baseType: !91, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2215, file: !41, line: 346, baseType: !72, size: 64, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2215, file: !41, line: 347, baseType: !72, size: 64, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2215, file: !41, line: 348, baseType: !72, size: 64, offset: 256)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2215, file: !41, line: 349, baseType: !72, size: 64, offset: 320)
!2223 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !41, line: 352, baseType: !2224, size: 256)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !41, line: 352, size: 256, elements: !2225)
!2225 = !{!2226, !2227, !2228}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2224, file: !41, line: 353, baseType: !91, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2224, file: !41, line: 354, baseType: !91, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2224, file: !41, line: 356, baseType: !149, size: 128, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2212, file: !41, line: 359, baseType: !1864, size: 512, align: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1857, file: !183, line: 409, baseType: !2231, size: 64, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!74, !1843, !1320}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1857, file: !183, line: 412, baseType: !2235, size: 64, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!352, !1843, !2164}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1857, file: !183, line: 414, baseType: !2239, size: 64, offset: 256)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{null, !2242}
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !183, line: 310, flags: DIFlagFwdDecl)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1857, file: !183, line: 416, baseType: !2245, size: 64, offset: 320)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!74, !821, !1843, !93, !7, !2248, !2249}
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1857, file: !183, line: 419, baseType: !2251, size: 64, offset: 384)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!74, !821, !1843, !93, !7, !7, !1863, !72}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1857, file: !183, line: 424, baseType: !2255, size: 64, offset: 448)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!2258, !1843, !2258}
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !77, line: 131, baseType: !241)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1857, file: !183, line: 425, baseType: !2260, size: 64, offset: 512)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{null, !2164, !87, !87}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1857, file: !183, line: 426, baseType: !2264, size: 64, offset: 576)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!352, !2164, !1159}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1857, file: !183, line: 427, baseType: !2268, size: 64, offset: 640)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{null, !2164}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1857, file: !183, line: 428, baseType: !2272, size: 64, offset: 704)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!1107, !2275, !2297}
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !183, line: 373, size: 384, elements: !2277)
!2277 = !{!2278, !2279, !2280, !2284, !2285, !2286, !2287}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2276, file: !183, line: 374, baseType: !821, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2276, file: !183, line: 375, baseType: !93, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2276, file: !183, line: 376, baseType: !2281, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{null, !2275, !1068}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2276, file: !183, line: 377, baseType: !72, size: 64, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2276, file: !183, line: 378, baseType: !74, size: 32, offset: 256)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2276, file: !183, line: 379, baseType: !145, size: 16, offset: 288)
!2287 = !DIDerivedType(tag: DW_TAG_member, scope: !2276, file: !183, line: 380, baseType: !2288, size: 64, offset: 320)
!2288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2276, file: !183, line: 380, size: 64, elements: !2289)
!2289 = !{!2290, !2293}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2288, file: !183, line: 386, baseType: !2291, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !183, line: 386, flags: DIFlagFwdDecl)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2288, file: !183, line: 395, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!1107, !72}
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !183, line: 69, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1857, file: !183, line: 433, baseType: !2300, size: 64, offset: 768)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!74, !1843, !2164, !2164, !25}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1857, file: !183, line: 435, baseType: !2304, size: 64, offset: 832)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!74, !2164}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1857, file: !183, line: 436, baseType: !2308, size: 64, offset: 896)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!352, !2164, !87, !87}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1857, file: !183, line: 438, baseType: !2312, size: 64, offset: 960)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{null, !2164, !2315, !2315}
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1857, file: !183, line: 439, baseType: !2317, size: 64, offset: 1024)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!74, !1843, !1863}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1857, file: !183, line: 442, baseType: !2321, size: 64, offset: 1088)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!74, !2324, !821, !2326}
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !183, line: 66, flags: DIFlagFwdDecl)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1857, file: !183, line: 444, baseType: !2328, size: 64, offset: 1152)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{null, !821}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1857, file: !183, line: 445, baseType: !2332, size: 64, offset: 1216)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!74, !2275, !2297}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1844, file: !183, line: 486, baseType: !91, size: 64, offset: 896)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1844, file: !183, line: 487, baseType: !278, size: 320, offset: 960)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1844, file: !183, line: 488, baseType: !1800, size: 32, offset: 1280)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1844, file: !183, line: 489, baseType: !111, size: 32, offset: 1312)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1844, file: !183, line: 490, baseType: !149, size: 128, offset: 1344)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1844, file: !183, line: 491, baseType: !72, size: 64, offset: 1472)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !955, file: !183, line: 659, baseType: !72, size: 64, offset: 576)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !955, file: !183, line: 663, baseType: !91, size: 64, offset: 640)
!2343 = !DIDerivedType(tag: DW_TAG_member, scope: !955, file: !183, line: 671, baseType: !2344, size: 32, offset: 704)
!2344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !955, file: !183, line: 671, size: 32, elements: !2345)
!2345 = !{!2346, !2348}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2344, file: !183, line: 672, baseType: !2347, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2344, file: !183, line: 673, baseType: !7, size: 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !955, file: !183, line: 675, baseType: !1028, size: 32, offset: 736)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !955, file: !183, line: 676, baseType: !93, size: 64, offset: 768)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !955, file: !183, line: 677, baseType: !1064, size: 128, offset: 832)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !955, file: !183, line: 678, baseType: !1064, size: 128, offset: 960)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !955, file: !183, line: 679, baseType: !1064, size: 128, offset: 1088)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !955, file: !183, line: 680, baseType: !111, size: 32, offset: 1216)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !955, file: !183, line: 681, baseType: !78, size: 16, offset: 1248)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !955, file: !183, line: 682, baseType: !135, size: 8, offset: 1264)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !955, file: !183, line: 683, baseType: !135, size: 8, offset: 1272)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !955, file: !183, line: 684, baseType: !1591, size: 64, offset: 1280)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !955, file: !183, line: 691, baseType: !91, size: 64, offset: 1344)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !955, file: !183, line: 692, baseType: !278, size: 320, offset: 1408)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !955, file: !183, line: 694, baseType: !91, size: 64, offset: 1728)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !955, file: !183, line: 695, baseType: !91, size: 64, offset: 1792)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !955, file: !183, line: 697, baseType: !424, size: 128, offset: 1856)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !955, file: !183, line: 698, baseType: !149, size: 128, offset: 1984)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !955, file: !183, line: 707, baseType: !149, size: 128, offset: 2112)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !955, file: !183, line: 708, baseType: !149, size: 128, offset: 2240)
!2367 = !DIDerivedType(tag: DW_TAG_member, scope: !955, file: !183, line: 709, baseType: !2368, size: 128, offset: 2368)
!2368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !955, file: !183, line: 709, size: 128, elements: !2369)
!2369 = !{!2370, !2371}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2368, file: !183, line: 710, baseType: !879, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2368, file: !183, line: 711, baseType: !342, size: 128, align: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !955, file: !183, line: 713, baseType: !207, size: 64, offset: 2496)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !955, file: !183, line: 714, baseType: !207, size: 64, offset: 2560)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !955, file: !183, line: 715, baseType: !101, size: 32, offset: 2624)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !955, file: !183, line: 716, baseType: !101, size: 32, offset: 2656)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !955, file: !183, line: 717, baseType: !101, size: 32, offset: 2688)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !955, file: !183, line: 719, baseType: !101, size: 32, offset: 2720)
!2378 = !DIDerivedType(tag: DW_TAG_member, scope: !955, file: !183, line: 721, baseType: !2379, size: 64, offset: 2752)
!2379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !955, file: !183, line: 721, size: 64, elements: !2380)
!2380 = !{!2381, !2511}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2379, file: !183, line: 722, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2384)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !183, line: 1914, size: 2112, elements: !2385)
!2385 = !{!2386, !2387, !2391, !2395, !2399, !2400, !2401, !2407, !2420, !2428, !2432, !2433, !2437, !2438, !2442, !2447, !2448, !2452, !2456, !2462, !2463, !2467, !2468, !2474, !2478, !2479, !2484, !2488, !2492, !2496, !2500, !2501, !2507}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2384, file: !183, line: 1915, baseType: !1255, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2384, file: !183, line: 1916, baseType: !2388, size: 64, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!93, !821, !93, !74}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2384, file: !183, line: 1917, baseType: !2392, size: 64, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!1107, !821, !363, !87, !92}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2384, file: !183, line: 1918, baseType: !2396, size: 64, offset: 192)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!1107, !821, !68, !87, !92}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2384, file: !183, line: 1919, baseType: !2272, size: 64, offset: 256)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2384, file: !183, line: 1920, baseType: !2272, size: 64, offset: 320)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2384, file: !183, line: 1921, baseType: !2402, size: 64, offset: 384)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!74, !2275, !2405, !7}
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !183, line: 53, flags: DIFlagFwdDecl)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2384, file: !183, line: 1923, baseType: !2408, size: 64, offset: 448)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!74, !821, !2411}
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !183, line: 1858, size: 128, elements: !2413)
!2413 = !{!2414, !2419}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2412, file: !183, line: 1859, baseType: !2415, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !183, line: 1855, baseType: !2416)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!352, !2411, !68, !74, !93, !241, !7}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2412, file: !183, line: 1860, baseType: !93, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2384, file: !183, line: 1924, baseType: !2421, size: 64, offset: 512)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!2424, !821, !2426}
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2425, line: 59, baseType: !7)
!2425 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !183, line: 61, flags: DIFlagFwdDecl)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2384, file: !183, line: 1925, baseType: !2429, size: 64, offset: 576)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!1068, !821, !7, !91}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2384, file: !183, line: 1926, baseType: !2429, size: 64, offset: 640)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2384, file: !183, line: 1927, baseType: !2434, size: 64, offset: 704)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!74, !821, !1983}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2384, file: !183, line: 1928, baseType: !91, size: 64, offset: 768)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2384, file: !183, line: 1929, baseType: !2439, size: 64, offset: 832)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!74, !954, !821}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2384, file: !183, line: 1930, baseType: !2443, size: 64, offset: 896)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!74, !821, !2446}
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !183, line: 1061, baseType: !72)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2384, file: !183, line: 1931, baseType: !2439, size: 64, offset: 960)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2384, file: !183, line: 1932, baseType: !2449, size: 64, offset: 1024)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!74, !821, !93, !93, !74}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2384, file: !183, line: 1933, baseType: !2453, size: 64, offset: 1088)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!74, !74, !821, !74}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2384, file: !183, line: 1934, baseType: !2457, size: 64, offset: 1152)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!74, !821, !74, !2460}
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !183, line: 1063, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2384, file: !183, line: 1935, baseType: !818, size: 64, offset: 1216)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2384, file: !183, line: 1936, baseType: !2464, size: 64, offset: 1280)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!74, !74}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2384, file: !183, line: 1937, baseType: !2457, size: 64, offset: 1344)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2384, file: !183, line: 1938, baseType: !2469, size: 64, offset: 1408)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!1107, !2472, !821, !92, !87, !7}
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !497, line: 59, flags: DIFlagFwdDecl)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2384, file: !183, line: 1939, baseType: !2475, size: 64, offset: 1472)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!1107, !821, !92, !2472, !87, !7}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2384, file: !183, line: 1940, baseType: !2328, size: 64, offset: 1536)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2384, file: !183, line: 1941, baseType: !2480, size: 64, offset: 1600)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!74, !821, !74, !2483, !2249}
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2384, file: !183, line: 1942, baseType: !2485, size: 64, offset: 1664)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!1068, !821, !74, !93, !93}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2384, file: !183, line: 1944, baseType: !2489, size: 64, offset: 1728)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{null, !1358, !821}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2384, file: !183, line: 1948, baseType: !2493, size: 64, offset: 1792)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!1107, !821, !93, !821, !93, !87, !7}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2384, file: !183, line: 1950, baseType: !2497, size: 64, offset: 1856)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!93, !821, !93, !821, !93, !93, !7}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2384, file: !183, line: 1953, baseType: !2449, size: 64, offset: 1920)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2384, file: !183, line: 1954, baseType: !2502, size: 64, offset: 1984)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!74, !2505, !7}
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !183, line: 1911, flags: DIFlagFwdDecl)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2384, file: !183, line: 1955, baseType: !2508, size: 64, offset: 2048)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!74, !2505, !2405, !7}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2379, file: !183, line: 723, baseType: !1308, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !955, file: !183, line: 725, baseType: !2513, size: 64, offset: 2816)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !183, line: 725, flags: DIFlagFwdDecl)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !955, file: !183, line: 726, baseType: !1844, size: 1536, align: 64, offset: 2880)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !955, file: !183, line: 727, baseType: !149, size: 128, offset: 4416)
!2517 = !DIDerivedType(tag: DW_TAG_member, scope: !955, file: !183, line: 728, baseType: !2518, size: 64, offset: 4544)
!2518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !955, file: !183, line: 728, size: 64, elements: !2519)
!2519 = !{!2520, !2521, !2524, !2525}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2518, file: !183, line: 729, baseType: !2472, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2518, file: !183, line: 730, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !183, line: 730, flags: DIFlagFwdDecl)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2518, file: !183, line: 731, baseType: !363, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2518, file: !183, line: 732, baseType: !7, size: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !955, file: !183, line: 735, baseType: !309, size: 32, offset: 4608)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !955, file: !183, line: 738, baseType: !309, size: 32, offset: 4640)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !955, file: !183, line: 739, baseType: !1704, size: 64, offset: 4672)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !955, file: !183, line: 750, baseType: !72, size: 64, offset: 4736)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !920, file: !921, line: 91, baseType: !2531, size: 256, offset: 448)
!2531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 256, elements: !1708)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !920, file: !921, line: 94, baseType: !2533, size: 64, offset: 704)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2534, line: 25, size: 64, elements: !2535)
!2534 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2535 = !{!2536}
!2536 = !DIDerivedType(tag: DW_TAG_member, scope: !2533, file: !2534, line: 26, baseType: !2537, size: 64)
!2537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2533, file: !2534, line: 26, size: 64, elements: !2538)
!2538 = !{!2539, !2540}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2537, file: !2534, line: 28, baseType: !242, size: 64, align: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, scope: !2537, file: !2534, line: 30, baseType: !2541, size: 64)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2537, file: !2534, line: 30, size: 64, elements: !2542)
!2542 = !{!2543, !2544}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2541, file: !2534, line: 31, baseType: !111, size: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2541, file: !2534, line: 32, baseType: !74, size: 32, offset: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !920, file: !921, line: 95, baseType: !1723, size: 64, offset: 768)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !920, file: !921, line: 96, baseType: !1163, size: 64, offset: 832)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !920, file: !921, line: 97, baseType: !91, size: 64, offset: 896)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !920, file: !921, line: 98, baseType: !72, size: 64, offset: 960)
!2549 = !DIDerivedType(tag: DW_TAG_member, scope: !920, file: !921, line: 100, baseType: !2550, size: 128, offset: 1024)
!2550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !920, file: !921, line: 100, size: 128, elements: !2551)
!2551 = !{!2552, !2553}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2550, file: !921, line: 101, baseType: !149, size: 128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2550, file: !921, line: 102, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !920, file: !921, line: 104, baseType: !149, size: 128, offset: 1152)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !920, file: !921, line: 105, baseType: !149, size: 128, offset: 1280)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !920, file: !921, line: 113, baseType: !2558, size: 128, offset: 1408)
!2558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !920, file: !921, line: 109, size: 128, elements: !2559)
!2559 = !{!2560, !2561, !2562}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2558, file: !921, line: 110, baseType: !424, size: 128)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2558, file: !921, line: 111, baseType: !930, size: 128)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2558, file: !921, line: 112, baseType: !342, size: 128, align: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !915, file: !916, line: 72, baseType: !1163, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !915, file: !916, line: 73, baseType: !74, size: 32, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !915, file: !916, line: 74, baseType: !993, size: 64, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !910, file: !911, line: 10, baseType: !919, size: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !822, file: !183, line: 1015, baseType: !954, size: 64, offset: 1344)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !822, file: !183, line: 1016, baseType: !2382, size: 64, offset: 1408)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !822, file: !183, line: 1018, baseType: !241, size: 64, offset: 1472)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !822, file: !183, line: 1020, baseType: !72, size: 64, offset: 1536)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !822, file: !183, line: 1023, baseType: !72, size: 64, offset: 1600)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !822, file: !183, line: 1027, baseType: !2573, size: 64, offset: 1664)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !822, file: !183, line: 1029, baseType: !1843, size: 64, offset: 1728)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !822, file: !183, line: 1030, baseType: !1800, size: 32, offset: 1792)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !822, file: !183, line: 1031, baseType: !1800, size: 32, offset: 1824)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !797, file: !41, line: 756, baseType: !91, size: 64, offset: 704)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !797, file: !41, line: 757, baseType: !91, size: 64, offset: 768)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !797, file: !41, line: 760, baseType: !91, size: 64, offset: 832)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !797, file: !41, line: 761, baseType: !91, size: 64, offset: 896)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !797, file: !41, line: 763, baseType: !91, size: 64, offset: 960)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !797, file: !41, line: 764, baseType: !2583, size: 64, offset: 1024)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1998, line: 299, baseType: !2585)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1998, line: 299, size: 64, elements: !2586)
!2586 = !{!2587}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2585, file: !1998, line: 299, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2003, line: 18, baseType: !91)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !797, file: !41, line: 773, baseType: !101, size: 32, offset: 1088)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !797, file: !41, line: 785, baseType: !101, size: 32, offset: 1120)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !797, file: !41, line: 795, baseType: !2592, size: 64, offset: 1152)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !41, line: 726, size: 128, elements: !2594)
!2594 = !{!2595, !2596}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2593, file: !41, line: 727, baseType: !241, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2593, file: !41, line: 728, baseType: !74, size: 32, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !797, file: !41, line: 801, baseType: !91, size: 64, offset: 1216)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !797, file: !41, line: 804, baseType: !205, size: 64, offset: 1280)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !797, file: !41, line: 806, baseType: !74, size: 32, offset: 1344)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !797, file: !41, line: 808, baseType: !111, size: 32, offset: 1376)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !797, file: !41, line: 823, baseType: !278, size: 320, offset: 1408)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !797, file: !41, line: 825, baseType: !149, size: 128, offset: 1728)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !797, file: !41, line: 845, baseType: !74, size: 32, offset: 1856)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !797, file: !41, line: 849, baseType: !91, size: 64, offset: 1920)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !797, file: !41, line: 850, baseType: !91, size: 64, offset: 1984)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !797, file: !41, line: 852, baseType: !91, size: 64, offset: 2048)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !797, file: !41, line: 853, baseType: !91, size: 64, offset: 2112)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !797, file: !41, line: 854, baseType: !207, size: 64, offset: 2176)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !797, file: !41, line: 855, baseType: !91, size: 64, offset: 2240)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !797, file: !41, line: 856, baseType: !91, size: 64, offset: 2304)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !797, file: !41, line: 857, baseType: !91, size: 64, offset: 2368)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !797, file: !41, line: 858, baseType: !91, size: 64, offset: 2432)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !797, file: !41, line: 865, baseType: !667, size: 32, offset: 2496)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !797, file: !41, line: 867, baseType: !111, size: 32, offset: 2528)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !797, file: !41, line: 869, baseType: !91, size: 64, offset: 2560)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !797, file: !41, line: 869, baseType: !91, size: 64, offset: 2624)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !797, file: !41, line: 869, baseType: !91, size: 64, offset: 2688)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !797, file: !41, line: 869, baseType: !91, size: 64, offset: 2752)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !797, file: !41, line: 870, baseType: !91, size: 64, offset: 2816)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !797, file: !41, line: 870, baseType: !91, size: 64, offset: 2880)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !797, file: !41, line: 870, baseType: !91, size: 64, offset: 2944)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !797, file: !41, line: 871, baseType: !91, size: 64, offset: 3008)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !797, file: !41, line: 871, baseType: !91, size: 64, offset: 3072)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !797, file: !41, line: 871, baseType: !91, size: 64, offset: 3136)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !797, file: !41, line: 871, baseType: !91, size: 64, offset: 3200)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !797, file: !41, line: 873, baseType: !2627, size: 3328, offset: 3264)
!2627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 3328, elements: !2628)
!2628 = !{!2629}
!2629 = !DISubrange(count: 52)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !797, file: !41, line: 875, baseType: !2631, size: 1280, offset: 6592)
!2631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 1280, elements: !373)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !797, file: !41, line: 877, baseType: !2633, size: 64, offset: 7872)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !41, line: 877, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !797, file: !41, line: 880, baseType: !2636, size: 1088, offset: 7936)
!2636 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2637, line: 72, baseType: !2638)
!2637 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2637, line: 23, size: 1088, elements: !2639)
!2639 = !{!2640, !2641, !2642, !2643, !2644, !2647, !2648, !2649, !2650, !2654, !2655, !2656}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2638, file: !2637, line: 28, baseType: !241, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2638, file: !2637, line: 38, baseType: !207, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2638, file: !2637, line: 40, baseType: !91, size: 64, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2638, file: !2637, line: 43, baseType: !278, size: 320, offset: 192)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2638, file: !2637, line: 44, baseType: !2645, size: 64, offset: 512)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2637, line: 44, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2638, file: !2637, line: 48, baseType: !91, size: 64, offset: 576)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2638, file: !2637, line: 59, baseType: !835, size: 256, offset: 640)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2638, file: !2637, line: 60, baseType: !72, size: 64, offset: 896)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2638, file: !2637, line: 61, baseType: !2651, size: 64, offset: 960)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2653)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2637, line: 61, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2638, file: !2637, line: 63, baseType: !101, size: 32, offset: 1024)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2638, file: !2637, line: 69, baseType: !145, size: 16, offset: 1056)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2638, file: !2637, line: 70, baseType: !2657, size: 16, offset: 1072)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !136, line: 18, baseType: !2658)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !138, line: 23, baseType: !313)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !797, file: !41, line: 882, baseType: !91, size: 64, offset: 9024)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !797, file: !41, line: 885, baseType: !111, size: 32, offset: 9088)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !797, file: !41, line: 886, baseType: !2662, size: 64, offset: 9152)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !41, line: 732, flags: DIFlagFwdDecl)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !797, file: !41, line: 901, baseType: !444, size: 64, offset: 9216)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !797, file: !41, line: 904, baseType: !821, size: 64, offset: 9280)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !797, file: !41, line: 906, baseType: !2667, size: 64, offset: 9344)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !41, line: 906, flags: DIFlagFwdDecl)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !797, file: !41, line: 930, baseType: !101, size: 32, offset: 9408)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !797, file: !41, line: 933, baseType: !101, size: 32, offset: 9440)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !797, file: !41, line: 935, baseType: !2672, size: 64, offset: 9472)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !57, line: 103, size: 64, elements: !2673)
!2673 = !{!2674}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2672, file: !57, line: 104, baseType: !2675, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !57, line: 101, flags: DIFlagFwdDecl)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !797, file: !41, line: 940, baseType: !205, size: 64, offset: 9536)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !797, file: !41, line: 942, baseType: !1826, size: 256, offset: 9600)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !794, file: !41, line: 986, baseType: !2680, offset: 10240)
!2680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, elements: !893)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !496, file: !497, line: 882, baseType: !793, size: 64, offset: 9792)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !496, file: !497, line: 884, baseType: !74, size: 32, offset: 9856)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !496, file: !497, line: 885, baseType: !74, size: 32, offset: 9888)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !496, file: !497, line: 886, baseType: !74, size: 32, offset: 9920)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !496, file: !497, line: 888, baseType: !74, size: 32, offset: 9952)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !496, file: !497, line: 890, baseType: !91, size: 64, offset: 9984)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !496, file: !497, line: 893, baseType: !7, size: 32, offset: 10048)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !496, file: !497, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !496, file: !497, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !496, file: !497, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !496, file: !497, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !496, file: !497, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !496, file: !497, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !496, file: !497, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !496, file: !497, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !496, file: !497, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !496, file: !497, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !496, file: !497, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !496, file: !497, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !496, file: !497, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !496, file: !497, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !496, file: !497, line: 969, baseType: !91, size: 64, offset: 10176)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !496, file: !497, line: 971, baseType: !2704, size: 448, offset: 10240)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !20, line: 25, size: 448, elements: !2705)
!2705 = !{!2706, !2707, !2712}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2704, file: !20, line: 26, baseType: !91, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2704, file: !20, line: 27, baseType: !2708, size: 64, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!1068, !2711}
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, scope: !2704, file: !20, line: 28, baseType: !2713, size: 320, offset: 128)
!2713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2704, file: !20, line: 28, size: 320, elements: !2714)
!2714 = !{!2715, !2725, !2750}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2713, file: !20, line: 37, baseType: !2716, size: 320)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2713, file: !20, line: 30, size: 320, elements: !2717)
!2717 = !{!2718, !2720, !2721, !2722, !2723, !2724}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2716, file: !20, line: 31, baseType: !2719, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2716, file: !20, line: 32, baseType: !308, size: 32, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2716, file: !20, line: 33, baseType: !308, size: 32, offset: 96)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2716, file: !20, line: 34, baseType: !308, size: 32, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2716, file: !20, line: 35, baseType: !241, size: 64, offset: 192)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2716, file: !20, line: 36, baseType: !2719, size: 64, offset: 256)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2713, file: !20, line: 47, baseType: !2726, size: 192)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2713, file: !20, line: 39, size: 192, elements: !2727)
!2727 = !{!2728, !2729, !2730, !2749}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2726, file: !20, line: 40, baseType: !659, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2726, file: !20, line: 41, baseType: !19, size: 32, offset: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, scope: !2726, file: !20, line: 42, baseType: !2731, size: 64, offset: 64)
!2731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2726, file: !20, line: 42, size: 64, elements: !2732)
!2732 = !{!2733, !2741}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2731, file: !20, line: 43, baseType: !2734, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2736, line: 7, size: 128, elements: !2737)
!2736 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2737 = !{!2738, !2740}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2735, file: !2736, line: 8, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !89, line: 93, baseType: !95)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2735, file: !2736, line: 9, baseType: !95, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2731, file: !20, line: 44, baseType: !2742, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2744, line: 7, size: 64, elements: !2745)
!2744 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2745 = !{!2746, !2748}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2743, file: !2744, line: 8, baseType: !2747, size: 32)
!2747 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2744, line: 5, baseType: !263)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2743, file: !2744, line: 9, baseType: !263, size: 32, offset: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2726, file: !20, line: 46, baseType: !241, size: 64, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2713, file: !20, line: 55, baseType: !2751, size: 256)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2713, file: !20, line: 49, size: 256, elements: !2752)
!2752 = !{!2753, !2756, !2757, !2758, !2759}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2751, file: !20, line: 50, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !20, line: 14, flags: DIFlagFwdDecl)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2751, file: !20, line: 51, baseType: !74, size: 32, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2751, file: !20, line: 52, baseType: !74, size: 32, offset: 96)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2751, file: !20, line: 53, baseType: !91, size: 64, offset: 128)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2751, file: !20, line: 54, baseType: !91, size: 64, offset: 192)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !496, file: !497, line: 973, baseType: !2761, size: 32, offset: 10688)
!2761 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !77, line: 27, baseType: !2762)
!2762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !89, line: 28, baseType: !74)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !496, file: !497, line: 974, baseType: !2761, size: 32, offset: 10720)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !496, file: !497, line: 978, baseType: !91, size: 64, offset: 10752)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !496, file: !497, line: 987, baseType: !495, size: 64, offset: 10816)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !496, file: !497, line: 990, baseType: !495, size: 64, offset: 10880)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !496, file: !497, line: 995, baseType: !149, size: 128, offset: 10944)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !496, file: !497, line: 996, baseType: !149, size: 128, offset: 11072)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !496, file: !497, line: 997, baseType: !495, size: 64, offset: 11200)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !496, file: !497, line: 1005, baseType: !149, size: 128, offset: 11264)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !496, file: !497, line: 1006, baseType: !149, size: 128, offset: 11392)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !496, file: !497, line: 1009, baseType: !871, size: 64, offset: 11520)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !496, file: !497, line: 1010, baseType: !2774, size: 512, offset: 11584)
!2774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 512, elements: !373)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !496, file: !497, line: 1011, baseType: !149, size: 128, offset: 12096)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !496, file: !497, line: 1012, baseType: !149, size: 128, offset: 12224)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !496, file: !497, line: 1014, baseType: !2778, size: 64, offset: 12352)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !496, file: !497, line: 1017, baseType: !1352, size: 64, offset: 12416)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !496, file: !497, line: 1020, baseType: !1352, size: 64, offset: 12480)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !496, file: !497, line: 1023, baseType: !72, size: 64, offset: 12544)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !496, file: !497, line: 1025, baseType: !241, size: 64, offset: 12608)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !496, file: !497, line: 1026, baseType: !241, size: 64, offset: 12672)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !496, file: !497, line: 1031, baseType: !241, size: 64, offset: 12736)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !496, file: !497, line: 1032, baseType: !2786, size: 192, offset: 12800)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !497, line: 324, size: 192, elements: !2787)
!2787 = !{!2788, !2789, !2790}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2786, file: !497, line: 326, baseType: !241, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2786, file: !497, line: 327, baseType: !241, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2786, file: !497, line: 328, baseType: !289, size: 32, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !496, file: !497, line: 1041, baseType: !91, size: 64, offset: 12992)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !496, file: !497, line: 1042, baseType: !91, size: 64, offset: 13056)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !496, file: !497, line: 1045, baseType: !241, size: 64, offset: 13120)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !496, file: !497, line: 1048, baseType: !241, size: 64, offset: 13184)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !496, file: !497, line: 1051, baseType: !91, size: 64, offset: 13248)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !496, file: !497, line: 1052, baseType: !91, size: 64, offset: 13312)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !496, file: !497, line: 1055, baseType: !2798, size: 640, offset: 13376)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2799, line: 132, size: 640, elements: !2800)
!2799 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2800 = !{!2801, !2807, !2808}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2798, file: !2799, line: 133, baseType: !2802, size: 576)
!2802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2803, size: 576, elements: !867)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2799, line: 117, size: 192, elements: !2804)
!2804 = !{!2805, !2806}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2803, file: !2799, line: 118, baseType: !241, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2803, file: !2799, line: 119, baseType: !673, size: 128, offset: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2798, file: !2799, line: 134, baseType: !7, size: 32, offset: 576)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2798, file: !2799, line: 135, baseType: !7, size: 32, offset: 608)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !496, file: !497, line: 1058, baseType: !2810, size: 448, offset: 14016)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2799, line: 144, size: 448, elements: !2811)
!2811 = !{!2812, !2813, !2814}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2810, file: !2799, line: 145, baseType: !342, size: 128, align: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2810, file: !2799, line: 146, baseType: !835, size: 256, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2810, file: !2799, line: 147, baseType: !7, size: 32, offset: 384)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !496, file: !497, line: 1064, baseType: !199, size: 64, offset: 14464)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !496, file: !497, line: 1067, baseType: !199, size: 64, offset: 14528)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !496, file: !497, line: 1070, baseType: !199, size: 64, offset: 14592)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !496, file: !497, line: 1074, baseType: !250, size: 64, offset: 14656)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !496, file: !497, line: 1084, baseType: !2820, size: 128, offset: 14720)
!2820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, elements: !1717)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !496, file: !497, line: 1086, baseType: !2822, size: 64, offset: 14848)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !497, line: 55, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !496, file: !497, line: 1089, baseType: !2825, size: 64, offset: 14912)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2826, line: 12, size: 64, elements: !2827)
!2826 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2827 = !{!2828}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2825, file: !2826, line: 13, baseType: !2829, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2826, line: 8, flags: DIFlagFwdDecl)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !496, file: !497, line: 1090, baseType: !2832, size: 128, offset: 14976)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2833, line: 13, size: 128, elements: !2834)
!2833 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2834 = !{!2835}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2832, file: !2833, line: 14, baseType: !149, size: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !496, file: !497, line: 1097, baseType: !2837, size: 64, offset: 15104)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !497, line: 50, flags: DIFlagFwdDecl)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !496, file: !497, line: 1100, baseType: !2840, size: 64, offset: 15168)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !497, line: 1100, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !496, file: !497, line: 1103, baseType: !2843, size: 64, offset: 15232)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !497, line: 53, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !496, file: !497, line: 1107, baseType: !2846, size: 64, offset: 15296)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2848, line: 31, size: 576, elements: !2849)
!2848 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2849 = !{!2850, !2851, !2854, !2857, !2860, !2861, !2862, !2865, !2866}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2847, file: !2848, line: 32, baseType: !255, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2847, file: !2848, line: 33, baseType: !2852, size: 64, offset: 64)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2848, line: 9, flags: DIFlagFwdDecl)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2847, file: !2848, line: 34, baseType: !2855, size: 64, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2848, line: 10, flags: DIFlagFwdDecl)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2847, file: !2848, line: 35, baseType: !2858, size: 64, offset: 192)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !160, line: 21, flags: DIFlagFwdDecl)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2847, file: !2848, line: 36, baseType: !891, size: 64, offset: 256)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2847, file: !2848, line: 37, baseType: !1239, size: 64, offset: 320)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2847, file: !2848, line: 38, baseType: !2863, size: 64, offset: 384)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2848, line: 38, flags: DIFlagFwdDecl)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2847, file: !2848, line: 39, baseType: !2863, size: 64, offset: 448)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2847, file: !2848, line: 40, baseType: !2867, size: 64, offset: 512)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2848, line: 12, flags: DIFlagFwdDecl)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !496, file: !497, line: 1110, baseType: !2870, size: 64, offset: 15360)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2872, line: 93, size: 8768, elements: !2873)
!2872 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2873 = !{!2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2924, !2933, !2934, !2936, !2937, !2938, !2941, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2979, !2980, !2987, !2997, !3000, !3001, !3004, !3005, !3006, !3007, !3008, !3009}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2871, file: !2872, line: 94, baseType: !255, size: 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2871, file: !2872, line: 95, baseType: !101, size: 32, offset: 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2871, file: !2872, line: 96, baseType: !74, size: 32, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2871, file: !2872, line: 97, baseType: !74, size: 32, offset: 96)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2871, file: !2872, line: 98, baseType: !149, size: 128, offset: 128)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2871, file: !2872, line: 100, baseType: !106, size: 192, offset: 256)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2871, file: !2872, line: 103, baseType: !495, size: 64, offset: 448)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2871, file: !2872, line: 106, baseType: !2882, size: 192, offset: 512)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2883, line: 32, size: 192, elements: !2884)
!2883 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2884 = !{!2885, !2886}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2882, file: !2883, line: 33, baseType: !149, size: 128)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2882, file: !2883, line: 34, baseType: !2887, size: 64, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2888, line: 25, baseType: !2889)
!2888 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2888, line: 23, size: 64, elements: !2890)
!2890 = !{!2891}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2889, file: !2888, line: 24, baseType: !744, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2871, file: !2872, line: 109, baseType: !879, size: 64, offset: 704)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2871, file: !2872, line: 112, baseType: !74, size: 32, offset: 768)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2871, file: !2872, line: 114, baseType: !74, size: 32, offset: 800)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2871, file: !2872, line: 115, baseType: !495, size: 64, offset: 832)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2871, file: !2872, line: 118, baseType: !74, size: 32, offset: 896)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2871, file: !2872, line: 119, baseType: !7, size: 32, offset: 928)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2871, file: !2872, line: 121, baseType: !2899, size: 64, offset: 960)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2872, line: 80, size: 448, elements: !2901)
!2901 = !{!2902, !2903, !2909}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2900, file: !2872, line: 81, baseType: !101, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2900, file: !2872, line: 82, baseType: !2904, size: 128, offset: 64)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2872, line: 75, size: 128, elements: !2905)
!2905 = !{!2906, !2907}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2904, file: !2872, line: 76, baseType: !495, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2904, file: !2872, line: 77, baseType: !2908, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2900, file: !2872, line: 83, baseType: !1948, size: 256, offset: 192)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2871, file: !2872, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2871, file: !2872, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2871, file: !2872, line: 138, baseType: !7, size: 32, offset: 1056)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2871, file: !2872, line: 139, baseType: !149, size: 128, offset: 1088)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2871, file: !2872, line: 142, baseType: !612, size: 512, offset: 1216)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2871, file: !2872, line: 143, baseType: !620, size: 64, offset: 1728)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2871, file: !2872, line: 150, baseType: !2917, size: 256, offset: 1792)
!2917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2918, size: 256, elements: !2922)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2872, line: 38, size: 128, elements: !2919)
!2919 = !{!2920, !2921}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2918, file: !2872, line: 39, baseType: !241, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2918, file: !2872, line: 40, baseType: !241, size: 64, offset: 64)
!2922 = !{!2923}
!2923 = !DISubrange(count: 2)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2871, file: !2872, line: 156, baseType: !2925, size: 192, offset: 2048)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2872, line: 66, size: 192, elements: !2926)
!2926 = !{!2927}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2925, file: !2872, line: 67, baseType: !2928, size: 192)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2872, line: 47, size: 192, elements: !2929)
!2929 = !{!2930, !2931, !2932}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2928, file: !2872, line: 48, baseType: !207, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2928, file: !2872, line: 49, baseType: !207, size: 64, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2928, file: !2872, line: 50, baseType: !207, size: 64, offset: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2871, file: !2872, line: 160, baseType: !2798, size: 640, offset: 2240)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2871, file: !2872, line: 163, baseType: !2935, size: 256, offset: 2880)
!2935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 256, elements: !373)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2871, file: !2872, line: 169, baseType: !871, size: 64, offset: 3136)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2871, file: !2872, line: 172, baseType: !74, size: 32, offset: 3200)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2871, file: !2872, line: 174, baseType: !2939, size: 64, offset: 3264)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2872, line: 174, flags: DIFlagFwdDecl)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2871, file: !2872, line: 185, baseType: !2942, size: 64, offset: 3328)
!2942 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !663, line: 860, baseType: !2943)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !663, line: 853, size: 64, elements: !2944)
!2944 = !{!2945, !2946}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2943, file: !663, line: 858, baseType: !925, size: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2943, file: !663, line: 859, baseType: !111, size: 32, offset: 32)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2871, file: !2872, line: 186, baseType: !241, size: 64, offset: 3392)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2871, file: !2872, line: 186, baseType: !241, size: 64, offset: 3456)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2871, file: !2872, line: 186, baseType: !241, size: 64, offset: 3520)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2871, file: !2872, line: 186, baseType: !241, size: 64, offset: 3584)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2871, file: !2872, line: 187, baseType: !241, size: 64, offset: 3648)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2871, file: !2872, line: 188, baseType: !241, size: 64, offset: 3712)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2871, file: !2872, line: 189, baseType: !2786, size: 192, offset: 3776)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2871, file: !2872, line: 190, baseType: !91, size: 64, offset: 3968)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2871, file: !2872, line: 190, baseType: !91, size: 64, offset: 4032)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2871, file: !2872, line: 190, baseType: !91, size: 64, offset: 4096)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2871, file: !2872, line: 190, baseType: !91, size: 64, offset: 4160)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2871, file: !2872, line: 191, baseType: !91, size: 64, offset: 4224)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2871, file: !2872, line: 191, baseType: !91, size: 64, offset: 4288)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2871, file: !2872, line: 191, baseType: !91, size: 64, offset: 4352)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2871, file: !2872, line: 191, baseType: !91, size: 64, offset: 4416)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2871, file: !2872, line: 192, baseType: !91, size: 64, offset: 4480)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2871, file: !2872, line: 192, baseType: !91, size: 64, offset: 4544)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2871, file: !2872, line: 192, baseType: !91, size: 64, offset: 4608)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2871, file: !2872, line: 192, baseType: !91, size: 64, offset: 4672)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2871, file: !2872, line: 193, baseType: !91, size: 64, offset: 4736)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2871, file: !2872, line: 193, baseType: !91, size: 64, offset: 4800)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2871, file: !2872, line: 194, baseType: !2969, size: 448, offset: 4864)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2970, line: 12, size: 448, elements: !2971)
!2970 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2971 = !{!2972, !2973, !2974, !2975, !2976, !2977, !2978}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2969, file: !2970, line: 15, baseType: !241, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2969, file: !2970, line: 17, baseType: !241, size: 64, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2969, file: !2970, line: 19, baseType: !241, size: 64, offset: 128)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2969, file: !2970, line: 21, baseType: !241, size: 64, offset: 192)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2969, file: !2970, line: 29, baseType: !241, size: 64, offset: 256)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2969, file: !2970, line: 35, baseType: !241, size: 64, offset: 320)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2969, file: !2970, line: 44, baseType: !241, size: 64, offset: 384)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2871, file: !2872, line: 202, baseType: !243, size: 64, offset: 5312)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2871, file: !2872, line: 213, baseType: !2981, size: 2048, offset: 5376)
!2981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2982, size: 2048, elements: !1717)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2983, line: 43, size: 128, elements: !2984)
!2983 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2984 = !{!2985, !2986}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2982, file: !2983, line: 44, baseType: !90, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2982, file: !2983, line: 45, baseType: !90, size: 64, offset: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2871, file: !2872, line: 216, baseType: !2988, size: 448, offset: 7424)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2872, line: 30, size: 448, elements: !2989)
!2989 = !{!2990, !2991, !2992, !2993, !2994, !2995, !2996}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2988, file: !2872, line: 31, baseType: !74, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2988, file: !2872, line: 32, baseType: !1068, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2988, file: !2872, line: 33, baseType: !91, size: 64, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2988, file: !2872, line: 34, baseType: !241, size: 64, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2988, file: !2872, line: 34, baseType: !241, size: 64, offset: 256)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2988, file: !2872, line: 35, baseType: !91, size: 64, offset: 320)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2988, file: !2872, line: 35, baseType: !91, size: 64, offset: 384)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2871, file: !2872, line: 219, baseType: !2998, size: 64, offset: 7872)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2872, line: 219, flags: DIFlagFwdDecl)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2871, file: !2872, line: 222, baseType: !7, size: 32, offset: 7936)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2871, file: !2872, line: 223, baseType: !3002, size: 64, offset: 8000)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2872, line: 223, flags: DIFlagFwdDecl)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2871, file: !2872, line: 230, baseType: !352, size: 8, offset: 8064)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2871, file: !2872, line: 231, baseType: !313, size: 16, offset: 8080)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2871, file: !2872, line: 232, baseType: !313, size: 16, offset: 8096)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2871, file: !2872, line: 234, baseType: !793, size: 64, offset: 8128)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2871, file: !2872, line: 237, baseType: !835, size: 256, offset: 8192)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2871, file: !2872, line: 243, baseType: !278, size: 320, offset: 8448)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !496, file: !497, line: 1111, baseType: !3011, size: 64, offset: 15424)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2872, line: 20, size: 16640, elements: !3013)
!3013 = !{!3014, !3015, !3016, !3017}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3012, file: !2872, line: 21, baseType: !111, size: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3012, file: !2872, line: 22, baseType: !255, size: 32, offset: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3012, file: !2872, line: 23, baseType: !106, size: 192, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3012, file: !2872, line: 24, baseType: !3018, size: 16384, offset: 256)
!3018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3019, size: 16384, elements: !3039)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2883, line: 51, size: 256, elements: !3020)
!3020 = !{!3021}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3019, file: !2883, line: 52, baseType: !3022, size: 256)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2883, line: 37, size: 256, elements: !3023)
!3023 = !{!3024, !3031, !3032, !3038}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3022, file: !2883, line: 39, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3026, line: 83, baseType: !3027)
!3026 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3026, line: 82, baseType: !3029)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{null, !74}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3022, file: !2883, line: 40, baseType: !91, size: 64, offset: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3022, file: !2883, line: 46, baseType: !3033, size: 64, offset: 128)
!3033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3026, line: 86, baseType: !3034)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3026, line: 85, baseType: !3036)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{null}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3022, file: !2883, line: 48, baseType: !2887, size: 64, offset: 192)
!3039 = !{!3040}
!3040 = !DISubrange(count: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !496, file: !497, line: 1112, baseType: !2887, size: 64, offset: 15488)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !496, file: !497, line: 1113, baseType: !2887, size: 64, offset: 15552)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !496, file: !497, line: 1115, baseType: !2887, size: 64, offset: 15616)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !496, file: !497, line: 1116, baseType: !2882, size: 192, offset: 15680)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !496, file: !497, line: 1117, baseType: !91, size: 64, offset: 15872)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !496, file: !497, line: 1118, baseType: !87, size: 64, offset: 15936)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !496, file: !497, line: 1119, baseType: !7, size: 32, offset: 16000)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !496, file: !497, line: 1121, baseType: !345, size: 64, offset: 16064)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !496, file: !497, line: 1125, baseType: !3050, size: 64, offset: 16128)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !497, line: 43, flags: DIFlagFwdDecl)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !496, file: !497, line: 1127, baseType: !214, size: 32, offset: 16192)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !496, file: !497, line: 1128, baseType: !7, size: 32, offset: 16224)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !496, file: !497, line: 1130, baseType: !3055, size: 128, offset: 16256)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3056, line: 37, size: 128, elements: !3057)
!3056 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3057 = !{!3058, !3059, !3060}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3055, file: !3056, line: 38, baseType: !74, size: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3055, file: !3056, line: 39, baseType: !101, size: 32, offset: 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3055, file: !3056, line: 40, baseType: !3061, size: 64, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3056, line: 24, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !496, file: !497, line: 1131, baseType: !3064, size: 256, offset: 16384)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3065, line: 12, size: 256, elements: !3066)
!3065 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3066 = !{!3067, !3068, !3069, !3070}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3064, file: !3065, line: 13, baseType: !363, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3064, file: !3065, line: 14, baseType: !91, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3064, file: !3065, line: 15, baseType: !91, size: 64, offset: 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3064, file: !3065, line: 16, baseType: !352, size: 8, offset: 192)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !496, file: !497, line: 1134, baseType: !241, size: 64, offset: 16640)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !496, file: !497, line: 1135, baseType: !241, size: 64, offset: 16704)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !496, file: !497, line: 1138, baseType: !111, size: 32, offset: 16768)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !496, file: !497, line: 1141, baseType: !289, size: 32, offset: 16800)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !496, file: !497, line: 1143, baseType: !3076, size: 64, offset: 16832)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !497, line: 735, size: 64, elements: !3077)
!3077 = !{!3078}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3076, file: !497, line: 736, baseType: !3079, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !496, file: !497, line: 1147, baseType: !676, size: 128, offset: 16896)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !496, file: !497, line: 1149, baseType: !495, size: 64, offset: 17024)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !496, file: !497, line: 1151, baseType: !3083, size: 64, offset: 17088)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !497, line: 1151, flags: DIFlagFwdDecl)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !496, file: !497, line: 1188, baseType: !72, size: 64, offset: 17152)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !496, file: !497, line: 1191, baseType: !3087, size: 64, offset: 17216)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !497, line: 44, flags: DIFlagFwdDecl)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !496, file: !497, line: 1194, baseType: !3090, size: 64, offset: 17280)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !497, line: 45, flags: DIFlagFwdDecl)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !496, file: !497, line: 1197, baseType: !3093, size: 64, offset: 17344)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !497, line: 61, flags: DIFlagFwdDecl)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !496, file: !497, line: 1199, baseType: !3096, size: 64, offset: 17408)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3098, line: 99, size: 128, elements: !3099)
!3098 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3099 = !{!3100, !3101, !3102}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3097, file: !3098, line: 100, baseType: !205, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3097, file: !3098, line: 101, baseType: !101, size: 32, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3097, file: !3098, line: 103, baseType: !78, size: 16, offset: 96)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !496, file: !497, line: 1202, baseType: !3104, size: 64, offset: 17472)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !497, line: 48, flags: DIFlagFwdDecl)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !496, file: !497, line: 1205, baseType: !91, size: 64, offset: 17536)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !496, file: !497, line: 1206, baseType: !3108, size: 64, offset: 17600)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2883, line: 14, baseType: !3110)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2883, line: 12, size: 384, elements: !3111)
!3111 = !{!3112}
!3112 = !DIDerivedType(tag: DW_TAG_member, scope: !3110, file: !2883, line: 13, baseType: !3113, size: 384)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3110, file: !2883, line: 13, size: 384, elements: !3114)
!3114 = !{!3115, !3116, !3117, !3118}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3113, file: !2883, line: 13, baseType: !74, size: 32)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3113, file: !2883, line: 13, baseType: !74, size: 32, offset: 32)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3113, file: !2883, line: 13, baseType: !74, size: 32, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3113, file: !2883, line: 13, baseType: !3119, size: 256, offset: 128)
!3119 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3120, line: 37, size: 256, elements: !3121)
!3120 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3121 = !{!3122, !3127, !3140, !3146, !3155, !3182, !3187}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3119, file: !3120, line: 42, baseType: !3123, size: 64)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3119, file: !3120, line: 39, size: 64, elements: !3124)
!3124 = !{!3125, !3126}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3123, file: !3120, line: 40, baseType: !2762, size: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3123, file: !3120, line: 41, baseType: !220, size: 32, offset: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3119, file: !3120, line: 50, baseType: !3128, size: 192)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3119, file: !3120, line: 45, size: 192, elements: !3129)
!3129 = !{!3130, !3132, !3133, !3139}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3128, file: !3120, line: 46, baseType: !3131, size: 32)
!3131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !89, line: 95, baseType: !74)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3128, file: !3120, line: 47, baseType: !74, size: 32, offset: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3128, file: !3120, line: 48, baseType: !3134, size: 64, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3120, line: 11, baseType: !3135)
!3135 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3120, line: 8, size: 64, elements: !3136)
!3136 = !{!3137, !3138}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3135, file: !3120, line: 9, baseType: !74, size: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3135, file: !3120, line: 10, baseType: !72, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3128, file: !3120, line: 49, baseType: !74, size: 32, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3119, file: !3120, line: 57, baseType: !3141, size: 128)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3119, file: !3120, line: 53, size: 128, elements: !3142)
!3142 = !{!3143, !3144, !3145}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3141, file: !3120, line: 54, baseType: !2762, size: 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3141, file: !3120, line: 55, baseType: !220, size: 32, offset: 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3141, file: !3120, line: 56, baseType: !3134, size: 64, offset: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3119, file: !3120, line: 66, baseType: !3147, size: 256)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3119, file: !3120, line: 60, size: 256, elements: !3148)
!3148 = !{!3149, !3150, !3151, !3152, !3154}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3147, file: !3120, line: 61, baseType: !2762, size: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3147, file: !3120, line: 62, baseType: !220, size: 32, offset: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3147, file: !3120, line: 63, baseType: !74, size: 32, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3147, file: !3120, line: 64, baseType: !3153, size: 64, offset: 128)
!3153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !89, line: 94, baseType: !1109)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3147, file: !3120, line: 65, baseType: !3153, size: 64, offset: 192)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3119, file: !3120, line: 105, baseType: !3156, size: 256)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3119, file: !3120, line: 69, size: 256, elements: !3157)
!3157 = !{!3158, !3159}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3156, file: !3120, line: 70, baseType: !72, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, scope: !3156, file: !3120, line: 79, baseType: !3160, size: 192, offset: 64)
!3160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3156, file: !3120, line: 79, size: 192, elements: !3161)
!3161 = !{!3162, !3163, !3164, !3171, !3176}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3160, file: !3120, line: 81, baseType: !74, size: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3160, file: !3120, line: 86, baseType: !313, size: 16)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3160, file: !3120, line: 92, baseType: !3165, size: 192)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3160, file: !3120, line: 88, size: 192, elements: !3166)
!3166 = !{!3167, !3169, !3170}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3165, file: !3120, line: 89, baseType: !3168, size: 64)
!3168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 64, elements: !655)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3165, file: !3120, line: 90, baseType: !72, size: 64, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3165, file: !3120, line: 91, baseType: !72, size: 64, offset: 128)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3160, file: !3120, line: 97, baseType: !3172, size: 96)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3160, file: !3120, line: 94, size: 96, elements: !3173)
!3173 = !{!3174, !3175}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3172, file: !3120, line: 95, baseType: !3168, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3172, file: !3120, line: 96, baseType: !309, size: 32, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3160, file: !3120, line: 103, baseType: !3177, size: 128)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3160, file: !3120, line: 99, size: 128, elements: !3178)
!3178 = !{!3179, !3180, !3181}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3177, file: !3120, line: 100, baseType: !91, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3177, file: !3120, line: 101, baseType: !309, size: 32, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3177, file: !3120, line: 102, baseType: !309, size: 32, offset: 96)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3119, file: !3120, line: 111, baseType: !3183, size: 128)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3119, file: !3120, line: 108, size: 128, elements: !3184)
!3184 = !{!3185, !3186}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3183, file: !3120, line: 109, baseType: !1068, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3183, file: !3120, line: 110, baseType: !74, size: 32, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3119, file: !3120, line: 118, baseType: !3188, size: 128)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3119, file: !3120, line: 114, size: 128, elements: !3189)
!3189 = !{!3190, !3191, !3192}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3188, file: !3120, line: 115, baseType: !72, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3188, file: !3120, line: 116, baseType: !74, size: 32, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3188, file: !3120, line: 117, baseType: !7, size: 32, offset: 96)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !496, file: !497, line: 1208, baseType: !2969, size: 448, offset: 17664)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !496, file: !497, line: 1215, baseType: !241, size: 64, offset: 18112)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !496, file: !497, line: 1217, baseType: !241, size: 64, offset: 18176)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !496, file: !497, line: 1219, baseType: !241, size: 64, offset: 18240)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !496, file: !497, line: 1223, baseType: !3198, size: 64, offset: 18304)
!3198 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3199, line: 99, baseType: !3200)
!3199 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3199, line: 99, size: 64, elements: !3201)
!3201 = !{!3202}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3200, file: !3199, line: 99, baseType: !744, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !496, file: !497, line: 1225, baseType: !925, size: 32, offset: 18368)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !496, file: !497, line: 1226, baseType: !74, size: 32, offset: 18400)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !496, file: !497, line: 1227, baseType: !74, size: 32, offset: 18432)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !496, file: !497, line: 1231, baseType: !3207, size: 64, offset: 18496)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !497, line: 1231, flags: DIFlagFwdDecl)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !496, file: !497, line: 1233, baseType: !149, size: 128, offset: 18560)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !496, file: !497, line: 1240, baseType: !3211, size: 64, offset: 18688)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !497, line: 62, flags: DIFlagFwdDecl)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !496, file: !497, line: 1242, baseType: !3214, size: 64, offset: 18752)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !497, line: 1242, flags: DIFlagFwdDecl)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !496, file: !497, line: 1244, baseType: !149, size: 128, offset: 18816)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !496, file: !497, line: 1245, baseType: !3218, size: 64, offset: 18944)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !497, line: 51, flags: DIFlagFwdDecl)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !496, file: !497, line: 1246, baseType: !835, size: 256, offset: 19008)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !496, file: !497, line: 1247, baseType: !7, size: 32, offset: 19264)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !496, file: !497, line: 1250, baseType: !3223, size: 64, offset: 19328)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !497, line: 57, flags: DIFlagFwdDecl)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !496, file: !497, line: 1251, baseType: !835, size: 256, offset: 19392)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !496, file: !497, line: 1252, baseType: !149, size: 128, offset: 19648)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !496, file: !497, line: 1259, baseType: !2076, size: 64, offset: 19776)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !496, file: !497, line: 1260, baseType: !313, size: 16, offset: 19840)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !496, file: !497, line: 1261, baseType: !313, size: 16, offset: 19856)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !496, file: !497, line: 1314, baseType: !3231, size: 64, offset: 19904)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3233, line: 62, size: 256, align: 256, elements: !3234)
!3233 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3234 = !{!3235, !3236, !3237, !3238, !3239, !3240, !3241}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3232, file: !3233, line: 75, baseType: !309, size: 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3232, file: !3233, line: 90, baseType: !309, size: 32, offset: 32)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3232, file: !3233, line: 112, baseType: !242, size: 64, offset: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3232, file: !3233, line: 132, baseType: !309, size: 32, offset: 128)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3232, file: !3233, line: 140, baseType: !309, size: 32, offset: 160)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3232, file: !3233, line: 149, baseType: !309, size: 32, offset: 192)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3232, file: !3233, line: 154, baseType: !3242, offset: 224)
!3242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, elements: !893)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !496, file: !497, line: 1315, baseType: !308, size: 32, offset: 19968)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !496, file: !497, line: 1316, baseType: !308, size: 32, offset: 20000)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !496, file: !497, line: 1321, baseType: !91, size: 64, offset: 20032)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !496, file: !497, line: 1325, baseType: !74, size: 32, offset: 20096)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !496, file: !497, line: 1326, baseType: !74, size: 32, offset: 20128)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !496, file: !497, line: 1327, baseType: !74, size: 32, offset: 20160)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !496, file: !497, line: 1328, baseType: !74, size: 32, offset: 20192)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !496, file: !497, line: 1329, baseType: !342, size: 128, align: 64, offset: 20224)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !496, file: !497, line: 1332, baseType: !3252, size: 128, offset: 20352)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3253, line: 51, size: 128, elements: !3254)
!3253 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3254 = !{!3255, !3260, !3261}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3252, file: !3253, line: 60, baseType: !3256, size: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3257, line: 7, size: 64, elements: !3258)
!3257 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3258 = !{!3259}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3256, file: !3257, line: 12, baseType: !741, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3252, file: !3253, line: 63, baseType: !352, size: 8, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3252, file: !3253, line: 70, baseType: !352, size: 8, offset: 72)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !496, file: !497, line: 1335, baseType: !2472, size: 64, offset: 20480)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !496, file: !497, line: 1337, baseType: !3264, size: 128, offset: 20544)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3253, line: 39, size: 128, elements: !3265)
!3265 = !{!3266, !3267, !3268}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3264, file: !3253, line: 40, baseType: !1863, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3264, file: !3253, line: 42, baseType: !309, size: 32, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3264, file: !3253, line: 43, baseType: !309, size: 32, offset: 96)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !496, file: !497, line: 1340, baseType: !3270, size: 64, offset: 20672)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !497, line: 69, flags: DIFlagFwdDecl)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !496, file: !497, line: 1351, baseType: !74, size: 32, offset: 20736)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !496, file: !497, line: 1352, baseType: !74, size: 32, offset: 20768)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !496, file: !497, line: 1354, baseType: !91, size: 64, offset: 20800)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !496, file: !497, line: 1364, baseType: !241, size: 64, offset: 20864)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !496, file: !497, line: 1365, baseType: !241, size: 64, offset: 20928)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !496, file: !497, line: 1412, baseType: !91, size: 64, offset: 20992)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !496, file: !497, line: 1453, baseType: !3279, size: 64, offset: 21056)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !497, line: 1453, flags: DIFlagFwdDecl)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !496, file: !497, line: 1457, baseType: !3282, size: 64, offset: 21120)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !57, line: 61, size: 576, elements: !3284)
!3284 = !{!3285, !3286, !3305, !3308, !3309, !3342, !3352}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3283, file: !57, line: 62, baseType: !56, size: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, scope: !3283, file: !57, line: 64, baseType: !3287, size: 192, offset: 64)
!3287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3283, file: !57, line: 64, size: 192, elements: !3288)
!3288 = !{!3289, !3300}
!3289 = !DIDerivedType(tag: DW_TAG_member, scope: !3287, file: !57, line: 65, baseType: !3290, size: 192)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3287, file: !57, line: 65, size: 192, elements: !3291)
!3291 = !{!3292, !3299}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3290, file: !57, line: 66, baseType: !3293, size: 128)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3294, line: 50, size: 128, elements: !3295)
!3294 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3295 = !{!3296, !3297, !3298}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3293, file: !3294, line: 52, baseType: !91, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3293, file: !3294, line: 54, baseType: !7, size: 32, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3293, file: !3294, line: 55, baseType: !7, size: 32, offset: 96)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3290, file: !57, line: 67, baseType: !91, size: 64, offset: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, scope: !3287, file: !57, line: 70, baseType: !3301, size: 192)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3287, file: !57, line: 70, size: 192, elements: !3302)
!3302 = !{!3303, !3304}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3301, file: !57, line: 71, baseType: !342, size: 128, align: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3301, file: !57, line: 72, baseType: !91, size: 64, offset: 128)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3283, file: !57, line: 76, baseType: !3306, size: 64, offset: 256)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !57, line: 76, flags: DIFlagFwdDecl)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3283, file: !57, line: 77, baseType: !91, size: 64, offset: 320)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3283, file: !57, line: 79, baseType: !3310, size: 64, offset: 384)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3294, line: 25, size: 256, elements: !3312)
!3312 = !{!3313, !3319, !3323}
!3313 = !DIDerivedType(tag: DW_TAG_member, scope: !3311, file: !3294, line: 26, baseType: !3314, size: 128)
!3314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3311, file: !3294, line: 26, size: 128, elements: !3315)
!3315 = !{!3316, !3318}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3314, file: !3294, line: 27, baseType: !3317, size: 128)
!3317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 128, elements: !1717)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3314, file: !3294, line: 28, baseType: !3317, size: 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3311, file: !3294, line: 31, baseType: !3320, size: 64, offset: 128)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3322)
!3322 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3294, line: 23, flags: DIFlagFwdDecl)
!3323 = !DIDerivedType(tag: DW_TAG_member, scope: !3311, file: !3294, line: 33, baseType: !3324, size: 64, offset: 192)
!3324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3311, file: !3294, line: 33, size: 64, elements: !3325)
!3325 = !{!3326, !3332, !3337}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3324, file: !3294, line: 38, baseType: !3327, size: 64)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3324, file: !3294, line: 34, size: 64, elements: !3328)
!3328 = !{!3329, !3330, !3331}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3327, file: !3294, line: 35, baseType: !263, size: 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3327, file: !3294, line: 36, baseType: !135, size: 8, offset: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3327, file: !3294, line: 37, baseType: !135, size: 8, offset: 40)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3324, file: !3294, line: 42, baseType: !3333, size: 16)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3324, file: !3294, line: 39, size: 16, elements: !3334)
!3334 = !{!3335, !3336}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3333, file: !3294, line: 40, baseType: !135, size: 8)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3333, file: !3294, line: 41, baseType: !135, size: 8, offset: 8)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3324, file: !3294, line: 46, baseType: !3338, size: 16)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3324, file: !3294, line: 43, size: 16, elements: !3339)
!3339 = !{!3340, !3341}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3338, file: !3294, line: 44, baseType: !135, size: 8)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3338, file: !3294, line: 45, baseType: !135, size: 8, offset: 8)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3283, file: !57, line: 81, baseType: !3343, size: 64, offset: 448)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !57, line: 85, size: 384, elements: !3345)
!3345 = !{!3346, !3347, !3348, !3349, !3350, !3351}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3344, file: !57, line: 86, baseType: !3306, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3344, file: !57, line: 87, baseType: !91, size: 64, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3344, file: !57, line: 88, baseType: !91, size: 64, offset: 128)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3344, file: !57, line: 89, baseType: !91, size: 64, offset: 192)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3344, file: !57, line: 90, baseType: !352, size: 8, offset: 256)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3344, file: !57, line: 92, baseType: !3343, size: 64, offset: 320)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3283, file: !57, line: 82, baseType: !7, size: 32, offset: 512)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !496, file: !497, line: 1463, baseType: !3354, offset: 21184)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !497, line: 739, elements: !814)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !496, file: !497, line: 1470, baseType: !342, size: 128, align: 64, offset: 21184)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !496, file: !497, line: 1471, baseType: !255, size: 32, offset: 21312)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !496, file: !497, line: 1472, baseType: !74, size: 32, offset: 21344)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !496, file: !497, line: 1474, baseType: !495, size: 64, offset: 21376)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !496, file: !497, line: 1475, baseType: !3360, size: 320, offset: 21440)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3361, line: 11, size: 320, elements: !3362)
!3361 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3362 = !{!3363, !3364, !3365, !3370}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3360, file: !3361, line: 16, baseType: !424, size: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3360, file: !3361, line: 17, baseType: !91, size: 64, offset: 128)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3360, file: !3361, line: 18, baseType: !3366, size: 64, offset: 192)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{null, !3369}
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3360, file: !3361, line: 19, baseType: !308, size: 32, offset: 256)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !496, file: !497, line: 1478, baseType: !3372, size: 64, offset: 21760)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !497, line: 1478, flags: DIFlagFwdDecl)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !496, file: !497, line: 1482, baseType: !255, size: 32, offset: 21824)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !496, file: !497, line: 1489, baseType: !72, size: 64, offset: 21888)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !496, file: !497, line: 1504, baseType: !72, size: 64, offset: 21952)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !496, file: !497, line: 1505, baseType: !242, size: 64, offset: 22016)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !496, file: !497, line: 1506, baseType: !241, size: 64, offset: 22080)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !496, file: !497, line: 1507, baseType: !242, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !496, file: !497, line: 1508, baseType: !242, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !496, file: !497, line: 1509, baseType: !242, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !496, file: !497, line: 1510, baseType: !342, size: 128, align: 64, offset: 22208)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !496, file: !497, line: 1511, baseType: !74, size: 32, offset: 22336)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !496, file: !497, line: 1515, baseType: !3385, size: 64, offset: 22400)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !519, line: 56, size: 64, elements: !3386)
!3386 = !{!3387}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3385, file: !519, line: 57, baseType: !522, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !496, file: !497, line: 1518, baseType: !3385, size: 64, offset: 22464)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !496, file: !497, line: 1528, baseType: !342, size: 128, align: 64, offset: 22528)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !496, file: !497, line: 1552, baseType: !3391, size: 35328, offset: 23040)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3392, line: 430, size: 35328, elements: !3393)
!3392 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3393 = !{!3394, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3423, !3424, !3425, !3426, !3427, !3428, !3431, !3432, !3433, !3434}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3391, file: !3392, line: 432, baseType: !3395, size: 192)
!3395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3396, size: 192, elements: !867)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3397, line: 16, size: 64, elements: !3398)
!3397 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3398 = !{!3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3396, file: !3397, line: 17, baseType: !145, size: 16)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3396, file: !3397, line: 18, baseType: !145, size: 16, offset: 16)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3396, file: !3397, line: 19, baseType: !145, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3396, file: !3397, line: 19, baseType: !145, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3396, file: !3397, line: 19, baseType: !145, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3396, file: !3397, line: 19, baseType: !145, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3396, file: !3397, line: 19, baseType: !145, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3396, file: !3397, line: 20, baseType: !145, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3396, file: !3397, line: 20, baseType: !145, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3396, file: !3397, line: 20, baseType: !145, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3396, file: !3397, line: 20, baseType: !145, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3396, file: !3397, line: 20, baseType: !145, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3396, file: !3397, line: 20, baseType: !145, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3391, file: !3392, line: 436, baseType: !91, size: 64, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3391, file: !3392, line: 440, baseType: !78, size: 16, offset: 256)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3391, file: !3392, line: 441, baseType: !78, size: 16, offset: 272)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3391, file: !3392, line: 442, baseType: !78, size: 16, offset: 288)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3391, file: !3392, line: 443, baseType: !78, size: 16, offset: 304)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3391, file: !3392, line: 447, baseType: !91, size: 64, offset: 320)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3391, file: !3392, line: 448, baseType: !91, size: 64, offset: 384)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3391, file: !3392, line: 459, baseType: !3420, size: 256, offset: 448)
!3420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3421, size: 256, elements: !373)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3392, line: 428, flags: DIFlagFwdDecl)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3391, file: !3392, line: 461, baseType: !91, size: 64, offset: 704)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3391, file: !3392, line: 463, baseType: !91, size: 64, offset: 768)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3391, file: !3392, line: 465, baseType: !91, size: 64, offset: 832)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3391, file: !3392, line: 466, baseType: !91, size: 64, offset: 896)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3391, file: !3392, line: 467, baseType: !91, size: 64, offset: 960)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3391, file: !3392, line: 473, baseType: !3429, size: 64, offset: 1024)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3392, line: 10, flags: DIFlagFwdDecl)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3391, file: !3392, line: 480, baseType: !91, size: 64, offset: 1088)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3391, file: !3392, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3391, file: !3392, line: 491, baseType: !308, size: 32, offset: 1184)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3391, file: !3392, line: 501, baseType: !3435, size: 33792, offset: 1536)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3436, line: 448, size: 33792, elements: !3437)
!3436 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3437 = !{!3438, !3439, !3440, !3602, !3603, !3609, !3610}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3435, file: !3436, line: 461, baseType: !7, size: 32)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3435, file: !3436, line: 468, baseType: !91, size: 64, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3435, file: !3436, line: 476, baseType: !3441, size: 64, offset: 128)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3436, line: 356, size: 33280, align: 512, elements: !3443)
!3443 = !{!3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3442, file: !3436, line: 358, baseType: !7, size: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3442, file: !3436, line: 361, baseType: !7, size: 32, offset: 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3442, file: !3436, line: 364, baseType: !241, size: 64, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3442, file: !3436, line: 367, baseType: !241, size: 64, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3442, file: !3436, line: 370, baseType: !241, size: 64, offset: 192)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3442, file: !3436, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3442, file: !3436, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3442, file: !3436, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3442, file: !3436, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3442, file: !3436, line: 397, baseType: !3454, size: 32768, offset: 512)
!3454 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3436, line: 348, size: 32768, elements: !3455)
!3455 = !{!3456, !3471, !3508, !3585, !3598}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3454, file: !3436, line: 349, baseType: !3457, size: 896)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3436, line: 12, size: 896, elements: !3458)
!3458 = !{!3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3470}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3457, file: !3436, line: 13, baseType: !308, size: 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3457, file: !3436, line: 14, baseType: !308, size: 32, offset: 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3457, file: !3436, line: 15, baseType: !308, size: 32, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3457, file: !3436, line: 16, baseType: !308, size: 32, offset: 96)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3457, file: !3436, line: 17, baseType: !308, size: 32, offset: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3457, file: !3436, line: 18, baseType: !308, size: 32, offset: 160)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3457, file: !3436, line: 19, baseType: !308, size: 32, offset: 192)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3457, file: !3436, line: 22, baseType: !3467, size: 640, offset: 224)
!3467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 640, elements: !3468)
!3468 = !{!3469}
!3469 = !DISubrange(count: 20)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3457, file: !3436, line: 25, baseType: !308, size: 32, offset: 864)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3454, file: !3436, line: 350, baseType: !3472, size: 4096, align: 128)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3436, line: 34, size: 4096, align: 128, elements: !3473)
!3473 = !{!3474, !3475, !3476, !3477, !3478, !3493, !3494, !3495, !3497, !3499, !3503}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3472, file: !3436, line: 35, baseType: !145, size: 16)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3472, file: !3436, line: 36, baseType: !145, size: 16, offset: 16)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3472, file: !3436, line: 37, baseType: !145, size: 16, offset: 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3472, file: !3436, line: 38, baseType: !145, size: 16, offset: 48)
!3478 = !DIDerivedType(tag: DW_TAG_member, scope: !3472, file: !3436, line: 39, baseType: !3479, size: 128, offset: 64)
!3479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3472, file: !3436, line: 39, size: 128, elements: !3480)
!3480 = !{!3481, !3486}
!3481 = !DIDerivedType(tag: DW_TAG_member, scope: !3479, file: !3436, line: 40, baseType: !3482, size: 128)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3479, file: !3436, line: 40, size: 128, elements: !3483)
!3483 = !{!3484, !3485}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3482, file: !3436, line: 41, baseType: !241, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3482, file: !3436, line: 42, baseType: !241, size: 64, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, scope: !3479, file: !3436, line: 44, baseType: !3487, size: 128)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3479, file: !3436, line: 44, size: 128, elements: !3488)
!3488 = !{!3489, !3490, !3491, !3492}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3487, file: !3436, line: 45, baseType: !308, size: 32)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3487, file: !3436, line: 46, baseType: !308, size: 32, offset: 32)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3487, file: !3436, line: 47, baseType: !308, size: 32, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3487, file: !3436, line: 48, baseType: !308, size: 32, offset: 96)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3472, file: !3436, line: 51, baseType: !308, size: 32, offset: 192)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3472, file: !3436, line: 52, baseType: !308, size: 32, offset: 224)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3472, file: !3436, line: 55, baseType: !3496, size: 1024, offset: 256)
!3496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 1024, elements: !1708)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3472, file: !3436, line: 58, baseType: !3498, size: 2048, offset: 1280)
!3498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 2048, elements: !3039)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3472, file: !3436, line: 60, baseType: !3500, size: 384, offset: 3328)
!3500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 384, elements: !3501)
!3501 = !{!3502}
!3502 = !DISubrange(count: 12)
!3503 = !DIDerivedType(tag: DW_TAG_member, scope: !3472, file: !3436, line: 62, baseType: !3504, size: 384, offset: 3712)
!3504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3472, file: !3436, line: 62, size: 384, elements: !3505)
!3505 = !{!3506, !3507}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3504, file: !3436, line: 63, baseType: !3500, size: 384)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3504, file: !3436, line: 64, baseType: !3500, size: 384)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3454, file: !3436, line: 351, baseType: !3509, size: 1088)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3436, line: 79, size: 1088, elements: !3510)
!3510 = !{!3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3584}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3509, file: !3436, line: 80, baseType: !308, size: 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3509, file: !3436, line: 81, baseType: !308, size: 32, offset: 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3509, file: !3436, line: 82, baseType: !308, size: 32, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3509, file: !3436, line: 83, baseType: !308, size: 32, offset: 96)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3509, file: !3436, line: 84, baseType: !308, size: 32, offset: 128)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3509, file: !3436, line: 85, baseType: !308, size: 32, offset: 160)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3509, file: !3436, line: 86, baseType: !308, size: 32, offset: 192)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3509, file: !3436, line: 88, baseType: !3467, size: 640, offset: 224)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3509, file: !3436, line: 89, baseType: !135, size: 8, offset: 864)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3509, file: !3436, line: 90, baseType: !135, size: 8, offset: 872)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3509, file: !3436, line: 91, baseType: !135, size: 8, offset: 880)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3509, file: !3436, line: 92, baseType: !135, size: 8, offset: 888)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3509, file: !3436, line: 93, baseType: !135, size: 8, offset: 896)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3509, file: !3436, line: 94, baseType: !135, size: 8, offset: 904)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3509, file: !3436, line: 95, baseType: !3526, size: 64, offset: 960)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3528, line: 11, size: 128, elements: !3529)
!3528 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3529 = !{!3530, !3531}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3527, file: !3528, line: 12, baseType: !1068, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3527, file: !3528, line: 13, baseType: !3532, size: 64, offset: 64)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3534, line: 103, size: 1344, elements: !3535)
!3534 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3535 = !{!3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3564, !3565, !3566}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3533, file: !3534, line: 109, baseType: !91, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3533, file: !3534, line: 110, baseType: !91, size: 64, offset: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3533, file: !3534, line: 111, baseType: !91, size: 64, offset: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3533, file: !3534, line: 112, baseType: !91, size: 64, offset: 192)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3533, file: !3534, line: 113, baseType: !91, size: 64, offset: 256)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3533, file: !3534, line: 114, baseType: !91, size: 64, offset: 320)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3533, file: !3534, line: 117, baseType: !91, size: 64, offset: 384)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3533, file: !3534, line: 118, baseType: !91, size: 64, offset: 448)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3533, file: !3534, line: 119, baseType: !91, size: 64, offset: 512)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3533, file: !3534, line: 120, baseType: !91, size: 64, offset: 576)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3533, file: !3534, line: 121, baseType: !91, size: 64, offset: 640)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3533, file: !3534, line: 122, baseType: !91, size: 64, offset: 704)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3533, file: !3534, line: 123, baseType: !91, size: 64, offset: 768)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3533, file: !3534, line: 124, baseType: !91, size: 64, offset: 832)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3533, file: !3534, line: 125, baseType: !91, size: 64, offset: 896)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3533, file: !3534, line: 139, baseType: !91, size: 64, offset: 960)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3533, file: !3534, line: 142, baseType: !91, size: 64, offset: 1024)
!3553 = !DIDerivedType(tag: DW_TAG_member, scope: !3533, file: !3534, line: 144, baseType: !3554, size: 64, offset: 1088)
!3554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3533, file: !3534, line: 144, size: 64, elements: !3555)
!3555 = !{!3556, !3557, !3558}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3554, file: !3534, line: 146, baseType: !145, size: 16)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3554, file: !3534, line: 148, baseType: !241, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3554, file: !3534, line: 150, baseType: !3559, size: 64)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3534, line: 59, size: 64, elements: !3560)
!3560 = !{!3561, !3562, !3563}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3559, file: !3534, line: 61, baseType: !241, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3559, file: !3534, line: 63, baseType: !241, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3559, file: !3534, line: 65, baseType: !241, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3533, file: !3534, line: 153, baseType: !91, size: 64, offset: 1152)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3533, file: !3534, line: 154, baseType: !91, size: 64, offset: 1216)
!3566 = !DIDerivedType(tag: DW_TAG_member, scope: !3533, file: !3534, line: 156, baseType: !3567, size: 64, offset: 1280)
!3567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3533, file: !3534, line: 156, size: 64, elements: !3568)
!3568 = !{!3569, !3570, !3571}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3567, file: !3534, line: 158, baseType: !145, size: 16)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3567, file: !3534, line: 160, baseType: !241, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3567, file: !3534, line: 162, baseType: !3572, size: 64)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3534, line: 69, size: 64, elements: !3573)
!3573 = !{!3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3572, file: !3534, line: 71, baseType: !241, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3572, file: !3534, line: 73, baseType: !241, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3572, file: !3534, line: 75, baseType: !241, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3572, file: !3534, line: 77, baseType: !241, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3572, file: !3534, line: 80, baseType: !241, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3572, file: !3534, line: 83, baseType: !241, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3572, file: !3534, line: 86, baseType: !241, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3572, file: !3534, line: 88, baseType: !241, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3572, file: !3534, line: 93, baseType: !241, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3572, file: !3534, line: 100, baseType: !241, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3509, file: !3436, line: 96, baseType: !308, size: 32, offset: 1024)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3454, file: !3436, line: 352, baseType: !3586, size: 4608, align: 512)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3436, line: 333, size: 4608, align: 512, elements: !3587)
!3587 = !{!3588, !3589, !3596}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3586, file: !3436, line: 334, baseType: !3472, size: 4096, align: 128)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3586, file: !3436, line: 335, baseType: !3590, size: 512, offset: 4096)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3436, line: 312, size: 512, elements: !3591)
!3591 = !{!3592, !3593, !3594}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3590, file: !3436, line: 313, baseType: !241, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3590, file: !3436, line: 314, baseType: !241, size: 64, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3590, file: !3436, line: 315, baseType: !3595, size: 384, offset: 128)
!3595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 384, elements: !331)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3586, file: !3436, line: 336, baseType: !3597, offset: 4608)
!3597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, elements: !893)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3454, file: !3436, line: 353, baseType: !3599, size: 32768)
!3599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 32768, elements: !3600)
!3600 = !{!3601}
!3601 = !DISubrange(count: 4096)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3435, file: !3436, line: 484, baseType: !3441, size: 64, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3435, file: !3436, line: 491, baseType: !3604, size: 128, offset: 256)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3436, line: 404, size: 128, elements: !3605)
!3605 = !{!3606, !3607, !3608}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3604, file: !3436, line: 424, baseType: !241, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3604, file: !3436, line: 432, baseType: !7, size: 32, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3604, file: !3436, line: 440, baseType: !7, size: 32, offset: 96)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3435, file: !3436, line: 498, baseType: !3604, size: 128, offset: 384)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3435, file: !3436, line: 508, baseType: !3442, size: 33280, align: 512, offset: 512)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !484, file: !485, line: 21, baseType: !3612, size: 64, offset: 256)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{null, !494}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !484, file: !485, line: 22, baseType: !3616, size: 64, offset: 320)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!74, !3619, !494}
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsset", file: !2848, line: 53, size: 256, elements: !3621)
!3621 = !{!3622, !3623, !3624, !3625}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3620, file: !2848, line: 54, baseType: !7, size: 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3620, file: !2848, line: 55, baseType: !2846, size: 64, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3620, file: !2848, line: 56, baseType: !2837, size: 64, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3620, file: !2848, line: 57, baseType: !199, size: 64, offset: 192)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !484, file: !485, line: 23, baseType: !3627, size: 64, offset: 384)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!444, !494}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !484, file: !485, line: 24, baseType: !3631, size: 64, offset: 448)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!494, !494}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !477, file: !478, line: 12, baseType: !7, size: 32, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !477, file: !478, line: 13, baseType: !255, size: 32, offset: 160)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !445, file: !446, line: 77, baseType: !91, size: 64, offset: 2112)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !445, file: !446, line: 80, baseType: !352, size: 8, offset: 2176)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !445, file: !446, line: 88, baseType: !149, size: 128, offset: 2240)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !445, file: !446, line: 89, baseType: !250, size: 64, offset: 2368)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !445, file: !446, line: 90, baseType: !278, size: 320, offset: 2432)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !445, file: !446, line: 97, baseType: !1826, size: 256, offset: 2752)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !445, file: !446, line: 99, baseType: !3643, size: 768, offset: 3008)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !64, line: 199, size: 768, elements: !3644)
!3644 = !{!3645, !3650}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !3643, file: !64, line: 200, baseType: !3646, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!74, !3649}
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3643, file: !64, line: 201, baseType: !3651, size: 704, offset: 64)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !64, line: 193, size: 704, elements: !3652)
!3652 = !{!3653, !3700}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3651, file: !64, line: 195, baseType: !3654, size: 640)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !64, line: 173, size: 640, elements: !3655)
!3655 = !{!3656, !3668, !3669, !3670, !3690, !3691, !3693, !3699}
!3656 = !DIDerivedType(tag: DW_TAG_member, scope: !3654, file: !64, line: 174, baseType: !3657, size: 192)
!3657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3654, file: !64, line: 174, size: 192, elements: !3658)
!3658 = !{!3659, !3667}
!3659 = !DIDerivedType(tag: DW_TAG_member, scope: !3657, file: !64, line: 175, baseType: !3660, size: 192)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3657, file: !64, line: 175, size: 192, elements: !3661)
!3661 = !{!3662, !3663, !3664, !3665, !3666}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !3660, file: !64, line: 176, baseType: !85, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !3660, file: !64, line: 177, baseType: !74, size: 32, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3660, file: !64, line: 178, baseType: !74, size: 32, offset: 96)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3660, file: !64, line: 179, baseType: !74, size: 32, offset: 128)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !3660, file: !64, line: 180, baseType: !74, size: 32, offset: 160)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3657, file: !64, line: 182, baseType: !342, size: 128, align: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3654, file: !64, line: 184, baseType: !2778, size: 64, offset: 192)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !3654, file: !64, line: 185, baseType: !85, size: 64, offset: 256)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3654, file: !64, line: 186, baseType: !3671, size: 64, offset: 320)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !64, line: 204, size: 960, elements: !3673)
!3673 = !{!3674, !3675, !3679, !3686}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !3672, file: !64, line: 205, baseType: !3643, size: 768)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !3672, file: !64, line: 206, baseType: !3676, size: 64, offset: 768)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!3649, !3671}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !3672, file: !64, line: 207, baseType: !3680, size: 64, offset: 832)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{null, !3683, !3684, !3685}
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !3672, file: !64, line: 209, baseType: !3687, size: 64, offset: 896)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!74, !3683, !85}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3654, file: !64, line: 187, baseType: !3649, size: 64, offset: 384)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3654, file: !64, line: 188, baseType: !3692, size: 64, offset: 448)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3654, file: !64, line: 189, baseType: !3694, size: 64, offset: 512)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !64, line: 157, size: 256, elements: !3696)
!3696 = !{!3697, !3698}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3695, file: !64, line: 158, baseType: !270, size: 192, align: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3695, file: !64, line: 159, baseType: !3683, size: 64, offset: 192)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !3654, file: !64, line: 190, baseType: !879, size: 64, offset: 576)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3651, file: !64, line: 196, baseType: !679, size: 64, offset: 640)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !445, file: !446, line: 100, baseType: !3683, size: 64, offset: 3776)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !445, file: !446, line: 102, baseType: !3703, size: 64, offset: 3840)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !446, line: 107, size: 1152, elements: !3705)
!3705 = !{!3706, !3707, !3708, !3709, !3710, !3714}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3704, file: !446, line: 108, baseType: !424, size: 128)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3704, file: !446, line: 109, baseType: !444, size: 64, offset: 128)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3704, file: !446, line: 110, baseType: !214, size: 32, offset: 192)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3704, file: !446, line: 111, baseType: !101, size: 32, offset: 224)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !3704, file: !446, line: 112, baseType: !3711, size: 640, offset: 256)
!3711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 640, elements: !3712)
!3712 = !{!3713}
!3713 = !DISubrange(count: 10)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !3704, file: !446, line: 113, baseType: !3715, size: 256, offset: 896)
!3715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 256, elements: !373)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !445, file: !446, line: 103, baseType: !3717, size: 640, offset: 3904)
!3717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1068, size: 640, elements: !3712)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !445, file: !446, line: 104, baseType: !3719, size: 256, offset: 4544)
!3719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1068, size: 256, elements: !373)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !201, file: !202, line: 139, baseType: !3703, size: 64, offset: 1216)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !201, file: !202, line: 140, baseType: !3722, size: 64, offset: 1280)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !202, line: 25, size: 64, elements: !3724)
!3724 = !{!3725, !3726, !3727}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3723, file: !202, line: 26, baseType: !101, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !3723, file: !202, line: 27, baseType: !74, size: 32, offset: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3723, file: !202, line: 28, baseType: !3728, offset: 64)
!3728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, elements: !893)
!3729 = !DIDerivedType(tag: DW_TAG_member, scope: !201, file: !202, line: 142, baseType: !3730, size: 128, offset: 1344)
!3730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !201, file: !202, line: 142, size: 128, elements: !3731)
!3731 = !{!3732, !3733}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !3730, file: !202, line: 143, baseType: !74, size: 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3730, file: !202, line: 144, baseType: !342, size: 128, align: 64)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !211)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3738)
!3738 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !95)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !241)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!3743 = !{!0, !3744, !3746, !3748, !3753, !3755, !3760, !3762, !3765, !3767}
!3744 = !DIGlobalVariableExpression(var: !3745, expr: !DIExpression())
!3745 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_open_related_ns282", scope: !2, file: !3, line: 187, type: !72, isLocal: true, isDefinition: true)
!3746 = !DIGlobalVariableExpression(var: !3747, expr: !DIExpression())
!3747 = distinct !DIGlobalVariable(scope: null, file: !3, line: 227, type: !3168, isLocal: true, isDefinition: true)
!3748 = !DIGlobalVariableExpression(var: !3749, expr: !DIExpression())
!3749 = distinct !DIGlobalVariable(scope: null, file: !3, line: 287, type: !3750, isLocal: true, isDefinition: true)
!3750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 152, elements: !3751)
!3751 = !{!3752}
!3752 = !DISubrange(count: 19)
!3753 = !DIGlobalVariableExpression(var: !3754, expr: !DIExpression())
!3754 = distinct !DIGlobalVariable(name: "nsfs_mnt", scope: !2, file: !3, line: 17, type: !914, isLocal: true, isDefinition: true)
!3755 = !DIGlobalVariableExpression(var: !3756, expr: !DIExpression())
!3756 = distinct !DIGlobalVariable(scope: null, file: !3, line: 32, type: !3757, isLocal: true, isDefinition: true)
!3757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 72, elements: !3758)
!3758 = !{!3759}
!3759 = !DISubrange(count: 9)
!3760 = !DIGlobalVariableExpression(var: !3761, expr: !DIExpression())
!3761 = distinct !DIGlobalVariable(name: "ns_file_operations", scope: !2, file: !3, line: 21, type: !2383, isLocal: true, isDefinition: true)
!3762 = !DIGlobalVariableExpression(var: !3763, expr: !DIExpression())
!3763 = distinct !DIGlobalVariable(scope: null, file: !3, line: 278, type: !3764, isLocal: true, isDefinition: true)
!3764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 40, elements: !462)
!3765 = !DIGlobalVariableExpression(var: !3766, expr: !DIExpression())
!3766 = distinct !DIGlobalVariable(name: "nsfs", scope: !2, file: !3, line: 277, type: !1173, isLocal: true, isDefinition: true)
!3767 = !DIGlobalVariableExpression(var: !3768, expr: !DIExpression())
!3768 = distinct !DIGlobalVariable(name: "nsfs_ops", scope: !2, file: !3, line: 261, type: !1300, isLocal: true, isDefinition: true)
!3769 = !{!"rsp"}
!3770 = !{i32 7, !"Dwarf Version", i32 5}
!3771 = !{i32 2, !"Debug Info Version", i32 3}
!3772 = !{i32 1, !"wchar_size", i32 2}
!3773 = !{i32 8, !"cf-protection-branch", i32 1}
!3774 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3775 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3776 = !{i32 1, !"Code Model", i32 2}
!3777 = !{i32 1, !"override-stack-alignment", i32 8}
!3778 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3779 = distinct !DISubprogram(name: "ns_prune_dentry", scope: !3, file: !3, line: 36, type: !1755, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3780)
!3780 = !{!3781, !3782, !3783}
!3781 = !DILocalVariable(name: "dentry", arg: 1, scope: !3779, file: !3, line: 36, type: !919)
!3782 = !DILocalVariable(name: "inode", scope: !3779, file: !3, line: 38, type: !954)
!3783 = !DILocalVariable(name: "ns", scope: !3784, file: !3, line: 40, type: !494)
!3784 = distinct !DILexicalBlock(scope: !3785, file: !3, line: 39, column: 13)
!3785 = distinct !DILexicalBlock(scope: !3779, file: !3, line: 39, column: 6)
!3786 = !DILocation(line: 36, column: 44, scope: !3779)
!3787 = !DILocation(line: 38, column: 2, scope: !3779)
!3788 = !DILocation(line: 38, column: 16, scope: !3779)
!3789 = !DILocation(line: 38, column: 32, scope: !3779)
!3790 = !DILocation(line: 38, column: 24, scope: !3779)
!3791 = !DILocation(line: 39, column: 6, scope: !3785)
!3792 = !DILocation(line: 39, column: 6, scope: !3779)
!3793 = !DILocation(line: 40, column: 3, scope: !3784)
!3794 = !DILocation(line: 40, column: 21, scope: !3784)
!3795 = !DILocation(line: 40, column: 26, scope: !3784)
!3796 = !DILocation(line: 40, column: 33, scope: !3784)
!3797 = !DILocation(line: 41, column: 20, scope: !3784)
!3798 = !DILocation(line: 41, column: 24, scope: !3784)
!3799 = !DILocation(line: 41, column: 3, scope: !3784)
!3800 = !DILocation(line: 42, column: 2, scope: !3785)
!3801 = !DILocation(line: 42, column: 2, scope: !3784)
!3802 = !DILocation(line: 43, column: 1, scope: !3779)
!3803 = distinct !DISubprogram(name: "ns_dname", scope: !3, file: !3, line: 27, type: !1764, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3804)
!3804 = !{!3805, !3806, !3807, !3808, !3809}
!3805 = !DILocalVariable(name: "dentry", arg: 1, scope: !3803, file: !3, line: 27, type: !919)
!3806 = !DILocalVariable(name: "buffer", arg: 2, scope: !3803, file: !3, line: 27, type: !363)
!3807 = !DILocalVariable(name: "buflen", arg: 3, scope: !3803, file: !3, line: 27, type: !74)
!3808 = !DILocalVariable(name: "inode", scope: !3803, file: !3, line: 29, type: !954)
!3809 = !DILocalVariable(name: "ns_ops", scope: !3803, file: !3, line: 30, type: !482)
!3810 = !DILocation(line: 27, column: 38, scope: !3803)
!3811 = !DILocation(line: 27, column: 52, scope: !3803)
!3812 = !DILocation(line: 27, column: 64, scope: !3803)
!3813 = !DILocation(line: 29, column: 2, scope: !3803)
!3814 = !DILocation(line: 29, column: 16, scope: !3803)
!3815 = !DILocation(line: 29, column: 32, scope: !3803)
!3816 = !DILocation(line: 29, column: 24, scope: !3803)
!3817 = !DILocation(line: 30, column: 2, scope: !3803)
!3818 = !DILocation(line: 30, column: 35, scope: !3803)
!3819 = !DILocation(line: 30, column: 44, scope: !3803)
!3820 = !DILocation(line: 30, column: 52, scope: !3803)
!3821 = !DILocation(line: 32, column: 23, scope: !3803)
!3822 = !DILocation(line: 32, column: 31, scope: !3803)
!3823 = !DILocation(line: 33, column: 3, scope: !3803)
!3824 = !DILocation(line: 33, column: 11, scope: !3803)
!3825 = !DILocation(line: 33, column: 17, scope: !3803)
!3826 = !DILocation(line: 33, column: 24, scope: !3803)
!3827 = !DILocation(line: 32, column: 9, scope: !3803)
!3828 = !DILocation(line: 34, column: 1, scope: !3803)
!3829 = !DILocation(line: 32, column: 2, scope: !3803)
!3830 = distinct !DISubprogram(name: "ns_get_path_cb", scope: !3, file: !3, line: 110, type: !3831, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3837)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!74, !1770, !3833, !72}
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_typedef, name: "ns_get_path_helper_t", file: !485, line: 78, baseType: !3835)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!494, !72}
!3837 = !{!3838, !3839, !3840, !3841, !3842}
!3838 = !DILocalVariable(name: "path", arg: 1, scope: !3830, file: !3, line: 110, type: !1770)
!3839 = !DILocalVariable(name: "ns_get_cb", arg: 2, scope: !3830, file: !3, line: 110, type: !3833)
!3840 = !DILocalVariable(name: "private_data", arg: 3, scope: !3830, file: !3, line: 111, type: !72)
!3841 = !DILocalVariable(name: "ret", scope: !3830, file: !3, line: 113, type: !74)
!3842 = !DILocalVariable(name: "ns", scope: !3843, file: !3, line: 116, type: !494)
!3843 = distinct !DILexicalBlock(scope: !3830, file: !3, line: 115, column: 5)
!3844 = !DILocation(line: 110, column: 33, scope: !3830)
!3845 = !DILocation(line: 110, column: 61, scope: !3830)
!3846 = !DILocation(line: 111, column: 14, scope: !3830)
!3847 = !DILocation(line: 113, column: 2, scope: !3830)
!3848 = !DILocation(line: 113, column: 6, scope: !3830)
!3849 = !DILocation(line: 115, column: 2, scope: !3830)
!3850 = !DILocation(line: 116, column: 3, scope: !3843)
!3851 = !DILocation(line: 116, column: 21, scope: !3843)
!3852 = !DILocation(line: 116, column: 26, scope: !3843)
!3853 = !DILocation(line: 116, column: 36, scope: !3843)
!3854 = !DILocation(line: 117, column: 8, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 117, column: 7)
!3856 = !DILocation(line: 117, column: 7, scope: !3843)
!3857 = !DILocation(line: 118, column: 4, scope: !3855)
!3858 = !DILocation(line: 119, column: 23, scope: !3843)
!3859 = !DILocation(line: 119, column: 29, scope: !3843)
!3860 = !DILocation(line: 119, column: 9, scope: !3843)
!3861 = !DILocation(line: 119, column: 7, scope: !3843)
!3862 = !DILocation(line: 120, column: 2, scope: !3830)
!3863 = !DILocation(line: 120, column: 2, scope: !3843)
!3864 = !DILocation(line: 120, column: 11, scope: !3830)
!3865 = !DILocation(line: 120, column: 15, scope: !3830)
!3866 = distinct !{!3866, !3849, !3867, !3868, !3869}
!3867 = !DILocation(line: 120, column: 25, scope: !3830)
!3868 = !{!"llvm.loop.mustprogress"}
!3869 = !{!"llvm.loop.unroll.disable"}
!3870 = !DILocation(line: 122, column: 9, scope: !3830)
!3871 = !DILocation(line: 122, column: 2, scope: !3830)
!3872 = !DILocation(line: 123, column: 1, scope: !3830)
!3873 = distinct !DISubprogram(name: "__ns_get_path", scope: !3, file: !3, line: 59, type: !3874, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3876)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!74, !1770, !494}
!3876 = !{!3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884}
!3877 = !DILocalVariable(name: "path", arg: 1, scope: !3873, file: !3, line: 59, type: !1770)
!3878 = !DILocalVariable(name: "ns", arg: 2, scope: !3873, file: !3, line: 59, type: !494)
!3879 = !DILocalVariable(name: "mnt", scope: !3873, file: !3, line: 61, type: !914)
!3880 = !DILocalVariable(name: "dentry", scope: !3873, file: !3, line: 62, type: !919)
!3881 = !DILocalVariable(name: "inode", scope: !3873, file: !3, line: 63, type: !954)
!3882 = !DILocalVariable(name: "d", scope: !3873, file: !3, line: 64, type: !91)
!3883 = !DILabel(scope: !3873, name: "got_it", file: !3, line: 75)
!3884 = !DILabel(scope: !3873, name: "slow", file: !3, line: 79)
!3885 = !DILocation(line: 59, column: 39, scope: !3873)
!3886 = !DILocation(line: 59, column: 63, scope: !3873)
!3887 = !DILocation(line: 61, column: 2, scope: !3873)
!3888 = !DILocation(line: 61, column: 19, scope: !3873)
!3889 = !DILocation(line: 61, column: 25, scope: !3873)
!3890 = !DILocation(line: 62, column: 2, scope: !3873)
!3891 = !DILocation(line: 62, column: 17, scope: !3873)
!3892 = !DILocation(line: 63, column: 2, scope: !3873)
!3893 = !DILocation(line: 63, column: 16, scope: !3873)
!3894 = !DILocation(line: 64, column: 2, scope: !3873)
!3895 = !DILocation(line: 64, column: 16, scope: !3873)
!3896 = !DILocation(line: 66, column: 2, scope: !3873)
!3897 = !DILocation(line: 67, column: 24, scope: !3873)
!3898 = !DILocation(line: 67, column: 28, scope: !3873)
!3899 = !DILocation(line: 67, column: 6, scope: !3873)
!3900 = !DILocation(line: 67, column: 4, scope: !3873)
!3901 = !DILocation(line: 68, column: 7, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 68, column: 6)
!3903 = !DILocation(line: 68, column: 6, scope: !3873)
!3904 = !DILocation(line: 69, column: 3, scope: !3902)
!3905 = !DILocation(line: 70, column: 28, scope: !3873)
!3906 = !DILocation(line: 70, column: 11, scope: !3873)
!3907 = !DILocation(line: 70, column: 9, scope: !3873)
!3908 = !DILocation(line: 71, column: 29, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 71, column: 6)
!3910 = !DILocation(line: 71, column: 37, scope: !3909)
!3911 = !DILocation(line: 71, column: 7, scope: !3909)
!3912 = !DILocation(line: 71, column: 6, scope: !3873)
!3913 = !DILocation(line: 72, column: 3, scope: !3909)
!3914 = !DILocation(line: 73, column: 2, scope: !3873)
!3915 = !DILocation(line: 74, column: 2, scope: !3873)
!3916 = !DILocation(line: 74, column: 6, scope: !3873)
!3917 = !DILocation(line: 74, column: 11, scope: !3873)
!3918 = !DILocation(line: 74, column: 15, scope: !3873)
!3919 = !DILocation(line: 75, column: 1, scope: !3873)
!3920 = !DILocation(line: 76, column: 21, scope: !3873)
!3921 = !DILocation(line: 76, column: 14, scope: !3873)
!3922 = !DILocation(line: 76, column: 2, scope: !3873)
!3923 = !DILocation(line: 76, column: 8, scope: !3873)
!3924 = !DILocation(line: 76, column: 12, scope: !3873)
!3925 = !DILocation(line: 77, column: 17, scope: !3873)
!3926 = !DILocation(line: 77, column: 2, scope: !3873)
!3927 = !DILocation(line: 77, column: 8, scope: !3873)
!3928 = !DILocation(line: 77, column: 15, scope: !3873)
!3929 = !DILocation(line: 78, column: 2, scope: !3873)
!3930 = !DILocation(line: 79, column: 1, scope: !3873)
!3931 = !DILocation(line: 80, column: 2, scope: !3873)
!3932 = !DILocation(line: 81, column: 27, scope: !3873)
!3933 = !DILocation(line: 81, column: 32, scope: !3873)
!3934 = !DILocation(line: 81, column: 10, scope: !3873)
!3935 = !DILocation(line: 81, column: 8, scope: !3873)
!3936 = !DILocation(line: 82, column: 7, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 82, column: 6)
!3938 = !DILocation(line: 82, column: 6, scope: !3873)
!3939 = !DILocation(line: 83, column: 3, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3937, file: !3, line: 82, column: 14)
!3941 = !DILocation(line: 83, column: 7, scope: !3940)
!3942 = !DILocation(line: 83, column: 12, scope: !3940)
!3943 = !DILocation(line: 83, column: 16, scope: !3940)
!3944 = !DILocation(line: 84, column: 3, scope: !3940)
!3945 = !DILocation(line: 86, column: 17, scope: !3873)
!3946 = !DILocation(line: 86, column: 21, scope: !3873)
!3947 = !DILocation(line: 86, column: 2, scope: !3873)
!3948 = !DILocation(line: 86, column: 9, scope: !3873)
!3949 = !DILocation(line: 86, column: 15, scope: !3873)
!3950 = !DILocation(line: 87, column: 2, scope: !3873)
!3951 = !DILocation(line: 87, column: 9, scope: !3873)
!3952 = !DILocation(line: 87, column: 19, scope: !3873)
!3953 = !DILocation(line: 87, column: 26, scope: !3873)
!3954 = !DILocation(line: 87, column: 36, scope: !3873)
!3955 = !DILocation(line: 87, column: 60, scope: !3873)
!3956 = !DILocation(line: 87, column: 34, scope: !3873)
!3957 = !DILocation(line: 88, column: 2, scope: !3873)
!3958 = !DILocation(line: 88, column: 9, scope: !3873)
!3959 = !DILocation(line: 88, column: 17, scope: !3873)
!3960 = !DILocation(line: 89, column: 2, scope: !3873)
!3961 = !DILocation(line: 89, column: 9, scope: !3873)
!3962 = !DILocation(line: 89, column: 16, scope: !3873)
!3963 = !DILocation(line: 90, column: 2, scope: !3873)
!3964 = !DILocation(line: 90, column: 9, scope: !3873)
!3965 = !DILocation(line: 90, column: 15, scope: !3873)
!3966 = !DILocation(line: 91, column: 21, scope: !3873)
!3967 = !DILocation(line: 91, column: 2, scope: !3873)
!3968 = !DILocation(line: 91, column: 9, scope: !3873)
!3969 = !DILocation(line: 91, column: 19, scope: !3873)
!3970 = !DILocation(line: 93, column: 24, scope: !3873)
!3971 = !DILocation(line: 93, column: 29, scope: !3873)
!3972 = !DILocation(line: 93, column: 11, scope: !3873)
!3973 = !DILocation(line: 93, column: 9, scope: !3873)
!3974 = !DILocation(line: 94, column: 7, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 94, column: 6)
!3976 = !DILocation(line: 94, column: 6, scope: !3873)
!3977 = !DILocation(line: 95, column: 8, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3975, file: !3, line: 94, column: 15)
!3979 = !DILocation(line: 95, column: 3, scope: !3978)
!3980 = !DILocation(line: 96, column: 3, scope: !3978)
!3981 = !DILocation(line: 98, column: 16, scope: !3873)
!3982 = !DILocation(line: 98, column: 24, scope: !3873)
!3983 = !DILocation(line: 98, column: 2, scope: !3873)
!3984 = !DILocation(line: 99, column: 29, scope: !3873)
!3985 = !DILocation(line: 99, column: 33, scope: !3873)
!3986 = !DILocation(line: 99, column: 2, scope: !3873)
!3987 = !DILocation(line: 99, column: 10, scope: !3873)
!3988 = !DILocation(line: 99, column: 19, scope: !3873)
!3989 = !DILocation(line: 100, column: 27, scope: !3873)
!3990 = !DILocation(line: 100, column: 31, scope: !3873)
!3991 = !DILocation(line: 100, column: 58, scope: !3873)
!3992 = !DILocation(line: 100, column: 43, scope: !3873)
!3993 = !DILocation(line: 100, column: 6, scope: !3873)
!3994 = !DILocation(line: 100, column: 4, scope: !3873)
!3995 = !DILocation(line: 101, column: 6, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 101, column: 6)
!3997 = !DILocation(line: 101, column: 6, scope: !3873)
!3998 = !DILocation(line: 102, column: 12, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3996, file: !3, line: 101, column: 9)
!4000 = !DILocation(line: 102, column: 3, scope: !3999)
!4001 = !DILocation(line: 103, column: 8, scope: !3999)
!4002 = !DILocation(line: 103, column: 3, scope: !3999)
!4003 = !DILocation(line: 104, column: 3, scope: !3999)
!4004 = !DILocation(line: 105, column: 3, scope: !3999)
!4005 = !DILocation(line: 107, column: 2, scope: !3873)
!4006 = !DILocation(line: 108, column: 1, scope: !3873)
!4007 = distinct !DISubprogram(name: "ns_get_path", scope: !3, file: !3, line: 137, type: !4008, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4010)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!74, !1770, !495, !482}
!4010 = !{!4011, !4012, !4013, !4014}
!4011 = !DILocalVariable(name: "path", arg: 1, scope: !4007, file: !3, line: 137, type: !1770)
!4012 = !DILocalVariable(name: "task", arg: 2, scope: !4007, file: !3, line: 137, type: !495)
!4013 = !DILocalVariable(name: "ns_ops", arg: 3, scope: !4007, file: !3, line: 138, type: !482)
!4014 = !DILocalVariable(name: "args", scope: !4007, file: !3, line: 140, type: !4015)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_get_path_task_args", file: !3, line: 125, size: 128, elements: !4016)
!4016 = !{!4017, !4018}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "ns_ops", scope: !4015, file: !3, line: 126, baseType: !482, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4015, file: !3, line: 127, baseType: !495, size: 64, offset: 64)
!4019 = !DILocation(line: 137, column: 30, scope: !4007)
!4020 = !DILocation(line: 137, column: 56, scope: !4007)
!4021 = !DILocation(line: 138, column: 38, scope: !4007)
!4022 = !DILocation(line: 140, column: 2, scope: !4007)
!4023 = !DILocation(line: 140, column: 31, scope: !4007)
!4024 = !DILocation(line: 140, column: 38, scope: !4007)
!4025 = !DILocation(line: 141, column: 13, scope: !4007)
!4026 = !DILocation(line: 142, column: 11, scope: !4007)
!4027 = !DILocation(line: 145, column: 24, scope: !4007)
!4028 = !DILocation(line: 145, column: 9, scope: !4007)
!4029 = !DILocation(line: 146, column: 1, scope: !4007)
!4030 = !DILocation(line: 145, column: 2, scope: !4007)
!4031 = distinct !DISubprogram(name: "ns_get_path_task", scope: !3, file: !3, line: 130, type: !3835, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4032)
!4032 = !{!4033, !4034}
!4033 = !DILocalVariable(name: "private_data", arg: 1, scope: !4031, file: !3, line: 130, type: !72)
!4034 = !DILocalVariable(name: "args", scope: !4031, file: !3, line: 132, type: !4035)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4036 = !DILocation(line: 130, column: 49, scope: !4031)
!4037 = !DILocation(line: 132, column: 2, scope: !4031)
!4038 = !DILocation(line: 132, column: 32, scope: !4031)
!4039 = !DILocation(line: 132, column: 39, scope: !4031)
!4040 = !DILocation(line: 134, column: 9, scope: !4031)
!4041 = !DILocation(line: 134, column: 15, scope: !4031)
!4042 = !DILocation(line: 134, column: 23, scope: !4031)
!4043 = !DILocation(line: 134, column: 27, scope: !4031)
!4044 = !DILocation(line: 134, column: 33, scope: !4031)
!4045 = !DILocation(line: 135, column: 1, scope: !4031)
!4046 = !DILocation(line: 134, column: 2, scope: !4031)
!4047 = distinct !DISubprogram(name: "open_related_ns", scope: !3, file: !3, line: 148, type: !4048, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4050)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!74, !494, !3631}
!4050 = !{!4051, !4052, !4053, !4054, !4055, !4056, !4057}
!4051 = !DILocalVariable(name: "ns", arg: 1, scope: !4047, file: !3, line: 148, type: !494)
!4052 = !DILocalVariable(name: "get_ns", arg: 2, scope: !4047, file: !3, line: 149, type: !3631)
!4053 = !DILocalVariable(name: "path", scope: !4047, file: !3, line: 151, type: !910)
!4054 = !DILocalVariable(name: "f", scope: !4047, file: !3, line: 152, type: !821)
!4055 = !DILocalVariable(name: "err", scope: !4047, file: !3, line: 153, type: !74)
!4056 = !DILocalVariable(name: "fd", scope: !4047, file: !3, line: 154, type: !74)
!4057 = !DILocalVariable(name: "relative", scope: !4058, file: !3, line: 161, type: !494)
!4058 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 160, column: 5)
!4059 = !DILocation(line: 148, column: 39, scope: !4047)
!4060 = !DILocation(line: 149, column: 26, scope: !4047)
!4061 = !DILocation(line: 151, column: 2, scope: !4047)
!4062 = !DILocation(line: 151, column: 14, scope: !4047)
!4063 = !DILocation(line: 152, column: 2, scope: !4047)
!4064 = !DILocation(line: 152, column: 15, scope: !4047)
!4065 = !DILocation(line: 153, column: 2, scope: !4047)
!4066 = !DILocation(line: 153, column: 6, scope: !4047)
!4067 = !DILocation(line: 154, column: 2, scope: !4047)
!4068 = !DILocation(line: 154, column: 6, scope: !4047)
!4069 = !DILocation(line: 156, column: 7, scope: !4047)
!4070 = !DILocation(line: 156, column: 5, scope: !4047)
!4071 = !DILocation(line: 157, column: 6, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 157, column: 6)
!4073 = !DILocation(line: 157, column: 9, scope: !4072)
!4074 = !DILocation(line: 157, column: 6, scope: !4047)
!4075 = !DILocation(line: 158, column: 10, scope: !4072)
!4076 = !DILocation(line: 158, column: 3, scope: !4072)
!4077 = !DILocation(line: 160, column: 2, scope: !4047)
!4078 = !DILocation(line: 161, column: 3, scope: !4058)
!4079 = !DILocation(line: 161, column: 21, scope: !4058)
!4080 = !DILocation(line: 163, column: 14, scope: !4058)
!4081 = !DILocation(line: 163, column: 21, scope: !4058)
!4082 = !DILocation(line: 163, column: 12, scope: !4058)
!4083 = !DILocation(line: 164, column: 14, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4058, file: !3, line: 164, column: 7)
!4085 = !DILocation(line: 164, column: 7, scope: !4084)
!4086 = !DILocation(line: 164, column: 7, scope: !4058)
!4087 = !DILocation(line: 165, column: 18, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4084, file: !3, line: 164, column: 25)
!4089 = !DILocation(line: 165, column: 4, scope: !4088)
!4090 = !DILocation(line: 166, column: 19, scope: !4088)
!4091 = !DILocation(line: 166, column: 11, scope: !4088)
!4092 = !DILocation(line: 166, column: 4, scope: !4088)
!4093 = !DILocation(line: 169, column: 30, scope: !4058)
!4094 = !DILocation(line: 169, column: 9, scope: !4058)
!4095 = !DILocation(line: 169, column: 7, scope: !4058)
!4096 = !DILocation(line: 170, column: 2, scope: !4047)
!4097 = !DILocation(line: 170, column: 2, scope: !4058)
!4098 = !DILocation(line: 170, column: 11, scope: !4047)
!4099 = !DILocation(line: 170, column: 15, scope: !4047)
!4100 = distinct !{!4100, !4077, !4101, !3868, !3869}
!4101 = !DILocation(line: 170, column: 25, scope: !4047)
!4102 = !DILocation(line: 172, column: 6, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 172, column: 6)
!4104 = !DILocation(line: 172, column: 6, scope: !4047)
!4105 = !DILocation(line: 173, column: 17, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 172, column: 11)
!4107 = !DILocation(line: 173, column: 3, scope: !4106)
!4108 = !DILocation(line: 174, column: 10, scope: !4106)
!4109 = !DILocation(line: 174, column: 3, scope: !4106)
!4110 = !DILocation(line: 177, column: 35, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 177, column: 35)
!4112 = !DILocation(line: 177, column: 35, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4111, file: !3, line: 177, column: 35)
!4114 = !DILocation(line: 177, column: 6, scope: !4047)
!4115 = !DILocation(line: 177, column: 4, scope: !4047)
!4116 = !DILocation(line: 178, column: 2, scope: !4047)
!4117 = !DILocation(line: 179, column: 13, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 179, column: 6)
!4119 = !DILocation(line: 179, column: 6, scope: !4118)
!4120 = !DILocation(line: 179, column: 6, scope: !4047)
!4121 = !DILocation(line: 180, column: 17, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4118, file: !3, line: 179, column: 17)
!4123 = !DILocation(line: 180, column: 3, scope: !4122)
!4124 = !DILocation(line: 181, column: 16, scope: !4122)
!4125 = !DILocation(line: 181, column: 8, scope: !4122)
!4126 = !DILocation(line: 181, column: 6, scope: !4122)
!4127 = !DILocation(line: 182, column: 2, scope: !4122)
!4128 = !DILocation(line: 183, column: 14, scope: !4118)
!4129 = !DILocation(line: 183, column: 18, scope: !4118)
!4130 = !DILocation(line: 183, column: 3, scope: !4118)
!4131 = !DILocation(line: 185, column: 9, scope: !4047)
!4132 = !DILocation(line: 185, column: 2, scope: !4047)
!4133 = !DILocation(line: 186, column: 1, scope: !4047)
!4134 = !DISubprogram(name: "get_unused_fd_flags", scope: !4135, file: !4135, line: 91, type: !4136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4135 = !DIFile(filename: "./include/linux/file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "784aacb17b41d4e231ce3854c643bfe6")
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!74, !7}
!4138 = distinct !DISubprogram(name: "IS_ERR", scope: !4139, file: !4139, line: 59, type: !4140, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4144)
!4139 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!352, !4142}
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4144 = !{!4145}
!4145 = !DILocalVariable(name: "ptr", arg: 1, scope: !4138, file: !4139, line: 59, type: !4142)
!4146 = !DILocation(line: 59, column: 60, scope: !4138)
!4147 = !DILocation(line: 61, column: 9, scope: !4138)
!4148 = !DILocation(line: 61, column: 2, scope: !4138)
!4149 = !DISubprogram(name: "put_unused_fd", scope: !4135, file: !4135, line: 92, type: !4150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{null, !7}
!4152 = distinct !DISubprogram(name: "PTR_ERR", scope: !4139, file: !4139, line: 49, type: !4153, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4155)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!1068, !4142}
!4155 = !{!4156}
!4156 = !DILocalVariable(name: "ptr", arg: 1, scope: !4152, file: !4139, line: 49, type: !4142)
!4157 = !DILocation(line: 49, column: 61, scope: !4152)
!4158 = !DILocation(line: 51, column: 16, scope: !4152)
!4159 = !DILocation(line: 51, column: 9, scope: !4152)
!4160 = !DILocation(line: 51, column: 2, scope: !4152)
!4161 = !DISubprogram(name: "dentry_open", scope: !183, file: !183, line: 2514, type: !4162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!821, !1076, !74, !199}
!4164 = distinct !DISubprogram(name: "get_current", scope: !4165, file: !4165, line: 39, type: !4166, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4168)
!4165 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!495}
!4168 = !{!4169, !4171, !4173}
!4169 = !DILocalVariable(name: "pscr_ret__", scope: !4170, file: !4165, line: 41, type: !495)
!4170 = distinct !DILexicalBlock(scope: !4164, file: !4165, line: 41, column: 9)
!4171 = !DILocalVariable(name: "__vpp_verify", scope: !4172, file: !4165, line: 41, type: !4142)
!4172 = distinct !DILexicalBlock(scope: !4170, file: !4165, line: 41, column: 9)
!4173 = !DILocalVariable(name: "pfo_val__", scope: !4174, file: !4165, line: 41, type: !241)
!4174 = distinct !DILexicalBlock(scope: !4170, file: !4165, line: 41, column: 9)
!4175 = !DILocation(line: 41, column: 9, scope: !4170)
!4176 = !DILocation(line: 41, column: 9, scope: !4172)
!4177 = !DILocation(line: 41, column: 9, scope: !4174)
!4178 = !{i64 2149069083}
!4179 = !DILocation(line: 41, column: 9, scope: !4164)
!4180 = !DILocation(line: 41, column: 2, scope: !4164)
!4181 = !DISubprogram(name: "path_put", scope: !911, file: !911, line: 14, type: !4182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{null, !1076}
!4184 = !DISubprogram(name: "fd_install", scope: !4135, file: !4135, line: 97, type: !4185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{null, !7, !821}
!4187 = distinct !DISubprogram(name: "ns_get_name", scope: !3, file: !3, line: 218, type: !4188, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4190)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!74, !363, !87, !495, !482}
!4190 = !{!4191, !4192, !4193, !4194, !4195, !4196, !4197}
!4191 = !DILocalVariable(name: "buf", arg: 1, scope: !4187, file: !3, line: 218, type: !363)
!4192 = !DILocalVariable(name: "size", arg: 2, scope: !4187, file: !3, line: 218, type: !87)
!4193 = !DILocalVariable(name: "task", arg: 3, scope: !4187, file: !3, line: 218, type: !495)
!4194 = !DILocalVariable(name: "ns_ops", arg: 4, scope: !4187, file: !3, line: 219, type: !482)
!4195 = !DILocalVariable(name: "ns", scope: !4187, file: !3, line: 221, type: !494)
!4196 = !DILocalVariable(name: "res", scope: !4187, file: !3, line: 222, type: !74)
!4197 = !DILocalVariable(name: "name", scope: !4187, file: !3, line: 223, type: !68)
!4198 = !DILocation(line: 218, column: 23, scope: !4187)
!4199 = !DILocation(line: 218, column: 35, scope: !4187)
!4200 = !DILocation(line: 218, column: 61, scope: !4187)
!4201 = !DILocation(line: 219, column: 37, scope: !4187)
!4202 = !DILocation(line: 221, column: 2, scope: !4187)
!4203 = !DILocation(line: 221, column: 20, scope: !4187)
!4204 = !DILocation(line: 222, column: 2, scope: !4187)
!4205 = !DILocation(line: 222, column: 6, scope: !4187)
!4206 = !DILocation(line: 223, column: 2, scope: !4187)
!4207 = !DILocation(line: 223, column: 14, scope: !4187)
!4208 = !DILocation(line: 224, column: 7, scope: !4187)
!4209 = !DILocation(line: 224, column: 15, scope: !4187)
!4210 = !DILocation(line: 224, column: 19, scope: !4187)
!4211 = !DILocation(line: 224, column: 5, scope: !4187)
!4212 = !DILocation(line: 225, column: 6, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4187, file: !3, line: 225, column: 6)
!4214 = !DILocation(line: 225, column: 6, scope: !4187)
!4215 = !DILocation(line: 226, column: 10, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 225, column: 10)
!4217 = !DILocation(line: 226, column: 18, scope: !4216)
!4218 = !DILocation(line: 226, column: 35, scope: !4216)
!4219 = !DILocation(line: 226, column: 43, scope: !4216)
!4220 = !DILocation(line: 226, column: 8, scope: !4216)
!4221 = !DILocation(line: 227, column: 18, scope: !4216)
!4222 = !DILocation(line: 227, column: 23, scope: !4216)
!4223 = !DILocation(line: 227, column: 40, scope: !4216)
!4224 = !DILocation(line: 227, column: 46, scope: !4216)
!4225 = !DILocation(line: 227, column: 50, scope: !4216)
!4226 = !DILocation(line: 227, column: 9, scope: !4216)
!4227 = !DILocation(line: 227, column: 7, scope: !4216)
!4228 = !DILocation(line: 228, column: 3, scope: !4216)
!4229 = !DILocation(line: 228, column: 11, scope: !4216)
!4230 = !DILocation(line: 228, column: 15, scope: !4216)
!4231 = !DILocation(line: 229, column: 2, scope: !4216)
!4232 = !DILocation(line: 230, column: 9, scope: !4187)
!4233 = !DILocation(line: 231, column: 1, scope: !4187)
!4234 = !DILocation(line: 230, column: 2, scope: !4187)
!4235 = !DISubprogram(name: "snprintf", scope: !4236, file: !4236, line: 12, type: !4237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4236 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!74, !363, !87, !68, null}
!4239 = distinct !DISubprogram(name: "proc_ns_file", scope: !3, file: !3, line: 233, type: !4240, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4242)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!352, !1393}
!4242 = !{!4243}
!4243 = !DILocalVariable(name: "file", arg: 1, scope: !4239, file: !3, line: 233, type: !1393)
!4244 = !DILocation(line: 233, column: 38, scope: !4239)
!4245 = !DILocation(line: 235, column: 9, scope: !4239)
!4246 = !DILocation(line: 235, column: 15, scope: !4239)
!4247 = !DILocation(line: 235, column: 20, scope: !4239)
!4248 = !DILocation(line: 235, column: 2, scope: !4239)
!4249 = distinct !DISubprogram(name: "ns_match", scope: !3, file: !3, line: 246, type: !4250, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4255)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!352, !4252, !1028, !4254}
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!4254 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !77, line: 22, baseType: !90)
!4255 = !{!4256, !4257, !4258}
!4256 = !DILocalVariable(name: "ns", arg: 1, scope: !4249, file: !3, line: 246, type: !4252)
!4257 = !DILocalVariable(name: "dev", arg: 2, scope: !4249, file: !3, line: 246, type: !1028)
!4258 = !DILocalVariable(name: "ino", arg: 3, scope: !4249, file: !3, line: 246, type: !4254)
!4259 = !DILocation(line: 246, column: 39, scope: !4249)
!4260 = !DILocation(line: 246, column: 49, scope: !4249)
!4261 = !DILocation(line: 246, column: 60, scope: !4249)
!4262 = !DILocation(line: 248, column: 10, scope: !4249)
!4263 = !DILocation(line: 248, column: 14, scope: !4249)
!4264 = !DILocation(line: 248, column: 22, scope: !4249)
!4265 = !DILocation(line: 248, column: 19, scope: !4249)
!4266 = !DILocation(line: 248, column: 27, scope: !4249)
!4267 = !DILocation(line: 248, column: 31, scope: !4249)
!4268 = !DILocation(line: 248, column: 41, scope: !4249)
!4269 = !DILocation(line: 248, column: 49, scope: !4249)
!4270 = !DILocation(line: 248, column: 58, scope: !4249)
!4271 = !DILocation(line: 248, column: 55, scope: !4249)
!4272 = !DILocation(line: 0, scope: !4249)
!4273 = !DILocation(line: 248, column: 2, scope: !4249)
!4274 = distinct !DISubprogram(name: "nsfs_init", scope: !3, file: !3, line: 283, type: !3036, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4275 = !DILocation(line: 285, column: 13, scope: !4274)
!4276 = !DILocation(line: 285, column: 11, scope: !4274)
!4277 = !DILocation(line: 286, column: 13, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 286, column: 6)
!4279 = !DILocation(line: 286, column: 6, scope: !4278)
!4280 = !DILocation(line: 286, column: 6, scope: !4274)
!4281 = !DILocation(line: 287, column: 3, scope: !4278)
!4282 = !DILocation(line: 288, column: 2, scope: !4274)
!4283 = !DILocation(line: 288, column: 12, scope: !4274)
!4284 = !DILocation(line: 288, column: 20, scope: !4274)
!4285 = !DILocation(line: 288, column: 28, scope: !4274)
!4286 = !DILocation(line: 289, column: 1, scope: !4274)
!4287 = !DISubprogram(name: "kern_mount", scope: !916, file: !916, line: 114, type: !4288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{!914, !1172}
!4290 = !DISubprogram(name: "panic", scope: !4291, file: !4291, line: 12, type: !4292, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4291 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!4292 = !DISubroutineType(types: !4293)
!4293 = !{null, !68, null}
!4294 = distinct !DISubprogram(name: "d_inode", scope: !921, file: !921, line: 514, type: !4295, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4297)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!954, !1736}
!4297 = !{!4298}
!4298 = !DILocalVariable(name: "dentry", arg: 1, scope: !4294, file: !921, line: 514, type: !1736)
!4299 = !DILocation(line: 514, column: 58, scope: !4294)
!4300 = !DILocation(line: 516, column: 9, scope: !4294)
!4301 = !DILocation(line: 516, column: 17, scope: !4294)
!4302 = !DILocation(line: 516, column: 2, scope: !4294)
!4303 = distinct !DISubprogram(name: "atomic_long_set", scope: !4304, file: !4304, line: 3193, type: !4305, scopeLine: 3194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4307)
!4304 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4305 = !DISubroutineType(types: !4306)
!4306 = !{null, !1795, !1068}
!4307 = !{!4308, !4309}
!4308 = !DILocalVariable(name: "v", arg: 1, scope: !4303, file: !4304, line: 3193, type: !1795)
!4309 = !DILocalVariable(name: "i", arg: 2, scope: !4303, file: !4304, line: 3193, type: !1068)
!4310 = !DILocation(line: 3193, column: 32, scope: !4303)
!4311 = !DILocation(line: 3193, column: 40, scope: !4303)
!4312 = !DILocation(line: 3195, column: 26, scope: !4303)
!4313 = !DILocation(line: 3195, column: 2, scope: !4303)
!4314 = !DILocation(line: 3196, column: 22, scope: !4303)
!4315 = !DILocation(line: 3196, column: 25, scope: !4303)
!4316 = !DILocation(line: 3196, column: 2, scope: !4303)
!4317 = !DILocation(line: 3197, column: 1, scope: !4303)
!4318 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4319, file: !4319, line: 80, type: !4320, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4325)
!4319 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4320 = !DISubroutineType(types: !4321)
!4321 = !{null, !4322, !87}
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4324)
!4324 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4325 = !{!4326, !4327}
!4326 = !DILocalVariable(name: "v", arg: 1, scope: !4318, file: !4319, line: 80, type: !4322)
!4327 = !DILocalVariable(name: "size", arg: 2, scope: !4318, file: !4319, line: 80, type: !87)
!4328 = !DILocation(line: 80, column: 74, scope: !4318)
!4329 = !DILocation(line: 80, column: 84, scope: !4318)
!4330 = !DILocation(line: 82, column: 20, scope: !4318)
!4331 = !DILocation(line: 82, column: 23, scope: !4318)
!4332 = !DILocation(line: 82, column: 2, scope: !4318)
!4333 = !DILocation(line: 83, column: 2, scope: !4318)
!4334 = !DILocation(line: 84, column: 1, scope: !4318)
!4335 = distinct !DISubprogram(name: "raw_atomic_long_set", scope: !206, file: !206, line: 76, type: !4305, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4336)
!4336 = !{!4337, !4338}
!4337 = !DILocalVariable(name: "v", arg: 1, scope: !4335, file: !206, line: 76, type: !1795)
!4338 = !DILocalVariable(name: "i", arg: 2, scope: !4335, file: !206, line: 76, type: !1068)
!4339 = !DILocation(line: 76, column: 36, scope: !4335)
!4340 = !DILocation(line: 76, column: 44, scope: !4335)
!4341 = !DILocation(line: 79, column: 19, scope: !4335)
!4342 = !DILocation(line: 79, column: 22, scope: !4335)
!4343 = !DILocation(line: 79, column: 2, scope: !4335)
!4344 = !DILocation(line: 83, column: 1, scope: !4335)
!4345 = distinct !DISubprogram(name: "kasan_check_write", scope: !4346, file: !4346, line: 44, type: !4347, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4349)
!4346 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!352, !4322, !7}
!4349 = !{!4350, !4351}
!4350 = !DILocalVariable(name: "p", arg: 1, scope: !4345, file: !4346, line: 44, type: !4322)
!4351 = !DILocalVariable(name: "size", arg: 2, scope: !4345, file: !4346, line: 44, type: !7)
!4352 = !DILocation(line: 44, column: 59, scope: !4345)
!4353 = !DILocation(line: 44, column: 75, scope: !4345)
!4354 = !DILocation(line: 46, column: 2, scope: !4345)
!4355 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4356, file: !4356, line: 229, type: !4357, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4359)
!4356 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4357 = !DISubroutineType(types: !4358)
!4358 = !{null, !4322, !87, !74}
!4359 = !{!4360, !4361, !4362}
!4360 = !DILocalVariable(name: "ptr", arg: 1, scope: !4355, file: !4356, line: 229, type: !4322)
!4361 = !DILocalVariable(name: "size", arg: 2, scope: !4355, file: !4356, line: 229, type: !87)
!4362 = !DILocalVariable(name: "type", arg: 3, scope: !4355, file: !4356, line: 230, type: !74)
!4363 = !DILocation(line: 229, column: 60, scope: !4355)
!4364 = !DILocation(line: 229, column: 72, scope: !4355)
!4365 = !DILocation(line: 230, column: 15, scope: !4355)
!4366 = !DILocation(line: 230, column: 23, scope: !4355)
!4367 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !4368, file: !4368, line: 2600, type: !4369, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4372)
!4368 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4369 = !DISubroutineType(types: !4370)
!4370 = !{null, !4371, !211}
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!4372 = !{!4373, !4374}
!4373 = !DILocalVariable(name: "v", arg: 1, scope: !4367, file: !4368, line: 2600, type: !4371)
!4374 = !DILocalVariable(name: "i", arg: 2, scope: !4367, file: !4368, line: 2600, type: !211)
!4375 = !DILocation(line: 2600, column: 30, scope: !4367)
!4376 = !DILocation(line: 2600, column: 37, scope: !4367)
!4377 = !DILocation(line: 2602, column: 20, scope: !4367)
!4378 = !DILocation(line: 2602, column: 23, scope: !4367)
!4379 = !DILocation(line: 2602, column: 2, scope: !4367)
!4380 = !DILocation(line: 2603, column: 1, scope: !4367)
!4381 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !4382, file: !4382, line: 18, type: !4369, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4383)
!4382 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!4383 = !{!4384, !4385}
!4384 = !DILocalVariable(name: "v", arg: 1, scope: !4381, file: !4382, line: 18, type: !4371)
!4385 = !DILocalVariable(name: "i", arg: 2, scope: !4381, file: !4382, line: 18, type: !211)
!4386 = !DILocation(line: 18, column: 59, scope: !4381)
!4387 = !DILocation(line: 18, column: 66, scope: !4381)
!4388 = !DILocation(line: 20, column: 2, scope: !4381)
!4389 = !DILocation(line: 20, column: 2, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4381, file: !4382, line: 20, column: 2)
!4391 = !DILocation(line: 21, column: 1, scope: !4381)
!4392 = !DISubprogram(name: "dynamic_dname", scope: !921, file: !921, line: 292, type: !4393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{!363, !363, !74, !68, null}
!4395 = distinct !DISubprogram(name: "rcu_read_lock", scope: !4396, file: !4396, line: 782, type: !3036, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4396 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!4397 = !DILocation(line: 784, column: 2, scope: !4395)
!4398 = !DILocation(line: 786, column: 2, scope: !4395)
!4399 = !DILocation(line: 786, column: 2, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4395, file: !4396, line: 786, column: 2)
!4401 = !DILocation(line: 787, column: 2, scope: !4395)
!4402 = !DILocation(line: 787, column: 2, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4395, file: !4396, line: 787, column: 2)
!4404 = !DILocation(line: 789, column: 1, scope: !4395)
!4405 = distinct !DISubprogram(name: "atomic_long_read", scope: !4304, file: !4304, line: 3158, type: !4406, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4410)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{!1068, !4408}
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!4410 = !{!4411}
!4411 = !DILocalVariable(name: "v", arg: 1, scope: !4405, file: !4304, line: 3158, type: !4408)
!4412 = !DILocation(line: 3158, column: 39, scope: !4405)
!4413 = !DILocation(line: 3160, column: 25, scope: !4405)
!4414 = !DILocation(line: 3160, column: 2, scope: !4405)
!4415 = !DILocation(line: 3161, column: 30, scope: !4405)
!4416 = !DILocation(line: 3161, column: 9, scope: !4405)
!4417 = !DILocation(line: 3161, column: 2, scope: !4405)
!4418 = !DISubprogram(name: "lockref_get_not_dead", scope: !2534, file: !2534, line: 44, type: !4419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!74, !4421}
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!4422 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !4396, file: !4396, line: 813, type: !3036, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4423 = !DILocation(line: 815, column: 2, scope: !4422)
!4424 = !DILocation(line: 815, column: 2, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4422, file: !4396, line: 815, column: 2)
!4426 = !DILocation(line: 818, column: 2, scope: !4422)
!4427 = !DILocation(line: 819, column: 2, scope: !4422)
!4428 = !DILocation(line: 819, column: 2, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4422, file: !4396, line: 819, column: 2)
!4430 = !DILocation(line: 820, column: 1, scope: !4422)
!4431 = !DISubprogram(name: "mntget", scope: !916, file: !916, line: 88, type: !4432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!914, !914}
!4434 = !DISubprogram(name: "new_inode_pseudo", scope: !183, file: !183, line: 2931, type: !1305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4435 = !DISubprogram(name: "inode_set_ctime_current", scope: !183, file: !183, line: 1515, type: !4436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{!1064, !954}
!4438 = !DISubprogram(name: "d_alloc_anon", scope: !921, file: !921, line: 232, type: !4439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!919, !1163}
!4441 = !DISubprogram(name: "iput", scope: !183, file: !183, line: 2459, type: !1309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4442 = !DISubprogram(name: "d_instantiate", scope: !921, file: !921, line: 221, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4443 = distinct !DISubprogram(name: "atomic_long_cmpxchg", scope: !4304, file: !4304, line: 4319, type: !4444, scopeLine: 4320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4446)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!1068, !1795, !1068, !1068}
!4446 = !{!4447, !4448, !4449}
!4447 = !DILocalVariable(name: "v", arg: 1, scope: !4443, file: !4304, line: 4319, type: !1795)
!4448 = !DILocalVariable(name: "old", arg: 2, scope: !4443, file: !4304, line: 4319, type: !1068)
!4449 = !DILocalVariable(name: "new", arg: 3, scope: !4443, file: !4304, line: 4319, type: !1068)
!4450 = !DILocation(line: 4319, column: 36, scope: !4443)
!4451 = !DILocation(line: 4319, column: 44, scope: !4443)
!4452 = !DILocation(line: 4319, column: 54, scope: !4443)
!4453 = !DILocation(line: 4321, column: 2, scope: !4443)
!4454 = !DILocation(line: 4321, column: 2, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4443, file: !4304, line: 4321, column: 2)
!4456 = !DILocation(line: 4322, column: 31, scope: !4443)
!4457 = !DILocation(line: 4322, column: 2, scope: !4443)
!4458 = !DILocation(line: 4323, column: 33, scope: !4443)
!4459 = !DILocation(line: 4323, column: 36, scope: !4443)
!4460 = !DILocation(line: 4323, column: 41, scope: !4443)
!4461 = !DILocation(line: 4323, column: 9, scope: !4443)
!4462 = !DILocation(line: 4323, column: 2, scope: !4443)
!4463 = !DISubprogram(name: "d_delete", scope: !921, file: !921, line: 227, type: !1755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4464 = !DISubprogram(name: "dput", scope: !921, file: !921, line: 368, type: !1755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4465 = distinct !DISubprogram(name: "cpu_relax", scope: !4466, file: !4466, line: 16, type: !3036, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4466 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!4467 = !DILocation(line: 18, column: 2, scope: !4465)
!4468 = !DILocation(line: 19, column: 1, scope: !4465)
!4469 = !DISubprogram(name: "__rcu_read_lock", scope: !4396, file: !4396, line: 74, type: !3036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4470 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4319, file: !4319, line: 66, type: !4320, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4471)
!4471 = !{!4472, !4473}
!4472 = !DILocalVariable(name: "v", arg: 1, scope: !4470, file: !4319, line: 66, type: !4322)
!4473 = !DILocalVariable(name: "size", arg: 2, scope: !4470, file: !4319, line: 66, type: !87)
!4474 = !DILocation(line: 66, column: 73, scope: !4470)
!4475 = !DILocation(line: 66, column: 83, scope: !4470)
!4476 = !DILocation(line: 68, column: 19, scope: !4470)
!4477 = !DILocation(line: 68, column: 22, scope: !4470)
!4478 = !DILocation(line: 68, column: 2, scope: !4470)
!4479 = !DILocation(line: 69, column: 2, scope: !4470)
!4480 = !DILocation(line: 70, column: 1, scope: !4470)
!4481 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !206, file: !206, line: 35, type: !4406, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4482)
!4482 = !{!4483}
!4483 = !DILocalVariable(name: "v", arg: 1, scope: !4481, file: !206, line: 35, type: !4408)
!4484 = !DILocation(line: 35, column: 43, scope: !4481)
!4485 = !DILocation(line: 38, column: 27, scope: !4481)
!4486 = !DILocation(line: 38, column: 9, scope: !4481)
!4487 = !DILocation(line: 38, column: 2, scope: !4481)
!4488 = distinct !DISubprogram(name: "kasan_check_read", scope: !4346, file: !4346, line: 40, type: !4347, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4489)
!4489 = !{!4490, !4491}
!4490 = !DILocalVariable(name: "p", arg: 1, scope: !4488, file: !4346, line: 40, type: !4322)
!4491 = !DILocalVariable(name: "size", arg: 2, scope: !4488, file: !4346, line: 40, type: !7)
!4492 = !DILocation(line: 40, column: 58, scope: !4488)
!4493 = !DILocation(line: 40, column: 74, scope: !4488)
!4494 = !DILocation(line: 42, column: 2, scope: !4488)
!4495 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !4368, file: !4368, line: 2554, type: !4496, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4500)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!211, !4498}
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!4500 = !{!4501}
!4501 = !DILocalVariable(name: "v", arg: 1, scope: !4495, file: !4368, line: 2554, type: !4498)
!4502 = !DILocation(line: 2554, column: 37, scope: !4495)
!4503 = !DILocation(line: 2556, column: 28, scope: !4495)
!4504 = !DILocation(line: 2556, column: 9, scope: !4495)
!4505 = !DILocation(line: 2556, column: 2, scope: !4495)
!4506 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !4382, file: !4382, line: 13, type: !4496, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4507)
!4507 = !{!4508}
!4508 = !DILocalVariable(name: "v", arg: 1, scope: !4506, file: !4382, line: 13, type: !4498)
!4509 = !DILocation(line: 13, column: 65, scope: !4506)
!4510 = !DILocation(line: 15, column: 9, scope: !4506)
!4511 = !DILocation(line: 15, column: 2, scope: !4506)
!4512 = !DISubprogram(name: "__rcu_read_unlock", scope: !4396, file: !4396, line: 75, type: !3036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4513 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4319, file: !4319, line: 94, type: !4320, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4514)
!4514 = !{!4515, !4516}
!4515 = !DILocalVariable(name: "v", arg: 1, scope: !4513, file: !4319, line: 94, type: !4322)
!4516 = !DILocalVariable(name: "size", arg: 2, scope: !4513, file: !4319, line: 94, type: !87)
!4517 = !DILocation(line: 94, column: 79, scope: !4513)
!4518 = !DILocation(line: 94, column: 89, scope: !4513)
!4519 = !DILocation(line: 96, column: 20, scope: !4513)
!4520 = !DILocation(line: 96, column: 23, scope: !4513)
!4521 = !DILocation(line: 96, column: 2, scope: !4513)
!4522 = !DILocation(line: 97, column: 2, scope: !4513)
!4523 = !DILocation(line: 98, column: 1, scope: !4513)
!4524 = distinct !DISubprogram(name: "raw_atomic_long_cmpxchg", scope: !206, file: !206, line: 1361, type: !4444, scopeLine: 1362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4525)
!4525 = !{!4526, !4527, !4528}
!4526 = !DILocalVariable(name: "v", arg: 1, scope: !4524, file: !206, line: 1361, type: !1795)
!4527 = !DILocalVariable(name: "old", arg: 2, scope: !4524, file: !206, line: 1361, type: !1068)
!4528 = !DILocalVariable(name: "new", arg: 3, scope: !4524, file: !206, line: 1361, type: !1068)
!4529 = !DILocation(line: 1361, column: 40, scope: !4524)
!4530 = !DILocation(line: 1361, column: 48, scope: !4524)
!4531 = !DILocation(line: 1361, column: 58, scope: !4524)
!4532 = !DILocation(line: 1364, column: 30, scope: !4524)
!4533 = !DILocation(line: 1364, column: 33, scope: !4524)
!4534 = !DILocation(line: 1364, column: 38, scope: !4524)
!4535 = !DILocation(line: 1364, column: 9, scope: !4524)
!4536 = !DILocation(line: 1364, column: 2, scope: !4524)
!4537 = distinct !DISubprogram(name: "raw_atomic64_cmpxchg", scope: !4368, file: !4368, line: 4113, type: !4538, scopeLine: 4114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4540)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!211, !4371, !211, !211}
!4540 = !{!4541, !4542, !4543}
!4541 = !DILocalVariable(name: "v", arg: 1, scope: !4537, file: !4368, line: 4113, type: !4371)
!4542 = !DILocalVariable(name: "old", arg: 2, scope: !4537, file: !4368, line: 4113, type: !211)
!4543 = !DILocalVariable(name: "new", arg: 3, scope: !4537, file: !4368, line: 4113, type: !211)
!4544 = !DILocation(line: 4113, column: 34, scope: !4537)
!4545 = !DILocation(line: 4113, column: 41, scope: !4537)
!4546 = !DILocation(line: 4113, column: 50, scope: !4537)
!4547 = !DILocation(line: 4116, column: 31, scope: !4537)
!4548 = !DILocation(line: 4116, column: 34, scope: !4537)
!4549 = !DILocation(line: 4116, column: 39, scope: !4537)
!4550 = !DILocation(line: 4116, column: 9, scope: !4537)
!4551 = !DILocation(line: 4116, column: 2, scope: !4537)
!4552 = distinct !DISubprogram(name: "arch_atomic64_cmpxchg", scope: !4382, file: !4382, line: 101, type: !4538, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4553)
!4553 = !{!4554, !4555, !4556, !4557, !4559, !4560, !4561}
!4554 = !DILocalVariable(name: "v", arg: 1, scope: !4552, file: !4382, line: 101, type: !4371)
!4555 = !DILocalVariable(name: "old", arg: 2, scope: !4552, file: !4382, line: 101, type: !211)
!4556 = !DILocalVariable(name: "new", arg: 3, scope: !4552, file: !4382, line: 101, type: !211)
!4557 = !DILocalVariable(name: "__ret", scope: !4558, file: !4382, line: 103, type: !211)
!4558 = distinct !DILexicalBlock(scope: !4552, file: !4382, line: 103, column: 9)
!4559 = !DILocalVariable(name: "__old", scope: !4558, file: !4382, line: 103, type: !211)
!4560 = !DILocalVariable(name: "__new", scope: !4558, file: !4382, line: 103, type: !211)
!4561 = !DILocalVariable(name: "__ptr", scope: !4558, file: !4382, line: 103, type: !3739)
!4562 = !DILocation(line: 101, column: 62, scope: !4552)
!4563 = !DILocation(line: 101, column: 69, scope: !4552)
!4564 = !DILocation(line: 101, column: 78, scope: !4552)
!4565 = !DILocation(line: 103, column: 9, scope: !4558)
!4566 = !{i64 2148158309, i64 2148158348, i64 2148158369, i64 2148158406, i64 2148158429, i64 2148158438}
!4567 = !DILocation(line: 103, column: 9, scope: !4552)
!4568 = !DILocation(line: 103, column: 2, scope: !4552)
!4569 = distinct !DISubprogram(name: "rep_nop", scope: !4466, file: !4466, line: 11, type: !3036, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4570 = !DILocation(line: 13, column: 2, scope: !4569)
!4571 = !{i64 2080595}
!4572 = !DILocation(line: 14, column: 1, scope: !4569)
!4573 = distinct !DISubprogram(name: "ns_ioctl", scope: !3, file: !3, line: 189, type: !2430, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4574)
!4574 = !{!4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4585, !4588, !4589, !4590, !4591}
!4575 = !DILocalVariable(name: "filp", arg: 1, scope: !4573, file: !3, line: 189, type: !821)
!4576 = !DILocalVariable(name: "ioctl", arg: 2, scope: !4573, file: !3, line: 189, type: !7)
!4577 = !DILocalVariable(name: "arg", arg: 3, scope: !4573, file: !3, line: 190, type: !91)
!4578 = !DILocalVariable(name: "user_ns", scope: !4573, file: !3, line: 192, type: !444)
!4579 = !DILocalVariable(name: "ns", scope: !4573, file: !3, line: 193, type: !494)
!4580 = !DILocalVariable(name: "argp", scope: !4573, file: !3, line: 194, type: !3742)
!4581 = !DILocalVariable(name: "uid", scope: !4573, file: !3, line: 195, type: !219)
!4582 = !DILocalVariable(name: "__mptr", scope: !4583, file: !3, line: 209, type: !72)
!4583 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 209, column: 13)
!4584 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 197, column: 17)
!4585 = !DILocalVariable(name: "__ret_pu", scope: !4586, file: !3, line: 212, type: !74)
!4586 = distinct !DILexicalBlock(scope: !4587, file: !3, line: 212, column: 10)
!4587 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 212, column: 10)
!4588 = !DILocalVariable(name: "__ptr_pu", scope: !4586, file: !3, line: 212, type: !72)
!4589 = !DILocalVariable(name: "__val_pu", scope: !4586, file: !3, line: 212, type: !219)
!4590 = !DILocalVariable(name: "__x", scope: !4586, file: !3, line: 212, type: !219)
!4591 = !DILocalVariable(name: "__ptr", scope: !4586, file: !3, line: 212, type: !3742)
!4592 = !DILocation(line: 189, column: 35, scope: !4573)
!4593 = !DILocation(line: 189, column: 54, scope: !4573)
!4594 = !DILocation(line: 190, column: 18, scope: !4573)
!4595 = !DILocation(line: 192, column: 2, scope: !4573)
!4596 = !DILocation(line: 192, column: 25, scope: !4573)
!4597 = !DILocation(line: 193, column: 2, scope: !4573)
!4598 = !DILocation(line: 193, column: 20, scope: !4573)
!4599 = !DILocation(line: 193, column: 25, scope: !4573)
!4600 = !DILocation(line: 194, column: 2, scope: !4573)
!4601 = !DILocation(line: 194, column: 16, scope: !4573)
!4602 = !DILocation(line: 195, column: 2, scope: !4573)
!4603 = !DILocation(line: 195, column: 8, scope: !4573)
!4604 = !DILocation(line: 197, column: 10, scope: !4573)
!4605 = !DILocation(line: 197, column: 2, scope: !4573)
!4606 = !DILocation(line: 199, column: 26, scope: !4584)
!4607 = !DILocation(line: 199, column: 10, scope: !4584)
!4608 = !DILocation(line: 199, column: 3, scope: !4584)
!4609 = !DILocation(line: 201, column: 8, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 201, column: 7)
!4611 = !DILocation(line: 201, column: 12, scope: !4610)
!4612 = !DILocation(line: 201, column: 17, scope: !4610)
!4613 = !DILocation(line: 201, column: 7, scope: !4584)
!4614 = !DILocation(line: 202, column: 4, scope: !4610)
!4615 = !DILocation(line: 203, column: 26, scope: !4584)
!4616 = !DILocation(line: 203, column: 30, scope: !4584)
!4617 = !DILocation(line: 203, column: 34, scope: !4584)
!4618 = !DILocation(line: 203, column: 39, scope: !4584)
!4619 = !DILocation(line: 203, column: 10, scope: !4584)
!4620 = !DILocation(line: 203, column: 3, scope: !4584)
!4621 = !DILocation(line: 205, column: 10, scope: !4584)
!4622 = !DILocation(line: 205, column: 14, scope: !4584)
!4623 = !DILocation(line: 205, column: 19, scope: !4584)
!4624 = !DILocation(line: 205, column: 3, scope: !4584)
!4625 = !DILocation(line: 207, column: 7, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 207, column: 7)
!4627 = !DILocation(line: 207, column: 11, scope: !4626)
!4628 = !DILocation(line: 207, column: 16, scope: !4626)
!4629 = !DILocation(line: 207, column: 21, scope: !4626)
!4630 = !DILocation(line: 207, column: 7, scope: !4584)
!4631 = !DILocation(line: 208, column: 4, scope: !4626)
!4632 = !DILocation(line: 209, column: 13, scope: !4583)
!4633 = !DILocation(line: 209, column: 13, scope: !4584)
!4634 = !DILocation(line: 209, column: 11, scope: !4584)
!4635 = !DILocation(line: 210, column: 27, scope: !4584)
!4636 = !DILocation(line: 210, column: 10, scope: !4584)
!4637 = !DILocation(line: 210, column: 8, scope: !4584)
!4638 = !DILocation(line: 211, column: 26, scope: !4584)
!4639 = !DILocation(line: 211, column: 45, scope: !4584)
!4640 = !DILocation(line: 211, column: 54, scope: !4584)
!4641 = !DILocation(line: 211, column: 9, scope: !4584)
!4642 = !DILocation(line: 211, column: 7, scope: !4584)
!4643 = !DILocation(line: 212, column: 10, scope: !4587)
!4644 = !DILocation(line: 212, column: 10, scope: !4586)
!4645 = !{i64 2154060244}
!4646 = !DILocation(line: 212, column: 10, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 212, column: 10)
!4648 = !DILocation(line: 212, column: 3, scope: !4584)
!4649 = !DILocation(line: 214, column: 3, scope: !4584)
!4650 = !DILocation(line: 216, column: 1, scope: !4573)
!4651 = distinct !DISubprogram(name: "file_inode", scope: !183, file: !183, line: 1073, type: !4652, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4654)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!954, !1393}
!4654 = !{!4655}
!4655 = !DILocalVariable(name: "f", arg: 1, scope: !4651, file: !183, line: 1073, type: !1393)
!4656 = !DILocation(line: 1073, column: 59, scope: !4651)
!4657 = !DILocation(line: 1075, column: 9, scope: !4651)
!4658 = !DILocation(line: 1075, column: 12, scope: !4651)
!4659 = !DILocation(line: 1075, column: 2, scope: !4651)
!4660 = distinct !DISubprogram(name: "ns_get_owner", scope: !446, file: !446, line: 223, type: !3632, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4661)
!4661 = !{!4662}
!4662 = !DILocalVariable(name: "ns", arg: 1, scope: !4660, file: !446, line: 223, type: !494)
!4663 = !DILocation(line: 223, column: 64, scope: !4660)
!4664 = !DILocation(line: 225, column: 9, scope: !4660)
!4665 = !DILocation(line: 225, column: 2, scope: !4660)
!4666 = distinct !DISubprogram(name: "from_kuid_munged", scope: !215, file: !215, line: 163, type: !4667, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4669)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!219, !444, !214}
!4669 = !{!4670, !4671, !4672}
!4670 = !DILocalVariable(name: "to", arg: 1, scope: !4666, file: !215, line: 163, type: !444)
!4671 = !DILocalVariable(name: "kuid", arg: 2, scope: !4666, file: !215, line: 163, type: !214)
!4672 = !DILocalVariable(name: "uid", scope: !4666, file: !215, line: 165, type: !219)
!4673 = !DILocation(line: 163, column: 61, scope: !4666)
!4674 = !DILocation(line: 163, column: 72, scope: !4666)
!4675 = !DILocation(line: 165, column: 2, scope: !4666)
!4676 = !DILocation(line: 165, column: 8, scope: !4666)
!4677 = !DILocation(line: 165, column: 24, scope: !4666)
!4678 = !DILocation(line: 165, column: 14, scope: !4666)
!4679 = !DILocation(line: 166, column: 6, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4666, file: !215, line: 166, column: 6)
!4681 = !DILocation(line: 166, column: 10, scope: !4680)
!4682 = !DILocation(line: 166, column: 6, scope: !4666)
!4683 = !DILocation(line: 167, column: 9, scope: !4680)
!4684 = !DILocation(line: 167, column: 7, scope: !4680)
!4685 = !DILocation(line: 167, column: 3, scope: !4680)
!4686 = !DILocation(line: 168, column: 9, scope: !4666)
!4687 = !DILocation(line: 169, column: 1, scope: !4666)
!4688 = !DILocation(line: 168, column: 2, scope: !4666)
!4689 = distinct !DISubprogram(name: "current_user_ns", scope: !202, file: !202, line: 346, type: !4690, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!444}
!4692 = !DILocation(line: 348, column: 2, scope: !4689)
!4693 = distinct !DISubprogram(name: "might_fault", scope: !4694, file: !4694, line: 202, type: !3036, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4694 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4695 = !DILocation(line: 202, column: 40, scope: !4693)
!4696 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !4697, file: !4697, line: 76, type: !4698, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4700)
!4697 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!4698 = !DISubroutineType(types: !4699)
!4699 = !{null, !72, !4142, !87, !87}
!4700 = !{!4701, !4702, !4703, !4704}
!4701 = !DILocalVariable(name: "to", arg: 1, scope: !4696, file: !4697, line: 76, type: !72)
!4702 = !DILocalVariable(name: "from", arg: 2, scope: !4696, file: !4697, line: 76, type: !4142)
!4703 = !DILocalVariable(name: "to_copy", arg: 3, scope: !4696, file: !4697, line: 77, type: !87)
!4704 = !DILocalVariable(name: "left", arg: 4, scope: !4696, file: !4697, line: 77, type: !87)
!4705 = !DILocation(line: 76, column: 52, scope: !4696)
!4706 = !DILocation(line: 76, column: 68, scope: !4696)
!4707 = !DILocation(line: 77, column: 18, scope: !4696)
!4708 = !DILocation(line: 77, column: 34, scope: !4696)
!4709 = !DILocation(line: 79, column: 1, scope: !4696)
!4710 = distinct !DISubprogram(name: "ERR_PTR", scope: !4139, file: !4139, line: 39, type: !4711, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4713)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!72, !1068}
!4713 = !{!4714}
!4714 = !DILocalVariable(name: "error", arg: 1, scope: !4710, file: !4139, line: 39, type: !1068)
!4715 = !DILocation(line: 39, column: 48, scope: !4710)
!4716 = !DILocation(line: 41, column: 18, scope: !4710)
!4717 = !DILocation(line: 41, column: 9, scope: !4710)
!4718 = !DILocation(line: 41, column: 2, scope: !4710)
!4719 = distinct !DISubprogram(name: "from_kuid", scope: !215, file: !215, line: 153, type: !4667, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4720)
!4720 = !{!4721, !4722}
!4721 = !DILocalVariable(name: "to", arg: 1, scope: !4719, file: !215, line: 153, type: !444)
!4722 = !DILocalVariable(name: "kuid", arg: 2, scope: !4719, file: !215, line: 153, type: !214)
!4723 = !DILocation(line: 153, column: 54, scope: !4719)
!4724 = !DILocation(line: 153, column: 65, scope: !4719)
!4725 = !DILocation(line: 155, column: 9, scope: !4719)
!4726 = !DILocation(line: 155, column: 2, scope: !4719)
!4727 = distinct !DISubprogram(name: "__kuid_val", scope: !215, file: !215, line: 34, type: !4728, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4730)
!4728 = !DISubroutineType(types: !4729)
!4729 = !{!219, !214}
!4730 = !{!4731}
!4731 = !DILocalVariable(name: "uid", arg: 1, scope: !4727, file: !215, line: 34, type: !214)
!4732 = !DILocation(line: 34, column: 39, scope: !4727)
!4733 = !DILocation(line: 36, column: 13, scope: !4727)
!4734 = !DILocation(line: 36, column: 2, scope: !4727)
!4735 = distinct !DISubprogram(name: "nsfs_init_fs_context", scope: !3, file: !3, line: 267, type: !1179, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4736)
!4736 = !{!4737, !4738}
!4737 = !DILocalVariable(name: "fc", arg: 1, scope: !4735, file: !3, line: 267, type: !1181)
!4738 = !DILocalVariable(name: "ctx", scope: !4735, file: !3, line: 269, type: !4739)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pseudo_fs_context", file: !4741, line: 6, size: 256, elements: !4742)
!4741 = !DIFile(filename: "./include/linux/pseudo_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c345ce15a841e4436325696e058fb159")
!4742 = !{!4743, !4744, !4745, !4746}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4740, file: !4741, line: 7, baseType: !1299, size: 64)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "xattr", scope: !4740, file: !4741, line: 8, baseType: !1607, size: 64, offset: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "dops", scope: !4740, file: !4741, line: 9, baseType: !1723, size: 64, offset: 128)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4740, file: !4741, line: 10, baseType: !91, size: 64, offset: 192)
!4747 = !DILocation(line: 267, column: 52, scope: !4735)
!4748 = !DILocation(line: 269, column: 2, scope: !4735)
!4749 = !DILocation(line: 269, column: 28, scope: !4735)
!4750 = !DILocation(line: 269, column: 46, scope: !4735)
!4751 = !DILocation(line: 269, column: 34, scope: !4735)
!4752 = !DILocation(line: 270, column: 7, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 270, column: 6)
!4754 = !DILocation(line: 270, column: 6, scope: !4735)
!4755 = !DILocation(line: 271, column: 3, scope: !4753)
!4756 = !DILocation(line: 272, column: 2, scope: !4735)
!4757 = !DILocation(line: 272, column: 7, scope: !4735)
!4758 = !DILocation(line: 272, column: 11, scope: !4735)
!4759 = !DILocation(line: 273, column: 2, scope: !4735)
!4760 = !DILocation(line: 273, column: 7, scope: !4735)
!4761 = !DILocation(line: 273, column: 12, scope: !4735)
!4762 = !DILocation(line: 274, column: 2, scope: !4735)
!4763 = !DILocation(line: 275, column: 1, scope: !4735)
!4764 = !DISubprogram(name: "init_pseudo", scope: !4741, file: !4741, line: 13, type: !4765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!4739, !1181, !91}
!4767 = distinct !DISubprogram(name: "nsfs_evict", scope: !3, file: !3, line: 52, type: !1309, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4768)
!4768 = !{!4769, !4770}
!4769 = !DILocalVariable(name: "inode", arg: 1, scope: !4767, file: !3, line: 52, type: !954)
!4770 = !DILocalVariable(name: "ns", scope: !4767, file: !3, line: 54, type: !494)
!4771 = !DILocation(line: 52, column: 38, scope: !4767)
!4772 = !DILocation(line: 54, column: 2, scope: !4767)
!4773 = !DILocation(line: 54, column: 20, scope: !4767)
!4774 = !DILocation(line: 54, column: 25, scope: !4767)
!4775 = !DILocation(line: 54, column: 32, scope: !4767)
!4776 = !DILocation(line: 55, column: 14, scope: !4767)
!4777 = !DILocation(line: 55, column: 2, scope: !4767)
!4778 = !DILocation(line: 56, column: 2, scope: !4767)
!4779 = !DILocation(line: 56, column: 6, scope: !4767)
!4780 = !DILocation(line: 56, column: 11, scope: !4767)
!4781 = !DILocation(line: 56, column: 15, scope: !4767)
!4782 = !DILocation(line: 57, column: 1, scope: !4767)
!4783 = distinct !DISubprogram(name: "nsfs_show_path", scope: !3, file: !3, line: 252, type: !1356, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4784)
!4784 = !{!4785, !4786, !4787, !4788}
!4785 = !DILocalVariable(name: "seq", arg: 1, scope: !4783, file: !3, line: 252, type: !1358)
!4786 = !DILocalVariable(name: "dentry", arg: 2, scope: !4783, file: !3, line: 252, type: !919)
!4787 = !DILocalVariable(name: "inode", scope: !4783, file: !3, line: 254, type: !954)
!4788 = !DILocalVariable(name: "ns_ops", scope: !4783, file: !3, line: 255, type: !482)
!4789 = !DILocation(line: 252, column: 44, scope: !4783)
!4790 = !DILocation(line: 252, column: 64, scope: !4783)
!4791 = !DILocation(line: 254, column: 2, scope: !4783)
!4792 = !DILocation(line: 254, column: 16, scope: !4783)
!4793 = !DILocation(line: 254, column: 32, scope: !4783)
!4794 = !DILocation(line: 254, column: 24, scope: !4783)
!4795 = !DILocation(line: 255, column: 2, scope: !4783)
!4796 = !DILocation(line: 255, column: 35, scope: !4783)
!4797 = !DILocation(line: 255, column: 44, scope: !4783)
!4798 = !DILocation(line: 255, column: 52, scope: !4783)
!4799 = !DILocation(line: 257, column: 13, scope: !4783)
!4800 = !DILocation(line: 257, column: 30, scope: !4783)
!4801 = !DILocation(line: 257, column: 38, scope: !4783)
!4802 = !DILocation(line: 257, column: 44, scope: !4783)
!4803 = !DILocation(line: 257, column: 51, scope: !4783)
!4804 = !DILocation(line: 257, column: 2, scope: !4783)
!4805 = !DILocation(line: 259, column: 1, scope: !4783)
!4806 = !DILocation(line: 258, column: 2, scope: !4783)
!4807 = !DISubprogram(name: "clear_inode", scope: !183, file: !183, line: 2929, type: !1309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4808 = !DISubprogram(name: "seq_printf", scope: !1360, file: !1360, line: 119, type: !4809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{null, !1358, !68, null}
